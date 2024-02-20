{{ config(materialized='table') }}

with cust_detail as (
    SELECT *
    FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER c
    LEFT JOIN SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS o ON o.o_custkey = c.c_custkey
)

SELECT *
FROM cust_detail