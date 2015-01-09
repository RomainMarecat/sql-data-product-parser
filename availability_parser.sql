DROP function if exists availability_parser;
DELIMITER $$
CREATE FUNCTION availability_parser (available_for_mail_order tinyint(1), available_in_my_shop tinyint(1)) RETURNS varchar(255)
BEGIN
DECLARE available_for_mail_order_result CHAR(255) ;
DECLARE available_in_my_shop_result CHAR(255) ;
DECLARE result LONGTEXT ;
set available_for_mail_order_result = "available_for_mail_order" ;
set available_in_my_shop_result = "available_in_my_shop" ;
set result = '';
IF available_for_mail_order = 0 AND available_in_my_shop = 1 THEN
	set result = '["available_in_my_shop"]';
	RETURN result;
ELSEIF available_for_mail_order = 1 AND available_in_my_shop = 0 THEN
	set result = '["available_for_mail_order"]';
	RETURN result;
ELSEIF available_for_mail_order = 1 AND available_in_my_shop = 1 THEN
	set result = '["available_for_mail_order"],["available_in_my_shop"]';
	RETURN result;
END IF;
RETURN result;
END$$
DELIMITER;