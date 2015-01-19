SELECT IF(n1.id is not null AND n1.lvl>0, n1.label, NULL) AS navigation
    FROM category AS c1 
    LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
    LEFT JOIN category AS c3 ON c3.id = c2.parent_id
    LEFT JOIN category AS c4 ON c4.id = c3.parent_id
    LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
    LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
    LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c1.id AND c1.id IS NOT NULL AND c1.lvl > 0
    LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
    WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL)  
    AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL 
    SELECT IF(n1.id is not null AND n1.lvl>0, n1.label, NULL) AS navigation
    FROM category AS c1 
    LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
    LEFT JOIN category AS c3 ON c3.id = c2.parent_id
    LEFT JOIN category AS c4 ON c4.id = c3.parent_id
    LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
    LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
    LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c2.id AND c2.id IS NOT NULL AND c2.lvl > 0
    LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
    WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL)  
    AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL 
    SELECT IF(n1.id is not null AND n1.lvl>0, n1.label, NULL) AS navigation
    FROM category AS c1 
    LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
    LEFT JOIN category AS c3 ON c3.id = c2.parent_id
    LEFT JOIN category AS c4 ON c4.id = c3.parent_id
    LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
    LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
    LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c3.id AND c3.id IS NOT NULL AND c3.lvl > 0
    LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
    WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL)  
    AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL 
    SELECT IF(n1.id is not null AND n1.lvl>0, n1.label, NULL) AS navigation
    FROM category AS c1 
    LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
    LEFT JOIN category AS c3 ON c3.id = c2.parent_id
    LEFT JOIN category AS c4 ON c4.id = c3.parent_id
    LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
    LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
    LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c4.id AND c4.id IS NOT NULL AND c4.lvl > 0
    LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
    WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL)  
    AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL 
    SELECT IF(n1.id is not null AND n1.lvl>0, n1.label, NULL) AS navigation
    FROM category AS c1 
    LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
    LEFT JOIN category AS c3 ON c3.id = c2.parent_id
    LEFT JOIN category AS c4 ON c4.id = c3.parent_id
    LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
    LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
    LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c5.id AND c5.id IS NOT NULL AND c5.lvl > 0
    LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
    WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL)  
    AND n1.id IS NOT NULL AND n1.lvl > 0
UNION ALL 
    SELECT IF(n1.id is not null AND n1.lvl>0, n1.label, NULL) AS navigation
    FROM category AS c1 
    LEFT JOIN category AS c2 ON c2.id = c1.parent_id 
    LEFT JOIN category AS c3 ON c3.id = c2.parent_id
    LEFT JOIN category AS c4 ON c4.id = c3.parent_id
    LEFT JOIN category AS c5 ON c5.id = c4.parent_id    
    LEFT JOIN category AS c6 ON c6.id = c5.parent_id 
    LEFT JOIN navigations_categories AS nc1 ON nc1.category_id = c6.id AND c6.id IS NOT NULL AND c6.lvl > 0
    LEFT JOIN navigation AS n1 ON n1.id = nc1.navigation_id AND n1.lvl > 0
    WHERE c1.id = IF('${product.product_category_id}', '${product.product_category_id}', NULL)  
    AND n1.id IS NOT NULL AND n1.lvl > 0