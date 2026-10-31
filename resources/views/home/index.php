<header class="pub-head">
  <div class="pub-head-in">
    <?php if (setting('logo')): ?><img src="<?= e(url(setting('logo'))) ?>" alt=""><?php else: ?><span class="mark"><i class="fa-solid fa-building"></i></span><?php endif; ?>
    <div class="u-grow" style="font-weight:600"><?= e(setting('site_name')) ?></div>
    <?php if (auth_user()): ?>
    <?php else: ?>
    <?php endif; ?>
  </div>
</header>
<main class="pub-main">
  <h1><?= e(setting('site_title')) ?></h1>
  <p class="lead">Transparansi distribusi makanan ke sekolah dan ringkasan data perusahaan. Hanya angka agregat, tanpa data pribadi.</p>

  <!-- ========== DISTRIBUSI ========== -->
  <div class="pub-sec-head"><h2>Distribusi Makanan</h2><span class="u-muted u-small">Data hari ini · <?= e(tgl_panjang(date('Y-m-d'))) ?></span></div>
  <div class="grid-2" style="grid-template-columns:repeat(auto-fit,minmax(min(100%,26rem),1fr))">
    <section class="panel panel-flush">
      <div class="panel-head"><h2 class="panel-title">Sekolah</h2></div>
      <div class="metrics plain">
        <?= stat_card('', 'Total sekolah', num($dist['schools'])) ?>
        <?= stat_card('', 'Sekolah aktif', num($dist['schools_active'])) ?>
        <?= stat_card('', 'Sekolah nonaktif', num($dist['schools_inactive'])) ?>
        <?= stat_card('', 'Jumlah siswa', num($dist['daily_portions'])) ?>
      </div>
    </section>
    <section class="panel panel-flush">
      <div class="panel-head"><h2 class="panel-title">Menu</h2></div>
      <div class="metrics plain">
        <?= stat_card('', 'Total menu terdaftar', num($dist['menus'])) ?>
        <?= stat_card('', 'Menu hari ini', num($dist['menus_today'])) ?>
        <?= stat_card('', 'Porsi direncanakan hari ini', num($dist['planned_today'])) ?>
        <?= stat_card('', 'Porsi sudah dikirim hari ini', num($today['sent'])) ?>
      </div>
    </section>
    <section class="panel panel-flush">
      <div class="panel-head"><h2 class="panel-title">Pengantaran hari ini</h2></div>
      <div class="metrics plain">
        <?= stat_card('', 'Total pengiriman', num($today['total'])) ?>
        <?= stat_card('', 'Dalam pembuatan', num($today['preparing'])) ?>
        <?= stat_card('', 'Dalam pengantaran', num($today['transit'])) ?>
        <?= stat_card('', 'Sampai di sekolah', num($today['arrived'])) ?>
        <?= stat_card('', 'Makanan diterima', num($today['received'])) ?>
        <?= stat_card('', 'Terlambat', num($today['late']), '#b3261e', $today['late'] > 0) ?>
        <?= stat_card('', 'Pengiriman selesai', $today['percent'] . '%') ?>
      </div>
    </section>
    <section class="panel"><h2 class="panel-title u-mb">Status pengantaran hari ini</h2>
      <?php echo bar_chart(['Dalam Pembuatan' => $today['preparing'], 'Dalam Pengantaran' => $today['transit'], 'Sampai di Sekolah' => $today['arrived'], 'Makanan Diterima' => $today['received']], 'var(--c-primary)'); ?>
    </section>
  </div>

  <section class="panel panel-flush u-mt" id="daftar-sekolah">
    <div class="panel-head">
      <h2 class="panel-title u-grow">Daftar Sekolah</h2>
      <input class="input input-sm input-auto" type="search" id="schoolSearch" placeholder="Cari nama sekolah / alamat" aria-label="Cari sekolah" style="min-width:14rem">
    </div>
    <div class="table-wrap"><table class="tbl pub-school-tbl"><thead><tr><th>Sekolah</th><th class="num">Jumlah siswa</th><th>Menu hari ini</th><th>Status pengantaran hari ini</th></tr></thead><tbody id="schoolRows">
      <?php foreach ($schools as $sc): ?>
      <tr data-search="<?= e(mb_strtolower($sc['name'] . ' ' . $sc['address'])) ?>">
        <td><a class="school-name" href="<?= e(url('/sekolah/' . $sc['id'])) ?>"><?= e($sc['name']) ?></a><span class="sub"><?= e($sc['address']) ?></span></td>
        <td class="num"><?= num($sc['daily_portions']) ?></td>
        <td><?= isset($menusToday[$sc['id']]) ? e(implode(', ', $menusToday[$sc['id']])) : '<span class="u-muted">Belum ada menu</span>' ?></td>
        <td><?= delivery_day_summary($statToday[$sc['id']] ?? []) ?></td>
      </tr>
      <?php endforeach; if (!$schools): ?><tr><td class="empty" colspan="4">Belum ada sekolah terdaftar.</td></tr><?php endif; ?>
      <tr id="schoolNone" hidden><td class="empty" colspan="4">Tidak ada sekolah yang cocok dengan pencarian.</td></tr>
    </tbody></table></div>
    <div class="panel-foot"><span>Klik nama sekolah untuk melihat menu dan status pengantaran per hari.</span></div>
  </section>

  <div class="pub-sec-head u-mt"><h2>Ringkasan Anggaran Mingguan</h2><span class="u-muted u-small"><?= e(tgl_panjang($budgetStart)) ?> – <?= e(tgl_panjang($budgetEnd)) ?></span></div>
  <section class="panel panel-flush">
    <div class="metrics plain">
      <?= stat_card('', 'Pemasukan minggu ini', rupiah($budgetSummary['in']), '#16834a') ?>
      <?= stat_card('', 'Pengeluaran minggu ini', rupiah($budgetSummary['out']), '#b3261e') ?>
      <?= stat_card('', 'Selisih minggu ini', rupiah($budgetSummary['in'] - $budgetSummary['out'])) ?>
      <?= stat_card('', 'Saldo anggaran tersedia', rupiah($budgetBalance)) ?>
    </div>
    <div class="table-wrap"><table class="tbl"><thead><tr><th>Tanggal</th><th>Arus</th><th>Kategori</th><th>Keterangan</th><th class="num">Jumlah</th></tr></thead><tbody>
      <?php foreach ($budget as $tx): ?><tr><td><?= e(tgl_panjang($tx['transaction_date'])) ?></td><td><?= $tx['type'] === 'in' ? 'Pemasukan' : 'Pengeluaran' ?></td><td><?= e($tx['category']) ?></td><td><?= e($tx['description']) ?></td><td class="num"><?= rupiah($tx['amount']) ?></td></tr><?php endforeach; ?>
      <?php if (!$budget): ?><tr><td class="empty" colspan="5">Belum ada transaksi anggaran yang dicatat untuk minggu ini.</td></tr><?php endif; ?>
    </tbody></table></div>
    <div class="panel-foot">Saldo tersedia adalah seluruh pemasukan dikurangi pengeluaran, termasuk gaji dibayar dan pembelian barang yang disetujui.</div>
  </section>

  <div class="pub-sec-head u-mt"><h2>Perusahaan</h2></div>
  <div class="grid-2" style="grid-template-columns:repeat(auto-fit,minmax(min(100%,26rem),1fr))">
    <section class="panel panel-flush">
      <div class="panel-head"><h2 class="panel-title">Karyawan</h2></div>
      <div class="metrics plain">
        <?= stat_card('', 'Total karyawan', num($s['emp_total'])) ?>
        <?= stat_card('', 'Aktif', num($s['emp_active'])) ?>
        <?= stat_card('', 'Menunggu konfirmasi', num($s['emp_pending'])) ?>
        <?= stat_card('', 'Gaji terbayar', rupiah($s['payroll_paid'])) ?>
      </div>
    </section>
    <section class="panel panel-flush">
      <div class="panel-head"><h2 class="panel-title">Inventaris</h2></div>
      <div class="metrics plain">
        <?= stat_card('', 'Jenis barang', num($s['items'])) ?>
        <?= stat_card('', 'Total stok', num($s['stock'])) ?>
        <?= stat_card('', 'Nilai inventaris', rupiah($s['value'])) ?>
        <?= stat_card('', 'Pengajuan stok', num($s['requests'])) ?>
      </div>
    </section>
  </div>
  <div class="grid-2 u-mt">
    <section class="panel"><h2 class="panel-title u-mb">Total gaji per bulan</h2>
      <?php $d = []; foreach (array_reverse($trend) as $t) $d[bulan_id((int)$t['m']) . ' ' . $t['y']] = $t['total']; echo bar_chart($d, 'var(--c-primary)', true); ?>
    </section>
    <section class="panel"><h2 class="panel-title u-mb">Status pengajuan stok</h2>
      <?php echo bar_chart(['Menunggu' => $reqStat['waiting'] ?? 0, 'Disetujui' => $reqStat['approved'] ?? 0, 'Ditolak' => $reqStat['declined'] ?? 0], 'var(--c-primary)'); ?>
    </section>
  </div>
</main>
<footer class="pub-foot"><?= e(setting('footer_text')) ?></footer>

<script>
(function(){var q=document.getElementById('schoolSearch'),rows=document.querySelectorAll('#schoolRows tr[data-search]'),none=document.getElementById('schoolNone');if(!q)return;
q.addEventListener('input',function(){var v=q.value.trim().toLowerCase(),n=0;rows.forEach(function(r){var ok=!v||r.dataset.search.indexOf(v)>-1;r.hidden=!ok;if(ok)n++;});none.hidden=n>0||!rows.length;});})();
</script>
