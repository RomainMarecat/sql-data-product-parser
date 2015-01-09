DROP function if exists category_parser;
DELIMITER $$
CREATE FUNCTION category_parser (lvl INT(11), title CHAR(255)) RETURNS LONGTEXT
BEGIN
DECLARE result LONGTEXT ;
set result = array_create(result, 255);
IF lvl = 1 THEN
	set result = array_push(result, title);
	RETURN result;
END IF;
RETURN result;
END$$
DELIMITER;