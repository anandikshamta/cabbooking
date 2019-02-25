-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 19, 2019 at 09:28 PM
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
-- Table structure for table `wp_cab_pricing`
--

DROP TABLE IF EXISTS `wp_cab_pricing`;
CREATE TABLE IF NOT EXISTS `wp_cab_pricing` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `company_id` int(250) NOT NULL,
  `vimg` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `seats` varchar(100) COLLATE utf8_bin NOT NULL,
  `bags` varchar(100) COLLATE utf8_bin NOT NULL,
  `wchair` varchar(100) COLLATE utf8_bin NOT NULL,
  `trailer` varchar(100) COLLATE utf8_bin NOT NULL,
  `booster_seat` varchar(100) COLLATE utf8_bin NOT NULL,
  `baby_seat` varchar(100) COLLATE utf8_bin NOT NULL,
  `special_offer` varchar(100) COLLATE utf8_bin NOT NULL,
  `extra_info` varchar(250) COLLATE utf8_bin NOT NULL,
  `available` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cab_pricing_meta_data`
--

DROP TABLE IF EXISTS `wp_cab_pricing_meta_data`;
CREATE TABLE IF NOT EXISTS `wp_cab_pricing_meta_data` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `pricing_id` int(250) NOT NULL,
  `price_by_passenger` char(4) COLLATE utf8_bin NOT NULL,
  `oneway_price` decimal(10,4) DEFAULT NULL,
  `return_price` decimal(10,4) DEFAULT NULL,
  `time_pricing` decimal(10,4) DEFAULT NULL,
  `return_time_pricing` decimal(10,4) DEFAULT NULL,
  `return_discount` int(11) DEFAULT NULL,
  `base_pickup_price` decimal(10,4) DEFAULT NULL,
  `dropoff_base_price` decimal(10,4) DEFAULT NULL,
  `standing_fee` decimal(10,4) DEFAULT NULL,
  `minimum_price` decimal(10,4) DEFAULT NULL,
  `way_stop_minimum_price` decimal(10,4) DEFAULT NULL,
  `meet_greet` decimal(10,4) DEFAULT NULL,
  `baby_seat` decimal(10,4) DEFAULT NULL,
  `booster_seat` decimal(10,4) DEFAULT NULL,
  `passenger_fee_start_from` decimal(10,4) DEFAULT NULL,
  `passenger_fee` decimal(10,4) DEFAULT NULL,
  `dogs_fee` decimal(10,4) DEFAULT NULL,
  `special_luggage_fee` decimal(10,4) DEFAULT NULL,
  `waiting_time_price` decimal(10,4) DEFAULT NULL,
  `fixed_hourly_price` decimal(10,4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cab_pricing_meta_dynamic_hour_price`
--

DROP TABLE IF EXISTS `wp_cab_pricing_meta_dynamic_hour_price`;
CREATE TABLE IF NOT EXISTS `wp_cab_pricing_meta_dynamic_hour_price` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `pricing_id` int(250) NOT NULL,
  `dynamic_price_per_hour` decimal(10,4) DEFAULT NULL,
  `dynamic_price_hour` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cab_pricing_meta_out_of_hours_pricing`
--

DROP TABLE IF EXISTS `wp_cab_pricing_meta_out_of_hours_pricing`;
CREATE TABLE IF NOT EXISTS `wp_cab_pricing_meta_out_of_hours_pricing` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `pricing_id` int(250) NOT NULL,
  `price_inc_special_dates` char(4) COLLATE utf8_bin DEFAULT NULL,
  `interval_from_hour` int(10) DEFAULT NULL,
  `interval_from_min` int(10) DEFAULT NULL,
  `interval_to_hour` int(10) DEFAULT NULL,
  `interval_to_min` int(10) DEFAULT NULL,
  `apply_over_fixed_price` char(4) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '1-percentage, 2-fixed',
  `day1` decimal(10,4) DEFAULT NULL,
  `day2` decimal(10,4) DEFAULT NULL,
  `day3` decimal(10,4) DEFAULT NULL,
  `day4` decimal(10,4) DEFAULT NULL,
  `day5` decimal(10,4) DEFAULT NULL,
  `day6` decimal(10,4) DEFAULT NULL,
  `day7` decimal(10,4) DEFAULT NULL,
  `night1` decimal(10,4) DEFAULT NULL,
  `night2` decimal(10,4) DEFAULT NULL,
  `night3` decimal(10,4) DEFAULT NULL,
  `night4` decimal(10,4) DEFAULT NULL,
  `night5` decimal(10,4) DEFAULT NULL,
  `night6` decimal(10,4) DEFAULT NULL,
  `night7` decimal(10,4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cab_pricing_meta_radius_pricing`
--

DROP TABLE IF EXISTS `wp_cab_pricing_meta_radius_pricing`;
CREATE TABLE IF NOT EXISTS `wp_cab_pricing_meta_radius_pricing` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `pricing_id` int(250) NOT NULL,
  `upto_distance` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `oneway_price` decimal(10,4) DEFAULT NULL,
  `return_price` decimal(10,4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
