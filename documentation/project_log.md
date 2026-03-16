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
