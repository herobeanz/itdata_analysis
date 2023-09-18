CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`1.creStgTable`()
BEGIN
		
DROP TABLE IF EXISTS Stg_CapBac;
DROP TABLE IF EXISTS Stg_CongViec;
DROP TABLE IF EXISTS Stg_DiaDiem;
DROP TABLE IF EXISTS Stg_KinhNghiem;
DROP TABLE IF EXISTS Stg_LoaiHinh;
DROP TABLE IF EXISTS Stg_Luong;
DROP TABLE IF EXISTS Stg_TrungLap;
    
CREATE TABLE Stg_CapBac (CapBac VARCHAR(50)) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Stg_LoaiHinh (LoaiHinh VARCHAR(50))
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Stg_CongViec (TenCV text) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Stg_Luong (Luong VARCHAR(100)) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Stg_KinhNghiem (KinhNghiem VARCHAR(100)) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Stg_DiaDiem (DiaDiem VARCHAR(100)) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Stg_TrungLap (
        ID varchar(20),
        TrangThaiTrungLap varchar(20) DEFAULT 'Không Trùng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

UPDATE Origin_Data SET Luong = REPLACE(lower(Luong), 'một', '1'); 
UPDATE Origin_Data SET KinhNghiem = REPLACE(lower(KinhNghiem), 'một', '1'); 

END