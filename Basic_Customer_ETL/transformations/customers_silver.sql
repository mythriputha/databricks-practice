CREATE OR REFRESH STREAMING TABLE mythri_databricks.etl_demo.customers_silver
AS
SELECT DISTINCT *
FROM STREAM(mythri_databricks.etl_demo.customers_bronze);