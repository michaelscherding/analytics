{{ config(
    materialized='table'
) }}

select
    split(model, ' ')[OFFSET(0)] as mark,
    model,
    category,
    safe_cast(REGEXP_REPLACE(hp, '[^[:digit:]]', '') as numeric) as hp,
    lbs*0.453592 as kg,
    REGEXP_REPLACE(price, '[^[:digit:]]', '') as price
 from
     {{ ref('gran_turismo_gt7_stg') }}
order by
    mark