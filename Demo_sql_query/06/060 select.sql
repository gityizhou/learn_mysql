
select title, director_name, title_year from movie where title like "%dark%";

select
    title, title_year, director_name, gross, actor_1_name, actor_2_name 
from movie
order by gross desc limit 10;

select title, title_year, gross, imdb_score from movie where director_name="Peter Jackson"
order by gross desc limit 1;

select title, title_year, director_name from movie order by title;


select
    title, title_year, imdb_score
from movie
where director_name="Christopher Nolan"
order by imdb_score desc
limit 1;