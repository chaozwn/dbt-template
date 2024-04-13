{{ config(options=generate_jdbc_options()) }}

with person as (select * from {{ source("sqlite", "raw_jayce") }})
select *
from person
