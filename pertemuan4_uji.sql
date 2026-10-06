-- ============================================
-- Pertemuan 4 - Pengujian Integritas Data
-- File: pertemuan4_uji.sql
-- Jalankan satu per satu, catat pesan error yang muncul
-- ============================================

-- Uji 1: NIM ganda -> HARUS DITOLAK oleh constraint UNIQUE pada kolom nim
INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2301010001', 'Nama Ganda',
     'ganda@example.com', 20, 1);

-- Uji 2: program_studi_id tidak tersedia (misal id 99) -> HARUS DITOLAK oleh FOREIGN KEY
INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2301010098', 'Uji Relasi',
     'relasi@example.com', 20, 99);

-- Pastikan jumlah mahasiswa tetap 3 (kedua INSERT di atas gagal)
SELECT COUNT(*) AS jumlah_mahasiswa FROM mahasiswa;
