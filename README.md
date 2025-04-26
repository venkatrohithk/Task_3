# Task 3: SQL for Data Analysis

## 📑 Project Overview

This project demonstrates SQL data analysis operations on an E-commerce database.  
The aim is to practice and apply SQL techniques like `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `JOINS`, `SUBQUERIES`, `AGGREGATE FUNCTIONS`, `VIEWS`, and `INDEXES` to extract insights and optimize database performance.

---

## 🛠️ Technologies Used

- **Database:** MySQL
- **Tools:** MySQL CLI / MySQL Workbench
- **Dataset:**  
  - `list_of_orders`
  - `order_details`
  - `sale_target`

---

## 🗂️ Steps Performed

1. **Database and Table Creation**
   - Created database `ecommerce`.
   - Used tables: `list_of_orders`, `order_details`, `sale_target`.

2. **Basic Queries**
   - Displayed all records from `list_of_orders`.
   - Filtered customers based on state (example: "Andhra Pradesh").
   - Ordered records based on `Amount` (ascending and descending).

3. **Aggregate Analysis**
   - Calculated total sales per state using `SUM()` and `GROUP BY`.
   - Ordered states by highest total sales.

4. **JOINS**
   - `INNER JOIN`: Linked customers and order details.
   - `LEFT JOIN`: Linked order details and sales target.

5. **Subqueries**
   - Identified customers whose total purchase value exceeds 10,000.

6. **Aggregate Functions**
   - Computed total revenue (`SUM` of sales).
   - Found average product amount (`AVG`).

7. **Views**
   - Created `customer_sales_summary` view to summarize spending per customer.

8. **Indexes**
   - Created indexes to optimize query performance:
     - `idx_Order_id` on `order_details`
     - `idx_customer_Name` on `list_of_orders`
   - Verified indexes using `SHOW INDEX`.

---
