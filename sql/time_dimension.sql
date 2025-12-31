-- Extract year from order date
SELECT Order_Date,
  YEAR(Order_Date) AS Order_Year
FROM global_superstore;