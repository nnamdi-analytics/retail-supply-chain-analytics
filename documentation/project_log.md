# Project Log

This document tracks the step-by-step progress of the Retail Supply Chain Analytics project.

Each step will include:
- What we did
- Why we did it
- What we found
- Business meaning
## Step 2.1 — Dataset Overview

### What we did
Explored the available tables in the BigQuery public dataset `thelook_ecommerce`.

### Why we did it
To identify the tables relevant for retail sales and inventory analysis.

### Tables in the dataset
- distribution_centers
- events
- inventory_items
- order_items
- orders
- products
- thelook_ecommerce-table
- users

### What we found
The dataset contains tables related to sales transactions, product information, customer activity, and distribution operations.

However, not all tables are necessary for this analysis.

### Tables selected for analysis
The following tables were identified as most relevant for this project:

- order_items
- orders
- products
- inventory_items
- distribution_centers

These tables contain information about sales transactions, products, inventory levels, and distribution operations.

### Business Meaning
These tables allow us to analyze product demand, revenue performance, and inventory availability across distribution centers.

## Step 2.2 — Understanding the Order Items Table

### What we did
Explored the structure of the `order_items` table to understand the columns and key identifiers used in the dataset.

### Why we did it
The `order_items` table contains the transactional sales data needed to analyze product demand and revenue performance.

### What we found
The table includes identifiers that connect sales transactions to other important tables in the dataset.

Key columns include:

- `order_id` → connects to the orders table
- `user_id` → connects to the users table
- `product_id` → connects to the products table
- `inventory_item_id` → connects to the inventory_items table
- `sale_price` → price of the product sold

### Business Meaning
This table represents the actual sales transactions and will serve as the central table for analyzing revenue, product demand, and sales performance.

## Step 2.3 — Understanding the Products Table

### What we did
Explored the structure of the `products` table to understand the available product attributes.

### Why we did it
The products table provides detailed information about each product sold, including category, brand, and pricing information.

### What we found
The table contains product metadata including:

- product ID
- product name
- category
- department
- brand
- retail price
- cost
- distribution center

The column `id` acts as the unique identifier for products.

This column connects to `product_id` in the `order_items` table.

### Business Meaning
This table allows us to analyze sales performance by product, category, brand, and department. It will be essential for understanding which products drive the most revenue.

## Step 2.4 — Identifying Top Revenue Products

### What we did
Joined the `order_items` table with the `products` table to analyze product sales and calculate revenue by product.

### Why we did it
To identify which products generate the highest revenue for the business.

### SQL Query Used
```sql
SELECT
    p.name AS product_name,
    p.category,
    COUNT(*) AS total_items_sold,
    SUM(oi.sale_price) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
ON oi.product_id = p.id
GROUP BY product_name, category
ORDER BY total_revenue DESC
LIMIT 10;

What we found

The products generating the highest revenue include:

The North Face Apex Bionic Soft Shell Jacket – Men's

Nike Jordan Retro 11 Bred Bootie Socks

Canada Goose Women Expedition Parka

True Religion Men's Straight Jeans

## Step 3 — Creating a Clean Sales Analysis View

### What we did
Created a reusable analytical view combining order_items and products tables.

### Why we did it
To create a clean dataset containing product sales information that can be reused for analysis and dashboards.

### What we found
The view combines product attributes with sales transaction data.

### Business Meaning
This view simplifies future analysis by providing a clean dataset of completed sales transactions with product information.
Mountain Hardwear Men's Nilas Down Jacket

Business Meaning

High-priced outerwear and premium apparel appear to drive a large portion of revenue. Retail managers may want to prioritize inventory availability for these products to avoid potential stockouts.
