DROP function if exists stock_parser;
DELIMITER $$
CREATE FUNCTION stock_parser (stock int(11)) RETURNS varchar(255)
BEGIN
DECLARE instock CHAR(255) ;
DECLARE outstock CHAR(255) ;
set outstock = "out.stock" ;
set instock = "in.stock" ;
IF stock > 0 THEN
	RETURN instock;
ELSE
	RETURN outstock;
END IF;
END$$
DELIMITER;