--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
{{ dbt_utils.union_relations(relations=[ref('brother_final'),source('intermediate', 'merged')] , include=['spoc','srid','coord_dimension','f_geography_column','ngo','_airbyte_emitted_at','quarter','measure','indicator','f_geometry_column','month','type','f_table_catalog','f_table_name'])}})
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1