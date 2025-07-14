with raw_movies as(
    select * from MYDB.NETFLIX_RAW.RAW_MOVIES 
)
select movieid as movie_id,TITLE,GENRES
from raw_movies
