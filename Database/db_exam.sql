-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 14, 2019 at 07:32 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

DROP TABLE IF EXISTS `tbl_ans`;
CREATE TABLE IF NOT EXISTS `tbl_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT '0',
  `ans` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(1, 1, 0, '31'),
(2, 1, 0, '28'),
(3, 1, 1, '26'),
(4, 1, 0, '78'),

(5, 2, 0, '61'),
(6, 2, 1, '63'),
(7, 2, 0, '57'),
(8, 2, 0, '87'),

(9, 3, 0, '85'),
(10, 3, 1, '82'),
(11, 3, 0, '90'),
(12, 3, 0, '80'),

(13, 4, 1, '261'),
(14, 4, 0, '378'),
(15, 4, 0, '372'),
(16, 4, 0, '200'),

(17, 5, 0, '346'),
(18, 5, 0, '378'),
(19, 5, 0, '372'),
(20, 5, 1, '378'),

(21, 6, 0, '-39'),
(22, 6, 0, '-41'),
(23, 6, 1, '-38'),
(24, 6, 0, '-40'),

(25, 7, 0, '4956'),
(26, 7, 1, '49536'),
(27, 7, 0, '7863'),
(28, 7, 0, '7633'),

(29, 8, 0, '4987'),
(30, 8, 0, '4567'),
(31, 8, 1, '4851'),
(32, 8, 0, '4762'),

(33, 9, 1, '8304'),
(34, 9, 0, '8367'),
(35, 9, 0, '8312'),
(36, 9, 0, '8197');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE IF NOT EXISTS `tbl_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL,
  `diff` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`,`diff`) VALUES
(1, 1, '2 + 24 = ?', 1),
(2, 2, '5 + 58 = ?',1),
(3, 3, '74 + 8 = ?',1),
(4, 4, '87 * 3 = ?',2),
(5, 5, '78 + 98 * 3 = ?',2),
(6, 6, '97 - 45 * 3 = ?',2),
(7, 7, '738 * 67 + 90 = ?',3),
(8, 8, '6734 + 763 - 98 * 9 * 3 = ?',3),
(9, 9, '9789 - 45 * 33 = ?',3);
-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
