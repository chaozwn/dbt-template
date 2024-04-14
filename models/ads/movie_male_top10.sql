{{ config(options=generate_jdbc_options()) }}

select movie_id, count(a.user_id) as fans_num
from {{ ref("ratings") }} a
left join {{ ref("users") }} b on a.user_id = b.user_id
where b.gender = 'M'
group by movie_id
order by fans_num desc
limit 10
