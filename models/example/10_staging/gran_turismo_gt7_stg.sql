{{ config(
    materialized='table'
) }}

select
    split(model, ' ')[OFFSET(0)] as mark,
    model,
    category,
    pp,
    transmission,
    coll,
    REGEXP_REPLACE(price, '[^[:digit:]]', '') as price,
    hp,
    lbs,
    kg_kw,
    img_url
from
    {{ ref('gran_turismo_gt7_raw') }}
order by
    mark
