-- Core KPI calculations
SELECT SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit,
  COUNT(DISTINCT Order_ID) AS Total_Orders,
  (SUM(Profit) / SUM(Sales)) * 100 AS Profit_Margin_Percent
FROM global_superstore;
