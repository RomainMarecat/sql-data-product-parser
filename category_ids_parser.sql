DROP function IF exists category_ids_parser;
DELIMITER $$
CREATE FUNCTION category_ids_parser (id TEXT) RETURNS TEXT
BEGIN
DECLARE result_category_ids TEXT;
RETURN (SELECT DISTINCT category_ids FROM (
SELECT IF(t6.id is not null AND t6.lvl>0, t6.id, "") AS category_ids
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id
LEFT JOIN category AS t4 ON t4.id = t3.parent_id
LEFT JOIN category AS t5 ON t5.id = t4.parent_id	
LEFT JOIN category AS t6 ON t6.id = t5.parent_id WHERE cat.id = 425 
UNION ALL
SELECT IF(t5.id is not null AND t5.lvl>0, t5.id , "") AS category_ids          
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id
LEFT JOIN category AS t4 ON t4.id = t3.parent_id
LEFT JOIN category AS t5 ON t5.id = t4.parent_id	
LEFT JOIN category AS t6 ON t6.id = t5.parent_id WHERE cat.id = id
UNION ALL
SELECT IF(t4.id is not null AND t4.lvl>0, t4.id, "") AS category_ids
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id
LEFT JOIN category AS t4 ON t4.id = t3.parent_id
LEFT JOIN category AS t5 ON t5.id = t4.parent_id	
LEFT JOIN category AS t6 ON t6.id = t5.parent_id WHERE cat.id = id
UNION ALL 
SELECT IF(t3.id is not null AND t3.lvl>0, t3.id, "") AS category_ids
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id
LEFT JOIN category AS t4 ON t4.id = t3.parent_id
LEFT JOIN category AS t5 ON t5.id = t4.parent_id	
LEFT JOIN category AS t6 ON t6.id = t5.parent_id WHERE cat.id = id
UNION ALL
SELECT IF(t2.id is not null AND t2.lvl>0, t2.id,"") AS category_ids
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id
LEFT JOIN category AS t4 ON t4.id = t3.parent_id
LEFT JOIN category AS t5 ON t5.id = t4.parent_id	
LEFT JOIN category AS t6 ON t6.id = t5.parent_id WHERE cat.id = id
UNION ALL
SELECT IF(cat.id is not null AND cat.lvl>0, cat.id,"") AS category_ids
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id
LEFT JOIN category AS t4 ON t4.id = t3.parent_id
LEFT JOIN category AS t5 ON t5.id = t4.parent_id	
LEFT JOIN category AS t6 ON t6.id = t5.parent_id WHERE cat.id = id
) AS results 
WHERE results.category_ids <> "");
END$$
DELIMITER;


