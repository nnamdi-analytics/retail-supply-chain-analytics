-- Step 4: Sales Analysis Queries
-- These queries analyze revenue performance using the sales_product_analysis view


-- Step 4.1: Revenue by Product Category

SELECT
    category,
    SUM(sale_price) AS total_revenue,
    COUNT(*) AS total_items_sold
FROM `nnamdi-hr-analytics-capstone.retail_analytics.sales_product_analysis`
GROUP BY category
ORDER BY total_revenue DESC;


-- Step 4.2: Revenue by Department

SELECT
    department,
    SUM(sale_price) AS total_revenue,
    COUNT(*) AS total_items_sold
FROM `nnamdi-hr-analytics-capstone.retail_analytics.sales_product_analysis`
GROUP BY department
ORDER BY total_revenue DESC;
