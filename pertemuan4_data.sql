-- ============================================
-- Pertemuan 4 - Perancangan Basis Data dan SQL Dasar
-- File: pertemuan4_data.sql
-- Data latihan berbeda dari modul (2 prodi, 4 mahasiswa)
-- ============================================

USE praktikum_web_2401020110;

-- Masukkan 2 program studi
INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Elektro'),
    ('Ilmu Komputer');

-- Masukkan 4 mahasiswa (1 di antaranya data sementara untuk diuji DELETE)
INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2301010001', 'Rudi Hartono',
     'rudi@example.com', 20, 1),
    ('2301010002', 'Maya Sari',
     'maya@example.com', 21, 1),
    ('2301020001', 'Fajar Nugraha',
     'fajar@example.com', 22, 2),
    ('2301020099', 'Data Uji Coba',
     'ujicoba@example.com', 19, 2);

-- UPDATE: perbarui email Rudi
UPDATE mahasiswa
SET email = 'rudi.hartono@example.com'
WHERE nim = '2301010001';

-- DELETE: hapus data sementara
DELETE FROM mahasiswa
WHERE nim = '2301020099';

-- SELECT JOIN: tampilkan hasil akhir (harus tersisa 3 mahasiswa)
SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;
