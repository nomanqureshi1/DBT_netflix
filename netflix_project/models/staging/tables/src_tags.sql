{{ config(materialized = 'table') }}

WITH raw_tags AS (
  SELECT * FROM MYDB.NETFLIX_RAW.RAW_TAGS
)

SELECT
  userId AS user_id,
  movieId AS movie_id,
  tag,
  TO_TIMESTAMP_LTZ(timestamp) AS tag_timestamp
FROM raw_tags