-- Category-wise market share
SELECT Category,
  SUM(Sales) AS Category_Sales,
  (
    SUM(Sales) / (
      SELECT SUM(Sales)
      FROM global_superstore
    )
  ) * 100 AS Market_Share_Percent
FROM global_superstore
GROUP BY Category
ORDER BY Category_Sales DESC;