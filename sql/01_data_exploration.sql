-- SQL queries for data exploration
-- Step 2.1: View Available Tables

SELECT table_name
FROM `bigquery-public-data.thelook_ecommerce.INFORMATION_SCHEMA.TABLES`
ORDER BY table_name;


-- Step 2.2: Inspect order_items Table

SELECT *
FROM `bigquery-public-data.thelook_ecommerce.order_items`
LIMIT 10;


-- Step 2.3: Inspect products Table

SELECT *
FROM `bigquery-public-data.thelook_ecommerce.products`
LIMIT 10;
