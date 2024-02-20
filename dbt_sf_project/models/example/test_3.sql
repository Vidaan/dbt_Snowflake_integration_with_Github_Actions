{{ config(materialized='table') }}

with part_detail as (
    SELECT *
    FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PART p
    LEFT JOIN SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PARTSUPP ps ON ps.ps_partkey = p.p_partkey
)

SELECT *
FROM part_detail