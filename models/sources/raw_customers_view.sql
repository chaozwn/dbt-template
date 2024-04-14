{{ config(pre_hook=create_sqlite_view("main", "raw_customers")) }}

select *
from raw_customers_temp
