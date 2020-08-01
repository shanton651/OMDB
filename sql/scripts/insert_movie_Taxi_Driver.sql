-- --------------------------------------------------------

--
-- Insertion script for the movie: Taxi Driver
-- Spencer Hanton 

-- --------------------------------------------------------



-- Insertion into movie entities
-- --------------------------------------------------------

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(12,'Taxi Driver','Taxi driver', 1976);

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES
(12, 'Daxi Triver');

INSERT INTO `movie_data` (`tag_line`, `movie_id`, `language`, `country`, `genre`, `plot`) VALUES
('On every street in every city in this country, theres a nobody who dreams of being a somebody', 12, 'English', 'USA', 'Noir', 'A Taxi Driver explores New York');

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(12, 'Taxi'),
(12, 'Pimp'),
(12, 'gun'),
(12, 'Violent');

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(121,'https://www.originalfilmart.com/products/taxi-driver-1976-linen','Poster',12);

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES
(12, 61, 7, 7, 7, 13, 13);

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES
(12, 121, 'On every street in every city in this country, theres a nobody who dreams of being a somebody');

INSERT INTO `movie_trivia` (`movie_id`, `movie_trivia_id`, `movie_trivia_name`) VALUES
(12, 121, 'Harvey Keitel rehearsed with pimps to prepare for his role.');



-- Insertion into people entities
-- --------------------------------------------------------

INSERT INTO `people` (`people_id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(121,'Travis Bickle','Robert','','De Niro','M','RDeniro121.jpg'),
(122,'Iris','Jodie','','Foster','F','JFoster122.jpg'),
(123,'Tom','Albert','','Brooks','M','ABrooks123.jpg'),
(124,'Sport','Harvey','','Keitel','M','HKeitel124.jpg'),
(125,'Charles Palantine','Leonard','','Harris','M','LHarris125.jpg'),
(126,'Composer','Bernard','','Hermann','M','BHermann126.jpg'),
(127,'Betsy','Cybill','','Shepherd','F','CShepherd127.jpg'),
(128,'DIRECTOR','Martin','','Scorsese','M','MScorsese128.jpg'),
(129,'PRODUCER','Julia','','Phillips','F','JPhillips129.jpg');

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`, `screen_name`) VALUES
(12,121,'Main Actor','Travis Bickle'),
(12,122,'Main Actress','Iris'),
(12,123,'Supporting Actor','Tom'),
(12,124,'Supporting Actor','Sport'),
(12,125,'Supporting Actor','Palantine'),
(12,126,'Composer',''),
(12,127,'Supporting Actress','Betsy'),
(12,128,'Director',''),
(12,129,'Producer','');

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES
(121, 121, 'Robert Deniro stars in many other films');



-- Insertion into song entities
-- --------------------------------------------------------

INSERT INTO `songs` (`song_id`, `title`, `lyrics`, `theme`) VALUES
(120,'Main','',''),
(121,'God','',''),
(122,'Cab','',''),
(123,'Sleep','',''),
(124,'Phone','',''),
(125,'Magnum','',''),
(126,'Shape','',''),
(127,'Iris','',''),
(128,'Bill','',''),
(129,'Assassination','','');

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(12,120),
(12,121),
(12,122),
(12,123),
(12,124),
(12,125),
(12,126),
(12,127),
(12,128),
(12,129);

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(120,'Main'),
(121,'God'),
(122,'Cab'),
(123,'Sleep'),
(124,'Phone'),
(125,'Magnum'),
(126,'Shape'),
(127,'Iris'),
(128,'Bill'),
(129,'Assassination');

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(120,'https://www.youtube.com/watch?v=UCVaU-R2Qes&list=PLE3A2E610E77911BE','audio',120),
(121,'https://www.youtube.com/watch?v=u4jEymilyF0&list=PLE3A2E610E77911BE&index=2','audio',121),
(122,'https://www.youtube.com/watch?v=axzAska686o&list=PLE3A2E610E77911BE&index=3','audio',122),
(123,'https://www.youtube.com/watch?v=U4d3bJYDS0Y&list=PLE3A2E610E77911BE&index=4','audio',123),
(124,'https://www.youtube.com/watch?v=HI31d2-mPzI&list=PLE3A2E610E77911BE&index=5','audio',124),
(125,'https://www.youtube.com/watch?v=2e-IV2aquIs&list=PLE3A2E610E77911BE&index=6','audio',125),
(126,'https://www.youtube.com/watch?v=QZ9DmWASJFs&list=RDQZ9DmWASJFs&start_radio=1&t=26','audio',126),
(127,'https://www.youtube.com/watch?v=sn1N_Pp1xmw','audio',127),
(128,'https://www.youtube.com/watch?v=xizbq7lKTVQ','audio',128),
(129,'https://www.youtube.com/watch?v=sv8ZYCwgssI','audio',129);

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(120,126,'Composer'),
(121,126,'Composer'),
(122,126,'Composer'),
(123,126,'Composer'),
(124,126,'Composer'),
(125,126,'Composer'),
(126,126,'Composer'),
(127,126,'Composer'),
(128,126,'Composer'),
(129,126,'Composer');

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES
(120,121,'A full soundtrack was produced for Taxi Driver.');
