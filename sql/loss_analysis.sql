-- Loss-making products
SELECT Product_Name,
  SUM(Profit) AS Total_Profit
FROM global_superstore
GROUP BY Product_Name
HAVING Total_Profit < 0
ORDER BY Total_Profit ASC;