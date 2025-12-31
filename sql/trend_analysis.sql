SELECT Order_Year,
  SUM(Sales) AS Yearly_Sales
FROM global_superstore
GROUP BY Order_Year
ORDER BY Order_Year;