-----------------------------------------------------------------------------
-- Queries from Team BEARS


-- Iteration 7 Queries --------------------------------
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
-- #33 - Nathan Al-Kurdi
-- Description: Tuples from both movies and movie_data, with respective COUNT()
-- from other tables.
-----------------------------------------------------------------------------



SELECT movies.movie_id, 
       movies.native_name, 
       movies.english_name, 
       movies.year_made, 
       movie_data.tag_line, 
       movie_data.language, 
       movie_data.country, 
       movie_data.genre, 
       movie_data.plot, 
       `trivia_count`, 
       `keyword_count`, 
       `media_count`, 
       `song_count`, 
       `people_count` 
FROM   `movies` 
       LEFT OUTER JOIN `movie_data` 
                    ON movies.movie_id = movie_data.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `trivia_count` 
                        FROM   `movie_trivia` 
                        GROUP  BY movie_id ASC) trivia 
                    ON movies.movie_id = trivia.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `keyword_count` 
                        FROM   `movie_keywords` 
                        GROUP  BY movie_id ASC) keywords 
                    ON movies.movie_id = keywords.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `media_count` 
                        FROM   `movie_media` 
                        GROUP  BY movie_id ASC) media 
                    ON movies.movie_id = media.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `song_count` 
                        FROM   `movie_song` 
                        GROUP  BY movie_id ASC) song 
                    ON movies.movie_id = song.movie_id 
       LEFT OUTER JOIN (SELECT movie_id, 
                               Count(movie_id) AS `people_count` 
                        FROM   `movie_people` 
                        GROUP  BY movie_id ASC) m_people 
                    ON movies.movie_id = m_people.movie_id 
GROUP  BY movies.movie_id ASC; 



-----------------------------------------------------------------------------
-- #36 - Nathan Al-Kurdi
-- Description: Gives the list of all movies that have a song with a title
-- matching some given substring.
-----------------------------------------------------------------------------



SELECT * 
FROM   (movies 
        NATURAL JOIN movie_song) 
       NATURAL JOIN songs 
WHERE  movies.movie_id = movie_song.movie_id 
       AND INSTR(songs.title, '') > 0; 



-----------------------------------------------------------------------------
-- #44 - Abdullahi Mohamed
-- Description: Counts the amount of audio and video
-----------------------------------------------------------------------------



Select s_link_type, count(song_media.s_link) AS count
FROM song_media
GROUP BY s_link_type ASC;



-----------------------------------------------------------------------------
-- #45 - Christian Duvick
-- Description: Lists all movies where person x or person y appear (put stage
-- names in the '')
-----------------------------------------------------------------------------



SELECT movies.native_name 
FROM `movies`
WHERE movie_id IN (SELECT movie_id
                  FROM movie_people NATURAL JOIN people
                  WHERE people.stage_name = '' OR people.stage_name = '')



-----------------------------------------------------------------------------
-- #49 - Gina Bjork
-- Description: List of all movies which contain the songs written by a lyricist
-----------------------------------------------------------------------------



SELECT movies.movie_id, movies.english_name, people.stage_name, song_people.role
FROM `movies` 
INNER JOIN `song_people` ON song_people.song_id = movies.movie_id
INNER JOIN people ON people.people_id = song_people.people_id
WHERE people.stage_name LIKE "";



-----------------------------------------------------------------------------
-- #50 - Spencer Hanton
-- Description: List all movie_people who have stage name that is not null
-----------------------------------------------------------------------------



SELECT movies.native_name, 
       screen_name 
FROM   movies 
       LEFT OUTER JOIN movie_people 
                    ON movies.movie_id = movie_people.movie_id 
WHERE  screen_name IS NOT NULL 



-----------------------------------------------------------------------------
-- #51 - Christopher Pellegrino
-- Description: List of all movies where Person X is the Director and Person Y
-- is the "Lead Actor" (stage_names are input).
-----------------------------------------------------------------------------



SELECT movies.movie_id, movies.native_name, people.people_id, people.stage_name, movie_people.role
FROM (movies
NATURAL JOIN movie_people)
NATURAL JOIN people
WHERE (movie_people.role = 'Director'
AND people.stage_name = 'X')
OR (movie_people.role = 'Lead Actor'
AND people.stage_name = 'Y');



-- Iteration 8 Queries --------------------------------
-----------------------------------------------------------------------------


-----------------------------------------------------------------------------
-- Song View - Abdullahi Mohamed
-- Description: View that captures all columns that are relevant for a song.
-----------------------------------------------------------------------------



CREATE VIEW `song_view` AS SELECT
    `songs`.`song_id` AS `song_id`,
    `songs`.`title` AS `title`,
    `songs`.`lyrics` AS `lyrics`,
    `songs`.`theme` AS `theme`,
    `song_media`.`song_media_id` AS `song_media_id`,
    `song_media`.`s_link` AS `s_link`,
    `song_media`.`s_link_type` AS `s_link_type`,
    `song_people`.`people_id` AS `people_id`,
    `song_people`.`role` AS `role`,
    `people`.`stage_name` AS `stage_name`,
    `people`.`first_name` AS `first_name`,
    `people`.`last_name` AS `last_name`,
    `people`.`gender` AS `gender`,
    `movie_song`.`movie_id` AS `movie_id`,
    `movies`.`native_name` AS `native_name`
FROM
    (
        (
            (
                (
                    (
                        `songs`
                    LEFT JOIN `song_media` ON
                        (
                            (
                                `songs`.`song_id` = `song_media`.`song_id`
                            )
                        )
                    )
                LEFT JOIN `song_people` ON
                    (
                        (
                            `songs`.`song_id` = `song_people`.`song_id`
                        )
                    )
                )
            LEFT JOIN `people` ON
                (
                    (
                        `song_people`.`people_id` = `people`.`people_id`
                    )
                )
            )
        LEFT JOIN `movie_song` ON
            (
                (
                    `song_people`.`song_id` = `movie_song`.`song_id`
                )
            )
        )
    LEFT JOIN `movies` ON
        (
            (
                `movie_song`.`movie_id` = `movies`.`movie_id`
            )
        )
    )
GROUP BY
    `songs`.`song_id`;



-----------------------------------------------------------------------------
-- Movie View - Gina Bjork
-- Description: View that captures all columns that are relevant for a movie 
-- with counts.
-----------------------------------------------------------------------------


CREATE VIEW `movie_view` AS
SELECT movies.movie_id,
       movies.native_name,
       movies.english_name,
       movies.year_made,
       movie_data.tag_line,
       movie_data.language,
       movie_data.country,
       movie_data.genre,
       movie_data.plot,
       GROUP_CONCAT(distinct movie_trivia_name) AS movie_trivia_names,
       GROUP_CONCAT(distinct keyword) AS keywords,
       GROUP_CONCAT(distinct m_link) AS media_link,
       GROUP_CONCAT(distinct m_link_type) AS media_link_type,
       GROUP_CONCAT(distinct title) AS titles,
       GROUP_CONCAT(distinct stage_name),
       movie_numbers.running_time,
       movie_numbers.length,
       movie_numbers.strength,
       movie_numbers.weight,
       movie_numbers.budget,
       movie_numbers.box_office,
       movie_anagrams.anagram
FROM movies
       LEFT JOIN movie_data 
       ON (movies.movie_id = movie_data.movie_id)
       LEFT JOIN movie_trivia 
       ON (movies.movie_id = movie_trivia.movie_id)
       LEFT JOIN movie_keywords 
       ON (movies.movie_id = movie_keywords.movie_id)
       LEFT JOIN movie_media 
       ON (movies.movie_id = movie_media.movie_id)
       LEFT JOIN movie_song 
       ON (movies.movie_id = movie_song.song_id)
       LEFT JOIN songs 
       ON (movie_song.song_id = songs.song_id)
       LEFT JOIN movie_people 
       ON (movies.movie_id = movie_people.movie_id)
       LEFT JOIN people 
       ON (movie_people.people_id = people.people_id)
       LEFT JOIN movie_numbers 
       ON (movies.movie_id = movie_numbers.movie_id)
       LEFT JOIN movie_anagrams 
       ON (movies.movie_id = movie_anagrams.movie_id)
GROUP BY movies.movie_id;



-----------------------------------------------------------------------------
-- People View - Spencer Hanton
-- Description: View that captures all columns that are relevant for a person.
-----------------------------------------------------------------------------



CREATE VIEW `people_view` AS SELECT
    `people`.`people_id` AS `people_id`,
    `people`.`first_name` AS `first_name`,
    `people`.`middle_name` AS `middle_name`,
    `people`.`last_name` AS `last_name`,
    `people`.`gender` AS `gender`,
    `people`.`stage_name` AS `stage_name`,
    `movie_people`.`screen_name` AS `screen_name`,
    `people_trivia`.`people_trivia_name` AS `people_trivia_name`,
    `movies`.`movie_id` AS `movie_id`,
    `movie_people`.`role` AS `role`,
    `movies`.`native_name` AS `native_name`,
    `movies`.`english_name` AS `english_name`,
    `movies`.`year_made` AS `year_made`,
    `song_people`.`role` AS `song_role`,
    `song_people`.`song_id` AS `song_id`,
    `songs`.`title` AS `title`,
    `songs`.`lyrics` AS `lyrics`
FROM
    (
        (
            (
                (
                    (
                        `people`
                    LEFT JOIN `people_trivia` ON
                        (
                            `people`.`people_id` = `people_trivia`.`people_id`
                        )
                    )
                LEFT JOIN `movie_people` ON
                    (
                        `people`.`people_id` = `movie_people`.`people_id`
                    )
                )
            LEFT JOIN `movies` ON
                (
                    `movie_people`.`movie_id` = `movies`.`movie_id`
                )
            )
        LEFT JOIN `song_people` ON
            (
                `people`.`people_id` = `song_people`.`people_id`
            )
        )
    LEFT JOIN `songs` ON
        (
            `song_people`.`song_id` = `songs`.`song_id`
        )
    )
GROUP BY
    `people`.`people_id`;



-- Iteration 9 Queries --------------------------------
-----------------------------------------------------------------------------


-----------------------------------------------------------------------------
-- INSERT Script #1 - Nathan Al-Kurdi
-- Description: Inserts the movie Forrest Gump and its associated people/song data.
-----------------------------------------------------------------------------



-- Insertion into movie entities
-- --------------------------------------------------------

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(11, 'Forrest Gump', 'Forrest Gump', 1994);

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(11, 'Performs Tug');

INSERT INTO `movie_data` (`tag_line`, `movie_id`, `language`, `country`, `genre`, `plot`) VALUES
('The story of a lifetime', 11, 'English', 'USA', 'Drama', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.');

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(11, 'amputee'),
(11, 'based on book'),
(11, 'vietnam war');

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(111, 'https://www.youtube.com/watch?v=bLvqoHBptjg', 'video', 11),
(112, 'forrest_gump_poster.jpg', 'poster', 11);

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(11, 142, 12, 1, 1, 55, 678);

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(11, 111, 'Stupid is as stupid does.');

INSERT INTO `movie_trivia` (`movie_id`, `movie_trivia_id`, `movie_trivia_name`) VALUES
(11, 111, 'Forrest Gump is based on a novel.');



-- Insertion into people entities
-- --------------------------------------------------------

INSERT INTO `people` (`people_id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(111, 'Robert', 'Robert', '', 'Zemeckis', 'Male', 'robert_zemeckis.jpg'),
(112, 'Winston', 'Winston', '', 'Groom', 'Male', 'winston_groom.jpg'),
(113, 'Eric', 'Eric', '', 'Roth', 'Male', 'eric_roth.jpg'),
(114, 'Tom Hanks', 'Thomas', 'Jeffrey', 'Hanks', 'Male', 'tom_hanks.jpg'),
(115, 'Rebecca Williams', 'Rebecca', '', 'Williams', 'Female', 'rebecca_williams.jpg'),
(116, 'Sally Field', 'Sally', 'Margaret', 'Field', 'Female', 'sally_field.jpg'),
(117, 'Michael', 'Michael', 'Conner', 'Humphreys', 'Male', 'michael_humphreys.jpg'),
(118, 'Harold', 'Harold', 'G', 'Herthum', 'Male', 'harold_herthum.jpg'),
(119, 'Alan', 'Alan', 'Anthony', 'Silvestri', 'Male', 'alan_silvestri.jpg');

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(11, 111, 'Director', ''),
(11, 112, 'Novel Writer', ''),
(11, 113, 'Screenplay', ''),
(11, 114, 'Actor', ''),
(11, 115, 'Actress', ''),
(11, 116, 'Actress', ''),
(11, 117, 'Actor', ''),
(11, 118, 'Actor', '');

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(114, 111, 'Tom Hanks voices Woody from Toy Story.');



-- Insertion into song entities
-- --------------------------------------------------------

INSERT INTO `songs` (`song_id`, `title`, `lyrics`, `theme`) VALUES
(111, 'I\'m Forrest', NULL, 'Hopeful');

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(11, 111);

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(111, 'Heartwarming'),
(111, 'Sad');

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(111, 'https://www.youtube.com/watch?v=RUyZeic_BaE', 'audio', 111);

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(111, 119, 'Composer');

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(111, 111, 'All Music rated Alan Silvestri\'s soundtrack of Forrest Gump three stars and consider it to be saccharine.');



-----------------------------------------------------------------------------
-- INSERT Script #2 - Abdullahi Mohamed
-- Description: Inserts the movie Gladiator and its associated people/song data.
-----------------------------------------------------------------------------



-- Insertion into movie entities
-- --------------------------------------------------------

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(13, 'Gladiator', 'Gladiator', 2000);

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(13, '');

INSERT INTO `movie_data` (`tag_line`, `movie_id`, `language`, `country`, `genre`, `plot`) VALUES
('', 13, 'English', 'USA', 'Action', 'Maximus loses everything and is now tasked to save an empire and to avenge his family and to continue Marcus legacy.');

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(13, 'Family'),
(13, 'Freedom'),
(13, 'Rome');

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(131, 'https://www.youtube.com/watch?v=uvbavW31adA', 'Video', 13);

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(13, 155, 14, 1, 1, 103, 460);

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(13, 131, 'Brothers, what we do in life echoes in eternity.');

INSERT INTO `movie_trivia` (`movie_id`, `movie_trivia_id`, `movie_trivia_name`) VALUES
(13, 131, 'Commodus in real history never fought in the colosseum.');



-- Insertion into people entities
-- --------------------------------------------------------

INSERT INTO `people` (`people_id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(131, 'Ridley', 'Ridley', '', 'Scott', 'Male', 'Ridley_Scott.jpg'),
(132, 'John', 'John', '', 'Logan', 'Male', 'john_logan.jpg'),
(133, 'Russel', 'Russel', 'Crowe', '', 'Male', 'Russel_crowe'),
(135, 'Connie Nelson', 'Connie', '', 'Connie', 'Female', 'Connie_Nelson.jpg'),
(136, 'Joaquin Phoenix', '', '', '', 'male', 'Joaquin_Phoenix.jpg');


INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(13, 131, 'Director', ''),
(13, 132, 'Screenplay', ''),
(13, 133, 'Actor', ''),
(13, 135, 'Actor', '');

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(133, 131, 'Russel Crowe scar from the movie was caused by a horse.');



-- Insertion into song entities
-- --------------------------------------------------------

INSERT INTO `songs` (`song_id`, `title`, `lyrics`, `theme`) VALUES
(131, 'Now we are Free', NULL, 'Hopeful');

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(11, 131);

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(131, 'free');

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(131, 'https://www.youtube.com/watch?v=-yOZEiHLuVU', 'Video', 131);


INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(131, 131, 'Gladiator music was taken to the next level by Hans Zimmer.');



-----------------------------------------------------------------------------
-- INSERT Script #3 - Gina Bjork
-- Description: Inserts the movie The Secret in their Eyes and its associated people/song data.
-----------------------------------------------------------------------------



-- Insertion into movie entities
-- --------------------------------------------------------

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(8, 'El secreto de sus ojos', 'The secret in their eyes', 2009);

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(8, '');

INSERT INTO `movie_data` (`tag_line`, `movie_id`, `language`, `country`, `genre`, `plot`) VALUES
('Psychological thriller film', 8, 'Spanish', 'Spain', 'Mystery', 'Hoping to put to rest years of unease concerning a past case, retired criminal investigator Benjamín Espósito (Ricardo Darín) begins writing a novel based on the decades-old unsolved mystery of a newlywed\'s rape and murder. \r\nWith the help of a former colleague, Judge Irene Menéndez Hastings (Soledad Villamil), Benjamín attempts to make sense of the past. The journey through his memories sets Benjamín on a thrilling emotional path that leads to a shocking realization.');

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(8, 'drama'),
(8, 'mistery'),
(8, 'novel');

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(81, 'https://www.youtube.com/watch?v=tH8qDFVWkkU', 'video', 8),
(82, 'the_secret_in_their_eyes_poster.jpg', 'poster', 8);

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(8, 111, 24, 1, 1, 20, 35);

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(8, 81, 'The dog probably had rabies. You are gonna die');

INSERT INTO `movie_trivia` (`movie_id`, `movie_trivia_id`, `movie_trivia_name`) VALUES
(8, 81, 'Julia Roberts mother passed away during the production'),
(8, 82, 'The Secret in Their Eyes is based on a novel.');



-- Insertion into people entities
-- --------------------------------------------------------

INSERT INTO `people` (`people_id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(81, 'Juan José Campanella', 'Juan', 'José', 'Campanella', 'Male', 'juan_jose_campanella.jpg'),
(82, 'Eduardo Sacheri', 'Eduardo', '', 'Sacheri', 'Male', 'eduardo_sacheri.jpg'),
(83, 'Ricardo Darín', 'Ricardo', '', 'Darín', 'Male', 'ricardo_darin.jpg'),
(84, 'Soledad Villamil', 'Soledad', '', 'Villamil', 'Female', 'soledad.jpg'),
(85, 'Emilio Kauderer', 'Emilio', '', 'Kauderer', 'Male', 'Emilio_Kauderer.jpg');

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(8, 81, 'Director', 'Juan José Campanella'),
(8, 82, 'Novel Writer', 'Eduardo Sacheri'),
(8, 83, 'Actor', 'Ricardo Darín'),
(8, 84, 'Actress', 'Soledad Villamil');

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(81, 81, 'The director of the original film, Juan José Campanella, worked as an executive producer on this remake');



-- Insertion into song entities
-- --------------------------------------------------------

INSERT INTO `songs` (`song_id`, `title`, `lyrics`, `theme`) VALUES
(81, 'Her Eyes', NULL, 'Classic');

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(8, 81);

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(81, 'Sad');

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(81, 'https://www.youtube.com/watch?v=ZxsxNrbvD70', 'Video', 81);

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(81, 85, 'Composer');

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(81, 81, 'Emilio Kauderer decided to collaborate with Federico Jusid for this song.');



-----------------------------------------------------------------------------
-- INSERT Script #4 - Christopher Pellegrino
-- Description: Inserts the movie Pulp Fiction and its associated people/song data.
-----------------------------------------------------------------------------



-- Insertion into movie entities
-- --------------------------------------------------------

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(10, 'Pulp Fiction', 'Pulp Fiction', 1994);

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(10, 'Pic Fun Pilot');

INSERT INTO `movie_data` (`tag_line`, `movie_id`, `language`, `country`, `genre`, `plot`) VALUES
('You know the facts until youve seen the fiction', 10, 'English', 'USA', 'Crime', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.');

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(10, 'Tarantino'),
(10, 'Crime'),
(10, 'Violent');

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(101, 'https://www.youtube.com/watch?v=s7EdQ4FqbhY', 'video', 10),
(102, 'Pulp_Fiction_poster.jpg', 'poster', 10);

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(10, 178, 12, 1, 1, 8, 108);

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(10, 101, 'Aw, man, I shot Marvin in the face.');

INSERT INTO `movie_trivia` (`movie_id`, `movie_trivia_id`, `movie_trivia_name`) VALUES
(10, 101, 'Pulp Fiction only cost $8 million to make.');



-- Insertion into people entities
-- --------------------------------------------------------

INSERT INTO `people` (`people_id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(101, 'Quentin Tarantino', 'Quentin', '', 'Tarantino', 'Male', 'QuentinTarantino.jpg'),
(102, 'John Travolta', 'John', '', 'Travolta', 'Male', 'JohnTravolta.jpg'),
(103, 'Uma Thurman', 'Uma', '', 'Thurman', 'Female', 'UmaThurman.jpg'),
(104, 'Samuel L. Jackson', 'Samuel', 'Leroy', 'Jackson', 'Male', 'SamuelLJackson.jpg'),
(105, 'Robert "Kool" Bell', 'Robert', 'Earl', 'Bell', 'Male', 'RobertBell.jpg'),
(106, 'Ronald Bell', 'Ronald', 'Nathan', 'Bell', 'Male', 'RonaldBell.jpg');

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(10, 101, 'Director', ''),
(10, 102, 'Lead Actor', ''),
(10, 103, 'Lead Actress', ''),
(10, 104, 'Lead Actor', '');

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(102, 101, 'John Travolta holds 11 jet type ratings.');



-- Insertion into song entities
-- --------------------------------------------------------

INSERT INTO `songs` (`song_id`, `title`, `lyrics`, `theme`) VALUES
(101, 'Pumpkin and Honey Bunny/Misirlou', NULL, 'energetic'),
(102, 'Jungle Boogie', 'Get down, Get down, get down, get down X6 Ahhhhh', 'funk');

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(10, 101),
(10, 102);

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(102, 'Kool & the Gang'),
(102, 'Wild and Peaceful'),
(102, 'jazz');

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(102, 'https://www.youtube.com/watch?v=QGKiC2suCHQ', 'Video', 102);

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(102, 105, 'Bass'),
(102, 106, 'Tenor Saxophone');

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(102, 101, 'Bilboard ranked Jungle Boogie as the number 12 song for 1974.');



-----------------------------------------------------------------------------
-- INSERT Script #5 - Christian Duvick
-- Description: Inserts the movie Shrek and its associated people/song data.
-----------------------------------------------------------------------------



-- Insert movie stuff
-- ------------------------------------------------------------------
INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(9, 'Shrek', 'Shrek', 2001);

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(9, 'Kersh');

INSERT INTO `movie_data` (`tag_line`, `movie_id`, `language`, `country`, `genre`, `plot`) VALUES
('', 9, 'English', 'USA', 'Comedy', 'An ogre named Shrek wants to protect his swamp. This starts an adventure. Oh yeah, he meets a talking donkey too.');

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(9, 'Animation'),
(9, 'Fairytale'),
(9, 'Ogre'),
(9, 'Swamp');

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(90, 'https://www.youtube.com/watch?v=W37DlG1i61s', 'Video', 9);

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(9, 90, 5, 1, 1, 60, 484);

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(9, 90, 'No! Onions have layers. Ogres have layers.');

INSERT INTO `movie_trivia` (`movie_id`, `movie_trivia_id`, `movie_trivia_name`) VALUES
(9, 90, 'Eddie Murphy plays the voice of Donkey.');


-- Insert People stuff
-- ------------------------------------------------------------------
INSERT INTO `people` (`people_id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(90, 'Andrew', 'Andrew', ' ', 'Adamson', 'Male', 'Andrew_Adamson.jpg'),
(91, 'Vicky', 'Vicky', ' ', 'Jenson', 'Female', 'Vicky_Jenson.jpg'),
(92, 'Mike', 'Mike', ' ', 'Myers', 'Male', 'Mike_Myers.jpg'),
(93, 'Eddie', 'Eddie', ' ', 'Murphy', 'Male', 'Eddie_Murphy.jpg'),
(94, 'Cameron', 'Cameron', ' ', 'Diaz', 'Female', 'Cameron_Diaz.jpg'),
(95, 'Neil', 'Neil', ' ', 'Diamond', 'Male', 'Neil_Diamond.jpg');

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(9, 90, 'Director', ''),
(9, 91, 'Director', ''),
(9, 92, 'Actor', ''),
(9, 93, 'Actor', ''),
(9, 94, 'Actress', '');

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(94, 90, 'Cameron Diaz plays the voice of Fiona.');


-- Insert song stuff
-- ------------------------------------------------------------------
INSERT INTO `songs` (`song_id`, `title`, `lyrics`, `theme`) VALUES
(90, 'I\'m a Believer', NULL, '');

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(9, 90);

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(90, 'Energetic'),
(90, 'Happy'),
(90, 'Upbeat');

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(90, 'https://www.youtube.com/watch?v=0mYBSayCsH0', 'Video', 90);

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(90, 95, 'Composer');

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(90, 90, 'the song I\'m a Believer was composed by Neil Diamond.');



-----------------------------------------------------------------------------
-- INSERT Script #6 - Spencer Hanton
-- Description: Inserts the movie Taxi Driver and its associated people/song data.
-----------------------------------------------------------------------------







-----------------------------------------------------------------------------
-- DELETE Script - Nathan Al-Kurdi
-- Description: Deletes a movie and its associated people/song data, deletion
-- is done by DB with foreign key constraints, which CASCADE deletes.
-- Replace {PUT_MOVIE_ID_HERE} with movie_ID to be deleted.
-----------------------------------------------------------------------------



-- Cascade delete people by deleting from table people

-- --------------------------------------------------------

DELETE FROM `people` 
WHERE EXISTS (SELECT * FROM `movie_people` WHERE movie_people.movie_id = {PUT_MOVIE_ID_HERE} AND people.people_id = movie_people.people_id);

DELETE FROM `people` 
WHERE EXISTS (SELECT * FROM `song_people` NATURAL JOIN (SELECT * FROM `movie_song` NATURAL JOIN `songs` WHERE movie_song.movie_id = {PUT_MOVIE_ID_HERE} AND songs.song_id = movie_song.song_id) AS songs_people_list WHERE songs_people_list.movie_id = {PUT_MOVIE_ID_HERE} AND people.people_id = song_people.people_id);



-- Cascade delete song by deleting from table songs

-- --------------------------------------------------------

DELETE FROM `songs`
WHERE EXISTS (SELECT * FROM `movie_song` WHERE movie_song.movie_id = {PUT_MOVIE_ID_HERE} AND songs.song_id = movie_song.song_id);



-- Cascade delete movie by deleting from table movies

-- --------------------------------------------------------

DELETE FROM `movies` WHERE `movie_id` = {PUT_MOVIE_ID_HERE};






