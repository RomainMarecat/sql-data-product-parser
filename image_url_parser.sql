DROP function if exists image_url_parser;
DELIMITER $$
CREATE FUNCTION image_url_parser (gallery LONGTEXT) RETURNS varchar(255)
BEGIN
DECLARE result LONGTEXT ;
set result = "";
IF gallery IS NOT NULL THEN
set result = CONCAT("/uploads/", REPLACE(REPLACE(SUBSTRING_INDEX(SUBSTRING_INDEX(SUBSTRING_INDEX(gallery,':',3),":",-1), ",",1), "\"", ""), "\\/", "\/"));
END IF;
RETURN result;
END$$
DELIMITER;