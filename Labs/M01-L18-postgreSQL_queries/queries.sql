-- ---------------
-- query01
-- ---------------

SELECT
	distinct prime_genre
FROM
	apple_table;
	
-- ---------------
-- query02
-- ---------------
SELECT
	*
FROM
	(SELECT
		prime_genre,
		sum(rating_count_tot) as rating_count
	FROM
		apple_table
	GROUP BY
		prime_genre) as temptable
ORDER BY rating_count DESC
LIMIT 1;

-- alternatively

SELECT
	prime_genre,
	sum(rating_count_tot) as rating_count
FROM
	apple_table
GROUP BY
	prime_genre
ORDER BY rating_count DESC
LIMIT 1;

-- ---------------
-- query03
-- ---------------
SELECT
	prime_genre,
	COUNT(id)
FROM
	apple_table
GROUP BY
	prime_genre
ORDER BY COUNT(id) DESC
LIMIT 1;

-- ---------------
-- query04
-- ---------------
SELECT
    prime_genre,
    COUNT(id)
FROM
    apple_table
GROUP BY
    prime_genre
ORDER BY COUNT(id)
LIMIT 1;

-- ---------------
-- query05
-- ---------------
SELECT
	track_name,
	rating_count_tot
FROM
	apple_table
ORDER BY rating_count_tot DESC
LIMIT 10;

-- ---------------
-- query06
-- ---------------
SELECT
	track_name,
	user_rating
FROM
	apple_table
ORDER BY user_rating DESC
LIMIT 10;

-- ---------------
-- query07
-- ---------------
SELECT
	track_name,
	user_rating,
	rating_count_tot
FROM
	apple_table
ORDER BY user_rating DESC
LIMIT 10;

-- ---------------
-- query08
-- ---------------
SELECT
	track_name,
	user_rating,
	rating_count_tot
FROM
	apple_table
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

-- ---------------
-- query09
-- ---------------
SELECT
	COUNT(track_name)
FROM
    apple_table
WHERE
	prime_genre = 'Games' and
	langnum > 1;

-- ---------------
-- query10
-- ---------------
SELECT
	CASE WHEN
		price = 0 
			then 'free'
			else 'paid'
			end as price_policy,
	COUNT(id)
FROM
    apple_table
GROUP BY price_policy;

-- ---------------
-- query11
-- ---------------
SELECT
	prime_genre,
	COUNT(CASE WHEN
			price = 0 
			then 'id'
			else null
			end) as free_app,
	COUNT(CASE WHEN
			price != 0 
			then 'id'
			else null
			end) as paid_app,
	COUNT(id)
FROM
    apple_table
GROUP BY prime_genre
ORDER BY COUNT(id) DESC;