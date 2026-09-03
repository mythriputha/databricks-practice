CREATE OR REFRESH MATERIALIZED VIEW mythri_databricks.etl_demo.customers_gold
AS
SELECT
    city,
    SUM(amount) AS total_amount
FROM mythri_databricks.etl_demo.customers_silver
GROUP BY city;