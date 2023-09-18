CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`5.mappingStg_Luong`()
BEGIN
	
	ALTER TABLE Stg_Luong
ADD Column IF NOT EXISTS LoaiTT varchar(20);

ALTER TABLE Stg_Luong
ADD Column IF NOT EXISTS MapGT varchar(100);

UPDATE Stg_Luong SET 
LoaiTT = CASE 
	When lower(Luong) Like '%ạnh%' or lower(Luong) Like '%hươn%' or lower(Luong) Like '%thu%' THEN 'Thương lượng'
	When lower(Luong) Like 'us%' or lower(Luong) Like '%us%' or lower(Luong) Like 'us%' THEN 'USD'
	When lower(Luong) Like '%tr %' or lower(Luong) Like '%triệ%' THEN 'triệu VND'
	When lower(Luong) Like 'vn%' or lower(Luong) Like '%vn%' or lower(Luong) Like 'vn%' THEN 'VND'
	When lower(Luong) Like 'id%' or lower(Luong) Like '%id%' or lower(Luong) Like 'id%' THEN 'IDR'
	ELSE 'Thương lượng'
	END;

UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,',','') WHERE LoaiTT = 'USD'; 
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,'.','') WHERE LoaiTT = 'USD';
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,',','') WHERE LoaiTT = 'USD';
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,'.','') WHERE LoaiTT = 'USD';

UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,',','') WHERE LoaiTT = 'IDR';
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,'.','') WHERE LoaiTT = 'IDR';
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,',','') WHERE LoaiTT = 'IDR';
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,'.','') WHERE LoaiTT = 'IDR';

UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,',','') WHERE LoaiTT = 'VND'; 
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,'.','') WHERE LoaiTT = 'VND';
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,',','') WHERE LoaiTT = 'VND';
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,'.','') WHERE LoaiTT = 'VND';
UPDATE Stg_Luong SET MapGT =  REPLACE(Luong,',','.') WHERE LoaiTT = 'triệu VND';

UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,',','') WHERE LoaiTT = 'USD'; 
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,'.','') WHERE LoaiTT = 'USD';
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,',','') WHERE LoaiTT = 'USD';
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,'.','') WHERE LoaiTT = 'USD';

UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,',','') WHERE LoaiTT = 'IDR';
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,'.','') WHERE LoaiTT = 'IDR';
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,',','') WHERE LoaiTT = 'IDR';
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,'.','') WHERE LoaiTT = 'IDR';

UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,',','') WHERE LoaiTT = 'VND'; 
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,'.','') WHERE LoaiTT = 'VND';
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,',','') WHERE LoaiTT = 'VND';
UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,'.','') WHERE LoaiTT = 'VND';

UPDATE Stg_Luong SET MapGT =  REPLACE(MapGT,',','.') WHERE LoaiTT = 'triệu VND';


UPDATE Stg_Luong SET MapGT = -1 WHERE LoaiTT = 'Thương lượng'; 

UPDATE Stg_Luong SET MapGT = REPLACE(lower(MapGT),'idr','');
UPDATE Stg_Luong SET MapGT = REPLACE(lower(MapGT),'usd','');

UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'trên ','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'lên đến ','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'triệu','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'vnd','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'vnđ','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'từ ','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'đến','-') WHERE Lower(Luong) Like 'từ%';
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'lên tới ','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'tới ','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'tr','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'đến','');
UPDATE Stg_Luong SET MapGT =  REPLACE(lower(MapGT),'dưới ','');


ALTER TABLE Stg_Luong
DROP COLUMN IF EXISTS MinLuong;

ALTER TABLE Stg_Luong
DROP COLUMN IF EXISTS MaxLuong;

ALTER TABLE Stg_Luong
DROP COLUMN IF EXISTS QuyDoiMinLuong;

ALTER TABLE Stg_Luong
DROP COLUMN IF EXISTS QuyDoiMaxLuong;

ALTER TABLE Stg_Luong
DROP COLUMN IF EXISTS LuongTB;
	
	ALTER TABLE Stg_Luong
ADD Column IF NOT EXISTS MinLuong Varchar(100);

ALTER TABLE Stg_Luong
ADD Column IF NOT EXISTS MaxLuong Varchar(100);

UPDATE Stg_Luong Set MinLuong = SUBSTRING_INDEX(MapGT, '-', 1);
UPDATE Stg_Luong Set MaxLuong = SUBSTRING_INDEX(MapGT, '-', -1);

DROP TABLE IF EXISTS Stg_LuongMap;

CREATE TABLE `Stg_LuongMap` (
  `Luong` varchar(100) DEFAULT NULL,
  `DonVi` varchar(20) DEFAULT NULL,
  `MinLuong` decimal(10,1) DEFAULT NULL,
  `MaxLuong` decimal(10,1) DEFAULT NULL,
  `QuyDoiMinLuong` decimal(10,1) DEFAULT NULL,
  `QuyDoiMaxLuong` decimal(10,1) DEFAULT NULL,
  `LuongTB` decimal(10,1) DEFAULT NULL,
  KhoangLuong varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO Stg_LuongMap(Luong, DonVi, MinLuong, MaxLuong) 
SELECT Luong, LoaiTT, 
		Cast(MinLuong AS decimal(10,1)),
		Cast(MaxLuong AS decimal(10,1))
FROM Stg_Luong;

UPDATE Stg_LuongMap
SET QuyDoiMinLuong  = CASE
	WHEN lower(DonVi) = 'triệu vnd' Then MinLuong * 1
	WHEN lower(DonVi) = 'usd' Then MinLuong * 0.0235
	WHEN lower(DonVi) = 'vnd' Then MinLuong / 1000000
	WHEN lower(DonVi) = 'idr' Then MinLuong * 1.57/1000000
	ELSE 0
	End;

UPDATE Stg_LuongMap
SET QuyDoiMaxLuong  = CASE
	WHEN lower(DonVi) = 'triệu vnd' Then MaxLuong * 1
	WHEN lower(DonVi) = 'usd' Then MaxLuong * 0.0235
	WHEN lower(DonVi) = 'vnd' Then MaxLuong / 1000000
	WHEN lower(DonVi) = 'idr' Then MaxLuong * 1.57/1000000
	ELSE 0
	End;

UPDATE Stg_LuongMap Set QuyDoiMinLuong = QuyDoiMaxLuong 
WHERE QuyDoiMinLuong = 0 and QuyDoiMaxLuong >=1; 
UPDATE Stg_LuongMap Set QuyDoiMinLuong = QuyDoiMaxLuong 
WHERE QuyDoiMinLuong = 0 and QuyDoiMaxLuong <1; 

UPDATE Stg_LuongMap Set LuongTB = (QuyDoiMinLuong + QuyDoiMaxLuong)/2;

UPDATE Stg_LuongMap  
SET     KhoangLuong =  CASE  
When LuongTB = 0  THEN 'Thương lượng'
When LuongTB > 0 AND LuongTB <=3  THEN 'Dưới 3 triệu'
When LuongTB > 3 AND LuongTB <=10  THEN '3 - 10 triệu'
When LuongTB > 10 AND LuongTB <=15  THEN '10 - 15 triệu'
When LuongTB > 15 AND LuongTB <=25  THEN '15 - 25 triệu'
When LuongTB > 25 AND LuongTB <=35  THEN '25 - 35 triệu'
When LuongTB > 35 AND LuongTB <=50  THEN '35 - 50 triệu'
When LuongTB > 50 THEN 'Trên 50 triệu'
ELSE 'Thương lượng'
END;

END