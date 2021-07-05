-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2020 at 03:12 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omdb_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `mpr_test_data`
--

CREATE TABLE `mpr_test_data` (
  `id` int(6) NOT NULL,
  `native_name` varchar(180) NOT NULL,
  `year_made` year(4) NOT NULL,
  `stage_name` varchar(30) NOT NULL,
  `role` varchar(20) NOT NULL,
  `screen_name` varchar(30) NOT NULL,
  `execution_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mpr_test_data`
--

INSERT INTO `mpr_test_data` (`id`, `native_name`, `year_made`, `stage_name`, `role`, `screen_name`, `execution_status`) VALUES
(1, 'Hunk', 1987, 'Brad Pitt', 'Leading Actor', 'Guy at beach with drink', 'To Be Processed'),
(2, 'No Way Out', 1987, 'Brad Pitt', 'Leading Actor', 'Black-tie party guest', 'To Be Processed'),
(3, 'No Man\'s Land', 1987, 'Brad Pitt', 'Leading Actor', 'Waiter', 'To Be Processed'),
(4, 'Less Than Zero', 1987, 'Brad Pitt', 'Leading Actor', 'Partygoer/Preppie guy at fight', 'To Be Processed'),
(5, 'The Dark Side of the Sun', 1988, 'Brad Pitt', 'Leading Actor', 'Rick', 'To Be Processed'),
(6, 'Happy Together', 1989, 'Brad Pitt', 'Leading Actor', 'Brian', 'To Be Processed'),
(7, 'Cutting Class', 1989, 'Brad Pitt', 'Leading Actor', 'Dwight Ingalls', 'To Be Processed'),
(8, 'Across the Tracks', 1991, 'Brad Pitt', 'Leading Actor', 'Joe Maloney', 'To Be Processed'),
(9, 'Thelma & Louise', 1991, 'Brad Pitt', 'Leading Actor', 'J.D.', 'To Be Processed'),
(10, 'Johnny Suede', 1991, 'Brad Pitt', 'Leading Actor', 'Johnny Suede', 'To Be Processed'),
(11, 'Contact', 1992, 'Brad Pitt', 'Leading Actor', 'Cox', 'To Be Processed'),
(12, 'Cool World', 1992, 'Brad Pitt', 'Leading Actor', 'Frank Harris', 'To Be Processed'),
(13, 'A River Runs Through It', 1992, 'Brad Pitt', 'Leading Actor', 'Paul Maclean', 'To Be Processed'),
(14, 'Kalifornia', 1993, 'Brad Pitt', 'Leading Actor', 'Early Grayce', 'To Be Processed'),
(15, 'True Romance', 1993, 'Brad Pitt', 'Leading Actor', 'Floyd', 'To Be Processed'),
(16, 'The Favor', 1994, 'Brad Pitt', 'Leading Actor', 'Elliott Fowler', 'To Be Processed'),
(17, 'Interview with the Vampire', 1994, 'Brad Pitt', 'Leading Actor', 'Louis de Pointe du Lac', 'To Be Processed'),
(18, 'Legends of the Fall', 1994, 'Brad Pitt', 'Leading Actor', 'Tristan Ludlow', 'To Be Processed'),
(19, 'Seven', 1995, 'Brad Pitt', 'Leading Actor', 'David Mills', 'To Be Processed'),
(20, '12 Monkeys', 1995, 'Brad Pitt', 'Leading Actor', 'Jeffrey Goines', 'To Be Processed'),
(21, 'Sleepers', 1996, 'Brad Pitt', 'Leading Actor', 'Michael Sullivan', 'To Be Processed'),
(22, 'The Devil\'s Own', 1997, 'Brad Pitt', 'Leading Actor', 'Rory Devaney?(Francis Austin M', 'To Be Processed'),
(23, 'Seven Years in Tibet', 1997, 'Brad Pitt', 'Leading Actor', 'Heinrich Harrer', 'To Be Processed'),
(24, 'Meet Joe Black', 1998, 'Brad Pitt', 'Leading Actor', 'Young Man in Coffee Shop/The D', 'To Be Processed'),
(25, 'Fight Club', 1999, 'Brad Pitt', 'Leading Actor', 'Tyler Durden', 'To Be Processed'),
(26, 'Being John Malkovich', 1999, 'Brad Pitt', 'Leading Actor', 'Himself', 'To Be Processed'),
(27, 'Snatch', 2000, 'Brad Pitt', 'Leading Actor', 'Mickey O\'Neil', 'To Be Processed'),
(28, 'The Mexican', 2001, 'Brad Pitt', 'Leading Actor', 'Jerry Welbach', 'To Be Processed'),
(29, 'Spy Game', 2001, 'Brad Pitt', 'Leading Actor', 'Tom Bishop', 'To Be Processed'),
(30, 'Ocean\'s Eleven', 2001, 'Brad Pitt', 'Leading Actor', 'Rusty Ryan', 'To Be Processed'),
(31, 'Confessions of a Dangerous Mind', 2002, 'Brad Pitt', 'Leading Actor', 'Brad', 'To Be Processed'),
(32, 'Sinbad: Legend of the Seven Seas', 2003, 'Brad Pitt', 'Leading Actor', 'Sinbad?(Voice)', 'To Be Processed'),
(33, 'Troy', 2004, 'Brad Pitt', 'Leading Actor', 'Achilles', 'To Be Processed'),
(34, 'Ocean\'s Twelve', 2004, 'Brad Pitt', 'Leading Actor', 'Rusty Ryan', 'To Be Processed'),
(35, 'Mr. & Mrs. Smith', 2005, 'Brad Pitt', 'Leading Actor', 'John Smith', 'To Be Processed'),
(36, 'God Grew Tired of Us', 2006, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(37, 'The Departed', 2006, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(38, 'Running with Scissors', 2006, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(39, 'Babel', 2006, 'Brad Pitt', 'Leading Actor', 'Richard Jones', 'To Be Processed'),
(40, 'The Tehuacan Project', 2007, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(41, 'Year of the Dog', 2007, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(42, 'A Mighty Heart', 2007, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(43, 'Ocean\'s Thirteen', 2007, 'Brad Pitt', 'Leading Actor', 'Rusty Ryan', 'To Be Processed'),
(44, 'The Assassination of Jesse James', 2007, 'Brad Pitt', 'Leading Actor', 'Jesse James', 'To Be Processed'),
(45, 'by the Coward Robert Ford', 0000, 'Brad Pitt', 'Leading Actor', '', 'To Be Processed'),
(46, 'Burn After Reading', 2008, 'Brad Pitt', 'Leading Actor', 'Chad Feldheimer', 'To Be Processed'),
(47, 'The Curious Case of Benjamin Button', 2008, 'Brad Pitt', 'Leading Actor', 'Benjamin Button', 'To Be Processed'),
(48, 'Inglourious Basterds', 2009, 'Brad Pitt', 'Leading Actor', 'Lt. Aldo Raine', 'To Be Processed'),
(49, 'The Time Traveler\'s Wife', 2009, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(50, 'The Private Lives of Pippa Lee', 2009, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(51, 'Megamind', 2010, 'Brad Pitt', 'Leading Actor', 'Metro Man (Voice)', 'To Be Processed'),
(52, 'Kick-Ass', 2010, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(53, 'Eat Pray Love', 2010, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(54, 'The Tree of Life', 2011, 'Brad Pitt', 'Leading Actor', 'O\'Brien', 'To Be Processed'),
(55, 'Moneyball', 2011, 'Brad Pitt', 'Leading Actor', 'Billy Beane', 'To Be Processed'),
(56, 'Happy Feet Two', 2011, 'Brad Pitt', 'Leading Actor', 'Will the Krill (Voice)', 'To Be Processed'),
(57, 'Killing Them Softly', 2012, 'Brad Pitt', 'Leading Actor', 'Jackie Cogan', 'To Be Processed'),
(58, 'World War Z', 2013, 'Brad Pitt', 'Leading Actor', 'Gerry Lane', 'To Be Processed'),
(59, 'Kick-Ass 2', 2013, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(60, 'Big Men', 2013, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(61, 'The Counselor', 2013, 'Brad Pitt', 'Leading Actor', 'Westray', 'To Be Processed'),
(62, 'Fury', 2014, 'Brad Pitt', 'Leading Actor', 'Don \"Wardaddy\" Collier', 'To Be Processed'),
(63, 'Selma', 2014, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(64, 'True Story', 2015, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(65, 'The Audition', 2015, 'Brad Pitt', 'Leading Actor', 'Himself', 'To Be Processed'),
(66, 'By the Sea', 2015, 'Brad Pitt', 'Leading Actor', 'Roland', 'To Be Processed'),
(67, 'Hitting the Apex', 2015, 'Brad Pitt', 'Leading Actor', 'Narrator', 'To Be Processed'),
(68, 'The Big Short', 2015, 'Brad Pitt', 'Leading Actor', 'Ben Rickert', 'To Be Processed'),
(69, 'Moonlight', 2016, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(70, 'Voyage of Time', 2016, 'Brad Pitt', 'Leading Actor', 'Narrator (Voice)', 'To Be Processed'),
(71, 'Allied', 2016, 'Brad Pitt', 'Leading Actor', 'Max Vatan', 'To Be Processed'),
(72, 'Okja', 2017, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(73, 'War Machine', 2017, 'Brad Pitt', 'Leading Actor', 'Gen. Glen McMahon', 'To Be Processed'),
(74, 'Brad\'s Status', 2017, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(75, 'Deadpool 2', 2018, 'Brad Pitt', 'Leading Actor', 'Telford Porter/Vanisher', 'To Be Processed'),
(76, 'Beautiful Boy', 2018, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(77, 'If Beale Street Could Talk', 2018, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(78, 'Vice', 2018, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(79, 'The Last Black Man in San Francisco', 2019, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(80, 'Once Upon a Time in Hollywood', 2019, 'Brad Pitt', 'Leading Actor', 'Cliff Booth', 'To Be Processed'),
(81, 'The King', 2019, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(82, 'Ad Astra', 2019, 'Brad Pitt', 'Leading Actor', 'Major Roy McBride', 'To Be Processed'),
(83, 'Kajillionaire', 2020, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(84, 'Irresistible', 2020, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(85, 'Blonde', 2020, 'Brad Pitt', 'Leading Actor', '?', 'To Be Processed'),
(86, 'Trudell', 2005, 'Angeline Jolie', 'Executive producer', '?', 'To Be Processed'),
(87, 'Confessions of an Action Star', 2005, 'Angeline Jolie', 'Cameo', '?', 'To Be Processed'),
(88, 'A Place in Time?', 2007, 'Angeline Jolie', 'Director and produce', '?', 'To Be Processed'),
(89, 'In the Land of Blood and Honey', 2011, 'Angeline Jolie', 'Director, writer and', '?', 'To Be Processed'),
(90, 'Difret', 2014, 'Angeline Jolie', 'Executive producer', '?', 'To Be Processed'),
(91, 'Unbroken', 2014, 'Angeline Jolie', 'Director and produce', '?', 'To Be Processed'),
(92, 'First They Killed My Father', 2017, 'Angeline Jolie', 'Director, writer and', '?', 'To Be Processed'),
(93, 'The Breadwinner', 2017, 'Angeline Jolie', 'Executive producer', '?', 'To Be Processed'),
(94, 'Serendipity?', 2019, 'Angeline Jolie', 'Executive producer', '?', 'To Be Processed'),
(95, 'Hackers', 1995, 'Angeline Jolie', '', 'Acid Burn', 'To Be Processed'),
(96, 'Alice & Viril', 1993, 'Angeline Jolie', 'Short film', 'Alice', 'To Be Processed'),
(97, 'Angela & Viril', 1993, 'Angeline Jolie', 'Short film', 'Angela', 'To Be Processed'),
(98, 'Pushing Tin', 1999, 'Angeline Jolie', '', 'Mary Bell', 'To Be Processed'),
(99, 'Playing God', 1997, 'Angeline Jolie', '', 'Claire', 'To Be Processed'),
(100, 'Changeling', 2008, 'Angeline Jolie', '', 'Christine Collins', 'To Be Processed'),
(101, 'Sky Captain and the World of Tomorrow', 2004, 'Angeline Jolie', '', 'Franky Cook', 'To Be Processed'),
(102, 'Lara Croft: Tomb Raider', 2001, 'Angeline Jolie', '', 'Lara Croft', 'To Be Processed'),
(103, 'Lara Croft: Tomb Raider ? The Cradle of Life', 2003, 'Angeline Jolie', '', 'Lara Croft', 'To Be Processed'),
(104, 'The Bone Collector', 1999, 'Angeline Jolie', '', 'Amelia Donaghy', 'To Be Processed'),
(105, 'Mojave Moon', 1996, 'Angeline Jolie', '', 'Ellie', 'To Be Processed'),
(106, 'Wanted', 2008, 'Angeline Jolie', '', 'Fox', 'To Be Processed'),
(107, 'Beowulf', 2007, 'Angeline Jolie', '', 'Grendel\'s mother', 'To Be Processed'),
(108, 'Those Who Wish Me Dead?', 2020, 'Angeline Jolie', 'Post-production', 'Hannah Faber', 'To Be Processed'),
(109, 'Playing by Heart', 1998, 'Angeline Jolie', '', 'Joan', 'To Be Processed'),
(110, 'Beyond Borders', 2003, 'Angeline Jolie', '', 'Sarah Jordan', 'To Be Processed'),
(111, 'Life or Something Like It', 2002, 'Angeline Jolie', '', 'Lanie Kerrigan', 'To Be Processed'),
(112, 'Foxfire', 1996, 'Angeline Jolie', '', 'Legs Sadovsky', 'To Be Processed'),
(113, 'Girl, Interrupted', 1999, 'Angeline Jolie', '', 'Lisa Rowe', 'To Be Processed'),
(114, 'Shark Tale', 2004, 'Angeline Jolie', '', 'Lola (voice)', 'To Be Processed'),
(115, 'Love Is All There Is', 1996, 'Angeline Jolie', '', 'Gina Malacici', 'To Be Processed'),
(116, 'Maleficent', 2014, 'Angeline Jolie', 'Executive producer', 'Maleficent', 'To Be Processed'),
(117, 'Maleficent: Mistress of Evil', 2019, 'Angeline Jolie', 'Also producer', 'Maleficent', 'To Be Processed'),
(118, 'The Good Shepherd', 2006, 'Angeline Jolie', '', 'Margaret \"Clover\" Russell Wils', 'To Be Processed'),
(119, 'Kung Fu Panda', 2008, 'Angeline Jolie', '', 'Master Tigress (voice)', 'To Be Processed'),
(120, 'Kung Fu Panda 2', 2011, 'Angeline Jolie', '', 'Master Tigress (voice)', 'To Be Processed'),
(121, 'Kung Fu Panda: Secrets of the Masters', 2011, 'Angeline Jolie', '', 'Master Tigress (voice)', 'To Be Processed'),
(122, 'Kung Fu Panda 3', 2016, 'Angeline Jolie', '', 'Master Tigress (voice)', 'To Be Processed'),
(123, 'Hell\'s Kitchen', 1998, 'Angeline Jolie', '', 'Gloria McNeary', 'To Be Processed'),
(124, 'Alexander', 2004, 'Angeline Jolie', '', 'Olympias', 'To Be Processed'),
(125, 'A Mighty Heart', 2007, 'Angeline Jolie', '', 'Mariane Pearl', 'To Be Processed'),
(126, 'Cyborg 2', 1993, 'Angeline Jolie', '', 'Casella \"Cash\" Reese', 'To Be Processed'),
(127, 'The Fever', 2004, 'Angeline Jolie', 'Cameo', 'Revolutionary', 'To Be Processed'),
(128, 'Come Away', 2020, 'Angeline Jolie', '', 'Rose', 'To Be Processed'),
(129, 'Original Sin', 2001, 'Angeline Jolie', '', 'Julia Russell', 'To Be Processed'),
(130, 'Salt', 2010, 'Angeline Jolie', '', 'Evelyn Salt', 'To Be Processed'),
(131, 'Taking Lives', 2004, 'Angeline Jolie', '', 'Illeana Scott', 'To Be Processed'),
(132, 'Mr. & Mrs. Smith', 2005, 'Angeline Jolie', '', 'Jane Smith', 'To Be Processed'),
(133, 'The One and Only Ivan?', 2020, 'Angeline Jolie', 'Post-production; als', 'Stella (voice)', 'To Be Processed'),
(134, 'Without Evidence', 1996, 'Angeline Jolie', '', 'Jodie Swearingen', 'To Be Processed'),
(135, 'The Tourist', 2010, 'Angeline Jolie', '', 'Elise Clifton-Ward', 'To Be Processed'),
(136, 'The Eternals?', 2021, 'Angeline Jolie', 'Post-production', 'Thena', 'To Be Processed'),
(137, 'Lookin\' to Get Out', 1982, 'Angeline Jolie', 'Credited as Angelina', 'Tosh', 'To Be Processed'),
(138, 'Gone in 60 Seconds', 2000, 'Angeline Jolie', '', 'Sara \"Sway\" Wayland', 'To Be Processed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mpr_test_data`
--
ALTER TABLE `mpr_test_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mpr_test_data`
--
ALTER TABLE `mpr_test_data`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;