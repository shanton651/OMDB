-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2020 at 11:45 PM
-- Server version: 10.4.11-MariaDB
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
-- Structure for view `movie_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movie_view`  AS  select `movies`.`movie_id` AS `movie_id`,`movies`.`native_name` AS `native_name`,`movies`.`english_name` AS `english_name`,`movies`.`year_made` AS `year_made`,`movie_data`.`tag_line` AS `tag_line`,`movie_data`.`language` AS `language`,`movie_data`.`country` AS `country`,`movie_data`.`genre` AS `genre`,`movie_data`.`plot` AS `plot`,`trivia`.`trivia` AS `trivia`,`quotes`.`quotes` AS `quotes`,`keywords`.`keywords` AS `keywords`,`media`.`media` AS `media`,`song`.`songs` AS `songs`,`m_people`.`people` AS `people` from (((((((`movies` left join `movie_data` on(`movies`.`movie_id` = `movie_data`.`movie_id`)) left join (select `movie_trivia`.`movie_id` AS `movie_id`,group_concat(`movie_trivia`.`movie_id` separator ',') AS `trivia` from `movie_trivia` group by `movie_trivia`.`movie_id`) `trivia` on(`movies`.`movie_id` = `trivia`.`movie_id`)) left join (select `movie_quotes`.`movie_id` AS `movie_id`,group_concat(`movie_quotes`.`movie_id` separator ',') AS `quotes` from `movie_quotes` group by `movie_quotes`.`movie_id`) `quotes` on(`movies`.`movie_id` = `quotes`.`movie_id`)) left join (select `movie_keywords`.`movie_id` AS `movie_id`,group_concat(`movie_keywords`.`movie_id` separator ',') AS `keywords` from `movie_keywords` group by `movie_keywords`.`movie_id`) `keywords` on(`movies`.`movie_id` = `keywords`.`movie_id`)) left join (select `movie_media`.`movie_id` AS `movie_id`,group_concat(`movie_media`.`movie_id` separator ',') AS `media` from `movie_media` group by `movie_media`.`movie_id`) `media` on(`movies`.`movie_id` = `media`.`movie_id`)) left join (select `movie_song`.`movie_id` AS `movie_id`,group_concat(`movie_song`.`movie_id` separator ',') AS `songs` from `movie_song` group by `movie_song`.`movie_id`) `song` on(`movies`.`movie_id` = `song`.`movie_id`)) left join (select `movie_people`.`movie_id` AS `movie_id`,group_concat(`movie_people`.`movie_id` separator ',') AS `people` from `movie_people` group by `movie_people`.`movie_id`) `m_people` on(`movies`.`movie_id` = `m_people`.`movie_id`)) group by `movies`.`movie_id` ;

--
-- VIEW `movie_view`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
