--Impact of discounts on sales

SELECT "Discount Applied" AS Discount, SUM("Total Spent") AS Total_Spent, SUM(Quantity) AS Total_Quantity
FROM cleaned_retail_store_sales
GROUP BY Discount
ORDER BY Total_Spent DESC, Total_Quantity DESC


--Discount frequency per category

SELECT Category, "Discount Applied" AS Discount , COUNT(*) AS counts
FROM cleaned_retail_store_sales
WHERE Discount = "True"
GROUP BY Category, Discount 
ORDER BY counts DESC


-- Price elasticity 
SELECT Item, AVG("Price Per Unit") AS avg_price, SUM("Total Spent") AS total_revenue
FROM cleaned_retail_store_sales
GROUP BY Item
ORDER BY total_revenue DESC

