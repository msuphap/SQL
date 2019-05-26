-- Try running me!
select 'DataCamp <3 SQL'
AS result;

SELECT 'SQL is cool!'
AS result;

SELECT DISTINCT country
from films

SELECT COUNT(*)
from people;

SELECT COUNT(DISTINCT country)
FROM films;

SELECT title, release_year
FROM films
WHERE release_year > 2000;

SELECT *
FROM films
WHERE certification = 'R';

SELECT *
FROM films
WHERE release_year > 2000 AND release_year < 2010
  AND language = 'Spanish';
  
SELECT title, release_year
FROM films
WHERE ( release_year >= 1990 AND release_year < 2000 )

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000

SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000)
AND duration > 120;

SELECT title, certification
FROM films
WHERE certification IN ('NC-17', 'R');

SELECT name
FROM people
WHERE deathdate is null;

SELECT COUNT(*)
FROM films
WHERE language is null;

SELECT name
FROM people
WHERE name LIKE 'B%'

SELECT name
FROM people
WHERE name NOT LIKE 'A%'

SELECT SUM(duration)
FROM films;

SELECT MAX(duration)
FROM films;

SELECT AVG(gross)
FROM films
WHERE title LIKE 'A%';

SELECT MIN(gross)
FROM films
WHERE release_year = 1994;

SELECT title, (gross - budget) AS net_profit
FROM films;

SELECT AVG(duration) / 60.0 AS avg_duration_hours
FROM films;

-- get the count(deathdate) and multiply by 100.0
-- then divide by count(*)
SELECT COUNT(deathdate) * 100.0 / COUNT(*) AS percentage_dead
FROM people;

-- get the count(deathdate) and multiply by 100.0
-- then divide by count(*)
SELECT MAX(release_year) - MIN(release_year) AS difference
FROM films;

-- get the count(deathdate) and multiply by 100.0
-- then divide by count(*)
SELECT (MAX(release_year) - MIN(release_year)) / 10.0 AS number_of_decades
FROM films;
                                
SELECT *
FROM people
ORDER BY name;
      
SELECT birthdate, name
FROM people
ORDER BY birthdate;
                                
SELECT title
from films
WHERE release_year IN (2000, 2012);
                                
SELECT *
from films
WHERE release_year != 2015
ORDER BY duration;

SELECT title, gross
from films
WHERE title LIKE 'M%'
ORDER BY title;

SELECT imdb_score, film_id
FROM reviews
ORDER BY imdb_score DESC;   
                                
SELECT title, duration
FROM films
ORDER BY duration DESC;     
                                
SELECT release_year, COUNT(*)
FROM films
GROUP BY release_year                                
                                
SELECT imdb_score, COUNT(*)
FROM reviews
GROUP BY imdb_score
                                
SELECT release_year, MIN(gross)
FROM films
GROUP BY release_year
    
SELECT country, release_year, MIN(gross)
FROM films
GROUP BY release_year, country
ORDER BY country, release_year;                                
                                
-- select country, average budget, average gross
SELECT country, AVG(budget) as avg_budget, AVG(gross) as avg_gross
-- from the films table
FROM films
-- group by country 
GROUP BY country
-- where the country has more than 10 titles
HAVING COUNT(title) > 10
-- order by country
ORDER BY country
-- limit to only show 5 results
LIMIT 5;                                
                                
SELECT title, imdb_score
FROM films
JOIN reviews
ON films.id = reviews.film_id
WHERE title = 'To Kill a Mockingbird';
                                
                                
