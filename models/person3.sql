{{ config(file_format="delta") }}

with person as (select * from {{ ref("person2") }})
select *
from person
