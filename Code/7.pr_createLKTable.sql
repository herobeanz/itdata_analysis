CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`7.creStg_TT&insertDataGoc`()
BEGIN
	
	DROP TABLE IF EXISTS Stg_ThongTin;

CREATE TABLE `Stg_ThongTin` (
  `ID` varchar(20) NOT NULL,
  `Web` varchar(50) DEFAULT NULL,
  `ID_Web` int(10) DEFAULT NULL,
  `TenCV` text DEFAULT NULL,
`CongViec` text DEFAULT NULL,
`ID_CongViec` int(10) DEFAULT NULL,
  `CongTy` text DEFAULT NULL,
`ID_CongTy` int(10) DEFAULT NULL,
  `DiaDiem` varchar(100) DEFAULT NULL,
  `TinhThanh` varchar(100) DEFAULT NULL,
`ID_TinhThanh` int(10) DEFAULT NULL,
  `Luong` varchar(100) DEFAULT NULL,
`KhoangLuong` varchar(100) DEFAULT NULL,
`ID_KhoangLuong` int(10) DEFAULT NULL,
  `LoaiHinh` varchar(100) DEFAULT NULL,
`LoaiHinhMap` varchar(100) DEFAULT NULL,
`ID_LoaiHinh` int(10) DEFAULT NULL,
  `KinhNghiem` varchar(100) DEFAULT NULL,
`KhoangKN` varchar(100) DEFAULT NULL,
`ID_KinhNghiem` int(10) DEFAULT NULL,
  `CapBac` varchar(100) DEFAULT NULL,
 `CapBacMap` varchar(100) DEFAULT NULL,
`ID_CapBac` int(10) DEFAULT NULL,
`TrangThaiTrungLap` varchar(20) DEFAULT NULL,
`ID_TrungLap` int(10) DEFAULT NULL,
  `HanNop` varchar(20) DEFAULT NULL,
  `YeuCau` text DEFAULT NULL,
  `SoLuong` int(10) NOT NULL DEFAULT 1,
  `LuongTB` decimal(10,1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Stg_ThongTin` (ID,Web,TenCV,CongTy,DiaDiem,Luong,LoaiHinh,KinhNghiem,CapBac,HanNop,YeuCau,SoLuong)
SELECT ID,Web,TenCV,CongTy,DiaDiem,Luong,LoaiHinh,KinhNghiem,CapBac,HanNop,YeuCau,SoLuong FROM Origin_Data ;

END