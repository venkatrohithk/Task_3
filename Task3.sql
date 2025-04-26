use ecommerce;

select * from list_of_orders;

select * from list_of_orders where state = "Andhra Pradesh";

select * from order_details order by Amount;

select * from order_details order by Amount desc;

SELECT State, SUM(Amount * Quantity) AS Total_Sales FROM list_of_orders
JOIN order_details ON list_of_orders.Order_ID = order_details.Order_ID
GROUP BY State ORDER BY Total_Sales DESC;

SELECT lo.Order_ID, lo.CustomerName, od.Category, od.Quantity, od.Amount
FROM list_of_orders lo
INNER JOIN order_details od ON lo.Order_ID = od.Order_ID;

SELECT od.Category, st.Target
FROM order_details od
LEFT JOIN sale_target st ON od.Category = st.Category;

SELECT od.Category, st.Target
FROM order_details od
Right JOIN sale_target st ON od.Category = st.Category;

SELECT CustomerName,Total_Amount
FROM (
    SELECT lo.CustomerName, SUM(od.Amount * od.Quantity) AS Total_Amount
    FROM list_of_orders lo
    JOIN order_details od ON lo.Order_ID = od.Order_ID
    GROUP BY lo.CustomerName
) AS customer_sales
WHERE Total_Amount > 10000;

SELECT SUM(Amount * Quantity) AS Total_Revenue
FROM order_details;

SELECT AVG(Amount) AS Average_Price
FROM order_details;

CREATE VIEW customer_sales_summary AS
SELECT lo.CustomerName, SUM(od.Amount * od.Quantity) AS Total_Spent
FROM list_of_orcustomer_sales_summaryders lo
JOIN order_details od ON lo.Order_ID = od.Order_ID
GROUP BY lo.CustomerName;

CREATE INDEX idx_Order_id ON order_details(Order_id(50));
SHOW INDEX FROM order_details;

CREATE INDEX idx_customer_Name ON list_of_orders(CustomerName(50));