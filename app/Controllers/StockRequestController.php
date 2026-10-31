<?php
class StockRequestController {
    function form(): void {
        $items = DB::all('SELECT id, code, name, unit, stock FROM inventory_items ORDER BY name');
        $mine = DB::all('SELECT r.*, i.name item_name, i.unit FROM stock_requests r JOIN inventory_items i ON i.id=r.item_id WHERE r.requested_by=? AND r.type=\'in\' ORDER BY r.id DESC LIMIT 15', [Auth::user()['id']]);
        render('inventory/request', ['items' => $items, 'mine' => $mine, 'title' => 'Pengajuan Tambah Stok']);
    }
    function store(): void {
        $item = (int)post('item_id'); $qty = (int)post('quantity'); $reason = post('reason');
        $i = DB::one('SELECT id FROM inventory_items WHERE id=?', [$item]);
        $err = [];
        if (!$i) $err[] = 'Pilih barang yang valid.';
        if ($qty < 1 || $qty > 1000000) $err[] = 'Jumlah harus angka positif.';
        if (mb_strlen($reason) < 5) $err[] = 'Alasan pengajuan minimal 5 karakter.';
        if ($err) { with_old($_POST); flash('error', implode(' ', $err)); redirect('/admin/stok/tambah'); }
        DB::tx(function () use ($item, $qty, $reason) {
            DB::exec('INSERT INTO stock_requests (type, item_id, requested_by, quantity, reason) VALUES (\'in\',?,?,?,?)', [$item, Auth::user()['id'], $qty, mb_substr($reason, 0, 500)]);
            $id = DB::id();
            DB::exec('UPDATE stock_requests SET request_no=? WHERE id=?', [sprintf('REQ-%s-%04d', date('Ym'), $id), $id]);
        });
        audit('pengajuan_stok', "item #$item qty $qty");
        flash('success', 'Pengajuan terkirim dan menunggu persetujuan. Stok belum berubah.');
        redirect('/admin/stok/tambah');
    }
    function outForm(): void {
        $items = DB::all("SELECT i.id, i.code, i.name, i.unit, i.stock,
            COALESCE((SELECT SUM(r.quantity) FROM stock_requests r WHERE r.item_id=i.id AND r.type='out' AND r.status='waiting'),0) pending
            FROM inventory_items i WHERE i.stock > 0 ORDER BY i.name");
        $mine = DB::all("SELECT r.*, i.name item_name, i.unit FROM stock_requests r JOIN inventory_items i ON i.id=r.item_id WHERE r.requested_by=? AND r.type='out' ORDER BY r.id DESC LIMIT 15", [Auth::user()['id']]);
        render('inventory/request_out', ['items' => $items, 'mine' => $mine, 'title' => 'Pengajuan Barang Keluar']);
    }
    function outStore(): void {
        $item = (int)post('item_id'); $qty = (int)post('quantity'); $reason = post('reason');
        $err = [];
        $i = DB::one("SELECT id, name, unit, stock,
            COALESCE((SELECT SUM(r.quantity) FROM stock_requests r WHERE r.item_id=inventory_items.id AND r.type='out' AND r.status='waiting'),0) pending
            FROM inventory_items WHERE id=?", [$item]);
        if (!$i) $err[] = 'Pilih barang dari daftar stok.';
        if ($qty < 1) $err[] = 'Jumlah harus angka positif.';
        if ($i && $qty >= 1) {
            $avail = (int)$i['stock'] - (int)$i['pending'];
            if ($qty > $avail) $err[] = 'Jumlah melebihi stok tersedia (' . max(0, $avail) . ' ' . $i['unit'] . ($i['pending'] > 0 ? ', sudah dikurangi ' . (int)$i['pending'] . ' yang menunggu persetujuan' : '') . ').';
        }
        if (mb_strlen($reason) < 5) $err[] = 'Alasan pengajuan minimal 5 karakter.';
        if ($err) { with_old($_POST); flash('error', implode(' ', $err)); redirect('/admin/stok/keluar'); }
        DB::tx(function () use ($item, $qty, $reason) {
            DB::exec("INSERT INTO stock_requests (type, item_id, requested_by, quantity, reason) VALUES ('out',?,?,?,?)", [$item, Auth::user()['id'], $qty, mb_substr($reason, 0, 500)]);
            $id = DB::id();
            DB::exec('UPDATE stock_requests SET request_no=? WHERE id=?', [sprintf('OUT-%s-%04d', date('Ym'), $id), $id]);
        });
        audit('pengajuan_keluar', "item #$item qty $qty");
        flash('success', 'Pengajuan barang keluar terkirim dan menunggu persetujuan. Stok belum berubah.');
        redirect('/admin/stok/keluar');
    }
    function approvals(): void {
        $w = []; $p = [];
        $st = $_GET['status'] ?? ''; $from = $_GET['from'] ?? ''; $to = $_GET['to'] ?? '';
        if (in_array($st, ['waiting', 'approved', 'declined'], true)) { $w[] = 'r.status=?'; $p[] = $st; }
        $tp = $_GET['type'] ?? '';
        if (in_array($tp, ['in', 'out'], true)) { $w[] = 'r.type=?'; $p[] = $tp; }
        if (preg_match('/^\d{4}-\d{2}-\d{2}$/', $from)) { $w[] = 'DATE(r.created_at) >= ?'; $p[] = $from; }
        if (preg_match('/^\d{4}-\d{2}-\d{2}$/', $to)) { $w[] = 'DATE(r.created_at) <= ?'; $p[] = $to; }
        $where = $w ? 'WHERE ' . implode(' AND ', $w) : '';
        $pg = DB::paginate('r.*, i.name item_name, i.code item_code, i.stock, i.unit, u.full_name requester, d.full_name decider',
            'stock_requests r JOIN inventory_items i ON i.id=r.item_id JOIN users u ON u.id=r.requested_by LEFT JOIN users d ON d.id=r.decided_by',
            $where, $p, "FIELD(r.status,'waiting','approved','declined'), r.id DESC", (int)($_GET['page'] ?? 1));
        render('inventory/approvals', ['pg' => $pg, 'title' => 'Persetujuan Stok']);
    }
    function approve(string $id): void {
        $note = mb_substr(post('note'), 0, 255);
        $res = DB::tx(function () use ($id, $note) {
            $r = DB::one('SELECT * FROM stock_requests WHERE id=? FOR UPDATE', [(int)$id]);
            if (!$r) return 'Pengajuan tidak ditemukan.';
            if ($r['status'] !== 'waiting') return 'Pengajuan ini sudah diproses sebelumnya.';
            $i = DB::one('SELECT * FROM inventory_items WHERE id=? FOR UPDATE', [$r['item_id']]);
            $out = $r['type'] === 'out';
            $delta = $out ? -(int)$r['quantity'] : (int)$r['quantity'];
            $new = $i['stock'] + $delta;
            if ($new < 0) return 'Stok tidak mencukupi untuk menyetujui pengajuan ini (stok saat ini ' . (int)$i['stock'] . ' ' . $i['unit'] . ', diajukan ' . (int)$r['quantity'] . '). Tolak pengajuan atau tambah stok terlebih dahulu.';
            $purchaseCost = 0.0;
            if (!$out) {
                $purchaseCost = (float)$i['price'] * (int)$r['quantity'];
                $balance = (float)DB::val("SELECT COALESCE(SUM(CASE WHEN type='in' THEN amount ELSE -amount END),0) FROM budget_transactions");
                if ($purchaseCost > $balance) return 'Saldo anggaran tidak mencukupi untuk pembelian barang. Saldo tersedia: Rp' . number_format($balance,0,',','.');
            }
            DB::exec('UPDATE inventory_items SET stock=? WHERE id=?', [$new, $i['id']]);
            DB::exec('INSERT INTO stock_movements (item_id,type,qty,balance_after,ref,note,created_by) VALUES (?,?,?,?,?,?,?)',
                [$i['id'], $out ? 'out' : 'in', $delta, $new, $r['request_no'], $out ? 'Barang keluar disetujui' : 'Pengajuan disetujui', Auth::user()['id']]);
            DB::exec("UPDATE stock_requests SET status='approved', decided_by=?, decided_at=NOW(), decision_note=? WHERE id=?", [Auth::user()['id'], $note, $r['id']]);
            if (!$out && $purchaseCost > 0) {
                DB::exec("INSERT INTO budget_transactions (type,category,description,amount,transaction_date,created_by,source_type,source_id) VALUES ('out','Pembelian bahan/barang',?,?,CURDATE(),?,'stock_request',?)",
                    ['Pembelian ' . $i['name'] . ' (' . $r['request_no'] . ')', $purchaseCost, Auth::user()['id'], $r['id']]);
            }
            audit($out ? 'stok_keluar_setuju' : 'stok_setuju', "{$r['request_no']}: {$i['stock']} -> $new");
            return $out ? 'out' : 'in';
        });
        if ($res === 'in') flash('success', 'Pengajuan disetujui, stok bertambah.');
        elseif ($res === 'out') flash('success', 'Pengajuan disetujui, stok berkurang.');
        else flash('error', $res);
        back('/admin/stok/persetujuan');
    }
    function reject(string $id): void {
        $note = post('note');
        if (mb_strlen($note) < 3) { flash('error', 'Alasan penolakan wajib diisi.'); back('/admin/stok/persetujuan'); }
        $n = DB::exec("UPDATE stock_requests SET status='declined', decided_by=?, decided_at=NOW(), decision_note=? WHERE id=? AND status='waiting'", [Auth::user()['id'], mb_substr($note, 0, 255), (int)$id]);
        if ($n) { audit('stok_tolak', "request #$id: $note"); flash('success', 'Pengajuan ditolak. Stok tidak berubah.'); }
        else flash('error', 'Pengajuan tidak ditemukan atau sudah diproses.');
        back('/admin/stok/persetujuan');
    }
}