	SELECT IF(n6.id is not null AND n6.lvl>0, CONCAT_WS(' > ', n6.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c1.id AND c1.id IS NOT NULL AND c1.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n6.id IS NOT NULL AND n6.lvl > 0
UNION ALL 
	SELECT IF(n5.id is not null AND n5.lvl>0, CONCAT_WS(' > ', n6.label , n5.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c1.id AND c1.id IS NOT NULL AND c1.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n5.id IS NOT NULL AND n5.lvl > 0
UNION ALL 
	SELECT IF(n4.id is not null AND n4.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c1.id AND c1.id IS NOT NULL AND c1.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n4.id IS NOT NULL AND n4.lvl > 0
UNION ALL 
	SELECT IF(n3.id is not null AND n3.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c1.id AND c1.id IS NOT NULL AND c1.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n3.id IS NOT NULL AND n3.lvl > 0
UNION ALL 
	SELECT IF(n2.id is not null AND n2.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c1.id AND c1.id IS NOT NULL AND c1.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n2.id IS NOT NULL AND n2.lvl > 0
UNION ALL 
	SELECT IF(n1.id is not null AND n1.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label, n1.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c1.id AND c1.id IS NOT NULL AND c1.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 
	AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL
	SELECT IF(n6.id is not null AND n6.lvl>0, CONCAT_WS(' > ', n6.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c2.id AND c2.id IS NOT NULL AND c2.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n6.id IS NOT NULL AND n6.lvl > 0
UNION ALL 
	SELECT IF(n5.id is not null AND n5.lvl>0, CONCAT_WS(' > ', n6.label , n5.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c2.id AND c2.id IS NOT NULL AND c2.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n5.id IS NOT NULL AND n5.lvl > 0
UNION ALL 
	SELECT IF(n4.id is not null AND n4.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c2.id AND c2.id IS NOT NULL AND c2.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n4.id IS NOT NULL AND n4.lvl > 0
UNION ALL 
	SELECT IF(n3.id is not null AND n3.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c2.id AND c2.id IS NOT NULL AND c2.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n3.id IS NOT NULL AND n3.lvl > 0
UNION ALL 
	SELECT IF(n2.id is not null AND n2.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c2.id AND c2.id IS NOT NULL AND c2.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n2.id IS NOT NULL AND n2.lvl > 0
UNION ALL 
	SELECT IF(n1.id is not null AND n1.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label, n1.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c2.id AND c2.id IS NOT NULL AND c2.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 
	AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL
	SELECT IF(n6.id is not null AND n6.lvl>0, n6.label, NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c3.id AND c3.id IS NOT NULL AND c3.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n6.id IS NOT NULL AND n6.lvl > 0
UNION ALL 
	SELECT IF(n5.id is not null AND n5.lvl>0, CONCAT_WS(' > ', n6.label , n5.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c3.id AND c3.id IS NOT NULL AND c3.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n5.id IS NOT NULL AND n5.lvl > 0
UNION ALL 
	SELECT IF(n4.id is not null AND n4.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c3.id AND c3.id IS NOT NULL AND c3.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n4.id IS NOT NULL AND n4.lvl > 0
UNION ALL 
	SELECT IF(n3.id is not null AND n3.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c3.id AND c3.id IS NOT NULL AND c3.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n3.id IS NOT NULL AND n3.lvl > 0
UNION ALL 
	SELECT IF(n2.id is not null AND n2.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c3.id AND c3.id IS NOT NULL AND c3.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n2.id IS NOT NULL AND n2.lvl > 0
UNION ALL 
	SELECT IF(n1.id is not null AND n1.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label, n1.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c3.id AND c3.id IS NOT NULL AND c3.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 
	AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL
	SELECT IF(n6.id is not null AND n6.lvl>0, CONCAT_WS(' > ', n6.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c4.id AND c4.id IS NOT NULL AND c4.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n6.id IS NOT NULL AND n6.lvl > 0
UNION ALL 
	SELECT IF(n5.id is not null AND n5.lvl>0, CONCAT_WS(' > ', n6.label , n5.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c4.id AND c4.id IS NOT NULL AND c4.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n5.id IS NOT NULL AND n5.lvl > 0
UNION ALL 
	SELECT IF(n4.id is not null AND n4.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c4.id AND c4.id IS NOT NULL AND c4.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n4.id IS NOT NULL AND n4.lvl > 0
UNION ALL 
	SELECT IF(n3.id is not null AND n3.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c4.id AND c4.id IS NOT NULL AND c4.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n3.id IS NOT NULL AND n3.lvl > 0
UNION ALL 
	SELECT IF(n2.id is not null AND n2.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c4.id AND c4.id IS NOT NULL AND c4.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n2.id IS NOT NULL AND n2.lvl > 0
UNION ALL 
	SELECT IF(n1.id is not null AND n1.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label, n1.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c4.id AND c4.id IS NOT NULL AND c4.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 
	AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL
	SELECT IF(n6.id is not null AND n6.lvl>0, CONCAT_WS(' > ', n6.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c5.id AND c5.id IS NOT NULL AND c5.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n6.id IS NOT NULL AND n6.lvl > 0
UNION ALL 
	SELECT IF(n5.id is not null AND n5.lvl>0, CONCAT_WS(' > ', n6.label , n5.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c5.id AND c5.id IS NOT NULL AND c5.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n5.id IS NOT NULL AND n5.lvl > 0
UNION ALL 
	SELECT IF(n4.id is not null AND n4.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c5.id AND c5.id IS NOT NULL AND c5.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n4.id IS NOT NULL AND n4.lvl > 0
UNION ALL 
	SELECT IF(n3.id is not null AND n3.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c5.id AND c5.id IS NOT NULL AND c5.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n3.id IS NOT NULL AND n3.lvl > 0
UNION ALL 
	SELECT IF(n2.id is not null AND n2.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c5.id AND c5.id IS NOT NULL AND c5.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n2.id IS NOT NULL AND n2.lvl > 0
UNION ALL 
	SELECT IF(n1.id is not null AND n1.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label, n1.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c5.id AND c5.id IS NOT NULL AND c5.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 
	AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL
	SELECT IF(n6.id is not null AND n6.lvl>0, CONCAT_WS(' > ', n6.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c6.id AND c6.id IS NOT NULL AND c6.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n6.id IS NOT NULL AND n6.lvl > 0
UNION ALL 
	SELECT IF(n5.id is not null AND n5.lvl>0, CONCAT_WS(' > ', n6.label , n5.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c6.id AND c6.id IS NOT NULL AND c6.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n5.id IS NOT NULL AND n5.lvl > 0
UNION ALL 
	SELECT IF(n4.id is not null AND n4.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c6.id AND c6.id IS NOT NULL AND c6.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n4.id IS NOT NULL AND n4.lvl > 0
UNION ALL 
	SELECT IF(n3.id is not null AND n3.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c6.id AND c6.id IS NOT NULL AND c6.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n3.id IS NOT NULL AND n3.lvl > 0
UNION ALL 
	SELECT IF(n2.id is not null AND n2.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c6.id AND c6.id IS NOT NULL AND c6.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 	
	AND n2.id IS NOT NULL AND n2.lvl > 0
UNION ALL 
	SELECT IF(n1.id is not null AND n1.lvl>0, CONCAT_WS(' > ', n6.label, n5.label, n4.label, n3.label, n2.label, n1.label), NULL) AS navigation_path
	FROM category AS c1 
	LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
	LEFT JOIN category AS c3 ON c3.id = c2.parent_id
	LEFT JOIN category AS c4 ON c4.id = c3.parent_id
	LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
	LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
	LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c6.id AND c6.id IS NOT NULL AND c6.lvl > 0
	LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
	LEFT JOIN navigation AS n2 ON n2.id = n1.parent_id AND n2.lvl > 0
	LEFT JOIN navigation AS n3 ON n3.id = n2.parent_id AND n3.lvl > 0
	LEFT JOIN navigation AS n4 ON n4.id = n3.parent_id AND n4.lvl > 0
	LEFT JOIN navigation AS n5 ON n5.id = n4.parent_id AND n5.lvl > 0
	LEFT JOIN navigation AS n6 ON n6.id = n5.parent_id AND n6.lvl > 0
	WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', 3252) 
	AND n1.id IS NOT NULL AND n1.lvl > 0