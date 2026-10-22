CREATE TABLE Siswa (
    ID_Siswa VARCHAR(50) PRIMARY KEY,
    Nama_Siswa VARCHAR(100) NOT NULL,
    Kelas VARCHAR(50) NOT NULL,
    ID_Sekolah VARCHAR(50),
    ID_Kelompok VARCHAR(50),
    FOREIGN KEY (ID_Sekolah) REFERENCES Sekolah(ID_Sekolah) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (ID_Kelompok) REFERENCES Kelompok_Sasaran(ID_Kelompok) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Menu_Harian (
    ID_Menu VARCHAR(50) PRIMARY KEY,
    Nama_Menu VARCHAR(100) NOT NULL,
    Tanggal_Menu DATE NOT NULL,
    ID_Pengguna_Penyusun VARCHAR(50),
    ID_Pengguna_Penginput VARCHAR(50),
    FOREIGN KEY (ID_Pengguna_Penyusun) REFERENCES Pengguna(ID_Pengguna) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (ID_Pengguna_Penginput) REFERENCES Pengguna(ID_Pengguna) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Porsi_Menu (
    ID_Siswa VARCHAR(50),       
    ID_Menu VARCHAR(50),       
    Takaran_Porsi VARCHAR(50) NOT NULL,
    Energi_Kkal DECIMAL(6,2),
    Protein_G DECIMAL(5,2),
    Lemak_G DECIMAL(5,2),
    Karbohidrat_G DECIMAL(5,2),
    Persentase_Pemenuhan DECIMAL(5,2),
    PRIMARY KEY (ID_Siswa, ID_Menu), 
    FOREIGN KEY (ID_Siswa) REFERENCES Siswa(ID_Siswa) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Menu) REFERENCES Menu_Harian(ID_Menu) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;
