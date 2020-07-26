-- --------------------------------------------------------

--
-- Deletion script for the movie: Forrest Gump
-- Nathan Al-Kurdi

-- --------------------------------------------------------



-- Cascade delete people by deleting from table people

-- --------------------------------------------------------

DELETE FROM `people` 
WHERE EXISTS (SELECT * FROM `movie_people` WHERE movie_people.movie_id = 11 AND people.people_id = movie_people.people_id);

DELETE FROM `people` 
WHERE EXISTS (SELECT * FROM `song_people` NATURAL JOIN (SELECT * FROM `movie_song` NATURAL JOIN `songs` WHERE movie_song.movie_id = 11 AND songs.song_id = movie_song.song_id) AS songs_people_list WHERE songs_people_list.movie_id = 11 AND people.people_id = song_people.people_id);



-- Cascade delete song by deleting from table songs

-- --------------------------------------------------------

DELETE FROM `songs`
WHERE EXISTS (SELECT * FROM `movie_song` WHERE movie_song.movie_id = 11 AND songs.song_id = movie_song.song_id);



-- Cascade delete movie by deleting from table movies

-- --------------------------------------------------------

DELETE FROM `movies` WHERE `movie_id` = 11;