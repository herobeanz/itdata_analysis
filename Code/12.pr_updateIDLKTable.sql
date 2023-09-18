CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`12.updateIDStgTT`()
BEGIN
	
UPDATE Stg_ThongTin SET ID_Web = 
(SELECT ID_Web FROM Dim_Web WHERE Stg_ThongTin.Web = Dim_Web.Web);

UPDATE Stg_ThongTin SET ID_LoaiHinh = 
(SELECT ID_LoaiHinh FROM Dim_LoaiHinh WHERE Stg_ThongTin.LoaiHinhMap = Dim_LoaiHinh.LoaiHinh);

UPDATE Stg_ThongTin SET ID_CapBac = 
(SELECT ID_CapBac FROM Dim_CapBac WHERE Stg_ThongTin.CapBacMap = Dim_CapBac.CapBac);

UPDATE Stg_ThongTin SET ID_CongTy = 
(SELECT ID_CongTy FROM Dim_CongTy WHERE Stg_ThongTin.CongTy = Dim_CongTy.CongTy);

UPDATE Stg_ThongTin SET ID_CongViec = 
(SELECT ID_CongViec FROM Dim_CongViec WHERE Stg_ThongTin.CongViec = Dim_CongViec.CongViec);

UPDATE Stg_ThongTin SET ID_KinhNghiem = 
(SELECT ID_KinhNghiem FROM Dim_KinhNghiem WHERE Stg_ThongTin.KhoangKN = Dim_KinhNghiem.KinhNghiem);

UPDATE Stg_ThongTin SET ID_TinhThanh = 
(SELECT ID_TinhThanh FROM Dim_TinhThanh WHERE Stg_ThongTin.TinhThanh = Dim_TinhThanh.TinhThanh);

UPDATE Stg_ThongTin SET ID_KhoangLuong = 
(SELECT ID_KhoangLuong FROM Dim_KhoangLuong WHERE Stg_ThongTin.KhoangLuong = Dim_KhoangLuong.KhoangLuong);

END