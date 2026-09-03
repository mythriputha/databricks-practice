from pyspark import pipelines as dp

@dp.table(name="customers_json_bronze")
def customers_json_bronze():
    return (
        spark.read
        .format("json")
        .option("multiLine", "true")
        .load("abfss://different-data@mythriazurelearning.dfs.core.windows.net/customers.json")
    )