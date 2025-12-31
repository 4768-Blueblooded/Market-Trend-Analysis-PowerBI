-- Top 10 products by sales
SELECT Product_Name,
  SUM(Sales) AS Total_Sales
FROM global_superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;