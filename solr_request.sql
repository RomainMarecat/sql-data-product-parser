
        -- <entity name="category1" dataSource="db" pk="id" query="">
        --     <field column="category_path" name="category_path"/>         
        -- </entity>

SELECT category_breadcrumbs('${product.product_category_id}') AS category_path UNION ALL 
            SELECT 'pipo' 