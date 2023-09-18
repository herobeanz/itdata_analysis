CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`9.pr_creDimTable`()
BEGIN
		
DROP TABLE IF EXISTS Dim_Web;
DROP TABLE IF EXISTS Dim_CapBac;
DROP TABLE IF EXISTS Dim_LoaiHinh;
DROP TABLE IF EXISTS Dim_CongTy;
DROP TABLE IF EXISTS Dim_TinhThanh;
DROP TABLE IF EXISTS Dim_CongViec;
DROP TABLE IF EXISTS Dim_KinhNghiem;
DROP TABLE IF EXISTS Dim_KhoangLuong;
DROP TABLE IF EXISTS Dim_ThoiGian;
DROP TABLE IF EXISTS Dim_TrungLap;
DROP TABLE IF EXISTS Dim_ChiTietNhomYeuCau;

 CREATE TABLE Dim_Web (
     ID_Web int(10) NOT NULL AUTO_INCREMENT,
     Web VARCHAR(50) NOT NULL,
     PRIMARY KEY (ID_Web)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_CapBac (
     ID_CapBac int(10) NOT NULL AUTO_INCREMENT,
     CapBac VARCHAR(100) NOT NULL,
     PRIMARY KEY (ID_CapBac)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_LoaiHinh (
     ID_LoaiHinh int(10) NOT NULL AUTO_INCREMENT,
     LoaiHinh VARCHAR(100) NOT NULL,
     PRIMARY KEY (ID_LoaiHinh)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_CongTy (
     ID_CongTy int(10) NOT NULL AUTO_INCREMENT,
     CongTy text NOT NULL,
     PRIMARY KEY (ID_CongTy)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_TinhThanh (
     ID_TinhThanh int(10) NOT NULL AUTO_INCREMENT,
     TinhThanh VARCHAR(100) NOT NULL,
     PRIMARY KEY (ID_TinhThanh)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_CongViec (
     ID_CongViec int(10) NOT NULL AUTO_INCREMENT,
     CongViec text NOT NULL,
     PRIMARY KEY (ID_CongViec)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_KinhNghiem (
     ID_KinhNghiem int(10) NOT NULL AUTO_INCREMENT,
     KinhNghiem VARCHAR(100) NOT NULL,
     PRIMARY KEY (ID_KinhNghiem)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_KhoangLuong (
     ID_KhoangLuong int(10) NOT NULL AUTO_INCREMENT,
     KhoangLuong VARCHAR(100) NOT NULL,
     PRIMARY KEY (ID_KhoangLuong)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_TrungLap (
     ID_TrungLap int(10) NOT NULL,
     TrangThaiTrungLap VARCHAR(20) NOT NULL,
     PRIMARY KEY (ID_TrungLap)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE Dim_ThoiGian (
  `HanNop` varchar(20) NOT NULL,
  `Nam` smallint(6) DEFAULT NULL,
  `Thang` tinyint(4) DEFAULT NULL,
  `Ngay` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`HanNop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
 
-- dulieutu_ITFinal.Dim_ChiTietNhomYeuCau definition

CREATE TABLE `Dim_ChiTietNhomYeuCau` (
  `ID` varchar(20) NOT NULL,
  `NhomYeuCau` varchar(50) DEFAULT NULL,
  `ChiTietNhomYeuCau` varchar(100) DEFAULT NULL,
  `NhomPhanLoaiYeuCau` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

END