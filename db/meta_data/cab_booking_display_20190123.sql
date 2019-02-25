-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 22, 2019 at 08:57 PM
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

--
-- Dumping data for table `wp_cab_pricing_meta_data`
--

INSERT INTO `wp_cab_pricing_meta_data` (`id`, `pricing_id`, `price_by_passenger`, `oneway_price`, `return_price`, `time_pricing`, `return_time_pricing`, `return_discount`, `base_pickup_price`, `dropoff_base_price`, `standing_fee`, `minimum_price`, `way_stop_minimum_price`, `meet_greet`, `baby_seat`, `booster_seat`, `passenger_fee_start_from`, `passenger_fee`, `dogs_fee`, `special_luggage_fee`, `waiting_time_price`, `fixed_hourly_price`, `created_at`, `modified_at`) VALUES
(2, 1, '', '20.0000', '12.0000', '14.0000', '16.0000', 2, '4.0000', '6.0000', '15.0000', '0.0000', '5.0000', '2.0000', '5.0000', '5.0000', '5.0000', '5.0000', '5.0000', '5.0000', '10.0000', '12.0000', '2019-01-19 21:23:26', '2019-01-19 21:23:26');

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

--
-- Dumping data for table `wp_cab_pricing_meta_dynamic_hour_price`
--

INSERT INTO `wp_cab_pricing_meta_dynamic_hour_price` (`id`, `pricing_id`, `dynamic_price_per_hour`, `dynamic_price_hour`, `created_at`, `modified_at`) VALUES
(1, 1, '0.0000', '00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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

--
-- Dumping data for table `wp_cab_pricing_meta_out_of_hours_pricing`
--

INSERT INTO `wp_cab_pricing_meta_out_of_hours_pricing` (`id`, `pricing_id`, `price_inc_special_dates`, `interval_from_hour`, `interval_from_min`, `interval_to_hour`, `interval_to_min`, `apply_over_fixed_price`, `day1`, `day2`, `day3`, `day4`, `day5`, `day6`, `day7`, `night1`, `night2`, `night3`, `night4`, `night5`, `night6`, `night7`, `created_at`, `modified_at`) VALUES
(1, 1, '1', 15, 20, 21, 30, '1', '12.0000', '14.0000', '16.0000', '18.0000', '20.0000', '22.0000', '24.0000', '11.0000', '13.0000', '15.0000', '17.0000', '19.0000', '21.0000', '23.0000', '2019-01-20 06:21:21', '2019-01-19 07:19:24');

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

--
-- Dumping data for table `wp_cab_pricing_meta_radius_pricing`
--

INSERT INTO `wp_cab_pricing_meta_radius_pricing` (`id`, `pricing_id`, `upto_distance`, `oneway_price`, `return_price`, `created_at`, `modified_at`) VALUES
(1, 1, NULL, NULL, NULL, '2019-01-19 07:30:30', '2019-01-19 07:19:24'),
(2, 1, '', '0.0000', '0.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
