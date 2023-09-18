CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`4.mappingStg_KN`()
BEGIN

ALTER TABLE Stg_KinhNghiem 
ADD COLUMN IF NOT EXISTS K1 VARCHAR(100);

ALTER TABLE Stg_KinhNghiem 
ADD COLUMN IF NOT EXISTS K2 VARCHAR(100);

ALTER TABLE Stg_KinhNghiem 
ADD COLUMN IF NOT EXISTS K3 VARCHAR(100);

ALTER TABLE Stg_KinhNghiem 
ADD COLUMN IF NOT EXISTS K4 VARCHAR(100);

ALTER TABLE Stg_KinhNghiem 
ADD COLUMN IF NOT EXISTS K5 VARCHAR(100);

ALTER TABLE Stg_KinhNghiem 
ADD COLUMN IF NOT EXISTS K6 VARCHAR(100);

ALTER TABLE Stg_KinhNghiem 
ADD COLUMN IF NOT EXISTS K7 VARCHAR(100);
	
UPDATE Stg_KinhNghiem SET K1 = SUBSTRING_INDEX(lower(KinhNghiem), 'năm', 1);
UPDATE Stg_KinhNghiem SET K2 = SUBSTRING_INDEX(SUBSTRING_INDEX(lower(KinhNghiem), 'năm', 1), 'trên ', -1);
UPDATE Stg_KinhNghiem SET K3 = SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(lower(KinhNghiem), 'trên ', -1), 'năm', 1), 'dưới ', -1);
UPDATE Stg_KinhNghiem SET K4 = SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX
							(lower(KinhNghiem), 'trên ', -1), 'năm', 1), 'dưới ', -1), 'hơn ', -1);
UPDATE Stg_KinhNghiem SET K5 = SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX
(lower(KinhNghiem), 'trên ', -1), 'năm', 1), 'dưới ', -1), 'hơn ', -1), 'lên đến ', -1);
UPDATE Stg_KinhNghiem SET K6 = SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX
(lower(KinhNghiem), 'trên ', -1), 'năm', 1), 'dưới ', -1), 'hơn ', -1), 'lên đến ', -1), 'từ ', -1);
UPDATE Stg_KinhNghiem SET K7 = SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX
(lower(KinhNghiem), 'trên ', -1), 'năm', 1), 'dưới ', -1), 'hơn ', -1), 'lên đến ', -1), 'từ ', -1);

UPDATE Stg_KinhNghiem  SET K7 =  1 Where lower(KinhNghiem) Like '%tháng%';
UPDATE Stg_KinhNghiem  SET K7 =  0 Where lower(KinhNghiem) Like '%chưa%';
UPDATE Stg_KinhNghiem  SET K7 =  0 Where lower(KinhNghiem) Like '%không%';
UPDATE Stg_KinhNghiem  SET K7 =  3 Where lower(KinhNghiem) Like '%tất cả%';

UPDATE Stg_KinhNghiem  SET K7 =  REPLACE(K7, 'đến', '-');
UPDATE Stg_KinhNghiem  SET K7 =  REPLACE(K7, '- ', '-');
UPDATE Stg_KinhNghiem  SET K7 =  REPLACE(K7, ' -', '-');

UPDATE Stg_KinhNghiem  SET KinhNghiem =  REPLACE(KinhNghiem, ',', '.');

ALTER TABLE Stg_KinhNghiem
ADD COLUMN IF NOT EXISTS MinKN int;

ALTER TABLE Stg_KinhNghiem
ADD COLUMN IF NOT EXISTS MaxKN int;

ALTER TABLE Stg_KinhNghiem
ADD COLUMN IF NOT EXISTS TBKN decimal(10,1);

ALTER TABLE Stg_KinhNghiem
ADD COLUMN IF NOT EXISTS KhoangKN varchar(100);

UPDATE Stg_KinhNghiem Set MinKN = CAST( SUBSTRING_INDEX(lower(K7), '-', 1) AS int );
UPDATE Stg_KinhNghiem Set MaxKN = CAST( SUBSTRING_INDEX(lower(K7), '-', -1) AS int );
UPDATE Stg_KinhNghiem Set TBKN = (SUBSTRING_INDEX(lower(K7), '-', 1) + SUBSTRING_INDEX(lower(K7), '-', -1))/2;

UPDATE Stg_KinhNghiem  
SET     KhoangKN =  CASE  
When TBKN = 0  THEN 'Không yêu cầu'
When TBKN <=1  THEN 'Dưới 1 năm'
When TBKN > 1  AND TBKN <=3  THEN '1 - 3 năm'
When TBKN > 3  AND TBKN <=5  THEN '3 - 5 năm'
When TBKN > 5  THEN 'Trên 5 năm'
ELSE TBKN
END;

END