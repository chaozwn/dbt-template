{{
    config(
        pre_hook=create_csv_view("users.dat", "::"), options=generate_jdbc_options()
    )
}}
select
    userid user_id, gender gender, age age, occupation occupation, `Zip-code` zip_code
from users_view
