SELECT 
    Nama_Menu, 
    Tanggal_Menu,
    COUNT(ID_Siswa) AS Jumlah_Siswa_Penerima,
    SUM(Energi_Kkal) AS Total_Kalori_Menu
FROM 
    Menu_Harian 
JOIN 
    Porsi_Menu  ON ID_Menu = ID_Menu
WHERE 
    Tanggal_Menu >= '2026-10-01'
GROUP BY 
    ID_Menu, Nama_Menu, Tanggal_Menu;
