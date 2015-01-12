DROP function if exists category_ids_parser;
DELIMITER $$
CREATE FUNCTION category_ids_parser (category_ids TEXT) RETURNS TEXT
BEGIN
DECLARE result_category_ids TEXT ;
set result_category_ids = category_ids;
set result_category_ids = REPLACE(result_category_ids, '["', "['" );
set result_category_ids = REPLACE(result_category_ids, '"]', "']" );
set result_category_ids = REPLACE(result_category_ids, '"', "'" );

RETURN result_category_ids;
END$$
DELIMITER;