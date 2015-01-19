DROP function if exists available_for_mail_order_parser;
DELIMITER $$
CREATE FUNCTION available_for_mail_order_parser (available_for_mail_order tinyint(1)) RETURNS varchar(255)
BEGIN
DECLARE result LONGTEXT ;
set result = '';
IF available_for_mail_order = 1 THEN
	set result = 'product.mailorder.available';
	RETURN result;
END IF;
RETURN result;
END$$
DELIMITER;