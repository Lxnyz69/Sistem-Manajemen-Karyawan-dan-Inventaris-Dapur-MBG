# Sistem Manajemen Karyawan & Inventaris Dapur MBG

Website Anggaran Dapur MBG untuk transparansi distribusi makanan ke sekolah dan ringkasan data perusahaan.

## Tech Stack

- **Backend:** PHP 8.0+ (native), PDO
- **Database:** MySQL 8 / MariaDB 10.4+
- **Frontend:** HTML, Tailwind CSS (build lokal)
- **Library:** Dompdf (PDF slip gaji), Composer, Node.js/npm

## Cara Menjalankan

1. **Clone** project ke folder web server (Laragon: `C:\laragon\www\`, XAMPP: `C:\xampp\htdocs\`).
   ```bash
   git clone <url-repository> company-management
   cd company-management
   ```
2. **Install** dependency.
   ```bash
   composer install
   npm install
   npm run build:css
   ```
3. **Database:** buat database `database_dapur_sppg` (utf8mb4), lalu import `database/database_dapur_sppg.sql`.
4. **Konfigurasi:** salin `.env.example` menjadi `.env`, isi `DB_NAME`, `DB_USER`, `DB_PASS`. Untuk XAMPP di subfolder, isi `APP_BASE_PATH=/company-management`.
5. **Run:** nyalakan Apache & MySQL, arahkan document root ke `public/`, lalu buka:
   - Laragon: `http://company-management.test`
   - XAMPP: `http://localhost/company-management/`

Pastikan `public/uploads/` dapat ditulis dan ekstensi `pdo_mysql`, `mbstring`, `fileinfo`, `gd` aktif.

## Progress Saat Ini

- Login, daftar, logout, dan hak akses (RBAC) dinamis
- Dashboard publik dan admin
- Kelola karyawan, kehadiran, gaji, dan slip gaji PDF
- Stok barang, barang keluar, dan persetujuan stok
- Sekolah, menu sekolah, dan status pengantaran
- Setting website, profil, dan audit log

## Detail Akun

| ID | Role | Password |
|----|------|----------|
| admin | Admin | belumkepikiran |
| KRY-0001 | Kepala Dapur | belumkepikiran |
| KRY-0002 | Admin Dapur | belumkepikiran |
| KRY-0003 | Bendahara | belumkepikiran |
| KRY-0004 | Gudang | belumkepikiran |
| KRY-0005 | Kurir | belumkepikiran |
