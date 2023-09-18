CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`13.insertFact`()
BEGIN
		
	DROP TABLE IF EXISTS Fact;

CREATE TABLE `Fact` (
  `ID` varchar(20) NOT NULL,
  `ID_Web` int(10) DEFAULT NULL,
  `ID_CongViec` int(10) DEFAULT NULL,
  `ID_CongTy` int(10) DEFAULT NULL,
  `ID_TinhThanh` int(10) DEFAULT NULL,
  `ID_KhoangLuong` int(10) DEFAULT NULL,
  `ID_LoaiHinh` int(10) DEFAULT NULL,
  `ID_KinhNghiem` int(10) DEFAULT NULL,
  `ID_CapBac` int(10) DEFAULT NULL,
  `ID_TrungLap` varchar(10) DEFAULT NULL,
  `HanNop` varchar(20) DEFAULT NULL,
  `SoLuong` int(10) NOT NULL DEFAULT 1,
  `LuongTB` decimal(10,1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO Fact (ID, ID_Web, ID_CongViec, ID_CongTy, ID_TinhThanh, ID_KhoangLuong, ID_LoaiHinh, ID_KinhNghiem,
	ID_CapBac, ID_TrungLap, HanNop, SoLuong, LuongTB)
	SELECT ID, ID_Web, ID_CongViec, ID_CongTy, ID_TinhThanh, ID_KhoangLuong, ID_LoaiHinh, ID_KinhNghiem,
	ID_CapBac, ID_TrungLap, HanNop, SoLuong, LuongTB FROM Stg_ThongTin stt ;

END