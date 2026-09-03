CREATE OR REFRESH STREAMING TABLE mythri_databricks.etl_demo.customers_bronze
AS
SELECT *
FROM STREAM read_files(
  "/Volumes/mythri_databricks/etl_demo/raw_files/",
  format => "csv",
  header => true
);