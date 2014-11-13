-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2014 at 12:03 PM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cakepanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_accounts`
--

CREATE TABLE IF NOT EXISTS `cms_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  `username` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `cms_accounts`
--

INSERT INTO `cms_accounts` (`id`, `user_id`, `role_id`, `username`, `email`, `password`, `last_login`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 1, 'admin', 'admin@yahoo.com', '169e781bd52860b584879cbe117085da596238f3', '2014-11-13 10:31:23', '2013-01-04 00:00:00', 1, '2014-05-05 15:15:38', 1),
(2, 2, 2, 'bazocc4', 'andy_basuki_88@yahoo.com', '62412f00317caaa6a74f790d6fc058f30cc6e8c0', '2014-10-07 10:14:00', '2013-01-15 03:42:56', 1, '2013-02-01 10:42:15', 2),
(3, 2, 3, 'regular1', 'regular@yahoo.com', 'd2705e541f5988c37de5ceb31735a535d5994777', '2013-01-17 11:23:37', '2013-01-15 04:17:47', 2, '2014-07-24 11:05:12', 1),
(7, 3, 2, 'hanatania8', 'hanatania@yahoo.com', '29536df66160e1ff6a6fe6e0395dd8767140657b', '2014-07-24 11:40:17', '2014-07-24 11:06:29', 1, '2014-07-24 11:40:30', 7);

-- --------------------------------------------------------

--
-- Table structure for table `cms_entries`
--

CREATE TABLE IF NOT EXISTS `cms_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_type` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `main_image` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `count` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=241 ;

--
-- Dumping data for table `cms_entries`
--

INSERT INTO `cms_entries` (`id`, `entry_type`, `title`, `slug`, `description`, `main_image`, `parent_id`, `status`, `count`, `created`, `created_by`, `modified`, `modified_by`, `sort_order`, `lang_code`) VALUES
(1, 'pages', 'About Us', 'about-us', '<p>\r\n	This is the story of our company.<br />\r\n	Good you.</p>\r\n', 4, 0, 1, 0, '2013-01-15 04:14:04', 1, '2014-07-21 10:39:30', 1, 1, 'en-1'),
(2, 'media', 'Chrysanthemum', 'chrysanthemum', NULL, 0, 0, 1, 0, '2013-01-15 04:14:43', 2, '2013-01-15 04:14:43', 2, 2, ''),
(4, 'media', 'Desert', 'desert', NULL, 0, 0, 1, 0, '2013-01-15 04:14:44', 2, '2013-01-15 04:14:44', 2, 4, ''),
(40, 'media', 'darth-maul-wall', 'darth-maul-wall', NULL, 0, 0, 1, 0, '2013-01-15 06:04:17', 1, '2013-01-19 08:55:08', 1, 40, ''),
(6, 'books', 'World War II Cont', 'world-war-ii', '<p>\r\n	This is the full story of world war II in America.</p>\r\n', 2, 0, 1, 4, '2013-01-15 04:48:37', 1, '2014-05-05 15:30:23', 1, 70, 'en-6'),
(7, 'media', 'Lighthouse', 'lighthouse', NULL, 0, 0, 1, 0, '2013-01-15 04:58:07', 1, '2013-01-15 04:58:07', 1, 7, ''),
(26, 'media', '9037147_l', '9037147-l', NULL, 0, 0, 1, 0, '2013-01-15 06:02:20', 1, '2013-01-15 06:02:20', 1, 26, ''),
(9, 'news', 'The Death of John', 'the-death-of-john', '<p>\r\n	In the 1996, there was a big war between John Maxwell and Paul Ruthridge.</p>\r\n<p>\r\n	And then, John struggled to won against his enemy.</p>\r\n<p>\r\n	Finally in 1997, there was an intruption about this war.</p>\r\n', 7, 6, 1, 0, '2013-01-15 04:59:41', 1, '2013-01-15 04:59:41', 1, 9, 'en-9'),
(27, 'media', '10266023_m', '10266023-m', NULL, 0, 0, 1, 0, '2013-01-15 06:02:21', 1, '2013-01-15 06:02:21', 1, 27, ''),
(28, 'media', '11034113_m', '11034113-m', NULL, 0, 0, 1, 0, '2013-01-15 06:02:21', 1, '2013-01-15 06:02:21', 1, 28, ''),
(29, 'media', '4440611861_d8494f0a1c_b', '4440611861-d8494f0a1c-b', NULL, 0, 0, 1, 0, '2013-01-15 06:02:22', 1, '2013-01-15 06:02:22', 1, 29, ''),
(30, 'media', 'blur', 'blur', NULL, 0, 0, 1, 0, '2013-01-15 06:02:59', 1, '2013-01-15 06:07:25', 1, 30, ''),
(31, 'media', 'celebration-3day', 'celebration-3day', NULL, 0, 0, 1, 0, '2013-01-15 06:03:00', 1, '2013-01-15 06:07:25', 1, 31, ''),
(32, 'media', 'CaterPlate_with_Utensils', 'caterplate-with-utensils', NULL, 0, 0, 1, 0, '2013-01-15 06:03:01', 1, '2013-01-15 06:07:25', 1, 32, ''),
(33, 'media', 'bokeh_art_by_noobieku', 'bokeh-art-by-noobieku', NULL, 0, 0, 1, 0, '2013-01-15 06:03:01', 1, '2013-01-15 06:07:25', 1, 33, ''),
(34, 'media', 'Bonsai_Stock_by_Lostfiniel', 'bonsai-stock-by-lostfiniel', NULL, 0, 0, 1, 0, '2013-01-15 06:03:02', 1, '2013-01-15 06:07:25', 1, 34, ''),
(35, 'media', 'Christmas_tree_sxc_hu', 'christmas-tree-sxc-hu', NULL, 0, 0, 1, 0, '2013-01-15 06:03:03', 1, '2013-01-15 06:07:25', 1, 35, ''),
(36, 'media', 'contact', 'contact', NULL, 0, 0, 1, 0, '2013-01-15 06:04:15', 1, '2013-01-15 06:07:25', 1, 36, ''),
(37, 'media', 'Fire-Stock-Texture', 'fire-stock-texture', NULL, 0, 0, 1, 0, '2013-01-15 06:04:16', 1, '2013-01-15 06:07:25', 1, 37, ''),
(38, 'media', 'dep_2160234-Abstract-sketch-in-monochrome-colors', 'dep-2160234-abstract-sketch-in-monochrome-colors', NULL, 0, 0, 1, 0, '2013-01-15 06:04:16', 1, '2013-01-15 06:07:25', 1, 38, ''),
(39, 'media', 'darth-maul-1-0', 'darth-maul-1-0', NULL, 0, 0, 1, 0, '2013-01-15 06:04:16', 1, '2013-01-15 06:07:25', 1, 39, ''),
(41, 'media', 'hot-coffee-wallpapers_8908_1680x1050', 'hot-coffee-wallpapers-8908-1680x1050', NULL, 0, 0, 1, 0, '2013-01-15 06:04:17', 1, '2013-01-19 08:55:08', 1, 41, ''),
(42, 'media', 'lily_valley3_22896791_by_stockproject1-d30nxz4', 'lily-valley3-22896791-by-stockproject1-d30nxz4', NULL, 0, 0, 1, 0, '2013-01-15 06:04:18', 1, '2013-01-19 08:55:08', 1, 42, ''),
(43, 'media', 'Organic_Coffee_Bean_Sack', 'organic-coffee-bean-sack', NULL, 0, 0, 1, 0, '2013-01-15 06:04:19', 1, '2013-01-19 08:55:08', 1, 44, ''),
(44, 'media', 'resize_3d_cartoon_pirate', 'resize-3d-cartoon-pirate', NULL, 0, 0, 1, 0, '2013-01-15 06:04:20', 1, '2013-01-19 08:55:08', 1, 43, ''),
(45, 'media', 'resize_3d_scary_aliens', 'resize-3d-scary-aliens', NULL, 0, 0, 1, 0, '2013-01-15 06:04:20', 1, '2013-04-12 11:46:32', 1, 45, ''),
(46, 'media', 'resize_florian_new_02', 'resize-florian-new-02', NULL, 0, 0, 1, 0, '2013-01-15 06:04:20', 1, '2013-04-12 11:46:32', 1, 46, ''),
(47, 'media', 'Smoke_Stock_21_by_hatestock', 'smoke-stock-21-by-hatestock', NULL, 0, 0, 1, 0, '2013-01-15 06:04:21', 1, '2013-04-12 11:46:32', 1, 47, ''),
(48, 'media', 'Smoke-stock1191', 'smoke-stock1191', NULL, 0, 0, 1, 0, '2013-01-15 06:04:22', 1, '2013-04-12 11:46:32', 1, 48, ''),
(49, 'media', 'stock-photo-coffee-beans-in-canvas-sack-9416005', 'stock-photo-coffee-beans-in-canvas-sack-9416005', NULL, 0, 0, 1, 0, '2013-01-15 06:04:23', 1, '2014-11-12 10:09:27', 1, 52, 'en-49'),
(50, 'media', '20110530-061908', '20110530-061908', NULL, 0, 0, 1, 0, '2013-01-15 06:05:40', 1, '2014-11-12 10:09:27', 1, 49, 'en-50'),
(51, 'media', '20110610-103819', '20110610-103819', NULL, 0, 0, 1, 0, '2013-01-15 06:05:40', 1, '2014-11-12 10:09:27', 1, 137, 'en-51'),
(52, 'media', '20110610-103453', '20110610-103453', NULL, 0, 0, 1, 1, '2013-01-15 06:05:41', 1, '2014-11-13 10:40:18', 1, 53, 'en-52'),
(53, 'media', 'beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7', 'beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7', NULL, 0, 0, 1, 0, '2013-01-15 06:05:42', 1, '2014-11-12 10:09:27', 1, 51, 'en-53'),
(54, 'media', '6462d28e02631147cd6ee51a744db6c6', '6462d28e02631147cd6ee51a744db6c6', NULL, 0, 0, 1, 0, '2013-01-15 06:09:23', 1, '2014-11-12 10:09:27', 1, 54, 'en-54'),
(55, 'media', 'avengers_vs_x_men_babies_by_skottieyoung-d4raoid', 'avengers-vs-x-men-babies-by-skottieyoung-d4raoid', NULL, 0, 0, 1, 0, '2013-01-15 06:09:23', 1, '2014-11-12 10:09:27', 1, 55, 'en-55'),
(56, 'media', 'Batgirl_Issue_10_by_Artgerm', 'batgirl-issue-10-by-artgerm', NULL, 0, 0, 1, 0, '2013-01-15 06:09:24', 1, '2014-11-12 10:09:27', 1, 56, 'en-56'),
(57, 'media', 'batman_by_frogbillgo-d2yoamc', 'batman-by-frogbillgo-d2yoamc', NULL, 0, 0, 1, 0, '2013-01-15 06:09:24', 1, '2014-11-12 10:09:27', 1, 57, 'en-57'),
(58, 'media', 'Spiderman_by_PatC_14', 'spiderman-by-patc-14', NULL, 0, 0, 1, 0, '2013-01-15 06:09:24', 1, '2014-11-12 10:09:27', 1, 58, 'en-58'),
(59, 'media', 'super_mario_bro_by_skottieyoung-d4nh5fb', 'super-mario-bro-by-skottieyoung-d4nh5fb', NULL, 0, 0, 1, 0, '2013-01-15 06:09:25', 1, '2014-11-12 10:09:27', 1, 50, 'en-59'),
(60, 'blogs', 'War Blog IV', 'war-blog-iv', '<p>\r\n	This is the blog of war</p>\r\n', 49, 6, 1, 0, '2013-01-15 06:13:51', 1, '2013-01-21 11:49:08', 1, 60, 'en-60'),
(61, 'books', 'Perang Dunia 2', 'perang-dunia-2', '<p>\r\n	Ini adalah kisah penuh dari perang dunia 2 di USA.</p>\r\n', 2, 0, 1, 4, '2013-01-15 06:38:44', 1, '2013-01-19 08:28:54', 1, 61, 'id-6'),
(62, 'blogs', 'Blog Perang 4', 'blog-perang-4', '<p>\r\n	Ini adalah blog perang dunia keempat loo.</p>\r\n', 49, 61, 1, 0, '2013-01-15 08:17:03', 1, '2013-01-15 08:17:03', 1, 62, 'id-60'),
(63, 'news', 'Kematian John', 'kematian-john', '<p>\r\n	Di tahun 1996, terjadi sebuah perang besar antara John Maxwell dan Paul Ruthridge.</p>\r\n<p>\r\n	Kemudian, John tetep berjuang demi meraih kemenangan atas musuhnya.</p>\r\n<p>\r\n	Akhirnya di tahun 1997, terjadilah sebuah interupsi yg besar terhadap perang tersebut.</p>\r\n', 7, 61, 1, 0, '2013-01-15 08:21:54', 1, '2013-01-15 08:21:54', 1, 63, 'id-9'),
(64, 'pages', 'Contact Us', 'contact-us', '<p>\r\n	Ini adalah alamat baru perusahaan kami.</p>\r\n', 36, 0, 1, 0, '2013-01-15 10:24:31', 1, '2014-07-21 10:39:30', 1, 64, 'en-64'),
(65, 'pages', 'Home', 'home', '<p>\r\n	Welcome to our web pages.</p>\r\n<p>\r\n	In here, you can find a lot of games entertainments.</p>\r\n', 27, 0, 1, 0, '2013-01-15 10:42:02', 1, '2014-09-05 11:08:47', 1, 65, 'en-65'),
(66, 'pages', 'Beranda', 'beranda', '<p>\r\n	Selamat datang di website kami.</p>\r\n<p>\r\n	Di sini, anda semuanya dapat menemukan banyak hiburan.</p>\r\n', 27, 0, 1, 0, '2013-01-16 03:22:56', 1, '2014-09-05 17:03:43', 1, 66, 'id-65'),
(67, 'pages', 'Tentang Kita', 'tentang-kita', '<p>\r\n	Ini adalah suatu kisah mengenai perusahaan kami.</p>\r\n', 4, 0, 1, 0, '2013-01-16 03:23:48', 1, '2013-01-16 03:23:48', 1, 67, 'id-1'),
(68, 'news', 'Serangan Gerilya AB', 'serangan-gerilya', '<p>\r\n	telah terjadi serangan gerilya</p>\r\n', 44, 61, 1, 0, '2013-01-16 04:12:05', 1, '2013-01-16 04:12:05', 1, 68, 'id-68'),
(70, 'books', 'Dark Magic', 'dark-magic', '<p>\r\n	this is magic from frontend website.</p>\r\n', 56, 0, 1, 0, '2013-01-16 09:15:23', 1, '2014-05-05 15:30:23', 1, 6, 'en-70'),
(72, 'books', 'tes buku indo', 'tes-buku-indo', '<p>\r\n	wkwkwk</p>\r\n', 37, 0, 1, 0, '2013-01-16 10:05:04', 1, '2013-01-19 08:28:54', 1, 72, 'id-72'),
(73, 'news', 'The Resurrection', 'the-resurrection', '<p>\r\n	There&#39;s a news that exist a medicine can make human alive from death.</p>\r\n<p>\r\n	And then, [to be continue]</p>\r\n', 26, 6, 1, 0, '2013-01-16 10:18:50', 1, '2013-01-16 10:18:50', 1, 73, 'en-73'),
(74, 'news', 'Kebangkitan', 'kebangkitan', '<p>\r\n	Tersebar berita bahwa terdapat sebuah obat yg dapat menghidupkan manusia</p>\r\n<p>\r\n	dari kematian. Lalu kemudian, [to be continue]</p>\r\n', 26, 61, 1, 0, '2013-01-16 10:30:32', 1, '2013-01-16 10:30:32', 1, 74, 'id-73'),
(75, 'media', 'Penguins', 'penguins', NULL, 0, 0, 1, 0, '2013-01-16 10:39:46', 1, '2014-11-12 10:09:27', 1, 59, 'en-75'),
(76, 'media', 'Koala', 'koala', NULL, 0, 0, 1, 0, '2013-01-16 10:43:31', 3, '2014-11-12 10:09:27', 3, 75, 'en-76'),
(84, 'books', 'mario bros', 'mario-bros', '<p>this is the best mario comic ever guys.</p>\r\n\r\n<p>Did you know this is our first best seller comic in USA nowadays?</p>\r\n\r\n<p>Fantastic adventure is coming soon.</p>\r\n', 59, 0, 1, 3, '2013-01-18 12:35:07', 1, '2014-11-13 10:40:18', 1, 84, 'en-84'),
(83, 'media', 'Lighthouse', 'lighthouse-1', NULL, 0, 0, 1, 0, '2013-01-18 05:39:37', 1, '2014-11-12 10:09:27', 1, 76, 'en-83'),
(85, 'media', '20110610-103453', '20110610-103453-1', NULL, 0, 52, 1, 0, '2013-01-18 12:35:07', 1, '2014-11-13 10:40:18', 1, 85, 'en-85'),
(238, 'books', 'Lighthouse', 'lighthouse-4', NULL, 130, 84, 1, 0, '2014-11-13 10:40:18', 1, '2014-11-13 10:40:18', 1, 238, 'en-238'),
(144, 'magazine', 'Body Building Muscle', 'body-building-muscle', '', 37, 0, 1, 0, '2013-12-09 16:17:07', 1, '2014-01-07 13:56:10', 1, 144, 'en-144'),
(87, 'media', 'batman_by_frogbillgo-d2yoamc', 'batman-by-frogbillgo-d2yoamc-1', NULL, 0, 57, 1, 0, '2013-01-18 12:42:49', 1, '2013-01-18 12:42:49', 1, 87, ''),
(108, 'media', 'Hydrangeas', 'hydrangeas', NULL, 0, 0, 1, 0, '2013-01-22 11:41:10', 1, '2014-11-12 10:09:27', 1, 90, 'en-108'),
(89, 'media', 'Lighthouse', 'lighthouse-3', NULL, 0, 83, 1, 0, '2013-01-19 04:40:24', 1, '2013-01-20 08:32:03', 1, 89, ''),
(90, 'media', 'Chrysanthemum', 'chrysanthemum-1', NULL, 0, 0, 1, 0, '2013-01-19 05:03:37', 1, '2014-11-12 10:09:27', 1, 83, 'en-90'),
(145, 'magazine', 'Keep Healthy Keep Fresh', 'keep-healthy-keep-fresh', '', 76, 0, 1, 5, '2013-12-09 16:17:31', 1, '2014-05-14 11:49:23', 1, 145, 'en-145'),
(92, 'media', 'avengers_vs_x_men_babies_by_skottieyoung-d4raoid', 'avengers-vs-x-men-babies-by-skottieyoung-d4raoid-1', NULL, 0, 55, 1, 0, '2013-01-19 07:12:14', 1, '2013-01-19 08:04:08', 1, 92, ''),
(94, 'media', 'Batgirl_Issue_10_by_Artgerm', 'batgirl-issue-10-by-artgerm-1', NULL, 0, 56, 1, 0, '2013-01-19 08:09:48', 1, '2013-01-19 08:09:48', 1, 94, ''),
(95, 'media', 'resize_florian_new_02', 'resize-florian-new-02-3', NULL, 0, 46, 1, 0, '2013-01-19 08:13:57', 1, '2013-11-06 10:14:54', 1, 95, 'en-95'),
(97, 'media', 'Organic_Coffee_Bean_Sack', 'organic-coffee-bean-sack-2', NULL, 0, 43, 1, 0, '2013-01-19 08:25:57', 1, '2013-11-06 10:11:10', 1, 97, 'en-97'),
(98, 'media', 'batman_by_frogbillgo-d2yoamc', 'batman-by-frogbillgo-d2yoamc-3', NULL, 0, 57, 1, 0, '2013-01-19 08:25:58', 1, '2013-11-06 10:11:11', 1, 98, 'en-98'),
(99, 'books', 'tes loro gambar', 'tes-loro-gambar', '', 0, 0, 1, 0, '2013-01-19 08:28:10', 1, '2013-01-19 08:28:54', 1, 99, 'id-96'),
(109, 'media', 'Tulips', 'tulips', NULL, 0, 0, 1, 0, '2013-01-22 11:43:23', 1, '2014-11-12 10:09:27', 1, 108, 'en-109'),
(239, 'books', 'super_mario_bro_by_skottieyoung-d4nh5fb', 'super-mario-bro-by-skottieyoung-d4nh5fb-1', NULL, 59, 84, 1, 0, '2014-11-13 10:40:18', 1, '2014-11-13 10:40:18', 1, 239, 'en-239'),
(240, 'books', '20110530-061908', '20110530-061908-1', NULL, 50, 84, 1, 0, '2014-11-13 10:40:18', 1, '2014-11-13 10:40:18', 1, 240, 'en-240'),
(114, 'media', 'stock-photo-coffee-beans-in-canvas-sack-9416005', 'stock-photo-coffee-beans-in-canvas-sack-9416005-2', NULL, 0, 49, 1, 0, '2013-02-05 09:40:18', 1, '2013-02-13 12:04:52', 1, 114, ''),
(115, 'media', '20110530-061908', '20110530-061908-4', NULL, 0, 50, 1, 0, '2013-02-12 11:23:52', 1, '2013-11-04 17:40:17', 1, 115, 'en-115'),
(116, 'media', 'Thursday20September2012043329slide3', 'thursday20september2012043329slide3', NULL, 0, 0, 1, 0, '2013-04-03 10:44:08', 1, '2014-11-12 10:09:27', 1, 109, 'en-116'),
(117, 'media', 'Thursday20September2012014818slide1', 'thursday20september2012014818slide1', NULL, 0, 0, 1, 0, '2013-04-03 10:44:37', 1, '2014-11-12 10:09:27', 1, 116, 'en-117'),
(118, 'media', 'Thursday20September2012043326slide2', 'thursday20september2012043326slide2', NULL, 0, 0, 1, 0, '2013-04-03 10:47:06', 1, '2014-11-12 10:09:27', 1, 117, 'en-118'),
(130, 'media', 'Lighthouse', 'lighthouse-2', NULL, 0, 0, 1, 0, '2013-07-09 13:51:12', 1, '2014-11-12 10:09:27', 1, 129, 'en-130'),
(140, 'books', 'resize_florian_new_02', 'resize-florian-new-02-2', NULL, 46, 70, 1, 0, '2013-11-04 17:40:17', 1, '2013-11-04 17:40:17', 1, 140, 'en-140'),
(139, 'books', 'Penguins', 'penguins-1', NULL, 75, 70, 1, 0, '2013-11-04 17:40:17', 1, '2013-11-04 17:40:17', 1, 139, 'en-139'),
(129, 'media', 'Penguins', 'penguins-2', NULL, 0, 0, 1, 0, '2013-07-09 13:51:11', 1, '2014-11-12 10:09:27', 1, 118, 'en-129'),
(141, 'books', 'Koala', 'koala-1', NULL, 76, 70, 1, 0, '2013-11-04 17:40:17', 1, '2013-11-04 17:40:17', 1, 141, 'en-141'),
(131, 'media', 'Tulips', 'tulips-1', NULL, 0, 0, 1, 0, '2013-07-09 13:51:13', 1, '2014-11-12 10:09:27', 1, 130, 'en-131'),
(133, 'media', 'stock-photo-coffee-beans-in-canvas-sack-9416005', 'stock-photo-coffee-beans-in-canvas-sack-9416005-1', NULL, 0, 49, 1, 0, '2013-08-12 12:17:46', 1, '2013-11-04 18:01:30', 1, 133, 'en-133'),
(137, 'media', 'slider', 'slider', NULL, 0, 0, 1, 0, '2013-08-16 15:24:16', 1, '2014-11-12 10:09:27', 1, 131, 'en-137'),
(138, 'media', 'batman_by_frogbillgo-d2yoamc', 'batman-by-frogbillgo-d2yoamc-4', NULL, 0, 57, 1, 0, '2013-10-24 09:48:24', 1, '2013-11-04 18:01:31', 1, 138, 'en-138'),
(160, 'blogs', 'Morning Blog', 'morning-blog', 'just a morning blog, thx', 54, 6, 1, 0, '2014-02-04 09:01:45', 1, '2014-02-04 09:02:22', 1, 160, 'en-160'),
(236, 'form-group_photo_2', 'Penguins', 'penguins-3', NULL, 129, 161, 1, 0, '2014-09-22 12:04:13', 1, '2014-09-22 12:04:13', 1, 236, 'en-236'),
(161, 'magazine', 'cake magazine', 'cake-magazine', '<p>test minum</p>\r\n\r\n<p>air jeruk segar</p>\r\n\r\n<p>alami lo</p>\r\n', 108, 0, 1, 7, '2014-05-08 10:17:12', 1, '2014-09-22 12:04:13', 1, 161, 'en-161'),
(230, 'form-group_photo', 'resize_3d_cartoon_pirate', 'resize-3d-cartoon-pirate-1', NULL, 44, 161, 1, 0, '2014-09-22 12:04:12', 1, '2014-09-22 12:04:12', 1, 230, 'en-230'),
(231, 'form-group_photo', 'super_mario_bro_by_skottieyoung-d4nh5fb', 'super-mario-bro-by-skottieyoung-d4nh5fb-3', NULL, 59, 161, 1, 0, '2014-09-22 12:04:12', 1, '2014-09-22 12:04:13', 1, 231, 'en-231'),
(232, 'form-group_photo', 'avengers_vs_x_men_babies_by_skottieyoung-d4raoid', 'avengers-vs-x-men-babies-by-skottieyoung-d4raoid-2', NULL, 55, 161, 1, 0, '2014-09-22 12:04:13', 1, '2014-09-22 12:04:13', 1, 232, 'en-232'),
(233, 'form-group_photo', '20110530-061908', '20110530-061908-3', NULL, 50, 161, 1, 0, '2014-09-22 12:04:13', 1, '2014-09-22 12:04:13', 1, 233, 'en-233'),
(234, 'form-group_photo_2', 'Koala', 'koala-2', NULL, 76, 161, 1, 0, '2014-09-22 12:04:13', 1, '2014-09-22 12:04:13', 1, 234, 'en-234'),
(235, 'form-group_photo_2', 'Thursday20September2012043329slide3', 'thursday20september2012043329slide3-1', NULL, 116, 161, 1, 0, '2014-09-22 12:04:13', 1, '2014-09-22 12:04:13', 1, 235, 'en-235'),
(200, 'form-group_photo_2', 'Hydrangeas', 'hydrangeas-1', NULL, 108, 145, 1, 0, '2014-05-14 11:49:22', 1, '2014-05-14 11:49:23', 1, 200, 'en-200'),
(201, 'form-group_photo_2', 'Thursday20September2012014818slide1', 'thursday20september2012014818slide1-1', NULL, 117, 145, 1, 0, '2014-05-14 11:49:23', 1, '2014-05-14 11:49:23', 1, 201, 'en-201'),
(197, 'form-group_photo', 'avengers_vs_x_men_babies_by_skottieyoung-d4raoid', 'avengers-vs-x-men-babies-by-skottieyoung-d4raoid-3', NULL, 55, 145, 1, 0, '2014-05-14 11:49:22', 1, '2014-05-14 11:49:22', 1, 197, 'en-197'),
(198, 'form-group_photo', 'Penguins', 'penguins-4', NULL, 129, 145, 1, 0, '2014-05-14 11:49:22', 1, '2014-05-14 11:49:22', 1, 198, 'en-198'),
(199, 'form-group_photo', 'Chrysanthemum', 'chrysanthemum-2', NULL, 90, 145, 1, 0, '2014-05-14 11:49:22', 1, '2014-05-14 11:49:22', 1, 199, 'en-199'),
(206, 'slideshow', 'slider library', 'slider-library', '', 29, 0, 1, 0, '2014-09-03 10:44:11', 1, '2014-09-03 10:44:11', 1, 206, 'en-206'),
(207, 'slideshow', 'slider coffee', 'slider-coffee', '', 43, 0, 1, 0, '2014-09-03 10:46:56', 1, '2014-09-03 10:46:56', 1, 207, 'en-207'),
(208, 'slideshow', 'slider traffic', 'slider-traffic', '', 46, 0, 1, 0, '2014-09-03 10:47:43', 1, '2014-09-03 10:47:43', 1, 208, 'en-208'),
(215, 'pages', 'Kontak kami', 'kontak-kami', '<p>\r\n	Ini adalah alamat baru perusahaan kami.</p>\r\n', 36, 0, 1, 0, '2014-09-05 17:04:25', 1, '2014-09-05 17:04:25', 1, 215, 'id-64');

-- --------------------------------------------------------

--
-- Table structure for table `cms_entry_metas`
--

CREATE TABLE IF NOT EXISTS `cms_entry_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=872 ;

--
-- Dumping data for table `cms_entry_metas`
--

INSERT INTO `cms_entry_metas` (`id`, `entry_id`, `key`, `value`) VALUES
(1, 2, 'image_type', 'jpeg'),
(2, 2, 'image_size', '879394'),
(73, 37, 'image_type', 'jpeg'),
(72, 36, 'image_size', '380877'),
(5, 4, 'image_type', 'jpeg'),
(6, 4, 'image_size', '845941'),
(70, 35, 'image_size', '1000306'),
(69, 35, 'image_type', 'jpeg'),
(681, 138, 'image_size', '12376'),
(682, 138, 'image_x', '439.6333312988281'),
(668, 6, 'form-weight', '4.5'),
(14, 7, 'image_type', 'jpeg'),
(15, 7, 'image_size', '561276'),
(52, 26, 'image_size', '152890'),
(51, 26, 'image_type', 'jpeg'),
(18, 6, 'count-news', '2'),
(54, 27, 'image_size', '89217'),
(53, 27, 'image_type', 'jpeg'),
(55, 28, 'image_type', 'jpeg'),
(56, 28, 'image_size', '37281'),
(57, 29, 'image_type', 'jpeg'),
(58, 29, 'image_size', '542535'),
(59, 30, 'image_type', 'jpeg'),
(60, 30, 'image_size', '175833'),
(71, 36, 'image_type', 'jpeg'),
(62, 31, 'image_size', '33691'),
(61, 31, 'image_type', 'jpeg'),
(63, 32, 'image_type', 'jpeg'),
(64, 32, 'image_size', '83902'),
(65, 33, 'image_type', 'jpeg'),
(66, 33, 'image_size', '69422'),
(67, 34, 'image_type', 'jpeg'),
(68, 34, 'image_size', '621007'),
(74, 37, 'image_size', '76968'),
(75, 38, 'image_type', 'jpeg'),
(76, 38, 'image_size', '84683'),
(77, 39, 'image_type', 'jpeg'),
(78, 39, 'image_size', '79164'),
(79, 40, 'image_type', 'jpeg'),
(80, 40, 'image_size', '101219'),
(81, 41, 'image_type', 'jpeg'),
(82, 41, 'image_size', '318322'),
(83, 42, 'image_type', 'jpeg'),
(84, 42, 'image_size', '522900'),
(85, 43, 'image_type', 'jpeg'),
(86, 43, 'image_size', '501805'),
(87, 44, 'image_type', 'jpeg'),
(88, 44, 'image_size', '139266'),
(89, 45, 'image_type', 'jpeg'),
(90, 45, 'image_size', '118473'),
(91, 46, 'image_type', 'jpeg'),
(92, 46, 'image_size', '341375'),
(93, 47, 'image_type', 'jpeg'),
(94, 47, 'image_size', '435839'),
(95, 48, 'image_type', 'jpeg'),
(96, 48, 'image_size', '512873'),
(97, 49, 'image_type', 'jpeg'),
(98, 49, 'image_size', '68128'),
(99, 50, 'image_type', 'jpeg'),
(100, 50, 'image_size', '146115'),
(101, 51, 'image_type', 'jpeg'),
(102, 51, 'image_size', '264859'),
(103, 52, 'image_type', 'jpeg'),
(104, 52, 'image_size', '371206'),
(105, 53, 'image_type', 'jpeg'),
(106, 53, 'image_size', '934284'),
(107, 54, 'image_type', 'jpeg'),
(108, 54, 'image_size', '230880'),
(109, 55, 'image_type', 'jpeg'),
(110, 55, 'image_size', '835025'),
(111, 56, 'image_type', 'jpeg'),
(112, 56, 'image_size', '167533'),
(113, 57, 'image_type', 'jpeg'),
(114, 57, 'image_size', '450989'),
(115, 58, 'image_type', 'jpeg'),
(116, 58, 'image_size', '224473'),
(117, 59, 'image_type', 'jpeg'),
(118, 59, 'image_size', '579210'),
(119, 6, 'count-blogs', '2'),
(728, 60, 'form-action', 'Comment|Like|Unlike that damn bloG'),
(493, 114, 'image_height', '239'),
(166, 61, 'form-approval', 'Approve'),
(165, 61, 'form-publisher', 'Bella Saphira'),
(164, 61, 'form-publish_date', '1/15/2013'),
(163, 61, 'form-author', 'John Roberts'),
(131, 61, 'count-blogs', '1'),
(132, 62, 'form-action', 'Comment|Like'),
(133, 61, 'count-news', '3'),
(654, 70, 'form-publish_date', '03/07/2013'),
(653, 70, 'form-author', 'Bill Gates'),
(652, 70, 'form-weight', '5'),
(142, 72, 'form-publish_date', '1/16/2013'),
(143, 72, 'form-approval', 'Approve'),
(669, 6, 'form-author', 'John Roberts'),
(149, 75, 'image_type', 'jpeg'),
(150, 75, 'image_size', '777835'),
(151, 76, 'image_type', 'jpeg'),
(152, 76, 'image_size', '780831'),
(864, 84, 'form-approval', 'Approve'),
(851, 52, 'count-media', '1'),
(174, 83, 'image_size', '561276'),
(173, 83, 'image_type', 'jpeg'),
(167, 61, 'form-background', '57'),
(746, 73, 'form-magazine', 'keep-healthy-keep-fresh|body-building-muscle'),
(182, 87, 'image_type', 'jpeg'),
(183, 87, 'image_size', '450989'),
(737, 9, 'form-books', 'mario-bros|dark-magic|world-war-ii'),
(670, 6, 'form-publish_date', '1/15/2013'),
(356, 89, 'image_width', '245.00000000000188'),
(355, 89, 'image_y', '48'),
(354, 89, 'image_x', '31.633331298828125'),
(353, 89, 'image_size', '15293'),
(352, 89, 'image_type', 'jpeg'),
(492, 114, 'image_width', '304.0000000000019'),
(194, 90, 'image_type', 'jpeg'),
(195, 90, 'image_size', '133207'),
(247, 94, 'image_type', 'jpeg'),
(235, 92, 'image_type', 'jpeg'),
(236, 92, 'image_size', '40939'),
(237, 92, 'image_x', '90.63333129882812'),
(238, 92, 'image_y', '109'),
(239, 92, 'image_width', '365'),
(240, 92, 'image_height', '261'),
(724, 95, 'image_width', '194.00000000000182'),
(723, 95, 'image_y', '253'),
(248, 94, 'image_size', '32860'),
(249, 94, 'image_x', '133.63333129882812'),
(250, 94, 'image_y', '40'),
(251, 94, 'image_width', '345'),
(252, 94, 'image_height', '243'),
(759, 144, 'form-dropme', 'drop dua'),
(722, 95, 'image_x', '348.6333312988281'),
(721, 95, 'image_size', '12014'),
(720, 95, 'image_type', 'jpeg'),
(698, 97, 'image_type', 'jpeg'),
(701, 97, 'image_y', '67'),
(700, 97, 'image_x', '107.63333129882812'),
(699, 97, 'image_size', '5968'),
(707, 98, 'image_x', '72.63333129882812'),
(706, 98, 'image_size', '30952'),
(339, 99, 'form-background', '76'),
(338, 99, 'form-approval', 'Approve'),
(702, 97, 'image_width', '117.00000000000188'),
(708, 98, 'image_y', '29'),
(337, 99, 'form-publish_date', '1/19/2013'),
(725, 95, 'image_height', '135'),
(705, 98, 'image_type', 'jpeg'),
(745, 73, 'form-books', 'world-war-ii|mario-bros'),
(340, 99, 'form-added_image', '98'),
(868, 85, 'image_y', '91'),
(869, 85, 'image_width', '393.3666687011719'),
(357, 89, 'image_height', '238'),
(831, 109, 'image_type', 'jpg'),
(376, 108, 'image_size', '100674'),
(375, 108, 'image_type', 'jpeg'),
(680, 138, 'image_type', 'jpeg'),
(491, 114, 'image_y', '35'),
(490, 114, 'image_x', '88.63333129882812'),
(489, 114, 'image_size', '31048'),
(661, 115, 'image_width', '384.0000000000019'),
(660, 115, 'image_y', '76'),
(659, 115, 'image_x', '124.63333129882812'),
(655, 70, 'form-publisher', 'Tony Shawn'),
(863, 84, 'form-publish_date', '1/18/2013'),
(862, 84, 'form-weight', '3.35'),
(651, 70, 'form-quantity', '53'),
(662, 115, 'image_height', '266'),
(650, 70, 'form-price', '14'),
(488, 114, 'image_type', 'jpeg'),
(671, 6, 'form-publisher', 'Amane Saphere'),
(507, 116, 'image_type', 'jpeg'),
(508, 116, 'image_size', '42402'),
(509, 117, 'image_type', 'jpeg'),
(510, 117, 'image_size', '43638'),
(511, 118, 'image_type', 'jpeg'),
(512, 118, 'image_size', '60024'),
(632, 137, 'image_size', '49147'),
(631, 137, 'image_type', 'jpeg'),
(675, 133, 'image_x', '83.63333129882812'),
(672, 6, 'form-approval', 'Pending'),
(658, 115, 'image_size', '36954'),
(674, 133, 'image_size', '29785'),
(673, 133, 'image_type', 'jpeg'),
(667, 6, 'form-quantity', '30'),
(685, 138, 'image_height', '237'),
(684, 138, 'image_width', '161'),
(683, 138, 'image_y', '114'),
(560, 131, 'image_size', '101772'),
(559, 131, 'image_type', 'jpeg'),
(558, 130, 'image_size', '99009'),
(557, 130, 'image_type', 'jpeg'),
(556, 129, 'image_size', '114202'),
(657, 115, 'image_type', 'jpeg'),
(555, 129, 'image_type', 'jpeg'),
(666, 6, 'form-price', '23'),
(656, 70, 'form-approval', 'Pending'),
(663, 70, 'form-background', '115'),
(664, 70, 'form-filename', 'macaroon_small.png'),
(665, 70, 'form-filename2', 'terms_and_conditions.pdf'),
(676, 133, 'image_y', '54'),
(677, 133, 'image_width', '324'),
(678, 133, 'image_height', '219'),
(679, 6, 'form-background', '133'),
(686, 6, 'form-added_image', '138'),
(709, 98, 'image_width', '373.0000000000019'),
(703, 97, 'image_height', '132'),
(710, 98, 'image_height', '322'),
(818, 145, 'form-dropme', 'drop tiga'),
(840, 161, 'form-books', 'mario bros|World War II Cont'),
(758, 144, 'form-books', 'Dark Magic|mario bros|World War II Cont'),
(779, 160, 'form-action', 'Comment|Share'),
(780, 160, 'form-background', '58'),
(839, 161, 'count-form-group_photo_2', '3'),
(838, 161, 'count-form-group_photo', '4'),
(815, 145, 'count-form-group_photo', '3'),
(816, 145, 'count-form-group_photo_2', '2'),
(817, 145, 'form-books', 'Dark Magic|World War II Cont'),
(811, 84, 'count-news', '0'),
(832, 109, 'image_size', '117376'),
(833, 206, 'form-url_link', 'http://www.facebook.com'),
(834, 207, 'form-url_link', 'http://www.google.com'),
(835, 208, 'form-url_link', 'http://www.twitter.com'),
(841, 161, 'form-dropme', 'drop dua'),
(842, 161, 'form-fake_ckeditor', '<p>makan nasi goreng</p>\r\n'),
(843, 161, 'form-warnaku', '#ff00ff'),
(867, 85, 'image_x', '246.63333129882812'),
(861, 84, 'form-quantity', '7'),
(866, 85, 'image_size', '29625'),
(865, 85, 'image_type', 'jpeg'),
(860, 84, 'form-price', '35'),
(859, 84, 'count-books', '3'),
(870, 85, 'image_height', '308'),
(871, 84, 'form-background', '85');

-- --------------------------------------------------------

--
-- Table structure for table `cms_roles`
--

CREATE TABLE IF NOT EXISTS `cms_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `description` text,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `cms_roles`
--

INSERT INTO `cms_roles` (`id`, `name`, `description`, `count`) VALUES
(1, 'Super Admin', 'Administrator who has all access for the web without exceptions.', 1),
(2, 'Admin', 'Administrator from the clients.', NULL),
(3, 'Regular User', 'Anyone with no access to admin panel.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `key`, `value`) VALUES
(1, 'title', 'Creazi Citra Cemerlang'),
(2, 'tagline', 'design,creazi,creative,emba 3d,interior,intrafood products,products packaging,intrafood products packaging,emba,3d interior,3d,packaging,business,products,execute,intrafood,description,competitive,company,built'),
(3, 'description', 'CREAzi Design Surabaya Jakarta Indonesia'),
(4, 'date_format', 'F d, Y'),
(5, 'time_format', 'h:i A'),
(6, 'header', ''),
(7, 'top_insert', ''),
(8, 'bottom_insert', ''),
(9, 'google_analytics_code', 'UA-33194544-1'),
(10, 'display_width', '3200'),
(11, 'display_height', '1800'),
(12, 'display_crop', '0'),
(13, 'thumb_width', '120'),
(14, 'thumb_height', '120'),
(15, 'thumb_crop', '0'),
(16, 'language', 'en_english\r\nid_indonesia\r\nzh_chinese'),
(19, 'custom-pagination', '10'),
(17, 'table_view', 'complex'),
(18, 'usd_sell', '12016.00'),
(23, 'custom-email_contact', 'andybasuki88@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cms_types`
--

CREATE TABLE IF NOT EXISTS `cms_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cms_types`
--

INSERT INTO `cms_types` (`id`, `name`, `slug`, `description`, `parent_id`, `count`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 'Media Library', 'media', 'All media image is stored here.', 0, 0, '2013-01-15 03:35:14', 1, '2013-01-15 03:35:14', 1),
(3, 'Books', 'books', 'All the books story.', 0, 2, '2013-01-15 04:39:42', 1, '2013-11-21 15:38:20', 1),
(4, 'News', 'news', 'News inside the books.', 3, 0, '2013-01-15 04:43:04', 1, '2013-12-09 16:19:08', 1),
(5, 'Blogs', 'blogs', 'People''s Blogs.', 3, 0, '2013-01-15 04:46:35', 1, '2014-06-26 10:01:50', 1),
(11, 'Magazine', 'magazine', 'Zpanel Magazine Library.', 0, 0, '2013-12-09 16:16:50', 1, '2014-11-13 11:55:53', 1),
(12, 'Slideshow', 'slideshow', 'Home slideshow with details.', 0, 0, '2014-09-03 10:42:57', 1, '2014-09-03 10:42:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_type_metas`
--

CREATE TABLE IF NOT EXISTS `cms_type_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text,
  `input_type` varchar(500) DEFAULT NULL,
  `validation` text,
  `instruction` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=460 ;

--
-- Dumping data for table `cms_type_metas`
--

INSERT INTO `cms_type_metas` (`id`, `type_id`, `key`, `value`, `input_type`, `validation`, `instruction`) VALUES
(323, 3, 'form-approval', 'Approve\r\nPending', 'dropdown', 'not_empty|', 'This book is already approved or not.'),
(322, 3, 'form-publisher', '', 'text', '', ''),
(321, 3, 'form-publish_date', '', 'datepicker', 'not_empty|', ''),
(7, 4, 'stagging', 'enable', NULL, NULL, NULL),
(320, 3, 'form-author', '', 'text', '', ''),
(319, 3, 'form-weight', '', 'text', 'not_empty|is_numeric|', 'Product weight in kg.'),
(318, 3, 'form-quantity', '', 'text', 'not_empty|is_numeric|', ''),
(243, 3, 'stagging', 'enable', NULL, NULL, NULL),
(317, 3, 'form-price', '', 'text', 'not_empty|is_numeric|is_alnum|', ''),
(316, 3, 'display_crop', '2', NULL, NULL, NULL),
(180, 3, 'gallery', 'enable', NULL, NULL, NULL),
(326, 3, 'form-filename', '', 'file', 'not_empty|', ''),
(254, 3, 'title_key', 'Books Name', NULL, NULL, NULL),
(325, 3, 'form-added_image', '', 'image', '', ''),
(324, 3, 'form-background', '', 'image', '', 'Background of the book'),
(409, 5, 'form-action', 'Comment\r\nShare\r\nLike\r\nUnlike that damn bloG', 'checkbox', '', 'More Action about the blogs.'),
(327, 3, 'form-filename2', '', 'file', '', 'This is just a test file.'),
(333, 4, 'form-books', '', 'multibrowse', 'not_empty|', 'Test New Type again.'),
(332, 4, 'form-news_file', '', 'file', 'not_empty|', ''),
(334, 4, 'form-magazine', '', 'multibrowse', '', 'Zpanel Famous Magazine.'),
(451, 11, 'form-books', '', 'checkbox', 'browse_module|', 'browse books for checkbox.'),
(452, 11, 'form-group_photo', '', 'gallery', 'not_empty|', 'just a test field gallery.'),
(453, 11, 'form-dropme', 'drop satu\r\ndrop dua\r\ndrop tiga', 'dropdown', '', ''),
(454, 11, 'form-group_photo_2', '', 'gallery', '', ''),
(455, 11, 'form-fake_ckeditor', '', 'ckeditor', 'not_empty|', 'just a test additional ckeditor.'),
(456, 11, 'form-biggy_text', '', 'textarea', 'max_length_25|', ''),
(410, 5, 'form-background', '', 'image', '', ''),
(411, 5, 'form-books', '', 'browse', '', ''),
(412, 12, 'form-url_link', '', 'text', 'is_url|', 'Example: http://www.yourdomain.com'),
(457, 11, 'form-normal_text', '', 'text', 'max_length_30|', ''),
(440, 11, 'pagination', '7', NULL, NULL, NULL),
(458, 11, 'form-single_browse', '', 'browse', '', ''),
(459, 11, 'form-warnaku', '', 'color', 'not_empty|', 'test warna'),
(450, 11, 'gallery', 'enable', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `firstname`, `lastname`, `created`, `created_by`, `modified`, `modified_by`, `status`) VALUES
(1, 'admin', 'zpanel', '2013-01-04 00:00:00', 1, '2014-02-06 10:50:29', 1, 1),
(2, 'Andy', 'Basuki', '2013-01-15 03:42:25', 1, '2014-02-06 10:52:30', 1, 1),
(3, 'Hana', 'Tania Libianto', '2013-01-21 02:59:43', 2, '2014-02-06 10:53:10', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_user_metas`
--

CREATE TABLE IF NOT EXISTS `cms_user_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `cms_user_metas`
--

INSERT INTO `cms_user_metas` (`id`, `user_id`, `key`, `value`) VALUES
(26, 2, 'city', 'Surabaya, Indonesia'),
(25, 2, 'address', 'DHI 43'),
(24, 2, 'gender', 'male'),
(34, 3, 'address', 'Jl. Baruk Utara'),
(35, 3, 'city', 'Valencia, Spain'),
(36, 3, 'phone', '031 878 3188'),
(33, 3, 'gender', 'female'),
(13, 1, 'gender', 'male'),
(14, 1, 'address', 'Jl. Dharmahusada Indah 43'),
(15, 1, 'zip_code', '60258'),
(16, 1, 'city', 'Surabaya, Indonesia'),
(17, 1, 'mobile_phone', '089 67367 1110'),
(18, 1, 'dob_day', '28'),
(19, 1, 'dob_month', '10'),
(20, 1, 'dob_year', '1988'),
(21, 1, 'job', 'Web Developer'),
(22, 1, 'company', 'PT. Creazi'),
(23, 1, 'company_address', 'Jl. Nginden Semolo 101'),
(27, 2, 'phone', '031 5995630'),
(28, 2, 'mobile_phone', '081 7525 5381'),
(29, 2, 'dob_day', '20'),
(30, 2, 'dob_month', '6'),
(31, 2, 'dob_year', '1985'),
(32, 2, 'job', 'Freelancer'),
(37, 3, 'mobile_phone', '081 737 5678'),
(38, 3, 'dob_day', '29'),
(39, 3, 'dob_month', '1'),
(40, 3, 'dob_year', '1989');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
