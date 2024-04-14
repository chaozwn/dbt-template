{{ config(options=generate_jdbc_options()) }}

select avg(rating) as avg_rating, movie_id
from {{ ref("ratings") }}
group by movie_id
order by avg_rating desc
limit 10
