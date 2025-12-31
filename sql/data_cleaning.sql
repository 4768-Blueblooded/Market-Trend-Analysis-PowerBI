-- Data quality checks
SELECT COUNT(*) AS total_rows,
  SUM(
    CASE
      WHEN Sales IS NULL THEN 1
      ELSE 0
    END
  ) AS null_sales,
  SUM(
    CASE
      WHEN Profit IS NULL THEN 1
      ELSE 0
    END
  ) AS null_profit
FROM global_superstore;
-- Remove invalid records
DELETE FROM global_superstore
WHERE Sales <= 0;