DROP function if exists category_breadcrumbs;
DELIMITER $$
CREATE FUNCTION category_breadcrumbs(cat_id INT(11) UNSIGNED) RETURNS VARCHAR(255) 
BEGIN
DECLARE var_name VARCHAR(255);
DECLARE id INT(11);
IF cat_id IS NULL THEN 
  SET id = 1;
ELSE
  SET id = cat_id;
END IF;
SELECT      
  CONCAT( 
    if(t6.title is not null and t6.lvl>0, concat(t6.title, ' > '),''),  
    if(t5.title is not null and t5.lvl>0, concat(t5.title, ' > '),''),
    if(t4.title is not null and t4.lvl>0, concat(t4.title, ' > '),''),
    if(t3.title is not null and t3.lvl>0, concat(t3.title, ' > '),''),
    if(t2.title is not null and t2.lvl>0, concat(t2.title, ' > '),''),                
    if(cat.title is not null and cat.lvl>0, cat.title,''))                
    INTO var_name
 FROM category AS cat
LEFT JOIN category AS t2 ON t2.id = cat.parent_id
LEFT JOIN category AS t3 ON t3.id = t2.parent_id
LEFT JOIN category AS t4 ON t4.id = t3.parent_id
LEFT JOIN category AS t5 ON t5.id = t4.parent_id
LEFT JOIN category AS t6 ON t6.id = t5.parent_id
WHERE cat.id = id 
limit 1;
RETURN var_name;
END$$
DELIMITER;