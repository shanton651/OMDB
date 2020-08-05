-----------------------------------------------------------
-- Optimized SQL Queries
-----------------------------------------------------------

-----------------------------------------------------------
-- Query to find a movie based on a certain song's title
-- By: Nathan Al-Kurdi
-----------------------------------------------------------

-- BEFORE
----------------------------------------------------

SELECT * 
FROM   (movies 
        NATURAL JOIN movie_song) 
       NATURAL JOIN songs 
WHERE  movies.movie_id = movie_song.movie_id 
       AND songs.title LIKE 'Jungle%' 

-- AFTER (With indexed attributes)
----------------------------------------------------

SELECT song_id, 
       movie_id, 
       title AS song_title, 
       native_name, 
       year_made 
FROM   (movies 
        NATURAL JOIN movie_song) 
       NATURAL JOIN songs 
WHERE  movies.movie_id = movie_song.movie_id 
       AND songs.title LIKE 'Jungle%' 




-----------------------------------------------------------
-- Query to add a song into the songs table
-- By: Gina Bjork
-----------------------------------------------------------
-- BEFORE
----------------------------------------------------

INSERT INTO songs (title, lyrics, theme) 
VALUES ("Her Eyes", NULL, "Classic")


-- AFTER
----------------------------------------------------

INSERT INTO songs (title, lyrics, theme) 
SELECT title, lyrics, theme 
FROM songs;



-----------------------------------------------------------
-- Give me the list all movies in which a person acted as “Leading Actor”
  --Query Number: 3
--Query Description: Give me the list all movies in which a person acted as “Leading Actor”
--Author: Misky Abshir

-- By: Abdullahi Mohamed
-----------------------------------------------------------
-- BEFORE
----------------------------------------------------

SELECT *
FROM movies
INNER JOIN movie_people ON (movies.movie_id = movie_people.movie_id)
WHERE role = 'Lead Actor' AND people_id = 2;

-- AFTER
----------------------------------------------------
SELECT movies.movie_id, movies.native_name, movies.year_made,movie_people.role FROM movies INNER JOIN movie_people ON (movies.movie_id = movie_people.movie_id) WHERE role = 'Lead Actor' AND people_id = 2



