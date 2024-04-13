{{ config(materialized="table", file_format="delta") }}

with person as (select * from {{ ref("person") }})
select *
from person
