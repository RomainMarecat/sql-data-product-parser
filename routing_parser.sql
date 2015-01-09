DROP function if exists routing_parser;
DELIMITER $$
CREATE FUNCTION routing_parser (slug CHAR(255)) RETURNS varchar(255)
BEGIN
DECLARE result CHAR(255) ;
set result = '{\"route\":\"product_show\",\"params\":{\"slug\":\"' + slug + '\"}}';
RETURN result;
END$$
DELIMITER;