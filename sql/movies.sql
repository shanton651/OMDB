-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2020 at 07:49 PM
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
-- Table structure for table `Movies`
--

CREATE TABLE `movies` (
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Movies`
--

INSERT INTO `movies` (`name`, `english_name`, `year`) VALUES
('After', 'After', 2019),
('El Laberinto del Fauno', 'Pan\'s Labyrinth', 2006),
('El Mar Adentro', 'The Sea Inside', 2004),
('El Orfanato', 'The Orphanage', 2007),
('El Secreto de Sus Ojos', 'The Secret in Their Eyes', 2009),
('Even The Rain', 'Even The Rain', 2010),
('Just Mercy', '', 2019),
('King Kong', 'King Kong', 2005),
('Lawrence of Arabia', 'Lawrence of Arabia', 1962),
('Mala Educación', 'Bad Education', 2004),
('Open Your Eyes', 'Open Your Eyes', 1997),
('Rec', 'Rec', 2007),
('Slumdog Millionaire', 'Slumdog Millionaire', 2008),
('The Skin I Live In', 'The Skin I Live In', 2011),
('Titanic', 'Titanic', 1997);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
