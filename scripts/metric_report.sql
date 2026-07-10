--Generate a Report that shows all key metriocs of the business:
--Find the total Sales
SELECT 'Total Sales' as measure_value, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL 
--Find how many items are sold
SELECT 'Total Quantity' as measure_value, SUM(quantity) AS measure_value FROM gold.fact_sales
UNION ALL 

--Find the average selling price
SELECT 'Average Price' as measure_value,AVG(price) AS measure_value FROM gold.fact_sales
UNION ALL 

--Find the total number of orders
SELECT 'Total Nr. Orders' as measure_value,COUNT(DISTINCT order_number) AS measure_value FROM gold.fact_sales
UNION ALL 

--Find the total number of products
SELECT 'Total Nr. Products' as measure_value,COUNT ( DISTINCT product_key) AS measure_value FROM gold.dim_products
UNION ALL 

--Find the total number of customers
SELECT 'Total Nr. Customers' as measure_value,COUNT (customer_key) AS measure_value FROM gold.dim_customers
UNION ALL 

--Find the total number of customers tht has placed an order
SELECT 'Total Nr. Active Customers' as measure_value,COUNT (DISTINCT customer_key) AS measure_value FROM gold.fact_sales
