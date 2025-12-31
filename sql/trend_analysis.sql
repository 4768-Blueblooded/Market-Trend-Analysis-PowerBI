-- Year-wise sales and profit trend
SELECT YEAR(Order_Date) AS Order_Year,
  SUM(Sales) AS Yearly_Sales,
  SUM(Profit) AS Yearly_Profit
FROM global_superstore
GROUP BY YEAR(Order_Date)
ORDER BY Order_Year;
