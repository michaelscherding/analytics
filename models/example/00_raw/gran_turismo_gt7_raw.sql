{{ config(
    materialized='table'
) }}


SELECT
    model,
    category,
    pp,
    transmission,
    coll,
    price,
    hp,
    lbs,
    kg_kw,
    img_url
FROM
    `sfeir-innovation.dbt_mscherding.gran_turismo_gt7`