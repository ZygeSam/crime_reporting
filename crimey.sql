-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2020 at 07:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crimey`
--

-- --------------------------------------------------------

--
-- Table structure for table `case_types`
--

CREATE TABLE `case_types` (
  `case_types_id` int(6) NOT NULL,
  `case_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_types`
--

INSERT INTO `case_types` (`case_types_id`, `case_name`) VALUES
(1, 'Homicide'),
(2, 'Arson'),
(3, 'Robbery'),
(4, 'Rape and sexual assault'),
(5, 'Domestic Abuse'),
(0, 'Burglary'),
(7, 'Violent crime'),
(8, 'Childhood abuse'),
(9, 'Antisocial behaviour'),
(11, 'Cyber crime and online fraud'),
(12, 'Hate Crime'),
(13, 'Image based sexual abuse'),
(14, 'Modern slavery'),
(15, 'Terrorism'),
(17, 'Stalking and harassment'),
(18, 'Murder or Manslaughter'),
(20, 'Coercive control during Covid-19');

-- --------------------------------------------------------

--
-- Table structure for table `command_dept`
--

CREATE TABLE `command_dept` (
  `cd_id` int(11) NOT NULL,
  `command_id` int(6) NOT NULL,
  `department_id` int(6) NOT NULL,
  `police_id` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `command_dept`
--

INSERT INTO `command_dept` (`cd_id`, `command_id`, `department_id`, `police_id`) VALUES
(5, 35, 9, 1),
(6, 35, 9, 1),
(7, 35, 9, 0),
(8, 35, 9, 0),
(9, 35, 9, 0),
(10, 35, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--

CREATE TABLE `crimes` (
  `crime_id` int(6) NOT NULL,
  `case_types_id` int(6) NOT NULL,
  `crime_addr` varchar(225) NOT NULL,
  `crimearea` varchar(50) NOT NULL,
  `crime_street` varchar(25) NOT NULL,
  `crime_town` varchar(25) NOT NULL DEFAULT 'Aberdeen',
  `crime_desc` text NOT NULL,
  `postcode` text NOT NULL,
  `ip_addr` varchar(12) NOT NULL,
  `mac_addr` text NOT NULL,
  `location` varchar(225) NOT NULL,
  `browser` varchar(225) NOT NULL,
  `model` varchar(225) NOT NULL,
  `reporter_full_name` varchar(225) NOT NULL,
  `reporter_address` varchar(225) NOT NULL,
  `reporter_street` varchar(25) NOT NULL,
  `reporter_town` varchar(25) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `police_id` int(6) NOT NULL DEFAULT '0',
  `approval` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(25) NOT NULL DEFAULT 'Pending',
  `solved` varchar(3) NOT NULL DEFAULT 'off'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crimes`
--

INSERT INTO `crimes` (`crime_id`, `case_types_id`, `crime_addr`, `crimearea`, `crime_street`, `crime_town`, `crime_desc`, `postcode`, `ip_addr`, `mac_addr`, `location`, `browser`, `model`, `reporter_full_name`, `reporter_address`, `reporter_street`, `reporter_town`, `phone`, `created_at`, `police_id`, `approval`, `status`, `solved`) VALUES
(91, 4, '10 Queen street', 'Queen street', 'Queen_St,', 'Aberdeen', '\r\nThey are raping people', 'AB25 5AX', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Samuel Love', '10 King street', 'King street', 'Aberdeen', '07894429425', '2020-08-21 13:22:48', 0, 0, 'Pending', 'off'),
(77, 7, '20 Ashwood park  Bridge of Don Aberdeen', '20', 'Bucksburn,Inverurie_Rd', 'Aberdeen', '\r\nheader', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Chalie', '20 Ashwood park  Bridge of Don Aberdeen', '10 king street', 'Aberdeen', '07894429425', '2020-08-18 15:04:19', 29, 0, 'pending', '0'),
(71, 15, '10 Queen street', 'Queen street', 'Nelson_St', 'Aberdeen', '\r\nChill', 'AB25 5AX', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Sam', '10 King street', 'King street', 'Aberdeen', '07894429425', '2020-08-18 14:45:48', 0, 0, 'Pending', 'off'),
(76, 9, '20 Ashwood park  Bridge of Don Aberdeen', '20', 'Victoria_Rd', 'Aberdeen', '\r\ncheat', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Lilian', '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Aberdeen', '07894429425', '2020-08-18 15:01:25', 0, 0, 'Pending', 'off'),
(75, 14, '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Dyce_Primary_School_Liais', 'Aberdeen', '\r\nSlave', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Brian', '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Aberdeen', '07894429425', '2020-08-18 15:00:04', 0, 0, 'Pending', 'off'),
(88, 0, '', '', '', 'Aberdeen', '', '', '', '', '', '', '', '', '', '', '', '', '2020-08-20 19:48:46', 0, 0, 'Pending', 'off'),
(89, 1, '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Queen_St,', 'Aberdeen', '\r\nGlut', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Lilian', '20 Ashwood park  Bridge of Don Aberdeen', '10 king street', 'Aberdeen', '07894429425', '2020-08-20 20:34:12', 0, 0, 'Pending', 'off'),
(83, 1, '20 Ashwood park  Bridge of Don Aberdeen', '10 king street', 'Queen_St,', 'Aberdeen', '\r\nleave me', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Love', '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Aberdeen', '07894429425', '2020-08-19 23:39:46', 28, 1, 'approved', '1'),
(84, 12, '20 Ashwood park  Bridge of Don Aberdeen', '10 king street', 'Queen_St,', 'Aberdeen', '\r\nsnub me', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mira', '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Aberdeen', '07894429425', '2020-08-19 23:40:54', 0, 0, 'Pending', 'off'),
(70, 1, '10 Queen street', 'Queen street', 'Seaton_School,Seaton_Pl_E', 'Aberdeen', '\r\nblow me', 'AB25 5AX', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:79.0) Gecko/20100101 Firefox/79.0', 'Chris', '10 King street', 'King street', 'Aberdeen', '07894429425', '2020-08-18 14:38:04', 0, 0, 'Pending', 'off'),
(85, 20, '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Queen_St,', 'Aberdeen', '\r\nlate scoop', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Lilian', '20 Ashwood park  Bridge of Don Aberdeen', '10 king street', 'Aberdeen', '07894429425', '2020-08-19 23:42:07', 0, 0, 'Pending', 'off'),
(86, 0, '', '', '', 'Aberdeen', '', '', '', '', '', '', '', '', '', '', '', '', '2020-08-19 23:43:04', 0, 0, 'Pending', 'off'),
(87, 18, '20 Ashwood park  Bridge of Don Aberdeen', '10 king street', 'Queen_St,', 'Aberdeen', '\r\njunt', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'sam', '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Aberdeen', '07894429425', '2020-08-19 23:44:57', 0, 0, 'pending', '0'),
(90, 1, '20 Ashwood park  Bridge of Don Aberdeen', '10 king street', 'Queen_St,', 'Aberdeen', '\r\nthe rock', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36', 'Bichan', '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Aberdeen', '07894429425', '2020-08-20 20:35:25', 27, 1, 'pending', '0'),
(92, 7, '20 Ashwood park  Bridge of Don Aberdeen', '10 king street', 'Seaton_School,Seaton_Pl_E', 'Aberdeen', '\r\nsum me up', 'AB22 8PR', '::1', '00-FF-36-F3-E5-99   Media disconnected', 'Aberdeen', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'Bichan', '20 Ashwood park  Bridge of Don Aberdeen', '10 Queen street', 'Aberdeen', '07894429425', '2020-08-21 21:22:47', 0, 0, 'Pending', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `police_id` int(6) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department_id` int(6) DEFAULT NULL,
  `police_command_id` int(6) DEFAULT NULL,
  `dob` varchar(10) NOT NULL,
  `joined_date` varchar(11) NOT NULL,
  `exit_date` varchar(10) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`police_id`, `Name`, `role`, `department_id`, `police_command_id`, `dob`, `joined_date`, `exit_date`, `username`, `password`, `email`, `phone`, `position`) VALUES
(28, 'Samuel', 'Sgt/DS', 0, 3, '2020-08-18', '2020-08-28', '2020-09-05', '1993', '$2y$10$NUxYGgCcTB4xACTKXtuTY.H1mF4U/myOvwPpE4vZGGIlZFOSCH96K', 'menawonu.samuel@gmail.com', '07894429425', 0),
(29, 'Emmanuel', 'Supt/DSupt', 7, 1, '2020-08-05', '2020-08-21', '2020-08-21', '1995', '$2y$10$g7uw5a9lRL/BgfmUWeRYxODitFZz4LmDaS1rfR.WQ5AYmZhBn0I02', 'menawonu.samuel@gmail.com', '07894429425', 0),
(18, 'Samuel Menawonu', 'Sgt/DS', 10, 1, '2003-03-12', '2020-08-17', '2023-12-17', '1813617', '$2y$10$shOzkN1gPy5R9tanKivJ2eP9OsDTQW1atCcG81/0waD4Hi3vFSB26', 'menawonu.samuel@gmail.com', '07894429425', 0),
(25, 'Sam sam', 'Supt/DSupt', 2, 4, '2020-08-12', '2020-08-29', '2020-08-31', '1991', '$2y$10$BNR3/iH2j/6lGtADNeCfeOJupF2TsrC5zq0TRC.awl0h.WWMYo30u', 'engrsamir50@gmail.com', '07894429425', 0),
(26, 'Sam Mena', 'Ch Insp/DCI', 6, 3, '2020-08-20', '2020-08-19', '2020-08-14', '112485', '$2y$10$czVqS/hc8aFl0IyIX7ruqeVeGkjncAiu60Dk87gq966HekQeX4xPa', 'engrsamir50@gmail.com', '07894429425', 0),
(21, 'Sam Ife', 'PC/DC', 7, 1, '1994-06-15', '2020-08-19', '2020-08-20', '1994', '$2y$10$xnZws2Q1H2m/BjA4mTlHJOLYf3Qdw0PTdJTuyqt6zHmTDHcpft1fG', 'engrsamir50@gmail.com', '07894429425', 0),
(22, 'love sam', 'Sgt/DS', 9, 18, '2020-08-19', '2020-08-13', '2020-08-13', '1992', '$2y$10$Nd3w80.7ZvLBQDRZHYEzVOp/apAVo9pEMVhQ4WagfT0dbECPXKedS', 'engrsamir50@gmail.com', '07894429425', 0),
(27, 'John Bull', 'Insp/DI', 0, 3, '2020-08-20', '2020-08-27', '2020-08-31', '1990', '$2y$10$1TaBDUKedVzYvci9OPGBgOBWZirK92v2buWKC1lgo53c6Yk49ZeAy', 'engrsamir50@gmail.com', '07894429425', 0);

-- --------------------------------------------------------

--
-- Table structure for table `police_command_areas`
--

CREATE TABLE `police_command_areas` (
  `command_id` int(6) NOT NULL,
  `command_name` varchar(255) NOT NULL,
  `command_division` varchar(25) NOT NULL DEFAULT 'North Division',
  `street` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `postcode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_command_areas`
--

INSERT INTO `police_command_areas` (`command_id`, `command_name`, `command_division`, `street`, `town`, `postcode`) VALUES
(1, 'POLICE STATION', 'NORTH EAST DIVISION', 'Seaton_School,Seaton_Pl_E', 'ABERDEEN', 'AB24 1XE'),
(2, 'POLICE STATION', 'NORTH EAST DIVISION', 'Great_Northern_Rd', 'ABERDEEN', 'AB11 7XH'),
(3, 'POLICE STATION', 'NORTH EAST DIVISION', 'Queen_St,', 'ABERDEEN', ' AB10 1ZA'),
(4, 'POLICE STATION', 'NORTH EAST DIVISION', ' Dyce,Aberdeen_International_Airport,Dyce', 'ABERDEEN', ' AB21 7DU'),
(8, 'POLICE STATION', 'NORTH EAST DIVISION', 'FairView_Street,7A_Greenfern_PI', 'ABERDEEN', 'AB16 6JR'),
(11, 'POLICE STATION', 'NORTH EAST DIVISION', 'Nelson_St', 'ABERDEEN', ' AB24 5EQ'),
(15, 'POLICE STATION', 'NORTH EAST DIVISION', 'Bucksburn,Inverurie_Rd', 'ABERDEEN', 'AB21 9AP'),
(16, 'POLICE STATION', 'NORTH EAST DIVISION', ' Bridge_of_Don,Fairview_St,Danestone', 'ABERDEEN', 'AB22 8ZP'),
(17, 'POLICE STATION', 'NORTH EAST DIVISION', 'Dyce_Primary_School_Liaison_Office,Gordon_Terrace,Dyce', 'ABERDEEN', ' AB21 7DU'),
(18, 'POLICE STATION', 'NORTH EAST DIVISION', ' Manor_Park_School,Danestone_Cir', 'ABERDEEN', 'AB16 7YB'),
(20, 'POLICE STATION', 'NORTH EAST DIVISION', 'Rosemount_Community', 'ABERDEEN', 'AB25 2NS'),
(21, 'POLICE STATION', 'NORTH EAST DIVISION', 'Northfield_Academy,Granitehill Pl', 'ABERDEEN', 'AB16 7AU'),
(22, 'POLICE SOUTH', 'NORTH EAST DIVISION', 'Whinhill_Rd', 'ABERDEEN', 'AB11 7XH'),
(24, 'POLICE SOUTH', 'NORTH EAST DIVISION', 'Victoria_Rd', 'ABERDEEN', 'AB11 9LX'),
(25, 'POLICE STATION', 'NORTH EAST DIVISION', ' Guild_St', 'ABERDEEN', 'AB11 5RD'),
(30, 'POLICE STATION', 'NORTH EAST DIVISION', '230_Abbotswell_Cres', 'ABERDEEN', 'AB12 3JD'),
(31, 'POLICE STATION', 'NORTH EAST DIVISION', '7A_Greenfern_Pl', 'ABERDEEN', 'AB16 6JR');

-- --------------------------------------------------------

--
-- Table structure for table `police_department`
--

CREATE TABLE `police_department` (
  `department_id` int(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `case_types_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_department`
--

INSERT INTO `police_department` (`department_id`, `name`, `case_types_id`) VALUES
(0, 'Homicide', 1),
(1, 'Robbery', 3),
(2, 'Arson', 2),
(3, 'Domestic Abuse', 5),
(4, 'Burglary', 0),
(6, 'Rape and sexual assault', 4),
(7, 'Violent crime', 7),
(8, 'Childhood abuse', 8),
(9, 'Antisocial behaviour', 9),
(10, 'Cyber crime and online fraud', 11),
(11, 'Hate Crime', 12),
(12, 'Terrorism', 15),
(13, 'Imaged based sexual abuse', 13),
(14, 'Coercive control during Covid-19', 20),
(15, 'Modern slavery', 14),
(16, 'Murder or Manslaughter', 18),
(17, 'Stalking and harassment', 17);

-- --------------------------------------------------------

--
-- Table structure for table `reporter_files`
--

CREATE TABLE `reporter_files` (
  `reporter_files_id` int(11) NOT NULL,
  `crime_id` int(6) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reporter_files`
--

INSERT INTO `reporter_files` (`reporter_files_id`, `crime_id`, `file_path`) VALUES
(9, 62, 'uploads/2copy 4x6 (1).jpg'),
(10, 63, 'uploads/â€ª+234 906 748 5019â€¬ 20170520_215120.jpg'),
(11, 64, 'uploads/2copy 4x6 (4).jpg'),
(12, 65, 'uploads/IMG_20150616_093955.jpg'),
(13, 66, 'uploads/Newton 20171108_213207.jpg'),
(14, 67, 'uploads/WP_20140621_025.jpg'),
(15, 68, 'uploads/IMG-20160821-WA0016.jpg'),
(16, 69, 'uploads/IMG-20160925-WA0011.jpg'),
(17, 70, 'uploads/IMG-20171027-WA0082.jpg'),
(18, 71, 'uploads/InstagramCapture_391f5be1-08e3-4af6-a486-07b36b4cb372_jpg.jpg'),
(19, 72, 'uploads/IMG-20160516-WA0028.jpg'),
(20, 73, 'uploads/IMG-20160827-WA0010.jpg'),
(21, 74, 'uploads/IMG-20161106-WA0001.jpg'),
(22, 75, 'uploads/IMG-20160708-WA0006.jpg'),
(23, 76, 'uploads/IMG-20160907-WA0003.jpg'),
(24, 77, 'uploads/DSC_0187.JPG'),
(25, 79, 'uploads/DSC_0039.JPG'),
(26, 80, 'uploads/2014-07-21 12.13.28.jpg'),
(27, 81, 'uploads/3c8ef6ef8b56848c98f71eacbb799357.jpg'),
(28, 82, 'uploads/TUKD1284.JPG'),
(29, 83, 'uploads/MHCW1958.JPG'),
(30, 84, 'uploads/91fdf74245b7a34d8be559d8ac9cbee6.jpg'),
(31, 85, 'uploads/IMG_4756.JPG'),
(32, 87, 'uploads/IMG-20171012-WA0001.jpg'),
(33, 89, 'uploads/IMG_3208.JPG'),
(34, 90, 'uploads/IMG_0323.JPG'),
(35, 91, 'uploads/IMG-20180112-WA0011.jpg'),
(36, 92, 'uploads/IMG_0445.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(8, '112485', NULL, '$2y$10$gVxHfaMI5nP.3THcGHGLoO2/1y5PM1Y780qnHz.gUMm7pxjUpUcVm'),
(18, '1813617', 'engrsamir50@yahoo.com', '$2y$10$1rKUJ/9NoUARYt5E2qGWXOtVo0.y2ZOfCqVhurkSVvcidkFO08ZHG');

-- --------------------------------------------------------

--
-- Table structure for table `wanted`
--

CREATE TABLE `wanted` (
  `wid` int(6) NOT NULL,
  `crime_id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `description` text NOT NULL,
  `last_seen` text NOT NULL,
  `date` date NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wanted`
--

INSERT INTO `wanted` (`wid`, `crime_id`, `name`, `age`, `description`, `last_seen`, `date`, `image`) VALUES
(12, 91, 'Samuel', 20, 'Rapist', 'Aberdeen', '2020-08-22', 'most_wanted/IMG-20161004-WA0011.jpg'),
(13, 71, 'Menawonu', 20, 'Terror', 'Aberdeen', '2020-08-22', 'most_wanted/IMG-20160603-WA0008.jpg'),
(14, 70, 'love sam', 20, 'Homio', 'Aberdeen', '2020-08-22', 'most_wanted/IMG-20160501-WA0003.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `case_types`
--
ALTER TABLE `case_types`
  ADD PRIMARY KEY (`case_types_id`);

--
-- Indexes for table `command_dept`
--
ALTER TABLE `command_dept`
  ADD PRIMARY KEY (`cd_id`);

--
-- Indexes for table `crimes`
--
ALTER TABLE `crimes`
  ADD PRIMARY KEY (`crime_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`police_id`);

--
-- Indexes for table `police_command_areas`
--
ALTER TABLE `police_command_areas`
  ADD PRIMARY KEY (`command_id`);

--
-- Indexes for table `police_department`
--
ALTER TABLE `police_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `reporter_files`
--
ALTER TABLE `reporter_files`
  ADD PRIMARY KEY (`reporter_files_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wanted`
--
ALTER TABLE `wanted`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `case_types`
--
ALTER TABLE `case_types`
  MODIFY `case_types_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `command_dept`
--
ALTER TABLE `command_dept`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crimes`
--
ALTER TABLE `crimes`
  MODIFY `crime_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `police_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `police_command_areas`
--
ALTER TABLE `police_command_areas`
  MODIFY `command_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `police_department`
--
ALTER TABLE `police_department`
  MODIFY `department_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reporter_files`
--
ALTER TABLE `reporter_files`
  MODIFY `reporter_files_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wanted`
--
ALTER TABLE `wanted`
  MODIFY `wid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
