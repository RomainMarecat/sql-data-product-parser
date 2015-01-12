DROP function if exists category_path_in_parser;
DELIMITER $$
CREATE FUNCTION category_path_in_parser (id INT(11), category_ids TEXT) RETURNS TEXT
BEGIN
DECLARE result_category_ids TEXT ;
set result_category_ids = category_ids;
set result_category_ids = REPLACE(result_category_ids, '["', "('" );
set result_category_ids = REPLACE(result_category_ids, '"]', "')" );
set result_category_ids = REPLACE(result_category_ids, '"', "'" );
IF result_category_ids != "" AND result_category_ids IS NOT NULL THEN
	set result_category_ids = result_category_ids;
ELSEIF id IS NOT NULL THEN 
	set result_category_ids = id;
	set result_category_ids = CONCAT(result_category_ids, '\')');
	set result_category_ids = CONCAT('(\'', result_category_ids);
ELSE 
	set result_category_ids = " NULL";
END IF;
RETURN result_category_ids;
END$$
DELIMITER;