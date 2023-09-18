CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`10.updateDimTable`()
BEGIN
	
	INSERT INTO Dim_LoaiHinh(LoaiHinh)
	SELECT DISTINCT LoaiHinhMap FROM Stg_ThongTin;

	INSERT INTO Dim_CapBac(CapBac)
	SELECT DISTINCT CapBacMap FROM Stg_ThongTin;

	INSERT INTO Dim_KinhNghiem(KinhNghiem) 
	SELECT DISTINCT KhoangKN FROM Stg_ThongTin;

	INSERT INTO Dim_Web(Web) 
	SELECT DISTINCT Web FROM Stg_ThongTin;

	INSERT INTO Dim_CongTy(CongTy) 
	SELECT DISTINCT CongTy FROM Stg_ThongTin;

	INSERT INTO Dim_KhoangLuong(KhoangLuong) 
	SELECT DISTINCT KhoangLuong FROM Stg_ThongTin;
	
	INSERT INTO Dim_TrungLap(ID_TrungLap, TrangThaiTrungLap) 
	SELECT DISTINCT ID_TrungLap, TrangThaiTrungLap FROM Stg_ThongTin;
	
	INSERT INTO Dim_ThoiGian
	SELECT DISTINCT  HanNop,
		SUBSTRING_INDEX(HanNop, '/', -1),
		SUBSTRING_INDEX((SUBSTRING_INDEX(HanNop, '/', 2)), '/', -1), 
		SUBSTRING_INDEX(HanNop, '/', 1) 
	FROM Stg_ThongTin dtg;

	INSERT INTO Dim_TinhThanh(TinhThanh) 
	SELECT DISTINCT TinhThanh FROM Stg_ThongTin;

	INSERT INTO Dim_CongViec(CongViec)
	SELECT DISTINCT CongViec FROM Stg_ThongTin;

	INSERT INTO Dim_ChiTietNhomYeuCau(ID, NhomYeuCau, ChiTietNhomYeuCau, NhomPhanLoaiYeuCau)
	SELECT ID, NhomYeuCau, ChiTietNhomYeuCau, NhomPhanLoaiYeuCau
	FROM Stg_HashtagChiTiet sh JOIN Stg_HashtagMappingYeuCau shmyc 
	ON sh.Hashtag = shmyc.HashtagName;

ALTER TABLE Dim_ThoiGian 
ADD COLUMN Quy tinyint(5);

UPDATE Dim_ThoiGian
Set Quy = CASE 
	WHEN Thang IN (1,2,3) THEN 1
	WHEN Thang IN (4,5,6) THEN 2
	WHEN Thang IN (7,8,9) THEN 3
	WHEN Thang IN (10,11,12) THEN 4
	ELSE 404
END;

	ALTER TABLE Dim_TinhThanh
ADD COLUMN  KhuVuc VARCHAR(100);
	
	UPDATE Dim_TinhThanh 
SET     KhuVuc =  CASE 
	When TinhThanh Like '%An Giang%'  THEN 'Nam'
When TinhThanh Like '%Bà Rịa – Vũng Tàu%'  THEN 'Nam'
When TinhThanh Like '%Bắc Giang%'  THEN 'Bắc'
When TinhThanh Like '%Bắc Kạn%'  THEN 'Bắc'
When TinhThanh Like '%Bạc Liêu%'  THEN 'Nam'
When TinhThanh Like '%Bắc Ninh%'  THEN 'Bắc'
When TinhThanh Like '%Bến Tre%'  THEN 'Nam'
When TinhThanh Like '%Bình Định%'  THEN 'Trung'
When TinhThanh Like '%Bình Dương%'  THEN 'Nam'
When TinhThanh Like '%Bình Phước%'  THEN 'Nam'
When TinhThanh Like '%Bình Thuận%'  THEN 'Trung'
When TinhThanh Like '%Cà Mau%'  THEN 'Nam'
When TinhThanh Like '%Cần Thơ%'  THEN 'Nam'
When TinhThanh Like '%Cao Bằng%'  THEN 'Bắc'
When TinhThanh Like '%Đà Nẵng%'  THEN 'Trung'
When TinhThanh Like '%Đắk Lắk%'  THEN 'Trung'
When TinhThanh Like '%Đắk Nông%'  THEN 'Trung'
When TinhThanh Like '%Điện Biên%'  THEN 'Bắc'
When TinhThanh Like '%Đồng Nai%'  THEN 'Nam'
When TinhThanh Like '%Đồng Tháp%'  THEN 'Nam'
When TinhThanh Like '%Gia Lai%'  THEN 'Trung'
When TinhThanh Like '%Hà Giang%'  THEN 'Bắc'
When TinhThanh Like '%Hà Nam%'  THEN 'Bắc'
When TinhThanh Like '%Hà Nội%'  THEN 'Bắc'
When TinhThanh Like '%Hà Tĩnh%'  THEN 'Trung'
When TinhThanh Like '%Hải Dương%'  THEN 'Bắc'
When TinhThanh Like '%Hải Phòng%'  THEN 'Bắc'
When TinhThanh Like '%Hậu Giang%'  THEN 'Nam'
When TinhThanh Like '%Hoà Bình%'  THEN 'Bắc'
When TinhThanh Like '%Hưng Yên%'  THEN 'Bắc'
When TinhThanh Like '%Khánh Hoà%'  THEN 'Trung'
When TinhThanh Like '%Kiên Giang%'  THEN 'Nam'
When TinhThanh Like '%Kon Tum%'  THEN 'Trung'
When TinhThanh Like '%Lai Châu%'  THEN 'Bắc'
When TinhThanh Like '%Lâm Đồng%'  THEN 'Trung'
When TinhThanh Like '%Lạng Sơn%'  THEN 'Bắc'
When TinhThanh Like '%Lào Cai%'  THEN 'Bắc'
When TinhThanh Like '%Long An%'  THEN 'Nam'
When TinhThanh Like '%Nam Định%'  THEN 'Bắc'
When TinhThanh Like '%Nghệ An%'  THEN 'Trung'
When TinhThanh Like '%Ninh Bình%'  THEN 'Bắc'
When TinhThanh Like '%Ninh Thuận%'  THEN 'Trung'
When TinhThanh Like '%Phú Thọ%'  THEN 'Bắc'
When TinhThanh Like '%Phú Yên%'  THEN 'Trung'
When TinhThanh Like '%Quảng Bình%'  THEN 'Trung'
When TinhThanh Like '%Quảng Nam%'  THEN 'Trung'
When TinhThanh Like '%Quảng Ngãi%'  THEN 'Trung'
When TinhThanh Like '%Quảng Ninh%'  THEN 'Bắc'
When TinhThanh Like '%Quảng Trị%'  THEN 'Trung'
When TinhThanh Like '%Sóc Trăng%'  THEN 'Nam'
When TinhThanh Like '%Sơn La%'  THEN 'Bắc'
When TinhThanh Like '%Tây Ninh%'  THEN 'Nam'
When TinhThanh Like '%Thái Bình%'  THEN 'Bắc'
When TinhThanh Like '%Thái Nguyên%'  THEN 'Bắc'
When TinhThanh Like '%Thanh Hoá%'  THEN 'Trung'
When TinhThanh Like '%Thừa Thiên Huế%'  THEN 'Trung'
When TinhThanh Like '%Tiền Giang%'  THEN 'Nam'
When TinhThanh Like '%Hồ Chí Minh%'  THEN 'Nam'
When TinhThanh Like '%Trà Vinh%'  THEN 'Nam'
When TinhThanh Like '%Tuyên Quang%'  THEN 'Bắc'
When TinhThanh Like '%Vĩnh Long%'  THEN 'Nam'
When TinhThanh Like '%Vĩnh Phúc%'  THEN 'Bắc'
When TinhThanh Like '%Yên Bái%'  THEN 'Bắc'
ELSE 'Khác'
END;

-- CongViec

ALTER TABLE Dim_CongViec
ADD COLUMN  NganhCon text;

ALTER TABLE Dim_CongViec
ADD COLUMN  LoaiCV text;

UPDATE Dim_CongViec  
SET     NganhCon =  CASE 
When CongViec = 'BA'  THEN 'Data'
When CongViec = 'DBA'  THEN 'Data'
When CongViec = 'DS'  THEN 'Data'
When CongViec = 'DA'  THEN 'Data'
When CongViec = 'DE'  THEN 'Data'
When CongViec = 'AI/ML Engineer'  THEN 'Data'
When CongViec = 'IT Staff'  THEN 'IT Support'
When CongViec = 'IT Support'  THEN 'IT Support'
When CongViec = 'IT Consultant'  THEN 'IT Support'
When CongViec = 'IT Comtor'  THEN 'IT Support'
When CongViec = 'Khác'  THEN 'Khác'
When CongViec = 'Dev'  THEN 'Lập trình'
When CongViec = 'Mobile/App Dev'  THEN 'Lập trình'
When CongViec = 'Software Dev'  THEN 'Lập trình'
When CongViec = 'Frontend Dev'  THEN 'Lập trình'
When CongViec = 'Web Dev'  THEN 'Lập trình'
When CongViec = 'Game Dev'  THEN 'Lập trình'
When CongViec = 'Backend Dev'  THEN 'Lập trình'
When CongViec = 'DevOps'  THEN 'Lập trình'
When CongViec = 'Fullstack Dev'  THEN 'Lập trình'
When CongViec = 'Embedded Dev'  THEN 'Lập trình'
When CongViec = 'Tester'  THEN 'Project Manager'
When CongViec = 'QA/QC Specialist'  THEN 'Project Manager'
When CongViec = 'SEO Specialist'  THEN 'Project Manager'
When CongViec = 'Project Manager'  THEN 'Project Manager'
When CongViec = 'Product Manager'  THEN 'Project Manager'
When CongViec = 'Scrum Master'  THEN 'Project Manager'
When CongViec = 'IT manager'  THEN 'Quản lý'
When CongViec = 'IT Leader'  THEN 'Quản lý'
When CongViec = 'IT Director'  THEN 'Quản lý'
When CongViec = 'System Administrator'  THEN 'Quản trị hệ thống'
When CongViec = 'Network Administrator'  THEN 'Quản trị hệ thống'
When CongViec = 'Risk Administrator'  THEN 'Quản trị hệ thống'
When CongViec = 'Security Administrator'  THEN 'Quản trị hệ thống'
When CongViec = 'Bridge System Engineer'  THEN 'Quản trị hệ thống'
When CongViec = 'Art Designer'  THEN 'Thiết kế'
When CongViec = 'Graphic Designer'  THEN 'Thiết kế'
When CongViec = 'Solution Architect'  THEN 'Thiết kế'
When CongViec = 'Technical Architect'  THEN 'Thiết kế'
	END;

UPDATE Dim_CongViec  
SET     LoaiCV =  CASE 
When CongViec = 'BA'  THEN 'Data'
When CongViec = 'DBA'  THEN 'Data'
When CongViec = 'DS'  THEN 'Data'
When CongViec = 'DA'  THEN 'Data'
When CongViec = 'DE'  THEN 'Data'
When CongViec = 'AI/ML Engineer'  THEN 'Data'
When CongViec = 'IT Staff'  THEN 'IT Support'
When CongViec = 'IT Support'  THEN 'IT Support'
When CongViec = 'IT Consultant'  THEN 'IT Support'
When CongViec = 'IT Comtor'  THEN 'IT Support'
When CongViec = 'Khác'  THEN 'Khác'
When CongViec = 'Dev'  THEN 'Lập trình viên'
When CongViec = 'Mobile/App Dev'  THEN 'Mobile/App Dev'
When CongViec = 'Software Dev'  THEN 'Software Dev'
When CongViec = 'Frontend Dev'  THEN 'Web Dev'
When CongViec = 'Web Dev'  THEN 'Web Dev'
When CongViec = 'Game Dev'  THEN 'Game Dev'
When CongViec = 'Backend Dev'  THEN 'Web Dev'
When CongViec = 'DevOps'  THEN 'Software Dev'
When CongViec = 'Fullstack Dev'  THEN 'Web Dev'
When CongViec = 'Embedded Dev'  THEN 'Software Dev'
When CongViec = 'Tester'  THEN 'Quality Manager'
When CongViec = 'QA/QC Specialist'  THEN 'Quality Manager'
When CongViec = 'SEO Specialist'  THEN 'Quality Manager'
When CongViec = 'Project Manager'  THEN 'Project Manager'
When CongViec = 'Product Manager'  THEN 'Project Manager'
When CongViec = 'Scrum Master'  THEN 'Project Manager'
When CongViec = 'IT manager'  THEN 'IT manager'
When CongViec = 'IT Leader'  THEN 'IT Leader'
When CongViec = 'System Administrator'  THEN 'Quản trị hệ thống'
When CongViec = 'Network Administrator'  THEN 'Quản trị hệ thống'
When CongViec = 'Risk Administrator'  THEN 'Quản trị hệ thống'
When CongViec = 'Security Administrator'  THEN 'Quản trị hệ thống'
When CongViec = 'Bridge System Engineer'  THEN 'Quản trị hệ thống'
When CongViec = 'Art Designer'  THEN 'Designer'
When CongViec = 'Graphic Designer'  THEN 'Designer'
When CongViec = 'Solution Architect'  THEN 'Architect'
When CongViec = 'Technical Architect'  THEN 'Architect'
When CongViec = 'IT Director'  THEN 'IT Director'
	END;	
END