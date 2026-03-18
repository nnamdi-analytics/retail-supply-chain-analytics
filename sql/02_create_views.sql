-- Step 3: Create Sales Product Analysis View

-- This view combines order_items and products tables
-- to create a clean dataset for sales analysis

CREATE OR REPLACE VIEW
`nnamdi-hr-analytics-capstone.retail_analytics.sales_product_analysis` AS
SELECT
    oi.order_id,
    oi.product_id,
    p.name AS product_name,
    p.category,
    p.brand,
    p.department,
    oi.sale_price,
    oi.created_at
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
ON oi.product_id = p.id
WHERE oi.status = 'Complete';
