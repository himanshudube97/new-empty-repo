--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT "f_geometry_column", "srid", "f_table_catalog", "_airbyte_emitted_at", "coord_dimension", "f_geography_column", "f_table_name", "type"
FROM {{ source('production', 'gelina') }}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1