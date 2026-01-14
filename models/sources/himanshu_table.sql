--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT "f_geometry_column", "srid", "f_table_catalog", "coord_dimension", "f_geography_column", "type"
FROM {{ ref('thrundil_one') }}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1