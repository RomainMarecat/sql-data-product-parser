SELECT IF(t6.id is not null AND t6.lvl>0, CONCAT_WS(' > ', t6.title), '') AS category_path
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id AND t2.lvl >0 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id AND t3.lvl >0 
LEFT JOIN category AS t4 ON t4.id = t3.parent_id AND t4.lvl >0 
LEFT JOIN category AS t5 ON t5.id = t4.parent_id AND t5.lvl >0 
LEFT JOIN category AS t6 ON t6.id = t5.parent_id AND t6.lvl >0 
WHERE cat.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL) AND t6.id IS NOT NULL AND t6.lvl > 0
UNION ALL
SELECT IF(t5.id is not null AND t5.lvl>0, CONCAT_WS(' > ', t6.title, t5.title) , '') AS category_path          
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id AND t2.lvl >0 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id AND t3.lvl >0 
LEFT JOIN category AS t4 ON t4.id = t3.parent_id AND t4.lvl >0 
LEFT JOIN category AS t5 ON t5.id = t4.parent_id AND t5.lvl >0 
LEFT JOIN category AS t6 ON t6.id = t5.parent_id AND t6.lvl >0 
WHERE cat.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL) AND t5.id IS NOT NULL AND t5.lvl > 0
UNION ALL
SELECT IF(t4.id is not null AND t4.lvl>0, CONCAT_WS(' > ', t6.title, t5.title, t4.title), '') AS category_path
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id AND t2.lvl >0 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id AND t3.lvl >0 
LEFT JOIN category AS t4 ON t4.id = t3.parent_id AND t4.lvl >0 
LEFT JOIN category AS t5 ON t5.id = t4.parent_id AND t5.lvl >0 
LEFT JOIN category AS t6 ON t6.id = t5.parent_id AND t6.lvl >0 
WHERE cat.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL) AND t4.id IS NOT NULL AND t4.lvl > 0
UNION ALL 
SELECT IF(t3.id is not null AND t3.lvl>0, CONCAT_WS(' > ', t6.title, t5.title, t4.title, t3.title), '') AS category_path
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id AND t2.lvl >0 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id AND t3.lvl >0 
LEFT JOIN category AS t4 ON t4.id = t3.parent_id AND t4.lvl >0 
LEFT JOIN category AS t5 ON t5.id = t4.parent_id AND t5.lvl >0 
LEFT JOIN category AS t6 ON t6.id = t5.parent_id AND t6.lvl >0 
WHERE cat.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL) AND t3.id IS NOT NULL AND t3.lvl > 0
UNION ALL
SELECT IF(t2.id is not null AND t2.lvl>0, CONCAT_WS(' > ', t6.title, t5.title, t4.title, t3.title, t2.title), '') AS category_path
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id AND t2.lvl >0 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id AND t3.lvl >0 
LEFT JOIN category AS t4 ON t4.id = t3.parent_id AND t4.lvl >0 
LEFT JOIN category AS t5 ON t5.id = t4.parent_id AND t5.lvl >0 
LEFT JOIN category AS t6 ON t6.id = t5.parent_id AND t6.lvl >0 
WHERE cat.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL) AND t2.id IS NOT NULL AND t2.lvl > 0
UNION ALL
SELECT IF(cat.id is not null AND cat.lvl>0, CONCAT_WS(' > ', t6.title,  t5.title,  t4.title,  t3.title,  t2.title,  cat.title),'') AS category_path
FROM category AS cat 
LEFT JOIN category AS t2 ON t2.id = cat.parent_id AND t2.lvl >0 
LEFT JOIN category AS t3 ON t3.id = t2.parent_id AND t3.lvl >0 
LEFT JOIN category AS t4 ON t4.id = t3.parent_id AND t4.lvl >0 
LEFT JOIN category AS t5 ON t5.id = t4.parent_id AND t5.lvl >0 
LEFT JOIN category AS t6 ON t6.id = t5.parent_id AND t6.lvl >0 
WHERE cat.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL) AND cat.id IS NOT NULL AND cat.lvl > 0