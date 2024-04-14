{{
    config(
        pre_hook=create_csv_view("ratings.dat", "::"), options=generate_jdbc_options()
    )
}}
select userid user_id, movieid movie_id, rating rating, timestamp timestamp
from ratings_view
