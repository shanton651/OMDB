-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2020 at 05:11 AM
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movie_view`  AS  select `movies`.`movie_id` AS `movie_id`,`movies`.`native_name` AS `native_name`,`movies`.`english_name` AS `english_name`,`movies`.`year_made` AS `year_made`,`movie_data`.`tag_line` AS `tag_line`,`movie_data`.`language` AS `language`,`movie_data`.`country` AS `country`,`movie_data`.`genre` AS `genre`,`movie_data`.`plot` AS `plot`,group_concat(distinct `movie_trivia`.`movie_trivia_name` separator ',') AS `movie_trivia_names`,group_concat(distinct `movie_keywords`.`keyword` separator ',') AS `keywords`,group_concat(distinct `movie_media`.`m_link` separator ',') AS `media_link`,group_concat(distinct `movie_media`.`m_link_type` separator ',') AS `media_link_type`,group_concat(distinct `songs`.`title` separator ',') AS `titles`,group_concat(distinct `people`.`stage_name` separator ',') AS `GROUP_CONCAT(distinct stage_name)`,`movie_numbers`.`running_time` AS `running_time`,`movie_numbers`.`length` AS `length`,`movie_numbers`.`strength` AS `strength`,`movie_numbers`.`weight` AS `weight`,`movie_numbers`.`budget` AS `budget`,`movie_numbers`.`box_office` AS `box_office`,`movie_anagrams`.`anagram` AS `anagram` from ((((((((((`movies` left join `movie_data` on(`movies`.`movie_id` = `movie_data`.`movie_id`)) left join `movie_trivia` on(`movies`.`movie_id` = `movie_trivia`.`movie_id`)) left join `movie_keywords` on(`movies`.`movie_id` = `movie_keywords`.`movie_id`)) left join `movie_media` on(`movies`.`movie_id` = `movie_media`.`movie_id`)) left join `movie_song` on(`movies`.`movie_id` = `movie_song`.`song_id`)) left join `songs` on(`movie_song`.`song_id` = `songs`.`song_id`)) left join `movie_people` on(`movies`.`movie_id` = `movie_people`.`movie_id`)) left join `people` on(`movie_people`.`people_id` = `people`.`people_id`)) left join `movie_numbers` on(`movies`.`movie_id` = `movie_numbers`.`movie_id`)) left join `movie_anagrams` on(`movies`.`movie_id` = `movie_anagrams`.`movie_id`)) group by `movies`.`movie_id` ;

--
-- VIEW `movie_view`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
