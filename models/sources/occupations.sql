{{
    config(
        pre_hook=create_csv_view("occupations.dat", "::"),
        options=generate_jdbc_options(),
    )
}}
select occupationid occupation_id, occupation occupation
from occupations_view
