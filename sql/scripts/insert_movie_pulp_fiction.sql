-- --------------------------------------------------------

--
-- Insertion script for the movie: Pulp Fiction
-- Christopher Pellegrino

-- --------------------------------------------------------



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
