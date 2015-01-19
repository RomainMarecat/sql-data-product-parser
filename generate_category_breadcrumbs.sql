DROP function if exists generate_category_breadcrumbs;
DELIMITER $$
CREATE FUNCTION generate_category_breadcrumbs (category_ids TEXT) RETURNS VARCHAR(255)
BEGIN
	DECLARE result_category_path VARCHAR(255);
	DECLARE category_id INT(11);
	DECLARE str TEXT;
	DECLARE ind INT(11);
	DECLARE sep VARCHAR(2);
	DECLARE var_name VARCHAR(255);
	DECLARE id INT(11);

	set ind = 0;
	set result_category_path = '';
	set sep = ',';
	set str = category_ids;
	set str = REPLACE(str, '["', '' );
	set str = REPLACE(str, '"]', '' );
	set str = REPLACE(str, '"', '' );
	REPEAT
		set category_id = SUBSTRING_INDEX(str, ',', ind);
		IF cat_id IS NULL THEN 
		  SET id = 1;
		ELSE
		  SET id = category_id;
		END IF;
		SELECT      
		  CONCAT( 
		    if(t6.title is not null and t6.lvl>0, CONCAT(t6.title, ' > '),''),  
		    if(t5.title is not null and t5.lvl>0, CONCAT(t5.title, ' > '),''),
		    if(t4.title is not null and t4.lvl>0, CONCAT(t4.title, ' > '),''),
		    if(t3.title is not null and t3.lvl>0, CONCAT(t3.title, ' > '),''),
		    if(t2.title is not null and t2.lvl>0, CONCAT(t2.title, ' > '),''),                
		    if(cat.title is not null and cat.lvl>0, cat.title,''))                
		    INTO var_name
		 FROM category AS cat
		LEFT JOIN category AS t2 ON t2.id = cat.parent_id
		LEFT JOIN category AS t3 ON t3.id = t2.parent_id
		LEFT JOIN category AS t4 ON t4.id = t3.parent_id
		LEFT JOIN category AS t5 ON t5.id = t4.parent_id
		LEFT JOIN category AS t6 ON t6.id = t5.parent_id
		WHERE cat.id = id limit 1;
		set result_category_path = CONCAT(result_category_path, var_name);
		set ind = ind +1;

    UNTIL ind  > 5
	END REPEAT;	
	RETURN result_category_path;
END$$
DELIMITER;