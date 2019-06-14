select
    title, director_name, title_year, gross,imdb_score
from movie 
where 
    title_year between 2000 and 2010 and country="USA"  
order by gross desc;


select
    title, director_name, title_year, gross,imdb_score,
    case
        when imdb_score>=8 then "*****"
        when imdb_score>=7 and imdb_score<8 then "****"
        when imdb_score>=6 and imdb_score<7 then "***"
        when imdb_score>=5 and imdb_score<6 then "**"
        else "*"
    end as stars
from movie order by imdb_score desc;