-- --------------------------------------------------------

-- Insertion script for the movie: Shrek
-- Christian Duvick

-- --------------------------------------------------------


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