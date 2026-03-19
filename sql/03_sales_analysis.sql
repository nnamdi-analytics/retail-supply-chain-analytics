-- Step 4: Sales Analysis Queries


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


-- Step 4.3: Revenue Trend Over Time

SELECT
    DATE_TRUNC(DATE(created_at), MONTH) AS order_month,
    SUM(sale_price) AS total_revenue,
    COUNT(*) AS total_items_sold
FROM `nnamdi-hr-analytics-capstone.retail_analytics.sales_product_analysis`
GROUP BY order_month
ORDER BY order_month;

-- Step 4.4: Revenue Trend Over Time

SELECT
    EXTRACT(YEAR FROM created_at) AS year,
    EXTRACT(MONTH FROM created_at) AS month,
    SUM(sale_price) AS total_revenue,
    COUNT(*) AS total_items_sold
FROM `nnamdi-hr-analytics-capstone.retail_analytics.sales_product_analysis`
GROUP BY year, month
ORDER BY year, month;
