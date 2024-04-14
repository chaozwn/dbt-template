{{
    config(
        pre_hook=create_csv_view("movies.dat", "::"),
        options=generate_duckdb_options(),
    )
}}
select movieid movie_id, title title, genres genres
from movies_view
