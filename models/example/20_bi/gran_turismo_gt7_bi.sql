{{ config(
    materialized='table'
) }}

select
    mark,
    model,
    category,
    safe_cast(REGEXP_REPLACE(hp, '[^[:digit:]]', '') as numeric) as hp,
    lbs*0.453592 as kg,
    price
 from
     {{ ref('gran_turismo_gt7_stg') }}
order by
    mark