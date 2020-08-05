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
-- Query to find all movies based on genre
-- Edited by Christopher Pellegrino
-- By: Kathy Thao (Cougars, Query 5)
-----------------------------------------------------------
-- BEFORE
----------------------------------------------------

SELECT *
FROM movies
INNER JOIN movie_data ON (movies.movie_id = movie_data.movie_id)
WHERE movie_data.genre = "Mystery";


-- AFTER (added indexed attributes)
----------------------------------------------------

SELECT movies.movie_id, movies.native_name, movies.year_made, movie_data.genre
FROM movies
INNER JOIN movie_data ON (movies.movie_id = movie_data.movie_id)
WHERE movie_data.genre = "Mystery";

