with person as (select * from {{ ref("stg_person") }}) select * from person
