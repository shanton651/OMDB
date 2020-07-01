-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 02:41 AM
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
CREATE DATABASE IF NOT EXISTS `omdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `omdb`;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(6) NOT NULL,
  `native_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_made` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(1, 'Forrest Gump', 'Forrest Gump', 1994),
(2, 'local_name_2', 'english_name_2', 1955),
(3, 'local_name_3', 'english_name_3', 1999),
(4, 'local_name_4', 'english_name_4', 1998),
(5, 'local_name_5', 'english_name_5', 2013),
(6, 'local_name_6', 'english_name_6', 1980),
(7, 'local_name_7', 'english_name_7', 1999),
(8, 'local_name_8', 'english_name_8', 1976),
(9, 'local_name_9', 'english_name_9', 1977),
(10, 'local_name_10', 'english_name_10', 1999),
(11, 'local_name_11', 'english_name_11', 2003),
(12, 'local_name_12', 'english_name_12', 1995),
(13, 'local_name_13', 'english_name_13', 1986),
(14, 'local_name_14', 'english_name_14', 2008),
(15, 'local_name_15', 'english_name_15', 1973),
(16, 'local_name_16', 'english_name_16', 2014),
(17, 'local_name_17', 'english_name_17', 2020),
(18, 'local_name_18', 'english_name_18', 1995),
(19, 'local_name_19', 'english_name_19', 1961),
(20, 'local_name_20', 'english_name_20', 2012),
(21, 'local_name_21', 'english_name_21', 2008),
(22, 'local_name_22', 'english_name_22', 1967),
(23, 'local_name_23', 'english_name_23', 1950),
(24, 'local_name_24', 'english_name_24', 1963),
(25, 'local_name_25', 'english_name_25', 2004),
(26, 'local_name_26', 'english_name_26', 1987),
(27, 'local_name_27', 'english_name_27', 1965),
(28, 'local_name_28', 'english_name_28', 2010),
(29, 'local_name_29', 'english_name_29', 1965),
(30, 'local_name_30', 'english_name_30', 1992),
(31, 'local_name_31', 'english_name_31', 1974),
(32, 'local_name_32', 'english_name_32', 1958),
(33, 'local_name_33', 'english_name_33', 2004),
(34, 'local_name_34', 'english_name_34', 1999),
(35, 'local_name_35', 'english_name_35', 1991),
(36, 'local_name_36', 'english_name_36', 1995),
(37, 'local_name_37', 'english_name_37', 2007),
(38, 'local_name_38', 'english_name_38', 2001),
(39, 'local_name_39', 'english_name_39', 1995),
(40, 'local_name_40', 'english_name_40', 1982),
(41, 'local_name_41', 'english_name_41', 1988),
(42, 'local_name_42', 'english_name_42', 1961),
(43, 'local_name_43', 'english_name_43', 1997),
(44, 'local_name_44', 'english_name_44', 1950),
(45, 'local_name_45', 'english_name_45', 1998),
(46, 'local_name_46', 'english_name_46', 1999),
(47, 'local_name_47', 'english_name_47', 1954),
(48, 'local_name_48', 'english_name_48', 1991),
(49, 'local_name_49', 'english_name_49', 1968),
(50, 'local_name_50', 'english_name_50', 1967),
(51, 'local_name_51', 'english_name_51', 1995),
(52, 'local_name_52', 'english_name_52', 1984),
(53, 'local_name_53', 'english_name_53', 1982),
(54, 'local_name_54', 'english_name_54', 1987),
(55, 'local_name_55', 'english_name_55', 1978),
(56, 'local_name_56', 'english_name_56', 1963),
(57, 'local_name_57', 'english_name_57', 1957),
(58, 'local_name_58', 'english_name_58', 1971),
(59, 'local_name_59', 'english_name_59', 1975),
(60, 'local_name_60', 'english_name_60', 1962),
(61, 'local_name_61', 'english_name_61', 2000),
(62, 'local_name_62', 'english_name_62', 2010),
(63, 'local_name_63', 'english_name_63', 1992),
(64, 'local_name_64', 'english_name_64', 1977),
(65, 'local_name_65', 'english_name_65', 2014),
(66, 'local_name_66', 'english_name_66', 1980),
(67, 'local_name_67', 'english_name_67', 1971),
(68, 'local_name_68', 'english_name_68', 1978),
(69, 'local_name_69', 'english_name_69', 1977),
(70, 'local_name_70', 'english_name_70', 1998),
(71, 'local_name_71', 'english_name_71', 1973),
(72, 'local_name_72', 'english_name_72', 1973),
(73, 'local_name_73', 'english_name_73', 1981),
(74, 'local_name_74', 'english_name_74', 2016),
(75, 'local_name_75', 'english_name_75', 2008),
(76, 'local_name_76', 'english_name_76', 1956),
(77, 'local_name_77', 'english_name_77', 2003),
(78, 'local_name_78', 'english_name_78', 1990),
(79, 'local_name_79', 'english_name_79', 1960),
(80, 'local_name_80', 'english_name_80', 1956),
(81, 'local_name_81', 'english_name_81', 1983),
(82, 'local_name_82', 'english_name_82', 2001),
(83, 'local_name_83', 'english_name_83', 1963),
(84, 'local_name_84', 'english_name_84', 2008),
(85, 'local_name_85', 'english_name_85', 1988),
(86, 'local_name_86', 'english_name_86', 1987),
(87, 'local_name_87', 'english_name_87', 1996),
(88, 'local_name_88', 'english_name_88', 1987),
(89, 'local_name_89', 'english_name_89', 2011),
(90, 'local_name_90', 'english_name_90', 1978),
(91, 'local_name_91', 'english_name_91', 1984),
(92, 'local_name_92', 'english_name_92', 1989),
(93, 'local_name_93', 'english_name_93', 1969),
(94, 'local_name_94', 'english_name_94', 2014),
(95, 'local_name_95', 'english_name_95', 1951),
(96, 'local_name_96', 'english_name_96', 2005),
(97, 'local_name_97', 'english_name_97', 1986),
(98, 'local_name_98', 'english_name_98', 2009),
(99, 'local_name_99', 'english_name_99', 2006),
(100, 'local_name_100', 'english_name_100', 2013),
(101, 'local_name_101', 'english_name_101', 2020),
(102, 'local_name_102', 'english_name_102', 1981),
(103, 'local_name_103', 'english_name_103', 2011),
(104, 'local_name_104', 'english_name_104', 1982),
(105, 'local_name_105', 'english_name_105', 1969),
(106, 'local_name_106', 'english_name_106', 2020),
(107, 'local_name_107', 'english_name_107', 1978),
(108, 'local_name_108', 'english_name_108', 1971),
(109, 'local_name_109', 'english_name_109', 1983),
(110, 'local_name_110', 'english_name_110', 1951),
(111, 'local_name_111', 'english_name_111', 1992),
(112, 'local_name_112', 'english_name_112', 1959),
(113, 'local_name_113', 'english_name_113', 1965),
(114, 'local_name_114', 'english_name_114', 1984),
(115, 'local_name_115', 'english_name_115', 1997),
(116, 'local_name_116', 'english_name_116', 1977),
(117, 'local_name_117', 'english_name_117', 1960),
(118, 'local_name_118', 'english_name_118', 2002),
(119, 'local_name_119', 'english_name_119', 1968),
(120, 'local_name_120', 'english_name_120', 2013),
(121, 'local_name_121', 'english_name_121', 2008),
(122, 'local_name_122', 'english_name_122', 2012),
(123, 'local_name_123', 'english_name_123', 1967),
(124, 'local_name_124', 'english_name_124', 1989),
(125, 'local_name_125', 'english_name_125', 1976),
(126, 'local_name_126', 'english_name_126', 1994),
(127, 'local_name_127', 'english_name_127', 1959),
(128, 'local_name_128', 'english_name_128', 1976),
(129, 'local_name_129', 'english_name_129', 1986),
(130, 'local_name_130', 'english_name_130', 1993),
(131, 'local_name_131', 'english_name_131', 1961),
(132, 'local_name_132', 'english_name_132', 1962),
(133, 'local_name_133', 'english_name_133', 2018),
(134, 'local_name_134', 'english_name_134', 1993),
(135, 'local_name_135', 'english_name_135', 2018),
(136, 'local_name_136', 'english_name_136', 1957),
(137, 'local_name_137', 'english_name_137', 1990),
(138, 'local_name_138', 'english_name_138', 1983),
(139, 'local_name_139', 'english_name_139', 2003),
(140, 'local_name_140', 'english_name_140', 2019),
(141, 'local_name_141', 'english_name_141', 2002),
(142, 'local_name_142', 'english_name_142', 1993),
(143, 'local_name_143', 'english_name_143', 1970),
(144, 'local_name_144', 'english_name_144', 2012),
(145, 'local_name_145', 'english_name_145', 1958),
(146, 'local_name_146', 'english_name_146', 1960),
(147, 'local_name_147', 'english_name_147', 2014),
(148, 'local_name_148', 'english_name_148', 2001),
(149, 'local_name_149', 'english_name_149', 1961),
(150, 'local_name_150', 'english_name_150', 2013),
(151, 'local_name_151', 'english_name_151', 1989),
(152, 'local_name_152', 'english_name_152', 1986),
(153, 'local_name_153', 'english_name_153', 1994),
(154, 'local_name_154', 'english_name_154', 1966),
(155, 'local_name_155', 'english_name_155', 2003),
(156, 'local_name_156', 'english_name_156', 1958),
(157, 'local_name_157', 'english_name_157', 1976),
(158, 'local_name_158', 'english_name_158', 1960),
(159, 'local_name_159', 'english_name_159', 1951),
(160, 'local_name_160', 'english_name_160', 1993),
(161, 'local_name_161', 'english_name_161', 1989),
(162, 'local_name_162', 'english_name_162', 1989),
(163, 'local_name_163', 'english_name_163', 1999),
(164, 'local_name_164', 'english_name_164', 1994),
(165, 'local_name_165', 'english_name_165', 2000),
(166, 'local_name_166', 'english_name_166', 2006),
(167, 'local_name_167', 'english_name_167', 1984),
(168, 'local_name_168', 'english_name_168', 1953),
(169, 'local_name_169', 'english_name_169', 1979),
(170, 'local_name_170', 'english_name_170', 2010),
(171, 'local_name_171', 'english_name_171', 1999),
(172, 'local_name_172', 'english_name_172', 1962),
(173, 'local_name_173', 'english_name_173', 2013),
(174, 'local_name_174', 'english_name_174', 2012),
(175, 'local_name_175', 'english_name_175', 2003),
(176, 'local_name_176', 'english_name_176', 2001),
(177, 'local_name_177', 'english_name_177', 1970),
(178, 'local_name_178', 'english_name_178', 1990),
(179, 'local_name_179', 'english_name_179', 1992),
(180, 'local_name_180', 'english_name_180', 1972),
(181, 'local_name_181', 'english_name_181', 1997),
(182, 'local_name_182', 'english_name_182', 1968),
(183, 'local_name_183', 'english_name_183', 1998),
(184, 'local_name_184', 'english_name_184', 2013),
(185, 'local_name_185', 'english_name_185', 1951),
(186, 'local_name_186', 'english_name_186', 2008),
(187, 'local_name_187', 'english_name_187', 1977),
(188, 'local_name_188', 'english_name_188', 1986),
(189, 'local_name_189', 'english_name_189', 1997),
(190, 'local_name_190', 'english_name_190', 1971),
(191, 'local_name_191', 'english_name_191', 1973),
(192, 'local_name_192', 'english_name_192', 1984),
(193, 'local_name_193', 'english_name_193', 1977),
(194, 'local_name_194', 'english_name_194', 2011),
(195, 'local_name_195', 'english_name_195', 1959),
(196, 'local_name_196', 'english_name_196', 1953),
(197, 'local_name_197', 'english_name_197', 1994),
(198, 'local_name_198', 'english_name_198', 1975),
(199, 'local_name_199', 'english_name_199', 2010),
(200, 'local_name_200', 'english_name_200', 1953),
(201, 'local_name_201', 'english_name_201', 2013),
(202, 'local_name_202', 'english_name_202', 1974),
(203, 'local_name_203', 'english_name_203', 1976),
(204, 'local_name_204', 'english_name_204', 2009),
(205, 'local_name_205', 'english_name_205', 2006),
(206, 'local_name_206', 'english_name_206', 1974),
(207, 'local_name_207', 'english_name_207', 2000),
(208, 'local_name_208', 'english_name_208', 1963),
(209, 'local_name_209', 'english_name_209', 2019),
(210, 'local_name_210', 'english_name_210', 1976),
(211, 'local_name_211', 'english_name_211', 2002),
(212, 'local_name_212', 'english_name_212', 1986),
(213, 'local_name_213', 'english_name_213', 1985),
(214, 'local_name_214', 'english_name_214', 1981),
(215, 'local_name_215', 'english_name_215', 2011),
(216, 'local_name_216', 'english_name_216', 1993),
(217, 'local_name_217', 'english_name_217', 1988),
(218, 'local_name_218', 'english_name_218', 1978),
(219, 'local_name_219', 'english_name_219', 2007),
(220, 'local_name_220', 'english_name_220', 2006),
(221, 'local_name_221', 'english_name_221', 1979),
(222, 'local_name_222', 'english_name_222', 1977),
(223, 'local_name_223', 'english_name_223', 1956),
(224, 'local_name_224', 'english_name_224', 2011),
(225, 'local_name_225', 'english_name_225', 1953),
(226, 'local_name_226', 'english_name_226', 2016),
(227, 'local_name_227', 'english_name_227', 1964),
(228, 'local_name_228', 'english_name_228', 1963),
(229, 'local_name_229', 'english_name_229', 1967),
(230, 'local_name_230', 'english_name_230', 1957),
(231, 'local_name_231', 'english_name_231', 1995),
(232, 'local_name_232', 'english_name_232', 2000),
(233, 'local_name_233', 'english_name_233', 2008),
(234, 'local_name_234', 'english_name_234', 1950),
(235, 'local_name_235', 'english_name_235', 2011),
(236, 'local_name_236', 'english_name_236', 1961),
(237, 'local_name_237', 'english_name_237', 1966),
(238, 'local_name_238', 'english_name_238', 1971),
(239, 'local_name_239', 'english_name_239', 2015),
(240, 'local_name_240', 'english_name_240', 1957),
(241, 'local_name_241', 'english_name_241', 1974),
(242, 'local_name_242', 'english_name_242', 1998),
(243, 'local_name_243', 'english_name_243', 2016),
(244, 'local_name_244', 'english_name_244', 1963),
(245, 'local_name_245', 'english_name_245', 2019),
(246, 'local_name_246', 'english_name_246', 2007),
(247, 'local_name_247', 'english_name_247', 2016),
(248, 'local_name_248', 'english_name_248', 1980),
(249, 'local_name_249', 'english_name_249', 1999),
(250, 'local_name_250', 'english_name_250', 1999),
(251, 'local_name_251', 'english_name_251', 2013),
(252, 'local_name_252', 'english_name_252', 1974),
(253, 'local_name_253', 'english_name_253', 1975),
(254, 'local_name_254', 'english_name_254', 1970),
(255, 'local_name_255', 'english_name_255', 1982),
(256, 'local_name_256', 'english_name_256', 2005),
(257, 'local_name_257', 'english_name_257', 2002),
(258, 'local_name_258', 'english_name_258', 2018),
(259, 'local_name_259', 'english_name_259', 1982),
(260, 'local_name_260', 'english_name_260', 1998),
(261, 'local_name_261', 'english_name_261', 2004),
(262, 'local_name_262', 'english_name_262', 1958),
(263, 'local_name_263', 'english_name_263', 1980),
(264, 'local_name_264', 'english_name_264', 2010),
(265, 'local_name_265', 'english_name_265', 2004),
(266, 'local_name_266', 'english_name_266', 2003),
(267, 'local_name_267', 'english_name_267', 1962),
(268, 'local_name_268', 'english_name_268', 1964),
(269, 'local_name_269', 'english_name_269', 2008),
(270, 'local_name_270', 'english_name_270', 1987),
(271, 'local_name_271', 'english_name_271', 1959),
(272, 'local_name_272', 'english_name_272', 1969),
(273, 'local_name_273', 'english_name_273', 1994),
(274, 'local_name_274', 'english_name_274', 2003),
(275, 'local_name_275', 'english_name_275', 1968),
(276, 'local_name_276', 'english_name_276', 2018),
(277, 'local_name_277', 'english_name_277', 2006),
(278, 'local_name_278', 'english_name_278', 1953),
(279, 'local_name_279', 'english_name_279', 2020),
(280, 'local_name_280', 'english_name_280', 1997),
(281, 'local_name_281', 'english_name_281', 1950),
(282, 'local_name_282', 'english_name_282', 1955),
(283, 'local_name_283', 'english_name_283', 1979),
(284, 'local_name_284', 'english_name_284', 1995),
(285, 'local_name_285', 'english_name_285', 1986),
(286, 'local_name_286', 'english_name_286', 1968),
(287, 'local_name_287', 'english_name_287', 1963),
(288, 'local_name_288', 'english_name_288', 2005),
(289, 'local_name_289', 'english_name_289', 2007),
(290, 'local_name_290', 'english_name_290', 1988),
(291, 'local_name_291', 'english_name_291', 2011),
(292, 'local_name_292', 'english_name_292', 1990),
(293, 'local_name_293', 'english_name_293', 1957),
(294, 'local_name_294', 'english_name_294', 1956),
(295, 'local_name_295', 'english_name_295', 1993),
(296, 'local_name_296', 'english_name_296', 2015),
(297, 'local_name_297', 'english_name_297', 1990),
(298, 'local_name_298', 'english_name_298', 2008),
(299, 'local_name_299', 'english_name_299', 2017),
(300, 'local_name_300', 'english_name_300', 1958),
(301, 'local_name_301', 'english_name_301', 1973),
(302, 'local_name_302', 'english_name_302', 1991),
(303, 'local_name_303', 'english_name_303', 1970),
(304, 'local_name_304', 'english_name_304', 1994),
(305, 'local_name_305', 'english_name_305', 1995),
(306, 'local_name_306', 'english_name_306', 2011),
(307, 'local_name_307', 'english_name_307', 1979),
(308, 'local_name_308', 'english_name_308', 1962),
(309, 'local_name_309', 'english_name_309', 1993),
(310, 'local_name_310', 'english_name_310', 1989),
(311, 'local_name_311', 'english_name_311', 1997),
(312, 'local_name_312', 'english_name_312', 1960),
(313, 'local_name_313', 'english_name_313', 1967),
(314, 'local_name_314', 'english_name_314', 2007),
(315, 'local_name_315', 'english_name_315', 1975),
(316, 'local_name_316', 'english_name_316', 2019),
(317, 'local_name_317', 'english_name_317', 1993),
(318, 'local_name_318', 'english_name_318', 1976),
(319, 'local_name_319', 'english_name_319', 1951),
(320, 'local_name_320', 'english_name_320', 1958),
(321, 'local_name_321', 'english_name_321', 1990),
(322, 'local_name_322', 'english_name_322', 1978),
(323, 'local_name_323', 'english_name_323', 1953),
(324, 'local_name_324', 'english_name_324', 1959),
(325, 'local_name_325', 'english_name_325', 1964),
(326, 'local_name_326', 'english_name_326', 2019),
(327, 'local_name_327', 'english_name_327', 2017),
(328, 'local_name_328', 'english_name_328', 2019),
(329, 'local_name_329', 'english_name_329', 1990),
(330, 'local_name_330', 'english_name_330', 1956),
(331, 'local_name_331', 'english_name_331', 1982),
(332, 'local_name_332', 'english_name_332', 1976),
(333, 'local_name_333', 'english_name_333', 2012),
(334, 'local_name_334', 'english_name_334', 1994),
(335, 'local_name_335', 'english_name_335', 1971),
(336, 'local_name_336', 'english_name_336', 1986),
(337, 'local_name_337', 'english_name_337', 1999),
(338, 'local_name_338', 'english_name_338', 1977),
(339, 'local_name_339', 'english_name_339', 1994),
(340, 'local_name_340', 'english_name_340', 2019),
(341, 'local_name_341', 'english_name_341', 1975),
(342, 'local_name_342', 'english_name_342', 1974),
(343, 'local_name_343', 'english_name_343', 1954),
(344, 'local_name_344', 'english_name_344', 1952),
(345, 'local_name_345', 'english_name_345', 2015),
(346, 'local_name_346', 'english_name_346', 1976),
(347, 'local_name_347', 'english_name_347', 2017),
(348, 'local_name_348', 'english_name_348', 1971),
(349, 'local_name_349', 'english_name_349', 1987),
(350, 'local_name_350', 'english_name_350', 2019),
(351, 'local_name_351', 'english_name_351', 1993),
(352, 'local_name_352', 'english_name_352', 1960),
(353, 'local_name_353', 'english_name_353', 1976),
(354, 'local_name_354', 'english_name_354', 1960),
(355, 'local_name_355', 'english_name_355', 2017),
(356, 'local_name_356', 'english_name_356', 1964),
(357, 'local_name_357', 'english_name_357', 1981),
(358, 'local_name_358', 'english_name_358', 1980),
(359, 'local_name_359', 'english_name_359', 2005),
(360, 'local_name_360', 'english_name_360', 1978),
(361, 'local_name_361', 'english_name_361', 1972),
(362, 'local_name_362', 'english_name_362', 2014),
(363, 'local_name_363', 'english_name_363', 2006),
(364, 'local_name_364', 'english_name_364', 1952),
(365, 'local_name_365', 'english_name_365', 1971),
(366, 'local_name_366', 'english_name_366', 1966),
(367, 'local_name_367', 'english_name_367', 2017),
(368, 'local_name_368', 'english_name_368', 1991),
(369, 'local_name_369', 'english_name_369', 1952),
(370, 'local_name_370', 'english_name_370', 1968),
(371, 'local_name_371', 'english_name_371', 1972),
(372, 'local_name_372', 'english_name_372', 1985),
(373, 'local_name_373', 'english_name_373', 1997),
(374, 'local_name_374', 'english_name_374', 2011),
(375, 'local_name_375', 'english_name_375', 1965),
(376, 'local_name_376', 'english_name_376', 1983),
(377, 'local_name_377', 'english_name_377', 1986),
(378, 'local_name_378', 'english_name_378', 1960),
(379, 'local_name_379', 'english_name_379', 1961),
(380, 'local_name_380', 'english_name_380', 1999),
(381, 'local_name_381', 'english_name_381', 1992),
(382, 'local_name_382', 'english_name_382', 1952),
(383, 'local_name_383', 'english_name_383', 1976),
(384, 'local_name_384', 'english_name_384', 2003),
(385, 'local_name_385', 'english_name_385', 1960),
(386, 'local_name_386', 'english_name_386', 1969),
(387, 'local_name_387', 'english_name_387', 1969),
(388, 'local_name_388', 'english_name_388', 1999),
(389, 'local_name_389', 'english_name_389', 1950),
(390, 'local_name_390', 'english_name_390', 1985),
(391, 'local_name_391', 'english_name_391', 1991),
(392, 'local_name_392', 'english_name_392', 1998),
(393, 'local_name_393', 'english_name_393', 2014),
(394, 'local_name_394', 'english_name_394', 1962),
(395, 'local_name_395', 'english_name_395', 1956),
(396, 'local_name_396', 'english_name_396', 1984),
(397, 'local_name_397', 'english_name_397', 1957),
(398, 'local_name_398', 'english_name_398', 1962),
(399, 'local_name_399', 'english_name_399', 1960),
(400, 'local_name_400', 'english_name_400', 1958),
(401, 'local_name_401', 'english_name_401', 1964),
(402, 'local_name_402', 'english_name_402', 1999),
(403, 'local_name_403', 'english_name_403', 1956),
(404, 'local_name_404', 'english_name_404', 1955),
(405, 'local_name_405', 'english_name_405', 2005),
(406, 'local_name_406', 'english_name_406', 1981),
(407, 'local_name_407', 'english_name_407', 1963),
(408, 'local_name_408', 'english_name_408', 1971),
(409, 'local_name_409', 'english_name_409', 2001),
(410, 'local_name_410', 'english_name_410', 1959),
(411, 'local_name_411', 'english_name_411', 2010),
(412, 'local_name_412', 'english_name_412', 1975),
(413, 'local_name_413', 'english_name_413', 2014),
(414, 'local_name_414', 'english_name_414', 1994),
(415, 'local_name_415', 'english_name_415', 2008),
(416, 'local_name_416', 'english_name_416', 1969),
(417, 'local_name_417', 'english_name_417', 1990),
(418, 'local_name_418', 'english_name_418', 1970),
(419, 'local_name_419', 'english_name_419', 1976),
(420, 'local_name_420', 'english_name_420', 2017),
(421, 'local_name_421', 'english_name_421', 1977),
(422, 'local_name_422', 'english_name_422', 1960),
(423, 'local_name_423', 'english_name_423', 1958),
(424, 'local_name_424', 'english_name_424', 2005),
(425, 'local_name_425', 'english_name_425', 1997),
(426, 'local_name_426', 'english_name_426', 2006),
(427, 'local_name_427', 'english_name_427', 1954),
(428, 'local_name_428', 'english_name_428', 1985),
(429, 'local_name_429', 'english_name_429', 1974),
(430, 'local_name_430', 'english_name_430', 1971),
(431, 'local_name_431', 'english_name_431', 1976),
(432, 'local_name_432', 'english_name_432', 1983),
(433, 'local_name_433', 'english_name_433', 1988),
(434, 'local_name_434', 'english_name_434', 1971),
(435, 'local_name_435', 'english_name_435', 1996),
(436, 'local_name_436', 'english_name_436', 1997),
(437, 'local_name_437', 'english_name_437', 1986),
(438, 'local_name_438', 'english_name_438', 1952),
(439, 'local_name_439', 'english_name_439', 1958),
(440, 'local_name_440', 'english_name_440', 1955),
(441, 'local_name_441', 'english_name_441', 1972),
(442, 'local_name_442', 'english_name_442', 1964),
(443, 'local_name_443', 'english_name_443', 1969),
(444, 'local_name_444', 'english_name_444', 1989),
(445, 'local_name_445', 'english_name_445', 2002),
(446, 'local_name_446', 'english_name_446', 1961),
(447, 'local_name_447', 'english_name_447', 1952),
(448, 'local_name_448', 'english_name_448', 1975),
(449, 'local_name_449', 'english_name_449', 2002),
(450, 'local_name_450', 'english_name_450', 1977),
(451, 'local_name_451', 'english_name_451', 2000),
(452, 'local_name_452', 'english_name_452', 1987),
(453, 'local_name_453', 'english_name_453', 1992),
(454, 'local_name_454', 'english_name_454', 2017),
(455, 'local_name_455', 'english_name_455', 1958),
(456, 'local_name_456', 'english_name_456', 1952),
(457, 'local_name_457', 'english_name_457', 1997),
(458, 'local_name_458', 'english_name_458', 1971),
(459, 'local_name_459', 'english_name_459', 1954),
(460, 'local_name_460', 'english_name_460', 1971),
(461, 'local_name_461', 'english_name_461', 2006),
(462, 'local_name_462', 'english_name_462', 1980),
(463, 'local_name_463', 'english_name_463', 1961),
(464, 'local_name_464', 'english_name_464', 1999),
(465, 'local_name_465', 'english_name_465', 1954),
(466, 'local_name_466', 'english_name_466', 1966),
(467, 'local_name_467', 'english_name_467', 2001),
(468, 'local_name_468', 'english_name_468', 1971),
(469, 'local_name_469', 'english_name_469', 2004),
(470, 'local_name_470', 'english_name_470', 1989),
(471, 'local_name_471', 'english_name_471', 1972),
(472, 'local_name_472', 'english_name_472', 2009),
(473, 'local_name_473', 'english_name_473', 1955),
(474, 'local_name_474', 'english_name_474', 1996),
(475, 'local_name_475', 'english_name_475', 1964),
(476, 'local_name_476', 'english_name_476', 2020),
(477, 'local_name_477', 'english_name_477', 2017),
(478, 'local_name_478', 'english_name_478', 2015),
(479, 'local_name_479', 'english_name_479', 2019),
(480, 'local_name_480', 'english_name_480', 1985),
(481, 'local_name_481', 'english_name_481', 1970),
(482, 'local_name_482', 'english_name_482', 1987),
(483, 'local_name_483', 'english_name_483', 1981),
(484, 'local_name_484', 'english_name_484', 2008),
(485, 'local_name_485', 'english_name_485', 1975),
(486, 'local_name_486', 'english_name_486', 2012),
(487, 'local_name_487', 'english_name_487', 1977),
(488, 'local_name_488', 'english_name_488', 1995),
(489, 'local_name_489', 'english_name_489', 1976),
(490, 'local_name_490', 'english_name_490', 2014),
(491, 'local_name_491', 'english_name_491', 2020),
(492, 'local_name_492', 'english_name_492', 1987),
(493, 'local_name_493', 'english_name_493', 2003),
(494, 'local_name_494', 'english_name_494', 1987),
(495, 'local_name_495', 'english_name_495', 1985),
(496, 'local_name_496', 'english_name_496', 2003),
(497, 'local_name_497', 'english_name_497', 1993),
(498, 'local_name_498', 'english_name_498', 2000),
(499, 'local_name_499', 'english_name_499', 1987),
(500, 'local_name_500', 'english_name_500', 1973),
(501, 'local_name_501', 'english_name_501', 1955),
(502, 'local_name_502', 'english_name_502', 1999),
(503, 'local_name_503', 'english_name_503', 2018),
(504, 'local_name_504', 'english_name_504', 2016),
(505, 'local_name_505', 'english_name_505', 1989),
(506, 'local_name_506', 'english_name_506', 2001),
(507, 'local_name_507', 'english_name_507', 1973),
(508, 'local_name_508', 'english_name_508', 1980),
(509, 'local_name_509', 'english_name_509', 1987),
(510, 'local_name_510', 'english_name_510', 1984),
(511, 'local_name_511', 'english_name_511', 2011),
(512, 'local_name_512', 'english_name_512', 1992),
(513, 'local_name_513', 'english_name_513', 1984),
(514, 'local_name_514', 'english_name_514', 1951),
(515, 'local_name_515', 'english_name_515', 2020),
(516, 'local_name_516', 'english_name_516', 1993),
(517, 'local_name_517', 'english_name_517', 1996),
(518, 'local_name_518', 'english_name_518', 2012),
(519, 'local_name_519', 'english_name_519', 1961),
(520, 'local_name_520', 'english_name_520', 2020),
(521, 'local_name_521', 'english_name_521', 1985),
(522, 'local_name_522', 'english_name_522', 1991),
(523, 'local_name_523', 'english_name_523', 1998),
(524, 'local_name_524', 'english_name_524', 1996),
(525, 'local_name_525', 'english_name_525', 2011),
(526, 'local_name_526', 'english_name_526', 1982),
(527, 'local_name_527', 'english_name_527', 1991),
(528, 'local_name_528', 'english_name_528', 1994),
(529, 'local_name_529', 'english_name_529', 1986),
(530, 'local_name_530', 'english_name_530', 2003),
(531, 'local_name_531', 'english_name_531', 1970),
(532, 'local_name_532', 'english_name_532', 1973),
(533, 'local_name_533', 'english_name_533', 1958),
(534, 'local_name_534', 'english_name_534', 2016),
(535, 'local_name_535', 'english_name_535', 1990),
(536, 'local_name_536', 'english_name_536', 2001),
(537, 'local_name_537', 'english_name_537', 1973),
(538, 'local_name_538', 'english_name_538', 1956),
(539, 'local_name_539', 'english_name_539', 2003),
(540, 'local_name_540', 'english_name_540', 2012),
(541, 'local_name_541', 'english_name_541', 1996),
(542, 'local_name_542', 'english_name_542', 1961),
(543, 'local_name_543', 'english_name_543', 1993),
(544, 'local_name_544', 'english_name_544', 2013),
(545, 'local_name_545', 'english_name_545', 1971),
(546, 'local_name_546', 'english_name_546', 1979),
(547, 'local_name_547', 'english_name_547', 2015),
(548, 'local_name_548', 'english_name_548', 1952),
(549, 'local_name_549', 'english_name_549', 1950),
(550, 'local_name_550', 'english_name_550', 2002),
(551, 'local_name_551', 'english_name_551', 2012),
(552, 'local_name_552', 'english_name_552', 1989),
(553, 'local_name_553', 'english_name_553', 1966),
(554, 'local_name_554', 'english_name_554', 2010),
(555, 'local_name_555', 'english_name_555', 1966),
(556, 'local_name_556', 'english_name_556', 1954),
(557, 'local_name_557', 'english_name_557', 2007),
(558, 'local_name_558', 'english_name_558', 1973),
(559, 'local_name_559', 'english_name_559', 1956),
(560, 'local_name_560', 'english_name_560', 1979),
(561, 'local_name_561', 'english_name_561', 1958),
(562, 'local_name_562', 'english_name_562', 1965),
(563, 'local_name_563', 'english_name_563', 1993),
(564, 'local_name_564', 'english_name_564', 1956),
(565, 'local_name_565', 'english_name_565', 1992),
(566, 'local_name_566', 'english_name_566', 1962),
(567, 'local_name_567', 'english_name_567', 1997),
(568, 'local_name_568', 'english_name_568', 1950),
(569, 'local_name_569', 'english_name_569', 1953),
(570, 'local_name_570', 'english_name_570', 2002),
(571, 'local_name_571', 'english_name_571', 1967),
(572, 'local_name_572', 'english_name_572', 1950),
(573, 'local_name_573', 'english_name_573', 1983),
(574, 'local_name_574', 'english_name_574', 1982),
(575, 'local_name_575', 'english_name_575', 1970),
(576, 'local_name_576', 'english_name_576', 1954),
(577, 'local_name_577', 'english_name_577', 2017),
(578, 'local_name_578', 'english_name_578', 2002),
(579, 'local_name_579', 'english_name_579', 2013),
(580, 'local_name_580', 'english_name_580', 1983),
(581, 'local_name_581', 'english_name_581', 2016),
(582, 'local_name_582', 'english_name_582', 1996),
(583, 'local_name_583', 'english_name_583', 1957),
(584, 'local_name_584', 'english_name_584', 1997),
(585, 'local_name_585', 'english_name_585', 1972),
(586, 'local_name_586', 'english_name_586', 1984),
(587, 'local_name_587', 'english_name_587', 1973),
(588, 'local_name_588', 'english_name_588', 2015),
(589, 'local_name_589', 'english_name_589', 1985),
(590, 'local_name_590', 'english_name_590', 1996),
(591, 'local_name_591', 'english_name_591', 1950),
(592, 'local_name_592', 'english_name_592', 1983),
(593, 'local_name_593', 'english_name_593', 2013),
(594, 'local_name_594', 'english_name_594', 1965),
(595, 'local_name_595', 'english_name_595', 1956),
(596, 'local_name_596', 'english_name_596', 1968),
(597, 'local_name_597', 'english_name_597', 1968),
(598, 'local_name_598', 'english_name_598', 1973),
(599, 'local_name_599', 'english_name_599', 2012),
(600, 'local_name_600', 'english_name_600', 1997),
(601, 'local_name_601', 'english_name_601', 1987),
(602, 'local_name_602', 'english_name_602', 1980),
(603, 'local_name_603', 'english_name_603', 2014),
(604, 'local_name_604', 'english_name_604', 1966),
(605, 'local_name_605', 'english_name_605', 1963),
(606, 'local_name_606', 'english_name_606', 1960),
(607, 'local_name_607', 'english_name_607', 1977),
(608, 'local_name_608', 'english_name_608', 1987),
(609, 'local_name_609', 'english_name_609', 1990),
(610, 'local_name_610', 'english_name_610', 1975),
(611, 'local_name_611', 'english_name_611', 1975),
(612, 'local_name_612', 'english_name_612', 1977),
(613, 'local_name_613', 'english_name_613', 1961),
(614, 'local_name_614', 'english_name_614', 1981),
(615, 'local_name_615', 'english_name_615', 1952),
(616, 'local_name_616', 'english_name_616', 2005),
(617, 'local_name_617', 'english_name_617', 1981),
(618, 'local_name_618', 'english_name_618', 1979),
(619, 'local_name_619', 'english_name_619', 2004),
(620, 'local_name_620', 'english_name_620', 2014),
(621, 'local_name_621', 'english_name_621', 1993),
(622, 'local_name_622', 'english_name_622', 1964),
(623, 'local_name_623', 'english_name_623', 2001),
(624, 'local_name_624', 'english_name_624', 1954),
(625, 'local_name_625', 'english_name_625', 1990),
(626, 'local_name_626', 'english_name_626', 1970),
(627, 'local_name_627', 'english_name_627', 1955),
(628, 'local_name_628', 'english_name_628', 2018),
(629, 'local_name_629', 'english_name_629', 1983),
(630, 'local_name_630', 'english_name_630', 1961),
(631, 'local_name_631', 'english_name_631', 1964),
(632, 'local_name_632', 'english_name_632', 1988),
(633, 'local_name_633', 'english_name_633', 1976),
(634, 'local_name_634', 'english_name_634', 1995),
(635, 'local_name_635', 'english_name_635', 1995),
(636, 'local_name_636', 'english_name_636', 1995),
(637, 'local_name_637', 'english_name_637', 2014),
(638, 'local_name_638', 'english_name_638', 1995),
(639, 'local_name_639', 'english_name_639', 2001),
(640, 'local_name_640', 'english_name_640', 2020),
(641, 'local_name_641', 'english_name_641', 1967),
(642, 'local_name_642', 'english_name_642', 1994),
(643, 'local_name_643', 'english_name_643', 1971),
(644, 'local_name_644', 'english_name_644', 1957),
(645, 'local_name_645', 'english_name_645', 1980),
(646, 'local_name_646', 'english_name_646', 1965),
(647, 'local_name_647', 'english_name_647', 1991),
(648, 'local_name_648', 'english_name_648', 1996),
(649, 'local_name_649', 'english_name_649', 2008),
(650, 'local_name_650', 'english_name_650', 2018),
(651, 'local_name_651', 'english_name_651', 1975),
(652, 'local_name_652', 'english_name_652', 1968),
(653, 'local_name_653', 'english_name_653', 1978),
(654, 'local_name_654', 'english_name_654', 1989),
(655, 'local_name_655', 'english_name_655', 2008),
(656, 'local_name_656', 'english_name_656', 1981),
(657, 'local_name_657', 'english_name_657', 1954),
(658, 'local_name_658', 'english_name_658', 1996),
(659, 'local_name_659', 'english_name_659', 1950),
(660, 'local_name_660', 'english_name_660', 1988),
(661, 'local_name_661', 'english_name_661', 1950),
(662, 'local_name_662', 'english_name_662', 1977),
(663, 'local_name_663', 'english_name_663', 2014),
(664, 'local_name_664', 'english_name_664', 1990),
(665, 'local_name_665', 'english_name_665', 1953),
(666, 'local_name_666', 'english_name_666', 2000),
(667, 'local_name_667', 'english_name_667', 1951),
(668, 'local_name_668', 'english_name_668', 1972),
(669, 'local_name_669', 'english_name_669', 2010),
(670, 'local_name_670', 'english_name_670', 1979),
(671, 'local_name_671', 'english_name_671', 1960),
(672, 'local_name_672', 'english_name_672', 1982),
(673, 'local_name_673', 'english_name_673', 1954),
(674, 'local_name_674', 'english_name_674', 1995),
(675, 'local_name_675', 'english_name_675', 1990),
(676, 'local_name_676', 'english_name_676', 1991),
(677, 'local_name_677', 'english_name_677', 1965),
(678, 'local_name_678', 'english_name_678', 1971),
(679, 'local_name_679', 'english_name_679', 1987),
(680, 'local_name_680', 'english_name_680', 2004),
(681, 'local_name_681', 'english_name_681', 1970),
(682, 'local_name_682', 'english_name_682', 1955),
(683, 'local_name_683', 'english_name_683', 1963),
(684, 'local_name_684', 'english_name_684', 1959),
(685, 'local_name_685', 'english_name_685', 1989),
(686, 'local_name_686', 'english_name_686', 1983),
(687, 'local_name_687', 'english_name_687', 1956),
(688, 'local_name_688', 'english_name_688', 2004),
(689, 'local_name_689', 'english_name_689', 1950),
(690, 'local_name_690', 'english_name_690', 1953),
(691, 'local_name_691', 'english_name_691', 2007),
(692, 'local_name_692', 'english_name_692', 1962),
(693, 'local_name_693', 'english_name_693', 2015),
(694, 'local_name_694', 'english_name_694', 1999),
(695, 'local_name_695', 'english_name_695', 1992),
(696, 'local_name_696', 'english_name_696', 2018),
(697, 'local_name_697', 'english_name_697', 1973),
(698, 'local_name_698', 'english_name_698', 1967),
(699, 'local_name_699', 'english_name_699', 1995),
(700, 'local_name_700', 'english_name_700', 1999),
(701, 'local_name_701', 'english_name_701', 1958),
(702, 'local_name_702', 'english_name_702', 1972),
(703, 'local_name_703', 'english_name_703', 1980),
(704, 'local_name_704', 'english_name_704', 2010),
(705, 'local_name_705', 'english_name_705', 1996),
(706, 'local_name_706', 'english_name_706', 1982),
(707, 'local_name_707', 'english_name_707', 2000),
(708, 'local_name_708', 'english_name_708', 1999),
(709, 'local_name_709', 'english_name_709', 1998),
(710, 'local_name_710', 'english_name_710', 1968),
(711, 'local_name_711', 'english_name_711', 1979),
(712, 'local_name_712', 'english_name_712', 1989),
(713, 'local_name_713', 'english_name_713', 1978),
(714, 'local_name_714', 'english_name_714', 2005),
(715, 'local_name_715', 'english_name_715', 1962),
(716, 'local_name_716', 'english_name_716', 1965),
(717, 'local_name_717', 'english_name_717', 1959),
(718, 'local_name_718', 'english_name_718', 1964),
(719, 'local_name_719', 'english_name_719', 1996),
(720, 'local_name_720', 'english_name_720', 1960),
(721, 'local_name_721', 'english_name_721', 1960),
(722, 'local_name_722', 'english_name_722', 1993),
(723, 'local_name_723', 'english_name_723', 1994),
(724, 'local_name_724', 'english_name_724', 1957),
(725, 'local_name_725', 'english_name_725', 1997),
(726, 'local_name_726', 'english_name_726', 1956),
(727, 'local_name_727', 'english_name_727', 1953),
(728, 'local_name_728', 'english_name_728', 1951),
(729, 'local_name_729', 'english_name_729', 1962),
(730, 'local_name_730', 'english_name_730', 2018),
(731, 'local_name_731', 'english_name_731', 1970),
(732, 'local_name_732', 'english_name_732', 1951),
(733, 'local_name_733', 'english_name_733', 2019),
(734, 'local_name_734', 'english_name_734', 1957),
(735, 'local_name_735', 'english_name_735', 1962),
(736, 'local_name_736', 'english_name_736', 1952),
(737, 'local_name_737', 'english_name_737', 1964),
(738, 'local_name_738', 'english_name_738', 1980),
(739, 'local_name_739', 'english_name_739', 2011),
(740, 'local_name_740', 'english_name_740', 1973),
(741, 'local_name_741', 'english_name_741', 1973),
(742, 'local_name_742', 'english_name_742', 1995),
(743, 'local_name_743', 'english_name_743', 1982),
(744, 'local_name_744', 'english_name_744', 1976),
(745, 'local_name_745', 'english_name_745', 1990),
(746, 'local_name_746', 'english_name_746', 1993),
(747, 'local_name_747', 'english_name_747', 2013),
(748, 'local_name_748', 'english_name_748', 1992),
(749, 'local_name_749', 'english_name_749', 1970),
(750, 'local_name_750', 'english_name_750', 2016),
(751, 'local_name_751', 'english_name_751', 1950),
(752, 'local_name_752', 'english_name_752', 1968),
(753, 'local_name_753', 'english_name_753', 1992),
(754, 'local_name_754', 'english_name_754', 2003),
(755, 'local_name_755', 'english_name_755', 1954),
(756, 'local_name_756', 'english_name_756', 1955),
(757, 'local_name_757', 'english_name_757', 1991),
(758, 'local_name_758', 'english_name_758', 1950),
(759, 'local_name_759', 'english_name_759', 2015),
(760, 'local_name_760', 'english_name_760', 1960),
(761, 'local_name_761', 'english_name_761', 1994),
(762, 'local_name_762', 'english_name_762', 2004),
(763, 'local_name_763', 'english_name_763', 2010),
(764, 'local_name_764', 'english_name_764', 1983),
(765, 'local_name_765', 'english_name_765', 1984),
(766, 'local_name_766', 'english_name_766', 2013),
(767, 'local_name_767', 'english_name_767', 2005),
(768, 'local_name_768', 'english_name_768', 1991),
(769, 'local_name_769', 'english_name_769', 1969),
(770, 'local_name_770', 'english_name_770', 2003),
(771, 'local_name_771', 'english_name_771', 1987),
(772, 'local_name_772', 'english_name_772', 2019),
(773, 'local_name_773', 'english_name_773', 1956),
(774, 'local_name_774', 'english_name_774', 2004),
(775, 'local_name_775', 'english_name_775', 2003),
(776, 'local_name_776', 'english_name_776', 1955),
(777, 'local_name_777', 'english_name_777', 1966),
(778, 'local_name_778', 'english_name_778', 2002),
(779, 'local_name_779', 'english_name_779', 1981),
(780, 'local_name_780', 'english_name_780', 1968),
(781, 'local_name_781', 'english_name_781', 1980),
(782, 'local_name_782', 'english_name_782', 1982),
(783, 'local_name_783', 'english_name_783', 1983),
(784, 'local_name_784', 'english_name_784', 2010),
(785, 'local_name_785', 'english_name_785', 1951),
(786, 'local_name_786', 'english_name_786', 2007),
(787, 'local_name_787', 'english_name_787', 1978),
(788, 'local_name_788', 'english_name_788', 2016),
(789, 'local_name_789', 'english_name_789', 1963),
(790, 'local_name_790', 'english_name_790', 1976),
(791, 'local_name_791', 'english_name_791', 1974),
(792, 'local_name_792', 'english_name_792', 1994),
(793, 'local_name_793', 'english_name_793', 1977),
(794, 'local_name_794', 'english_name_794', 1961),
(795, 'local_name_795', 'english_name_795', 1974),
(796, 'local_name_796', 'english_name_796', 1970),
(797, 'local_name_797', 'english_name_797', 2010),
(798, 'local_name_798', 'english_name_798', 1983),
(799, 'local_name_799', 'english_name_799', 1970),
(800, 'local_name_800', 'english_name_800', 1969),
(801, 'local_name_801', 'english_name_801', 2005),
(802, 'local_name_802', 'english_name_802', 1974),
(803, 'local_name_803', 'english_name_803', 1985),
(804, 'local_name_804', 'english_name_804', 1982),
(805, 'local_name_805', 'english_name_805', 2001),
(806, 'local_name_806', 'english_name_806', 1978),
(807, 'local_name_807', 'english_name_807', 1971),
(808, 'local_name_808', 'english_name_808', 2008),
(809, 'local_name_809', 'english_name_809', 1967),
(810, 'local_name_810', 'english_name_810', 1986),
(811, 'local_name_811', 'english_name_811', 1965),
(812, 'local_name_812', 'english_name_812', 1956),
(813, 'local_name_813', 'english_name_813', 2018),
(814, 'local_name_814', 'english_name_814', 2012),
(815, 'local_name_815', 'english_name_815', 1988),
(816, 'local_name_816', 'english_name_816', 2014),
(817, 'local_name_817', 'english_name_817', 2009),
(818, 'local_name_818', 'english_name_818', 2020),
(819, 'local_name_819', 'english_name_819', 1998),
(820, 'local_name_820', 'english_name_820', 1994),
(821, 'local_name_821', 'english_name_821', 2012),
(822, 'local_name_822', 'english_name_822', 1964),
(823, 'local_name_823', 'english_name_823', 1974),
(824, 'local_name_824', 'english_name_824', 2004),
(825, 'local_name_825', 'english_name_825', 1952),
(826, 'local_name_826', 'english_name_826', 2018),
(827, 'local_name_827', 'english_name_827', 1991),
(828, 'local_name_828', 'english_name_828', 2010),
(829, 'local_name_829', 'english_name_829', 1966),
(830, 'local_name_830', 'english_name_830', 1980),
(831, 'local_name_831', 'english_name_831', 2009),
(832, 'local_name_832', 'english_name_832', 2007),
(833, 'local_name_833', 'english_name_833', 2005),
(834, 'local_name_834', 'english_name_834', 2017),
(835, 'local_name_835', 'english_name_835', 1966),
(836, 'local_name_836', 'english_name_836', 1992),
(837, 'local_name_837', 'english_name_837', 1968),
(838, 'local_name_838', 'english_name_838', 1991),
(839, 'local_name_839', 'english_name_839', 2006),
(840, 'local_name_840', 'english_name_840', 1984),
(841, 'local_name_841', 'english_name_841', 2010),
(842, 'local_name_842', 'english_name_842', 2013),
(843, 'local_name_843', 'english_name_843', 2011),
(844, 'local_name_844', 'english_name_844', 1953),
(845, 'local_name_845', 'english_name_845', 1967),
(846, 'local_name_846', 'english_name_846', 2004),
(847, 'local_name_847', 'english_name_847', 1997),
(848, 'local_name_848', 'english_name_848', 1961),
(849, 'local_name_849', 'english_name_849', 2009),
(850, 'local_name_850', 'english_name_850', 1988),
(851, 'local_name_851', 'english_name_851', 2006),
(852, 'local_name_852', 'english_name_852', 2006),
(853, 'local_name_853', 'english_name_853', 1972),
(854, 'local_name_854', 'english_name_854', 1966),
(855, 'local_name_855', 'english_name_855', 2020),
(856, 'local_name_856', 'english_name_856', 1960),
(857, 'local_name_857', 'english_name_857', 2000),
(858, 'local_name_858', 'english_name_858', 1978),
(859, 'local_name_859', 'english_name_859', 1986),
(860, 'local_name_860', 'english_name_860', 2014),
(861, 'local_name_861', 'english_name_861', 1979),
(862, 'local_name_862', 'english_name_862', 1978),
(863, 'local_name_863', 'english_name_863', 1984),
(864, 'local_name_864', 'english_name_864', 2009),
(865, 'local_name_865', 'english_name_865', 1955),
(866, 'local_name_866', 'english_name_866', 2018),
(867, 'local_name_867', 'english_name_867', 1969),
(868, 'local_name_868', 'english_name_868', 1961),
(869, 'local_name_869', 'english_name_869', 1988),
(870, 'local_name_870', 'english_name_870', 2017),
(871, 'local_name_871', 'english_name_871', 1979),
(872, 'local_name_872', 'english_name_872', 1985),
(873, 'local_name_873', 'english_name_873', 2001),
(874, 'local_name_874', 'english_name_874', 1970),
(875, 'local_name_875', 'english_name_875', 1977),
(876, 'local_name_876', 'english_name_876', 2012),
(877, 'local_name_877', 'english_name_877', 2009),
(878, 'local_name_878', 'english_name_878', 1966),
(879, 'local_name_879', 'english_name_879', 2005),
(880, 'local_name_880', 'english_name_880', 1978),
(881, 'local_name_881', 'english_name_881', 1964),
(882, 'local_name_882', 'english_name_882', 1959),
(883, 'local_name_883', 'english_name_883', 2013),
(884, 'local_name_884', 'english_name_884', 1973),
(885, 'local_name_885', 'english_name_885', 1960),
(886, 'local_name_886', 'english_name_886', 1998),
(887, 'local_name_887', 'english_name_887', 2018),
(888, 'local_name_888', 'english_name_888', 1993),
(889, 'local_name_889', 'english_name_889', 2017),
(890, 'local_name_890', 'english_name_890', 1961),
(891, 'local_name_891', 'english_name_891', 1979),
(892, 'local_name_892', 'english_name_892', 1988),
(893, 'local_name_893', 'english_name_893', 1954),
(894, 'local_name_894', 'english_name_894', 1976),
(895, 'local_name_895', 'english_name_895', 1976),
(896, 'local_name_896', 'english_name_896', 2003),
(897, 'local_name_897', 'english_name_897', 1987),
(898, 'local_name_898', 'english_name_898', 1973),
(899, 'local_name_899', 'english_name_899', 1950),
(900, 'local_name_900', 'english_name_900', 1976),
(901, 'local_name_901', 'english_name_901', 1975),
(902, 'local_name_902', 'english_name_902', 1987),
(903, 'local_name_903', 'english_name_903', 2000),
(904, 'local_name_904', 'english_name_904', 1987),
(905, 'local_name_905', 'english_name_905', 2006),
(906, 'local_name_906', 'english_name_906', 2018),
(907, 'local_name_907', 'english_name_907', 1992),
(908, 'local_name_908', 'english_name_908', 1998),
(909, 'local_name_909', 'english_name_909', 1965),
(910, 'local_name_910', 'english_name_910', 1982),
(911, 'local_name_911', 'english_name_911', 1983),
(912, 'local_name_912', 'english_name_912', 2012),
(913, 'local_name_913', 'english_name_913', 1999),
(914, 'local_name_914', 'english_name_914', 1976),
(915, 'local_name_915', 'english_name_915', 2011),
(916, 'local_name_916', 'english_name_916', 1991),
(917, 'local_name_917', 'english_name_917', 1976),
(918, 'local_name_918', 'english_name_918', 1977),
(919, 'local_name_919', 'english_name_919', 2015),
(920, 'local_name_920', 'english_name_920', 1995),
(921, 'local_name_921', 'english_name_921', 1973),
(922, 'local_name_922', 'english_name_922', 1971),
(923, 'local_name_923', 'english_name_923', 2002),
(924, 'local_name_924', 'english_name_924', 1953),
(925, 'local_name_925', 'english_name_925', 1980),
(926, 'local_name_926', 'english_name_926', 1983),
(927, 'local_name_927', 'english_name_927', 1998),
(928, 'local_name_928', 'english_name_928', 2001),
(929, 'local_name_929', 'english_name_929', 1981),
(930, 'local_name_930', 'english_name_930', 1961),
(931, 'local_name_931', 'english_name_931', 1985),
(932, 'local_name_932', 'english_name_932', 1989),
(933, 'local_name_933', 'english_name_933', 1995),
(934, 'local_name_934', 'english_name_934', 1993),
(935, 'local_name_935', 'english_name_935', 2020),
(936, 'local_name_936', 'english_name_936', 1980),
(937, 'local_name_937', 'english_name_937', 1960),
(938, 'local_name_938', 'english_name_938', 1991),
(939, 'local_name_939', 'english_name_939', 1967),
(940, 'local_name_940', 'english_name_940', 2017),
(941, 'local_name_941', 'english_name_941', 1988),
(942, 'local_name_942', 'english_name_942', 2018),
(943, 'local_name_943', 'english_name_943', 1976),
(944, 'local_name_944', 'english_name_944', 1953),
(945, 'local_name_945', 'english_name_945', 1979),
(946, 'local_name_946', 'english_name_946', 2018),
(947, 'local_name_947', 'english_name_947', 1958),
(948, 'local_name_948', 'english_name_948', 1969),
(949, 'local_name_949', 'english_name_949', 2009),
(950, 'local_name_950', 'english_name_950', 1958),
(951, 'local_name_951', 'english_name_951', 1955),
(952, 'local_name_952', 'english_name_952', 1987),
(953, 'local_name_953', 'english_name_953', 2008),
(954, 'local_name_954', 'english_name_954', 1986),
(955, 'local_name_955', 'english_name_955', 1950),
(956, 'local_name_956', 'english_name_956', 1953),
(957, 'local_name_957', 'english_name_957', 2005),
(958, 'local_name_958', 'english_name_958', 1976),
(959, 'local_name_959', 'english_name_959', 1962),
(960, 'local_name_960', 'english_name_960', 2002),
(961, 'local_name_961', 'english_name_961', 1958),
(962, 'local_name_962', 'english_name_962', 1995),
(963, 'local_name_963', 'english_name_963', 1980),
(964, 'local_name_964', 'english_name_964', 1965),
(965, 'local_name_965', 'english_name_965', 1982),
(966, 'local_name_966', 'english_name_966', 1952),
(967, 'local_name_967', 'english_name_967', 2016),
(968, 'local_name_968', 'english_name_968', 1956),
(969, 'local_name_969', 'english_name_969', 1990),
(970, 'local_name_970', 'english_name_970', 2012),
(971, 'local_name_971', 'english_name_971', 1975),
(972, 'local_name_972', 'english_name_972', 1999),
(973, 'local_name_973', 'english_name_973', 1996),
(974, 'local_name_974', 'english_name_974', 1970),
(975, 'local_name_975', 'english_name_975', 1983),
(976, 'local_name_976', 'english_name_976', 1990),
(977, 'local_name_977', 'english_name_977', 1963),
(978, 'local_name_978', 'english_name_978', 1986),
(979, 'local_name_979', 'english_name_979', 1984),
(980, 'local_name_980', 'english_name_980', 1991),
(981, 'local_name_981', 'english_name_981', 1986),
(982, 'local_name_982', 'english_name_982', 1986),
(983, 'local_name_983', 'english_name_983', 1972),
(984, 'local_name_984', 'english_name_984', 1997),
(985, 'local_name_985', 'english_name_985', 1979),
(986, 'local_name_986', 'english_name_986', 1963),
(987, 'local_name_987', 'english_name_987', 2006),
(988, 'local_name_988', 'english_name_988', 2002),
(989, 'local_name_989', 'english_name_989', 1986),
(990, 'local_name_990', 'english_name_990', 1993),
(991, 'local_name_991', 'english_name_991', 1978),
(992, 'local_name_992', 'english_name_992', 1983),
(993, 'local_name_993', 'english_name_993', 2009),
(994, 'local_name_994', 'english_name_994', 1957),
(995, 'local_name_995', 'english_name_995', 1995),
(996, 'local_name_996', 'english_name_996', 1981),
(997, 'local_name_997', 'english_name_997', 1968),
(998, 'local_name_998', 'english_name_998', 1953),
(999, 'local_name_999', 'english_name_999', 1981),
(1000, 'local_name_1000', 'english_name_1000', 1974);

-- --------------------------------------------------------

--
-- Table structure for table `movie_data`
--

CREATE TABLE `movie_data` (
  `movie_id` int(6) NOT NULL COMMENT 'This is both PK and FK; movie_data is a WEAK entity',
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(1, 'English', 'USA', 'Drama', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.');

-- --------------------------------------------------------

--
-- Table structure for table `movie_keywords`
--

CREATE TABLE `movie_keywords` (
  `movie_id` int(6) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(1, 'amputee'),
(1, 'based on book'),
(1, 'vietnam war');

-- --------------------------------------------------------

--
-- Table structure for table `movie_media`
--

CREATE TABLE `movie_media` (
  `movie_media_id` int(6) NOT NULL,
  `m_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_link_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'video, poster, image are three possible values.',
  `movie_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(1, 'https://www.youtube.com/watch?v=bLvqoHBptjg', 'video', 1),
(2, 'https://en.wikipedia.org/wiki/Forrest_Gump#/media/File:Forrest_Gump_poster.jpg', 'image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_people`
--

CREATE TABLE `movie_people` (
  `movie_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'director, producer, music director, lead actor, lead actress, supporting actor, supporting actress are possible values'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(1, 1, 'Director'),
(1, 2, 'Novel Writer'),
(1, 3, 'Screenplay'),
(1, 4, 'Actor '),
(1, 5, 'Actress'),
(1, 6, 'Actress'),
(1, 7, 'Actor'),
(1, 8, 'Actor');

-- --------------------------------------------------------

--
-- Table structure for table `movie_song`
--

CREATE TABLE `movie_song` (
  `movie_id` int(6) NOT NULL,
  `song_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This tables reflects an associative entity (movie,song)';

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(6) NOT NULL,
  `screen_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Many people in the movie industry are known by short names',
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'We will store the images locally on the server; This field refers to the image file name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(1, 'Robert', 'Robert', '', 'Zemeckis', 'Male', 'robert_zemeckis.jpg'),
(2, 'Winston', 'Winston', '', 'Groom', 'Male', 'winston_groom.jpg'),
(3, 'Eric', 'Eric', '', 'Roth', 'Male', 'eric_roth.jpg'),
(4, 'Tom Hanks', 'Thomas', 'Jeffrey', 'Hanks', 'Male', 'tom_hanks.jpg'),
(5, 'Rebecca Williams', 'Rebecca', '', 'Williams', 'Female', 'rebecca_williams.jpg'),
(6, 'Sally Field', 'Sally', 'Margaret', 'Field', 'Female', 'sally_field.jpg'),
(7, 'Michael', 'Michael', 'Conner', 'Humphreys', 'Male', 'michael_humphreys.jpg'),
(8, 'Harold', 'Harold', 'G', 'Herthum', 'Male', 'harold_herthum.jpg'),
(9, 'Alan', 'Alan', 'Anthony', 'Silvestri', 'Male', 'alan_silvestri.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(5) NOT NULL,
  `title` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lyrics` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(1, 'I\'m Forrest', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `song_keywords`
--

CREATE TABLE `song_keywords` (
  `song_id` int(5) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(1, 'Heartwarming'),
(1, 'Sad');

-- --------------------------------------------------------

--
-- Table structure for table `song_media`
--

CREATE TABLE `song_media` (
  `song_media_id` int(6) NOT NULL,
  `s_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_link_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'audio and video are two possible values',
  `song_id` int(6) NOT NULL COMMENT 'is the FK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(1, 'https://www.youtube.com/watch?v=RUyZeic_BaE', 'audio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `song_people`
--

CREATE TABLE `song_people` (
  `song_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(1, 9, 'Composer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD PRIMARY KEY (`movie_id`,`keyword`);

--
-- Indexes for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD PRIMARY KEY (`movie_media_id`);

--
-- Indexes for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD PRIMARY KEY (`movie_id`,`people_id`,`role`);

--
-- Indexes for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD PRIMARY KEY (`movie_id`,`song_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `song_keywords`
--
ALTER TABLE `song_keywords`
  ADD PRIMARY KEY (`song_id`,`keyword`);

--
-- Indexes for table `song_media`
--
ALTER TABLE `song_media`
  ADD PRIMARY KEY (`song_media_id`);

--
-- Indexes for table `song_people`
--
ALTER TABLE `song_people`
  ADD PRIMARY KEY (`song_id`,`people_id`,`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
