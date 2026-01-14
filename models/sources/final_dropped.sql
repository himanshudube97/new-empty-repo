--DBT AUTOMATION has generated this model, please DO NOT EDIT 
--Please make sure you dont change the model name 

{{ config(materialized='table', schema='intermediate') }}
WITH cte1 as (
SELECT "State_Name", "Dummy_Population"
FROM {{ ref('dropped_states') }}
)
-- Final SELECT statement combining the outputs of all CTEs
SELECT *
FROM cte1