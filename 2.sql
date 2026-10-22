1. 
INSERT INTO Siswa (ID_Siswa, Nama_Siswa, Kelas, ID_Sekolah, ID_Kelompok) VALUES
('S001', 'Ehsan', 'Kelas 1A', 2345, SD,
('S002', 'Jinora', 'Kelas 2B', 2345, SD),
('S003', 'Selen', 'Kelas 3C', 2345, SD);

INSERT INTO Menu_Harian (ID_Menu, Nama_Menu, Tanggal_Menu, ID_Pengguna_Penyusun, ID_Pengguna_Penginput) VALUES
('M001', 'Nasi Goreng Ayam + Telur', '2026-10-20', NULL, NULL),
('M002', 'Bubur Kacang Ijo + Susu', '2026-10-21', NULL, NULL),
('M003', 'Soto Ayam + Buah Pisang', '2026-10-22', NULL, NULL);

INSERT INTO Porsi_Menu (ID_Siswa, ID_Menu, Takaran_Porsi, Energi_Kkal, Protein_G, Lemak_G, Karbohidrat_G, Persentase_Pemenuhan) VALUES
('S001', 'M001', '1 Piring', 450.00, 15.50, 12.00, 60.00, 25.00),
('S002', 'M002', '1 Mangkuk', 320.50, 10.20, 8.00, 45.30, 18.50),
('S003', 'M003', '1 Piring', 480.00, 18.00, 14.20, 55.00, 28.00);

2.
SELECT * FROM Siswa;
SELECT * FROM Menu_Harian;

3.
UPDATE Porsi_Menu 
SET Takaran_Porsi = '1.5 Piring' 
WHERE ID_Siswa = 'S001' AND ID_Menu = 'M001';

UPDATE Porsi_Menu 
SET Energi_Kkal = 350.00 
WHERE ID_Siswa = 'S002' AND ID_Menu = 'M002';

4. 
DELETE FROM Porsi_Menu 
WHERE ID_Siswa = 'S003' AND ID_Menu = 'M003';




