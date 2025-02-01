
--Total sales over time
select STRFTIME('%Y-%m', "Transaction Date") AS Month, SUM("Total Spent") AS Total_Revenue
FROM cleaned_retail_store_sales
GROUP BY Month
ORDER BY Month



-- Average order value
SELECT AVG("Total Spent") AS Average_spent, "Transaction ID" AS transaction_id
FROM cleaned_retail_store_sales
GROUP BY transaction_id



-- Most popular product categories
SELECT Category, SUM(Quantity) AS total_quantity, SUM("Total Spent") AS total_revenue
FROM cleaned_retail_store_sales
GROUP BY Category
ORDER BY total_quantity DESC, total_revenue DESC



-- Best selling items
select Item, COUNT(*) AS count_item
from cleaned_retail_store_sales
group by Item
order by count_item DESC


-- Revenue distribution by payment method
SELECT "Payment Method" as Payment_Type, SUM("Total Spent") AS Total_Revenue
FROM cleaned_retail_store_sales
GROUP BY Payment_Type 
ORDER BY Total_Revenue DESC


