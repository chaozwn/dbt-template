with source as (
    select * from {{ ref('raw_jayce') }}
)
select * from source
