--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
{{ dbt_utils.union_relations(relations=[source('public', 'geometry_columns'),source('public', 'table1'),source('public', 'spatial_ref_sys')] , include=['srid','coord_dimension','id','auth_srid','srtext','f_table_schema','phone','bone','f_geometry_column','name','type','f_table_catalog','f_table_name','proj4text','auth_name'])}})
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1