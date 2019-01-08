-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 07, 2019 at 07:10 PM
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
  `vehicle_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wp_cab_booking`
--
