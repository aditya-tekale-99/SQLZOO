-- 1. List the films where the yr is 1962 [Show id, title]
SELECT id, title
 FROM movie
 WHERE yr=1962;
 
-- 2. Give year of 'Citizen Kane'.
SELECT yr FROM movie
WHERE title = 'Citizen Kane';

-- 3. List all of the Star Trek movies, include the id, title and yr 
--    (all of these movies include the words Star Trek in the title). Order results by year.
SELECT id, title, yr FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr;

-- 4. What id number does the actor 'Glenn Close' have?
SELECT id FROM actor
WHERE name = 'Glenn Close';

-- 5. What is the id of the film 'Casablanca'
SELECT id FROM movie
WHERE title = 'Casablanca';

-- 6. Obtain the cast list for 'Casablanca'.
SELECT name FROM casting, actor
WHERE movieid=(SELECT id FROM movie 
WHERE title='Casablanca') AND actorid=actor.id;

-- 7. Obtain the cast list for the film 'Alien'
SELECT name FROM casting, actor
WHERE movieid=(SELECT id 
FROM movie 
WHERE title='Alien') AND actorid=actor.id;

-- 8. List the films in which 'Harrison Ford' has appeared
SELECT title FROM movie, casting, actor
WHERE name = 'Harrison Ford'
AND movieid = movie.id
AND actorid = actor.id;

-- 9. List the films where 'Harrison Ford' has appeared - but not in the starring role.
--    [Note: the ord field of casting gives the position of the actor. If ord=1 then 
--     this actor is in the starring role]
SELECT title
FROM movie, casting, actor
WHERE name='Harrison Ford'
AND movieid=movie.id
AND actorid=actor.id
AND ord!=1;

-- 10. List the films together with the leading star for all 1962 films.
SELECT title, name FROM movie, casting, actor
WHERE yr=1962 AND movieid=movie.id
AND actorid=actor.id AND ord=1;

-- 11. Which were the busiest years for 'Rock Hudson', show the year and the number 
--     of movies he made each year for any year in which he made more than 2 movies.





