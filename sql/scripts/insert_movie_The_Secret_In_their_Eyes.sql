-- --------------------------------------------------------

--
-- Insertion script for the movie: The Secret in Their Eyes
-- Gina Bjork

-- --------------------------------------------------------



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