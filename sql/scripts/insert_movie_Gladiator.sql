-- --------------------------------------------------------

--
-- Insertion script for the movie: 
Gladiator
-- Abdullahi Mohamed 

-- --------------------------------------------------------



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
