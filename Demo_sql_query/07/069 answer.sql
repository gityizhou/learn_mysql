-- SELECT count(*) from movie where director_name="Christopher Nolan";
-- SELECT count(*) from movie where actor_1_name="Tom Hardy" or actor_2_name="Tom Hardy";
-- select count(distinct director_name) from movie;
-- select director_name, count(title) from movie group by director_name order by count(title) desc limit 5;
-- select director_name, sum(gross), count(title) from movie group by director_name order by sum(gross) desc limit 5;