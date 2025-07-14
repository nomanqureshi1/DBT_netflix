-- tests/no_duplicate_rating_id.sql

WITH duplicates AS (
    SELECT
        rating,
        COUNT(*) AS count
    FROM {{ ref('src_ratings') }}
    GROUP BY rating
    HAVING COUNT(*) > 1
)

SELECT *
FROM duplicates
