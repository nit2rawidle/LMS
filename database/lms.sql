-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 06:58 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms4`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `category_id` int(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `book_copies` int(11) NOT NULL,
  `book_pub` varchar(100) NOT NULL,
  `publisher_name` varchar(100) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `copyright_year` int(11) NOT NULL,
  `Shelf/Rack` varchar(11) NOT NULL,
  `date_receive` varchar(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `category_id`, `author`, `book_copies`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `Shelf/Rack`, `date_receive`, `date_added`, `status`) VALUES
(15, 'Natural Resources', 8, 'Robin Kerrod', 15, 'Marshall Cavendish Corporation', 'Marshall', '1-85435-628-3', 1997, 'GEN - 01', '', '2019-10-19 06:34:27', 'New'),
(16, 'Encyclopedia Americana', 5, 'Grolier', 20, 'Connecticut', 'Grolier Incorporation', '0-7172-0119-8', 1988, 'GEN - 02', '', '2019-10-19 06:36:23', 'Archive'),
(17, 'Algebra 1', 3, 'Carolyn Bradshaw, Michael Seals', 35, 'Pearson Education, Inc', 'Prentice Hall, New Jersey', '0-13-125087-6', 2004, 'GEN - 01', '', '2019-10-19 06:39:17', 'Damage'),
(18, 'The Philippine Daily Inquirer', 7, '..', 3, 'Pasay City', '..', '..', 2013, 'GEN - 02', '', '2019-10-19 06:41:53', 'New'),
(19, 'Science in our World', 4, 'Brian Knapp', 25, 'Regency Publishing Group', 'Prentice Hall, Inc', '0-13-050841-1', 1996, 'GEN - 01', '', '2019-10-19 06:44:44', 'Lost'),
(20, 'Literature', 9, 'Greg Glowka', 20, 'Regency Publishing Group', 'Prentice Hall, Inc', '0-13-050841-1', 2001, 'RES - 01', '', '2019-10-19 06:47:44', 'Old'),
(21, 'Lexicon Universal Encyclopedia', 5, 'Lexicon', 10, 'Lexicon Publication', 'Pulication Inc., Lexicon', '0-7172-2043-5', 1993, 'RES - 01', '', '2019-10-19 06:49:53', 'Old'),
(22, 'Science and Invention Encyclopedia', 5, 'Clarke Donald, Dartford Mark', 16, 'H.S. Stuttman inc. Publishing', 'Publisher , Westport Connecticut', '0-87475-450-x', 1992, 'GEN - 01', '', '2019-10-19 06:52:58', 'New'),
(23, 'Integrated Science Textbook ', 4, 'Merde C. Tan', 15, 'Vibal Publishing House Inc.', '12536. Araneta Avenue Corner Ma. Clara St., Quezon City', '971-570-124-8', 2009, 'GEN - 03', '', '2019-10-19 06:55:27', 'New'),
(24, 'Algebra 2', 3, 'Glencoe McGraw Hill', 15, 'The McGrawHill Companies Inc.', 'McGrawhill', '978-0-07-873830-2', 2008, 'GEN - 01', '', '2019-10-19 06:57:35', 'New'),
(25, 'Wiki at Panitikan ', 7, 'Lorenza P. Avera', 28, 'JGM & S Corporation', 'JGM & S Corporation', '971-07-1574-7', 2000, 'RES - 03', '', '2019-10-19 06:59:24', 'Damage'),
(26, 'English Expressways TextBook for 4th year', 9, 'Virginia Bermudez Ed. O. et al', 23, 'SD Publications, Inc.', 'Gregorio Araneta Avenue, Quezon City', '978-971-0315-33-8', 2007, 'GEN - 01', '', '2019-10-19 07:01:25', 'New'),
(27, 'Asya Pag-usbong Ng Kabihasnan ', 8, 'Ricardo T. Jose, Ph . D.', 21, 'Vibal Publishing House Inc.', 'Araneta Avenue . Cor. Maria Clara St., Quezon City', '971-07-2324-3', 2008, 'GEN - 03', '', '2019-10-19 07:02:56', 'New'),
(28, 'Literature (the readers choice)', 9, 'Glencoe McGraw Hill', 20, '..', 'the McGrawHill Companies Inc', '0-02-817934-x', 2001, 'GEN - 01', '', '2019-10-19 07:05:25', 'Damage'),
(29, 'Beloved a Novel', 9, 'Toni Morrison', 13, '..', 'Alfred A. Knoff, Inc', '0-394-53597-9', 1987, 'GEN - 02', '', '2019-10-19 07:07:02', 'Old'),
(30, 'Silver Burdett Engish', 2, 'Judy Brim', 12, 'Silver Burdett Company', 'Silver', '0-382-03575-5', 1985, 'GEN - 02', '', '2019-10-19 09:22:50', 'Old'),
(31, 'The Corporate Warriors (Six Classic Cases in American Business)', 8, 'Douglas K. Ramsey', 8, 'Houghton Miffin Company', '..', '0-395-35487-0', 1987, 'RES - 01', '', '2019-10-19 09:25:32', 'Old'),
(32, 'Introduction to Information System', 9, 'Cristine Redoblo', 10, 'CHMSC', 'Brian INC', '123-132', 2013, 'RES - 02', '', '2019-10-19 19:00:10', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrow_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `date_borrow` varchar(100) NOT NULL,
  `due_date` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrow_id`, `member_id`, `date_borrow`, `due_date`) VALUES
(484, 55, '2019-10-19 23:50:27', '05/11/2019'),
(483, 55, '2019-10-20 23:49:34', '06/11/2019'),
(482, 52, '2019-10-21 23:38:22', '07/11/2019'),
(485, 170101033, '2019-11-08 22:50:14', '11/11/2019'),
(486, 170101040, '2019-11-09 20:24:28', '10/01/2020'),
(487, 170101033, '2019-11-10 18:50:38', '21/11/2019'),
(488, 170101024, '2019-11-10 20:27:22', '14/11/2019'),
(489, 170101024, '2019-11-10 21:47:08', '15/11/2019'),
(490, 170101024, '2019-11-10 21:48:11', '21/11/2019'),
(491, 170101013, '2019-11-10 21:54:44', '20/11/2019'),
(492, 170101024, '2019-11-10 22:29:37', '20/11/2019'),
(493, 170101024, '2019-11-10 22:46:24', '20/11/2019'),
(494, 170101024, '2019-11-10 23:08:29', '26/11/2019'),
(495, 170101024, '2019-11-10 23:29:49', '13/11/2019'),
(496, 170101024, '2019-11-10 23:56:26', '20/11/2019'),
(497, 170101024, '2019-11-10 23:56:46', '27/11/2019'),
(498, 170101024, '2019-11-11 00:11:23', '21/11/2019'),
(499, 170101024, '2019-11-11 00:21:01', '29/11/2019'),
(500, 170101024, '2019-11-11 00:53:23', '2019-11-01'),
(501, 170101008, '2019-11-11 00:54:23', '2019-11-01'),
(502, 170101020, '2019-11-11 00:56:59', '11/11/2019'),
(503, 170101024, '2019-11-11 01:14:15', '2019-11-02'),
(504, 170101024, '2019-11-11 01:32:52', '2019-11-06'),
(505, 170101024, '2019-11-11 01:34:45', '2019-11-03'),
(506, 170101024, '2019-11-11 01:37:34', '2019-11-05'),
(507, 170101024, '2019-11-11 01:41:20', '2019-11-01'),
(508, 170101024, '2019-11-11 01:43:55', '2019-11-02'),
(509, 170101024, '2019-11-11 02:05:13', '2019-11-02'),
(510, 170101024, '2019-11-11 02:16:56', '2019-11-04'),
(511, 170101024, '2019-11-11 12:05:08', '2019-11-01'),
(512, 170101021, '2019-11-11 12:14:16', '2019-11-01'),
(513, 170101024, '2019-11-11 12:27:36', '2019-11-02'),
(514, 170101024, '2019-11-11 12:36:04', '2019-11-01'),
(515, 170101024, '2019-11-11 13:01:12', '2019-11-04'),
(516, 170101024, '2019-11-11 13:03:26', '2019-11-03'),
(517, 170101024, '2019-11-11 13:05:29', '2019-11-02'),
(518, 170101024, '2019-11-11 13:10:38', '2019-11-05'),
(519, 170101024, '2019-11-11 13:18:12', '2019-11-07'),
(520, 170101024, '2019-11-11 13:19:53', '2019-11-06'),
(521, 170101024, '2019-11-11 13:38:43', '2019-11-07'),
(522, 170101024, '2019-11-11 13:44:02', '2019-11-06'),
(523, 170101024, '2019-11-11 13:46:03', '2019-11-07'),
(524, 170101024, '2019-11-12 22:23:17', '13/11/2019'),
(525, 170101020, '2019-11-12 23:11:49', '14/11/2019'),
(526, 170101024, '2019-11-13 00:37:35', '14/11/2019'),
(527, 170101024, '2019-11-13 00:38:42', '19/11/2019'),
(528, 170101024, '2019-11-14 00:48:17', ''),
(529, 170101024, '2019-11-14 00:50:21', '14/11/2019'),
(530, 170101024, '2019-11-14 00:56:22', '2019-11-06'),
(531, 170101033, '2019-11-14 01:19:51', '2019-11-07'),
(532, 170101033, '2019-11-14 01:31:59', '2019-11-08'),
(533, 170101008, '2019-11-14 12:05:27', '2019-11-10'),
(534, 170101024, '2019-11-14 12:43:36', '2019-11-06'),
(535, 170101024, '2019-11-14 12:52:14', '2019-11-06'),
(536, 170101024, '2019-11-14 12:59:42', '2019-11-05'),
(537, 170101002, '2019-11-19 22:56:22', '2019-11-06'),
(538, 14561456, '2019-11-19 23:00:59', '2019-11-01'),
(539, 14561456, '2019-11-19 23:23:48', '2019-11-07'),
(540, 14561456, '2019-11-19 23:29:15', '2019-11-07'),
(541, 14561456, '2019-11-19 23:39:12', '2019-11-05'),
(542, 170101005, '2019-11-21 14:49:52', '2019-11-14'),
(543, 170101005, '2019-11-21 15:53:32', '2019-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `borrowdetails`
--

CREATE TABLE `borrowdetails` (
  `borrow_details_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `fine` int(11) DEFAULT -99,
  `borrow_id` int(11) NOT NULL,
  `borrow_status` varchar(50) NOT NULL,
  `date_return` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowdetails`
--

INSERT INTO `borrowdetails` (`borrow_details_id`, `book_id`, `fine`, `borrow_id`, `borrow_status`, `date_return`) VALUES
(164, 16, 183, 484, 'returned', '2019-11-09 23:39:27'),
(162, 15, 122, 482, 'returned', '2019-11-09 23:39:29'),
(163, 15, 0, 483, 'returned', '2019-03-21 00:30:51'),
(165, 16, 0, 485, 'returned', '2019-11-09 23:39:21'),
(166, 17, 0, 485, 'returned', '2019-11-09 23:39:23'),
(167, 18, 0, 485, 'returned', '2019-11-09 23:39:25'),
(168, 15, 0, 486, 'returned', '2019-11-09 23:39:15'),
(169, 16, 0, 486, 'returned', '2019-11-09 23:39:19'),
(170, 15, 18210, 487, 'returned', '2019-11-10 23:47:52'),
(171, 15, 18210, 488, 'returned', '2019-11-10 20:34:16'),
(172, 15, 18210, 489, 'returned', '2019-11-10 21:59:54'),
(173, 16, 18210, 489, 'returned', '2019-11-10 22:24:44'),
(174, 17, 18210, 490, 'returned', '2019-11-10 22:26:13'),
(175, 20, NULL, 491, 'returned', '2019-11-10 21:58:40'),
(176, 21, NULL, 491, 'returned', '2019-11-10 23:22:09'),
(177, 15, 18210, 492, 'returned', '2019-11-10 22:31:17'),
(178, 16, 18210, 492, 'returned', '2019-11-10 22:29:46'),
(179, 17, 18210, 492, 'returned', '2019-11-10 22:33:36'),
(180, 15, 18210, 493, 'returned', '2019-11-10 23:03:33'),
(181, 16, 18210, 493, 'returned', '2019-11-10 23:01:27'),
(182, 17, 18210, 493, 'returned', '2019-11-10 23:03:44'),
(183, 20, 18210, 494, 'returned', '2019-11-10 23:17:17'),
(184, 21, 18210, 494, 'returned', '2019-11-10 23:12:29'),
(185, 22, 18210, 494, 'returned', '2019-11-10 23:08:36'),
(186, 16, 18210, 495, 'returned', '2019-11-10 23:42:25'),
(187, 17, 18210, 495, 'returned', '2019-11-10 23:30:02'),
(188, 21, 18210, 495, 'returned', '2019-11-10 23:43:26'),
(189, 17, 18210, 496, 'returned', '2019-11-11 00:02:07'),
(190, 20, 18210, 496, 'returned', '2019-11-11 00:01:16'),
(191, 21, 18210, 496, 'returned', '2019-11-11 00:02:57'),
(192, 16, 18210, 497, 'returned', '2019-11-11 00:08:07'),
(193, 20, 18210, 497, 'returned', '2019-11-10 23:59:06'),
(194, 21, 18210, 497, 'returned', '2019-11-10 23:57:30'),
(195, 16, 18210, 498, 'returned', '2019-11-11 00:16:29'),
(196, 20, 18210, 498, 'returned', '2019-11-11 00:11:56'),
(197, 22, 18210, 498, 'returned', '2019-11-11 00:13:26'),
(198, 15, 18210, 499, 'returned', '2019-11-11 00:21:10'),
(199, 16, 18210, 499, 'returned', '2019-11-11 00:23:17'),
(200, 17, 18210, 499, 'returned', '2019-11-11 00:36:17'),
(201, 15, 10, 500, 'returned', '2019-11-11 00:53:32'),
(202, 16, 10, 500, 'returned', '2019-11-11 01:02:16'),
(203, 17, 10, 500, 'returned', '2019-11-11 00:57:37'),
(204, 17, 10, 501, 'returned', '2019-11-11 00:54:31'),
(205, 15, 0, 502, 'returned', '2019-11-11 00:57:07'),
(206, 16, NULL, 502, 'pending', ''),
(207, 17, NULL, 502, 'pending', ''),
(208, 22, 9, 503, 'returned', '2019-11-11 01:14:32'),
(209, 23, 5, 504, 'returned', '2019-11-11 01:33:00'),
(210, 25, 8, 505, 'returned', '2019-11-11 01:34:55'),
(211, 20, 6, 506, 'returned', '2019-11-11 01:37:44'),
(212, 28, 10, 507, 'returned', '2019-11-11 01:41:36'),
(213, 30, 9, 508, 'returned', '2019-11-11 02:04:49'),
(214, 24, 9, 509, 'returned', '2019-11-11 02:06:09'),
(215, 23, 7, 510, 'returned', '2019-11-11 02:17:04'),
(216, 15, 10, 511, 'returned', '2019-11-11 12:05:40'),
(217, 16, 10, 511, 'returned', '2019-11-11 12:10:21'),
(218, 17, 10, 512, 'returned', '2019-11-11 12:14:43'),
(219, 18, 10, 512, 'returned', '2019-11-11 12:26:33'),
(220, 21, 9, 513, 'returned', '2019-11-11 12:27:46'),
(221, 22, 9, 513, 'returned', '2019-11-11 12:32:41'),
(222, 17, 10, 514, 'returned', '2019-11-11 12:36:23'),
(223, 18, 10, 514, 'returned', '2019-11-11 12:58:08'),
(224, 20, 10, 514, 'returned', '2019-11-11 12:53:45'),
(225, 20, 7, 515, 'returned', '2019-11-11 13:01:29'),
(226, 17, 8, 516, 'returned', '2019-11-11 13:03:33'),
(227, 16, 9, 517, 'returned', '2019-11-11 13:05:35'),
(228, 17, 9, 517, 'returned', '2019-11-11 13:09:23'),
(229, 18, 9, 517, 'returned', '2019-11-11 13:07:09'),
(230, 15, 6, 518, 'returned', '2019-11-11 13:10:45'),
(231, 16, 6, 518, 'returned', '2019-11-11 13:14:50'),
(232, 17, 6, 518, 'returned', '2019-11-11 13:17:20'),
(233, 16, 4, 519, 'returned', '2019-11-11 13:18:22'),
(234, 15, 5, 520, 'returned', '2019-11-11 13:19:59'),
(235, 16, 5, 520, 'returned', '2019-11-11 13:25:33'),
(236, 17, 5, 520, 'returned', '2019-11-11 13:33:31'),
(237, 15, 4, 521, 'returned', '2019-11-11 13:42:10'),
(238, 16, 4, 521, 'returned', '2019-11-11 13:38:53'),
(239, 17, NULL, 521, 'pending', ''),
(240, 23, 5, 522, 'returned', '2019-11-11 13:44:08'),
(241, 29, 7, 523, 'returned', '2019-11-14 12:30:55'),
(242, 15, NULL, 524, 'pending', ''),
(243, 16, NULL, 524, 'pending', ''),
(244, 17, 18212, 524, 'returned', '2019-11-12 23:06:02'),
(245, 17, NULL, 525, 'pending', ''),
(246, 16, NULL, 526, 'pending', ''),
(247, 15, 18214, 527, 'returned', '2019-11-14 12:29:16'),
(248, 16, NULL, 527, 'pending', ''),
(249, 17, 18213, 527, 'returned', '2019-11-14 00:45:02'),
(250, 21, NULL, 528, 'pending', ''),
(251, 22, NULL, 528, 'pending', ''),
(252, 15, NULL, 529, 'pending', ''),
(253, 16, 18213, 529, 'returned', '2019-11-14 00:50:39'),
(254, 27, 8, 530, 'returned', '2019-11-14 12:35:49'),
(255, 17, 7, 531, 'returned', '2019-11-14 01:21:27'),
(256, 18, 7, 531, 'returned', '2019-11-14 01:21:16'),
(257, 21, 6, 532, 'returned', '2019-11-14 01:32:18'),
(258, 15, 4, 533, 'returned', '2019-11-14 12:06:29'),
(259, 16, 4, 533, 'returned', '2019-11-14 12:06:15'),
(260, 25, 4, 533, 'returned', '2019-11-14 12:39:56'),
(261, 31, 8, 534, 'returned', '2019-11-14 12:44:09'),
(262, 23, 8, 535, 'returned', '2019-11-14 12:52:32'),
(263, 18, 9, 536, 'returned', '2019-11-14 13:00:12'),
(264, 17, 0, 537, 'returned', '2019-11-19 22:56:42'),
(265, 16, 0, 538, 'returned', '2019-11-19 23:16:09'),
(266, 21, 0, 539, 'returned', '2019-11-19 23:24:39'),
(267, 22, 12, 540, 'returned', '2019-11-19 23:36:25'),
(268, 23, 0, 540, 'returned', '2019-11-19 23:31:01'),
(269, 24, 0, 540, 'returned', '2019-11-19 23:33:07'),
(270, 28, 0, 541, 'returned', '2019-11-20 00:00:47'),
(271, 29, 0, 541, 'returned', '2019-11-19 23:41:07'),
(272, 30, 0, 541, 'returned', '2019-11-19 23:50:01'),
(273, 21, 0, 542, 'returned', '2019-11-21 14:50:18'),
(274, 15, 0, 543, 'returned', '2019-11-21 15:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `classname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `classname`) VALUES
(1, 'Periodical'),
(2, 'English'),
(3, 'Math'),
(4, 'Science'),
(5, 'Encyclopedia'),
(6, 'Filipiniana'),
(7, 'Newspaper'),
(8, 'General'),
(9, 'References');

-- --------------------------------------------------------

--
-- Table structure for table `lost_book`
--

CREATE TABLE `lost_book` (
  `Book_ID` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `Member_No` varchar(50) NOT NULL,
  `Date Lost` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `verified` int(1) NOT NULL DEFAULT 0,
  `vkey` varchar(99) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `password`, `firstname`, `lastname`, `gender`, `address`, `contact`, `type`, `year_level`, `email_id`, `verified`, `vkey`, `status`) VALUES
(14561456, 'asd', 'a', 'a', 'Male', 'IIITBH-H4', '1456145614', 'Student', 'First Year', 'mehul.cse.1724@iiitbh.ac.in', 0, '', ''),
(53641456, 'f1290186a5d0b1ceab27f4e77c0c5d68', 'w', 'w', 'Male', 'IIITBH-H4', '1456145697', 'Student', 'First Year', 'mehul.cse.1724@iiitbh.ac.in', 0, 'ab397da5153c82d490100d80fb8a8ce1', ''),
(65416579, '363b122c528f54df4a0446b6bab05515', 'j', 'j', 'Male', 'IIITBH-H4', '7945614566', 'Student', 'First Year', 'tyagi.mehul1@gmail.com', 1, 'ca6bd4bfe0603bb6ac2a4ac3ec6b3aa0', ''),
(65465413, 'd95679752134a2d9eb61dbd7b91c4bcc', 'o', 'o', 'Male', 'IIITBH-H4', '6541975615', 'Student', 'First Year', 'tyagi.mehul1@gmail.com', 1, 'd22d2e9a5cb188e8f6ccc5037cf94965', ''),
(78965478, '415290769594460e2e485922904f345d', 'y', 'y', 'Male', 'IIITBH-H4', '1469664566', 'Student', 'First Year', 'tyagi.mehul1@gmail.com', 1, '00d440db50ee674d62719d423a196f85', ''),
(144566987, '2db95e8e1a9267b7a1188556b2013b33', 'l', 'l', 'Male', 'IIITBH-H4', '6541654165', 'Student', 'First Year', 'tyagi.mehul1@gmail.com', 0, '0faf76f3f785cf652b63352b385380f9', ''),
(145697455, '865c0c0b4ab0e063e5caa3387c1a8741', 'i', 'i', 'Male', 'IIITBH-H4', '7945613644', 'Student', 'First Year', 'tyagi.mehul1@gmail.com', 1, '581a1cdbcd93e03aaee87afc4f8f4796', ''),
(147586987, '6f8f57715090da2632453988d9a1501b', 'm', 'm', 'Male', 'IIITBH-H4', '1456641456', 'Student', 'First Year', 'tyagi.mehul1@gmail.com', 0, '9d3f2a509771630eae8d46aab46a1ab8', ''),
(170101002, 'abhishek', 'Abhishek', 'Kumar', 'Male', 'IIITBH-H4', '9999999340', 'Student', 'Third Year', 'abc564d@iiitbh.ac.in', 0, '', 'Active'),
(170101005, '94754d0abb89e4cf0a7f1c494dbb9d2c', 'Akash Kumar', 'Sahu', 'Male', 'IIITBH-H4', '8956985698', 'Student', 'Third Year', 'akashsahujustdoit02051998@gmail.com', 1, '21b64e4c3919e1e5f36e03c51b57ed78', ''),
(170101008, 'ccda1683d8c97f8f2dff2ea7d649b42c', 'Aman', 'Mishra', 'Male', 'IIITBH-H4', '9745697456', 'Student', 'Third Year', 'mishraaman1999@gmail.com', 1, '68c0a8fac55ff482330e47d99ca0cb43', ''),
(170101013, 'anuranjan', 'Anuranjan', 'Kumar', 'Female', 'IIITBH-H4', '', 'Teacher', 'Faculty', 'abhygg5ffd@iiitbh.ac.in', 0, '', 'Active'),
(170101020, 'd30b23c51ebf2cdd0738da47b2eac4bf', 'Krishang', 'Agarwal', 'Male', 'IIITBH-H4', '9999990032', 'Student', 'Fourth Year', 'abcdff@iiitbh.ac.in', 0, '', 'Active'),
(170101021, 'shushant', 'Shushant', 'Samir', 'Male', 'IIITBH-H4', '9999990902', 'Student', 'Second Year', 'abcd13@iiitbh.ac.in', 0, '', 'Active'),
(170101024, 'f626f4ab367c4cf89ea50330054f2056', 'Mehul', 'Tyagi', 'Male', 'IIITBH-H4', '9999999999', 'Student', 'Third Year', 'tyagi.mehul1@gmail.com', 1, '', 'Active'),
(170101033, '3b05c608fc809ed02ed7bbda7d3f7b0b', 'Nitish', 'Rawat', 'Male', 'On world Tour', '9696858574', 'Student', 'Fourth Year', 'nitish.rawat.1998@gmail.com', 1, 'bcadbd198d830f67f26ae4b2f73866b0', ''),
(170101040, 'pritam', 'Pritam', 'Pal', 'Male', 'IIITBH-H4', '9999991321', 'Student', 'Second Year', 'ah485@iiitbh.ac.in', 0, '', 'Active'),
(170101052, 'suraj', 'Suraj', 'Kumar', 'Male', 'IIITBH-H4', '9999912423', 'Teacher', 'Faculty', 'a987d@iiitbh.ac.in', 0, '', 'Active'),
(170101053, 'suraj', 'Suraj', 'Kumar', 'Female', 'IIITBH-H4', '9999132134', 'Student', 'Second Year', 'abfffd@iiitbh.ac.in', 0, '', 'Active'),
(170102019, 'hitesh', 'Hitesh', 'Barbosa', 'Male', 'IIITBH-H4', '9999902101', 'Student', 'Second Year', 'af45ddd@iiitbh.ac.in', 0, '', 'Active'),
(170102045, 'santosh', 'Santosh', 'Kumar', 'Male', 'IIITBH-H4', '9999999123', 'Student', 'First Year', 'aghd@iiitbh.ac.in', 0, '', 'Active'),
(1456145655, 'f970e2767d0cfe75876ea857f92e319b', 'as', 'as', 'Male', 'IIITBH-H4', '9666665999', 'Student', 'First Year', 'mehul.cse.1724@iiitbh.ac.in', 0, '5e4080c8be229211eeafa7e190225f13', ''),
(1456145688, '7b8b965ad4bca0e41ab51de7b31363a1', 'n', 'n', 'Male', 'IIITBH-H4', '4785697458', 'Student', 'First Year', 'mehul.cse.1724@iiitbh.ac.in', 0, '44801b4d048f62f8314a6bafdcb6bc96', ''),
(2147483647, '83878c91171338902e0fe0fb97a8c47a', 'p', 'p', 'Male', 'IIITBH-H4', '1456974595', 'Student', 'First Year', 'tyagi.mehul1@gmail.com', 1, '9cfa52ab38044e0848de30f0644619b0', '');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `borrowertype` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `borrowertype`) VALUES
(2, 'Teacher'),
(20, 'Employee'),
(21, 'Non-Teaching'),
(22, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'Mehul', 'Tyagi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `borrowerid` (`member_id`),
  ADD KEY `borrowid` (`borrow_id`);

--
-- Indexes for table `borrowdetails`
--
ALTER TABLE `borrowdetails`
  ADD PRIMARY KEY (`borrow_details_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_id` (`category_id`),
  ADD KEY `classid` (`category_id`);

--
-- Indexes for table `lost_book`
--
ALTER TABLE `lost_book`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowertype` (`borrowertype`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `borrowdetails`
--
ALTER TABLE `borrowdetails`
  MODIFY `borrow_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `lost_book`
--
ALTER TABLE `lost_book`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
