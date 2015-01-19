DROP function if exists discount_rate_parser;
DELIMITER $$
CREATE FUNCTION discount_rate_parser (special_price decimal(9,2), price decimal(9,2)) RETURNS decimal(9,2)
BEGIN
DECLARE discount_rate decimal(9,2) ;
set discount_rate = 0;
IF special_price > 0 THEN
	set discount_rate = -(special_price / price) + 1;
	RETURN discount_rate;
ELSE 
	RETURN discount_rate;
END IF;
RETURN result;
END$$
DELIMITER;