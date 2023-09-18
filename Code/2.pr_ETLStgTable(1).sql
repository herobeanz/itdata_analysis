CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`2.insertStgTableFromOrigin`()
BEGIN
	DELETE FROM Stg_CapBac;
	DELETE FROM Stg_CongViec;
	DELETE FROM Stg_LoaiHinh;
	DELETE FROM Stg_DiaDiem;
	DELETE FROM Stg_Luong;
	DELETE FROM Stg_KinhNghiem;
	DELETE FROM Stg_TrungLap;	
	
INSERT INTO Stg_CapBac(CapBac)
SELECT DISTINCT CapBac FROM dulieutu_IT.Origin_Data;

INSERT INTO Stg_CongViec (TenCV)
SELECT DISTINCT TenCV FROM dulieutu_IT.Origin_Data;

INSERT INTO Stg_LoaiHinh(LoaiHinh)
SELECT DISTINCT LoaiHinh FROM dulieutu_IT.Origin_Data;

INSERT INTO Stg_DiaDiem(DiaDiem)
SELECT DISTINCT DiaDiem FROM dulieutu_IT.Origin_Data;

INSERT INTO Stg_Luong(Luong)
SELECT DISTINCT Luong FROM dulieutu_IT.Origin_Data;

INSERT INTO Stg_KinhNghiem
SELECT DISTINCT KinhNghiem FROM dulieutu_IT.Origin_Data;

INSERT INTO Stg_TrungLap(ID)
SELECT DISTINCT ID FROM dulieutu_IT.Origin_Data
GROUP BY TenCV, CongTy, DiaDiem;
END