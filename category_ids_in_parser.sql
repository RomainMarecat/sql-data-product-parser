DROP function if exists category_ids_in_parser;
DELIMITER $$
CREATE FUNCTION category_ids_in_parser (id INT(11), category_ids TEXT) RETURNS TEXT
BEGIN
DECLARE result_category_ids TEXT ;
DECLARE result_id TEXT ;
set result_category_ids = category_ids;
set result_category_ids = REPLACE(result_category_ids, '["', "('" );
set result_category_ids = REPLACE(result_category_ids, '"]', "')" );
set result_category_ids = REPLACE(result_category_ids, '"', "'" );
IF result_category_ids != "" AND result_category_ids IS NOT NULL THEN
	set result_category_ids = CONCAT("SELECT category.title as category_path FROM category AS category WHERE category.id IN", result_category_ids);
ELSEIF id IS NOT NULL THEN 
	set result_category_ids = CONCAT("SELECT category.title as category_path FROM category AS category WHERE category.id = ", id);
ELSE 
	set result_category_ids = CONCAT(" SELECT FALSE ");
END IF;
RETURN result_category_ids;
END$$
DELIMITER;