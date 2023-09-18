CREATE DEFINER=`dulieutu`@`%` PROCEDURE `dulieutu_IT`.`6.mappingHashtag`()
BEGIN
	
	DECLARE done INT DEFAULT FALSE;
    DECLARE hashtag_value VARCHAR(50);
    DECLARE cur CURSOR FOR SELECT HashtagName FROM Stg_Hashtag;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Create a temporary table to store the matched results
    DROP TABLE IF EXISTS Stg_HashtagChiTiet;
   
    CREATE TABLE Stg_HashtagChiTiet (
        ID VARCHAR(50),
        Hashtag VARCHAR(50)
    );

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO hashtag_value;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Insert the matched records into the temporary table
        INSERT INTO Stg_HashtagChiTiet (ID, Hashtag)
        SELECT ID, hashtag_value
        FROM Origin_Data
        WHERE lower(YeuCau) LIKE CONCAT('%', lower(hashtag_value), '%');
    END LOOP;

    CLOSE cur;
END