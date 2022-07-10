{{ config(
    materialized='view'
) }}

SELECT * FROM `sfeirtraining-sandbox.msc_sandbox.supermarket_sales` LIMIT 1000