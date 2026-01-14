--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT "_dbt_source_relation", "f_table_catalog", "f_table_schema", "f_table_name", "srid", "id", "name", "phone", "bone", "auth_name", "auth_srid", "srtext", "proj4text"
FROM {{ ref('frodo_baggins_one') }}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1