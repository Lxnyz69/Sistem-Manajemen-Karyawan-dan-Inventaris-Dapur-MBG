<?php
class BudgetController {
    private const CATEGORIES = ['Dana masuk', 'Pembelian bahan/barang', 'Gaji karyawan', 'Operasional', 'Transportasi', 'Lainnya'];
    function index(): void {
        $start = date('Y-m-d', strtotime('monday this week')); $end = date('Y-m-d', strtotime($start . ' +6 days'));
        $rows = DB::all('SELECT b.*, u.full_name FROM budget_transactions b LEFT JOIN users u ON u.id=b.created_by WHERE b.transaction_date BETWEEN ? AND ? ORDER BY b.transaction_date DESC,b.id DESC', [$start, $end]);
        $totals = ['in' => 0.0, 'out' => 0.0]; foreach ($rows as $r) $totals[$r['type']] += (float)$r['amount'];
        $balance = (float)DB::val("SELECT COALESCE(SUM(CASE WHEN type='in' THEN amount ELSE -amount END),0) FROM budget_transactions");
        render('budget/index', compact('rows','totals','start','end','balance') + ['categories' => self::CATEGORIES, 'title' => 'Anggaran']);
    }
    function store(): void {
        $type = post('type'); $category = post('category'); $description = trim(post('description')); $amount = parse_money(post('amount')); $date = post('transaction_date');
        if (!in_array($type, ['in','out'], true) || !in_array($category, self::CATEGORIES, true) || mb_strlen($description) < 3 || $amount <= 0 || !valid_date($date)) {
            flash('error', 'Data anggaran tidak valid. Pastikan keterangan, tanggal, kategori, dan jumlah telah diisi dengan benar.'); back('/admin/anggaran');
        }
        if ($type === 'out') {
            $balance = (float)DB::val("SELECT COALESCE(SUM(CASE WHEN type='in' THEN amount ELSE -amount END),0) FROM budget_transactions");
            if ($amount > $balance) { flash('error', 'Saldo anggaran tidak mencukupi. Saldo tersedia: Rp' . number_format($balance,0,',','.')); back('/admin/anggaran'); }
        }
        DB::exec('INSERT INTO budget_transactions (type,category,description,amount,transaction_date,created_by) VALUES (?,?,?,?,?,?)', [$type,$category,mb_substr($description,0,180),$amount,$date,Auth::user()['id']]);
        audit('anggaran_tambah', strtoupper($type) . ' ' . $category . ' Rp' . number_format($amount,0,',','.'));
        flash('success', 'Transaksi anggaran berhasil dicatat.'); back('/admin/anggaran');
    }
    function delete(string $id): void {
        $row = DB::one('SELECT * FROM budget_transactions WHERE id=?', [(int)$id]);
        if (!$row) { flash('error','Transaksi tidak ditemukan.'); back('/admin/anggaran'); }
        if (!empty($row['source_type'])) { flash('error','Transaksi otomatis terkait gaji atau pembelian barang tidak dapat dihapus.'); back('/admin/anggaran'); }
        DB::exec('DELETE FROM budget_transactions WHERE id=?', [(int)$id]); audit('anggaran_hapus', $row['category'] . ' ' . $row['description']);
        flash('success','Transaksi anggaran dihapus.'); back('/admin/anggaran');
    }
}
