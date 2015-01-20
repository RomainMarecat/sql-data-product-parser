DROP function if exists available_in_my_shop_parser;
DELIMITER $$
CREATE FUNCTION available_in_my_shop_parser (available_in_my_shop tinyint(1)) RETURNS varchar(255)
BEGIN
DECLARE result LONGTEXT ;
set result = NULL;
IF available_in_my_shop = 1 THEN
	set result = 'product.inmyshop.available';
	RETURN result;
END IF;
RETURN result;
END$$
DELIMITER;