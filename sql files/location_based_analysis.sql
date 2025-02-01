
-- Online vs In-Store
SELECT Location, SUM("Total Spent") AS Total_Revenue
FROM cleaned_retail_store_sales
GROUP BY location 
ORDER BY Total_Revenue DESC


-- Most popular product per Location
SELECT Item, location, COUNT(*) AS item_count
FROM cleaned_retail_store_sales
GROUP by Item
ORDER BY item_count DESC


-- Location-based customer behavior
SELECT 
    Location, 
    COUNT(DISTINCT "Transaction ID") AS total_transactions, 
    SUM("Total Spent") AS total_revenue, 
    SUM("Total Spent") / COUNT(DISTINCT "Transaction ID") AS avg_order_value
FROM cleaned_retail_store_sales
GROUP BY Location
ORDER BY avg_order_value DESC;
