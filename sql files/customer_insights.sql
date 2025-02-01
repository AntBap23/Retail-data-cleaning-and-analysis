
-- Top Spending Customer
SELECT "Customer ID" AS Customer, SUM("Total Spent") AS Total_Spent
FROM cleaned_retail_store_sales
GROUP BY Customer 
ORDER BY Total_Spent DESC


-- Customer purchase frequency
SELECT "Customer ID" AS Customer, 
		STRFTIME('%Y-%m', "Transaction Date") AS purchase_month,
		COUNT("Transaction ID") AS purchase_count
FROM cleaned_retail_store_sales
GROUP BY Customer, purchase_month
ORDER BY Customer, purchase_month

-- churn analysis (3 months)
WITH last_purchase AS (
    SELECT 
        "Customer ID",
        MAX("Transaction Date") AS last_purchase_date
    FROM cleaned_retail_store_sales
    GROUP BY "Customer ID"
)
SELECT "Customer ID" AS Customer
FROM last_purchase
WHERE last_purchase_date < "2024-10"


-- average basket size per transaction 
SELECT 
    AVG(total_items) AS avg_basket_size_per_transaction
FROM (
    SELECT 
        "Transaction ID",
        SUM(Quantity) AS total_items
    FROM cleaned_retail_store_sales
    GROUP BY "Transaction ID"
);



