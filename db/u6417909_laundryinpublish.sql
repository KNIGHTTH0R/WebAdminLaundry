-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2018 at 06:44 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6417909_laundryinpublish`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) UNSIGNED NOT NULL,
  `sort` int(3) DEFAULT NULL,
  `section` int(2) DEFAULT NULL,
  `page` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoload` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `link` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `media_id`, `sort`, `section`, `page`, `autoload`, `link`) VALUES
(16, 105, 2, 1, 'home', 'yes', NULL),
(20, 109, 1, 1, 'home', 'yes', NULL),
(22, 111, 3, 1, 'home', 'yes', NULL),
(23, 112, 5, 1, 'home', 'yes', NULL),
(24, 113, 4, 1, 'home', 'yes', NULL),
(87, 199, 1, 2, 'home', 'no', NULL),
(88, 200, 2, 2, 'home', 'no', NULL),
(89, 201, 3, 2, 'home', 'no', NULL),
(90, 202, 4, 2, 'home', 'no', NULL),
(91, 207, 1, 2, 'home', 'yes', NULL),
(92, 208, 2, 2, 'home', 'yes', NULL),
(93, 209, 3, 2, 'home', 'yes', NULL),
(94, 210, 4, 2, 'home', 'yes', NULL),
(95, 211, 5, 2, 'home', 'yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'Contributor', 'Tes group');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `size` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir` text COLLATE utf8mb4_unicode_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `caption` mediumtext COLLATE utf8mb4_unicode_ci,
  `alt_text` mediumtext COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `temp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `user_id`, `name`, `size`, `type`, `dir`, `title`, `description`, `caption`, `alt_text`, `media_type`, `url`, `temp`, `created`, `modified`) VALUES
(9, 1, 'Logo-laundry.png', 148196, 'image/png', 'media/image/', NULL, NULL, NULL, NULL, 'image', NULL, NULL, '2017-12-09 09:16:17', '2017-12-09 09:16:17'),
(19, 1, 'DSC09345_1_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:08:42', '2017-12-14 11:08:42'),
(20, 1, 'DSC09345_2_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:10:48', '2017-12-14 11:10:48'),
(21, 1, 'DSC09345_2_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:11:21', '2017-12-14 11:11:21'),
(22, 1, 'DSC09345_3_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:12:26', '2017-12-14 11:12:26'),
(23, 1, 'DSC09345_4_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:13:09', '2017-12-14 11:13:09'),
(24, 1, 'DSC09345_5_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:21:23', '2017-12-14 11:21:23'),
(25, 1, 'DSC09345_6_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:23:33', '2017-12-14 11:23:33'),
(26, 1, 'DSC09345_7_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:23:54', '2017-12-14 11:23:54'),
(27, 1, 'DSC09345_8_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:25:31', '2017-12-14 11:25:31'),
(28, 1, 'DSC09345_9_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:27:50', '2017-12-14 11:27:50'),
(29, 1, 'DSC09345_10_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:28:52', '2017-12-14 11:28:52'),
(30, 1, 'DSC09345_10_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:29:06', '2017-12-14 11:29:06'),
(31, 1, 'DSC09345_10_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 11:29:45', '2017-12-14 11:29:45'),
(32, 1, 'animasi24.gif', 30849, 'image/gif', 'media/template/brand/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:08:16', '2017-12-14 13:08:16'),
(34, 1, 'images.jpg11.jpg', 6901, 'image/jpeg', 'media/template/brand/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:10:08', '2017-12-14 13:10:08'),
(35, 1, 'DSC09345_4_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:11:30', '2017-12-14 13:11:30'),
(36, 1, 'index.jpg6_1_i.jpg', 5282, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:12:06', '2017-12-14 13:12:06'),
(37, 1, 'DSC09345_3_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:12:49', '2017-12-14 13:12:49'),
(38, 1, 'DSC09345_3_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:13:20', '2017-12-14 13:13:20'),
(39, 1, 'DSC09345_3_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:13:41', '2017-12-14 13:13:41'),
(40, 1, 'animasi24.gif', 30849, 'image/gif', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:14:07', '2017-12-14 13:14:07'),
(41, 1, 'animasi24.gif', 30849, 'image/gif', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:15:29', '2017-12-14 13:15:29'),
(42, 1, 'DSC09345_2_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:15:57', '2017-12-14 13:15:57'),
(43, 1, 'DSC09345_3_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:16:39', '2017-12-14 13:16:39'),
(44, 1, 'okIMG_0578.jpg', 506500, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-14 13:18:28', '2017-12-14 13:18:28'),
(53, 8, 'DSC09345_4_i.JPG', 500841, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-15 21:46:23', '2017-12-15 21:46:23'),
(54, 8, 'okIMG_0590.jpg', 504138, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-15 21:46:42', '2017-12-15 21:46:42'),
(61, 8, 'tes3_1_i.jpg', 59152, 'image/jpeg', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-20 14:55:58', '2017-12-20 14:55:58'),
(62, 8, 'tes3_2_i.jpg', 59152, 'image/jpeg', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-20 14:57:56', '2017-12-20 14:57:56'),
(63, 8, 'tes3_3_i.jpg', 59152, 'image/jpeg', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-20 14:58:08', '2017-12-20 14:58:08'),
(76, 8, 'tes4_1_i.jpg', 32223, 'image/jpeg', 'media/partner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-24 00:13:16', '2017-12-24 00:13:16'),
(77, 8, 'tes3_1_i.jpg', 59152, 'image/jpeg', 'media/partner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-24 00:20:52', '2017-12-24 00:20:52'),
(78, 8, 'tes4_2_i.jpg', 32223, 'image/jpeg', 'media/partner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-24 00:20:52', '2017-12-24 00:20:52'),
(79, 8, 'tes3_2_i.jpg', 59152, 'image/jpeg', 'media/partner/', '', 'http://localhost/onepage/media/partner/tes3_2_i.jpg', '', 'image', 'image', 'http://localhost/onepage/media/partner/tes3_2_i.jpg', NULL, '2017-12-24 00:21:04', '2017-12-24 00:25:51'),
(80, 10, 'poster.jpeg', 663309, 'image/jpeg', 'media/event/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-24 08:42:21', '2017-12-24 08:42:21'),
(81, 10, 'poster.jpeg', 663309, 'image/jpeg', 'media/page/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-24 08:47:01', '2017-12-24 08:47:01'),
(82, 10, 'poster.jpeg', 663309, 'image/jpeg', 'media/article/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-24 08:47:54', '2017-12-24 08:47:54'),
(83, 10, 'bootstrap.jpg', 69707, 'image/jpeg', 'media/event/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-24 09:20:21', '2017-12-24 09:20:21'),
(84, 10, 'poster_1_i.jpeg', 663309, 'image/jpeg', 'media/event/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2017-12-24 09:21:12', '2017-12-24 09:21:12'),
(86, 1, 'hotel-laundry-service-500x500.jpg', 22506, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:20:12', '2018-02-18 09:20:12'),
(87, 1, 'page_image.jpg', 68831, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:20:12', '2018-02-18 09:20:12'),
(88, 1, 'laundry.jpg', 62961, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:20:13', '2018-02-18 09:20:13'),
(89, 1, 'hotel-laundry-service-500x500_1_i.jpg', 22506, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:21:08', '2018-02-18 09:21:08'),
(90, 1, 'hotel-laundry-service-500x500_2_i.jpg', 22506, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:21:08', '2018-02-18 09:21:08'),
(91, 1, 'page_image_1_i.jpg', 68831, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:21:30', '2018-02-18 09:21:30'),
(92, 1, 'page_image_2_i.jpg', 68831, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:21:31', '2018-02-18 09:21:31'),
(105, 1, '1.jpg', 210611, 'image/jpeg', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:42:36', '2018-02-18 09:42:36'),
(109, 1, '2_1_i.jpg', 220993, 'image/jpeg', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:46:58', '2018-02-18 09:46:58'),
(111, 1, '4_1_i.jpg', 272757, 'image/jpeg', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:47:01', '2018-02-18 09:47:01'),
(112, 1, '3_1_i.jpg', 211844, 'image/jpeg', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:47:01', '2018-02-18 09:47:01'),
(113, 1, '5.jpg', 207554, 'image/jpeg', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 09:47:01', '2018-02-18 09:47:01'),
(126, 1, 'WhatsAppImage2017-11-24at13.18.14.png', 148196, 'image/png', 'media/template/brand/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 11:19:40', '2018-02-18 11:19:40'),
(127, 1, 'WhatsAppImage2017-11-24at13.18.14_1_i.png', 148196, 'image/png', 'media/template/brand/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-18 11:19:42', '2018-02-18 11:19:42'),
(132, 1, 'new-clothes-wash-before-wear-today-stock-tease-150519_3663d4c3d88b718f39fb75cc97a8e692.jpg', 122101, 'image/jpeg', 'media/article/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-02-19 08:45:36', '2018-02-19 08:45:36'),
(141, 1, 'business-3167295_1920.jpg', 288622, 'image/jpeg', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 08:26:18', '2018-03-03 08:26:18'),
(142, 1, 'laundry-saloon-567951_1920.jpg', 601672, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 08:31:19', '2018-03-03 08:31:19'),
(143, 1, 'laundry-saloon-567951_1920_1_i.jpg', 601672, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 08:31:22', '2018-03-03 08:31:22'),
(144, 1, 'laundry-413688_1920.jpg', 565694, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 08:57:47', '2018-03-03 08:57:47'),
(145, 1, 'laundry-413688_1920_1_i.jpg', 565694, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 08:57:50', '2018-03-03 08:57:50'),
(146, 1, '2.png', 96739, 'image/png', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 10:57:27', '2018-03-03 10:57:27'),
(147, 1, '1.png', 103300, 'image/png', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 10:57:27', '2018-03-03 10:57:27'),
(148, 1, '3.png', 104318, 'image/png', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 10:57:28', '2018-03-03 10:57:28'),
(149, 1, '5.png', 113235, 'image/png', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 10:57:28', '2018-03-03 10:57:28'),
(150, 1, '4.png', 163132, 'image/png', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 10:57:29', '2018-03-03 10:57:29'),
(151, 1, '6.png', 96225, 'image/png', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 10:57:29', '2018-03-03 10:57:29'),
(152, 1, 'login-1203603_1280.png', 766324, 'image/png', 'media/page/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 14:12:48', '2018-03-03 14:12:48'),
(153, 1, 'iron-1178062_1920.jpg', 324982, 'image/jpeg', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-03 15:55:09', '2018-03-03 15:55:09'),
(154, 1, 'LONDRI_IN22_FIXRUDI-iloveimg-compressed.jpg', 1120493, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-04 05:19:25', '2018-03-04 05:19:25'),
(155, 1, 'LONDRI_IN22_FIXRUDI-iloveimg-compressed_1_i.jpg', 1120493, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-04 05:19:33', '2018-03-04 05:19:33'),
(156, 1, 'keyboard-895556_1920.jpg', 249960, 'image/jpeg', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-04 09:28:04', '2018-03-04 09:28:04'),
(157, 1, 'keyboard-895556_1920_1_i.jpg', 249960, 'image/jpeg', 'media/image/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-04 09:28:06', '2018-03-04 09:28:06'),
(165, 1, 'fbcovercewek.jpg', 213806, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-06 16:24:27', '2018-03-06 16:24:27'),
(166, 1, 'fbcovercewek_1_i.jpg', 213806, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-06 16:24:29', '2018-03-06 16:24:29'),
(167, 1, 'LONDRI_IN22_FIXRUDI-iloveimg-compressed_2_i.jpg', 1120493, 'image/jpeg', 'media/template/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-06 16:26:16', '2018-03-06 16:26:16'),
(199, 1, 'tablet1.png', 837846, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-07 09:08:28', '2018-03-07 09:08:28'),
(200, 1, 'tablet3.png', 768842, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-07 09:08:38', '2018-03-07 09:08:38'),
(201, 1, 'tablet4.png', 654481, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-07 09:08:41', '2018-03-07 09:08:41'),
(202, 1, 'tablet2.png', 646041, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-03-07 09:08:49', '2018-03-07 09:08:49'),
(203, 1, '4.png', 479329, 'image/png', 'media/article/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 17:34:26', '2018-07-31 17:34:26'),
(204, 1, '3.png', 290461, 'image/png', 'media/article/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 17:39:12', '2018-07-31 17:39:12'),
(205, 1, '2.png', 397428, 'image/png', 'media/article/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 17:41:36', '2018-07-31 17:41:36'),
(206, 1, '5.png', 521176, 'image/png', 'media/article/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 17:47:18', '2018-07-31 17:47:18'),
(207, 1, 'WEB1.png', 944281, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 20:09:24', '2018-07-31 20:09:24'),
(208, 1, 'WEB2.png', 298972, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 20:09:29', '2018-07-31 20:09:29'),
(209, 1, 'WEB3.png', 214074, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 20:09:33', '2018-07-31 20:09:33'),
(210, 1, 'WEB5.png', 398547, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 20:09:34', '2018-07-31 20:09:34'),
(211, 1, 'WEB4.png', 383496, 'image/png', 'media/template/banner/', NULL, NULL, NULL, 'image', 'image', NULL, NULL, '2018-07-31 20:09:36', '2018-07-31 20:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `media_tags`
--

CREATE TABLE `media_tags` (
  `media_id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int(11) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rel_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created` timestamp NULL DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `image`, `description`, `rel_url`, `post_type`, `publish`, `created`, `modified`) VALUES
(71, 1, 'Layanan', NULL, '<p><img alt=\"\" src=\"http://laundry-in.com/media/image/1.png\" style=\"height:383px; width:500px\" xss=\"removed\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://laundry-in.com/media/image/2.png\" style=\"height:379px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://laundry-in.com/media/image/3.png\" style=\"height:335px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://laundry-in.com/media/image/4.png\" style=\"height:280px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://laundry-in.com/media/image/5.png\" style=\"height:327px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://laundry-in.com/media/image/6.png\" style=\"height:457px; width:500px\" xss=\"removed\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'layanan', 'page', 'yes', '2017-12-14 10:39:22', '2018-03-03 13:50:28'),
(72, 1, 'Syarat dan ketentuan', 141, '<p><strong>Dalam Syarat dan Ketentuan ini yang dimaksud dengan:</strong></p>\r\n\r\n<ol>\r\n <li><strong>Kami</strong> adalah aplikasi perangkat lunak Laundry-in yang telah kami kembangkan yang berfungsi sebagai sarana untuk menemukan pelayanan yang disediakan oleh pihak ketiga.</li>\r\n <li><strong>Item</strong> adalah pakaian pelanggan yang sehubungan dengan pemesanan.</li>\r\n <li><strong>Pemesanan</strong> adalah pelanggan yang memesan layanan Laundry melalui aplikasi perangkat lunak Laundry-in.</li>\r\n <li><strong>Pelanggan</strong> adalah Anda yang memesan pelayanan.</li>\r\n <li><strong>Pelayanan</strong> adalah layanan Laundry yang diambil dan dikirim ke alamat pelanggan.</li>\r\n <li><strong>Penyedia Layanan </strong>adalah pihak ketiga yang memiliki kontrak dengan kami guna untuk membantu kami dalam memberikan layanan Laundry.</li>\r\n <li><strong>Informasi Pribadi</strong> adalah identifikasi informasi pribadi seseorang yang dapat diisi melalui aplikasi Laundry-in seperti halnya nama, alamat, tanggal lahir, nomor telepon, alamat email dan/atau sejenisnya, dan informasi lainnya yang dapat digunakan untuk mengidentifikasi seseorang yang menggunakan aplikasi Laundry-in.</li>\r\n <li><strong>Situs web </strong>adalah situs web kami yaitu www.laundry-in.com</li>\r\n</ol>\r\n\r\n<p><strong>Kontrak Kami Dengan Pelanggan</strong></p>\r\n\r\n<ol>\r\n <li>Pelanggan wajib memberikan informasi secara lengkap dan benar dalam hal pengambilan pakaian.</li>\r\n <li>Kurir kami akan menginformasikan rincian barang anda termasuk jumlah berat, potongan, dan harga. Selanjutnya, jika anda telah menyetujui, maka order anda akan dibawa oleh kurir kami.</li>\r\n <li>Perhitungan jumlah barang dan jenis barang dilakukan ketika kurir berada ditempat. Apabila terdapat perselisihan dalam menghitung pakaian atau barang-barang yang dalam tanggung jawab Laundry-in, maka jumlah perhitungan seperti tercantum pada nota bukti penyerahan kami adalah yang benar.</li>\r\n <li>Apabila terdapat keluhan pelanggan mengenai kerusakan atau kehilangan hanya dapat diterima dan diproses pada saat pengiriman cucian dan kurir masih berada di tempat pelanggan, selepas kurir meninggalkan tempat, maka pihak Laundry-in tidak melayani keluhan mengenai kerusakan atau kehilangan.</li>\r\n <li>Cucian yang tidak diambil setelah kami mengirimkan barang sesuai jadwal yang ditentukan tetapi konsumen tidak mau mengambil sebab lainnya dalam waktu 14 hari sejak tanggal penyerahan kepada kami, tidak akan menjadi tanggung jawab kami jika terjadi kehilangan atau kerusakan.</li>\r\n <li>Kami berhak mengembalikan pakaian Anda jika tidak bisa dimasukan dalam daftar laundry kiloan seperti pakaian berbahan sutra, kasmir, wool, bulu, beludru, pakaian berbahan dengan perawatan khusus lainnya, pakaian dengan aksesoris yang mudah copot/rusak, karpet, bed cover, dan boneka.</li>\r\n <li>Segala risiko yang timbul karena keadaan memaksa (force majeure) seperti: bencana alam, kebakaran, huru-hara dan lain sebagainya tidak menjadi tanggung jawab kami.</li>\r\n</ol>\r\n\r\n<p><strong>Jadwal Pengambilan / Pengiriman</strong></p>\r\n\r\n<p>Jadwal pengambilan dan pengiriman sesuai dengan yang anda tetapkan saat order Laundry-in dan akan dikonfirmasi ulang oleh kurir Laundry-in.</p>\r\n\r\n<p><strong>Pembatalan Pesanan</strong></p>\r\n\r\n<p>Apabila anda membatalkan pesanan ketika kami sudah menugaskan pengambilan pakaian atau dalam waktu 30 menit pengiriman anda, maka anda akan dikenakan biaya pembatalan dengan jumlah yang sesuai dengan biaya order.</p>\r\n\r\n<p><strong>Tatanan Pencucian</strong></p>\r\n\r\n<ol>\r\n <li>Pengecekan pakaian.\r\n <ol>\r\n  <li>Harap pastikan untuk benar-benar memeriksa semua pakaian apabila terdapat barang-barang berharga dan barang-barang yang dapat membahayakan proses pencucian. Karena kami tidak bertanggung jawab untuk segala bentuk kehilangan dan kerusakan.</li>\r\n  <li>Harap pastikan pakaian yang akan dicuci tidak terdapat noda darah, noda yang sulit dihilangkan/permanen, Karena kami hanya membersihkan bukan menghilangkan noda tersebut.</li>\r\n  <li>Pemisahan Warna Pakaian. Kami akan memisahkan pakaian yang berwarna putih dan gelap, pada proses ini kami akan sangat berhati-hati dan tidak akan bertanggung jawab jika ada kelunturan selama proses pencucian.</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<p><strong>Tanggung Jawab Kami Terhadap Anda</strong></p>\r\n\r\n<ol>\r\n <li>Kehilangan Pakaian\r\n <ol>\r\n  <li>Pengecekkan harus dilakukan saat kurir mengantar cucian ke tempat pelanggan dan apabila terjadi kehilangan pakaian, pihak Laundry-in akan berusaha untuk mencari dalam masa waktu 7x24jam atau melakukan penggantian sebanyak berat pesanan anda.</li>\r\n  <li>Kami tidak bertanggung jawab atas pengaduan kehilangan pakaian setelah 1×24 jam dari tanggal pengambilan.</li>\r\n </ol>\r\n </li>\r\n <li>Penanggulangan Kerusakan Pakaian\r\n <ol>\r\n  <li>Kami tidak bertanggung jawab atas pengaduan kerusakan pakaian yang sudah terjadi sebelum proses pencucian.</li>\r\n  <li>Pengecekkan harus dilakukan saat kurir mengantar cucian ke tempat pelanggan dan apabila terjadi kerusakan pakaian, pihak Laundry-in akan berusaha untuk mencari solusi dalam masa waktu 7x24jam atau melakukan pengganti sebanyak berat pesanan anda.</li>\r\n  <li>Kerusakan pakaian yang meliputi melar dan mengkerut tidak menjadi tanggung jawab kami.</li>\r\n  <li>Pengaduan kerusakan pakaian yang menjadi tanggung jawab kami adalah kerusakan pakaian akibat proses pencucian, pengeringan, dan penyetrikaan.</li>\r\n  <li>Pakaian berbahan tipis atau berharga tidak disarankan dimasukkan ke dalam laundry kiloan, karena kami hanya akan sebesar berat pesanan anda.</li>\r\n  <li>Pakaian berbahan tipis dan dengan perawatan khusus (contoh: sutra, kasmir, wool, bulu, beludru, pakaian halus lainnya) atau dianggap berharga disarankan dimasukkan ke dalam laundry satuan.</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<p><strong>Harga dan Pembayaran</strong></p>\r\n\r\n<ol>\r\n <li>Harga pemesanan minimal terdapat pada layanan Laundry-in dan dapat berubah dari waktu ke waktu.</li>\r\n <li>Anda memahami bahwa penggunaan layanan mengharuskan anda untuk melakukan pembayaran terhadap pelayanan yang anda terima. Seluruh pembayaran pada Laundry-in menggunakan uang tunai saat kurir menjemput pakaian kotor anda.</li>\r\n <li>Biaya akan termasuk pajak yang mana berdasarkan oleh hukum. Biaya yang dibayarkan oleh anda bersifat final dan tidak dapat dikembalikan, kecuali jika tidak ditentukan oleh Laundry-in. Setiap permintaan untuk biaya yang lebih rendah atau ketidaksetujuan dengan biaya sebaiknya ditujukan kepada Laundry-in dengan menghubungi kontak Laundry-in.</li>\r\n <li>Laundry-in dari waktu ke waktu dapat memberikan pengguna tertentu dengan menawarkan promosi dan diskon yang dapat berdampak pada biaya yang berbeda untuk layanan yang sama atau sejenisnya, dan anda setuju dengan promosi dan diskon tersebut.</li>\r\n</ol>\r\n\r\n<p><strong>Keadaan Memaksa (Force Majeure)</strong></p>\r\n\r\n<ol>\r\n <li>Kami tidak akan bertanggung jawab untuk setiap kegagalan untuk melakukan pelayanan atau keterlambatan dalam kinerja yang mana disebabkan oleh Keadaan Memaksa (Force Majeure).</li>\r\n <li>Keadaan Memaksa adalah kejadian atau keadaan yang terjadi diluar kuasa dari pihak Laundry-in serta para pihak yang bersangkutan.</li>\r\n <li>Keadaan Memaksa seperti: bencana alam, kebakaran, huru-hara, perang, kerusuhan, serangan teroris, ancaman serangan teroris, dan hal lain yang sejenis.</li>\r\n</ol>\r\n\r\n<p> </p>', 'syarat-dan-ketentuan', 'page', 'yes', '2017-12-14 10:39:44', '2018-03-03 08:26:22'),
(82, 10, 'Tes event', 80, '', 'tes-event', 'event', 'yes', '2017-12-24 08:45:16', '2017-12-24 08:45:16'),
(85, 1, 'Cara Merawat Pakaian', 132, '<p>Setidaknya setiap orang pasti punya selembar pakaian, bahkan orang-orangan sawah. Pakaian menjadi barang pokok dan mendasar dalam kehidupan manusia. Aktivitas yang kita jalani kadang membutuhkan jenis dan bahan pakaian yang berdeda-beda. Oleh karenanya tentu koleksi pakaian kita telah banyak tertumpuk di lemari.</p>\r\n\r\n<p>Ada dua tipe manusia di dunia ini: pertama, yang selalu setiap pada beberapa pakaian dan kedua, yang hobi gonta-ganti baju. Entah kita tipe pertama atau kedua, saya yakin tidak ada di antara kita yang rela bajinya terlihat kusam bahkan rusak termakan usia.</p>\r\n\r\n<p>Walaupun kita kerap membeli dan menggunakan pakaian setiap hari, sebagian orang banyak yang belum mengerti bagaimana cara merawat pakaian yang baik dan benar. Supaya nanti pakaian menjadi awet dan tahan lama, tentu saja ada cara-cara khusus untuk merawat pakaian. Jika perhatian dengan cara merawat pakaian sendiri, bukan hal yang mustahil kita akan terlihat mengenakan baju baru setiap hari.</p>\r\n\r\n<p>Menjaga pakaian tetap awet butuh perhatian dan keterampilan khusus dari pemiliknya. Namun jangan khawatir, ini tidak sesulit yang Anda bayangkan. Tips ini mudah dipelajari bagi Anda yang benar-benar ingin memiliki baju pakaian yang terawat.</p>\r\n\r\n<p>Ada hal yang perlu menjadi fokus pembahasan dalam menjagak baju pakaian agar awet adalah dengan mengetahui lebih jauh apa jenis kain dari pakaian tersebut. Begitu banyak jenis atau bahan pakaian yang tersedia di pasaran. Selanjutnya, kita harus perlu membaca panduan pada label baju bagaimana cara terbaik metode pencucian serta cara menyetrikanya.</p>\r\n\r\n<p>Berikut ada 23 cara yang bisa Anda ikuti agar bisa merawat baju pakaian lebih tahan lama dan terlihat seperti baju baru<br>\r\n<br>\r\n1. Setiap pakaian biasanya ada <strong>perbedaan teknik mencuci</strong>. Apakah pakaian tersebut boleh dicuci menggunakan air biasa, air hangat atau tanpa air yang bisa diartikan Anda wajib menyerahkannya kepada jasa pencucian dry cleaning, seperti Laundry-in.</p>\r\n\r\n<hr>\r\n<p>2. Pada saat mencuci biasakan untuk <strong>memisahkan pakaian putih</strong> dengan yang berwarna. Dahulukan yang berwarna putih, terang dan kemudian gelap.<br>\r\n<br>\r\n3. Pisahkan pakaian yang punya<strong> kadar kekotoran yang berbeda </strong>agar tidak mempengaruhi pakaian yang lainnya, mungkin pakaian dengan tingkat kekotoran yang lebih rendah.<br>\r\n<br>\r\n4. Perhatikan pakaian berjenis <strong>kain yang dilarang menggunakan mesin cuci</strong>. Ini bermanfaat untuk menghindari kerusakan pada bahan pakaian.<br>\r\n<br>\r\n5. <strong>Pilih deterjen atau sabun khusus mencuci</strong> yang akan dipakai dengan cermat. Apakah aman untuk kulit Anda atau tidak.<br>\r\n<br>\r\n6. Setelah pencucian, <strong>pakailah cairan pelembut</strong> agar baju yang Anda cuci menjadi wangi dan terasa lembut.<br>\r\n<br>\r\n7. Jemurlah baju Anda meng<strong>gunakan gantungan baju</strong> atau hanger agar bentuk pakaian tetap baik.<br>\r\n<br>\r\n8. Jika pakaian Anda berjenis bahan dari <strong>kaos, tidak disarankan menggunakan hanger</strong> karena dapat membuat melar baju kaos Anda, khususnya di daerah leher kaos.<br>\r\n<br>\r\n9. <strong>Baliklah baju Anda ketika hendak menjemur</strong>. Bagian dalam yang dibalik keluar. Tujuannya adalah agar mengurangi cepat pudarnya warna pada baju pakaian pada saat disinari matahari.<br>\r\n<br>\r\n10. Menyetrika adalah saat yang penting juga agar pakaian licin dan rapi. Perhatikan <strong>sebelum Anda menyetrika pakaian. Pastikan bajunya sudah kering 100%.</strong><br>\r\n<br>\r\n11. Anda juga bisa <strong>menyemprotkan cairan pelicin</strong> pada baju pakaian sebelum menyetrika dengan syarat itu tidak merusak pakaian.<br>\r\n<br>\r\n12. <strong>Perhatikan suhu setrika</strong> agar tidak merusak pakaian.<br>\r\n<br>\r\n13. Setelah selesai disetrika, baju Anda yang sudah rapi dan harum tersebut bisa Anda <strong>simpan di lemari pakaian dengan kondisi tertutup rapat</strong> agar tidak terkena debu dan kotoran.<br>\r\n<br>\r\n14. Perhatikan isi lemari pakaian Anda. <strong>Susunlah pakaian Anda disana dengan rapi</strong>. Gantunglah baju Anda yang memang cocok untuk digantung. Begitu juga sebaliknya, ada sebagian baju Anda yang hanya cocok untuk dilipat saja.<br>\r\n<br>\r\n15. Apabila Anda punya <strong>baju yang berharga mahal sebaiknya jangan terlalu sering dipakai</strong>, apalagi untuk kegiatan harian.<br>\r\n<br>\r\n16. Gunakan pakaian yang khusus digunakan untuk aktivitas luar rumah dan di dalam rumah. <strong>Pandailah memilih jenis pakaian berdasarkan kebutuhan aktivitas Anda.</strong><br>\r\n<br>\r\n17. Pakaian hendaknya <strong>tidak terlalu sering dicuci</strong> agar tidak cepat merusak bahan baju dan memudarkan warnanya. Tunda dulu mencuci pakaian jika kondisinya masih tidak terlalu kotor atau berbau. Apalagi bahan pakaian dengan tingkat ketebalan yang tinggi misalnya jaket dan jeans. Jika Anda belum puas dengan teknis tersebut, cobalah mencuci dengan seperlunya saja misal deterjen yang lebih sedikit atau bahkan tanpa deterjen dan cukup dengan pelembut pakaian saja.<br>\r\n<br>\r\n18. Jemurlah pakaian dalam waktu sekitar 2 sampai 3 jam. <strong>Usahakan tidak terkena sinar matahari langsung</strong> atau cukup diangin-anginkan tergantung tingkat ketebalan pakaian.<br>\r\n<br>\r\n19. <strong>Gunakanlah pemutih pakaian yang bersifat ramah terhadap lingkungan</strong>. Pemutih yang banyak dijual di pasaran bersifat racun untuk kita manusia serta lingkungan. Dampak buruk untuk pakaian Anda adalah menipisnya kain pakaian bahkan bolong. Apakah Anda tahu, ada alternatif lain yang bisa menjadi pemutih pakaian. Rendamlah baju Anda pada air panas yang dicampurkan dengan baking soda.<br>\r\n<br>\r\n20. Jika Anda memakai mesin cuci, <strong>tutup resleting dengan rapat</strong> celana atau jaket supaya tidak terjadi kerusakan pada saat dicuci di mesin cuci.<br>\r\n<br>\r\n21. <strong>Pengeringan baju dengan panas matahari akan lebih aman</strong> jika dibandingkan Anda menggunakan alat pengering baju.<br>\r\n<br>\r\n22. <strong>Segera perbaiki apabila ada kerusakan-kerusakan kecil pada pakaian.</strong><br>\r\n<br>\r\n23. <strong>Waspada terhadap benda-benda di sekeliling Anda yang dapat merusak pakaian</strong>. Pakaian bisa menjadi rusak bisa saja terjadi karena benda tajam. Seperti baju yang tergores kayu, paku, kawat, atau benda kasar yang mengenai tubuh dan baju Anda. Cairan kimia juga dapat menyebabkan pakaian menjadi pudar warnanya seperti deodorant, parfum, dan bahkan hingga keringat Anda sendiri.<br>\r\n<br>\r\nMerawat pakaian butuh kejelian tinggi bukan? Jika Anda perlu bantuan merawat pakaian, khususnya dalam teknis pencucian, ingat selalu Laundry-in. Laundry-in, solusi praktis merawat pakaian Anda dengan pelayan optimal. Semoga bermanfaat.</p>', 'cara-merawat-pakaian', 'article', 'yes', '2018-02-19 10:21:45', '2018-03-03 11:30:18'),
(86, 1, 'Kebijakan dan Privasi', 157, '<p><strong>Bagaimana Kami Menggunakan Informasi Pribadi Anda </strong></p>\r\n\r\n<p><strong>Kami akan menggunakan informasi pribadi yang anda berikan kepada kami untuk:</strong></p>\r\n\r\n<ol>\r\n	<li>Menyediakan Layanan.</li>\r\n	<li>Memberitahu anda tentang produk atau layanan yang kami sediakan, kecuali jika anda menyatakan bahwa anda tidak ingin menerima komunikasi e-mail promosi .</li>\r\n</ol>\r\n\r\n<p>Segala syarat-syarat dan ketentuan ini telah dibaca dan disetujui oleh pelanggan. Kami harapkan agar pelanggan memahami melaksanakan ketentuan dan syarat-syarat ini agar terjadi kerjasama yang baik antara pelanggan dan Laundry-in.</p>\r\n\r\n<p>Privasi</p>\r\n\r\n<p>Laundry-in menghargai privasi anda terkait informasi yang akan kami kumpulkan selama anda mengoperasikan aplikasi mobile Laundry-in. Oleh karena itu, Kebijakan Privasi berikut ini dibuat untuk anda ketahui bagaimana kami mengumpulkan, menggunakan, mengirim, mengungkapkan dan melindungi informasi pribadi anda yang diperoleh melalui Aplikasi kami. Mohon anda membaca Kebijakan Privasi ini dengan seksama untuk memastikan bahwa anda memahami bagaimana ketentuan Kebijakan Privasi ini kami berlakukan.<br />\r\n<strong>Kebijakan Privasi ini mencakup hal-hal sebagai berikut:</strong><br />\r\nDefinisi</p>\r\n\r\n<ol>\r\n	<li>Informasi yang kami kumpulkan</li>\r\n	<li>Penggunaan informasi yang kami kumpulkan</li>\r\n	<li>Pemberian informasi yang kami kumpulkan</li>\r\n	<li>Penahanan informasi yang kami kumpulkan</li>\r\n	<li>Keamanan</li>\r\n	<li>Perubahan atas Kebijakan Privasi ini</li>\r\n	<li>Pengakuan dan persetujuan</li>\r\n	<li>Cara untuk menghubungi kami</li>\r\n</ol>\r\n\r\n<p>Penggunaan anda atas aplikasi dan layanan kami tunduk pada Ketentuan Penggunaan dan Kebijakan Privasi ini dan mengindikasikan persetujuan anda terhadap Ketentuan Penggunaan dan Kebijakan Privasi tersebut.</p>\r\n\r\n<p><strong>1. DEFINISI</strong></p>\r\n\r\n<ul>\r\n	<li>&ldquo;Laundry-in&rdquo; dan &ldquo;Kami&rdquo;, sebuah perusahaan yang didirikan berdasarkan hukum Negara Republik Indonesia.</li>\r\n	<li>&ldquo;Aplikasi&rdquo;, berarti suatu aplikasi piranti lunak yang telah kami kembangkan yang merupakan suatu sarana untuk menemukan Layanan yang disediakan oleh pihak ketiga.</li>\r\n	<li>&ldquo;Penyedia Layanan&rdquo;, berarti suatu pihak ketiga pengendara sepeda motor (Kurir) yang menyediakan Layanan melalui Aplikasi.</li>\r\n	<li>&ldquo;Layanan&rdquo;, berarti layanan transportasi dengan menggunakan sepeda motor yang ditawarkan oleh Penyedia Layanan melalui Aplikasi yang dapat mencakup layanan kurir instan dan laundry..</li>\r\n	<li>&ldquo;Informasi Pribadi&rdquo;, berarti informasi mengenai anda yang secara pribadi dapat diidentifikasi yang dikumpulkan melalui Aplikasi, seperti nama, alamat, nomor telepon, alamat surat elektronik (e-mail) anda dan/atau sejenisnya, dan informasi lain yang mungkin dapat mengidentifikasi orang tertentu yang sedang menggunakan Aplikasi.</li>\r\n	<li>&ldquo;Website&rdquo; berarti alamat website kami www.laundry-in.com.</li>\r\n</ul>\r\n\r\n<p><strong>2. INFORMASI YANG KAMI KUMPULKAN</strong></p>\r\n\r\n<ul>\r\n	<li>Kami mengumpulkan Informasi Pribadi tertentu dari anda agar Aplikasi kami dapat menemukan Layanan dari Penyedia Layanan. Anda akan langsung memberikan Informasi Pribadi (sebagai contoh, saat anda mendaftar) dan beberapa informasi akan secara otomatis dikumpulkan ketika anda menggunakan Aplikasi.</li>\r\n	<li>Pada proses pendaftaran akun Laundry-in, Anda memberikan alamat nama, nomor telepon, dan password akun anda kepada kami.</li>\r\n	<li>Dalam menu profile, Anda dapat memberikan alamat dari lokasi Anda. Kami menggunakan data ini untuk membantu menempatkan Penyedia Layanan kami dan hal ini akan memberikan Anda pengalaman laundry terbaik.</li>\r\n	<li>Ketika Anda menggunakan Aplikasi untuk menggunakan layanan kami, Anda memberikan kami informasi seperti waktu penjemputan, lokasi penjemputan, waktu pengiriman, dan tujuan pengiriman Anda. Anda juga memberikan kami informasi mengenai perkiraan berat pakaian dan jumlah potongan untuk melihat perkiraan harga yang akan dibebankan kepada Anda.</li>\r\n	<li>Setelah status pesanan Anda berubah menjadi Delivered, kami akan menayakan apakah pesanan telah Selesai atau mengalami Kerusakan. Jika pesanan mengalami Kerusakan, Anda memberikan foto bukti kepada Aplikasi kami, dengan mengambil atau meng-upload foto bukti ke server kami. Jika Anda memilih untuk mengambil foto secara langsung, kami akan meminta Anda untuk mengaktifkan perangkat kamera Anda dengan memberikan beberapa pilihan aplikasi foto Anda.</li>\r\n	<li>Kami akan menghubungi Anda segera setelah kami mengkategorikan Kerusakan Laporan Anda.</li>\r\n	<li>Setiap kali Anda ingin memesan ulang Layanan kami, kami akan menanyakan kepuasan Anda terhadap Layanan kami dengan rating itu dalam skala 1 sampai 4. Anda juga dapat mengisi komentar Anda pada kotak yang tersedia.</li>\r\n	<li>Ketika Anda menggunakan aplikasi kami, kami juga memproses data teknis seperti informasi perangkat Anda tentang produsen, model, dan sistem operasi perangkat mobile Anda. Kami menggunakan data ini untuk memungkinkan kami untuk memberikan fungsi terbaik dari Aplikasi, mengatasi kesulitan teknis, memberikan versi paling terbaru dari Aplikasi, dan untuk meningkatkan fungsionalitas dari aplikasi Kami.</li>\r\n	<li>Kami akan meminta nomor telepon seseorang yang dapat dihubungi oleh Penyedia Layanan untuk melengkapi pesanan anda ketika anda menggunakan Aplikasi untuk menemukan suatu layanan kami. Anda harus mendapatkan persetujuan terlebih dahulu dari orang yang nomor teleponnya anda berikan pada kami untuk memberikan nomor teleponnya pada kami dan untuk kami memberikan nomor telepon tersebut kepada Penyedia Layanan.</li>\r\n</ul>\r\n\r\n<p><strong>3. PENGGUNAAN INFORMASI YANG KAMI KUMPULKAN</strong></p>\r\n\r\n<ul>\r\n	<li>Kami menggunakan nama, nomor telepon dan akun password untuk memverifikasi kepemilikan akun, untuk berkomunikasi dengan Anda dalam menanggapi pesanan Anda dan memberikan Anda informasi tentang aplikasi kami.</li>\r\n	<li>Kami juga dapat menggunakan nama dan nomor telepon untuk mengirim berita Anda, general update pada Aplikasi, penawaran khusus atau promosi.</li>\r\n	<li>Kami menggunakan informasi seperti jumlah kilo dan jumlah baju Anda memesan untuk menentukan apakah aplikasi kami dapat menerima pesanan Anda di bawah Syarat dan Ketentuan.</li>\r\n	<li>Kami menggunakan informasi seperti foto dari laporan kerusakan Anda untuk meng kategorisasi masalah cucian Anda.</li>\r\n	<li>Kami menggunakan informasi seperti penilaian Anda untuk meningkatkan waktu layanan kami dan kualitas laundry kami untuk Anda.</li>\r\n	<li>Kami menggunakan informasi pribadi Anda dalam bentuk anonim dan agregat untuk memonitor yang menampilkan Layanan yang paling digunakan, untuk menganalisis pola penggunaan dan untuk menentukan di mana kita harus melakukan penawaran atau fokus dari Layanan kami. Anda setuju bahwa data Anda akan digunakan untuk pengolahan data internal kami untuk memberikan layanan yang lebih baik untuk Anda.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. PEMBERIAN INFORMASI YANG KAMI KUMPULKAN</strong></p>\r\n\r\n<ul>\r\n	<li>Pada detail pesanan Anda, kami akan berbagi informasi seperti nama, nomor telepon, mengambil lokasi, tujuan pengiriman, waktu, order yang akan dibawa dan dilaundry dengan Penyedia Layanan yang menerima order Anda. Informasi ini diperlukan untuk Penyedia Layanan untuk menghubungi Anda, dan / atau menemukan Anda dan / atau menyelesaikan order Anda.</li>\r\n	<li>Kami juga berbagi nomor telepon dari orang kontak yang telah Anda berikan dengan Penyedia Layanan ketika Anda menggunakan aplikasi untuk menemukan jasa laundry.</li>\r\n	<li>Anda setuju dan wewenang kami untuk memindahkan informasi pribadi Anda kepada Penyedia Layanan sebagai bagian dari proses dalam penyediaan Layanan. Sementara informasi pribadi Anda akan secara otomatis dihapus dari perangkat mobile Penyedia Layanan setelah penggunaan Layanan tersebut, terdapat kemungkinan dimana Penyedia Layanan dapat menyimpan data anda di perangkat mereka dengan cara apapun. Kami tidak bertanggung jawab atas penyimpanan data dengan cara tersebut dan anda setuju untuk membela, memberikan ganti rugi dan membebaskan kami dan kami tidak akan bertanggung jawab atas segala penyalahgunaan Informasi Pribadi anda oleh Penyedia Layanan setelah berakhirnya Layanan yang diberikan.</li>\r\n	<li>Kami dapat mempekerjakan perusahaan-perusahaan dan orang perorangan pihak ketiga untuk memfasilitasi atau memberikan Aplikasi dan layanan-layanan tertentu atas nama kami, untuk memberikan bantuan konsumen kepada Penyedia Layanan kami, untuk melaksanakan layanan-layanan terkait dengan Situs web (misalnya tanpa pembatasan, layanan pemeliharaan, pengelolaan database, analisis web dan penyempurnaan fitur-fitur Situs web) atau untuk membantu kami dalam menganalisa bagaimana Layanan kami digunakan atau untuk penasihat profesional dan auditor eksternal kami, termasuk penasihat hukum, penasihat keuangan, dan konsultan-konsultan. Para pihak ketiga ini hanya memiliki akses atas informasi pribadi anda untuk melakukan tugas-tugas tersebut atas nama kami dan secara kontraktual terikat untuk tidak mengungkapkan atau menggunakan informasi pribadi tersebut untuk tujuan lain apapun.</li>\r\n	<li>Kami tidak membagikan Informasi Pribadi anda kepada pihak manapun selain kepada Penyedia Layanan terkait dan perusahaan dan individu pihak ketiga manapun, tanpa persetujuan dari anda. Namun demikian, kami akan mengungkapkan Informasi Pribadi anda sepanjang dimintakan secara hukum, atau diperlukan untuk tunduk pada ketentuan perundang-undangan, peraturan-peraturan dan pemerintah, atau dalam hal terjadi sengketa, atau segala bentuk proses hukum antara anda dan kami, atau antara anda dan pengguna lain sehubungan dengan, atau terkait dengan Layanan, atau dalam keadaan darurat yang berkaitan dengan kesehatan dan/atau keselamatan anda.</li>\r\n	<li>Informasi Pribadi anda dapat dialihkan, disimpan, digunakan, dan diproses di suatu yurisdiksi selain Indonesia dimana server-server kami berada. Anda memahami dan setuju atas pengalihan Informasi Pribadi anda ke luar Indonesia.</li>\r\n	<li>Kami tidak menjual atau menyewakan Informasi Pribadi anda kepada pihak ketiga.</li>\r\n</ul>\r\n\r\n<p><strong>5. PENAHANAN INFORMASI YANG KAMI KUMPULKAN</strong><br />\r\nKami akan menyimpan informasi Anda secara permanen setelah Anda mendaftar pada Aplikasi kami. Namun begitu, kami tidak melepaskan, menyewakan atau menjual informasi pribadi Anda kepada pihak lain.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. KEAMANAN</strong><br />\r\nKami tidak menjamin keamanan database kami dan kami juga tidak menjamin bahwa data yang anda berikan tidak akan ditahan/terganggu ketika sedang dikirimkan kepada kami. Setiap pengiriman informasi oleh anda kepada kami merupakan risiko anda sendiri. Anda tidak boleh mengungkapkan sandi anda kepada siapapun. Bagaimanapun efektifnya suatu teknologi, tidak ada sistem keamanan yang tidak dapat ditembus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. ACKNOWLEDGEMENT AND CONSENT</strong><br />\r\nDengan menggunakan Aplikasi, anda mengakui bahwa anda telah membaca dan memahami Kebijakan Privasi ini dan Ketentuan Penggunaan dan setuju dan sepakat terhadap penggunaan, praktek, pemrosesan dan pengalihan informasi pribadi anda oleh kami sebagaimana dinyatakan di dalam Kebijakan Privasi ini.</p>\r\n\r\n<ul>\r\n	<li>Anda juga menyatakan bahwa anda memiliki hak untuk membagikan seluruh informasi yang telah anda berikan kepada kami dan untuk memberikan hak kepada kami untuk menggunakan dan membagikan informasi tersebut kepada Penyedia Layanan.</li>\r\n</ul>\r\n\r\n<p><strong>8. HOW TO CONTACT US</strong><br />\r\nJika Anda memiliki pertanyaan lebih lanjut mengenai privasi dan keamanan informasi Anda dan ingin memperbarui atau menghapus rincian Anda silahkan hubungi kami di: laundry-in.com. email:cs@laundry-in.com atau menelepon</p>\r\n\r\n<p><strong>LAUNDRY-IN</strong> &bull; On-Demand Laundry App<br />\r\n<strong>T</strong><br />\r\n<strong>Visit</strong> <a href=\"http://laundry-in.com\">www.laundry-in.com</a></p>', 'kebijakan-dan-privasi', 'page', 'yes', '2018-03-03 14:14:03', '2018-03-04 09:28:12'),
(87, 1, 'Gratis 10 Orang Pertama', NULL, '<ol>\r\n	<li>Periode Promo 1 Maret 2018, s.d. 1 Juni 2018.</li>\r\n	<li>Berlaku untuk pemesanan via aplikasi Laundry-in versi terbaru.</li>\r\n	<li>Kuota promo terbatas untuk 10 orang pemesan pertama setiap minggunya</li>\r\n	<li>Promo ini hanya berlaku setiap minggunya pada hari Jum&rsquo;at dan akan di perbarui setiap minggunya pada jam 08:00 WITA.</li>\r\n	<li>Untuk mendapatkan promo ini Customer di wajibkan untuk menyertakan foto Identitas nya kepada kurir yang bertugas mengambil pesanan.</li>\r\n	<li>Promo ini berlaku untuk 1 identitas maksimal 1kg dalam setiap minggunya.</li>\r\n	<li>Promo ini tidak dapat digabungkan dengan promo Laundry-in lainnya.</li>\r\n	<li>Promo bersifat non-refundable, tidak dapat dibatalkan, dan tidak dapat diubah.</li>\r\n	<li>Laundry-in berhak untuk membatalkan pemesanan, dan/ atau penggunaan kode promo apabila terjadi kecurangan, atau tindak pelanggaran atas syarat dan ketentuan lainnya yang berlaku.</li>\r\n	<li>Promo ini tidak berlaku untuk pemesanan dengan kategori premium service.</li>\r\n	<li>Promo ini hanya berlaku di kota Samarinda dan Balikpapan.</li>\r\n	<li>Promo ini tidak dapat ditukarkan dengan uang tunai dalam kondisi apapun.</li>\r\n	<li>Kebijakan dapat berubah sewaktu-waktu tanpa pemberitahuan sebelumnya, dan ini benar-benar sebuah keputusan dari Laundry-in.</li>\r\n</ol>', 'gratis-10-orang-pertama', 'article', 'no', '2018-03-12 13:41:22', '2018-07-31 17:37:00'),
(88, 1, 'PROMO ULASAN DI APPSTORE DAN PLAYSTORE 1kg', NULL, '<ol>\r\n	<li>Periode Promo 1 Maret 2018, s.d. 15 April 2018.</li>\r\n	<li>Berlaku untuk pemesanan via aplikasi Laundry-in versi terbaru.</li>\r\n	<li>Kuota promo terbatas untuk 5 orang pemesan pertama setiap harinya.</li>\r\n	<li>Promo ini hanya berlaku mulai pukul 12:00 WITA dan di perbarui pada waktu yang sama setiap harinya.</li>\r\n	<li>Untuk mendapatkan promo ini Customer di wajibkan untuk menyertakan<em> Screenshot Review, </em>dan foto identitas kepada kurir yang bertugas mengambil pesanan.</li>\r\n	<li>Untuk menggunakan promo ini 1 identitas akan dihitung minimal 3kg saat pemesanan.</li>\r\n	<li>Promo ini hanya berlaku untuk 1 identitas dan hanya berlaku sekali.</li>\r\n	<li>Promo ini tidak dapat digabungkan dengan promo Laundry-in lainnya.</li>\r\n	<li>Promo bersifat non-refundable, tidak dapat dibatalkan, dan tidak dapat diubah.</li>\r\n	<li>Laundry-in berhak untuk membatalkan pemesanan, dan/ atau penggunaan kode promo apabila terjadi kecurangan, atau tindak pelanggaran atas syarat dan ketentuan lainnya yang berlaku.</li>\r\n	<li>Promo ini tidak berlaku untuk pemesanan dengan kategori premium service.</li>\r\n	<li>Promo ini hanya berlaku di kota Samarinda dan Balikpapan.</li>\r\n	<li>Promo ini tidak dapat ditukarkan dengan uang tunai dalam kondisi apapun.</li>\r\n	<li>Kebijakan dapat berubah sewaktu-waktu tanpa pemberitahuan sebelumnya, dan ini benar-benar sebuah keputusan dari Laundry-in.</li>\r\n</ol>', 'promo-ulasan-di-appstore-dan-playstore-1kg', 'article', 'no', '2018-03-12 13:41:49', '2018-07-31 17:36:45'),
(89, 1, 'DARI 10 RIBU JADI 8 RIBU', NULL, '<ol>\r\n	<li>Periode Promo 1 Maret 2018, s.d. 1 Juni 2018.</li>\r\n	<li>Berlaku untuk pemesanan via aplikasi Laundry-in versi terbaru.</li>\r\n	<li>Promo bersifat non-refundable, tidak dapat dibatalkan, dan tidak dapat diubah.</li>\r\n	<li>Laundry-in berhak untuk membatalkan pemesanan, dan/ atau penggunaan kode promo apabila terjadi kecurangan, atau tindak pelanggaran atas syarat dan ketentuan lainnya yang berlaku.</li>\r\n	<li>Promo ini tidak berlaku untuk pemesanan dengan kategori premium service.</li>\r\n	<li>Promo ini hanya berlaku di kota Samarinda dan Balikpapan.</li>\r\n	<li>Promo ini tidak dapat ditukarkan dengan uang tunai dalam kondisi apapun.</li>\r\n	<li>Kebijakan dapat berubah sewaktu-waktu tanpa pemberitahuan sebelumnya, dan ini benar-benar sebuah keputusan dari Laundry-in.</li>\r\n</ol>', 'dari-10-ribu-jadi-8-ribu', 'article', 'no', '2018-03-12 13:42:03', '2018-07-31 17:36:29'),
(90, 1, 'GRATIS CUCI SETELAH 10X PESAN', NULL, '<ol>\r\n	<li>Periode Promo 1 Maret 2018, s.d. 1 Juni 2018.</li>\r\n	<li>Berlaku untuk pemesanan via aplikasi Laundry-in versi terbaru.</li>\r\n	<li>Untuk mendapatkan promo ini <em>Customer</em> di wajibkan untuk menyertakan kupon yang didapatkan selama masa periode promo.</li>\r\n	<li>Untuk mendapatkan kupon <em>Customer</em> wajib melakukan pemesanan minimal 10kg dalam satu kali pemesanan.</li>\r\n	<li>Tidak ada batas minimal berat dalam penukaran kupon.</li>\r\n	<li>Jumah maksimal 10kg untuk setiap penukaran kupon.</li>\r\n	<li>Setiap satu kupon yang kami berikan kepada Anda memiliki kode unik yang tidak dapat ditukarkan kembali setelah kode kupon tersebut digunakan.</li>\r\n	<li>Promo ini tidak dapat digabungkan dengan promo Laundry-in lainnya.</li>\r\n	<li>Promo bersifat non-refundable, tidak dapat dibatalkan, dan tidak dapat diubah.</li>\r\n	<li>Laundry-in berhak untuk membatalkan pemesanan, dan/ atau penggunaan kode promo apabila terjadi kecurangan, atau tindak pelanggaran atas syarat dan ketentuan lainnya yang berlaku.</li>\r\n	<li>Promo ini tidak berlaku untuk pemesanan dengan kategori premium service.</li>\r\n	<li>Promo ini hanya berlaku di kota Samarinda dan Balikpapan.</li>\r\n	<li>Promo ini tidak dapat ditukarkan dengan uang tunai dalam kondisi apapun.</li>\r\n	<li>Kebijakan dapat berubah sewaktu-waktu tanpa pemberitahuan sebelumnya, dan ini benar-benar sebuah keputusan dari Laundry-in.</li>\r\n</ol>', 'gratis-cuci-setelah-10x-pesan', 'article', 'no', '2018-03-12 13:42:26', '2018-07-31 17:36:15'),
(91, 1, 'Promo Free cuci alat sholat', 203, '<p>1. Promo berlaku untuk pemesanan di hari jumat<br />\r\n2. Berlaku untuk pemesanan via apk laundryin versi&nbsp; terbaru<br />\r\n3. Kuota promo terbatas untuk 5 orang pemesan pertama<br />\r\n4. Untuk mendapatkan promo ini minimal order 3 kg<br />\r\n5. Promo ini tidak dapat di gabungkan dengan promo laundryin lainnya<br />\r\n6. Promo ini bersifat non-refundable, tidak dapat dibatalkan, dan tidak dapat diubah<br />\r\n7. Laundryin berhak untuk membatalkan pemesanan dan atau penggunaan promo, apabila terjadi kecurangan, atau tindak pelanggaran atas syarat dan ketentuan lainya yang berlaku<br />\r\n8. Promo ini tidak berlaku untuk pemesanan dengan kategori premium service<br />\r\n9. Promo ini hanya berlaku di pulau jawa<br />\r\n10. Promo ini tidak dapat di tukarkan dengan uang tunai dalam kondisis apappun<br />\r\n11. Kebijakan dapat berubah sewaktu- waktu tanpa pemberitahuan sebelumnya dan ini benar-benar sebuah keputusan dari laundryin</p>', 'promo-free-cuci-alat-sholat', 'article', 'yes', '2018-07-31 17:34:48', '2018-07-31 17:34:48'),
(92, 1, 'Promo event review playstore free 1 Kg', 204, '<p>1. Periode promo 1 agustus - 31 agustus<br />\r\n2. Berlaku untuk pemesanan via aplikasi Laundryin versi terbaru<br />\r\n3. Kuota promo terbatas untuk 5 orang pemesan pertama setiap harinya.<br />\r\n4. Promo ini hanya berlaku mulai pukul 12.00 siang WIB dan diperbaharui pada waktu yg sama setiap harinya<br />\r\n5. Untuk mendapatkan promo ini customer diwajibkan untuk menyertakan screenshot review dan foto identitas kepada driver yg bertugas mengambil pesanan<br />\r\n6. Untuk mendapatkan promo ini minimal order 4 kg<br />\r\n7. Untuk mendapatkan promo ini 1 identitas akan di hitung minimal 4 kg saat pemesanan<br />\r\n8. Promo ini hanya berlaku untuk 1 identitas dan hanya berlaku 1 kali<br />\r\n9. Promo ini tidak dapat di gabungkan dengan promo Laundryin lainnya<br />\r\n10. Promo ini bersifat non-refundable, tidak dapat dibatalkan, dan tidak dapat diubah<br />\r\n11. Laundryin berhak untuk membatalkan pemesanan dan atau penggunaan promo, apabila terjadi kecurangan, atau tindak pelanggaran atas syarat dan ketentuan lainya yang berlaku<br />\r\n12. Promo ini tidak berlaku untuk pemesanan dengan kategori premium service<br />\r\n13. Promo ini hanya berlaku di pulau Jawa<br />\r\n14. Promo ini tidak dapat di tukarkan dengan uang tunai dalam kondisi apapun<br />\r\n15 kebijakan dapat berubah sewaktu- waktu tanpa pemberitahuan sebelumnya dan ini benar-benar sebuah keputusan dari laundryin</p>', 'promo-event-review-playstore-free-1-kg', 'article', 'yes', '2018-07-31 17:39:18', '2018-07-31 17:39:18'),
(93, 1, 'Promo free souvenir', 205, '<p>1. Periode promo 1 Agustus - 31 Agustus.<br />\r\n2. Berlaku untuk pemesanan via aplikasi Laundryin versi&nbsp; terbaru.<br />\r\n3. Promo ini berlaku hanya jika customer memesan 10kg, 15kg atau lebih.<br />\r\n4. Tidak berlaku kelipatan.<br />\r\n5. Promo ini bisa didapatkan kembali dihari selanjutnya setelah pemesanan.<br />\r\n6. Promo ini tidak dapat di gabungkan dengan promo Laundryin lainnya.<br />\r\n7. Promo ini bersifat non-refundable, tidak dapat dibatalkan, dan tidak dapat diubah.<br />\r\n8. Laundryin berhak untuk membatalkan pemesanan dan atau penggunaan promo, apabila terjadi kecurangan, atau tindak pelanggaran atas syarat dan ketentuan lainya yang berlaku.<br />\r\n9. Promo ini tidak berlaku untuk pemesanan dengan kategori premium service.<br />\r\n10. Promo ini hanya berlaku di pulau Jawa.<br />\r\n11. Promo ini tidak dapat di tukarkan dengan uang tunai dalam kondisi apapun.<br />\r\n12. Kebijakan dapat berubah sewaktu-waktu tanpa pemberitahuan sebelumnya dan ini benar-benar sebuah keputusan dari Laundryin.</p>', 'promo-free-souvenir', 'article', 'yes', '2018-07-31 17:41:41', '2018-07-31 17:41:41'),
(94, 1, 'Promo kemerdekaan', 206, '<p>1. Periode promo 1 Agustus - 16 Agustus.<br />\r\n2. Customer diwajib kan posting foto di instagram yang berisikan foto selfie bersama orderan. Laundryin yang telah sekesai atau dengan picker Laundryin.<br />\r\n3. Batas upload foto dari tanggal 1 Agustus - 16 Agustus.<br />\r\n4. Promo bisa didapatkan jika customer sudah<br />\r\nmelakukan persyaratan dan ketentuan event yang tertera di banner aplikasi.<br />\r\n4. Promo ini berlaku pada pemesanan pada tanggal&nbsp; 17 Agustus 2018.<br />\r\n5. Customer wajib tag @official.laundryin.<br />\r\n6. Customer wajib menggunakan hashtag #laundryin.indonesia #17an.laundryin.<br />\r\n7. Customer wajib tag minimal 3 teman pada postingan nya.<br />\r\n8. Berlaku untuk pemesanan via apk Laundryin versi&nbsp; terbaru.<br />\r\n9. Semua customer yang sudah melakukan persyaratan dan ketentuan berhak mendapatkan kesempatan untuk mengundi hadiah promo.<br />\r\n10. Untuk mendapatkan promo ini customer diwajibkan untuk menyertakan screenshot Sosial media dan foto identitas kepada driver yg bertugas mengambil pesanan.<br />\r\n11. Minimal order 2kg pada tanggal 17 Agustus 2018.<br />\r\n12. Pesanan pada hari dimana promo dijalankan, dapat di potongkan dari promo yang didapatkan pada saat pengundian.<br />\r\n13. Promo ini hanya berlaku untuk 1 identitas dan hanya berlaku 1 kali.<br />\r\n14. Promo ini tidak dapat di gabungkan dengan promo Laundryin lainnya.<br />\r\n15. Promo ini bersifat non-refundable, tidak dapat dibatalkan, dan tidak dapat diubah.<br />\r\n16. Laundryin berhak untuk membatalkan pemesanan dan atau penggunaan promo, apabila terjadi kecurangan, atau tindak pelanggaran atas syarat dan ketentuan lainya yang berlaku.<br />\r\n17. Promo ini tidak berlaku untuk pemesanan dengan kategori premium service.<br />\r\n18. Promo ini hanya berlaku di pulau Jawa.<br />\r\n19. Promo ini tidak dapat di tukarkan dengan uang tunai dalam kondisi apapun.<br />\r\n20. Kebijakan dapat berubah sewaktu-waktu tanpa pemberitahuan sebelumnya dan ini benar-benar sebuah keputusan dari Laundryin</p>', 'promo-kemerdekaan', 'article', 'yes', '2018-07-31 17:47:24', '2018-07-31 17:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `posts_terms`
--

CREATE TABLE `posts_terms` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `term_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_terms`
--

INSERT INTO `posts_terms` (`post_id`, `term_id`) VALUES
(71, 1),
(72, 49),
(82, 1),
(82, 1),
(85, 53),
(85, 54),
(85, 55),
(85, 56),
(85, 57),
(86, 58),
(86, 59),
(86, 60),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  `autoload` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'site_logo', '127', 'yes'),
(2, 'site_title', 'Laundry-in', 'yes'),
(3, 'favicon', '', 'yes'),
(4, 'alamat', 'Samarinda dan Solo\r\n|\r\n|\r\n|\r\nCS Samarinda : 0822 50000 651\r\n|\r\n|\r\nCS Solo : 0821 3377 7737', 'yes'),
(5, 'phone', '082250000651', 'yes'),
(6, 'email', 'cs.laundryin@gmail.com', 'yes'),
(7, 'location', '', 'yes'),
(8, 'site_keyword', 'Laundry Online Samarinda, Laundry di samarinda', 'yes'),
(9, 'site_description', 'Laundry Online Samarinda, Laundry di samarinda', 'yes'),
(10, 'whatsapp', '82250000651', 'yes'),
(11, 'twitter', 'https://twitter.com/CsLaundryin', 'yes'),
(12, 'facebook', 'https://www.facebook.com/Laundryin.indo', 'yes'),
(13, 'about_gome', 'Laundry-in adalah layanan antar jemput pakaian yang menyediakan beberapa layanan', 'yes'),
(14, 'tagline', NULL, 'yes'),
(15, 'instagram', 'https://www.instagram.com/official.laundryin', 'yes'),
(16, 'site_name', 'Laundry-in', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rel_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `name`, `rel_url`, `type`) VALUES
(1, '', '', 'tag'),
(2, 'yogyakarta', 'yogyakarta', 'tag'),
(4, ' batik solo', 'batik-solo', 'tag'),
(5, ' batik-solo', 'batik-solo', 'tag'),
(6, ' a a a', 'a-a-a', 'tag'),
(7, ' adawd', 'adawd', 'tag'),
(34, 'istimewa', 'istimewa', 'tag'),
(35, 'sekali', 'sekali', 'tag'),
(36, 'aa', 'aa', 'tag'),
(37, 'da', 'da', 'tag'),
(38, 'ada', 'ada', 'tag'),
(39, 'daw', 'daw', 'tag'),
(40, 'adad', 'adad', 'tag'),
(41, 'dwass', 'dwass', 'tag'),
(42, 'jgyu', 'jgyu', 'tag'),
(43, 'mui', 'mui', 'tag'),
(44, 'vttt', 'vttt', 'tag'),
(45, 'k', 'k', 'tag'),
(46, 'bb', 'bb', 'tag'),
(47, 'a', 'a', 'tag'),
(48, 'aa\'', 'aa', 'tag'),
(49, 'dwa', 'dwa', 'tag'),
(50, 'tes event', 'tes-event', 'tag'),
(51, 'karnaval', 'karnaval', 'tag'),
(52, 'kontes', 'kontes', 'tag'),
(53, 'merawat pakaian', 'merawat-pakaian', 'tag'),
(54, 'laundry', 'laundry', 'tag'),
(55, 'jasa jemput laundry', 'jasa-jemput-laundry', 'tag'),
(56, 'jogja', 'jogja', 'tag'),
(57, 'kalimantan', 'kalimantan', 'tag'),
(58, 'samarinda', 'samarinda', 'tag'),
(59, 'laundry online', 'laundry-online', 'tag'),
(60, 'laundry samarinda', 'laundry-samarinda', 'tag'),
(61, 'laundry aplikasi', 'laundry-aplikasi', 'tag'),
(62, 'aplikasi laundry', 'aplikasi-laundry', 'tag'),
(63, 'laundry online samarinda', 'laundry-online-samarinda', 'tag'),
(64, 'proses laundry kiloan', 'proses-laundry-kiloan', 'tag');

-- --------------------------------------------------------

--
-- Table structure for table `theme_settings`
--

CREATE TABLE `theme_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `define` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_settings`
--

INSERT INTO `theme_settings` (`id`, `define`, `value`) VALUES
(17, 'homepage_background_template_0', '167'),
(19, 'homepage_background_template_2', '145'),
(20, 'homepage_editable_content_0', 'Solusi kemudahan mencuci pakaian untuk semua kalangan'),
(21, 'homepage_editable_content_1', 'Bagaimana Laundry-in memperlakukan pakaian kesayanganmu?'),
(22, 'homepage_editable_content_2', ''),
(23, 'homepage_background_template_1', '143'),
(30, 'homepage_content_title_0', 'Percayakan Pakaian Kotor Anda pada Laundry-in'),
(31, 'homepage_content_title_1', 'Layanan'),
(32, 'homepage_content_title_2', ''),
(33, 'homepage_editable_content_3', 'Laundry-in adalah penyedia jasa cuci pakaian yang akan menjaga dan melindungi pakaian kesayangan dengan sepenuh hati hingga kembali ke tangan Anda.'),
(34, 'homepage_editable_content_4', 'Tunggu apa lagi, untuk mendapatkan kemudahan dalam mencuci, tinggal download aplikasi kami di sini'),
(35, 'homepage_content_title_3', 'Tentang Kami'),
(36, 'homepage_content_title_4', 'Gunakan Sekarang'),
(37, 'homepage_video_0', 'https://www.youtube.com/watch?v=WlSsGGOm-4w'),
(38, 'homepage_market_store_0', 'https://play.google.com/store/apps/details?id=com.drpro.laundryin&hl=in'),
(39, 'homepage_market_store_1', 'https://itunes.apple.com/id/app/laundry-in/id1355237530?mt=8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$71vdU4QLyYx3P4XXLGbZMeZ9.nyt9ZvvIO0ai/4UTeWF5PPWKN2xS', '', 'admin@laundry-in.com', '', 'm7VkKFYKC4HpklKD2tjYAO9444e38bd331f22b36', 1513010177, 'iwt5wZ1uGxqDLdeYpNMlY.', 1268889823, 1533068252, 1, 'Admin', 'istrator', 'gomeid.com', '0838783'),
(8, '::1', 'nugrahapwid@gmail.com', '$2y$08$EIhRua975CoSAwlBrJPsUeDtz0F40TpdyVKDfgHZLU4hJame635W2', NULL, 'pwid@gmail.com', NULL, 'YM2itOXeBb-Vbwvh.c7JMu0b3491e8cf290cb249', 1514098535, NULL, 1513012091, 1514098497, 1, 'Nugraha', 'dawd', 'Gome', '3'),
(10, '::1', 'nugrahapwid@gmail.com', '$2y$08$pD/jy6yk9jPQNgZmFlFmsuumg6n2soivPASWntqe8t8b.3wO9IaF.', NULL, 'nugrahapwid@gmail.com', NULL, NULL, NULL, NULL, 1514099516, 1518941431, 1, 'Nugraha', 'PWID', 'Gome', '3'),
(11, '112.215.242.181', 'lab.gomein@gmail.com', '$2y$08$u/okB18G3pwjD1kFUwrNMu3KBf.G6KE.5OJPkdRFwnimyOmZkgf6W', NULL, 'lab.gomein@gmail.com', NULL, NULL, NULL, NULL, 1520006945, 1520007195, 1, 'Gome', 'Lab', 'GomeLab', '09875433');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(34, 1, 1),
(35, 1, 2),
(24, 8, 2),
(37, 10, 2),
(38, 11, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_image` (`media_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `media_tags`
--
ALTER TABLE `media_tags`
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts_terms`
--
ALTER TABLE `posts_terms`
  ADD KEY `post_id` (`post_id`,`term_id`),
  ADD KEY `fk_terms_postterms` (`term_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_settings`
--
ALTER TABLE `theme_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `theme_settings`
--
ALTER TABLE `theme_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `fk_banner_media` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `fk_user_images` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `media_tags`
--
ALTER TABLE `media_tags`
  ADD CONSTRAINT `fk_media_tags_media` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_user_posts` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `posts_terms`
--
ALTER TABLE `posts_terms`
  ADD CONSTRAINT `fk_posts_postterms` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_terms_postterms` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
