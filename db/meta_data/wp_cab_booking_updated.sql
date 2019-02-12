-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2019 at 07:26 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cab_booking_display`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_cab_booking`
--

DROP TABLE IF EXISTS `wp_cab_booking`;
CREATE TABLE IF NOT EXISTS `wp_cab_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `from_address` text COLLATE utf8_bin NOT NULL,
  `to_address` text COLLATE utf8_bin NOT NULL,
  `extra` text COLLATE utf8_bin NOT NULL,
  `passenger` int(20) NOT NULL,
  `luggage` int(20) NOT NULL,
  `way` int(10) NOT NULL,
  `pickup_date` datetime NOT NULL,
  `return_date` datetime NOT NULL,
  `meet_greet` int(20) NOT NULL,
  `baby_seat` int(20) NOT NULL,
  `booster` int(20) NOT NULL,
  `wheelcair` int(20) NOT NULL,
  `promo_code` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) NOT NULL,
  `return_driver_id` int(11) DEFAULT NULL,
  `return_vehicle_id` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wp_cab_booking`
--

INSERT INTO `wp_cab_booking` (`id`, `company_id`, `user_id`, `from_address`, `to_address`, `extra`, `passenger`, `luggage`, `way`, `pickup_date`, `return_date`, `meet_greet`, `baby_seat`, `booster`, `wheelcair`, `promo_code`, `driver_id`, `vehicle_id`, `return_driver_id`, `return_vehicle_id`, `created_date`) VALUES
(1, 2, 2, 'Velachery', 'Adyar', '', 1, 1, 2018, '2018-11-10 00:00:00', '2019-01-09 00:00:00', 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, '2018-11-10 12:09:47'),
(33, 2, 2, 'gundu', 'velachery', '', 8, 1, 2019, '2019-01-06 00:00:00', '2019-01-22 00:00:00', 4, 5, 0, 0, NULL, NULL, 0, NULL, NULL, '2019-01-06 19:21:22'),
(32, 2, 2, '', '', '', 0, 0, 1970, '1970-01-01 00:00:00', '2019-01-22 00:00:00', 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, '2019-01-06 19:20:10'),
(31, 2, 2, 'guindy', 'velachery', '', 1, 1, 2019, '2019-01-06 00:00:00', '2019-01-16 00:00:00', 7, 11, 0, 0, NULL, NULL, 0, NULL, NULL, '2019-01-06 19:18:35'),
(34, 0, 0, 'tester', 'tester2', '', 1, 1, 1, '2019-01-09 04:13:00', '2019-01-07 00:00:00', 0, 2, 8, 0, '', NULL, 1, NULL, NULL, '2019-01-07 19:45:16'),
(35, 0, 0, 'tester', 'tester3', '', 7, 4, 1, '2019-01-09 06:13:00', '2019-01-07 00:00:00', 0, 8, 2, 0, '', NULL, 1, NULL, NULL, '2019-01-07 19:49:34'),
(36, 0, 0, 'tester3', 'tester4', '', 6, 4, 1, '2019-01-09 03:06:00', '2019-01-07 00:00:00', 0, 2, 4, 0, '', NULL, 1, NULL, NULL, '2019-01-07 19:52:12'),
(37, 0, 0, 'tester5', 'saran', '', 7, 4, 1, '2019-01-10 07:04:00', '2019-01-07 00:00:00', 0, 1, 4, 0, '', NULL, 1, NULL, NULL, '2019-01-07 19:53:08'),
(38, 0, 0, 'tetttt', 'sara', '', 5, 4, 1, '2019-01-10 03:08:00', '2019-01-07 00:00:00', 0, 3, 5, 0, '', NULL, 1, NULL, NULL, '2019-01-07 19:56:34'),
(39, 0, 0, 'test', 'saranya', '', 3, 4, 1, '2019-01-10 08:11:00', '2019-01-07 00:00:00', 0, 3, 8, 0, '', NULL, 1, NULL, NULL, '2019-01-07 19:59:09'),
(40, 0, 0, 'testing', 'saran2', '', 9, 5, 1, '2019-01-10 08:16:00', '2019-01-07 00:00:00', 0, 5, 7, 0, '', NULL, 0, NULL, NULL, '2019-01-07 20:13:40'),
(41, 0, 0, 'gggg', 'saran', '', 7, 8, 1, '2019-01-10 10:20:00', '2019-01-07 00:00:00', 0, 4, 11, 0, '', NULL, 0, NULL, NULL, '2019-01-07 20:16:30'),
(42, 0, 0, 'gggggg', 'saran', '', 4, 5, 1, '2019-01-11 10:20:00', '2019-01-07 00:00:00', 0, 4, 10, 0, '', NULL, 1, NULL, NULL, '2019-01-07 20:17:43'),
(43, 0, 0, 'test1', 'saran12', '', 7, 5, 1, '2019-01-10 10:14:00', '2019-01-07 00:00:00', 0, 7, 10, 0, '', NULL, 1, NULL, NULL, '2019-01-07 20:31:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
