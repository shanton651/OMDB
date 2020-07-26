-- --------------------------------------------------------

--
-- Insertion script for the movie: Forrest Gump
-- Nathan Al-Kurdi

-- --------------------------------------------------------



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
