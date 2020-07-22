-----------
-- Movie View

SELECT movies.movie_id, 
       movies.native_name, 
       movies.english_name, 
       movies.year_made, 
       movie_data.tag_line, 
       movie_data.language, 
       movie_data.country, 
       movie_data.genre, 
       movie_data.plot, 
       trivia,
       quotes, 
       keywords, 
       media, 
       songs, 
       people
FROM   `movies` 
       LEFT OUTER JOIN `movie_data` 
                    ON movies.movie_id = movie_data.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Group_concat(movie_id) AS `trivia` 
                        FROM   `movie_trivia` 
                        GROUP  BY movie_id ASC) trivia 
                    ON movies.movie_id = trivia.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Group_concat(movie_id) AS `quotes` 
                        FROM   `movie_quotes` 
                        GROUP  BY movie_id ASC) quotes
                    ON movies.movie_id = quotes.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Group_concat(movie_id) AS `keywords` 
                        FROM   `movie_keywords` 
                        GROUP  BY movie_id ASC) keywords 
                    ON movies.movie_id = keywords.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Group_concat(movie_id) AS `media` 
                        FROM   `movie_media` 
                        GROUP  BY movie_id ASC) media 
                    ON movies.movie_id = media.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Group_concat(movie_id) AS `songs` 
                        FROM   `movie_song` 
                        GROUP  BY movie_id ASC) song 
                    ON movies.movie_id = song.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Group_concat(movie_id) AS `people` 
                        FROM   `movie_people` 
                        GROUP  BY movie_id ASC) m_people 
                    ON movies.movie_id = m_people.movie_id 
GROUP  BY movies.movie_id ASC; 
