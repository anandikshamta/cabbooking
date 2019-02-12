-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2019 at 07:58 PM
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
(1, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(33, 2, 0, 'guindy2', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 0, 1, 1, 0, '2019-02-12 19:45:06'),
(32, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(31, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(34, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(35, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(36, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(37, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(38, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(39, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(40, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(41, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(42, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55'),
(43, 2, 0, 'guindy', 'velachery', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 5, 0, 0, '', 1, 1, 1, 0, '2019-02-12 19:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cab_company_payment`
--

DROP TABLE IF EXISTS `wp_cab_company_payment`;
CREATE TABLE IF NOT EXISTS `wp_cab_company_payment` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `user_id` int(250) NOT NULL,
  `transaction_id` varchar(250) COLLATE utf8_bin NOT NULL,
  `transaction_status` varchar(250) COLLATE utf8_bin NOT NULL,
  `payment_method` varchar(50) COLLATE utf8_bin NOT NULL,
  `account_type` varchar(50) COLLATE utf8_bin NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `amount` varchar(250) COLLATE utf8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wp_cab_company_payment`
--

INSERT INTO `wp_cab_company_payment` (`id`, `user_id`, `transaction_id`, `transaction_status`, `payment_method`, `account_type`, `start_date`, `end_date`, `amount`) VALUES
(1, 2, '', 'completed', '', 'trial', '2018-11-08 05:08:40', '2018-11-15 05:08:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cab_drivers`
--

DROP TABLE IF EXISTS `wp_cab_drivers`;
CREATE TABLE IF NOT EXISTS `wp_cab_drivers` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `company_id` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `driver_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `gender` varchar(10) COLLATE utf8_bin NOT NULL,
  `language` varchar(30) COLLATE utf8_bin NOT NULL,
  `vehicle` varchar(100) COLLATE utf8_bin NOT NULL,
  `license` varchar(100) COLLATE utf8_bin NOT NULL,
  `license_expiry_date` datetime NOT NULL,
  `pco_licence` varchar(100) COLLATE utf8_bin NOT NULL,
  `pco_licence_expiry_date` datetime NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `phone` varchar(100) COLLATE utf8_bin NOT NULL,
  `skype` varchar(100) COLLATE utf8_bin NOT NULL,
  `additional_info` text COLLATE utf8_bin NOT NULL,
  `photo` varchar(150) COLLATE utf8_bin NOT NULL,
  `company_name` int(11) NOT NULL,
  `vat` varchar(100) COLLATE utf8_bin NOT NULL,
  `driver_company_address` varchar(250) COLLATE utf8_bin NOT NULL,
  `tax` varchar(250) COLLATE utf8_bin NOT NULL,
  `partner_driver` varchar(10) COLLATE utf8_bin NOT NULL,
  `commision` int(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wp_cab_drivers`
--

INSERT INTO `wp_cab_drivers` (`id`, `company_id`, `user_id`, `driver_name`, `password`, `gender`, `language`, `vehicle`, `license`, `license_expiry_date`, `pco_licence`, `pco_licence_expiry_date`, `email`, `phone`, `skype`, `additional_info`, `photo`, `company_name`, `vat`, `driver_company_address`, `tax`, `partner_driver`, `commision`, `created_at`, `modified_at`) VALUES
(1, 2, 7, 'Anu', 'UZYcfvPY40pYEIP9cLaX+Q==', 'male', 'gb', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'anu@test.com', '8489313939', 'dfdsfdsf', 'sdfdsfdsfd', 'http://localhost/cab_display/wp-content/plugins/cab_booking/inc/upload/154348476512729068_10208931576105508_3704463728028370491_n.jpg', 0, '', '', '', '', 0, '2018-11-29 09:46:05', '0000-00-00 00:00:00'),
(2, 2, 7, 'Sankaran', 'UZYcfvPY40pYEIP9cLaX+Q==', 'male', 'gb', '1', '', '2018-10-01 12:00:00', '', '2018-10-01 12:00:00', 'anu@test.com', '9364151859', 'dfdsfdsf', 'sdfdsfdsfd', 'http://localhost/cab_display/wp-content/plugins/cab_booking/inc/upload/154348476512729068_10208931576105508_3704463728028370491_n.jpg', 0, '', '', '', '', 0, '2019-11-29 09:46:05', '2019-11-29 09:46:05');

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

--
-- Dumping data for table `wp_cab_pricing`
--

INSERT INTO `wp_cab_pricing` (`id`, `company_id`, `vimg`, `description`, `seats`, `bags`, `wchair`, `trailer`, `booster_seat`, `baby_seat`, `special_offer`, `extra_info`, `available`, `created_at`, `modified_at`) VALUES
(1, 2, 'http://localhost/cab_display/wp-content/plugins/cab_booking/inc/upload/cars/saloon.jpg', 'Saloon', '4', '2', 'n', 'y', 'y', 'y', 'n', '', 'y', '2018-12-04 00:00:00', '2018-12-04 00:00:00'),
(2, 2, 'http://localhost/cab_display/wp-content/plugins/cab_booking/inc/upload/cars/estate.jpg', 'ESTATE', '4', '2', 'n', 'y', 'y', 'y', 'n', '', 'y', '2018-12-04 00:00:00', NULL),
(3, 2, 'http://localhost/cab_display/wp-content/plugins/cab_booking/inc/upload/cars/executive.jpg', 'EXECUTIVE', '4', '2', 'n', 'y', 'y', 'y', 'n', '', 'y', '2018-12-04 00:00:00', NULL),
(4, 2, 'http://localhost/cab_display/wp-content/plugins/cab_booking/inc/upload/cars/mpv_A.jpg', 'MPV A', '5', '3', '', 'y', 'y', 'y', '', '', 'y', '2018-12-04 00:00:00', '2018-12-10 16:03:09');

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
  `dynamic_price_hour` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `dynamic_price_per_hour` decimal(10,4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wp_cab_pricing_meta_dynamic_hour_price`
--

INSERT INTO `wp_cab_pricing_meta_dynamic_hour_price` (`id`, `pricing_id`, `dynamic_price_hour`, `dynamic_price_per_hour`, `created_at`, `modified_at`) VALUES
(2, 1, '12', '12.0000', '2019-01-29 20:46:49', '2019-01-29 20:46:49'),
(5, 1, '18', '35.0000', '2019-01-29 20:47:03', '2019-01-29 20:47:03'),
(4, 1, '15', '30.0000', '2019-01-29 20:38:39', '2019-01-29 20:38:39'),
(6, 1, '24', '26.0000', '2019-02-03 15:53:20', '2019-02-03 15:53:20'),
(7, 1, '28', '30.0000', '2019-02-03 15:54:02', '2019-02-03 15:54:02'),
(8, 1, '32', '36.0000', '2019-02-03 17:37:42', '2019-02-03 17:37:42'),
(10, 1, '40', '45.2500', '2019-02-03 17:40:39', '2019-02-03 17:40:39');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wp_cab_pricing_meta_radius_pricing`
--

INSERT INTO `wp_cab_pricing_meta_radius_pricing` (`id`, `pricing_id`, `upto_distance`, `oneway_price`, `return_price`, `created_at`, `modified_at`) VALUES
(1, 1, '150', '100.0000', '75.0000', '2019-01-19 07:30:30', '2019-01-19 07:19:24'),
(2, 1, '350', '250.0000', '25.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, '100', '200.0000', '500.0000', '2019-01-29 18:32:55', '2019-01-29 18:32:55'),
(10, 1, '200', '400.0000', '600.7500', '2019-01-29 18:33:54', '2019-01-29 18:33:54'),
(12, 1, '75', '150.0000', '300.0000', '2019-01-29 18:34:23', '2019-01-29 18:34:23'),
(13, 1, '400', '500.0000', '700.0000', '2019-01-29 20:48:18', '2019-01-29 20:48:18'),
(14, 1, '800', '1000.0000', '1500.0000', '2019-02-03 17:42:36', '2019-02-03 17:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cab_vehicle`
--

DROP TABLE IF EXISTS `wp_cab_vehicle`;
CREATE TABLE IF NOT EXISTS `wp_cab_vehicle` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `company_id` int(250) NOT NULL,
  `plate` varchar(250) COLLATE utf8_bin NOT NULL,
  `brand` varchar(250) COLLATE utf8_bin NOT NULL,
  `model` varchar(250) COLLATE utf8_bin NOT NULL,
  `color` varchar(250) COLLATE utf8_bin NOT NULL,
  `seats` varchar(250) COLLATE utf8_bin NOT NULL,
  `luggage` int(100) NOT NULL,
  `available` varchar(10) COLLATE utf8_bin NOT NULL,
  `pco_ln` varchar(250) COLLATE utf8_bin NOT NULL,
  `pco_exp_date` datetime NOT NULL,
  `mot` varchar(250) COLLATE utf8_bin NOT NULL,
  `ins_exp_date` datetime NOT NULL,
  `reg_number` varchar(250) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wp_cab_vehicle`
--

INSERT INTO `wp_cab_vehicle` (`id`, `company_id`, `plate`, `brand`, `model`, `color`, `seats`, `luggage`, `available`, `pco_ln`, `pco_exp_date`, `mot`, `ins_exp_date`, `reg_number`, `created_at`, `modified_at`) VALUES
(1, 2, 'TN75', 'Hyundai', 'i20', 'Black', '5', 5, '1', 'TN75430-34', '2018-11-30 00:00:00', 'Yes', '2018-11-30 00:00:00', 'TN01 76 2323', '2018-11-23 20:09:02', '2018-11-24 11:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-13 12:51:32', '2018-09-13 12:51:32', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_masterslider_options`
--

DROP TABLE IF EXISTS `wp_masterslider_options`;
CREATE TABLE IF NOT EXISTS `wp_masterslider_options` (
  `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(120) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_masterslider_options`
--

INSERT INTO `wp_masterslider_options` (`ID`, `option_name`, `option_value`) VALUES
(1, 'masterslider_custom_css_ver', '2.3'),
(2, 'master-slider-notice-installtion-time', '1536852907');

-- --------------------------------------------------------

--
-- Table structure for table `wp_masterslider_sliders`
--

DROP TABLE IF EXISTS `wp_masterslider_sliders`;
CREATE TABLE IF NOT EXISTS `wp_masterslider_sliders` (
  `ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slides_num` smallint(5) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom_styles` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom_fonts` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'draft',
  PRIMARY KEY (`ID`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_masterslider_sliders`
--

INSERT INTO `wp_masterslider_sliders` (`ID`, `title`, `type`, `slides_num`, `date_created`, `date_modified`, `params`, `custom_styles`, `custom_fonts`, `status`) VALUES
(1, 'Fullwidth Slider', 'custom', 4, '2018-09-14 03:10:30', '2018-09-14 03:47:02', 'eyJtZXRhIjp7IlNldHRpbmdzIWlkcyI6IjEiLCJTZXR0aW5ncyFuZXh0SWQiOjIsIlNsaWRlIWlkcyI6IjE2LDE3LDE4LDE5IiwiU2xpZGUhbmV4dElkIjoyMCwiQ29udHJvbCFpZHMiOiIxLDIsNCIsIkNvbnRyb2whbmV4dElkIjo1fSwiTVNQYW5lbC5TZXR0aW5ncyI6eyIxIjoie1wiaWRcIjpcIjFcIixcInNuYXBwaW5nXCI6dHJ1ZSxcImRpc2FibGVDb250cm9sc1wiOmZhbHNlLFwibmFtZVwiOlwiRnVsbHdpZHRoIFNsaWRlclwiLFwid2lkdGhcIjo4MDAsXCJoZWlnaHRcIjo0ODAsXCJ3cmFwcGVyV2lkdGhcIjo5NDUsXCJ3cmFwcGVyV2lkdGhVbml0XCI6XCJweFwiLFwiYXV0b0Nyb3BcIjpmYWxzZSxcInR5cGVcIjpcImN1c3RvbVwiLFwic2xpZGVySWRcIjpcIjFcIixcImVuYWJsZU92ZXJsYXlMYXllcnNcIjp0cnVlLFwibGF5b3V0XCI6XCJmdWxsd2lkdGhcIixcImF1dG9IZWlnaHRcIjpmYWxzZSxcInRyVmlld1wiOlwiYmFzaWNcIixcInNwZWVkXCI6MjAsXCJzcGFjZVwiOjAsXCJzdGFydFwiOjEsXCJncmFiQ3Vyc29yXCI6dHJ1ZSxcInN3aXBlXCI6dHJ1ZSxcIm1vdXNlXCI6dHJ1ZSxcIndoZWVsXCI6ZmFsc2UsXCJhdXRvcGxheVwiOnRydWUsXCJsb29wXCI6dHJ1ZSxcInNodWZmbGVcIjpmYWxzZSxcInByZWxvYWRcIjpcIi0xXCIsXCJvdmVyUGF1c2VcIjp0cnVlLFwiZW5kUGF1c2VcIjpmYWxzZSxcImhpZGVMYXllcnNcIjpmYWxzZSxcImRpclwiOlwiaFwiLFwicGFyYWxsYXhNb2RlXCI6XCJzd2lwZVwiLFwidXNlRGVlcExpbmtcIjpmYWxzZSxcImRlZXBMaW5rVHlwZVwiOlwicGF0aFwiLFwic3RhcnRPbkFwcGVhclwiOnRydWUsXCJzY3JvbGxQYXJhbGxheE1vdmVcIjozMCxcInNjcm9sbFBhcmFsbGF4QkdNb3ZlXCI6NTAsXCJzY3JvbGxQYXJhbGxheEZhZGVcIjp0cnVlLFwiY2VudGVyQ29udHJvbHNcIjpmYWxzZSxcImluc3RhbnRTaG93TGF5ZXJzXCI6ZmFsc2UsXCJjbGFzc05hbWVcIjpcIlwiLFwiYmdDb2xvclwiOlwiIzAwMDAwMFwiLFwic2tpblwiOlwibXMtc2tpbi1saWdodC02IHJvdW5kLXNraW5cIixcIm1zVGVtcGxhdGVcIjpcImN1c3RvbVwiLFwibXNUZW1wbGF0ZUNsYXNzXCI6XCJcIixcInVzZWRGb250c1wiOlwiXCJ9In0sIk1TUGFuZWwuU2xpZGUiOnsiMTYiOiJ7XCJpZFwiOjE2LFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDE4LzA5LzMxM0EzMTNBMzEzOV83NTE5LTE1MHgxNTAuanBnXCIsXCJpc092ZXJsYXlMYXllcnNcIjpmYWxzZSxcIm9yZGVyXCI6MCxcImJnXCI6XCIvMjAxOC8wOS8zMTNBMzEzQTMxMzlfNzUxOS5qcGdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwiMzEzQTMxM0EzMTM5Xzc1MTlcIixcImxheWVyX2lkc1wiOltdfSIsIjE3Ijoie1wiaWRcIjoxNyxcInRpbWVsaW5lX2hcIjoyMDAsXCJiZ1RodW1iXCI6XCIvMjAxOC8wOS81OTBiNTdjN2QwYjRkNjBiM2M1MDc3ZGYtMTUweDE1MC5wbmdcIixcImlzT3ZlcmxheUxheWVyc1wiOmZhbHNlLFwib3JkZXJcIjoxLFwiYmdcIjpcIi8yMDE4LzA5LzU5MGI1N2M3ZDBiNGQ2MGIzYzUwNzdkZi5wbmdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwiNTkwYjU3YzdkMGI0ZDYwYjNjNTA3N2RmXCIsXCJsYXllcl9pZHNcIjpbXX0iLCIxOCI6IntcImlkXCI6MTgsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTgvMDkvcHJvdGF4aS0xNTB4MTUwLmpwZ1wiLFwiaXNPdmVybGF5TGF5ZXJzXCI6ZmFsc2UsXCJvcmRlclwiOjIsXCJiZ1wiOlwiLzIwMTgvMDkvcHJvdGF4aS5qcGdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwicHJvdGF4aVwiLFwibGF5ZXJfaWRzXCI6W119IiwiMTkiOiJ7XCJpZFwiOjE5LFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDE4LzA5L3RheGlwb3J0YWwtYmFubmVyLTE1MHgxNTAuanBnXCIsXCJpc092ZXJsYXlMYXllcnNcIjpmYWxzZSxcIm9yZGVyXCI6MyxcImJnXCI6XCIvMjAxOC8wOS90YXhpcG9ydGFsLWJhbm5lci5qcGdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwidGF4aXBvcnRhbC1iYW5uZXJcIixcImxheWVyX2lkc1wiOltdfSJ9LCJNU1BhbmVsLkNvbnRyb2wiOnsiMSI6IntcImlkXCI6XCIxXCIsXCJsYWJlbFwiOlwiQXJyb3dzXCIsXCJuYW1lXCI6XCJhcnJvd3NcIixcImF1dG9IaWRlXCI6ZmFsc2UsXCJvdmVyVmlkZW9cIjp0cnVlLFwiaW5zZXRcIjp0cnVlfSIsIjIiOiJ7XCJpZFwiOjIsXCJsYWJlbFwiOlwiQnVsbGV0c1wiLFwibmFtZVwiOlwiYnVsbGV0c1wiLFwiYXV0b0hpZGVcIjpmYWxzZSxcIm92ZXJWaWRlb1wiOnRydWUsXCJtYXJnaW5cIjoxMCxcImRpclwiOlwiaFwiLFwiYWxpZ25cIjpcImJvdHRvbVwiLFwiaW5zZXRcIjp0cnVlfSIsIjQiOiJ7XCJpZFwiOjQsXCJsYWJlbFwiOlwiU2Nyb2xsYmFyXCIsXCJuYW1lXCI6XCJzY3JvbGxiYXJcIixcImF1dG9IaWRlXCI6dHJ1ZSxcIm92ZXJWaWRlb1wiOnRydWUsXCJtYXJnaW5cIjoxMCxcImRpclwiOlwiaFwiLFwiY29sb3JcIjpcIiM0MDQwNDBcIixcIndpZHRoXCI6NCxcImFsaWduXCI6XCJ0b3BcIixcImluc2V0XCI6dHJ1ZX0ifX0=', '', '', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_image_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_image_storage`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `image` text NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

INSERT INTO `wp_nextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, '5b92358b620b61aa541731aeba3b0f15', '$upload$/2018/09/590b57c7d0b4d60b3c5077df.png', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(2, '81b89528eda84226aa46ee642f5914b2', '$upload$/2018/09/313A313A3139_7519.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(3, 'a0bc2667ccc922d05fdff862ac64e1b9', '$upload$/2018/09/protaxi.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(4, '8b1d9a088448cd7b3c616d5b1772b09b', '$upload$/2018/09/cab1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(5, '794f779e60ed17d1104c0d72fdefac3b', '$upload$/2018/09/cab2.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(6, '784d434dcb24a47fbf2cdb76f47ea35d', '$upload$/2018/09/cab3.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(7, '1c1316ad693646218523d65392ca4542', '$upload$/2018/09/cabnew.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(8, 'a5d20db9128a81d809518ad85fb76695', '$upload$/2018/09/cab2-1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(9, 'e76640e54f1a6cf84844c6d865b85185', '$upload$/2018/09/cab3-1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_section_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_section_storage`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(20) NOT NULL,
  `section` varchar(128) NOT NULL,
  `referencekey` varchar(128) NOT NULL,
  `value` mediumtext NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `application` (`application`,`section`,`referencekey`),
  KEY `application_2` (`application`,`section`)
) ENGINE=MyISAM AUTO_INCREMENT=10041 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'system', 'global', 'n2_ss3_version', '3.3.7r2543', 1, 1),
(10001, 'smartslider', 'tutorial', 'free', '1', 0, 1),
(10002, 'smartslider', 'sliderChanged', '2', '0', 0, 1),
(10035, 'cache', 'notweb/n2-ss-2', 'data.manifest', '{\"generator\":[]}', 0, 1),
(10036, 'cache', 'notweb/n2-ss-2', 'variations.manifest', '1', 0, 1),
(10039, 'cache', 'notweb/n2-ss-2', 'slideren_US1.manifest', '{\"hash\":\"\",\"nextCacheRefresh\":1852908829,\"currentPath\":\"e7e8ac5e54c90634691fdd7becb6d2f3\",\"version\":\"3.3.7\"}', 0, 1),
(10040, 'cache', 'notweb/n2-ss-2', 'slideren_US1', '{\"html\":\"<style>div#n2-ss-2{width:1200px;float:left;margin:0px 0px 0px 0px;}html[dir=\\\"rtl\\\"] div#n2-ss-2{float:right;}div#n2-ss-2 .n2-ss-slider-1{position:relative;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;height:500px;border-style:solid;border-width:0px;border-color:#3e3e3e;border-color:RGBA(62,62,62,1);border-radius:0px;background-clip:padding-box;background-repeat:repeat;background-position:50% 50%;background-size:cover;background-attachment:scroll;}div#n2-ss-2 .n2-ss-slider-background-video-container{position:absolute;left:0;top:0;width:100%;height:100%;overflow:hidden;}div#n2-ss-2 .n2-ss-slider-2{position:relative;width:100%;height:100%;}.x-firefox div#n2-ss-2 .n2-ss-slider-2{opacity:0.99999;}div#n2-ss-2 .n2-ss-slider-3{position:relative;width:100%;height:100%;overflow:hidden;outline:1px solid rgba(0,0,0,0);z-index:10;}div#n2-ss-2 .n2-ss-slide-backgrounds,div#n2-ss-2 .n2-ss-slider-3 > .n-particles-js-canvas-el,div#n2-ss-2 .n2-ss-slider-3 > .n2-ss-divider{position:absolute;left:0;top:0;width:100%;height:100%;}div#n2-ss-2 .n2-ss-slide-backgrounds{z-index:10;}div#n2-ss-2 .n2-ss-slider-3 > .n-particles-js-canvas-el{z-index:12;}div#n2-ss-2 .n2-ss-slide-backgrounds > *{overflow:hidden;}div#n2-ss-2 .n2-ss-slide{position:absolute;top:0;left:0;width:100%;height:100%;z-index:20;display:block;-webkit-backface-visibility:hidden;}div#n2-ss-2 .n2-ss-layers-container{position:relative;width:1200px;height:500px;}div#n2-ss-2 .n2-ss-parallax-clip > .n2-ss-layers-container{position:absolute;right:0;}div#n2-ss-2 .n2-ss-slide{-webkit-perspective:1500px;perspective:1500px;}div#n2-ss-2 .n2-ss-slide-active{z-index:21;}div#n2-ss-2 .n2-ss-button-container,div#n2-ss-2 .n2-ss-button-container a{display:inline-block;}div#n2-ss-2 .n2-ss-button-container.n2-ss-fullwidth,div#n2-ss-2 .n2-ss-button-container.n2-ss-fullwidth a{display:block;}div#n2-ss-2 .n2-ss-button-container.n2-ss-nowrap{white-space:nowrap;}div#n2-ss-2 .n2-ss-button-container a div{display:inline;font-size:inherit;text-decoration:inherit;color:inherit;line-height:inherit;font-family:inherit;font-weight:inherit;}div#n2-ss-2 .n2-ss-button-container a > div{display:inline-flex;align-items:center;vertical-align:top;}div#n2-ss-2 .n2-ss-button-container i{font-size:100%;vertical-align:baseline;}div#n2-ss-2 .n2-ss-button-container a[data-iconplacement=\\\"left\\\"] i{margin-right:0.3em;}div#n2-ss-2 .n2-ss-button-container a[data-iconplacement=\\\"right\\\"] i{margin-left:0.3em;}div#n2-ss-2 .nextend-arrow{cursor:pointer;overflow:hidden;line-height:0 !important;z-index:20;}div#n2-ss-2 .nextend-arrow img{position:relative;min-height:0;min-width:0;vertical-align:top;width:auto;height:auto;max-width:100%;max-height:100%;display:inline;}div#n2-ss-2 .nextend-arrow img.n2-arrow-hover-img{display:none;}div#n2-ss-2 .nextend-arrow:HOVER img.n2-arrow-hover-img{display:inline;}div#n2-ss-2 .nextend-arrow:HOVER img.n2-arrow-normal-img{display:none;}div#n2-ss-2 .nextend-arrow-animated{overflow:hidden;}div#n2-ss-2 .nextend-arrow-animated > div{position:relative;}div#n2-ss-2 .nextend-arrow-animated .n2-active{position:absolute;}div#n2-ss-2 .nextend-arrow-animated-fade{transition:background 0.3s, opacity 0.4s;}div#n2-ss-2 .nextend-arrow-animated-horizontal > div{transition:all 0.4s;left:0;}div#n2-ss-2 .nextend-arrow-animated-horizontal .n2-active{top:0;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal:HOVER > div,div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal .n2-active{left:-100%;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal .n2-active,div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal:HOVER > div{left:100%;}div#n2-ss-2 .nextend-arrow.nextend-arrow-animated-horizontal:HOVER .n2-active{left:0;}div#n2-ss-2 .nextend-arrow-animated-vertical > div{transition:all 0.4s;top:0;}div#n2-ss-2 .nextend-arrow-animated-vertical .n2-active{left:0;}div#n2-ss-2 .nextend-arrow-animated-vertical .n2-active{top:-100%;}div#n2-ss-2 .nextend-arrow-animated-vertical:HOVER > div{top:100%;}div#n2-ss-2 .nextend-arrow-animated-vertical:HOVER .n2-active{top:0;}div#n2-ss-2 .n2-ss-control-bullet{visibility:hidden;text-align:center;justify-content:center;}div#n2-ss-2 .n2-ss-control-bullet-horizontal.n2-ss-control-bullet-fullsize{width:100%;}div#n2-ss-2 .n2-ss-control-bullet-vertical.n2-ss-control-bullet-fullsize{height:100%;flex-flow:column;}div#n2-ss-2 .nextend-bullet-bar{display:inline-flex;visibility:visible;align-items:center;flex-wrap:wrap;}div#n2-ss-2 .n2-bar-justify-content-left{justify-content:flex-start;}div#n2-ss-2 .n2-bar-justify-content-center{justify-content:center;}div#n2-ss-2 .n2-bar-justify-content-right{justify-content:flex-end;}div#n2-ss-2 .n2-ss-control-bullet-vertical > .nextend-bullet-bar{flex-flow:column;}div#n2-ss-2 .n2-ss-control-bullet-fullsize > .nextend-bullet-bar{display:flex;}div#n2-ss-2 .n2-ss-control-bullet-horizontal.n2-ss-control-bullet-fullsize > .nextend-bullet-bar{flex:1 1 auto;}div#n2-ss-2 .n2-ss-control-bullet-vertical.n2-ss-control-bullet-fullsize > .nextend-bullet-bar{height:100%;}div#n2-ss-2 .nextend-bullet-bar > div{display:inline-block;cursor:pointer;transition:background-color 0.4s;vertical-align:top;}div#n2-ss-2 .nextend-bullet-bar > div.n2-active{cursor:default;}div#n2-ss-2 div.n2-ss-bullet-thumbnail-container{position:absolute;opacity:0;z-index:10000000;}div#n2-ss-2 .n2-ss-bullet-thumbnail-container .n2-ss-bullet-thumbnail{background-size:cover;background-repeat:no-repeat;background-position:center;}div#n2-ss-2 .n2-ss-layer .n2-font-dc90d93001823a607176c14f811d9ced-hover{font-family: \'Roboto\',\'Arial\';color: #ffffff;font-size:225%;text-shadow: none;line-height: 1.5;font-weight: normal;font-style: normal;text-decoration: none;text-align: center;letter-spacing: normal;word-spacing: normal;text-transform: none;}div#n2-ss-2 .n2-font-1103-link a{font-family: \'Roboto\',\'Arial\';color: #ffffff;font-size:87.5%;text-shadow: none;line-height: 1.5;font-weight: normal;font-style: normal;text-decoration: none;text-align: center;letter-spacing: normal;word-spacing: normal;text-transform: none;}div#n2-ss-2 .n2-font-1103-link a:HOVER, div#n2-ss-2 .n2-font-1103-link a:ACTIVE, div#n2-ss-2 .n2-font-1103-link a:FOCUS{@tab1}div#n2-ss-2 .n2-style-1101-heading{background: #5cba3c;opacity:1;padding:10px 30px 10px 30px ;box-shadow: none;border-width: 0px;border-style: solid;border-color: #000000; border-color: RGBA(0,0,0,1);border-radius:0px;}div#n2-ss-2 .n2-style-1101-heading:Hover, div#n2-ss-2 .n2-style-1101-heading:ACTIVE, div#n2-ss-2 .n2-style-1101-heading:FOCUS{@tab1}div#n2-ss-2 .n2-style-1045855924f7a9e63dd7136127d954e5-heading{background: #ffffff;background: RGBA(255,255,255,0);opacity:1;padding:0px 0px 0px 0px ;box-shadow: none;border-width: 0px;border-style: solid;border-color: #000000; border-color: RGBA(0,0,0,1);border-radius:0px;}div#n2-ss-2 .n2-style-0588b65a62ff3b43b59317ec64b5611c-dot{background: #000000;background: RGBA(0,0,0,0.67);opacity:1;padding:5px 5px 5px 5px ;box-shadow: none;border-width: 0px;border-style: solid;border-color: #000000; border-color: RGBA(0,0,0,1);border-radius:50px;margin: 4px;}div#n2-ss-2 .n2-style-0588b65a62ff3b43b59317ec64b5611c-dot.n2-active, div#n2-ss-2 .n2-style-0588b65a62ff3b43b59317ec64b5611c-dot:HOVER{background: #00c1c4;}<\\/style><div id=\\\"n2-ss-2-align\\\" class=\\\"n2-ss-align\\\"><div class=\\\"n2-padding\\\"><div id=\\\"n2-ss-2\\\" data-creator=\\\"Smart Slider 3\\\" class=\\\"n2-ss-slider n2-ow n2-has-hover n2notransition n2-ss-load-fade \\\" data-minFontSizedesktopPortrait=\\\"4\\\" data-minFontSizedesktopLandscape=\\\"4\\\" data-minFontSizetabletPortrait=\\\"4\\\" data-minFontSizetabletLandscape=\\\"4\\\" data-minFontSizemobilePortrait=\\\"4\\\" data-minFontSizemobileLandscape=\\\"4\\\" style=\\\"font-size: 16px;\\\" data-fontsize=\\\"16\\\">\\r\\n        <div class=\\\"n2-ss-slider-1 n2-ss-swipe-element n2-ow\\\" style=\\\"\\\">\\r\\n                        <div class=\\\"n2-ss-slider-2 n2-ow\\\">\\r\\n                                    <div class=\\\"n2-ss-background-animation n2-ow\\\"><\\/div>\\r\\n                                <div class=\\\"n2-ss-slider-3 n2-ow\\\" style=\\\"\\\">\\r\\n\\r\\n                    <div class=\\\"n2-ss-slide-backgrounds\\\"><\\/div><div data-first=\\\"1\\\" data-slide-duration=\\\"0\\\" data-id=\\\"12\\\" style=\\\"\\\" class=\\\"n2-ss-slide n2-ss-canvas n2-ow  n2-ss-slide-12\\\"><div class=\\\"n2-ss-slide-background n2-ow\\\" data-mode=\\\"fill\\\"><img data-hash=\\\"1c1316ad693646218523d65392ca4542\\\" data-desktop=\\\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cabnew.jpg\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" src=\\\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cabnew.jpg\\\" alt=\\\"\\\" \\/><\\/div><div class=\\\"n2-ss-layers-container n2-ow\\\" data-csstextalign=\\\"center\\\" style=\\\"\\\"><div class=\\\"n2-ss-layer n2-ow\\\" style=\\\"overflow:visible;\\\" data-csstextalign=\\\"inherit\\\" data-has-maxwidth=\\\"0\\\" data-desktopportraitmaxwidth=\\\"0\\\" data-cssselfalign=\\\"inherit\\\" data-desktopportraitselfalign=\\\"inherit\\\" data-pm=\\\"content\\\" data-desktopportraitpadding=\\\"10|*|10|*|10|*|10|*|px+\\\" data-desktopportraitinneralign=\\\"inherit\\\" data-sstype=\\\"content\\\" data-hasbackground=\\\"0\\\" data-rotation=\\\"0\\\" data-desktopportrait=\\\"1\\\" data-desktoplandscape=\\\"1\\\" data-tabletportrait=\\\"1\\\" data-tabletlandscape=\\\"1\\\" data-mobileportrait=\\\"1\\\" data-mobilelandscape=\\\"1\\\" data-adaptivefont=\\\"1\\\" data-desktopportraitfontsize=\\\"100\\\" data-plugin=\\\"rendered\\\"><div class=\\\"n2-ss-section-main-content n2-ss-layer-content n2-ow\\\" style=\\\"padding:0.625em 0.625em 0.625em 0.625em ;\\\" data-verticalalign=\\\"center\\\"><div class=\\\"n2-ss-layer n2-ow\\\" style=\\\"margin:0em 0em 0em 0em ;overflow:visible;\\\" data-pm=\\\"normal\\\" data-desktopportraitmargin=\\\"0|*|0|*|0|*|0|*|px+\\\" data-desktopportraitheight=\\\"0\\\" data-has-maxwidth=\\\"0\\\" data-desktopportraitmaxwidth=\\\"0\\\" data-cssselfalign=\\\"inherit\\\" data-desktopportraitselfalign=\\\"inherit\\\" data-sstype=\\\"layer\\\" data-rotation=\\\"0\\\" data-desktopportrait=\\\"1\\\" data-desktoplandscape=\\\"1\\\" data-tabletportrait=\\\"1\\\" data-tabletlandscape=\\\"1\\\" data-mobileportrait=\\\"1\\\" data-mobilelandscape=\\\"1\\\" data-adaptivefont=\\\"0\\\" data-desktopportraitfontsize=\\\"100\\\" data-plugin=\\\"rendered\\\"><div id=\\\"n2-ss-2item1\\\" class=\\\"n2-font-dc90d93001823a607176c14f811d9ced-hover   n2-ow\\\" style=\\\"display:block;\\\">Taxi Booking Software.It\'s easy to book and Use<\\/div><\\/div><div class=\\\"n2-ss-layer n2-ow\\\" style=\\\"margin:0em 0em 0em 0em ;overflow:visible;\\\" data-pm=\\\"normal\\\" data-desktopportraitmargin=\\\"0|*|0|*|0|*|0|*|px+\\\" data-desktopportraitheight=\\\"0\\\" data-has-maxwidth=\\\"0\\\" data-desktopportraitmaxwidth=\\\"0\\\" data-cssselfalign=\\\"inherit\\\" data-desktopportraitselfalign=\\\"inherit\\\" data-sstype=\\\"layer\\\" data-rotation=\\\"0\\\" data-desktopportrait=\\\"1\\\" data-desktoplandscape=\\\"1\\\" data-tabletportrait=\\\"1\\\" data-tabletlandscape=\\\"1\\\" data-mobileportrait=\\\"1\\\" data-mobilelandscape=\\\"1\\\" data-adaptivefont=\\\"0\\\" data-desktopportraitfontsize=\\\"100\\\" data-plugin=\\\"rendered\\\"><div class=\\\"n2-ss-button-container n2-ow n2-font-1103-link  n2-ss-nowrap\\\"><a class=\\\"n2-style-1101-heading  n2-ow \\\" onclick=\\\"return false;\\\" href=\\\"#\\\"><div><div>Book Now<\\/div><\\/div><\\/a><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"10\\\" style=\\\"\\\" class=\\\"n2-ss-slide n2-ss-canvas n2-ow  n2-ss-slide-10\\\"><div class=\\\"n2-ss-slide-background n2-ow\\\" data-mode=\\\"fill\\\"><img data-hash=\\\"a5d20db9128a81d809518ad85fb76695\\\" data-desktop=\\\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cab2-1.jpg\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" src=\\\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cab2-1.jpg\\\" alt=\\\"\\\" \\/><\\/div><div class=\\\"n2-ss-layers-container n2-ow\\\" data-csstextalign=\\\"center\\\" style=\\\"\\\"><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"11\\\" style=\\\"\\\" class=\\\"n2-ss-slide n2-ss-canvas n2-ow  n2-ss-slide-11\\\"><div class=\\\"n2-ss-slide-background n2-ow\\\" data-mode=\\\"fill\\\"><img data-hash=\\\"e76640e54f1a6cf84844c6d865b85185\\\" data-desktop=\\\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cab3-1.jpg\\\" data-blur=\\\"0\\\" data-opacity=\\\"100\\\" data-x=\\\"50\\\" data-y=\\\"50\\\" src=\\\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cab3-1.jpg\\\" alt=\\\"\\\" \\/><\\/div><div class=\\\"n2-ss-layers-container n2-ow\\\" data-csstextalign=\\\"center\\\" style=\\\"\\\"><\\/div><\\/div>                <\\/div>\\r\\n            <\\/div>\\r\\n            <div data-ssleft=\\\"0+15\\\" data-sstop=\\\"height\\/2-previousheight\\/2\\\" id=\\\"n2-ss-2-arrow-previous\\\" class=\\\"n2-ss-widget n2-ss-widget-display-desktop n2-ss-widget-display-tablet n2-ss-widget-display-mobile n2-ss-widget-display-hover n2-style-1045855924f7a9e63dd7136127d954e5-heading nextend-arrow n2-ow nextend-arrow-previous  nextend-arrow-animated-fade n2-ib\\\" style=\\\"position: absolute;\\\" role=\\\"button\\\" aria-label=\\\"Previous slide\\\" tabindex=\\\"0\\\"><img class=\\\"n2-ow\\\" data-no-lazy=\\\"1\\\" data-hack=\\\"data-lazy-src\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMjEuNjg4IDE0LjY4OGgtNy45NTVsMS44MzMtMS42NS0uMDA0LS4wMDNjLjI2Ny0uMjQuNDM4LS41ODUuNDM4LS45NzMgMC0uNzI0LS41ODgtMS4zMTItMS4zMTMtMS4zMTItLjMzNyAwLS42NDIuMTMtLjg3NC4zNGwtLjAwNC0uMDAzLTQuMzc2IDMuOTM3LjAwNC4wMDRDOS4xNyAxNS4yNjggOSAxNS42MTIgOSAxNnMuMTcuNzMyLjQzOC45NzJsLS4wMDQuMDA0IDQuMzc1IDMuOTM3LjAwMi0uMDAzYy4yMzMuMjEuNTM4LjM0Ljg3Ni4zNC43MjQgMCAxLjMxMi0uNTg4IDEuMzEyLTEuMzEzIDAtLjM4Ny0uMTctLjczLS40MzgtLjk3MmwuMDA0LS4wMDMtMS44MzMtMS42NWg3Ljk1NGMuNzI1IDAgMS4zMTMtLjU4NyAxLjMxMy0xLjMxMiAwLS43MjUtLjU4OC0xLjMxMy0xLjMxMy0xLjMxM3pNMTYgMkM4LjI2OCAyIDIgOC4yNjggMiAxNnM2LjI2OCAxNCAxNCAxNCAxNC02LjI2OCAxNC0xNFMyMy43MzIgMiAxNiAyem0wIDI1LjM3NUM5LjcxOCAyNy4zNzUgNC42MjUgMjIuMjgyIDQuNjI1IDE2UzkuNzE4IDQuNjI1IDE2IDQuNjI1IDI3LjM3NSA5LjcxOCAyNy4zNzUgMTYgMjIuMjgyIDI3LjM3NSAxNiAyNy4zNzV6IiBmaWxsPSIjZmZmZmZmIiBvcGFjaXR5PSIwLjgiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvc3ZnPg==\\\" alt=\\\"previous arrow\\\" \\/><\\/div>\\n<div data-ssright=\\\"0+15\\\" data-sstop=\\\"height\\/2-nextheight\\/2\\\" id=\\\"n2-ss-2-arrow-next\\\" class=\\\"n2-ss-widget n2-ss-widget-display-desktop n2-ss-widget-display-tablet n2-ss-widget-display-mobile n2-ss-widget-display-hover n2-style-1045855924f7a9e63dd7136127d954e5-heading nextend-arrow n2-ow nextend-arrow-next  nextend-arrow-animated-fade n2-ib\\\" style=\\\"position: absolute;\\\" role=\\\"button\\\" aria-label=\\\"Next slide\\\" tabindex=\\\"0\\\"><img class=\\\"n2-ow\\\" data-no-lazy=\\\"1\\\" data-hack=\\\"data-lazy-src\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTguMTkgMTEuMDg3Yy0uMjM1LS4yMDYtLjU0LS4zMzctLjg3OC0uMzM3LS43MjQgMC0xLjMxMi41ODgtMS4zMTIgMS4zMTMgMCAuMzg3LjE3LjczLjQzOC45NzJsMS44MyAxLjY1MkgxMC4zMUM5LjU4OCAxNC42ODcgOSAxNS4yNzUgOSAxNnMuNTg4IDEuMzEzIDEuMzEzIDEuMzEzaDcuOTU0bC0xLjgzMyAxLjY1Yy0uMjYzLjI0My0uNDM0LjU4Ny0uNDM0Ljk3NCAwIC43MjUuNTg4IDEuMzEzIDEuMzEzIDEuMzEzLjMzNyAwIC42NDItLjEzLjg3NS0uMzRsNC4zNzgtMy45MzRjLjI2My0uMjQ0LjQzNC0uNTg4LjQzNC0uOTc2cy0uMTctLjczMi0uNDM4LS45NzJsLTQuMzctMy45NHpNMTYgMkM4LjI2OCAyIDIgOC4yNjggMiAxNnM2LjI2OCAxNCAxNCAxNCAxNC02LjI2OCAxNC0xNFMyMy43MzIgMiAxNiAyem0wIDI1LjM3NUM5LjcxOCAyNy4zNzUgNC42MjUgMjIuMjgyIDQuNjI1IDE2UzkuNzE4IDQuNjI1IDE2IDQuNjI1IDI3LjM3NSA5LjcxOCAyNy4zNzUgMTYgMjIuMjgyIDI3LjM3NSAxNiAyNy4zNzV6IiBmaWxsPSIjZmZmZmZmIiBvcGFjaXR5PSIwLjgiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvc3ZnPg==\\\" alt=\\\"next arrow\\\" \\/><\\/div>\\n<div data-ssleft=\\\"width\\/2-bulletwidth\\/2\\\" data-ssbottom=\\\"0+10\\\" data-offset=\\\"10\\\" class=\\\"n2-ss-widget n2-ss-widget-display-desktop n2-ss-widget-display-tablet n2-ss-widget-display-mobile  n2-flex n2-ss-control-bullet n2-ss-control-bullet-horizontal\\\" style=\\\"position: absolute;\\\"><div class=\\\" nextend-bullet-bar n2-ow n2-bar-justify-content-center\\\"><\\/div><\\/div>\\n        <\\/div>\\r\\n        <\\/div><div class=\\\"n2-clear\\\"><\\/div><div id=\\\"n2-ss-2-spinner\\\" style=\\\"display: none;\\\"><div><div class=\\\"n2-ss-spinner-simple-white-container\\\"><div class=\\\"n2-ss-spinner-simple-white\\\"><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><div id=\\\"n2-ss-2-placeholder\\\" style=\\\"position: relative;z-index:2;background-color:RGBA(0,0,0,0);max-height:3000px; background-color:RGBA(255,255,255,0);\\\"><img style=\\\"width: 100%; max-width:3000px; display: block;opacity:0;\\\" class=\\\"n2-ow\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMCIgd2lkdGg9IjEyMDAiIGhlaWdodD0iNTAwIiA+PC9zdmc+\\\" alt=\\\"Slider\\\" \\/><\\/div>\",\"assets\":{\"css\":{\"staticGroup\":{\"smartslider\":\"E:\\\\sankaran\\\\wamp64\\\\www\\\\projects\\\\work\\\\cabbooking\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\library\\\\media\\/smartslider.min.css\"},\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[\".n2-ss-spinner-simple-white-container {\\r\\n    position: absolute;\\r\\n    top: 50%;\\r\\n    left: 50%;\\r\\n    margin: -20px;\\r\\n    background: #fff;\\r\\n    width: 20px;\\r\\n    height: 20px;\\r\\n    padding: 10px;\\r\\n    border-radius: 50%;\\r\\n    z-index: 1000;\\r\\n}\\r\\n\\r\\n.n2-ss-spinner-simple-white {\\r\\n  outline: 1px solid RGBA(0,0,0,0);\\r\\n  width:100%;\\r\\n  height: 100%;\\r\\n}\\r\\n\\r\\n.n2-ss-spinner-simple-white:before {\\r\\n    position: absolute;\\r\\n    top: 50%;\\r\\n    left: 50%;\\r\\n    width: 20px;\\r\\n    height: 20px;\\r\\n    margin-top: -11px;\\r\\n    margin-left: -11px;\\r\\n}\\r\\n\\r\\n.n2-ss-spinner-simple-white:not(:required):before {\\r\\n    content: \'\';\\r\\n    border-radius: 50%;\\r\\n    border-top: 2px solid #333;\\r\\n    border-right: 2px solid transparent;\\r\\n    animation: n2SimpleWhite .6s linear infinite;\\r\\n    -webkit-animation: n2SimpleWhite .6s linear infinite;\\r\\n}\\r\\n@keyframes n2SimpleWhite {\\r\\n    to {transform: rotate(360deg);}\\r\\n}\\r\\n\\r\\n@-webkit-keyframes n2SimpleWhite {\\r\\n    to {-webkit-transform: rotate(360deg);}\\r\\n}\"],\"globalInline\":[]},\"less\":{\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"js\":{\"staticGroup\":{\"smartslider-simple-type-frontend\":\"E:\\\\sankaran\\\\wamp64\\\\www\\\\projects\\\\work\\\\cabbooking\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\library\\\\media\\/plugins\\\\type\\\\simple\\\\simple\\/dist\\/smartslider-simple-type-frontend.min.js\",\"smartslider-backgroundanimation\":\"E:\\\\sankaran\\\\wamp64\\\\www\\\\projects\\\\work\\\\cabbooking\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\library\\\\media\\/plugins\\\\type\\\\simple\\\\simple\\/dist\\/smartslider-backgroundanimation.min.js\"},\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[\"N2R([\\\"nextend-frontend\\\",\\\"smartslider-frontend\\\",\\\"smartslider-backgroundanimation\\\",\\\"smartslider-simple-type-frontend\\\"],function(){new N2Classes.SmartSliderSimple(\'#n2-ss-2\', {\\\"admin\\\":false,\\\"translate3d\\\":1,\\\"callbacks\\\":\\\"\\\",\\\"background.video.mobile\\\":1,\\\"align\\\":\\\"normal\\\",\\\"isDelayed\\\":0,\\\"load\\\":{\\\"fade\\\":1,\\\"scroll\\\":0},\\\"playWhenVisible\\\":1,\\\"playWhenVisibleAt\\\":0.5,\\\"responsive\\\":{\\\"desktop\\\":1,\\\"tablet\\\":1,\\\"mobile\\\":1,\\\"onResizeEnabled\\\":true,\\\"type\\\":\\\"fullwidth\\\",\\\"downscale\\\":1,\\\"upscale\\\":1,\\\"minimumHeight\\\":0,\\\"maximumHeight\\\":3000,\\\"maximumSlideWidth\\\":3000,\\\"maximumSlideWidthLandscape\\\":3000,\\\"maximumSlideWidthTablet\\\":3000,\\\"maximumSlideWidthTabletLandscape\\\":3000,\\\"maximumSlideWidthMobile\\\":3000,\\\"maximumSlideWidthMobileLandscape\\\":3000,\\\"maximumSlideWidthConstrainHeight\\\":0,\\\"forceFull\\\":1,\\\"forceFullOverflowX\\\":\\\"body\\\",\\\"forceFullHorizontalSelector\\\":\\\"body\\\",\\\"constrainRatio\\\":1,\\\"verticalOffsetSelectors\\\":\\\"\\\",\\\"decreaseSliderHeight\\\":0,\\\"focusUser\\\":0,\\\"focusAutoplay\\\":0,\\\"deviceModes\\\":{\\\"desktopPortrait\\\":1,\\\"desktopLandscape\\\":0,\\\"tabletPortrait\\\":1,\\\"tabletLandscape\\\":0,\\\"mobilePortrait\\\":1,\\\"mobileLandscape\\\":0},\\\"normalizedDeviceModes\\\":{\\\"unknownUnknown\\\":[\\\"unknown\\\",\\\"Unknown\\\"],\\\"desktopPortrait\\\":[\\\"desktop\\\",\\\"Portrait\\\"],\\\"desktopLandscape\\\":[\\\"desktop\\\",\\\"Portrait\\\"],\\\"tabletPortrait\\\":[\\\"tablet\\\",\\\"Portrait\\\"],\\\"tabletLandscape\\\":[\\\"tablet\\\",\\\"Portrait\\\"],\\\"mobilePortrait\\\":[\\\"mobile\\\",\\\"Portrait\\\"],\\\"mobileLandscape\\\":[\\\"mobile\\\",\\\"Portrait\\\"]},\\\"verticalRatioModifiers\\\":{\\\"unknownUnknown\\\":1,\\\"desktopPortrait\\\":1,\\\"desktopLandscape\\\":1,\\\"tabletPortrait\\\":1,\\\"tabletLandscape\\\":1,\\\"mobilePortrait\\\":1,\\\"mobileLandscape\\\":1},\\\"minimumFontSizes\\\":{\\\"desktopPortrait\\\":4,\\\"desktopLandscape\\\":4,\\\"tabletPortrait\\\":4,\\\"tabletLandscape\\\":4,\\\"mobilePortrait\\\":4,\\\"mobileLandscape\\\":4},\\\"ratioToDevice\\\":{\\\"Portrait\\\":{\\\"tablet\\\":0.7,\\\"mobile\\\":0.5},\\\"Landscape\\\":{\\\"tablet\\\":0,\\\"mobile\\\":0}},\\\"sliderWidthToDevice\\\":{\\\"desktopPortrait\\\":1200,\\\"desktopLandscape\\\":1200,\\\"tabletPortrait\\\":840,\\\"tabletLandscape\\\":0,\\\"mobilePortrait\\\":600,\\\"mobileLandscape\\\":0},\\\"basedOn\\\":\\\"combined\\\",\\\"orientationMode\\\":\\\"width_and_height\\\",\\\"scrollFix\\\":0,\\\"overflowHiddenPage\\\":0,\\\"desktopPortraitScreenWidth\\\":1200,\\\"tabletPortraitScreenWidth\\\":800,\\\"mobilePortraitScreenWidth\\\":440,\\\"tabletLandscapeScreenWidth\\\":800,\\\"mobileLandscapeScreenWidth\\\":440},\\\"controls\\\":{\\\"scroll\\\":0,\\\"drag\\\":1,\\\"touch\\\":\\\"horizontal\\\",\\\"keyboard\\\":1,\\\"tilt\\\":0},\\\"lazyLoad\\\":0,\\\"lazyLoadNeighbor\\\":0,\\\"blockrightclick\\\":0,\\\"maintainSession\\\":0,\\\"autoplay\\\":{\\\"enabled\\\":1,\\\"start\\\":1,\\\"duration\\\":4000,\\\"autoplayToSlide\\\":-1,\\\"autoplayToSlideIndex\\\":-1,\\\"allowReStart\\\":0,\\\"pause\\\":{\\\"click\\\":0,\\\"mouse\\\":\\\"0\\\",\\\"mediaStarted\\\":1},\\\"resume\\\":{\\\"click\\\":0,\\\"mouse\\\":0,\\\"mediaEnded\\\":1,\\\"slidechanged\\\":0}},\\\"perspective\\\":1500,\\\"layerMode\\\":{\\\"playOnce\\\":0,\\\"playFirstLayer\\\":1,\\\"mode\\\":\\\"skippable\\\",\\\"inAnimation\\\":\\\"mainInEnd\\\"},\\\"background.parallax.tablet\\\":0,\\\"background.parallax.mobile\\\":0,\\\"initCallbacks\\\":[\\\"N2D(\\\\\\\"SmartSliderWidgetArrowImage\\\\\\\",function(i,e){function t(e,t,s,h){this.slider=e,this.slider.started(i.proxy(this.start,this,t,s,h))}return t.prototype.start=function(e,t,s){return this.slider.sliderElement.data(\\\\\\\"arrow\\\\\\\")?!1:(this.slider.sliderElement.data(\\\\\\\"arrow\\\\\\\",this),this.deferred=i.Deferred(),this.slider.sliderElement.on(\\\\\\\"SliderDevice\\\\\\\",i.proxy(this.onDevice,this)).trigger(\\\\\\\"addWidget\\\\\\\",this.deferred),this.previous=i(\\\\\\\"#\\\\\\\"+this.slider.elementID+\\\\\\\"-arrow-previous\\\\\\\").on(\\\\\\\"click\\\\\\\",i.proxy(function(i){i.stopPropagation(),this.slider[n2const.rtl.previous]()},this)),this.previousResize=this.previous.find(\\\\\\\".n2-resize\\\\\\\"),0===this.previousResize.length&&(this.previousResize=this.previous),this.next=i(\\\\\\\"#\\\\\\\"+this.slider.elementID+\\\\\\\"-arrow-next\\\\\\\").on(\\\\\\\"click\\\\\\\",i.proxy(function(i){i.stopPropagation(),this.slider[n2const.rtl.next]()},this)),this.nextResize=this.next.find(\\\\\\\".n2-resize\\\\\\\"),0===this.nextResize.length&&(this.nextResize=this.next),this.desktopRatio=e,this.tabletRatio=t,this.mobileRatio=s,void i.when(this.previous.n2imagesLoaded(),this.next.n2imagesLoaded()).always(i.proxy(this.loaded,this)))},t.prototype.loaded=function(){this.previousResize.css(\\\\\\\"display\\\\\\\",\\\\\\\"inline-block\\\\\\\"),this.previousWidth=this.previousResize.width(),this.previousHeight=this.previousResize.height(),this.previousResize.css(\\\\\\\"display\\\\\\\",\\\\\\\"\\\\\\\"),this.nextResize.css(\\\\\\\"display\\\\\\\",\\\\\\\"inline-block\\\\\\\"),this.nextWidth=this.nextResize.width(),this.nextHeight=this.nextResize.height(),this.nextResize.css(\\\\\\\"display\\\\\\\",\\\\\\\"\\\\\\\"),this.previousResize.find(\\\\\\\"img\\\\\\\").css(\\\\\\\"width\\\\\\\",\\\\\\\"100%\\\\\\\"),this.nextResize.find(\\\\\\\"img\\\\\\\").css(\\\\\\\"width\\\\\\\",\\\\\\\"100%\\\\\\\"),this.onDevice(null,{device:this.slider.responsive.getDeviceMode()}),this.deferred.resolve()},t.prototype.onDevice=function(i,e){var t=1;switch(e.device){case\\\\\\\"tablet\\\\\\\":t=this.tabletRatio;break;case\\\\\\\"mobile\\\\\\\":t=this.mobileRatio;break;default:t=this.desktopRatio}this.previousResize.width(this.previousWidth*t),this.previousResize.height(this.previousHeight*t),this.nextResize.width(this.nextWidth*t),this.nextResize.height(this.nextHeight*t)},t});\\\",\\\"new N2Classes.SmartSliderWidgetArrowImage(this, 1, 0.7, 0.5);\\\",\\\"N2D(\\\\\\\"SmartSliderWidgetBulletTransition\\\\\\\",function(t,e){function i(e,i){this.slider=e,this.slider.started(t.proxy(this.start,this,i))}return i.prototype.start=function(e){if(this.slider.sliderElement.data(\\\\\\\"bullet\\\\\\\"))return!1;if(this.slider.sliderElement.data(\\\\\\\"bullet\\\\\\\",this),this.axis=\\\\\\\"horizontal\\\\\\\",this.offset=0,this.parameters=e,this.bar=this.slider.sliderElement.find(\\\\\\\".nextend-bullet-bar\\\\\\\"),this.event=\\\\\\\"universalclick\\\\\\\",\\\\\\\"mouseenter\\\\\\\"===this.parameters.action&&(this.event=\\\\\\\"mouseenter\\\\\\\"),this.slider.sliderElement.on({slideCountChanged:t.proxy(this.onSlideCountChanged,this),sliderSwitchTo:t.proxy(this.onSlideSwitch,this)}),this.slider.firstSlideReady.done(t.proxy(this.onFirstSlideSet,this)),0===e.overlay){var i=!1;switch(e.area){case 1:i=\\\\\\\"Top\\\\\\\";break;case 12:i=\\\\\\\"Bottom\\\\\\\";break;case 5:i=\\\\\\\"Left\\\\\\\",this.axis=\\\\\\\"vertical\\\\\\\";break;case 8:i=\\\\\\\"Right\\\\\\\",this.axis=\\\\\\\"vertical\\\\\\\"}i&&(this.offset=parseFloat(this.bar.data(\\\\\\\"offset\\\\\\\")),this.slider.responsive.addStaticMargin(i,this))}},i.prototype.onFirstSlideSet=function(t){this.onSlideCountChanged(),this.$dots.eq(t.index).addClass(\\\\\\\"n2-active\\\\\\\")},i.prototype.onDotClick=function(e,i){this.slider.directionalChangeTo(e),t(i.target).blur()},i.prototype.onSlideSwitch=function(t,e){this.$dots.filter(\\\\\\\".n2-active\\\\\\\").removeClass(\\\\\\\"n2-active\\\\\\\"),this.$dots.eq(e).addClass(\\\\\\\"n2-active\\\\\\\")},i.prototype.isVisible=function(){return this.bar.is(\\\\\\\":visible\\\\\\\")},i.prototype.getSize=function(){return\\\\\\\"horizontal\\\\\\\"===this.axis?this.bar.height()+this.offset:this.bar.width()+this.offset},i.prototype.showThumbnail=function(e,i){var s=this.getThumbnail(e);NextendTween.to(s,.3,{opacity:1}),this.$dots.eq(e).one(\\\\\\\"universalleave.thumbnailleave\\\\\\\",t.proxy(this.hideThumbnail,this,e,s))},i.prototype.hideThumbnail=function(t,e,i){i.stopPropagation(),NextendTween.to(e,.3,{opacity:0,onComplete:function(){e.remove()}})},i.prototype.getThumbnail=function(e){var i=this.$dots.eq(e),s=this.slider.sliderElement.offset(),a=i.offset(),o=i.outerWidth(),r=i.outerHeight(),n=t(\\\\\\\"<div\\\\\\/>\\\\\\\").append(t(\\\\\\\"<div\\\\\\/>\\\\\\\").css({width:this.parameters.thumbnailWidth,height:this.parameters.thumbnailHeight,backgroundImage:\'url(\\\\\\\"\'+this.slider.slides[e].getThumbnail()+\'\\\\\\\")\'}).addClass(\\\\\\\"n2-ss-bullet-thumbnail\\\\\\\")).addClass(this.parameters.thumbnailStyle).addClass(\\\\\\\"n2-ss-bullet-thumbnail-container\\\\\\\").appendTo(this.slider.sliderElement);switch(this.parameters.thumbnailPosition){case\\\\\\\"right\\\\\\\":n.css({left:a.left-s.left+o,top:a.top-s.top+r\\\\\\/2-n.outerHeight(!0)\\\\\\/2});break;case\\\\\\\"left\\\\\\\":n.css({left:a.left-s.left-n.outerWidth(!0),top:a.top-s.top+r\\\\\\/2-n.outerHeight(!0)\\\\\\/2});break;case\\\\\\\"top\\\\\\\":n.css({left:a.left-s.left+o\\\\\\/2-n.outerWidth(!0)\\\\\\/2,top:a.top-s.top-n.outerHeight(!0)});break;case\\\\\\\"bottom\\\\\\\":n.css({left:a.left-s.left+o\\\\\\/2-n.outerWidth(!0)\\\\\\/2,top:a.top-s.top+r})}return i.data(\\\\\\\"thumbnail\\\\\\\",n),n},i.prototype.onSlideCountChanged=function(){this.bar.html(\\\\\\\"\\\\\\\");for(var e=0;e<this.slider.slides.length;e++){var i=this.slider.slides[e],s=t(\'<div class=\\\\\\\"n2-ow \'+this.parameters.dotClasses+\'\\\\\\\" tabindex=\\\\\\\"0\\\\\\\"><\\\\\\/div>\').on(this.event,t.proxy(this.onDotClick,this,e)).appendTo(this.bar);switch(this.parameters.mode){case\\\\\\\"numeric\\\\\\\":s.html(e+1);break;case\\\\\\\"title\\\\\\\":s.html(i.getTitle())}if(1===this.parameters.thumbnail){var a=i.getThumbnail();a&&s.on({universalenter:t.proxy(this.showThumbnail,this,e)},{leaveOnSecond:!0})}}this.$dots=this.bar.find(\\\\\\\">*\\\\\\\")},i});\\\",\\\"new N2Classes.SmartSliderWidgetBulletTransition(this, {\\\\\\\"overlay\\\\\\\":0,\\\\\\\"area\\\\\\\":10,\\\\\\\"dotClasses\\\\\\\":\\\\\\\"n2-style-0588b65a62ff3b43b59317ec64b5611c-dot \\\\\\\",\\\\\\\"mode\\\\\\\":\\\\\\\"\\\\\\\",\\\\\\\"action\\\\\\\":\\\\\\\"click\\\\\\\"});\\\"],\\\"allowBGImageAttachmentFixed\\\":false,\\\"bgAnimationsColor\\\":\\\"RGBA(85,170,57,1)\\\",\\\"bgAnimations\\\":{\\\"global\\\":[{\\\"type\\\":\\\"Flat\\\",\\\"rows\\\":1,\\\"columns\\\":25,\\\"tiles\\\":{\\\"delay\\\":0.03,\\\"sequence\\\":\\\"BackwardCol\\\"},\\\"main\\\":{\\\"type\\\":\\\"next\\\",\\\"duration\\\":0.35,\\\"next\\\":{\\\"ease\\\":\\\"easeInOutQuart\\\",\\\"opacity\\\":\\\"0\\\",\\\"left\\\":\\\"-100%\\\"}},\\\"invert\\\":{\\\"next\\\":{\\\"left\\\":\\\"100%\\\"}},\\\"invertTiles\\\":{\\\"sequence\\\":\\\"ForwardCol\\\"}}],\\\"color\\\":\\\"RGBA(85,170,57,1)\\\",\\\"speed\\\":\\\"slow\\\"},\\\"mainanimation\\\":{\\\"type\\\":\\\"horizontal\\\",\\\"duration\\\":800,\\\"delay\\\":0,\\\"ease\\\":\\\"easeOutQuad\\\",\\\"parallax\\\":0,\\\"shiftedBackgroundAnimation\\\":0},\\\"carousel\\\":1,\\\"dynamicHeight\\\":0});});\"],\"globalInline\":[]},\"googleFonts\":{\"staticGroup\":[],\"files\":{\"Roboto\":[\"300\",\"400\"]},\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"image\":{\"images\":[\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cabnew.jpg\",\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cab2-1.jpg\",\"\\/\\/localhost\\/projects\\/work\\/cabbooking\\/wp-content\\/uploads\\/2018\\/09\\/cab3-1.jpg\"]}}}', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_generators`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(254) NOT NULL,
  `type` varchar(254) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `params` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `time`, `thumbnail`, `ordering`) VALUES
(1, NULL, 'Sample Slider', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"controlsTilt\":\"0\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"600\",\"animation-delay\":\"0\",\"animation-easing\":\"easeOutQuad\",\"animation-parallax-overlap\":\"0\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"animation-shifted-background-animation\":\"auto\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"carousel\":\"1\",\"background\":\"\",\"background-fixed\":\"0\",\"background-size\":\"cover\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"backgroundVideoMode\":\"fill\",\"dynamic-height\":\"0\",\"loop-single-slide\":\"0\",\"padding\":\"0|*|0|*|0|*|0\",\"border-width\":\"0\",\"border-color\":\"3E3E3Eff\",\"border-radius\":\"0\",\"slider-preset\":\"\",\"slider-css\":\"\",\"slide-css\":\"\",\"width\":\"1200\",\"height\":\"600\",\"desktop-portrait-minimum-font-size\":\"1\",\"desktop-landscape\":\"0\",\"desktop-landscape-width\":\"1440\",\"desktop-landscape-height\":\"0\",\"desktop-landscape-minimum-font-size\":\"1\",\"fontsize\":\"16\",\"desktop\":\"1\",\"tablet\":\"1\",\"mobile\":\"1\",\"margin\":\"0|*|0|*|0|*|0\",\"tablet-portrait\":\"0\",\"tablet-portrait-width\":\"800\",\"tablet-portrait-height\":\"0\",\"tablet-portrait-minimum-font-size\":\"1\",\"tablet-landscape\":\"0\",\"tablet-landscape-width\":\"1024\",\"tablet-landscape-height\":\"0\",\"tablet-landscape-minimum-font-size\":\"1\",\"mobile-portrait\":\"0\",\"mobile-portrait-width\":\"440\",\"mobile-portrait-height\":\"0\",\"mobile-portrait-minimum-font-size\":\"1\",\"mobile-landscape\":\"0\",\"mobile-landscape-width\":\"740\",\"mobile-landscape-height\":\"0\",\"mobile-landscape-minimum-font-size\":\"1\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStart\":\"1\",\"autoplayfinish\":\"0|*|loop|*|current\",\"autoplayAllowReStart\":\"0\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"playfirstlayer\":\"1\",\"playonce\":\"0\",\"layer-animation-play-in\":\"end\",\"layer-animation-play-mode\":\"skippable\",\"parallax-enabled\":\"1\",\"parallax-enabled-mobile\":\"0\",\"parallax-3d\":\"0\",\"parallax-animate\":\"1\",\"parallax-horizontal\":\"mouse\",\"parallax-vertical\":\"mouse\",\"parallax-mouse-origin\":\"slider\",\"parallax-scroll-move\":\"both\",\"perspective\":\"1000\",\"imageload\":\"0\",\"imageloadNeighborSlides\":\"0\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"layer-image-optimize\":\"0\",\"layer-image-tablet\":\"50\",\"layer-image-mobile\":\"30\",\"layer-image-base64\":\"0\",\"layer-image-base64-size\":\"5\",\"playWhenVisible\":\"1\",\"fadeOnLoad\":\"1\",\"fadeOnScroll\":\"0\",\"spinner\":\"simpleWhite\",\"custom-spinner\":\"\",\"custom-spinner-width\":\"100\",\"custom-spinner-height\":\"100\",\"custom-display\":\"1\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"randomize\":\"0\",\"randomizeFirst\":\"0\",\"randomize-cache\":\"1\",\"variations\":\"5\",\"maximumslidecount\":\"1000\",\"global-lightbox\":\"0\",\"global-lightbox-label\":\"0\",\"maintain-session\":\"0\",\"blockrightclick\":\"0\",\"overflow-hidden-page\":\"0\",\"scroll-fix\":\"0\",\"bg-parallax-tablet\":\"1\",\"bg-parallax-mobile\":\"1\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-desktop\":\"1\",\"widget-arrow-display-tablet\":\"1\",\"widget-arrow-display-mobile\":\"1\",\"widget-arrow-exclude-slides\":\"\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-responsive-desktop\":\"1\",\"widget-arrow-responsive-tablet\":\"0.7\",\"widget-arrow-responsive-mobile\":\"0.5\",\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous\":\"$ss$/plugins/widgetarrow/image/image/previous/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-mirror\":\"1\",\"widget-arrow-next-image\":\"\",\"widget-arrow-next\":\"$ss$/plugins/widgetarrow/image/image/next/thin-horizontal.svg\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":\"0\",\"widget-arrow-next-hover-color\":\"ffffffcc\",\"widgetbullet\":\"transition\",\"widget-bullet-display-desktop\":\"1\",\"widget-bullet-display-tablet\":\"1\",\"widget-bullet-display-mobile\":\"1\",\"widget-bullet-exclude-slides\":\"\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"1\",\"widget-bullet-thumbnail-width\":\"120\",\"widget-bullet-thumbnail-height\":\"81\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"12\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==\",\"widget-bullet-bar\":\"\",\"widget-bullet-bar-full-size\":\"0\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-overlay\":\"0\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-desktop\":\"1\",\"widget-autoplay-display-tablet\":\"1\",\"widget-autoplay-display-mobile\":\"1\",\"widget-autoplay-exclude-slides\":\"\",\"widget-autoplay-display-hover\":\"0\",\"widgetindicator\":\"disabled\",\"widget-indicator-display-desktop\":\"1\",\"widget-indicator-display-tablet\":\"1\",\"widget-indicator-display-mobile\":\"1\",\"widget-indicator-exclude-slides\":\"\",\"widget-indicator-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-desktop\":\"1\",\"widget-bar-display-tablet\":\"1\",\"widget-bar-display-mobile\":\"1\",\"widget-bar-exclude-slides\":\"\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-desktop\":\"1\",\"widget-thumbnail-display-tablet\":\"1\",\"widget-thumbnail-display-mobile\":\"1\",\"widget-thumbnail-exclude-slides\":\"\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-show-image\":\"1\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widget-shadow-display-desktop\":\"1\",\"widget-shadow-display-tablet\":\"1\",\"widget-shadow-display-mobile\":\"1\",\"widget-shadow-exclude-slides\":\"\",\"widgetfullscreen\":\"disabled\",\"widget-fullscreen-display-desktop\":\"1\",\"widget-fullscreen-display-tablet\":\"1\",\"widget-fullscreen-display-mobile\":\"1\",\"widget-fullscreen-exclude-slides\":\"\",\"widget-fullscreen-display-hover\":\"0\",\"widgethtml\":\"disabled\",\"widget-html-display-desktop\":\"1\",\"widget-html-display-tablet\":\"1\",\"widget-html-display-mobile\":\"1\",\"widget-html-exclude-slides\":\"\",\"widget-html-display-hover\":\"0\",\"widgets\":\"arrow\"}', '2015-11-01 14:14:20', '', 0),
(2, NULL, 'Slider', 'simple', '{\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"1014\",\"background-animation-color\":\"55aa39ff\",\"background-animation-speed\":\"slow\",\"width\":\"1200\",\"height\":\"500\",\"margin\":\"0|*|0|*|0|*|0\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"responsiveSliderOrientation\":\"width_and_height\",\"responsiveSlideWidth\":\"1\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthDesktopLandscape\":\"0\",\"responsiveSlideWidthMaxDesktopLandscape\":\"1600\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthTabletLandscape\":\"0\",\"responsiveSlideWidthMaxTabletLandscape\":\"1200\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsiveSlideWidthMobileLandscape\":\"0\",\"responsiveSlideWidthMaxMobileLandscape\":\"740\",\"responsiveSlideWidthConstrainHeight\":\"0\",\"autoplay\":\"1\",\"autoplayDuration\":\"4000\",\"autoplayStopClick\":\"0\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"overflow-hidden-page\":\"0\",\"clear-both\":\"0\",\"clear-both-after\":\"1\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"1\",\"widget-arrow-previous\":\"$ss$\\/plugins\\/widgetarrow\\/image\\/image\\/previous\\/circle-stroke.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiZmZmZmZmMDAiLCJvcGFjaXR5IjoxMDAsInBhZGRpbmciOiIwfCp8MHwqfDB8KnwwfCp8cHgiLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAiLCJleHRyYSI6IiJ9LHsiZXh0cmEiOiIifV19\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widgetbullet\":\"transition\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"100\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDtiYWNrZ3JvdW5kLXNpemU6Y292ZXI7In1dfQ==\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJvcGFjaXR5IjoxMDAsInBhZGRpbmciOiI1fCp8NXwqfDV8Knw1fCp8cHgiLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjUwIiwiZXh0cmEiOiJtYXJnaW46IDRweDsifSx7ImV4dHJhIjoiIiwiYmFja2dyb3VuZGNvbG9yIjoiMDBjMWM0ZmYifV19\",\"widget-bullet-bar\":\"\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widgets\":\"arrow\"}', '2018-09-14 05:30:11', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders_xref`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`slider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders_xref`
--

INSERT INTO `wp_nextend2_smartslider3_sliders_xref` (`group_id`, `slider_id`, `ordering`) VALUES
(0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_slides`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide One', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Martin Dwyer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Martin Dwyer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Application Developer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Application Developer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/developerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/programmer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 0, 0),
(2, 'Slide Two', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Rachel Wright\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Rachel Wright\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Art Director & Photographer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Art Director & Photographer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/artdirectorthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/free1.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 1, 0),
(3, 'Slide Three', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Andrew Butler\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Andrew Butler\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Photographer & Illustrator\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Photographer & Illustrator\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/photographerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/photographer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 2, 0),
(10, 'cab2', 2, '2018-09-17 16:53:49', '2028-09-18 16:53:49', 1, 0, '[]', '', '$upload$/2018/09/cab2-1.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/09\\/cab2-1.jpg\",\"version\":\"3.3.7\"}', 4, 0),
(11, 'cab3', 2, '2018-09-17 16:53:49', '2028-09-18 16:53:49', 1, 0, '[]', '', '$upload$/2018/09/cab3-1.jpg', '{\"backgroundImage\":\"$upload$\\/2018\\/09\\/cab3-1.jpg\",\"version\":\"3.3.7\"}', 5, 0),
(12, 'cabnew', 2, '2018-09-17 16:53:49', '2028-09-18 16:53:49', 1, 0, '[{\"type\":\"content\",\"lastplacement\":\"content\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"\",\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"lastplacement\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"uniqueclass\":null,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":0,\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Taxi Booking Software.It\'s easy to \",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Taxi Booking Software.It\'s easy to book and Use<\",\"link\":\"#|*|_self\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUm9ib3RvLEFyaWFsIiwibGluZWhlaWdodCI6IjEuNSIsImJvbGQiOjAsIml0YWxpYyI6MCwidW5kZXJsaW5lIjowLCJhbGlnbiI6ImNlbnRlciIsImxldHRlcnNwYWNpbmciOiJub3JtYWwiLCJ3b3Jkc3BhY2luZyI6Im5vcm1hbCIsInRleHR0cmFuc2Zvcm0iOiJub25lIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"\"}}},{\"type\":\"layer\",\"lastplacement\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"uniqueclass\":null,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":0,\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Book Now\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"content\":\"Book Now\",\"font\":\"1103\",\"style\":\"1101\",\"link\":\"#|*|_self\",\"fullwidth\":\"0\",\"nowrap\":\"1\"}}}]}]', '', '$upload$/2018/09/cabnew.jpg', '{\"background-type\":\"image\",\"backgroundImage\":\"$upload$\\/2018\\/09\\/cabnew.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.3.7\"}', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1079 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/projects/work/cabbooking/', 'yes'),
(2, 'home', 'http://localhost/projects/work/cabbooking/', 'yes'),
(3, 'blogname', 'Cab Booking', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'anand.webdeveloper@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";i:1;s:27:\"cab_booking/cab_booking.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:39:\"custom-menu-class/custom-menu-class.php\";i:4;s:25:\"gtranslate/gtranslate.php\";i:5;s:62:\"postpage-specific-custom-css/post-page-specific-custom-css.php\";i:6;s:31:\"posts-in-page/posts_in_page.php\";i:7;s:33:\"smart-slider-3/smart-slider-3.php\";i:8;s:37:\"user-role-editor/user-role-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:55:\"C:\\wamp\\www\\cab_display/wp-content/themes/cab/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'cab', 'yes'),
(41, 'stylesheet', 'cab', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:82:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"access_masterslider\";b:1;s:20:\"publish_masterslider\";b:1;s:19:\"delete_masterslider\";b:1;s:19:\"create_masterslider\";b:1;s:19:\"export_masterslider\";b:1;s:22:\"duplicate_masterslider\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:48:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:19:\"access_masterslider\";b:1;s:20:\"publish_masterslider\";b:1;s:19:\"delete_masterslider\";b:1;s:19:\"create_masterslider\";b:1;s:19:\"export_masterslider\";b:1;s:22:\"duplicate_masterslider\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:12:\"companyadmin\";a:2:{s:4:\"name\";s:12:\"companyadmin\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:10:\"taxidriver\";a:2:{s:4:\"name\";s:10:\"taxidriver\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"customer\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"sociallinks\";a:0:{}s:9:\"copyright\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(213, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(220, 'wpglobus_option_locale', 'a:34:{s:2:\"ar\";s:2:\"ar\";s:2:\"en\";s:5:\"en_US\";s:2:\"au\";s:5:\"en_AU\";s:2:\"ca\";s:5:\"en_CA\";s:2:\"gb\";s:5:\"en_GB\";s:2:\"zh\";s:5:\"zh_CN\";s:2:\"tw\";s:5:\"zh_CN\";s:2:\"da\";s:5:\"da_DK\";s:2:\"nl\";s:5:\"nl_NL\";s:2:\"gl\";s:5:\"gl_ES\";s:2:\"de\";s:5:\"de_DE\";s:2:\"fi\";s:2:\"fi\";s:2:\"fr\";s:5:\"fr_FR\";s:2:\"qc\";s:5:\"fr_CA\";s:2:\"he\";s:5:\"he_IL\";s:2:\"hi\";s:5:\"hi_IN\";s:2:\"hu\";s:5:\"hu_HU\";s:2:\"it\";s:5:\"it_IT\";s:2:\"ja\";s:2:\"ja\";s:2:\"ko\";s:5:\"ko_KR\";s:2:\"no\";s:5:\"nb_NO\";s:2:\"fa\";s:5:\"fa_IR\";s:2:\"pl\";s:5:\"pl_PL\";s:2:\"pt\";s:5:\"pt_PT\";s:2:\"br\";s:5:\"pt_BR\";s:2:\"ro\";s:5:\"ro_RO\";s:2:\"ru\";s:5:\"ru_RU\";s:2:\"es\";s:5:\"es_ES\";s:2:\"mx\";s:5:\"es_MX\";s:2:\"sv\";s:5:\"sv_SE\";s:2:\"tr\";s:5:\"tr_TR\";s:2:\"uk\";s:2:\"uk\";s:2:\"vi\";s:2:\"vi\";s:2:\"cy\";s:2:\"cy\";}', 'yes'),
(221, 'wpglobus_option_flags', 'a:34:{s:2:\"ar\";s:8:\"arle.png\";s:2:\"en\";s:6:\"us.png\";s:2:\"au\";s:6:\"au.png\";s:2:\"ca\";s:6:\"ca.png\";s:2:\"gb\";s:6:\"uk.png\";s:2:\"zh\";s:6:\"cn.png\";s:2:\"tw\";s:6:\"cn.png\";s:2:\"da\";s:6:\"dk.png\";s:2:\"nl\";s:6:\"nl.png\";s:2:\"gl\";s:10:\"galego.png\";s:2:\"de\";s:6:\"de.png\";s:2:\"fi\";s:6:\"fi.png\";s:2:\"fr\";s:6:\"fr.png\";s:2:\"qc\";s:9:\"fr_CA.png\";s:2:\"he\";s:6:\"il.png\";s:2:\"hi\";s:6:\"in.png\";s:2:\"hu\";s:6:\"hu.png\";s:2:\"it\";s:6:\"it.png\";s:2:\"ja\";s:6:\"jp.png\";s:2:\"ko\";s:6:\"kr.png\";s:2:\"no\";s:6:\"no.png\";s:2:\"fa\";s:6:\"ir.png\";s:2:\"pl\";s:6:\"pl.png\";s:2:\"pt\";s:6:\"pt.png\";s:2:\"br\";s:6:\"br.png\";s:2:\"ro\";s:6:\"ro.png\";s:2:\"ru\";s:6:\"ru.png\";s:2:\"es\";s:6:\"es.png\";s:2:\"mx\";s:6:\"mx.png\";s:2:\"sv\";s:6:\"se.png\";s:2:\"tr\";s:6:\"tr.png\";s:2:\"uk\";s:6:\"ua.png\";s:2:\"vi\";s:6:\"vn.png\";s:2:\"cy\";s:6:\"cy.png\";}', 'yes'),
(222, 'wpglobus_option_versioning', 'a:1:{s:15:\"current_version\";s:6:\"1.9.16\";}', 'yes'),
(226, 'rewrite_rules', 'a:104:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"cmc_classes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"cmc_classes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"cmc_classes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"cmc_classes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"cmc_classes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"cmc_classes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"cmc_classes/([^/]+)/embed/?$\";s:44:\"index.php?cmc_classes=$matches[1]&embed=true\";s:32:\"cmc_classes/([^/]+)/trackback/?$\";s:38:\"index.php?cmc_classes=$matches[1]&tb=1\";s:40:\"cmc_classes/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?cmc_classes=$matches[1]&paged=$matches[2]\";s:47:\"cmc_classes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?cmc_classes=$matches[1]&cpage=$matches[2]\";s:36:\"cmc_classes/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?cmc_classes=$matches[1]&page=$matches[2]\";s:28:\"cmc_classes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"cmc_classes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"cmc_classes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"cmc_classes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"cmc_classes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"cmc_classes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(225, 'widget_wpglobus', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1550001092;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1550019092;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1550028326;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1550062315;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536844006;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(157, 'master-slider_ab_pro_feature_setting_content_type', '2', 'yes'),
(158, 'widget_master-slider-main-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'msp_general_setting', '', 'yes'),
(162, 'msp_advanced', '', 'yes'),
(163, 'upgrade_to_pro', '', 'yes'),
(164, 'masterslider_lite_plugin_version', '3.5.1', 'yes'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1549993430;s:7:\"checked\";a:1:{s:3:\"cab\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(155, 'masterslider_capabilities_added', '1', 'yes'),
(156, 'master-slider_ab_pro_feature_panel_content_type', '1', 'yes'),
(810, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1549993426;s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"translations\";a:0:{}}', 'no'),
(478, 'WPLANG', '', 'yes'),
(479, 'new_admin_email', 'anand.webdeveloper@gmail.com', 'yes'),
(199, 'n2_ss3_version', '3.3.7r2543', 'yes'),
(200, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(138, 'current_theme', '', 'yes'),
(139, 'theme_mods_cab', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(219, 'wpglobus_option_en_language_names', 'a:34:{s:2:\"ar\";s:6:\"Arabic\";s:2:\"en\";s:7:\"English\";s:2:\"au\";s:12:\"English (AU)\";s:2:\"ca\";s:12:\"English (CA)\";s:2:\"gb\";s:12:\"English (UK)\";s:2:\"zh\";s:7:\"Chinese\";s:2:\"tw\";s:12:\"Chinese (TW)\";s:2:\"da\";s:6:\"Danish\";s:2:\"nl\";s:5:\"Dutch\";s:2:\"gl\";s:8:\"Galician\";s:2:\"de\";s:6:\"German\";s:2:\"fi\";s:7:\"Finnish\";s:2:\"fr\";s:6:\"French\";s:2:\"qc\";s:11:\"French (CA)\";s:2:\"he\";s:6:\"Hebrew\";s:2:\"hi\";s:5:\"Hindi\";s:2:\"hu\";s:9:\"Hungarian\";s:2:\"it\";s:7:\"Italian\";s:2:\"ja\";s:8:\"Japanese\";s:2:\"ko\";s:6:\"Korean\";s:2:\"no\";s:9:\"Norwegian\";s:2:\"fa\";s:7:\"Persian\";s:2:\"pl\";s:6:\"Polish\";s:2:\"pt\";s:10:\"Portuguese\";s:2:\"br\";s:15:\"Portuguese (BR)\";s:2:\"ro\";s:8:\"Romanian\";s:2:\"ru\";s:7:\"Russian\";s:2:\"es\";s:7:\"Spanish\";s:2:\"mx\";s:12:\"Spanish (MX)\";s:2:\"sv\";s:7:\"Swedish\";s:2:\"tr\";s:7:\"Turkish\";s:2:\"uk\";s:9:\"Ukrainian\";s:2:\"vi\";s:10:\"Vietnamese\";s:2:\"cy\";s:5:\"Welsh\";}', 'yes'),
(218, 'wpglobus_option_language_names', 'a:34:{s:2:\"ar\";s:49:\"&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;\";s:2:\"en\";s:7:\"English\";s:2:\"au\";s:12:\"English (AU)\";s:2:\"ca\";s:12:\"English (CA)\";s:2:\"gb\";s:12:\"English (UK)\";s:2:\"zh\";s:32:\"&#31616;&#20307;&#20013;&#25991;\";s:2:\"tw\";s:32:\"&#32321;&#39636;&#20013;&#25991;\";s:2:\"da\";s:5:\"Dansk\";s:2:\"nl\";s:10:\"Nederlands\";s:2:\"gl\";s:6:\"Galego\";s:2:\"de\";s:7:\"Deutsch\";s:2:\"fi\";s:5:\"Suomi\";s:2:\"fr\";s:9:\"Français\";s:2:\"qc\";s:14:\"Français (CA)\";s:2:\"he\";s:35:\"&#1506;&#1489;&#1512;&#1497;&#1514;\";s:2:\"hi\";s:42:\"&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;\";s:2:\"hu\";s:6:\"Magyar\";s:2:\"it\";s:8:\"Italiano\";s:2:\"ja\";s:24:\"&#26085;&#26412;&#35486;\";s:2:\"ko\";s:24:\"&#54620;&#44397;&#50612;\";s:2:\"no\";s:5:\"Norsk\";s:2:\"fa\";s:35:\"&#1601;&#1575;&#1585;&#1587;&#1740;\";s:2:\"pl\";s:6:\"Polski\";s:2:\"pt\";s:10:\"Português\";s:2:\"br\";s:15:\"Português (BR)\";s:2:\"ro\";s:8:\"Română\";s:2:\"ru\";s:14:\"Русский\";s:2:\"es\";s:8:\"Español\";s:2:\"mx\";s:13:\"Español (MX)\";s:2:\"sv\";s:7:\"Svenska\";s:2:\"tr\";s:8:\"Türkçe\";s:2:\"uk\";s:20:\"Українська\";s:2:\"vi\";s:14:\"Tiếng Việt\";s:2:\"cy\";s:7:\"Cymraeg\";}', 'yes'),
(211, 'polylang', 'a:13:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:6:\"2.3.10\";s:16:\"first_activation\";i:1536905986;}', 'yes'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(154, 'masterslider_db_version', '1.03', 'yes'),
(442, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(1074, '_site_transient_timeout_theme_roots', '1549995229', 'no'),
(1075, '_site_transient_theme_roots', 'a:1:{s:3:\"cab\";s:7:\"/themes\";}', 'no'),
(1076, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1549993432;s:7:\"checked\";a:13:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";s:5:\"1.4.8\";s:34:\"cab_booking/cab_booking - Copy.php\";s:3:\"1.0\";s:27:\"cab_booking/cab_booking.php\";s:3:\"1.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:39:\"custom-menu-class/custom-menu-class.php\";s:7:\"0.2.6.1\";s:25:\"gtranslate/gtranslate.php\";s:6:\"2.8.42\";s:9:\"hello.php\";s:3:\"1.7\";s:62:\"postpage-specific-custom-css/post-page-specific-custom-css.php\";s:5:\"0.1.2\";s:31:\"posts-in-page/posts_in_page.php\";s:5:\"1.3.1\";s:33:\"smart-slider-3/smart-slider-3.php\";s:5:\"3.3.7\";s:37:\"user-role-editor/user-role-editor.php\";s:4:\"4.46\";s:21:\"wpglobus/wpglobus.php\";s:6:\"1.9.16\";}s:8:\"response\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:147:\"<p>Read the <a href=\"https://contactform7.com/category/releases/\">release announcement post</a> before upgrading. There is an important notice.</p>\";s:6:\"tested\";s:5:\"5.0.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"gtranslate/gtranslate.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/gtranslate\";s:4:\"slug\";s:10:\"gtranslate\";s:6:\"plugin\";s:25:\"gtranslate/gtranslate.php\";s:11:\"new_version\";s:6:\"2.8.43\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/gtranslate/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/gtranslate.2.8.43.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-256x256.png?rev=1625219\";s:2:\"1x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-128x128.png?rev=1579941\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/gtranslate/assets/banner-772x250.png?rev=759080\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:62:\"postpage-specific-custom-css/post-page-specific-custom-css.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/postpage-specific-custom-css\";s:4:\"slug\";s:28:\"postpage-specific-custom-css\";s:6:\"plugin\";s:62:\"postpage-specific-custom-css/post-page-specific-custom-css.php\";s:11:\"new_version\";s:5:\"0.1.4\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/postpage-specific-custom-css/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/postpage-specific-custom-css.0.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/postpage-specific-custom-css/assets/icon-256x256.png?rev=1707637\";s:2:\"1x\";s:81:\"https://ps.w.org/postpage-specific-custom-css/assets/icon-128x128.png?rev=1707637\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/postpage-specific-custom-css/assets/banner-1544x500.png?rev=1707637\";s:2:\"1x\";s:83:\"https://ps.w.org/postpage-specific-custom-css/assets/banner-772x250.png?rev=1707637\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"smart-slider-3/smart-slider-3.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/smart-slider-3\";s:4:\"slug\";s:14:\"smart-slider-3\";s:6:\"plugin\";s:33:\"smart-slider-3/smart-slider-3.php\";s:11:\"new_version\";s:6:\"3.3.13\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/smart-slider-3/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/smart-slider-3.3.3.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=1284893\";s:2:\"1x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-128x128.png?rev=1284893\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=1902662\";s:2:\"1x\";s:69:\"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=1902662\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:4:\"4.49\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/user-role-editor.4.49.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:21:\"wpglobus/wpglobus.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/wpglobus\";s:4:\"slug\";s:8:\"wpglobus\";s:6:\"plugin\";s:21:\"wpglobus/wpglobus.php\";s:11:\"new_version\";s:5:\"2.1.8\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/wpglobus/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/plugin/wpglobus.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wpglobus/assets/icon-256x256.png?rev=1069705\";s:2:\"1x\";s:61:\"https://ps.w.org/wpglobus/assets/icon-128x128.png?rev=1069705\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/wpglobus/assets/banner-772x250.png?rev=956934\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/bootstrap-for-contact-form-7\";s:4:\"slug\";s:28:\"bootstrap-for-contact-form-7\";s:6:\"plugin\";s:61:\"bootstrap-for-contact-form-7/bootstrap-for-contact-form-7.php\";s:11:\"new_version\";s:5:\"1.4.8\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/bootstrap-for-contact-form-7/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/bootstrap-for-contact-form-7.1.4.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/icon-256x256.png?rev=1021147\";s:2:\"1x\";s:81:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/icon-128x128.png?rev=1021147\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/banner-1544x500.png?rev=1019325\";s:2:\"1x\";s:83:\"https://ps.w.org/bootstrap-for-contact-form-7/assets/banner-772x250.png?rev=1019325\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"custom-menu-class/custom-menu-class.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/custom-menu-class\";s:4:\"slug\";s:17:\"custom-menu-class\";s:6:\"plugin\";s:39:\"custom-menu-class/custom-menu-class.php\";s:11:\"new_version\";s:7:\"0.2.6.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/custom-menu-class/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/custom-menu-class.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/custom-menu-class.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"posts-in-page/posts_in_page.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/posts-in-page\";s:4:\"slug\";s:13:\"posts-in-page\";s:6:\"plugin\";s:31:\"posts-in-page/posts_in_page.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/posts-in-page/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/posts-in-page.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/posts-in-page/assets/icon-256x256.png?rev=1596190\";s:2:\"1x\";s:66:\"https://ps.w.org/posts-in-page/assets/icon-128x128.png?rev=1596190\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/posts-in-page/assets/banner-772x250.png?rev=1596190\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(233, 'GTranslate', 'a:21:{s:11:\"pro_version\";s:0:\"\";s:18:\"enterprise_version\";s:0:\"\";s:15:\"url_translation\";s:0:\"\";s:17:\"add_hreflang_tags\";s:0:\"\";s:10:\"new_window\";s:0:\"\";s:12:\"show_in_menu\";s:0:\"\";s:26:\"floating_language_selector\";s:2:\"no\";s:21:\"native_language_names\";s:0:\"\";s:9:\"analytics\";s:0:\"\";s:23:\"detect_browser_language\";s:0:\"\";s:12:\"add_new_line\";i:1;s:16:\"default_language\";s:2:\"en\";s:18:\"translation_method\";s:5:\"onfly\";s:11:\"widget_look\";s:10:\"flags_name\";s:9:\"flag_size\";i:24;s:11:\"widget_code\";s:3474:\"<!-- GTranslate: https://gtranslate.io/ -->\r\n<a href=\"#\" onclick=\"doGTranslate(\'en|nl\');return false;\" title=\"Dutch\" class=\"glink nturl notranslate\"><img src=\"//localhost/cab_display/wp-content/plugins/gtranslate/flags/24/nl.png\" height=\"24\" width=\"24\" alt=\"Dutch\" /> <span>Dutch</span></a> <a href=\"#\" onclick=\"doGTranslate(\'en|en\');return false;\" title=\"English\" class=\"glink nturl notranslate\"><img src=\"//localhost/cab_display/wp-content/plugins/gtranslate/flags/24/en.png\" height=\"24\" width=\"24\" alt=\"English\" /> <span>English</span></a> <a href=\"#\" onclick=\"doGTranslate(\'en|eo\');return false;\" title=\"Esperanto\" class=\"glink nturl notranslate\"><img src=\"//localhost/cab_display/wp-content/plugins/gtranslate/flags/24/eo.png\" height=\"24\" width=\"24\" alt=\"Esperanto\" /> <span>Esperanto</span></a> <a href=\"#\" onclick=\"doGTranslate(\'en|it\');return false;\" title=\"Italian\" class=\"glink nturl notranslate\"><img src=\"//localhost/cab_display/wp-content/plugins/gtranslate/flags/24/it.png\" height=\"24\" width=\"24\" alt=\"Italian\" /> <span>Italian</span></a> <a href=\"#\" onclick=\"doGTranslate(\'en|pt\');return false;\" title=\"Portuguese\" class=\"glink nturl notranslate\"><img src=\"//localhost/cab_display/wp-content/plugins/gtranslate/flags/24/pt.png\" height=\"24\" width=\"24\" alt=\"Portuguese\" /> <span>Portuguese</span></a> <a href=\"#\" onclick=\"doGTranslate(\'en|ta\');return false;\" title=\"Tamil\" class=\"glink nturl notranslate\"><img src=\"//localhost/cab_display/wp-content/plugins/gtranslate/flags/24/ta.png\" height=\"24\" width=\"24\" alt=\"Tamil\" /> <span>Tamil</span></a> <style type=\"text/css\">\r\n#goog-gt-tt {display:none !important;}\r\n.goog-te-banner-frame {display:none !important;}\r\n.goog-te-menu-value:hover {text-decoration:none !important;}\r\n.goog-text-highlight {background-color:transparent !important;box-shadow:none !important;}\r\nbody {top:0 !important;}\r\n#google_translate_element2 {display:none!important;}\r\n</style>\r\n\r\n<div id=\"google_translate_element2\"></div>\r\n<script type=\"text/javascript\">\r\nfunction googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: \'en\',autoDisplay: false}, \'google_translate_element2\');}\r\n</script><script type=\"text/javascript\" src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2\"></script>\r\n\r\n\r\n<script type=\"text/javascript\">\r\nfunction GTranslateGetCurrentLang() {var keyValue = document[\'cookie\'].match(\'(^|;) ?googtrans=([^;]*)(;|$)\');return keyValue ? keyValue[2].split(\'/\')[2] : null;}\r\nfunction GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent(\'on\'+event,evt)}else{var evt=document.createEvent(\'HTMLEvents\');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}\r\nfunction doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair==\'\')return;var lang=lang_pair.split(\'|\')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split(\'|\')[0])return;var teCombo;var sel=document.getElementsByTagName(\'select\');for(var i=0;i<sel.length;i++)if(/goog-te-combo/.test(sel[i].className)){teCombo=sel[i];break;}if(document.getElementById(\'google_translate_element2\')==null||document.getElementById(\'google_translate_element2\').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,\'change\');GTranslateFireEvent(teCombo,\'change\')}}\r\n</script>\r\n\";s:10:\"incl_langs\";a:10:{i:0;s:2:\"ar\";i:1;s:5:\"zh-CN\";i:2;s:2:\"nl\";i:3;s:2:\"en\";i:4;s:2:\"fr\";i:5;s:2:\"de\";i:6;s:2:\"it\";i:7;s:2:\"pt\";i:8;s:2:\"ru\";i:9;s:2:\"es\";}s:11:\"fincl_langs\";a:6:{i:0;s:2:\"nl\";i:1;s:2:\"en\";i:2;s:2:\"eo\";i:3;s:2:\"it\";i:4;s:2:\"pt\";i:5;s:2:\"ta\";}s:9:\"alt_flags\";a:0:{}s:14:\"language_codes\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";s:15:\"language_codes2\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";}', 'yes'),
(234, 'widget_gtranslate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(235, 'gtranslate_admin_notice', 'a:2:{s:15:\"two_week_review\";a:3:{s:5:\"start\";s:9:\"9/25/2018\";s:3:\"int\";i:5;s:9:\"dismissed\";i:1;}s:12:\"upgrade_tips\";a:3:{s:5:\"start\";s:9:\"9/16/2018\";s:3:\"int\";i:2;s:9:\"dismissed\";i:1;}}', 'yes'),
(257, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(346, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1537351385;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(538, 'Cab Booking_page_title', 'booking', 'yes'),
(539, 'Cab Booking_page_name', 'Cab Booking', 'yes'),
(541, 'Cab Booking_page_id', '84', 'yes'),
(812, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"anand.webdeveloper@gmail.com\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1544952182;}', 'no'),
(440, 'user_role_editor', 'a:1:{s:11:\"ure_version\";s:4:\"4.46\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(441, 'wp_backup_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:75:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"access_masterslider\";b:1;s:20:\"publish_masterslider\";b:1;s:19:\"delete_masterslider\";b:1;s:19:\"create_masterslider\";b:1;s:19:\"export_masterslider\";b:1;s:22:\"duplicate_masterslider\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:48:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:19:\"access_masterslider\";b:1;s:20:\"publish_masterslider\";b:1;s:19:\"delete_masterslider\";b:1;s:19:\"create_masterslider\";b:1;s:19:\"export_masterslider\";b:1;s:22:\"duplicate_masterslider\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'no'),
(212, 'polylang_wpml_strings', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1537351590:1'),
(4, 2, '_edit_last', '1'),
(5, 7, '_wp_attached_file', '2012/10/2.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"2-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:13:\"2-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 8, '_wp_attached_file', '2012/10/121.jpg'),
(8, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:15:\"2012/10/121.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"121-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"121-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"121-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"121-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"121-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 9, '_wp_attached_file', '2012/10/3.jpg'),
(10, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:13:\"3-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 10, '_wp_attached_file', '2012/10/11.jpg'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:14:\"2012/10/11.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"11-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"11-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"11-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 11, '_wp_attached_file', '2012/10/8.jpg'),
(14, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/8.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"8-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:13:\"8-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 12, '_wp_attached_file', '2012/10/9.jpg'),
(16, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/9.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"9-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:13:\"9-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 13, '_wp_attached_file', '2012/10/151.jpg'),
(18, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:15:\"2012/10/151.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"151-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"151-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"151-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"151-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"151-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 14, '_wp_attached_file', '2012/10/4.jpg'),
(20, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:13:\"2012/10/4.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"4-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:13:\"4-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 15, '_wp_attached_file', '2012/10/13.jpg'),
(22, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:14:\"2012/10/13.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"13-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"13-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"13-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 16, '_wp_attached_file', '2012/10/16.jpg'),
(24, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:14:\"2012/10/16.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"16-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"16-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"16-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"16-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 1, '_edit_lock', '1537184630:1'),
(26, 1, '_edit_last', '1'),
(29, 21, '_wp_attached_file', '2018/09/313A313A3139_7519.jpg'),
(30, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:29:\"2018/09/313A313A3139_7519.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"313A313A3139_7519-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"313A313A3139_7519-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"313A313A3139_7519-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"313A313A3139_7519-800x510.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 22, '_wp_attached_file', '2018/09/590b57c7d0b4d60b3c5077df.png'),
(32, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:906;s:6:\"height\";i:390;s:4:\"file\";s:36:\"2018/09/590b57c7d0b4d60b3c5077df.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"590b57c7d0b4d60b3c5077df-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"590b57c7d0b4d60b3c5077df-300x129.png\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"590b57c7d0b4d60b3c5077df-768x331.png\";s:5:\"width\";i:768;s:6:\"height\";i:331;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"590b57c7d0b4d60b3c5077df-825x390.png\";s:5:\"width\";i:825;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 23, '_wp_attached_file', '2018/09/protaxi.jpg'),
(34, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:835;s:6:\"height\";i:433;s:4:\"file\";s:19:\"2018/09/protaxi.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"protaxi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"protaxi-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"protaxi-768x398.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:398;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"protaxi-825x433.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 24, '_wp_attached_file', '2018/09/taxiportal-banner.jpg'),
(36, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2018/09/taxiportal-banner.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"taxiportal-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"taxiportal-banner-300x110.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"taxiportal-banner-768x281.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:281;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"taxiportal-banner-1024x375.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"taxiportal-banner-825x500.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(41, 28, '_wp_attached_file', '2018/09/cab1.jpg'),
(42, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:678;s:4:\"file\";s:16:\"2018/09/cab1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"cab1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"cab1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"cab1-768x542.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:542;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"cab1-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 29, '_wp_attached_file', '2018/09/cab2.jpg'),
(44, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:550;s:4:\"file\";s:16:\"2018/09/cab2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"cab2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"cab2-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"cab2-768x422.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"cab2-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 30, '_wp_attached_file', '2018/09/cab3.jpg'),
(46, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:497;s:4:\"file\";s:16:\"2018/09/cab3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"cab3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"cab3-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"cab3-768x424.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"cab3-825x497.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:497;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 32, '_edit_lock', '1537374963:1'),
(49, 32, '_edit_last', '1'),
(51, 33, '_wp_attached_file', '2018/09/setting.png'),
(52, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:344;s:4:\"file\";s:19:\"2018/09/setting.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"setting-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"setting-300x172.png\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 32, '_thumbnail_id', '33'),
(195, 84, '_edit_last', '1'),
(196, 84, '_phylax_ppsccss_css', ''),
(194, 84, '_edit_lock', '1542870739:1'),
(61, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(69, 2, '_phylax_ppsccss_css', '.Home{display:none;}'),
(68, 1, '_wp_old_slug', 'hello-world__trashed'),
(70, 2, '_phylax_ppsccss_single_only', '0'),
(71, 45, '_edit_last', '1'),
(72, 45, '_edit_lock', '1537203654:1'),
(75, 45, '_phylax_ppsccss_css', ''),
(76, 45, '_phylax_ppsccss_single_only', '0'),
(79, 49, '_wp_attached_file', '2018/09/24_1.png'),
(80, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:16:\"2018/09/24_1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"24_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 50, '_wp_attached_file', '2018/09/Assured_1.png'),
(82, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:21:\"2018/09/Assured_1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Assured_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 59, '_edit_lock', '1537375163:1'),
(101, 59, '_edit_last', '1'),
(99, 32, '_phylax_ppsccss_css', ''),
(100, 32, '_phylax_ppsccss_single_only', '0'),
(113, 65, '_wp_attached_file', '2018/09/taxibg.jpg'),
(105, 59, '_phylax_ppsccss_css', ''),
(106, 59, '_phylax_ppsccss_single_only', '0'),
(114, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:461;s:4:\"file\";s:18:\"2018/09/taxibg.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"taxibg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"taxibg-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"taxibg-768x346.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"taxibg-1024x461.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"taxibg-825x461.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:64:\"Taxi Cab  Auto Repair Cars and Automotive Vector Icon Background\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:11:\"(c) bubaone\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:9:\"809023660\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 53, '_wp_attached_file', '2018/09/Assured_1-1.png'),
(86, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2018/09/Assured_1-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Assured_1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 54, '_wp_attached_file', '2018/09/google_play_store.png'),
(88, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:242;s:6:\"height\";i:72;s:4:\"file\";s:29:\"2018/09/google_play_store.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"google_play_store-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 55, '_wp_attached_file', '2018/09/apple_ios_store.png'),
(90, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:241;s:6:\"height\";i:72;s:4:\"file\";s:27:\"2018/09/apple_ios_store.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"apple_ios_store-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 56, '_wp_attached_file', '2018/09/web.png'),
(92, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:242;s:6:\"height\";i:72;s:4:\"file\";s:15:\"2018/09/web.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"web-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 59, '_thumbnail_id', '65'),
(120, 66, '_wp_attached_file', '2018/09/cab2-1.jpg'),
(121, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:953;s:4:\"file\";s:18:\"2018/09/cab2-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"cab2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"cab2-1-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"cab2-1-768x563.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:563;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"cab2-1-1024x751.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:751;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"cab2-1-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 67, '_wp_attached_file', '2018/09/cab3-1.jpg'),
(123, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:18:\"2018/09/cab3-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"cab3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"cab3-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"cab3-1-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"cab3-1-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 68, '_wp_attached_file', '2018/09/cabnew.jpg'),
(125, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:668;s:4:\"file\";s:18:\"2018/09/cabnew.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"cabnew-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"cabnew-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"cabnew-768x501.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:501;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"cabnew-1024x668.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:668;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"cabnew-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:33:\"Getty Images/Lonely Planet Images\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:78:\"Yellow taxi cab crossing Brooklyn Bridge with Manhattan skyline in background.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:9:\"148505637\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 69, '_form', '<div class=\"row\"><div class=\"col-md-2\">&nbsp;</div>\n<div class=\"col-md-10\">\n<label> Your Name (required)\n    [text* your-name] </label>\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n<div class=\"row\"><div class=\"col-md-12 col-sm-12 col-xs-12\">\n<label> Your Message\n    [textarea your-message] </label></div></div>\n\n[submit \"Send\"]\n</div></div>'),
(127, 69, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:28:\"Cab Booking \"[your-subject]\"\";s:6:\"sender\";s:42:\"[your-name] <anand.webdeveloper@gmail.com>\";s:9:\"recipient\";s:28:\"anand.webdeveloper@gmail.com\";s:4:\"body\";s:178:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Cab Booking (http://localhost/cab_display)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(128, 69, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"Cab Booking \"[your-subject]\"\";s:6:\"sender\";s:42:\"Cab Booking <anand.webdeveloper@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:120:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Cab Booking (http://localhost/cab_display)\";s:18:\"additional_headers\";s:38:\"Reply-To: anand.webdeveloper@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(129, 69, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(130, 69, '_additional_settings', ''),
(131, 69, '_locale', 'en_US'),
(132, 71, '_edit_last', '1'),
(141, 74, '_menu_item_object', 'custom'),
(135, 71, '_phylax_ppsccss_css', ''),
(136, 71, '_phylax_ppsccss_single_only', '0'),
(137, 71, '_edit_lock', '1537351467:1'),
(138, 74, '_menu_item_type', 'custom'),
(139, 74, '_menu_item_menu_item_parent', '0'),
(140, 74, '_menu_item_object_id', '74'),
(142, 74, '_menu_item_target', ''),
(143, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 74, '_menu_item_xfn', ''),
(145, 74, '_menu_item_url', '#n2-ss-2-align'),
(147, 75, '_menu_item_type', 'custom'),
(148, 75, '_menu_item_menu_item_parent', '0'),
(149, 75, '_menu_item_object_id', '75'),
(150, 75, '_menu_item_object', 'custom'),
(151, 75, '_menu_item_target', ''),
(152, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(153, 75, '_menu_item_xfn', ''),
(154, 75, '_menu_item_url', '#about-us'),
(188, 75, 'Custom_Menu_Class_class', 'a:2:{i:0;s:11:\"page-scroll\";s:0:\"\";s:11:\"page-scroll\";}'),
(156, 76, '_menu_item_type', 'custom'),
(157, 76, '_menu_item_menu_item_parent', '0'),
(158, 76, '_menu_item_object_id', '76'),
(159, 76, '_menu_item_object', 'custom'),
(160, 76, '_menu_item_target', ''),
(161, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(162, 76, '_menu_item_xfn', ''),
(163, 76, '_menu_item_url', '#services'),
(187, 74, 'Custom_Menu_Class_class', 'a:2:{i:0;s:0:\"\";s:0:\"\";s:0:\"\";}'),
(165, 77, '_menu_item_type', 'custom'),
(166, 77, '_menu_item_menu_item_parent', '0'),
(167, 77, '_menu_item_object_id', '77'),
(168, 77, '_menu_item_object', 'custom'),
(169, 77, '_menu_item_target', ''),
(170, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(171, 77, '_menu_item_xfn', ''),
(172, 77, '_menu_item_url', '#pricing'),
(185, 80, '_edit_last', '1'),
(174, 78, '_menu_item_type', 'custom'),
(175, 78, '_menu_item_menu_item_parent', '0'),
(176, 78, '_menu_item_object_id', '78'),
(177, 78, '_menu_item_object', 'custom'),
(178, 78, '_menu_item_target', ''),
(179, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(180, 78, '_menu_item_xfn', ''),
(181, 78, '_menu_item_url', '#contact-us'),
(186, 80, '_edit_lock', '1537370867:1'),
(189, 76, 'Custom_Menu_Class_class', 'a:2:{i:0;s:11:\"page-scroll\";s:0:\"\";s:11:\"page-scroll\";}'),
(190, 77, 'Custom_Menu_Class_class', 'a:2:{i:0;s:11:\"page-scroll\";s:0:\"\";s:11:\"page-scroll\";}'),
(191, 78, 'Custom_Menu_Class_class', 'a:2:{i:0;s:11:\"page-scroll\";s:0:\"\";s:11:\"page-scroll\";}'),
(197, 84, '_phylax_ppsccss_single_only', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-13 12:51:32', '2018-09-13 12:51:32', '[smartslider3 slider=2]', 'Slider', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-17 11:15:26', '2018-09-17 11:15:26', '', 0, 'http://localhost/cab_display/?p=1', 0, 'post', '', 1),
(19, 1, '2018-09-14 03:25:54', '2018-09-14 03:25:54', '[masterslider id=\"1\"]', 'Slider', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-14 03:25:54', '2018-09-14 03:25:54', '', 1, 'http://localhost/cab_display/2018/09/14/1-revision-v1/', 0, 'revision', '', 0),
(2, 1, '2018-09-13 12:51:32', '2018-09-13 12:51:32', '[smartslider3 slider=2]\r\n[ic_add_posts ids=\'32,45,59,71\'  orderby=\'id\' ]', 'Home', '', 'publish', 'closed', 'open', '', 'homepage', '', '', '2018-09-19 10:06:29', '2018-09-19 10:06:29', '', 0, 'http://localhost/cab_display/?page_id=2', 0, 'page', '', 0),
(20, 1, '2018-09-14 03:26:34', '2018-09-14 03:26:34', '[ic_add_posts ids=\'1\']', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-14 03:26:34', '2018-09-14 03:26:34', '', 2, 'http://localhost/cab_display/2018/09/14/2-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-09-14 03:43:58', '2018-09-14 03:43:58', '', '313A313A3139_7519', '', 'inherit', 'open', 'closed', '', '313a313a3139_7519', '', '', '2018-09-14 03:43:58', '2018-09-14 03:43:58', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/313A313A3139_7519.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-09-14 03:43:59', '2018-09-14 03:43:59', '', '590b57c7d0b4d60b3c5077df', '', 'inherit', 'open', 'closed', '', '590b57c7d0b4d60b3c5077df', '', '', '2018-09-14 03:43:59', '2018-09-14 03:43:59', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/590b57c7d0b4d60b3c5077df.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-09-14 03:44:01', '2018-09-14 03:44:01', '', 'protaxi', '', 'inherit', 'open', 'closed', '', 'protaxi', '', '', '2018-09-14 03:44:01', '2018-09-14 03:44:01', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/protaxi.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-09-14 03:44:02', '2018-09-14 03:44:02', '', 'taxiportal-banner', '', 'inherit', 'open', 'closed', '', 'taxiportal-banner', '', '', '2018-09-14 03:44:02', '2018-09-14 03:44:02', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/taxiportal-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(3, 1, '2018-09-13 12:51:32', '2018-09-13 12:51:32', '<h2>Who we are</h2><p>Our website address is: http://localhost/cab_display.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-09-13 12:51:32', '2018-09-13 12:51:32', '', 0, 'http://localhost/cab_display/?page_id=3', 0, 'page', '', 0),
(85, 1, '2018-11-01 17:18:51', '2018-11-01 17:18:51', 'This text may be overridden by the plugin. You shouldn\'t edit it.', 'book_here', '', 'publish', 'closed', 'closed', '', 'book_here', '', '', '2018-11-01 17:18:51', '2018-11-01 17:18:51', '', 0, 'http://localhost/cab_display/book_here/', 0, 'page', '', 0),
(5, 1, '2018-09-14 03:00:46', '2018-09-14 03:00:46', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/cab_display/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-14 03:00:46', '2018-09-14 03:00:46', '', 2, 'http://localhost/cab_display/2018/09/14/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-09-14 03:26:10', '2018-09-14 03:26:10', '[ic_add_posts ids=\'228,233,237,245\']', 'Home page', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-09-14 03:26:10', '2018-09-14 03:26:10', '', 2, 'http://localhost/cab_display/2018/09/14/2-autosave-v1/', 0, 'revision', '', 0),
(7, 1, '2018-09-14 03:10:33', '2018-09-14 03:10:33', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-09-14 03:10:33', '2018-09-14 03:10:33', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-09-14 03:10:35', '2018-09-14 03:10:35', '', '121', '', 'inherit', 'open', 'closed', '', '121', '', '', '2018-09-14 03:10:35', '2018-09-14 03:10:35', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/121.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-09-14 03:10:38', '2018-09-14 03:10:38', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-09-14 03:10:38', '2018-09-14 03:10:38', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-09-14 03:10:40', '2018-09-14 03:10:40', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2018-09-14 03:10:40', '2018-09-14 03:10:40', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/11.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-09-14 03:10:47', '2018-09-14 03:10:47', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2018-09-14 03:10:47', '2018-09-14 03:10:47', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-09-14 03:10:59', '2018-09-14 03:10:59', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2018-09-14 03:10:59', '2018-09-14 03:10:59', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-09-14 03:11:14', '2018-09-14 03:11:14', '', '151', '', 'inherit', 'open', 'closed', '', '151', '', '', '2018-09-14 03:11:14', '2018-09-14 03:11:14', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/151.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-09-14 03:11:17', '2018-09-14 03:11:17', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-09-14 03:11:17', '2018-09-14 03:11:17', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-09-14 03:11:21', '2018-09-14 03:11:21', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2018-09-14 03:11:21', '2018-09-14 03:11:21', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/13.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-09-14 03:11:28', '2018-09-14 03:11:28', '', '16', '', 'inherit', 'open', 'closed', '', '16', '', '', '2018-09-14 03:11:28', '2018-09-14 03:11:28', '', 0, 'http://localhost/cab_display/wp-content/uploads/2012/10/16.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-11-01 17:18:51', '2018-11-01 17:18:51', 'This text may be overridden by the plugin. You shouldn\'t edit it.', 'cabbooking', '', 'publish', 'closed', 'closed', '', 'cabbooking', '', '', '2018-11-22 00:06:14', '2018-11-22 00:06:14', '', 0, 'http://localhost/cab_display/booking/', 0, 'page', '', 0),
(26, 1, '2018-09-14 15:37:26', '2018-09-14 15:37:26', '[gtranslate]', 'Slider', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-14 15:37:26', '2018-09-14 15:37:26', '', 1, 'http://localhost/cab_display/2018/09/14/1-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-09-14 15:45:00', '2018-09-14 15:45:00', '', 'Slider', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-14 15:45:00', '2018-09-14 15:45:00', '', 1, 'http://localhost/cab_display/2018/09/14/1-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-09-15 05:36:29', '2018-09-15 05:36:29', '', 'cab1', '', 'inherit', 'open', 'closed', '', 'cab1', '', '', '2018-09-15 05:36:29', '2018-09-15 05:36:29', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/cab1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-09-15 05:36:31', '2018-09-15 05:36:31', '', 'cab2', '', 'inherit', 'open', 'closed', '', 'cab2', '', '', '2018-09-15 05:36:31', '2018-09-15 05:36:31', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/cab2.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-09-15 05:36:32', '2018-09-15 05:36:32', '', 'cab3', '', 'inherit', 'open', 'closed', '', 'cab3', '', '', '2018-09-15 05:36:32', '2018-09-15 05:36:32', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/cab3.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-09-15 05:40:04', '2018-09-15 05:40:04', '[smartslider3 slider=2]', 'Slider', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-15 05:40:04', '2018-09-15 05:40:04', '', 1, 'http://localhost/cab_display/2018/09/15/1-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-09-17 10:26:28', '2018-09-17 10:26:28', '<strong>Car Rental Deals with Cab Booking Always Lucrative</strong>\r\n\r\nCar rental deals with us vary from place to place in order to match well to our customers’ expectations. If cheap cabs or cheap car rentals is your interest, then we can be of help to it without compromising on the cab standards. Budget car rentals with us will be the best match for your requirement. Car rentals with us are gaining good attention due to the availability of all your favourite car models. Just come with us with your interest and we\'ve got that car keys with us to rent it to you.\r\n<ul>\r\n 	<li>Taxi booking with us is available for your all types of needs like airport taxi, taxi online and many more.</li>\r\n 	<li>Car rentals with <strong>Cab Booking </strong>are always trustworthy besides addressing well your best interest too.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;', 'About us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2018-09-19 11:54:36', '2018-09-19 11:54:36', '', 0, 'http://localhost/cab_display/?p=32', 0, 'post', '', 0),
(33, 1, '2018-09-17 10:26:13', '2018-09-17 10:26:13', '', 'setting', '', 'inherit', 'open', 'closed', '', 'setting', '', '', '2018-09-17 10:26:13', '2018-09-17 10:26:13', '', 32, 'http://localhost/cab_display/wp-content/uploads/2018/09/setting.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-09-17 10:37:57', '2018-09-17 10:37:57', '<strong>Car Rental Deals with Cab Booking Always Lucrative</strong>\r\n\r\nCar rental deals with us vary from place to place in order to match well to our customers’ expectations. If cheap cabs or cheap car rentals is your interest, then we can be of help to it without compromising on the cab standards. Budget car rentals with us will be the best match for your requirement. Car rentals with us are gaining good attention due to the availability of all your favourite car models. Just come with us with your interest and we\'ve got that car keys with us to rent it to you. Taxi booking with us is available for your all types of needs like airport taxi, taxi online and many more. Car rentals with <strong>Cab Booking </strong>are always trustworthy besides addressing well your best interest too.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'About us', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-09-17 10:37:57', '2018-09-17 10:37:57', '', 32, 'http://localhost/cab_display/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-09-17 10:26:28', '2018-09-17 10:26:28', '<strong>Car Rental Deals with Mapcabs Always Lucrative</strong>\r\n\r\nCar rental deals with us vary from place to place in order to match well to our customers’ expectations. If cheap cabs or cheap car rentals is your interest, then we can be of help to it without compromising on the cab standards. Budget car rentals with us will be the best match for your requirement. Car rentals with us are gaining good attention due to the availability of all your favourite car models. Just come with us with your interest and we\'ve got that car keys with us to rent it to you. Taxi booking with us is available for your all types of needs like airport taxi, taxi online and many more. Car rentals with Mapcabs are always trustworthy besides addressing well your best interest too.\r\n\r\n&nbsp;\r\n\r\n<strong>Taxi Online Quick and Effective with Mapcabs</strong>\r\n\r\nMapcabs taxi online booking is quite simple besides with a facility to book through calling on the phone too. Our budget car rental feature enables the best low rate for you instantly. Here, the low rate with us doesn’t turn into standards compromise on the vehicle too. We provide the best car of your interest at the lowest price. This is making us car rentals specialist online. Very soon we’re spreading into other areas of the country to reach every customer. We’re always at reach online besides being available on phone too. Your travel experience in our cabs is always safe and privacy enriched besides being cost effective too.', 'About us', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-09-17 10:26:28', '2018-09-17 10:26:28', '', 32, 'http://localhost/cab_display/2018/09/17/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-09-17 10:26:46', '2018-09-17 10:26:46', '[ic_add_posts ids=\'1,32\']', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-17 10:26:46', '2018-09-17 10:26:46', '', 2, 'http://localhost/cab_display/2018/09/17/2-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-09-17 10:36:15', '2018-09-17 10:36:15', '', 'Slider', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-17 10:36:15', '2018-09-17 10:36:15', '', 1, 'http://localhost/cab_display/1-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-09-17 10:30:14', '2018-09-17 10:30:14', '[ic_add_posts ids=\'1,32\'  orderby=\'id\' order=\'ASC\']', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-17 10:30:14', '2018-09-17 10:30:14', '', 2, 'http://localhost/cab_display/2018/09/17/2-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-09-17 10:30:47', '2018-09-17 10:30:47', '[ic_add_posts ids=\'1,32\'  orderby=\'id\' ]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-17 10:30:47', '2018-09-17 10:30:47', '', 2, 'http://localhost/cab_display/2018/09/17/2-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-09-17 10:36:35', '2018-09-17 10:36:35', '[smartslider3 slider=2]\r\n[ic_add_posts ids=\'1,32\'  orderby=\'id\' ]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-17 10:36:35', '2018-09-17 10:36:35', '', 2, 'http://localhost/cab_display/2-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-09-17 10:38:36', '2018-09-17 10:38:36', '<strong>Car Rental Deals with Cab Booking Always Lucrative</strong>\r\n\r\nCar rental deals with us vary from place to place in order to match well to our customers’ expectations. If cheap cabs or cheap car rentals is your interest, then we can be of help to it without compromising on the cab standards. Budget car rentals with us will be the best match for your requirement. Car rentals with us are gaining good attention due to the availability of all your favourite car models. Just come with us with your interest and we\'ve got that car keys with us to rent it to you.\r\n<ul>\r\n 	<li>Taxi booking with us is available for your all types of needs like airport taxi, taxi online and many more.</li>\r\n 	<li>Car rentals with <strong>Cab Booking </strong>are always trustworthy besides addressing well your best interest too.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n&nbsp;', 'About us', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-09-17 10:38:36', '2018-09-17 10:38:36', '', 32, 'http://localhost/cab_display/32-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-09-17 11:15:26', '2018-09-17 11:15:26', '[smartslider3 slider=2]', 'Slider', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-09-17 11:15:26', '2018-09-17 11:15:26', '', 1, 'http://localhost/cab_display/1-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-09-17 11:32:00', '2018-09-17 11:32:00', '[smartslider3 slider=2]\r\n[ic_add_posts ids=\'32\'  orderby=\'id\' ]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-17 11:32:00', '2018-09-17 11:32:00', '', 2, 'http://localhost/cab_display/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-09-17 11:51:47', '2018-09-17 11:51:47', '<p class=\"details\">Have you travelled one-way from one city to another, and paid both way charges?</p>\r\n<p class=\"details\">OneWay.Cab is India’s Leading One-Way Inter City Cab Service Provider.</p>\r\n<p class=\"details\">Now when you travel one-way inter-city, you pay one-way.</p>\r\n<p class=\"details\">We are present in 46+ Cities and provide OneWayCab services on 468+ Routes. Check all available <a href=\"https://oneway.cab/Routes.html\">Routes </a>here .Trusted by 55,000 Customers.</p>\r\n&nbsp;\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img src=\"https://oneway.cab/img/icons/24_1.png\" alt=\"24x7 Helpline\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>24×7 Helpline</strong>Available to help you at any moment: 08000247247\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-49\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/24_1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>No Extra KMs Charge</strong>We do not charge based on KMs. There is no extra KMs Fare applicable. Get Peace of Mind, so that driver doesn’t overcharge you by taking a detour.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-50\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>Assured Cab</strong>If you have Booking Confirmation, rest assured you will get cab.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-53\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1-1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>GPS Enabled</strong>Each Cab is GPS Enabled. Now Track Cab as they arrive to pick you up.\r\n\r\n</div>\r\n<div class=\"clearfix\"></div>\r\n</div>\r\n<p class=\"details\">We also provide Local Car Rental Hourly Packages and Outstation Cabs.</p>\r\n<strong> </strong>\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3\"></div>\r\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-54 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/google_play_store.png\" alt=\"\" width=\"242\" height=\"72\" /></div>\r\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-55 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/apple_ios_store.png\" alt=\"\" width=\"241\" height=\"72\" /></div>\r\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-56 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/web.png\" alt=\"\" width=\"242\" height=\"72\" /></div>\r\n</div>', 'Services', '', 'publish', 'open', 'open', '', 'services', '', '', '2018-09-17 17:02:54', '2018-09-17 17:02:54', '', 0, 'http://localhost/cab_display/?p=45', 0, 'post', '', 0),
(48, 1, '2018-09-17 12:16:52', '2018-09-17 12:16:52', '<p class=\"details\">Have you travelled one-way from one city to another, and paid both way charges?</p>\r\n<p class=\"details\">OneWay.Cab is India’s Leading One-Way Inter City Cab Service Provider.</p>\r\n<p class=\"details\">Now when you travel one-way inter-city, you pay one-way.</p>\r\n<p class=\"details\">We are present in 46+ Cities and provide OneWayCab services on 468+ Routes. Check all available <a href=\"https://oneway.cab/Routes.html\">Routes </a>here .Trusted by 55,000 Customers.</p>\r\n&nbsp;\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/24_1.png\" alt=\"24x7 Helpline\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>24×7 Helpline</strong>Available to help you at any moment: 08000247247</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/no_charge.png\" alt=\"No Extra KMs Charge\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>No Extra KMs Charge</strong>We do not charge based on KMs. There is no extra KMs Fare applicable. Get Peace of Mind, so that driver doesn’t overcharge you by taking a detour.</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Assured_1.png\" alt=\"Assured Cab\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>Assured Cab</strong>If you have Booking Confirmation, rest assured you will get cab.</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Track_1.png\" alt=\"GPS Enabled\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>GPS Enabled</strong>Each Cab is GPS Enabled. Now Track Cab as they arrive to pick you up.</div>\r\n<div class=\"clearfix\"></div>\r\n</div>\r\n<p class=\"details\">We also provide Local Car Rental Hourly Packages and Outstation Cabs.</p>\r\n<strong> </strong>\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3\"></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/redirect.php?url=android\" target=\"blank\"><img src=\"https://oneway.cab/img/google_play_store.png\" alt=\"download oneway.cab android app\" /></a></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/redirect.php?url=iphone\" target=\"blank\"><img src=\"https://oneway.cab/img/apple_ios_store.png\" alt=\"download oneway.cab iPhone app store\" /></a></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/\"><img src=\"https://oneway.cab/img/web.png\" alt=\"book via oneway.cab website\" /></a></div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-09-17 12:16:52', '2018-09-17 12:16:52', '', 45, 'http://localhost/cab_display/45-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-09-17 16:48:46', '2018-09-17 16:48:46', '', '24_1', '', 'inherit', 'open', 'closed', '', '24_1', '', '', '2018-09-17 16:48:46', '2018-09-17 16:48:46', '', 45, 'http://localhost/cab_display/wp-content/uploads/2018/09/24_1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-09-17 16:49:05', '2018-09-17 16:49:05', '', 'Assured_1', '', 'inherit', 'open', 'closed', '', 'assured_1', '', '', '2018-09-17 16:49:05', '2018-09-17 16:49:05', '', 45, 'http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-09-17 16:59:10', '2018-09-17 16:59:10', '<p class=\"details\">Have you travelled one-way from one city to another, and paid both way charges?</p>\n<p class=\"details\">OneWay.Cab is India’s Leading One-Way Inter City Cab Service Provider.</p>\n<p class=\"details\">Now when you travel one-way inter-city, you pay one-way.</p>\n<p class=\"details\">We are present in 46+ Cities and provide OneWayCab services on 468+ Routes. Check all available <a href=\"https://oneway.cab/Routes.html\">Routes </a>here .Trusted by 55,000 Customers.</p>\n&nbsp;\n<div class=\"col-md-12\">\n<div class=\"col-md-3 main_center\">\n\n<img src=\"https://oneway.cab/img/icons/24_1.png\" alt=\"24x7 Helpline\" />\n<div class=\"clearfix\"></div>\n<strong>24×7 Helpline</strong>Available to help you at any moment: 08000247247\n\n</div>\n<div class=\"col-md-3 main_center\">\n\n<img class=\"alignnone size-full wp-image-49\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/24_1.png\" alt=\"\" width=\"250\" height=\"250\" />\n<div class=\"clearfix\"></div>\n<strong>No Extra KMs Charge</strong>We do not charge based on KMs. There is no extra KMs Fare applicable. Get Peace of Mind, so that driver doesn’t overcharge you by taking a detour.\n\n</div>\n<div class=\"col-md-3 main_center\">\n\n<img class=\"alignnone size-full wp-image-50\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1.png\" alt=\"\" width=\"250\" height=\"250\" />\n<div class=\"clearfix\"></div>\n<strong>Assured Cab</strong>If you have Booking Confirmation, rest assured you will get cab.\n\n</div>\n<div class=\"col-md-3 main_center\">\n\n<img class=\"alignnone size-full wp-image-53\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1-1.png\" alt=\"\" width=\"250\" height=\"250\" />\n<div class=\"clearfix\"></div>\n<strong>GPS Enabled</strong>Each Cab is GPS Enabled. Now Track Cab as they arrive to pick you up.\n\n</div>\n<div class=\"clearfix\"></div>\n</div>\n<p class=\"details\">We also provide Local Car Rental Hourly Packages and Outstation Cabs.</p>\n<strong> </strong>\n<div class=\"col-md-12\">\n<div class=\"col-md-3\"></div>\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-54 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/google_play_store.png\" alt=\"\" width=\"242\" height=\"72\" /></div>\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-55 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/apple_ios_store.png\" alt=\"\" width=\"241\" height=\"72\" /></div>\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-56 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/web.png\" alt=\"\" width=\"242\" height=\"72\" /></div>\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '45-autosave-v1', '', '', '2018-09-17 16:59:10', '2018-09-17 16:59:10', '', 45, 'http://localhost/cab_display/45-autosave-v1/', 0, 'revision', '', 0),
(46, 1, '2018-09-17 11:51:47', '2018-09-17 11:51:47', '<p class=\"details\">Have you travelled one-way from one city to another, and paid both way charges?</p>\r\n<p class=\"details\">OneWay.Cab is India’s Leading One-Way Inter City Cab Service Provider.</p>\r\n<p class=\"details\">Now when you travel one-way inter-city, you pay one-way.</p>\r\n<p class=\"details\">We are present in 46+ Cities and provide OneWayCab services on 468+ Routes. Check all available <a href=\"https://oneway.cab/Routes.html\">Routes </a>here .Trusted by 55,000 Customers.</p>\r\n&nbsp;\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/24_1.png\" alt=\"24x7 Helpline\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>24x7 Helpline</strong></span>Available to help you at any moment: 08000247247\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/no_charge.png\" alt=\"No Extra KMs Charge\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>No Extra KMs Charge</strong></span>We do not charge based on KMs. There is no extra KMs Fare applicable. Get Peace of Mind, so that driver doesn’t overcharge you by taking a detour.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Assured_1.png\" alt=\"Assured Cab\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Assured Cab</strong></span>If you have Booking Confirmation, rest assured you will get cab.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Track_1.png\" alt=\"GPS Enabled\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>GPS Enabled</strong></span>Each Cab is GPS Enabled. Now Track Cab as they arrive to pick you up.\r\n\r\n</div>\r\n<div class=\"clearfix\"></div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/no_fare.png\" alt=\"Fixed Fare\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Fixed Fare</strong></span>There is no additional charge apart from Service Tax &amp; One Way Toll-Tax which are Government Mandated Taxes. Our Fares is all inclusive except Taxes.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/no_charge.png\" alt=\"Transparent Pricing\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Transparent Pricing</strong></span>We will show taxes (Service Tax &amp; One-Way Toll Tax before booking of ride). You only pay what you see before booking, no other charges.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Dedicated_1.png\" alt=\"Dedicated Cab\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Dedicated Cab</strong></span>just for you\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/pick_drop.png\" alt=\"Norway\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Home Pickup &amp; Drop</strong></span>Your pick-up address can be anywhere in pick-up city and drop address can be anywhere in destination city including Airport.\r\n\r\n</div>\r\n<div class=\"clearfix\"></div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Backup_1.png\" alt=\"Backup Cab &amp; Roadside Assistance\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Backup Cab &amp; Roadside Assistance</strong></span>Available in case of any operational issue en-route.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Automatic_1.png\" alt=\"Norway\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Automatic Instant Invoice</strong></span>At the journey on your registered email address.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Book_1.png\" alt=\"No Advance Payment\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>No Advance Payment</strong></span>Required for booking of Cab\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Assured_1.png\" alt=\"On-Time Cab\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>On-Time Cab</strong></span>Using Predictive Algorithm using GPS and Traffic Conditions, each cab is tracked for On-Time Arrival. We ensure cab arrives on time at your pick-up destination.\r\n\r\n</div>\r\n<div class=\"clearfix\"></div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/cancellation.png\" alt=\"Zero Cancellation Charges\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Zero Cancellation Charges</strong></span>We know plans change. Cancel any moment – no obligations, no cancellation charge.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/no_fare.png\" alt=\"Multi Payment Options\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Multi Payment Options</strong></span>By Cash at the end of Journey or Pre-Pay via Net-Banking, Credit Card, PayTM wallet plus many more.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/top_1.png\" alt=\"Best Rated Drivers\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Best Rated Drivers</strong></span>All our Drivers have commercial driving license which are specialized for highway driving. We rank each driver on 8+ parameters including Customer Satisfaction, On-Time Arrival.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\"><img src=\"https://oneway.cab/img/icons/Backup_1.png\" alt=\"Safe &amp; Convenient Ride\" />\r\n<div class=\"clearfix\"></div>\r\n<span><strong>Safe &amp; Convenient Ride</strong></span>Enabled via our specialized experience of last 2 yrs enabled by our tech platform.\r\n\r\n</div>\r\n</div>\r\n<p class=\"details\">We also provide Local Car Rental Hourly Packages and Outstation Cabs.</p>\r\n<strong> </strong>\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3\"></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/redirect.php?url=android\" target=\"blank\"><img src=\"https://oneway.cab/img/google_play_store.png\" alt=\"download oneway.cab android app\" /></a></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/redirect.php?url=iphone\" target=\"blank\"><img src=\"https://oneway.cab/img/apple_ios_store.png\" alt=\"download oneway.cab iPhone app store\" /></a></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/\"><img src=\"https://oneway.cab/img/web.png\" alt=\"book via oneway.cab website\" /></a></div>\r\n</div>\r\n&nbsp;', 'Services', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-09-17 11:51:47', '2018-09-17 11:51:47', '', 45, 'http://localhost/cab_display/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-09-17 11:52:01', '2018-09-17 11:52:01', '[smartslider3 slider=2]\r\n[ic_add_posts ids=\'32,45\'  orderby=\'id\' ]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-17 11:52:01', '2018-09-17 11:52:01', '', 2, 'http://localhost/cab_display/2-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-09-17 16:51:34', '2018-09-17 16:51:34', '', 'Assured_1', '', 'inherit', 'open', 'closed', '', 'assured_1-2', '', '', '2018-09-17 16:51:34', '2018-09-17 16:51:34', '', 45, 'http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1-1.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2018-09-17 16:51:51', '2018-09-17 16:51:51', '', 'google_play_store', '', 'inherit', 'open', 'closed', '', 'google_play_store', '', '', '2018-09-17 16:51:51', '2018-09-17 16:51:51', '', 45, 'http://localhost/cab_display/wp-content/uploads/2018/09/google_play_store.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2018-09-17 16:52:07', '2018-09-17 16:52:07', '', 'apple_ios_store', '', 'inherit', 'open', 'closed', '', 'apple_ios_store', '', '', '2018-09-17 16:52:07', '2018-09-17 16:52:07', '', 45, 'http://localhost/cab_display/wp-content/uploads/2018/09/apple_ios_store.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2018-09-17 16:52:40', '2018-09-17 16:52:40', '', 'web', '', 'inherit', 'open', 'closed', '', 'web', '', '', '2018-09-17 16:52:40', '2018-09-17 16:52:40', '', 45, 'http://localhost/cab_display/wp-content/uploads/2018/09/web.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2018-09-17 17:02:54', '2018-09-17 17:02:54', '<p class=\"details\">Have you travelled one-way from one city to another, and paid both way charges?</p>\r\n<p class=\"details\">OneWay.Cab is India’s Leading One-Way Inter City Cab Service Provider.</p>\r\n<p class=\"details\">Now when you travel one-way inter-city, you pay one-way.</p>\r\n<p class=\"details\">We are present in 46+ Cities and provide OneWayCab services on 468+ Routes. Check all available <a href=\"https://oneway.cab/Routes.html\">Routes </a>here .Trusted by 55,000 Customers.</p>\r\n&nbsp;\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img src=\"https://oneway.cab/img/icons/24_1.png\" alt=\"24x7 Helpline\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>24×7 Helpline</strong>Available to help you at any moment: 08000247247\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-49\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/24_1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>No Extra KMs Charge</strong>We do not charge based on KMs. There is no extra KMs Fare applicable. Get Peace of Mind, so that driver doesn’t overcharge you by taking a detour.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-50\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>Assured Cab</strong>If you have Booking Confirmation, rest assured you will get cab.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-53\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1-1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>GPS Enabled</strong>Each Cab is GPS Enabled. Now Track Cab as they arrive to pick you up.\r\n\r\n</div>\r\n<div class=\"clearfix\"></div>\r\n</div>\r\n<p class=\"details\">We also provide Local Car Rental Hourly Packages and Outstation Cabs.</p>\r\n<strong> </strong>\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3\"></div>\r\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-54 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/google_play_store.png\" alt=\"\" width=\"242\" height=\"72\" /></div>\r\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-55 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/apple_ios_store.png\" alt=\"\" width=\"241\" height=\"72\" /></div>\r\n<div class=\"col-md-2\"><img class=\"alignnone wp-image-56 size-full\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/web.png\" alt=\"\" width=\"242\" height=\"72\" /></div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-09-17 17:02:54', '2018-09-17 17:02:54', '', 45, 'http://localhost/cab_display/45-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-09-17 16:52:50', '2018-09-17 16:52:50', '<p class=\"details\">Have you travelled one-way from one city to another, and paid both way charges?</p>\r\n<p class=\"details\">OneWay.Cab is India’s Leading One-Way Inter City Cab Service Provider.</p>\r\n<p class=\"details\">Now when you travel one-way inter-city, you pay one-way.</p>\r\n<p class=\"details\">We are present in 46+ Cities and provide OneWayCab services on 468+ Routes. Check all available <a href=\"https://oneway.cab/Routes.html\">Routes </a>here .Trusted by 55,000 Customers.</p>\r\n&nbsp;\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img src=\"https://oneway.cab/img/icons/24_1.png\" alt=\"24x7 Helpline\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>24×7 Helpline</strong>Available to help you at any moment: 08000247247\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-49\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/24_1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>No Extra KMs Charge</strong>We do not charge based on KMs. There is no extra KMs Fare applicable. Get Peace of Mind, so that driver doesn’t overcharge you by taking a detour.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-50\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>Assured Cab</strong>If you have Booking Confirmation, rest assured you will get cab.\r\n\r\n</div>\r\n<div class=\"col-md-3 main_center\">\r\n\r\n<img class=\"alignnone size-full wp-image-53\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/Assured_1-1.png\" alt=\"\" width=\"250\" height=\"250\" />\r\n<div class=\"clearfix\"></div>\r\n<strong>GPS Enabled</strong>Each Cab is GPS Enabled. Now Track Cab as they arrive to pick you up.\r\n\r\n</div>\r\n<div class=\"clearfix\"></div>\r\n</div>\r\n<p class=\"details\">We also provide Local Car Rental Hourly Packages and Outstation Cabs.</p>\r\n<strong> </strong>\r\n<div class=\"col-md-12\">\r\n<div class=\"col-md-3\"></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/redirect.php?url=android\" target=\"blank\"><img class=\"alignnone size-full wp-image-54\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/google_play_store.png\" alt=\"\" width=\"242\" height=\"72\" /></a></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/redirect.php?url=iphone\" target=\"blank\"><img class=\"alignnone size-full wp-image-55\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/apple_ios_store.png\" alt=\"\" width=\"241\" height=\"72\" /></a></div>\r\n<div class=\"col-md-2\"><a href=\"https://oneway.cab/\"><img class=\"alignnone size-full wp-image-56\" src=\"http://localhost/cab_display/wp-content/uploads/2018/09/web.png\" alt=\"\" width=\"242\" height=\"72\" /></a></div>\r\n</div>', 'Services', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-09-17 16:52:50', '2018-09-17 16:52:50', '', 45, 'http://localhost/cab_display/45-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-09-17 17:24:00', '2018-09-17 17:24:00', '<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>7 days free Trial</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check cross\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check cross\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP TRAIL</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list active\">\r\n\r\n<span class=\"saleon\">TOP SALE</span>\r\n<h3>STANDARD\r\n$110 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>PREMIUM\r\n$150 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>', 'Pricing', '', 'publish', 'open', 'open', '', 'pricing', '', '', '2018-09-19 16:39:20', '2018-09-19 16:39:20', '', 0, 'http://localhost/cab_display/?p=59', 0, 'post', '', 0),
(60, 1, '2018-09-17 17:24:00', '2018-09-17 17:24:00', '<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>BASIC\r\n$80 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check cross\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check cross\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button></div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list active\"><span class=\"saleon\">TOP SALE</span>\r\n<h3>STANDARD\r\n$110 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button></div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>PREMIUM\r\n$150 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button></div>\r\n</div>', 'Pricing', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-09-17 17:24:00', '2018-09-17 17:24:00', '', 59, 'http://localhost/cab_display/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-09-17 17:24:12', '2018-09-17 17:24:12', '[smartslider3 slider=2]\r\n[ic_add_posts ids=\'32,45,59\'  orderby=\'id\' ]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-17 17:24:12', '2018-09-17 17:24:12', '', 2, 'http://localhost/cab_display/2-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(62, 1, '2018-09-17 17:25:22', '2018-09-17 17:25:22', '<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>BASIC\r\n$80 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check cross\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check cross\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list active\">\r\n\r\n<span class=\"saleon\">TOP SALE</span>\r\n<h3>STANDARD\r\n$110 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>PREMIUM\r\n$150 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>', 'Pricing', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-09-17 17:25:22', '2018-09-17 17:25:22', '', 59, 'http://localhost/cab_display/59-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-09-17 17:27:42', '2018-09-17 17:27:42', '\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>BASIC\r\n$80 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check cross\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check cross\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list active\">\r\n\r\n<span class=\"saleon\">TOP SALE</span>\r\n<h3>STANDARD\r\n$110 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>PREMIUM\r\n$150 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>', 'Pricing', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-09-17 17:27:42', '2018-09-17 17:27:42', '', 59, 'http://localhost/cab_display/59-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-09-17 17:27:18', '2018-09-17 17:27:18', '<div class=\"test-overly\"></div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>BASIC\r\n$80 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check cross\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check cross\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list active\">\r\n\r\n<span class=\"saleon\">TOP SALE</span>\r\n<h3>STANDARD\r\n$110 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>PREMIUM\r\n$150 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>', 'Pricing', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-09-17 17:27:18', '2018-09-17 17:27:18', '', 59, 'http://localhost/cab_display/59-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-09-18 16:44:48', '2018-09-18 16:44:48', '', 'taxibg', 'Taxi Cab  Auto Repair Cars and Automotive Vector Icon Background', 'inherit', 'open', 'closed', '', 'taxibg', '', '', '2018-09-18 16:44:48', '2018-09-18 16:44:48', '', 59, 'http://localhost/cab_display/wp-content/uploads/2018/09/taxibg.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-09-18 16:53:42', '2018-09-18 16:53:42', '', 'cab2', '', 'inherit', 'open', 'closed', '', 'cab2-2', '', '', '2018-09-18 16:53:42', '2018-09-18 16:53:42', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/cab2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-09-18 16:53:43', '2018-09-18 16:53:43', '', 'cab3', '', 'inherit', 'open', 'closed', '', 'cab3-2', '', '', '2018-09-18 16:53:43', '2018-09-18 16:53:43', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/cab3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-09-18 16:53:44', '2018-09-18 16:53:44', '', 'cabnew', 'Yellow taxi cab crossing Brooklyn Bridge with Manhattan skyline in background.', 'inherit', 'open', 'closed', '', 'cabnew', '', '', '2018-09-18 16:53:44', '2018-09-18 16:53:44', '', 0, 'http://localhost/cab_display/wp-content/uploads/2018/09/cabnew.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-09-19 10:03:04', '2018-09-19 10:03:04', '<div class=\"row\"><div class=\"col-md-2\">&nbsp;</div>\r\n<div class=\"col-md-10\">\r\n<label> Your Name (required)\r\n    [text* your-name] </label>\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n<div class=\"row\"><div class=\"col-md-12 col-sm-12 col-xs-12\">\r\n<label> Your Message\r\n    [textarea your-message] </label></div></div>\r\n\r\n[submit \"Send\"]\r\n</div></div>\n1\nCab Booking \"[your-subject]\"\n[your-name] <anand.webdeveloper@gmail.com>\nanand.webdeveloper@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Cab Booking (http://localhost/cab_display)\nReply-To: [your-email]\n\n\n\n\nCab Booking \"[your-subject]\"\nCab Booking <anand.webdeveloper@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Cab Booking (http://localhost/cab_display)\nReply-To: anand.webdeveloper@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-19 11:18:25', '2018-09-19 11:18:25', '', 0, 'http://localhost/cab_display/?post_type=wpcf7_contact_form&#038;p=69', 0, 'wpcf7_contact_form', '', 0),
(73, 1, '2018-09-19 10:06:29', '2018-09-19 10:06:29', '[smartslider3 slider=2]\r\n[ic_add_posts ids=\'32,45,59,71\'  orderby=\'id\' ]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-19 10:06:29', '2018-09-19 10:06:29', '', 2, 'http://localhost/cab_display/2-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-09-19 10:04:23', '2018-09-19 10:04:23', '[smartslider3 slider=2]\r\n[ic_add_posts ids=\'32,45,59\'  orderby=\'id\' ]\r\n\r\n[contact-form-7 id=\"69\" title=\"Contact form 1\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-19 10:04:23', '2018-09-19 10:04:23', '', 2, 'http://localhost/cab_display/2-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-09-19 10:06:01', '2018-09-19 10:06:01', '[contact-form-7 id=\"69\" title=\"Contact form 1\"]', 'Contact us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2018-09-19 10:06:01', '2018-09-19 10:06:01', '', 0, 'http://localhost/cab_display/?p=71', 0, 'post', '', 0),
(72, 1, '2018-09-19 10:06:01', '2018-09-19 10:06:01', '[contact-form-7 id=\"69\" title=\"Contact form 1\"]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-09-19 10:06:01', '2018-09-19 10:06:01', '', 71, 'http://localhost/cab_display/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-09-19 11:28:33', '2018-09-19 11:28:33', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-19 16:35:31', '2018-09-19 16:35:31', '', 0, 'http://localhost/cab_display/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2018-09-19 11:28:33', '2018-09-19 11:28:33', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-09-19 16:35:31', '2018-09-19 16:35:31', '', 0, 'http://localhost/cab_display/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2018-09-19 11:28:33', '2018-09-19 11:28:33', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-09-19 16:35:31', '2018-09-19 16:35:31', '', 0, 'http://localhost/cab_display/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2018-09-19 11:28:33', '2018-09-19 11:28:33', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2018-09-19 16:35:31', '2018-09-19 16:35:31', '', 0, 'http://localhost/cab_display/?p=77', 4, 'nav_menu_item', '', 0),
(78, 1, '2018-09-19 11:28:33', '2018-09-19 11:28:33', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-09-19 16:35:31', '2018-09-19 16:35:31', '', 0, 'http://localhost/cab_display/?p=78', 5, 'nav_menu_item', '', 0),
(80, 1, '2018-09-19 15:30:04', '2018-09-19 15:30:04', '', 'page-scroll', '', 'publish', 'closed', 'closed', '', 'page-scroll', '', '', '2018-09-19 15:30:04', '2018-09-19 15:30:04', '', 0, 'http://localhost/cab_display/?post_type=cmc_classes&#038;p=80', 0, 'cmc_classes', '', 0),
(81, 1, '2018-09-19 16:39:20', '2018-09-19 16:39:20', '<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>7 days free Trial</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check cross\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check cross\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP TRAIL</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list active\">\r\n\r\n<span class=\"saleon\">TOP SALE</span>\r\n<h3>STANDARD\r\n$110 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check cross\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check cross\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12\">\r\n<div class=\"pri_table_list\">\r\n<h3>PREMIUM\r\n$150 / MONTH</h3>\r\n<ol>\r\n 	<li class=\"check\">Online system</li>\r\n 	<li class=\"check\">Full access</li>\r\n 	<li class=\"check\">Free apps</li>\r\n 	<li class=\"check\">Multiple slider</li>\r\n 	<li class=\"check\">Free domin</li>\r\n 	<li class=\"check\">Support unlimited</li>\r\n 	<li class=\"check\">Payment online</li>\r\n 	<li class=\"check\">Cash back</li>\r\n</ol>\r\n<button>SIGN UP NOW</button>\r\n\r\n</div>\r\n</div>', 'Pricing', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-09-19 16:39:20', '2018-09-19 16:39:20', '', 59, 'http://localhost/cab_display/59-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-11-01 17:18:51', '2018-11-01 17:18:51', 'This text may be overridden by the plugin. You shouldn\'t edit it.', 'company_signup', '', 'publish', 'closed', 'closed', '', 'company_signup', '', '', '2018-11-01 17:18:51', '2018-11-01 17:18:51', '', 0, 'http://localhost/cab_display/company_signup/', 0, 'page', '', 0),
(89, 1, '2018-11-22 00:06:14', '2018-11-22 00:06:14', 'This text may be overridden by the plugin. You shouldn\'t edit it.', 'cabbooking', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-11-22 00:06:14', '2018-11-22 00:06:14', '', 84, 'http://localhost/cab_display/84-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'topmenu', 'topmenu', 0),
(3, 'post-format-aside', 'post-format-aside', 0),
(4, 'post-format-image', 'post-format-image', 0),
(5, 'about-area area-padding', 'about-area-area-padding', 0),
(6, 'about-area', 'about-area', 0),
(7, 'wellcome-area', 'wellcome-area', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(32, 1, 0),
(32, 3, 0),
(1, 4, 0),
(45, 1, 0),
(45, 3, 0),
(32, 5, 0),
(59, 1, 0),
(71, 3, 0),
(59, 4, 0),
(59, 7, 0),
(71, 1, 0),
(74, 2, 0),
(75, 2, 0),
(76, 2, 0),
(77, 2, 0),
(78, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'post_format', '', 0, 3),
(4, 4, 'post_format', '', 0, 2),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 0),
(7, 7, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(39, 1, 'session_tokens', 'a:1:{s:64:\"7605d926a6c6d9f7a92573733797e0395478ce04ffec987fc80acb831d988be8\";a:4:{s:10:\"expiration\";i:1547324805;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1547152005;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '91'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&advImgDetails=show&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1537289539'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:9:\"authordiv\";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 2, 'nickname', 'Anand P R'),
(26, 2, 'first_name', ''),
(27, 2, 'last_name', ''),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'syntax_highlighting', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'wp_capabilities', 'a:1:{s:12:\"companyadmin\";b:1;}'),
(37, 2, 'wp_user_level', '0'),
(38, 2, 'session_tokens', 'a:1:{s:64:\"d838fd972196abe7ceec8765abf5e5d55c13e9000eaf3811c2b0c584db4ec503\";a:4:{s:10:\"expiration\";i:1550166823;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36\";s:5:\"login\";i:1549994023;}}'),
(40, 3, 'nickname', 'Anu'),
(41, 3, 'first_name', ''),
(42, 3, 'last_name', ''),
(43, 3, 'description', ''),
(44, 3, 'rich_editing', 'true'),
(45, 3, 'syntax_highlighting', 'true'),
(46, 3, 'comment_shortcuts', 'false'),
(47, 3, 'admin_color', 'fresh'),
(48, 3, 'use_ssl', '0'),
(49, 3, 'show_admin_bar_front', 'true'),
(50, 3, 'locale', ''),
(51, 3, 'wp_capabilities', 'a:1:{s:10:\"taxidriver\";b:1;}'),
(52, 3, 'wp_user_level', '0'),
(53, 4, 'nickname', 'Anu'),
(54, 4, 'first_name', ''),
(55, 4, 'last_name', ''),
(56, 4, 'description', ''),
(57, 4, 'rich_editing', 'true'),
(58, 4, 'syntax_highlighting', 'true'),
(59, 4, 'comment_shortcuts', 'false'),
(60, 4, 'admin_color', 'fresh'),
(61, 4, 'use_ssl', '0'),
(62, 4, 'show_admin_bar_front', 'true'),
(63, 4, 'locale', ''),
(64, 4, 'wp_capabilities', 'a:1:{s:10:\"taxidriver\";b:1;}'),
(65, 4, 'wp_user_level', '0'),
(66, 5, 'nickname', 'Anu'),
(67, 5, 'first_name', ''),
(68, 5, 'last_name', ''),
(69, 5, 'description', ''),
(70, 5, 'rich_editing', 'true'),
(71, 5, 'syntax_highlighting', 'true'),
(72, 5, 'comment_shortcuts', 'false'),
(73, 5, 'admin_color', 'fresh'),
(74, 5, 'use_ssl', '0'),
(75, 5, 'show_admin_bar_front', 'true'),
(76, 5, 'locale', ''),
(77, 5, 'wp_capabilities', 'a:1:{s:10:\"taxidriver\";b:1;}'),
(78, 5, 'wp_user_level', '0'),
(79, 6, 'nickname', 'Anu'),
(80, 6, 'first_name', ''),
(81, 6, 'last_name', ''),
(82, 6, 'description', ''),
(83, 6, 'rich_editing', 'true'),
(84, 6, 'syntax_highlighting', 'true'),
(85, 6, 'comment_shortcuts', 'false'),
(86, 6, 'admin_color', 'fresh'),
(87, 6, 'use_ssl', '0'),
(88, 6, 'show_admin_bar_front', 'true'),
(89, 6, 'locale', ''),
(90, 6, 'wp_capabilities', 'a:1:{s:10:\"taxidriver\";b:1;}'),
(91, 6, 'wp_user_level', '0'),
(92, 7, 'nickname', 'Anu'),
(93, 7, 'first_name', ''),
(94, 7, 'last_name', ''),
(95, 7, 'description', ''),
(96, 7, 'rich_editing', 'true'),
(97, 7, 'syntax_highlighting', 'true'),
(98, 7, 'comment_shortcuts', 'false'),
(99, 7, 'admin_color', 'fresh'),
(100, 7, 'use_ssl', '0'),
(101, 7, 'show_admin_bar_front', 'true'),
(102, 7, 'locale', ''),
(103, 7, 'wp_capabilities', 'a:1:{s:10:\"taxidriver\";b:1;}'),
(104, 7, 'wp_user_level', '0'),
(105, 8, 'nickname', 'sankaraneee@gmail.com'),
(106, 8, 'first_name', ''),
(107, 8, 'last_name', ''),
(108, 8, 'description', ''),
(109, 8, 'rich_editing', 'true'),
(110, 8, 'syntax_highlighting', 'true'),
(111, 8, 'comment_shortcuts', 'false'),
(112, 8, 'admin_color', 'fresh'),
(113, 8, 'use_ssl', '0'),
(114, 8, 'show_admin_bar_front', 'true'),
(115, 8, 'locale', ''),
(116, 8, 'wp_capabilities', 'a:0:{}'),
(117, 8, 'wp_user_level', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_extra` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `company_id` int(250) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `user_extra`, `company_id`) VALUES
(1, 'admin', '$P$B/sGP73Uf4JYhnt/ujWAtmzhWIvSl0/', 'admin', 'anand.webdeveloper@gmail.com', '', '2018-09-13 12:51:31', '', 0, 'admin', '', 0),
(2, 'anandpr.be@gmail.com', '$P$BLYqoGPu./0A2EmfnkRzOhKGlxdVhP0', 'anandpr-begmail-com', 'anandpr.be@gmail.com', '', '2018-11-08 17:08:39', '', 0, 'Anand P R', '', 0),
(7, 'anu@test.com', '$P$BEJafM3c8tcPe7qHQ1ImMa8/.C5dyh0', 'anutest-com', 'anu@test.com', '', '2018-11-29 09:46:05', '', 0, '', '', 0),
(8, 'sankaraneee@gmail.com', '$P$BmvlxS2chUdKYhcHzC/PVhJllK4tfG/', 'sankaraneeegmail-com', 'sankaraneee@gmail.com', '', '2019-01-07 20:32:49', '', 0, 'sankaraneee@gmail.com', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
