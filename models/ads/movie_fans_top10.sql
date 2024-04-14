{{ config(options=generate_jdbc_options()) }}

select count(user_id) as fans_num, movie_id
from {{ ref("ratings") }}
group by movie_id
order by fans_num desc
limit 10