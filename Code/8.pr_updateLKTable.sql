CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`8.updStg_TTFromStgTable`()
BEGIN
	UPDATE Stg_ThongTin SET LoaiHinhMap = 
(SELECT LoaiHinhMap FROM Stg_LoaiHinh WHERE Stg_ThongTin.LoaiHinh = Stg_LoaiHinh.LoaiHinh);
	
	UPDATE Stg_ThongTin SET CapBacMap = 
(SELECT CapBacMap FROM Stg_CapBac WHERE Stg_ThongTin.CapBac = Stg_CapBac.CapBac);

	UPDATE Stg_ThongTin SET TinhThanh = 
(SELECT TinhThanh FROM Stg_DiaDiem WHERE Stg_ThongTin.DiaDiem = Stg_DiaDiem.DiaDiem);

	UPDATE Stg_ThongTin SET CongViec = 
(SELECT CongViec FROM Stg_CongViec WHERE Stg_ThongTin.TenCV = Stg_CongViec.TenCV);

	UPDATE Stg_ThongTin SET KhoangLuong = 
(SELECT KhoangLuong FROM Stg_LuongMap WHERE Stg_ThongTin.Luong = Stg_LuongMap.Luong);

	UPDATE Stg_ThongTin SET LuongTB = 
(SELECT LuongTB FROM Stg_LuongMap WHERE Stg_ThongTin.Luong = Stg_LuongMap.Luong);

	UPDATE Stg_ThongTin SET KhoangKN = 
(SELECT KhoangKN FROM Stg_KinhNghiem WHERE Stg_ThongTin.KinhNghiem = Stg_KinhNghiem.KinhNghiem);

	UPDATE Stg_ThongTin SET TrangThaiTrungLap = 
(SELECT TrangThaiTrungLap FROM Stg_TrungLap WHERE Stg_ThongTin.ID = Stg_TrungLap.ID);
	UPDATE Stg_ThongTin SET TrangThaiTrungLap = 'Trùng' WHERE TrangThaiTrungLap IS NULL;
	UPDATE Stg_ThongTin SET ID_TrungLap = 1 Where TrangThaiTrungLap = 'Trùng' ;
	UPDATE Stg_ThongTin SET ID_TrungLap = 0 Where TrangThaiTrungLap = 'Không Trùng' ;
	
UPDATE Stg_ThongTin Set LuongTB = 130.9325 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Director' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 50 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Staff' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 37.7785 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Tester' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 62.4535 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'System Administrator' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 58 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Art Designer' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 47.061 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'QA/QC Specialist' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 53.359 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'BA' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 71.3365 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DBA' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 46 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Khác' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 58.2 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 38.225 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Support' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 120.945 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT manager' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 46 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'SEO Specialist' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 74.415 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Project Manager' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 79.914 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DS' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 105 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Leader' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 50 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer ' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 57 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Mobile/App Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 50 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Network Administrator' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 53 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Software Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 57.025 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 45 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Consultant' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 55 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Comtor' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 53.359 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DA' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 52.3485 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Frontend Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 61.3725 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Web Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 60.0565 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Game Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 61.443 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Backend Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 54.2755 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Product Manager' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 129.687 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Solution Architect' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 72.5585 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DE' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 71.313 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Risk Administrator' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 80.5015 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DevOps' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 63.0175 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Fullstack Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 72.488 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Security Administrator' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 77.0235 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Scrum Master' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 104.918 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'AI/ML Engineer' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 71.595 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Embedded Dev' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 83.9325 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Bridge System Engineer' AND KhoangKN = 'Trên 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 126.9845 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Technical Architect' AND KhoangKN = 'Trên 5 năm';

UPDATE Stg_ThongTin Set LuongTB = 80.9325 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Director' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 20 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Staff' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 10 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Tester' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 22.4535 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'System Administrator' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 28 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Art Designer' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 21 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'QA/QC Specialist' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 22 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'BA' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 31.3365 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DBA' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 11 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Khác' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 23.2 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 13 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Support' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 70.945 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT manager' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 11 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'SEO Specialist' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 34.415 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Project Manager' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 39.914 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DS' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 62 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Leader' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer ' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 25 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Mobile/App Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 20 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Network Administrator' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 20 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Software Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 25 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 18 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Consultant' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 20 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Comtor' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 25 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DA' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 22 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Frontend Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 25 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Web Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 25 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Game Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 25 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Backend Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 24 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Product Manager' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 79.687 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Solution Architect' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 32.5585 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DE' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 31.313 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Risk Administrator' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 40.5015 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DevOps' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 23.0175 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Fullstack Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 32.488 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Security Administrator' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 37.0235 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Scrum Master' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 54.918 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'AI/ML Engineer' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 31.595 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Embedded Dev' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 43.9325 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Bridge System Engineer' AND KhoangKN = '1 - 3 năm';
UPDATE Stg_ThongTin Set LuongTB = 76.9845 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Technical Architect' AND KhoangKN = '1 - 3 năm';

UPDATE Stg_ThongTin Set LuongTB = 105.9325 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Director' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 30 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Staff' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 17.7785 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Tester' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 42.4535 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'System Administrator' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 38 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Art Designer' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 30 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'QA/QC Specialist' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 33.359 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'BA' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 51.3365 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DBA' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 26 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Khác' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 38.2 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 22 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Support' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 95.945 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT manager' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 26 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'SEO Specialist' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 54.415 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Project Manager' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 59.914 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DS' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 80 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Leader' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 30 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer ' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 37 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Mobile/App Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 30 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Network Administrator' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 33 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Software Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 37.025 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 30 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Consultant' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 30 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Comtor' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 33.359 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DA' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 35 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Frontend Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 41.3725 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Web Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 40.0565 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Game Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 41.443 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Backend Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 34.2755 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Product Manager' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 104.687 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Solution Architect' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 52.5585 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DE' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 51.313 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Risk Administrator' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 55.5015 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DevOps' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 43.0175 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Fullstack Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 52.488 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Security Administrator' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 57.0235 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Scrum Master' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 79.918 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'AI/ML Engineer' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 51.595 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Embedded Dev' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 58.9325 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Bridge System Engineer' AND KhoangKN = '3 - 5 năm';
UPDATE Stg_ThongTin Set LuongTB = 101.9845 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Technical Architect' AND KhoangKN = '3 - 5 năm';

UPDATE Stg_ThongTin Set LuongTB = 60 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Director' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 12 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Staff' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 7.78 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Tester' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 17.4535 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'System Administrator' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 20 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Art Designer' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'QA/QC Specialist' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 15.359 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'BA' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 18 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DBA' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 8 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Khác' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 9 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Support' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 52 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT manager' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 8 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'SEO Specialist' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 20 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Project Manager' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 23 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DS' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 45 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Leader' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 12 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer ' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 17 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Mobile/App Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 12 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Network Administrator' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Software Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 18 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 10 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Consultant' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 11 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Comtor' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 15.359 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DA' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Frontend Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 16.3725 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Web Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 15.0565 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Game Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 16.443 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Backend Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 16.2755 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Product Manager' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 65 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Solution Architect' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 21 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DE' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 20 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Risk Administrator' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 25 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DevOps' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 14 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Fullstack Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 18 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Security Administrator' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 26 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Scrum Master' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 32 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'AI/ML Engineer' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 19 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Embedded Dev' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 28 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Bridge System Engineer' AND KhoangKN = 'Dưới 1 năm';
UPDATE Stg_ThongTin Set LuongTB = 46 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Technical Architect' AND KhoangKN = 'Dưới 1 năm';

UPDATE Stg_ThongTin Set LuongTB = 40 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Director' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 9 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Staff' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 6 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Tester' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 12.4535 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'System Administrator' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 18 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Art Designer' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 10 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'QA/QC Specialist' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 13.359 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'BA' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 14 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DBA' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 5 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Khác' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 13 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 7 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Support' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 40 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT manager' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 16 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'SEO Specialist' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 16 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Project Manager' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 17 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DS' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 35 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Leader' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 10 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer ' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Mobile/App Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 10 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Network Administrator' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 13 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Software Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 16 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Graphic Designer' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 7 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Consultant' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 7 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'IT Comtor' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 12 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DA' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 12.3485 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Frontend Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 11.3725 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Web Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 10.0565 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Game Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 11.443 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Backend Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 14.2755 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Product Manager' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 50 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Solution Architect' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 18 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DE' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Risk Administrator' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 20 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'DevOps' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 10 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Fullstack Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Security Administrator' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 23 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Scrum Master' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 25 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'AI/ML Engineer' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 15 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Embedded Dev' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 24 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Bridge System Engineer' AND KhoangKN = 'Không yêu cầu';
UPDATE Stg_ThongTin Set LuongTB = 40 WHERE KhoangLuong = 'Thương lượng' AND CongViec = 'Technical Architect' AND KhoangKN = 'Không yêu cầu';

END