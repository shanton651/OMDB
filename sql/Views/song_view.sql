-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 22, 2020 at 6:45 AM
-- Server version: 3.11 abdullahi
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omdb`
--

-- --------------------------------------------------------

--
-- Structure for view `song_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `song_view`  AS  select `songs`.`song_id` AS `song_id`,`songs`.`title` AS `title`,`songs`.`lyrics` AS `lyrics`,`songs`.`theme` AS `theme`,`song_media`.`song_media_id` AS `song_media_id`,`song_media`.`s_link` AS `s_link`,`song_media`.`s_link_type` AS `s_link_type`,`song_media`.`song_id` AS `song_id`,`song_people`.`song_id` AS `song_id`,`song_people`.`people_id` AS `people_id`,`song_people`.`role` AS `role`,`people`.`people_id` AS `people_id`,`people`.`stage_name` AS `stage_name`,`people`.`first_name` AS `first_name`,`people`.`last_name` AS `last_name`,`people`.`gender` AS `gender`,`movie_song`.`movie_id` AS `movie_id`,`movie_song`.`song_id` AS `song_id`,`movies`.`movie_id` AS `movie_id`,`movies`.`native_name` AS `native_name`, from (((((`songs` left   join `song_media` on(`songs`.`song_id` = `song_media`.`song_id`)) left join `song_people` on(`songs`.`song_id` = `song_people`.`song_id`)) left join `people` on(`song_people`.`people_id` = `people`.`people_id`)) left join `movie_song` on(`movie`.`song_id` = `movie_song`.`song_id`)) left join `movies` on(`movie_song`.`movie_id` = `movies`.`movie_id`)) group by `songs`.`song_id` ;

--
-- VIEW `song_view`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
-- VIEW `song_view`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
