-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2019 at 07:52 AM
-- Server version: 10.1.41-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.1.30-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melis`
--

-- --------------------------------------------------------

--
-- Table structure for table `cb_custom_settings`
--

CREATE TABLE `cb_custom_settings` (
  `site_id` varchar(20) NOT NULL,
  `mail_host` varchar(200) NOT NULL,
  `mail_port` varchar(20) NOT NULL,
  `mail_smtp_secure` varchar(20) NOT NULL,
  `mail_smtp_auth` varchar(20) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cb_custom_settings`
--

INSERT INTO `cb_custom_settings` (`site_id`, `mail_host`, `mail_port`, `mail_smtp_secure`, `mail_smtp_auth`, `recipient`, `cc`) VALUES
('1', 'localhost', '587', 'tls', '1', 'empesquera.cri@gmail.com', 'test@test.com'),
('2', 'smtp.gmail.com', '25', 'tls', '1', 'test1@example.com', 'test@example.com'),
('3', '', '', '', '', 'emeliza.pesquera@cri.clickablebrand.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `changelog`
--

CREATE TABLE `changelog` (
  `change_number` bigint(20) NOT NULL,
  `delta_set` varchar(10) NOT NULL,
  `start_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `complete_dt` timestamp NULL DEFAULT NULL,
  `applied_by` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changelog`
--

INSERT INTO `changelog` (`change_number`, `delta_set`, `start_dt`, `complete_dt`, `applied_by`, `description`) VALUES
(14919, 'Main', '2019-07-09 20:36:13', '2019-07-09 20:36:13', 'MelisDbDeploy', '14919_engine_update.sql'),
(83118, 'Main', '2019-07-09 20:36:14', '2019-07-09 20:36:14', 'MelisDbDeploy', '83118_cms_slider_install.sql'),
(93118, 'Main', '2019-07-09 20:36:14', '2019-07-09 20:36:14', 'MelisDbDeploy', '93118_melis_site_robot_install.sql'),
(112718, 'Main', '2019-07-09 20:36:13', NULL, 'MelisDbDeploy', '112718_core_udpate.sql'),
(112818, 'Main', '2019-07-09 20:36:13', NULL, 'MelisDbDeploy', '112818_core_update.sql'),
(131918, 'Main', '2019-07-09 20:36:14', NULL, 'MelisDbDeploy', '131918_engine_update.sql'),
(141818, 'Main', '2019-07-09 20:36:14', NULL, 'MelisDbDeploy', '141818_engine_update.sql'),
(151118, 'Main', '2019-07-09 20:36:15', '2019-07-09 20:36:15', 'MelisDbDeploy', '151118_engine_install.sql'),
(151419, 'Main', '2019-07-09 20:36:15', '2019-07-09 20:36:15', 'MelisDbDeploy', '151419_core_udpate.sql'),
(151718, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '151718_core_dashboard_plugins.sql'),
(172318, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '172318_engine_update.sql'),
(251118, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '251118_engine_update.sql'),
(312618, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '312618_calendar_install.sql'),
(351118, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '351118_engine_update.sql'),
(612618, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '612618_cms_page_historic_install.sql'),
(712618, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '712618_cms_prospects_install.sql'),
(1031519, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '1031519_cms_site_langs_install.sql'),
(1032519, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '1032519_engine_update.sql'),
(1032619, 'Main', '2019-07-09 20:36:16', '2019-07-09 20:36:16', 'MelisDbDeploy', '1032619_cms_site_translation_install.sql'),
(1040319, 'Main', '2019-07-09 20:36:17', '2019-07-09 20:36:17', 'MelisDbDeploy', '1040319_cms_site_config_install.sql'),
(1061219, 'Main', '2019-07-09 20:36:17', '2019-07-09 20:36:17', 'MelisDbDeploy', '1061219_cms_page_analytics_install.sql'),
(1101818, 'Main', '2019-07-09 20:36:18', '2019-07-09 20:36:18', 'MelisDbDeploy', '1101818_core_install.sql'),
(1112018, 'Main', '2019-07-09 20:36:18', NULL, 'MelisDbDeploy', '1112018_engine_update.sql'),
(1112618, 'Main', '2019-07-09 20:36:18', '2019-07-09 20:36:18', 'MelisDbDeploy', '1112618_melis_messenger_install.sql'),
(1120718, 'Main', '2019-07-09 20:36:18', '2019-07-09 20:36:18', 'MelisDbDeploy', '1120718_engine_update.sql'),
(1160319, 'Main', '2019-07-09 20:36:18', '2019-07-09 20:36:18', 'MelisDbDeploy', '1160319_core_update.sql'),
(1220119, 'Main', '2019-07-09 20:36:19', '2019-07-09 20:36:19', 'MelisDbDeploy', '1220119_cms_news_install.sql'),
(7102318, 'Main', '2019-07-09 20:36:19', '2019-07-09 20:36:19', 'MelisDbDeploy', '7102318_cms_prospects_update.sql'),
(10401219, 'Main', '2019-07-09 20:36:19', '2019-07-09 20:36:19', 'MelisDbDeploy', '10401219_cms_site_home_install.sql'),
(19061302, 'Main', '2019-07-09 20:36:19', '2019-07-09 20:36:19', 'MelisDbDeploy', '19061302_cms_page_analytics_update.sql');

-- --------------------------------------------------------

--
-- Table structure for table `melis_calendar`
--

CREATE TABLE `melis_calendar` (
  `cal_id` int(11) NOT NULL,
  `cal_event_title` text NOT NULL,
  `cal_date_start` date NOT NULL,
  `cal_date_end` date NOT NULL,
  `cal_created_by` int(11) DEFAULT NULL,
  `cal_last_update_by` int(11) DEFAULT NULL,
  `cal_date_last_update` datetime DEFAULT NULL,
  `cal_date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_domain_robots`
--

CREATE TABLE `melis_cms_domain_robots` (
  `robot_id` int(11) NOT NULL,
  `robot_site_domain` varchar(200) DEFAULT NULL,
  `robot_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_gdpr_texts`
--

CREATE TABLE `melis_cms_gdpr_texts` (
  `mcgdpr_text_id` int(11) NOT NULL,
  `mcgdpr_text_site_id` int(11) NOT NULL,
  `mcgdpr_text_lang_id` int(11) NOT NULL,
  `mcgdpr_text_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_gdpr_texts`
--

INSERT INTO `melis_cms_gdpr_texts` (`mcgdpr_text_id`, `mcgdpr_text_site_id`, `mcgdpr_text_lang_id`, `mcgdpr_text_value`) VALUES
(1, 1, 1, 'Our site uses cookies. By continuing to use our site you are agreeing to our Cookie Policy.'),
(2, 1, 2, 'Notre site utilise des cookies. En poursuivant votre navigation sur notre site vous acceptez notre politique de cookies.');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_lang`
--

CREATE TABLE `melis_cms_lang` (
  `lang_cms_id` int(11) NOT NULL,
  `lang_cms_locale` varchar(10) NOT NULL,
  `lang_cms_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_lang`
--

INSERT INTO `melis_cms_lang` (`lang_cms_id`, `lang_cms_locale`, `lang_cms_name`) VALUES
(1, 'en_EN', 'English'),
(2, 'fr_FR', 'Français');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_news`
--

CREATE TABLE `melis_cms_news` (
  `cnews_id` int(11) NOT NULL,
  `cnews_status` tinyint(4) NOT NULL DEFAULT '0',
  `cnews_image1` longtext,
  `cnews_image2` longtext,
  `cnews_image3` longtext,
  `cnews_documents1` longtext,
  `cnews_documents2` longtext,
  `cnews_documents3` longtext,
  `cnews_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cnews_publish_date` datetime DEFAULT NULL,
  `cnews_unpublish_date` datetime DEFAULT NULL,
  `cnews_slider_id` int(11) DEFAULT NULL,
  `cnews_site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_news`
--

INSERT INTO `melis_cms_news` (`cnews_id`, `cnews_status`, `cnews_image1`, `cnews_image2`, `cnews_image3`, `cnews_documents1`, `cnews_documents2`, `cnews_documents3`, `cnews_creation_date`, `cnews_publish_date`, `cnews_unpublish_date`, `cnews_slider_id`, `cnews_site_id`) VALUES
(1, 1, '/MelisDemoCms/images/news/N01.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-11-27 12:00:00', NULL, NULL, 1),
(2, 1, '/MelisDemoCms/images/news/N02.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-11-27 12:00:00', NULL, NULL, 1),
(3, 1, '/MelisDemoCms/images/news/N03.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-11-27 12:00:00', NULL, NULL, 1),
(4, 1, '/MelisDemoCms/images/news/N04.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-11-27 12:00:00', NULL, NULL, 1),
(5, 1, '/MelisDemoCms/images/news/N05.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-10-27 12:00:00', NULL, NULL, 1),
(6, 1, '/MelisDemoCms/images/news/N06.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-10-27 12:00:00', NULL, NULL, 1),
(7, 1, '/MelisDemoCms/images/news/N07.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-10-27 12:00:00', NULL, NULL, 1),
(8, 1, '/MelisDemoCms/images/news/N08.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-10-27 12:00:00', NULL, NULL, 1),
(9, 1, '/MelisDemoCms/images/news/N09.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-09-27 12:00:00', NULL, NULL, 1),
(10, 1, '/MelisDemoCms/images/news/N10.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-10-27 12:00:00', NULL, NULL, 1),
(11, 1, '/MelisDemoCms/images/news/N11.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-09-27 12:00:00', NULL, NULL, 1),
(12, 1, '/MelisDemoCms/images/news/N12.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-09-27 12:00:00', NULL, NULL, 1),
(13, 1, '/MelisDemoCms/images/news/N13.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-08-27 12:00:00', NULL, NULL, 1),
(14, 1, '/MelisDemoCms/images/news/N14.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-08-27 12:00:00', NULL, NULL, 1),
(15, 1, '/MelisDemoCms/images/news/N15.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-07-27 12:00:00', NULL, NULL, 1),
(16, 1, '/MelisDemoCms/images/news/N16.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-07-27 12:00:00', NULL, NULL, 1),
(17, 1, '/MelisDemoCms/images/news/N17.jpg', NULL, NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-06-27 12:00:00', NULL, NULL, 1),
(18, 1, '/MelisDemoCms/images/news/N18.jpg', '', NULL, NULL, NULL, NULL, '2019-07-09 20:36:51', '2018-06-27 00:00:00', NULL, NULL, 103),
(19, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-16 23:37:39', '2019-07-16 00:00:00', NULL, NULL, 1),
(20, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-17 06:41:31', '2019-07-17 00:00:00', NULL, NULL, 23),
(21, 1, '/media/news/21/book-reviews-img.jpg', NULL, NULL, NULL, NULL, NULL, '2019-08-19 00:14:11', '2019-08-19 00:00:00', NULL, NULL, 108);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_news_texts`
--

CREATE TABLE `melis_cms_news_texts` (
  `cnews_text_id` int(11) NOT NULL,
  `cnews_title` varchar(255) DEFAULT NULL,
  `cnews_subtitle` varchar(255) DEFAULT NULL,
  `cnews_paragraph1` longtext,
  `cnews_paragraph2` longtext,
  `cnews_paragraph3` longtext,
  `cnews_paragraph4` longtext,
  `cnews_id` int(11) DEFAULT NULL,
  `cnews_lang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_news_texts`
--

INSERT INTO `melis_cms_news_texts` (`cnews_text_id`, `cnews_title`, `cnews_subtitle`, `cnews_paragraph1`, `cnews_paragraph2`, `cnews_paragraph3`, `cnews_paragraph4`, `cnews_id`, `cnews_lang_id`) VALUES
(1, 'Fashion show Obscuria in PARIS this spring 2017!', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1),
(2, 'Latest youth trends', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1),
(3, '8 ways to revive old fashion shoes', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 3, 1),
(4, 'Quizzz : how much do you know about fashion?', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 4, 1),
(5, 'What type of model are you?', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 5, 1),
(6, 'Under the spotlight!', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 6, 1),
(7, 'How to get the utmost of your makeup', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 7, 1),
(8, 'Discover the most handsome star of the month!', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 8, 1),
(9, 'Dark curtains project revealed!', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 9, 1),
(10, 'Immerse yourself into fashion with this new event!', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 10, 1),
(11, 'Why is Paris the capital city of Fashion?', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 11, 1),
(12, 'Gentlemen, time to put on your suits!', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 12, 1),
(13, 'Upcoming trends this year', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 13, 1),
(14, 'Discover Angela the new fashion model of Melis', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 14, 1),
(15, 'Latest designs unveiled', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 15, 1),
(16, 'Revelations of the most renowned fashion artist!', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 16, 1),
(17, 'XYZ is now hiring models', NULL, 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 17, 1),
(18, 'Fashion and seduction : an art in itself', '', 'Paragraph 1, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 2, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 3, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Paragraph 4, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 18, 1),
(19, 'test', 'test', '', 'yrdy', '', '', 19, 1),
(20, '', '', '', '', '', '', 19, 2),
(21, 'This is Test Blog', 'tthis', 'test', '', '', '', 20, 1),
(22, '', '', '', '', '', '', 20, 2),
(23, 'blog sample', 'Blog subtitle', '<span>Dolor mollit qui duis fugiat cupidatat reprehenderit. Nulla dolor lorem occaecat amet eiusmod irure magna. Veniam cillum commodo aliqua eiusmod ut cupidatat anim enim consequat.</span>', '', '', '', 21, 1),
(24, '', '', '', '', '', '', 21, 2),
(25, '', '', '', '', '', '', 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_analytics`
--

CREATE TABLE `melis_cms_page_analytics` (
  `ph_id` int(11) NOT NULL,
  `ph_page_id` int(11) NOT NULL,
  `ph_session_id` varchar(100) NOT NULL,
  `ph_date_visit` datetime DEFAULT NULL,
  `ph_site_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_page_analytics`
--

INSERT INTO `melis_cms_page_analytics` (`ph_id`, `ph_page_id`, `ph_session_id`, `ph_date_visit`, `ph_site_id`) VALUES
(1, 37, '908umk43qb4k2pd732a8v8l64p', '2019-07-09 20:37:05', 1),
(2, 38, 'rnsrna6djqcaoe8qjs4ako2bkh', '2019-07-10 00:18:13', 0),
(3, 39, '98a3e7j2aq5oplst731s53niih', '2019-07-10 00:26:32', 0),
(4, 38, '98a3e7j2aq5oplst731s53niih', '2019-07-10 00:26:48', 0),
(5, 40, 'vnreed39uip7kjh7prn01ead07', '2019-07-10 00:37:29', 3),
(6, 40, 'ofo1e9da8k0sh26qjhmttqojdo', '2019-07-10 00:38:01', 3),
(7, 2, 'vnreed39uip7kjh7prn01ead07', '2019-07-10 00:48:29', 1),
(8, 2, 'rnsrna6djqcaoe8qjs4ako2bkh', '2019-07-10 00:48:30', 1),
(9, 41, 'vnreed39uip7kjh7prn01ead07', '2019-07-10 00:51:13', 3),
(10, 2, 'ofo1e9da8k0sh26qjhmttqojdo', '2019-07-10 00:51:52', 1),
(11, 2, '98a3e7j2aq5oplst731s53niih', '2019-07-10 00:51:53', 1),
(12, 40, '0ou7k5lgn1uk03st4cfv0nrele', '2019-07-10 01:01:05', 3),
(13, 40, 'ju6l2ch698tktqfeqjccf52fqs', '2019-07-10 01:37:55', 3),
(14, 40, '82e10nivaisf7e87om71crnb1o', '2019-07-10 01:39:30', 3),
(15, 42, 'vnreed39uip7kjh7prn01ead07', '2019-07-10 01:53:19', 3),
(16, 40, '1388nti3bjf73cl5fhcflca5ms', '2019-07-10 02:15:54', 3),
(17, 40, 'bvjs3hlgv6ts24sg798ot82jhv', '2019-07-10 03:41:20', 3),
(18, 40, 'pvur3s144mi2keqfuafb58djjv', '2019-07-10 04:18:42', 3),
(19, 40, '39iichcvebf8r2ai186c1dn370', '2019-07-10 04:31:27', 3),
(20, 1, 'ak91tetvfuuifppncpjvvie8of', '2019-07-10 04:42:59', 1),
(21, 1, '3ekmkapi95t41l333tt5348kua', '2019-07-10 04:43:04', 1),
(22, 1, 'gssihd1nff59qlhcmk59funrba', '2019-07-10 05:41:08', 1),
(23, 40, 'o4chcibpmoknl7ahp3hnfq5puj', '2019-07-10 05:42:29', 3),
(24, 40, '4ptavirjlk2pqlv2sqen876tnf', '2019-07-10 05:44:12', 3),
(25, 41, '4ptavirjlk2pqlv2sqen876tnf', '2019-07-10 05:59:32', 3),
(26, 40, '07k8i731pbkhn30cb26k62dbrc', '2019-07-10 06:26:07', 3),
(27, 41, 'a200uchvud58ngjkurpq021coe', '2019-07-10 06:34:12', 3),
(28, 42, '4ptavirjlk2pqlv2sqen876tnf', '2019-07-10 06:38:26', 3),
(29, 41, 'o4chcibpmoknl7ahp3hnfq5puj', '2019-07-10 06:55:56', 3),
(30, 40, '0ajo8i6jpmtbb2ibp827g6a9oj', '2019-07-10 07:12:36', 3),
(31, 1, 'n26jbnpfkd1m69h7c15asv1bjl', '2019-07-10 08:11:11', 1),
(32, 1, 'mo8779ijuka60rtga71onb5gej', '2019-07-10 11:24:59', 1),
(33, 1, 'jl7qo8s2e74d94oamedqegqdq3', '2019-07-10 12:16:58', 1),
(34, 1, 'noonm5jrsac71ar4oqk0roigjr', '2019-07-10 12:28:07', 1),
(35, 1, 'dfjff5dtc7p7ut70fqscii318l', '2019-07-10 13:45:35', 1),
(36, 40, '15srcdsjc66ssvihu8ipl35bmv', '2019-07-10 14:02:41', 3),
(37, 40, 's0b5948bg5ti8k79aedlss1dm2', '2019-07-10 14:11:40', 3),
(38, 1, 'psn9mgmrpqoqvb0daitd6iugkn', '2019-07-10 15:06:14', 1),
(39, 1, 'ivimj6bi121p3vjlsg7vg8k193', '2019-07-10 17:46:24', 1),
(40, 1, 'da8ftj613bpa2ge1hf2659p2nn', '2019-07-10 18:13:03', 1),
(41, 1, '966ipt18ua7stvj6s20p4187c7', '2019-07-10 18:43:35', 1),
(42, 40, 'hsu60v8omjfotvfl2aoebst0r8', '2019-07-10 19:16:55', 3),
(43, 41, '24tiaivo47r1u57ko53cpethab', '2019-07-10 23:24:09', 3),
(44, 40, '6509la82aefom972ft86bhtf1q', '2019-07-10 23:34:53', 3),
(45, 40, '4i97sp55v2jpd8qregegbkskdd', '2019-07-11 00:27:38', 3),
(46, 2, '90fr23qk5d2jgskv2qcrmdqbva', '2019-07-11 00:29:49', 1),
(47, 40, '6509la82aefom972ft86bhtf1q', '2019-07-11 00:40:09', 3),
(48, 41, '6509la82aefom972ft86bhtf1q', '2019-07-11 00:40:13', 3),
(49, 1, '1ngpshvnakhveustn0nf7ch0tr', '2019-07-11 01:11:50', 1),
(50, 1, '6cjcsf7s305dd11lr6clkht8gs', '2019-07-11 01:21:25', 1),
(51, 40, '92d243cle7usafb0em6gsphm30', '2019-07-11 02:00:14', 3),
(52, 1, 'g2ir2f61s5d2uvmojgsc4rbeg2', '2019-07-11 03:04:32', 1),
(53, 1, 'nf8q2lg9mr3q3k5grooptj60gj', '2019-07-11 03:04:32', 1),
(54, 1, 'k2ing5p72b6g52oop13lh6r9sj', '2019-07-11 03:04:33', 1),
(55, 1, '63msjl509lsj11o6lhqijh474m', '2019-07-11 03:04:33', 1),
(56, 1, 'qbmntjt7lvs9a65751gb3goj6b', '2019-07-11 03:04:33', 1),
(57, 1, '3cu430554fcecdntndsf7fokva', '2019-07-11 03:04:34', 1),
(58, 1, '5efk3bjgcr004gncjgr4a9kmv1', '2019-07-11 03:04:34', 1),
(59, 1, 'hqahokbh6cnce8uki3k17etagv', '2019-07-11 03:04:34', 1),
(60, 1, 'qarvrmgdb561v01efac6k78bgu', '2019-07-11 03:04:35', 1),
(61, 1, 'ufceqeb6r56mkda1fbnmac8ano', '2019-07-11 03:04:35', 1),
(62, 47, '50hablt84s49ngvsigi5ec9117', '2019-07-11 04:19:40', 4),
(63, 47, 'oat78p29jsbu1gtn4iu61oonq2', '2019-07-11 04:33:23', 4),
(64, 52, 'oat78p29jsbu1gtn4iu61oonq2', '2019-07-11 04:39:02', 3),
(65, 52, '6509la82aefom972ft86bhtf1q', '2019-07-11 04:39:02', 3),
(66, 40, 'ju6l2ch698tktqfeqjccf52fqs', '2019-07-11 05:06:53', 3),
(67, 41, 'ju6l2ch698tktqfeqjccf52fqs', '2019-07-11 05:07:09', 3),
(68, 1, 'oat78p29jsbu1gtn4iu61oonq2', '2019-07-11 05:25:28', 1),
(69, 54, 'oat78p29jsbu1gtn4iu61oonq2', '2019-07-11 05:39:31', 5),
(70, 54, '3ljgpi1kvp1jrk1bjtq87in1nc', '2019-07-11 06:20:16', 5),
(71, 55, 'oat78p29jsbu1gtn4iu61oonq2', '2019-07-11 06:40:44', 5),
(72, 56, 'oat78p29jsbu1gtn4iu61oonq2', '2019-07-11 07:53:29', 5),
(73, 41, '80dkou4q23mjdr6mqq6taeaq1g', '2019-07-11 08:22:15', 3),
(74, 54, 'ilesc1rpkhgk8e47jnud444h42', '2019-07-11 08:50:02', 5),
(75, 1, 'bttn05ehmo5u458mute0cc1ki6', '2019-07-11 09:16:54', 1),
(76, 54, 'np2u51suak91gj23d91r9a5adu', '2019-07-11 12:25:39', 5),
(77, 54, 'evuavrdu6ghdmgfcpuj87u79d7', '2019-07-11 12:59:41', 5),
(78, 40, 'n7a79a23tgqghckl5o50ml1pc0', '2019-07-11 13:23:26', 3),
(79, 40, 'ef7otlk9vtjtahi0k4qtp2nksi', '2019-07-11 13:23:47', 3),
(80, 1, '978q529ebflhk8mcsoak5k7q65', '2019-07-11 13:56:17', 1),
(81, 54, 'ee6ul8pec5bslh22sirb2gknnv', '2019-07-11 14:20:52', 5),
(82, 54, '8iqtti74hhj3in8li8rlvnml3m', '2019-07-11 14:53:48', 5),
(83, 1, 'fnqr81vs9ushhqupcej3vidgeq', '2019-07-11 15:16:41', 1),
(84, 1, 'cmqsj4f062qptvsencgljdg5f4', '2019-07-11 18:20:35', 1),
(85, 1, 'cqaa2691a2gnuj3158vbaec0h6', '2019-07-11 18:20:35', 1),
(86, 1, 'p60ip9jjahns3ekr0ri5q9cnts', '2019-07-11 18:20:35', 1),
(87, 54, 's8fpkth8strqsgknfr129gdig2', '2019-07-11 18:37:23', 5),
(88, 1, '91aa8vh1t4uj7cvr35discac31', '2019-07-11 18:51:37', 1),
(89, 54, 'g0vp1hpkknv3kd50uslicu1fvh', '2019-07-11 21:23:21', 5),
(90, 40, '1polph8ef3q0i0b77hgsvekvnr', '2019-07-11 22:06:32', 3),
(91, 40, 'u828q2kv55dt70ek4dv2estlic', '2019-07-11 23:48:37', 3),
(92, 1, 'nfj33bvr4tk7l66nfabbshkuc0', '2019-07-12 01:44:13', 1),
(93, 40, 'ti2a8um8ve16112gedholf7c8p', '2019-07-12 01:55:01', 3),
(94, 1, 'a4ga41j45s466u4cc56hn6utvn', '2019-07-12 02:46:17', 1),
(95, 1, '4k429c3lk46f0flupgarn3p4ge', '2019-07-12 02:57:07', 1),
(96, 40, 'c717l3gd2bqho74g1ijk15b5tk', '2019-07-12 03:27:26', 3),
(97, 54, 'kf9of3emgdkmvlgprllql5gjgk', '2019-07-12 03:53:57', 5),
(98, 56, '963dfjv74nardu9kop9qvmp0mh', '2019-07-12 04:00:11', 5),
(99, 54, '1ftvb45c4899nqqtk4lg638hvp', '2019-07-12 04:19:44', 5),
(100, 40, 'vnhltg1lbl1e7vlm0fpktred76', '2019-07-12 04:31:30', 3),
(101, 41, 'a16i3sg74r3r01gknoc3t4pavc', '2019-07-12 04:32:16', 3),
(102, 42, 'r3332upb5cma7f96jp7ie51joo', '2019-07-12 04:34:05', 3),
(103, 1, 'lu5rsgf2ggaqe05mjui0or7kee', '2019-07-12 05:12:41', 1),
(104, 1, 'hsoghh8ih2pk936u0bhfloo2k6', '2019-07-12 05:16:09', 1),
(105, 40, 'd644kcgang3lstqv0jf45pr2fl', '2019-07-12 05:17:43', 3),
(106, 58, 'uu0cmfplma70hrsndc6eqi1ok2', '2019-07-12 05:32:35', 6),
(107, 40, 'er1pqrd1u2k53gqv27i4eecte2', '2019-07-12 06:21:47', 3),
(108, 1, 'uu0cmfplma70hrsndc6eqi1ok2', '2019-07-12 06:58:07', 1),
(109, 40, '0kbp6hjhe44gqqfcada7vd78dq', '2019-07-12 07:01:00', 3),
(110, 41, '0kbp6hjhe44gqqfcada7vd78dq', '2019-07-12 07:01:04', 3),
(111, 40, '500codsb8sk91lu8iarl160cqt', '2019-07-12 07:12:23', 3),
(112, 42, '0kbp6hjhe44gqqfcada7vd78dq', '2019-07-12 07:19:08', 3),
(113, 1, '7fvn97ik9ads8ttkm9fp7heqjv', '2019-07-12 07:56:13', 1),
(114, 1, 'rj6v032un6thbimqvcm44ipl5l', '2019-07-12 08:46:31', 1),
(115, 40, 'ke9bjs1a1beqvcp6mdllprnf7n', '2019-07-12 15:55:06', 3),
(116, 1, '7flf2ered4gc2ag383ib66bjfg', '2019-07-12 16:25:51', 1),
(117, 1, 'i54eoikfo25vd3gthf1qdgsgn5', '2019-07-12 17:45:31', 1),
(118, 1, '77hg6ckm5l3caj9rahn0uishas', '2019-07-12 18:39:46', 1),
(119, 1, '5jigvvu1o6kkjbbkmsorhrl09j', '2019-07-12 18:47:17', 1),
(120, 1, 'dba6rcf6muev43p5qomt8gi3d6', '2019-07-12 19:59:53', 1),
(121, 1, 'alm6r73qcrfpk1hpib3lh48a43', '2019-07-12 20:19:14', 1),
(122, 1, 'o3gh7bfnasjhef0fqhjgvm920j', '2019-07-12 20:57:05', 1),
(123, 1, 'm2btvc33glkuka2nbveb4e1jd4', '2019-07-12 22:10:15', 1),
(124, 1, 's22gqb0ajf27204cmqnd8na0g2', '2019-07-12 23:37:44', 1),
(125, 40, 'ss0q47cv7nqs5qu6l6sj721j74', '2019-07-12 23:59:32', 3),
(126, 1, 'dlhqfsghi1lpqc30almqm8953j', '2019-07-13 01:30:03', 1),
(127, 40, 'eq4s3h2pa6pc6cur7ptge0d25a', '2019-07-13 02:06:10', 3),
(128, 40, 'pdgiv9fcmsk00bi9i215mup4tr', '2019-07-13 02:37:56', 3),
(129, 1, 'bpkv7u41k80pcbj86c8oo41hgk', '2019-07-13 03:52:58', 1),
(130, 1, '88g35i8nrkkmkg8l3if81fjvgt', '2019-07-13 06:22:29', 1),
(131, 1, '8t5reki64p91sbl0h2elf2ecke', '2019-07-13 07:02:38', 1),
(132, 1, 'uuv064joddah35qoo2k374g8rt', '2019-07-13 09:15:09', 1),
(133, 1, 'uv59ha3l4m0c4pfdugpe4vfat1', '2019-07-13 09:55:19', 1),
(134, 40, 'cpq4f5dtmh1kl3ge2sru0ho8o0', '2019-07-13 10:28:39', 3),
(135, 1, '67rtjg03reemlqb7fdldl9vstm', '2019-07-13 10:37:26', 1),
(136, 1, 'fmjjh0fhs8u243eoi3j143mrt8', '2019-07-13 12:03:52', 1),
(137, 1, '5bk1skk3gn4bohntmdj7ah3vq1', '2019-07-13 12:36:58', 1),
(138, 1, 'o69ioie9f078ve515jajgl0aok', '2019-07-13 13:23:42', 1),
(139, 1, 'j9f10qf44fsdu9539cv5hi7lq7', '2019-07-13 14:09:34', 1),
(140, 1, 'i9q6f7jmf5ee5dj1gm1ejhu8b4', '2019-07-13 14:37:39', 1),
(141, 1, '1ftp0qbqn9dmsqr4du4vemd70t', '2019-07-13 15:21:25', 1),
(142, 1, '8sj75pe2vokfa0bdfv7dv795rl', '2019-07-13 17:05:17', 1),
(143, 40, '2j9uhdke5qdmc2pug3bhbhf5mh', '2019-07-13 18:26:09', 3),
(144, 1, '0co8oovtjhkhiqsj59pu0bod8b', '2019-07-13 18:59:29', 1),
(145, 1, '40oucfuu2ls96ehltmq0197mq0', '2019-07-13 18:59:38', 1),
(146, 1, 'tcf2gjakg44di7ld7die304lgg', '2019-07-13 20:51:48', 1),
(147, 1, 'sjj99nv5a3mi9b7128i1t8gpv9', '2019-07-13 21:20:23', 1),
(148, 40, 'duqgm8irrggae5p3aoq6h00k3l', '2019-07-13 21:31:30', 3),
(149, 40, 'ojm6acdlccr6ce6g1na8bpe83h', '2019-07-13 21:33:31', 3),
(150, 1, '954fs73q65ubml7rdfv05c38o7', '2019-07-13 22:25:55', 1),
(151, 40, '09lpgrghde7ngm0ofvppav7ojt', '2019-07-13 23:08:36', 3),
(152, 1, '38rk11r4g5k4vhv8iq779sqrq1', '2019-07-13 23:23:00', 1),
(153, 1, '0ofg6qclfpltibnebofiiooio2', '2019-07-14 01:27:55', 1),
(154, 1, 'hbkq8ut39ujnm1jgdj4fibsga7', '2019-07-14 01:27:59', 1),
(155, 1, 'fp2av80nvt66giaogqhtdagke3', '2019-07-14 01:28:02', 1),
(156, 1, '61vu8g2ie6evek5qkkerav9h18', '2019-07-14 01:28:05', 1),
(157, 40, '04ofnnsmjsodhd4mltnm93a9q5', '2019-07-14 02:14:56', 3),
(158, 1, 'dplq4ldsdnecncbt4c56ln1l5i', '2019-07-14 02:53:03', 1),
(159, 1, 'apn0c8nv01n7arh41vg35dsaov', '2019-07-14 04:39:03', 1),
(160, 41, 'ik5k7ojhiit1kkul1nev2cvc61', '2019-07-14 05:38:38', 3),
(161, 1, '0ftsjf3fcoovm75lgif1b4e5am', '2019-07-14 06:17:52', 1),
(162, 1, '3sn09nuiiugnjled64edo05d25', '2019-07-14 07:42:27', 1),
(163, 1, '8ks9374kdkgbi01mavpe0mopsv', '2019-07-14 07:47:29', 1),
(164, 1, 'sa825bmg2mkpqr3bcs0u4cbpck', '2019-07-14 08:44:01', 1),
(165, 41, 'ssla3u0kmkee7mdhku650dr249', '2019-07-14 10:05:49', 3),
(166, 1, 'horvkiufiscuuakesnitmkgmag', '2019-07-14 13:33:53', 1),
(167, 41, 'heegfra8tlg8v3hluihpuepbn9', '2019-07-14 13:34:06', 3),
(168, 40, 'ma75okuc5pntintjna3ojcfqiq', '2019-07-14 14:00:16', 3),
(169, 1, 'b9gf73mk8pl73k3df1j1qg22vn', '2019-07-14 15:07:38', 1),
(170, 1, 'gc3cvitd35kjn4vpvjopoeb4qe', '2019-07-14 15:28:31', 1),
(171, 1, 'uv1g97lkvunhf9uaagfc0t2f75', '2019-07-14 15:48:10', 1),
(172, 40, '8i6e2vtpbvf9746lc8rs383djn', '2019-07-14 17:05:53', 3),
(173, 1, '8bbg54a0p83r1vvlvsjno487vu', '2019-07-14 18:00:30', 1),
(174, 40, '4gkd6bmuk9a0boq55jitl20pvc', '2019-07-14 18:23:55', 3),
(175, 1, '7a9cntnti2k03q4jd8c725f82k', '2019-07-14 19:01:38', 1),
(176, 40, 'n7d5he5ecp7vrlodf7t3t3b36p', '2019-07-14 20:01:37', 3),
(177, 40, 'bptarq2j9sen9blf1vl7gfsto6', '2019-07-14 20:25:04', 3),
(178, 1, 'mtae8umrlm9rf2joq2986qkqso', '2019-07-14 20:26:41', 1),
(179, 1, 'ovupaa5b0j3l0lu085c2e56l26', '2019-07-14 20:51:51', 1),
(180, 1, '1bfogsucus7ki6vaol91i82jvp', '2019-07-14 21:23:22', 1),
(181, 40, 'pnj9dar2ce93msvbcnnbfin7mf', '2019-07-14 23:30:58', 3),
(182, 41, 'pnj9dar2ce93msvbcnnbfin7mf', '2019-07-14 23:31:07', 3),
(183, 42, 'pnj9dar2ce93msvbcnnbfin7mf', '2019-07-14 23:31:14', 3),
(184, 2, 'ljhme06st03hmubgbkl9cq3uoj', '2019-07-14 23:31:56', 1),
(185, 3, 'ljhme06st03hmubgbkl9cq3uoj', '2019-07-14 23:33:04', 1),
(186, 1, 'dk492rodu10dig7uh81ge780rj', '2019-07-15 00:00:39', 1),
(187, 40, 'pnj9dar2ce93msvbcnnbfin7mf', '2019-07-15 00:14:47', 3),
(188, 41, 'pnj9dar2ce93msvbcnnbfin7mf', '2019-07-15 00:14:49', 3),
(189, 42, 'pnj9dar2ce93msvbcnnbfin7mf', '2019-07-15 00:14:59', 3),
(190, 40, 'jcf44bvqt601d64drvn8vlrhs8', '2019-07-15 01:48:21', 3),
(191, 1, 'btpc4f4ogr1srumvp7voeharvc', '2019-07-15 01:50:20', 1),
(192, 40, '5io0r3cafkn0uvoi1ddc8r0efi', '2019-07-15 01:50:20', 3),
(193, 1, 'vl8sruok9c2hk5f4nuf2si6lks', '2019-07-15 01:50:20', 1),
(194, 1, '9g6e92l7r2orrm3cvu2qien2p4', '2019-07-15 01:50:21', 1),
(195, 40, '84uuh7ddbkbug17b6smdu34rrn', '2019-07-15 02:10:35', 3),
(196, 40, '1n5il5gkd29n0itglcha1jsagq', '2019-07-15 02:10:36', 3),
(197, 40, 'e8ijkisrsggglj5p7n62ud7tc4', '2019-07-15 02:10:37', 3),
(198, 40, '0d1dpi2kprovuot5grd1e7c30q', '2019-07-15 02:10:39', 3),
(199, 14, 'pnj9dar2ce93msvbcnnbfin7mf', '2019-07-15 02:56:12', 1),
(200, 14, 'ljhme06st03hmubgbkl9cq3uoj', '2019-07-15 02:56:14', 1),
(201, 40, 'itgmbn16476aektjbpgoit7cci', '2019-07-15 03:11:13', 3),
(202, 1, 'merih69h2n4hq7bov6k9dr7t7m', '2019-07-15 03:17:58', 1),
(203, 1, 'c0k7pb86322dcvbg2ohvv81del', '2019-07-15 03:44:36', 1),
(204, 40, '93pqi45tnbph22dr4aap0goc15', '2019-07-15 03:51:18', 3),
(205, 1, 'dl0cbikpvhdckvmqbqgv9epuia', '2019-07-15 03:51:48', 1),
(206, 40, 'amnhrtlbqulu52irdgk874sbt8', '2019-07-15 04:40:42', 3),
(207, 40, 'k1c614n5bbeb0po3sq29hjnihn', '2019-07-15 06:34:59', 3),
(208, 41, 'k1c614n5bbeb0po3sq29hjnihn', '2019-07-15 06:50:41', 3),
(209, 1, '8pq5h21o981mmb0vklb3i5u9cq', '2019-07-15 08:13:05', 1),
(210, 1, '1ee66mnp1dlo7hq7br0djgiph9', '2019-07-15 08:31:49', 1),
(211, 40, 'e6dc7hjerekriejfhv9rlnd991', '2019-07-15 09:18:20', 3),
(212, 1, '7sa98fhouqikku6favnmrltjo3', '2019-07-15 09:23:31', 1),
(213, 1, 'l5kdcgduuvt9j2okg2cdgfq8do', '2019-07-15 09:37:23', 1),
(214, 40, 'fkfthjmmu2jv4v2u664s69fsql', '2019-07-15 11:01:15', 3),
(215, 1, 'loj92j2kj1fvko2s76g3psuaej', '2019-07-15 11:21:26', 1),
(216, 1, '9q8h1377afp8r7lv9bu13u8i2k', '2019-07-15 11:37:06', 1),
(217, 1, 'eo33kbhmp9nb80pl19klf7tqe8', '2019-07-15 12:34:43', 1),
(218, 1, '190vqp3g2kjpthsv5qjusojkkf', '2019-07-15 13:19:58', 1),
(219, 1, 'p2vsvtjaqejvln9osabvhut1qu', '2019-07-15 13:20:28', 1),
(220, 1, 'jc05pqd9dvdoli5g407125v647', '2019-07-15 13:20:30', 1),
(221, 1, '9sni5djc0h2lq5q0proa7ih03a', '2019-07-15 14:55:32', 1),
(222, 1, '90ro3hkdt23djv6n1v8oafjtaq', '2019-07-15 15:16:24', 1),
(223, 1, '8lii8417rrpkpb2t0idvq4402t', '2019-07-15 17:52:40', 1),
(224, 1, 'uirp3rp664i7hpfk3kh5jsfang', '2019-07-15 17:58:36', 1),
(225, 1, 'v47p00t55ll3dosv5u29c44glg', '2019-07-15 19:09:55', 1),
(226, 41, 'dqg7hha2anj9n0fhb7pfqusi2k', '2019-07-15 20:22:13', 3),
(227, 40, '1lq259qmotroj0gpdhoo1koklp', '2019-07-15 22:55:37', 3),
(228, 1, 'kim50d9tk5sqas5nvlobvnuiuu', '2019-07-15 23:06:26', 1),
(229, 40, '31r1gfg28fom28icp4sfao8rdm', '2019-07-15 23:24:30', 3),
(230, 1, 'ob254idrs9hcjo0p1p5m8kk9v4', '2019-07-16 00:02:52', 1),
(231, 40, 'bi56rfto1t9447a2rdksgefk3l', '2019-07-16 00:26:42', 3),
(232, 40, 'kmjhdq6jdr0bk60k897h52qn5h', '2019-07-16 02:32:29', 3),
(233, 1, '9i10hii9476nm3imsj0qthmbvi', '2019-07-16 02:32:58', 1),
(234, 40, 'k8vi34mdrephcahf44hg40o9ab', '2019-07-16 03:56:09', 3),
(235, 1, 'e5rl9ofgpvga9e87n8t7hdfju9', '2019-07-16 04:12:27', 1),
(236, 40, '40r3brp11epg007rkoibg6n7et', '2019-07-16 04:12:31', 3),
(237, 1, 'n7v4af5ogur5fa70e7b6fmsa6e', '2019-07-16 04:16:51', 1),
(238, 40, 'edgc04ie8p0vci51u0se0bg751', '2019-07-16 05:32:43', 3),
(239, 70, 'c2aap0s9h6tdgd03pfjtkerk75', '2019-07-16 07:27:07', 9),
(240, 68, 'c2aap0s9h6tdgd03pfjtkerk75', '2019-07-16 07:27:11', 9),
(241, 40, '3lq9jh7djlbg9g76hqj1d7ki0t', '2019-07-16 08:09:02', 3),
(242, 41, '3lq9jh7djlbg9g76hqj1d7ki0t', '2019-07-16 08:09:06', 3),
(243, 42, '3lq9jh7djlbg9g76hqj1d7ki0t', '2019-07-16 08:09:11', 3),
(244, 1, 'csstv8hcaegckcl0krg1e42224', '2019-07-16 10:28:32', 1),
(245, 40, 'ebi52spl1d2apkmbr1cmi85s23', '2019-07-16 10:30:04', 3),
(246, 37, 'qiscsejq2tpffm5auiso7lgu41', '2019-07-16 11:05:54', 1),
(247, 68, 'nuh320hb1thd90b2l4s72m7kma', '2019-07-16 12:19:07', 9),
(248, 40, 'cl4ent180o92k0mm3no254ptkc', '2019-07-16 12:27:54', 3),
(249, 1, 'lgfo0qnnr9vinaojfv2uoeqvht', '2019-07-16 13:15:57', 1),
(250, 1, 'cr0bs7vhh8p2lku8hblfek9jmi', '2019-07-16 13:56:15', 1),
(251, 1, 'c47ceu38bjri9ptgcs3dktdgkj', '2019-07-16 14:14:58', 1),
(252, 68, 'rii03k6e443ub6ddiod0g50nrg', '2019-07-16 14:32:54', 9),
(253, 1, 'b304hn7fcn1fsg2kmov4b963gk', '2019-07-16 15:09:04', 1),
(254, 1, '7ipc567k385h4g5uo6ilu4j4em', '2019-07-16 15:29:41', 1),
(255, 1, 'fddkdnr7od429skaruvlm4vjuo', '2019-07-16 15:32:49', 1),
(256, 1, 'hig4lmp8ticgj6ri8go3jdfq1d', '2019-07-16 15:52:37', 1),
(257, 68, '88387vpi2rn7nk5sr179uojcmj', '2019-07-16 17:43:32', 9),
(258, 1, '1igkqone58vk30gr3vbk5phve4', '2019-07-16 18:30:43', 1),
(259, 68, '7d67ops5lq1n0am89m4r646nh6', '2019-07-16 20:17:26', 9),
(260, 40, 'mqp7f7hcmmosunmemvpmm85qmr', '2019-07-17 00:27:56', 3),
(261, 68, 'k38ubm51l82k5k30sj4p7b89h9', '2019-07-17 00:32:24', 9),
(262, 68, '51pka5b87hg5arj5elegrjkg2n', '2019-07-17 00:32:24', 9),
(263, 80, 'kjv154a6br6l8mm0lmpra7km9h', '2019-07-17 00:56:09', 19),
(264, 81, 'kjv154a6br6l8mm0lmpra7km9h', '2019-07-17 00:57:04', 19),
(265, 1, 'kjv154a6br6l8mm0lmpra7km9h', '2019-07-17 01:30:06', 1),
(266, 88, 'kjv154a6br6l8mm0lmpra7km9h', '2019-07-17 01:49:13', 21),
(267, 89, 'kjv154a6br6l8mm0lmpra7km9h', '2019-07-17 01:49:21', 21),
(268, 40, 'bk0nl3n3e0fmj108rk1i9gft2g', '2019-07-17 02:25:29', 3),
(269, 40, 'ju6l2ch698tktqfeqjccf52fqs', '2019-07-17 04:32:49', 3),
(270, 37, 'uugv3l7lq5e5lflqo6psjonvhn', '2019-07-17 04:43:41', 1),
(271, 41, 'ju6l2ch698tktqfeqjccf52fqs', '2019-07-17 05:04:01', 3),
(272, 40, 'meibd55mgimir0a5esj78jpav4', '2019-07-17 05:27:08', 3),
(273, 41, 'meibd55mgimir0a5esj78jpav4', '2019-07-17 05:31:26', 3),
(274, 42, 'meibd55mgimir0a5esj78jpav4', '2019-07-17 05:31:31', 3),
(275, 42, 'ju6l2ch698tktqfeqjccf52fqs', '2019-07-17 05:48:40', 3),
(276, 96, 'hbumgq2k5g8oltbt4ipgtej896', '2019-07-17 06:23:30', 23),
(277, 97, 'hbumgq2k5g8oltbt4ipgtej896', '2019-07-17 06:41:57', 23),
(278, 98, 'hbumgq2k5g8oltbt4ipgtej896', '2019-07-17 07:11:02', 23),
(279, 96, 'a9dpp7td39b1kammft97f966bf', '2019-07-17 07:14:03', 23),
(280, 96, 'meibd55mgimir0a5esj78jpav4', '2019-07-17 07:47:40', 23),
(281, 96, 'u50tmbao9a8k6adku844be67ip', '2019-07-17 08:16:05', 23),
(282, 1, '5vfkrq7jjenip2dfens74bmag9', '2019-07-17 09:47:35', 1),
(283, 96, 'qj6rc2ku95vep7oucird4f981m', '2019-07-17 09:56:06', 23),
(284, 1, 'c4i1v2qdnl164qrh1ckqmei3nl', '2019-07-17 10:27:30', 1),
(285, 1, 'i3i1ishqlc1ckcdv28ndndcdcb', '2019-07-17 10:46:32', 1),
(286, 1, '4nl6k7ia21f47mlrb5lop2mm5n', '2019-07-17 11:24:41', 1),
(287, 1, '6khst7jg36t1g7bnekcpl4e148', '2019-07-17 14:46:59', 1),
(288, 1, 'da0mluhl1heatj6845la50ju8h', '2019-07-17 14:55:23', 1),
(289, 1, 'utoo7qlqkbm6jesjm431kdcdci', '2019-07-17 15:11:01', 1),
(290, 1, '5kcr0n3u21ahq3bf0vvvf7nj5e', '2019-07-17 17:41:19', 1),
(291, 1, 'q2bl2uaccabak2mm11l1rt4j3b', '2019-07-17 19:33:54', 1),
(292, 96, 'dp9cddb8em81m7qigo7gratqv7', '2019-07-17 20:36:30', 23),
(293, 1, 'ijn3u6k1g0idekmebtr3mctut1', '2019-07-17 20:45:25', 1),
(294, 1, 'ka6vplu3pqtfk1e1taenlibbp9', '2019-07-17 21:55:37', 1),
(295, 96, 'nfkp9poc3t1plstrmpb7em2h85', '2019-07-17 21:55:38', 23),
(296, 97, 'nfkp9poc3t1plstrmpb7em2h85', '2019-07-17 21:55:39', 23),
(297, 98, 'nfkp9poc3t1plstrmpb7em2h85', '2019-07-17 21:55:40', 23),
(298, 1, 'kpbvooqm7rkt0pgdulkfkp6b6q', '2019-07-17 22:07:40', 1),
(299, 96, 'gack4paqgenu3lupp1gpebbda4', '2019-07-17 22:25:17', 23),
(300, 96, 'gpq5qnolni6r978rfossqi7b1s', '2019-07-17 22:25:29', 23),
(301, 1, '0navstnmc6trgiemqgmeikjr4h', '2019-07-17 23:04:23', 1),
(302, 96, '94gojncha8nklis63pfhojbm7u', '2019-07-17 23:06:25', 23),
(303, 96, 'mksn8bst9dcgclj53glp8a98ej', '2019-07-17 23:59:06', 23),
(304, 1, 'n7pruualem97ob9lphiosvvbv4', '2019-07-18 00:14:46', 1),
(305, 96, 'ck1b61khtlu5nhqv54n9k54h71', '2019-07-18 00:25:28', 23),
(306, 1, 'j3o321ll54alk89u60ljgukote', '2019-07-18 00:58:14', 1),
(307, 96, '65jmcpubg7uoq7iisj8dri817e', '2019-07-18 01:39:30', 23),
(308, 96, '4omeadvd338hiha6cp5if10t00', '2019-07-18 02:00:56', 23),
(309, 96, '61lkaitq9351cnhcm17pqccpan', '2019-07-18 04:39:06', 23),
(310, 99, 'o8d402coa03e1p5n3pspuegg32', '2019-07-18 04:41:03', 23),
(311, 1, 'm9ieu9rhtl795h4tg4r55575rl', '2019-07-18 04:56:41', 1),
(312, 1, '6vkb585t8piild88rndorqrgcp', '2019-07-18 05:56:50', 1),
(313, 1, '1jad5018vj8miulishhgln9k5f', '2019-07-18 08:24:18', 1),
(314, 1, 'e2mp649aoc0p6merhpptjqslhc', '2019-07-18 09:23:32', 1),
(315, 1, '0jpep0bknejt31asrflk26sp3v', '2019-07-18 10:07:47', 1),
(316, 1, 'h1bdulnm182rpej59td44dffn3', '2019-07-18 11:35:18', 1),
(317, 96, 'gsp0rlgkj7csie5tfalckfeoa8', '2019-07-18 12:03:25', 23),
(318, 1, 'gip0nfh5c2s8cdk5gm49e1um5e', '2019-07-18 12:59:43', 1),
(319, 1, 't21mfvvkosn56f06iepem8kt65', '2019-07-18 13:56:55', 1),
(320, 1, 'vtcmuvjraof7hualjco7p1fcbt', '2019-07-18 14:57:40', 1),
(321, 1, 'eetjcid4c0b0k1jf00qo6ulq7j', '2019-07-18 18:14:57', 1),
(322, 1, 'uc9848snha00n9a8n9pe509293', '2019-07-18 18:48:05', 1),
(323, 2, 'p1e3ilv5djpge0ig3v6knjd139', '2019-07-19 00:01:28', 1),
(324, 1, 'a5gf6gpq1hud1scjjhf5kle7mq', '2019-07-19 00:04:37', 1),
(325, 1, 'jok5ktmc8a3iir7cjv7gt41f16', '2019-07-19 00:37:04', 1),
(326, 1, 'ohcr3ep4dhv535fnrp7lttmqej', '2019-07-19 00:37:33', 1),
(327, 1, '74c07a1kct0nu8o93h7q3t2t6d', '2019-07-19 01:33:50', 1),
(328, 96, 'm9bk1n5mrsaojiqscol8amil75', '2019-07-19 02:13:35', 23),
(329, 96, 'damqet196ske3d3667vegeia16', '2019-07-19 03:07:38', 23),
(330, 96, 'ebquii3245jin4aubqrdg0m5qh', '2019-07-19 03:39:06', 23),
(331, 99, 'qa3mfbhab0bck20mmkhqedqvg7', '2019-07-19 03:39:24', 23),
(332, 1, '14oe777q5s34psgggb973mgsb6', '2019-07-19 03:40:58', 1),
(333, 99, 'vj73j8onp6uon1rkrb5l2hka7h', '2019-07-19 05:34:35', 23),
(334, 96, 'c1fsdm3rado6edefn3us76ss62', '2019-07-19 05:36:58', 23),
(335, 1, 'og1241j18fjlalp2odit23hg7f', '2019-07-19 05:37:49', 1),
(336, 1, 'mfa99sokh8i6evjc49vprircfb', '2019-07-19 10:59:39', 1),
(337, 1, 'j2974aku3bkmlud5c4q5pf3omk', '2019-07-19 14:22:16', 1),
(338, 96, '0lsfrq7rnn8lhfntpg0i3ej785', '2019-07-19 14:43:31', 23),
(339, 1, 'g560pm8msd38capfp48roos45p', '2019-07-19 15:01:41', 1),
(340, 1, 'rjl895r0lvomq6o7hqmrpm7lqc', '2019-07-19 15:39:24', 1),
(341, 96, '40kr7m4phj4e9jbfj8aj63r258', '2019-07-19 16:43:22', 23),
(342, 1, 'n29e4e6rr3t002stfmlep81p8q', '2019-07-19 17:48:37', 1),
(343, 1, 'hjeltm0rml492l7pe0i901lj83', '2019-07-19 18:15:28', 1),
(344, 1, 'fqd877llil69e8e27c2nqh7edl', '2019-07-19 19:30:31', 1),
(345, 1, '2u4o6503bun0pnf32v092jiku1', '2019-07-19 19:47:47', 1),
(346, 96, 'rnn1ljri7o3p4gta227d6cc23e', '2019-07-19 20:06:35', 23),
(347, 37, 'nglqq9vsjnecsct36flq2ki7lm', '2019-07-23 01:43:15', 1),
(348, 100, 'nqnqdftcf2c4jv536ejuihbece', '2019-07-24 01:57:47', 24),
(349, 37, 'al300gbpj3o8j2vitm0v0ef6l5', '2019-07-24 01:58:25', 1),
(350, 116, 'al300gbpj3o8j2vitm0v0ef6l5', '2019-07-24 02:10:45', 1),
(351, 100, '3bj2rjptd522bgcklifrjlg1f0', '2019-07-24 23:31:12', 24),
(352, 117, '3bj2rjptd522bgcklifrjlg1f0', '2019-07-24 23:37:01', 28),
(353, 37, 'gd487c0kmbtd5jumk3lsumkbvp', '2019-07-24 23:57:50', 1),
(354, 117, '3bj2rjptd522bgcklifrjlg1f0', '2019-07-25 00:18:24', 28),
(355, 120, '3bj2rjptd522bgcklifrjlg1f0', '2019-07-25 02:39:03', 28),
(356, 118, '3bj2rjptd522bgcklifrjlg1f0', '2019-07-25 05:18:35', 28),
(357, 138, '2spkgsscs6unujgor49qfro9a5', '2019-07-29 04:56:23', 33),
(358, 138, '3ljgpi1kvp1jrk1bjtq87in1nc', '2019-07-29 05:24:34', 33),
(359, 139, '2spkgsscs6unujgor49qfro9a5', '2019-07-29 05:33:20', 33),
(360, 138, '9ctql4n032e6rm3eqlccbuv7p3', '2019-07-29 05:38:00', 33),
(361, 1, 'kk64uvkqkmjdpcj6n9r63fq8po', '2019-07-30 02:13:48', 1),
(362, 162, 'b6g3i1689j78ldnk8i5qn42rsd', '2019-07-30 02:14:24', 45),
(363, 162, 'd5n5rqveubnpm6um1h7bthu5t5', '2019-07-30 04:05:12', 45),
(364, 162, '9ctql4n032e6rm3eqlccbuv7p3', '2019-07-30 06:13:47', 45),
(365, 1, 'ojchq91l9h5u6f4r4al0n0ppsh', '2019-07-30 06:23:02', 1),
(366, 162, 'rmu3jf2mlhnchleqcdb23avn5f', '2019-07-30 06:23:16', 45),
(367, 1, 'b6g3i1689j78ldnk8i5qn42rsd', '2019-07-30 06:55:05', 1),
(368, 170, 'b6g3i1689j78ldnk8i5qn42rsd', '2019-07-30 07:00:38', 47),
(369, 170, 'rmu3jf2mlhnchleqcdb23avn5f', '2019-07-30 07:09:57', 47),
(370, 174, '9ctql4n032e6rm3eqlccbuv7p3', '2019-07-31 01:00:12', 48),
(371, 37, 'cac84t02mhrfaavs2ikdn3iu1h', '2019-07-31 12:18:45', 1),
(372, 37, '081uiu8spihrgua66nhr9m2mgn', '2019-07-31 12:20:16', 1),
(373, 174, 'u788v78rdf4kvmfsbrdnsvf8uk', '2019-08-01 00:05:47', 48),
(374, 174, '1sb50e2fcls3eboqmbvhp8rb62', '2019-08-01 00:51:16', 48),
(375, 37, '2mkvhud16hfm895oia8adj7b0m', '2019-08-01 07:24:50', 1),
(376, 226, '061gmtg4dbbvsjcmuqi93i1dgu', '2019-08-13 05:35:40', 101),
(377, 1, '7oae27819th5rgeu9an46q39e2', '2019-08-13 07:09:09', 1),
(378, 1, 'v1teueuuui2li60d2tosvpgsi3', '2019-08-13 07:09:27', 1),
(379, 226, 's8bupp2nigfurqlote0v7k173m', '2019-08-13 07:09:43', 101),
(380, 1, 'cn8d6mopfslidqbelbaju7kf3l', '2019-08-13 07:10:12', 1),
(381, 1, 'rmm9e15r6op0c4afva92d7o3b4', '2019-08-13 07:11:01', 1),
(382, 226, 'h6g5o3823vm8gtpqoljfounejd', '2019-08-13 07:11:59', 101),
(383, 226, 'dakqkt6illob85n9utpbbnm7a1', '2019-08-13 07:12:17', 101),
(384, 226, '8fq15tnqstabgm1vdqjihc6sf8', '2019-08-13 07:12:39', 101),
(385, 226, 'k30ja2jspnjcj4et66pauldajr', '2019-08-13 07:14:03', 101),
(386, 226, 'ps3dhl6hri8aij1b1r2g2iidfc', '2019-08-13 23:56:52', 101),
(387, 226, '7733k0ofcqolnilc4d3vb5qk3e', '2019-08-14 02:24:33', 101),
(388, 230, 'es8gpdcolcalsk371i6ushdnti', '2019-08-15 02:13:35', 102),
(389, 231, '4kih1j1mtkli9algr3fpducflf', '2019-08-15 02:21:00', 102),
(390, 230, '4kih1j1mtkli9algr3fpducflf', '2019-08-15 02:41:48', 102),
(391, 230, 'j0hlrtksk9fi4rdf2c5th8tcdh', '2019-08-15 02:42:40', 102),
(392, 230, 'gnf34fcs6ppsrocush7dk282jg', '2019-08-15 02:58:01', 102),
(393, 1, 'j0hlrtksk9fi4rdf2c5th8tcdh', '2019-08-15 05:17:56', 1),
(394, 37, 'lcjqtflhuo0jo5lsq1mrii373u', '2019-08-15 05:17:58', 1),
(395, 234, 'gnf34fcs6ppsrocush7dk282jg', '2019-08-15 05:34:41', 103),
(396, 234, '4kih1j1mtkli9algr3fpducflf', '2019-08-15 05:40:43', 103),
(397, 234, 'j0hlrtksk9fi4rdf2c5th8tcdh', '2019-08-15 06:21:40', 103),
(398, 234, '6kje1man7fkejcv52dn69vqr0h', '2019-08-15 06:21:44', 103),
(399, 234, 'msuf04ohrkob727gh43mhj78ep', '2019-08-16 00:00:34', 103),
(400, 234, 'hb1265h42nelneff4hst645a4n', '2019-08-18 23:42:41', 103),
(401, 234, 'hb1265h42nelneff4hst645a4n', '2019-08-19 00:07:33', 103),
(402, 235, 'hb1265h42nelneff4hst645a4n', '2019-08-19 00:38:17', 103),
(403, 236, 'hb1265h42nelneff4hst645a4n', '2019-08-19 01:35:34', 103),
(404, 234, '0q6mte4946acl24o13emkgjbnr', '2019-08-19 02:43:43', 103),
(405, 235, '0q6mte4946acl24o13emkgjbnr', '2019-08-19 02:43:48', 103),
(406, 236, '0q6mte4946acl24o13emkgjbnr', '2019-08-19 02:43:56', 103),
(407, 234, 'd68vv4f3fp0mqfn3fot8v2t554', '2019-08-19 04:54:32', 103),
(408, 236, 'd68vv4f3fp0mqfn3fot8v2t554', '2019-08-19 04:54:37', 103),
(409, 235, 'd68vv4f3fp0mqfn3fot8v2t554', '2019-08-19 05:30:18', 103),
(410, 242, 'pob5u17357s4is1d0covvfvb1s', '2019-08-20 00:52:27', 105),
(411, 1, 'pob5u17357s4is1d0covvfvb1s', '2019-08-20 01:50:05', 1),
(412, 246, 'delnokrhj1ttvj19ujdbo590uq', '2019-08-20 03:59:11', 106),
(413, 246, 'g57o61o8tmkmmqgp29ranlai2f', '2019-08-20 03:59:12', 106),
(414, 246, 'f7iktaip3e7o4knkdc3r3jc01f', '2019-08-20 04:11:02', 106),
(415, 250, 'dcdnug396v0g278b9e6pnn1bu9', '2019-08-20 04:45:39', 107),
(416, 250, 'f7iktaip3e7o4knkdc3r3jc01f', '2019-08-20 04:45:50', 107),
(417, 251, 'f7iktaip3e7o4knkdc3r3jc01f', '2019-08-20 04:55:28', 107),
(418, 1, '3qfcr2bq57fl8u1j7e59k3121o', '2019-08-20 18:37:31', 1),
(419, 250, '67m0ea1oh5l60qik3hg03263p1', '2019-08-20 21:57:04', 107),
(420, 37, 'q2sht8v2ubbg8c14ujom1851mr', '2019-08-21 13:57:44', 1),
(421, 254, 'umbe1e9cjf8mcnuck3l42j4sb9', '2019-08-22 01:40:46', 108),
(422, 255, 'umbe1e9cjf8mcnuck3l42j4sb9', '2019-08-22 01:42:18', 108),
(423, 37, 'psjekottsfi9g457polu5ffoqd', '2019-08-22 05:03:08', 1),
(424, 1, 'h2kjisga6j03ppssh95aotbvvj', '2019-08-22 07:27:04', 1),
(425, 1, '1oo6btj7b37qu36imspjh0a0ee', '2019-08-22 07:27:08', 1),
(426, 1, '1pajbmrum906s6npeluoj65bm4', '2019-08-22 07:29:28', 1),
(427, 1, 'ff9aij8v8veqqo3ij5oeus0icu', '2019-08-23 06:17:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_analytics_data`
--

CREATE TABLE `melis_cms_page_analytics_data` (
  `pad_id` int(11) NOT NULL,
  `pad_site_id` int(11) NOT NULL,
  `pad_analytics_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_analytics_data_settings`
--

CREATE TABLE `melis_cms_page_analytics_data_settings` (
  `pads_id` int(11) NOT NULL,
  `pads_site_id` int(11) NOT NULL,
  `pads_analytics_key` varchar(100) NOT NULL,
  `pads_settings` longtext,
  `pads_js_analytics` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_default_urls`
--

CREATE TABLE `melis_cms_page_default_urls` (
  `purl_page_id` int(11) NOT NULL,
  `purl_page_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table saves the URLs of all pages, avoiding generation on demand by juste requesting it';

--
-- Dumping data for table `melis_cms_page_default_urls`
--

INSERT INTO `melis_cms_page_default_urls` (`purl_page_id`, `purl_page_url`) VALUES
(1, '/'),
(2, '/news/id/2'),
(3, '/news/news-details/id/3'),
(4, '/our-designs/id/4'),
(5, '/our-designs/pants/id/5'),
(6, '/our-designs/pants/jaker/id/6'),
(7, '/our-designs/pants/duchesse/id/7'),
(8, '/our-designs/pants/velour/id/8'),
(9, '/our-designs/pants/streester/id/9'),
(10, '/our-designs/pants/glany/id/10'),
(11, '/our-designs/pants/grimy/id/11'),
(12, '/our-designs/suits/id/12'),
(13, '/our-designs/suits/domna/id/13'),
(14, '/our-designs/suits/fuerza/id/14'),
(15, '/our-designs/suits/galant/id/15'),
(16, '/our-designs/suits/scoop/id/16'),
(17, '/our-designs/shoes/id/17'),
(18, '/our-designs/shoes/mounster/id/18'),
(19, '/our-designs/shoes/regalo/id/19'),
(20, '/our-designs/shoes/zekker/id/20'),
(21, '/our-designs/shoes/slany/id/21'),
(22, '/our-designs/shoes/tripknot/id/22'),
(23, '/our-designs/sunglasses/id/23'),
(24, '/our-designs/sunglasses/cliff/id/24'),
(25, '/our-designs/sunglasses/molgan/id/25'),
(26, '/our-designs/sunglasses/revrex/id/26'),
(27, '/our-designs/sunglasses/greekster/id/27'),
(28, '/our-designs/sunglasses/yoopla/id/28'),
(29, '/about-us/id/29'),
(30, '/contact-us/id/30'),
(31, '/melis-demo-cms/id/31'),
(32, '/search-results/id/32'),
(33, '/melis-demo-cms/id/33'),
(34, '/testimonial-1/id/34'),
(35, '/testimonial-2/id/35'),
(36, '/testimonial-3/id/36'),
(37, '/id/37'),
(38, '/id/38'),
(39, '/id/39'),
(40, '/id/40'),
(41, '/id/41'),
(42, '/id/42'),
(43, '/id/43'),
(44, '/id/44'),
(45, '/id/45'),
(46, '/id/46'),
(47, '/id/47'),
(48, '/id/48'),
(49, '/id/49'),
(50, '/id/50'),
(51, '/id/51'),
(52, '/id/52'),
(53, '/id/53'),
(54, '/id/54'),
(55, '/id/55'),
(56, '/id/56'),
(57, '/id/57'),
(58, '/id/58'),
(59, '/id/59'),
(60, '/id/60'),
(61, '/id/61'),
(62, '/id/62'),
(63, '/id/63'),
(64, '/id/64'),
(65, '/id/65'),
(66, '/id/66'),
(67, '/id/67'),
(68, '/id/68'),
(69, '/id/69'),
(70, '/id/70'),
(71, '/id/71'),
(72, '/id/72'),
(73, '/id/73'),
(74, '/id/74'),
(75, '/id/75'),
(76, '/id/76'),
(77, '/id/77'),
(78, '/id/78'),
(79, '/id/79'),
(80, '/id/80'),
(81, '/id/81'),
(82, '/id/82'),
(83, '/id/83'),
(84, '/id/84'),
(85, '/id/85'),
(86, '/id/86'),
(87, '/id/87'),
(88, '/id/88'),
(89, '/id/89'),
(90, '/id/90'),
(91, '/id/91'),
(92, '/id/92'),
(93, '/id/93'),
(94, '/id/94'),
(95, '/id/95'),
(96, '/id/96'),
(97, '/id/97'),
(98, '/id/98'),
(99, '/id/99'),
(100, '/id/100'),
(101, '/id/101'),
(102, '/id/102'),
(103, '/id/103'),
(104, '/id/104'),
(105, '/id/105'),
(106, '/id/106'),
(107, '/id/107'),
(108, '/id/108'),
(109, '/id/109'),
(111, '/id/111'),
(112, '/id/112'),
(113, '/id/113'),
(114, '/id/114'),
(115, '/id/115'),
(116, '/id/116'),
(117, '/id/117'),
(118, '/id/118'),
(119, '/id/119'),
(120, '/id/120'),
(121, '/id/121'),
(122, '/id/122'),
(123, '/id/123'),
(124, '/id/124'),
(125, '/id/125'),
(126, '/id/126'),
(127, '/id/127'),
(128, '/id/128'),
(129, '/id/129'),
(130, '/id/130'),
(131, '/id/131'),
(132, '/id/132'),
(133, '/id/133'),
(134, '/id/134'),
(135, '/id/135'),
(136, '/id/136'),
(137, '/id/137'),
(138, '/id/138'),
(139, '/id/139'),
(140, '/id/140'),
(141, '/id/141'),
(142, '/id/142'),
(143, '/id/143'),
(144, '/id/144'),
(145, '/id/145'),
(146, '/id/146'),
(147, '/id/147'),
(148, '/id/148'),
(149, '/id/149'),
(150, '/id/150'),
(151, '/id/151'),
(152, '/id/152'),
(153, '/id/153'),
(154, '/id/154'),
(155, '/id/155'),
(156, '/id/156'),
(157, '/id/157'),
(158, '/id/158'),
(159, '/id/159'),
(160, '/id/160'),
(161, '/id/161'),
(162, '/id/162'),
(163, '/id/163'),
(164, '/id/164'),
(165, '/id/165'),
(166, '/id/166'),
(167, '/id/167'),
(168, '/id/168'),
(169, '/id/169'),
(170, '/id/170'),
(171, '/id/171'),
(172, '/id/172'),
(173, '/id/173'),
(174, '/id/174'),
(175, '/id/175'),
(176, '/id/176'),
(177, '/id/177'),
(178, '/id/178'),
(179, '/id/179'),
(180, '/id/180'),
(181, '/id/181'),
(184, '/id/184'),
(185, '/id/185'),
(188, '/id/188'),
(189, '/id/189'),
(192, '/id/192'),
(193, '/id/193'),
(194, '/id/194'),
(195, '/id/195'),
(197, '/id/197'),
(198, '/id/198'),
(200, '/id/200'),
(201, '/id/201'),
(202, '/id/202'),
(203, '/id/203'),
(204, '/id/204'),
(205, '/id/205'),
(206, '/id/206'),
(207, '/id/207'),
(208, '/id/208'),
(210, '/id/210'),
(211, '/id/211'),
(212, '/id/212'),
(213, '/id/213'),
(214, '/id/214'),
(215, '/id/215'),
(216, '/id/216'),
(217, '/id/217'),
(218, '/id/218'),
(219, '/id/219'),
(220, '/id/220'),
(221, '/id/221'),
(222, '/id/222'),
(223, '/id/223'),
(224, '/id/224'),
(225, '/id/225'),
(226, '/id/226'),
(227, '/id/227'),
(228, '/id/228'),
(229, '/id/229'),
(230, '/id/230'),
(231, '/id/231'),
(232, '/id/232'),
(233, '/id/233'),
(234, '/id/234'),
(235, '/id/235'),
(236, '/id/236'),
(237, '/id/237'),
(238, '/id/238'),
(239, '/id/239'),
(240, '/id/240'),
(241, '/id/241'),
(242, '/id/242'),
(243, '/id/243'),
(244, '/id/244'),
(245, '/id/245'),
(246, '/id/246'),
(247, '/id/247'),
(248, '/id/248'),
(249, '/id/249'),
(250, '/id/250'),
(251, '/id/251'),
(252, '/id/252'),
(253, '/id/253'),
(254, '/'),
(255, '/blog/id/255'),
(256, '/blog/blog-details/id/256'),
(257, '/rose-ethridge/id/257'),
(258, '/id/258'),
(259, '/id/259'),
(260, '/id/260'),
(261, '/id/261'),
(262, '/'),
(263, '/blog/id/263'),
(264, '/blog/blog-details/id/264'),
(266, '/'),
(267, '/blog/id/267'),
(268, '/blog/blog-details/id/268'),
(270, '/id/270'),
(271, '/id/271'),
(272, '/id/272'),
(273, '/id/273');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_lang`
--

CREATE TABLE `melis_cms_page_lang` (
  `plang_id` int(11) NOT NULL,
  `plang_page_id` int(11) NOT NULL,
  `plang_lang_id` int(11) NOT NULL,
  `plang_page_id_initial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relation between pages and lang';

--
-- Dumping data for table `melis_cms_page_lang`
--

INSERT INTO `melis_cms_page_lang` (`plang_id`, `plang_page_id`, `plang_lang_id`, `plang_page_id_initial`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3),
(4, 4, 1, 4),
(5, 5, 1, 5),
(6, 6, 1, 6),
(7, 7, 1, 7),
(8, 8, 1, 8),
(9, 9, 1, 9),
(10, 10, 1, 10),
(11, 11, 1, 11),
(12, 12, 1, 12),
(13, 13, 1, 13),
(14, 14, 1, 14),
(15, 15, 1, 15),
(16, 16, 1, 16),
(17, 17, 1, 17),
(18, 18, 1, 18),
(19, 19, 1, 19),
(20, 20, 1, 20),
(21, 21, 1, 21),
(22, 22, 1, 22),
(23, 23, 1, 23),
(24, 24, 1, 24),
(25, 25, 1, 25),
(26, 26, 1, 26),
(27, 27, 1, 27),
(28, 28, 1, 28),
(29, 29, 1, 29),
(30, 30, 1, 30),
(31, 31, 1, 31),
(32, 32, 1, 32),
(33, 33, 1, 33),
(34, 34, 1, 34),
(35, 35, 1, 35),
(36, 36, 1, 36),
(37, 37, 1, 37),
(110, 110, 1, 110),
(196, 182, 1, 182),
(197, 183, 1, 183),
(200, 186, 1, 186),
(201, 187, 1, 187),
(204, 190, 1, 190),
(205, 191, 1, 191),
(240, 196, 1, 196),
(243, 199, 1, 199),
(272, 209, 1, 209),
(324, 254, 1, 254),
(325, 255, 1, 255),
(326, 256, 1, 256),
(327, 257, 1, 257),
(332, 262, 1, 262),
(333, 263, 1, 263),
(334, 264, 1, 264),
(335, 265, 1, 265),
(336, 266, 1, 266),
(337, 267, 1, 267),
(338, 268, 1, 268),
(339, 269, 1, 269);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_published`
--

CREATE TABLE `melis_cms_page_published` (
  `page_id` int(11) NOT NULL,
  `page_type` enum('SITE','FOLDER','PAGE','NEWSLETTER') NOT NULL DEFAULT 'PAGE',
  `page_status` tinyint(4) NOT NULL DEFAULT '1',
  `page_menu` enum('LINK','NOLINK','NONE') NOT NULL DEFAULT 'LINK',
  `page_name` varchar(255) NOT NULL,
  `page_tpl_id` int(11) NOT NULL,
  `page_content` longtext,
  `page_taxonomy` text,
  `page_creation_date` datetime DEFAULT NULL,
  `page_edit_date` datetime DEFAULT NULL,
  `page_last_user_id` int(11) DEFAULT NULL,
  `page_search_type` varchar(60) NOT NULL DEFAULT 'tr_meliscms_page_tab_properties_search_type_option1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of published pages';

--
-- Dumping data for table `melis_cms_page_published`
--

INSERT INTO `melis_cms_page_published` (`page_id`, `page_type`, `page_status`, `page_menu`, `page_name`, `page_tpl_id`, `page_content`, `page_taxonomy`, `page_creation_date`, `page_edit_date`, `page_last_user_id`, `page_search_type`) VALUES
(1, 'SITE', 1, 'LINK', 'Melis Demo CMS', 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">\n	<melisTag id=\"contactform_001\"><![CDATA[Your name *]]></melisTag>\n	<melisTag id=\"contactform_002\"><![CDATA[Your email address *]]></melisTag>\n	<melisTag id=\"contactform_003\"><![CDATA[Subject]]></melisTag>\n	<melisTag id=\"contactform_004\"><![CDATA[Message *]]></melisTag>\n	<melisTag id=\"contacttext_001\"><![CDATA[Get in <strong>touch</strong>]]></melisTag>\n	<melisTag id=\"contacttext_002\"><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus.]]></melisTag>\n	<melisTag id=\"contacttext_003\"><![CDATA[The <strong>Office</strong>]]></melisTag>\n	<melisTag id=\"contacttext_004\"><![CDATA[<ul class=\"list-unstyled\">              <li><i class=\"icon icon-map-marker\"></i> <strong>Address:</strong> 1234 Street Name, City Name, United States</li>              <li><i class=\"icon icon-phone\"></i> <strong>Phone:</strong> (123) 456-7890</li>             <li><i class=\"icon icon-envelope\"></i> <strong>Email:</strong> <a href=\"mailto:mail@example.com\">mail@example.com</a></li>          </ul>]]></melisTag>\n	<melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag>\n	<melisTag id=\"footer_text_1\"><![CDATA[<ul><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-pin-drop\"></i></div><div class=\"contact-text\"><p><span>4, rue du Dahomey<br />75011 Paris, France</span><span><br /></span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-email-open\"></i></div><div class=\"contact-text\"><p><span>contact@melistechnology.com</span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-phone-paused\"></i></div><div class=\"contact-text\"><p><span>(+33) 972 386 280</span><span><br /></span></p></div></li></ul>]]></melisTag>\n	<melisTag id=\"footer_title_2\"><![CDATA[menu]]></melisTag>\n	<melisTag id=\"footer_text_2\"><![CDATA[<ul><li><a href=\"/\">Home</a></li><li><a href=\"/home/news/id/2\">News</a></li><li><a href=\"/home/our-designs/id/4\">Our designs</a></li><li><a href=\"/home/about-us/id/29\">About us</a></li><li><a href=\"/home/contact-us/id/30\">Contact us</a></li></ul>]]></melisTag>\n	<melisTag id=\"footer_title_3\"><![CDATA[InstaGram]]></melisTag>\n	<melisTag id=\"homepage_line_1\"><![CDATA[<div class=\"delivery-service-area ptb-30\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-3 col-sm-6 col-xs-12\"><div class=\"single-service shadow-box text-center\"><img src=\"/MelisDemoCms/images/icons/live.png\" caption=\"false\" data-mce-src=\"/MelisDemoCms/images/icons/live.png\"><h5>Fashion show live</h5></div></div><div class=\"col-md-3 col-sm-6 col-xs-12\"><div class=\"single-service shadow-box text-center\"><img src=\"/MelisDemoCms/images/icons/chat.png\" caption=\"false\" data-mce-src=\"/MelisDemoCms/images/icons/chat.png\"><h5>Chat with a star !</h5></div></div><div class=\"col-md-3 col-sm-6 col-xs-12\"><div class=\"single-service shadow-box text-center\"><img src=\"/MelisDemoCms/images/icons/news.png\" caption=\"false\" data-mce-src=\"/MelisDemoCms/images/icons/news.png\"><h5>Last minute news</h5></div></div><div class=\"col-md-3 col-sm-6 col-xs-12\"><div class=\"single-service shadow-box text-center\"><img src=\"/MelisDemoCms/images/icons/trending.png\" caption=\"false\" data-mce-src=\"/MelisDemoCms/images/icons/trending.png\"><h5>Ultimate trending</h5></div></div></div></div></div>]]></melisTag>\n	<melisTag id=\"homepage_line_2\"><![CDATA[<div class=\"blog-area pb-70\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-12 col-sm-8 col-xs-12\"><div class=\"single-blog-body\"><div class=\"single-blog sb-2 mb-30\"><div class=\"blog-content\"><div class=\"blog-title\"><h5 class=\"uppercase font-bold\"><a href=\"/melis-demo-cms/our-designs/id/4\" data-mce-href=\"/melis-demo-cms/our-designs/id/4\">The ultimate trend of 2017<br></a><br data-mce-bogus=\"1\"></h5><div class=\"blog-text\"><p>There are many variations of passages of Lorem Ipsum available, but the majority suffered alteration in some form, by injected humour, or random ised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum. <br><br>generators on the Internet tend to repeat predefined chunks as necessary. There are many variations of passages of Lorem Ipsum available the Internet tend to repeat predefined chunks as necessary. There are many variations of passages of Lorem Ipsum available</p></div></div><div class=\"blockqot mtb-30\"><blockquote><p>There are many variations of passages of Lorem Ipsum available, but majority have suffered alteration in some form, by injected humour. There are many variations of passages of Lorem Ipsum available, but the majorit. There are many variations of passages of Lorem Ipsum available, but the majorit.</p></blockquote></div></div></div></div></div></div></div></div>]]></melisTag>\n	<melisTag id=\"homepage_news_title\"><![CDATA[News]]></melisTag>\n	<melisTag id=\"homepage_testimonial_title\"><![CDATA[Testimonial]]></melisTag>\n	<melisTag id=\"footer_text_3\"><![CDATA[<div class=\"instagrm\"><ul><li><a href=\"#\"><img src=\"/MelisDemoCms/images/gallery/01.jpg\" alt=\"\" /></a></li><li><a href=\"#\"><img src=\"/MelisDemoCms/images/gallery/02.jpg\" alt=\"\" /></a></li><li><a href=\"#\"><img src=\"/MelisDemoCms/images/gallery/03.jpg\" alt=\"\" /></a></li><li><a href=\"#\"><img src=\"/MelisDemoCms/images/gallery/04.jpg\" alt=\"\" /></a></li><li><a href=\"#\"><img src=\"/MelisDemoCms/images/gallery/05.jpg\" alt=\"\" /></a></li><li><a href=\"#\"><img src=\"/MelisDemoCms/images/gallery/06.jpg\" alt=\"\" /></a></li></ul></div>]]></melisTag>\n	<melisTag id=\"footer_title_4\"><![CDATA[Social Network]]></melisTag>\n	<melisTag id=\"homepage_line_3\"><![CDATA[<h5 class=\"uppercase font-bold\"><a href=\"/home/news/news-details/id/3?newsId=1\" data-mce-href=\"/home/news/news-details/id/3?newsId=1\">Fashion show OBscuria in PARIS this spring 2017 !</a><br data-mce-bogus=\"1\"></h5><div class=\"blog-text\"><p>There are many variations of passages of Lorem Ipsum available, but the majority suffered alteration in some form, by injected humour, or random ised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum. <br><br>generators on the Internet tend to repeat predefined chunks as necessary. There are many variations of passages of Lorem Ipsum available the Internet tend to repeat predefined chunks as necessary. There are many variations of passages of Lorem Ipsum available</p></div>]]></melisTag>\n	<melisTag id=\"homepage_line_4\"><![CDATA[<h5 class=\"uppercase font-bold\"><a href=\"/home/our-designs/suits/suit-3/id/14\" data-mce-href=\"/home/our-designs/suits/suit-3/id/14\">The flagship product of 2016</a><br data-mce-bogus=\"1\"></h5><div class=\"blog-text\"><p>There are many variations of passages of Lorem Ipsum available, but the majority suffered alteration in some form, by injected humour, or random ised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum. <br><br>generators on the Internet tend to repeat predefined chunks as necessary. There are many variations of passages of Lorem Ipsum available the Internet tend to repeat predefined chunks as necessary. There are many variations of passages of Lorem Ipsum available</p></div>]]></melisTag>\n	<melisTag id=\"homepage_line_3_img\"><![CDATA[<img class=\"img-responsive\" src=\"/MelisDemoCms/images/news/N01.jpg\"/>]]></melisTag>\n	<melisTag id=\"homepage_line_4_img\"><![CDATA[<img class=\"img-responsive\" src=\"/MelisDemoCms/images/product/shoes/03/03.jpg\" caption=\"false\" data-mce-src=\"/MelisDemoCms/images/product/shoes/03/03.jpg\">]]></melisTag>\n</document>', '', NULL, '2019-07-10 00:25:01', 3, 'tr_meliscms_page_tab_properties_search_type_option1'),
(2, 'PAGE', 1, 'LINK', 'News', 2, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"contactform_001\"><![CDATA[Your name *]]></melisTag>   <melisTag id=\"contactform_002\"><![CDATA[Your email address *]]></melisTag>  <melisTag id=\"contactform_003\"><![CDATA[Subject]]></melisTag>   <melisTag id=\"contactform_004\"><![CDATA[Message *]]></melisTag> <melisTag id=\"contacttext_001\"><![CDATA[Get in <strong>touch</strong>]]></melisTag> <melisTag id=\"contacttext_002\"><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus.]]></melisTag> <melisTag id=\"contacttext_003\"><![CDATA[The <strong>Office</strong>]]></melisTag>   <melisTag id=\"contacttext_004\"><![CDATA[<ul class=\"list-unstyled\">              <li><i class=\"icon icon-map-marker\"></i> <strong>Address:</strong> 1234 Street Name, City Name, United States</li>              <li><i class=\"icon icon-phone\"></i> <strong>Phone:</strong> (123) 456-7890</li>             <li><i class=\"icon icon-envelope\"></i> <strong>Email:</strong> <a href=\"mailto:mail@example.com\">mail@example.com</a></li>          </ul>]]></melisTag> <melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag> <melisTag id=\"footer_text_1\"><![CDATA[<ul><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-pin-drop\"></i><br></div><div class=\"contact-text\"><p><span>777/a Seventh Street,</span> <span>Rampura, Bonosri</span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-email-open\"></i><br></div><div class=\"contact-text\"><p><span><a href=\"#\" data-mce-href=\"#\">company@gmail.com</a></span> <span><a href=\"#\" data-mce-href=\"#\">admin@devitems.com</a></span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-phone-paused\"></i><br></div><div class=\"contact-text\"><p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p></div></li></ul>]]></melisTag>  <melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag>    <melisTag id=\"footer_text_2\"><![CDATA[<li><a href=\"#\">My Account</a></li>                                                <li><a href=\"#\">Order History</a></li>                                                <li><a href=\"#\">Wishlist</a></li>                                                <li><a href=\"#\">Returnes</a></li>                                                <li><a href=\"#\">Private Policy</a></li>                                                <li><a href=\"#\">Site Map</a></li>]]></melisTag> <melisTag id=\"footer_title_3\"><![CDATA[InstaGram]]></melisTag>  <melisTag id=\"header_title\"><![CDATA[News]]></melisTag> <melisTag id=\"header_subtitle\"><![CDATA[News]]></melisTag>  <melisTag id=\"header_image\"><![CDATA[<img src=\"/MelisDemoCms/images/bg/news.jpg\" caption=\"false\" height=\"50\" width=\"240\" />]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(3, 'PAGE', 1, 'LINK', 'News Details', 3, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"contactform_001\"><![CDATA[Your name *]]></melisTag>   <melisTag id=\"contactform_002\"><![CDATA[Your email address *]]></melisTag>  <melisTag id=\"contactform_003\"><![CDATA[Subject]]></melisTag>   <melisTag id=\"contactform_004\"><![CDATA[Message *]]></melisTag> <melisTag id=\"contacttext_001\"><![CDATA[Get in <strong>touch</strong>]]></melisTag> <melisTag id=\"contacttext_002\"><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus.]]></melisTag> <melisTag id=\"contacttext_003\"><![CDATA[The <strong>Office</strong>]]></melisTag>   <melisTag id=\"contacttext_004\"><![CDATA[<ul class=\"list-unstyled\">              <li><i class=\"icon icon-map-marker\"></i> <strong>Address:</strong> 1234 Street Name, City Name, United States</li>              <li><i class=\"icon icon-phone\"></i> <strong>Phone:</strong> (123) 456-7890</li>             <li><i class=\"icon icon-envelope\"></i> <strong>Email:</strong> <a href=\"mailto:mail@example.com\">mail@example.com</a></li>          </ul>]]></melisTag> <melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag> <melisTag id=\"footer_text_1\"><![CDATA[<ul>                                        <li>                                            <div class=\"contact-icon\">                                               <i class=\"zmdi zmdi-pin-drop\"></i>                                          </div>                                            <div class=\"contact-text\">                                                <p><span>777/a  Seventh Street,</span> <span>Rampura, Bonosri</span></p>                                            </div>                                        </li>                                        <li>                                            <div class=\"contact-icon\"> <i class=\"zmdi zmdi-email-open\"></i> </div>                                            <div class=\"contact-text\">                                                <p><span><a href=\"#\">company@gmail.com</a></span> <span><a href=\"#\">admin@devitems.com</a></span></p>                                            </div>                                        </li>                                        <li>                                            <div class=\"contact-icon\"> <i class=\"zmdi zmdi-phone-paused\"></i> </div>                                            <div class=\"contact-text\">                                                <p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p>                                            </div>                                        </li>                                    </ul>]]></melisTag>    <melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag>    <melisTag id=\"footer_text_2\"><![CDATA[<li><a href=\"#\">My Account</a></li>                                                <li><a href=\"#\">Order History</a></li>                                                <li><a href=\"#\">Wishlist</a></li>                                                <li><a href=\"#\">Returnes</a></li>                                                <li><a href=\"#\">Private Policy</a></li>                                                <li><a href=\"#\">Site Map</a></li>]]></melisTag> <melisTag id=\"footer_title_3\"><![CDATA[InstaGram]]></melisTag>  <melisTag id=\"header_image\"><![CDATA[<img src=\"/MelisDemoCms/images/bg/news.jpg\" caption=\"false\" height=\"29\" width=\"229\" />]]></melisTag>   <melisTag id=\"header_title\"><![CDATA[News]]></melisTag> <melisTag id=\"latest_news_title\"><![CDATA[Latest news]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(4, 'PAGE', 1, 'LINK', 'Our designs', 4, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"content_subtitle\"><![CDATA[Our designs]]></melisTag>  <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/pants/id/5\">New style pants</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/suits/id/12\">men\'s fashion suits</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\" /></div></div></div>]]></melisTag>   <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/03.jpg\" alt=\"\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/shoes/id/17\">trending shoes</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"header_image\"><![CDATA[<img src=\"/MelisDemoCms/images/bg/designs.jpg\" caption=\"false\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\" height=\"29\" width=\"229\">]]></melisTag>   <melisTag id=\"content_text_4\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/id/23\">Summer sunglasses</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/04/02.jpg\" caption=\"false\" height=\" \" width=\" \" /></div></div></div>]]></melisTag>    <melisTag id=\"content_text_5\"><![CDATA[&nbsp;]]></melisTag> <melisTag id=\"content_text_6\"><![CDATA[]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(5, 'PAGE', 1, 'LINK', 'Pants', 4, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[pants]]></melisTag>    <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/pants/01/03.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/pants/jaker/id/6\">jaker</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>  <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/pants/duchesse/id/7\">duchesse</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/03.jpg\" /></div></div></div>]]></melisTag> <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/pants/03/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/pants/velour/id/8\">velour</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"content_text_6\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/pants/grimy/id/11\">grimy</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/pants/06/03.jpg\" /></div></div></div>]]></melisTag> <melisTag id=\"content_text_5\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/pants/05/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/pants/glany/id/10\">glany</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag> <melisTag id=\"content_text_4\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/pants/streester/id/9\">streester</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/pants/04/01.jpg\" /></div></div></div>]]></melisTag>  <melisTag id=\"header_image\"><![CDATA[<img src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\" caption=\"false\">]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(6, 'PAGE', 1, 'LINK', 'Jaker', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"header_subtitle\"><![CDATA[<h5 class=\"uppercase\">pants</h5>]]></melisTag>  <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/pants/p01.jpg\" caption=\"false\" height=\" \" width=\" \" data-mce-src=\"/MelisDemoCms/images/team/pants/p01.jpg\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Jaker]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[sweet collection]]></melisTag>    <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag>    <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(7, 'PAGE', 1, 'LINK', 'Duchesse', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/01.jpg\"></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/02.jpg\"></div></div></div>]]></melisTag>    <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/03.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/03.jpg\"></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"header_subtitle\"><![CDATA[<h5 class=\"uppercase\">pants</h5>]]></melisTag>  <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/pants/p02.jpg\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Duchesse]]></melisTag>    <melisTag id=\"content_subtitle2\"><![CDATA[sweet collection]]></melisTag>    <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag>    <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(8, 'PAGE', 1, 'LINK', 'Velour', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"header_subtitle\"><![CDATA[<h5 class=\"uppercase\">pants</h5>]]></melisTag>  <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/pants/p03.jpg\" />]]></melisTag>   <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Velour]]></melisTag>  <melisTag id=\"content_subtitle2\"><![CDATA[sweet collection]]></melisTag>    <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag>    <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(9, 'PAGE', 1, 'LINK', 'Streester', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[pants 4]]></melisTag>  <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag> <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\" /></div></div></div>]]></melisTag> <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/03.jpg\" alt=\"\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag> <melisTag id=\"header_subtitle\"><![CDATA[<h5 class=\"uppercase\">pants</h5>]]></melisTag>  <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/pants/p04.jpg\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Streester]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[Blain collection]]></melisTag>    <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(10, 'PAGE', 1, 'LINK', 'Glany', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/01.jpg\"></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/02.jpg\"></div></div></div>]]></melisTag>    <melisTag id=\"header_subtitle\"><![CDATA[<h5 class=\"uppercase\">pants</h5>]]></melisTag>  <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/pants/p05.jpg\" />]]></melisTag>   <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Glany]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[<span class=\"product-price\">Blain collection</span>]]></melisTag> <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(11, 'PAGE', 1, 'LINK', 'Grimy', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"header_subtitle\"><![CDATA[pants]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/pants/p06.jpg\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Grimy]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[Blain collection]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1');
INSERT INTO `melis_cms_page_published` (`page_id`, `page_type`, `page_status`, `page_menu`, `page_name`, `page_tpl_id`, `page_content`, `page_taxonomy`, `page_creation_date`, `page_edit_date`, `page_last_user_id`, `page_search_type`) VALUES
(12, 'PAGE', 1, 'LINK', 'Suits', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[suits]]></melisTag>    <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/suits/01/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/suits/domna/id/13\">Domna</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag> <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/suits/fuerza/id/14\">fuerza</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/suits/03/03.jpg\" /></div></div></div>]]></melisTag>   <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/suits/05/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/suits/galant/id/15\">Galant</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>   <melisTag id=\"content_text_4\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/suits/scoop/id/16\">scoop</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/suits/06/03.jpg\" /></div></div></div>]]></melisTag> <melisTag id=\"content_text_5\"><![CDATA[]]></melisTag>   <melisTag id=\"content_text_6\"><![CDATA[]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(13, 'PAGE', 1, 'LINK', 'Domna', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[suits 1]]></melisTag>  <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/01.jpg\"></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/02.jpg\"></div></div></div>]]></melisTag>    <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/03.jpg\" alt=\"\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag> <melisTag id=\"content_text_4\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/04.jpg\" alt=\"\" /></div></div></div>]]></melisTag> <melisTag id=\"content_text_5\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/05.jpg\" alt=\"\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag> <melisTag id=\"content_text_6\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/06.jpg\" alt=\"\" /></div></div></div>]]></melisTag> <melisTag id=\"header_subtitle\"><![CDATA[<h5 class=\"uppercase\">suits</h5>]]></melisTag>  <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/suits/p01.jpg\" />]]></melisTag>   <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Domna]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[Class Selection]]></melisTag> <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(14, 'PAGE', 1, 'LINK', 'Fuerza', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[suit 2]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/01.jpg\"></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/02.jpg\"></div></div></div>]]></melisTag>    <melisTag id=\"header_subtitle\"><![CDATA[<h5 class=\"uppercase\">suits</h5>]]></melisTag>  <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/suits/p02.jpg\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Fuerza]]></melisTag>  <melisTag id=\"content_subtitle2\"><![CDATA[Class Selection]]></melisTag> <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(15, 'PAGE', 1, 'LINK', 'Galant', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"header_subtitle\"><![CDATA[<h5 class=\"uppercase\">suits</h5>]]></melisTag>  <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/suits/p03.jpg\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Galant]]></melisTag>  <melisTag id=\"content_subtitle2\"><![CDATA[Class Selection]]></melisTag> <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(16, 'PAGE', 1, 'LINK', 'Scoop', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"header_subtitle\"><![CDATA[suits]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/suits/p04.jpg\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[scoop]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[class selection]]></melisTag> <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(17, 'PAGE', 1, 'LINK', 'Shoes', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[shoes]]></melisTag>    <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/shoes/01/04.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/shoes/mounster/id/18\">Mounster</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/shoes/regalo/id/19\">regalo</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/shoes/02/01.jpg\" /></div></div></div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[shoes]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/branding.png\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/team/branding.png\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_text_4\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/shoes/slany/id/21\">Slany</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/shoes/04/03.jpg\" /></div></div></div>]]></melisTag> <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/shoes/03/03.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/shoes/zekker/id/20\">Zekker</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>   <melisTag id=\"content_text_5\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/shoes/05/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/shoes/tripknot/id/22\">tripknot</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>   <melisTag id=\"content_text_6\"><![CDATA[]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(18, 'PAGE', 1, 'LINK', 'Mounster', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/01.jpg\"></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>    <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\">Brand Cortta</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/product/02.jpg\"></div></div></div>]]></melisTag>    <melisTag id=\"header_subtitle\"><![CDATA[shoes]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/shoes/p01.jpg\" data-mce-src=\"/MelisDemoCms/images/team/shoes/p01.jpg\">]]></melisTag>  <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Mounster]]></melisTag>    <melisTag id=\"content_subtitle2\"><![CDATA[Envy Style]]></melisTag>  <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(19, 'PAGE', 1, 'LINK', 'Regalo', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[shoes]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/shoes/p02.jpg\" data-mce-src=\"/MelisDemoCms/images/team/shoes/p02.jpg\">]]></melisTag>  <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Regalo]]></melisTag>  <melisTag id=\"content_subtitle2\"><![CDATA[Envy Style]]></melisTag>  <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(20, 'PAGE', 1, 'LINK', 'Zekker', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" />]]></melisTag> <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[shoes]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/shoes/p03.jpg\"/>]]></melisTag>    <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Zekker]]></melisTag>  <melisTag id=\"content_subtitle2\"><![CDATA[Envy Style]]></melisTag>  <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(21, 'PAGE', 1, 'LINK', 'Slany', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[shoes]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/shoes/p04.jpg\" data-mce-src=\"/MelisDemoCms/images/team/shoes/p04.jpg\">]]></melisTag>  <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Slany]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[Envy Style]]></melisTag>  <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1');
INSERT INTO `melis_cms_page_published` (`page_id`, `page_type`, `page_status`, `page_menu`, `page_name`, `page_tpl_id`, `page_content`, `page_taxonomy`, `page_creation_date`, `page_edit_date`, `page_last_user_id`, `page_search_type`) VALUES
(22, 'PAGE', 1, 'LINK', 'Tripknot', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag> <melisTag id=\"footer_text_1\"><![CDATA[<ul>                                        <li>                                            <div class=\"contact-icon\">                                               <i class=\"zmdi zmdi-pin-drop\"></i>                                          </div>                                            <div class=\"contact-text\">                                                <p><span>777/a  Seventh Street,</span> <span>Rampura, Bonosri</span></p>                                            </div>                                        </li>                                        <li>                                            <div class=\"contact-icon\"> <i class=\"zmdi zmdi-email-open\"></i> </div>                                            <div class=\"contact-text\">                                                <p><span><a href=\"#\">company@gmail.com</a></span> <span><a href=\"#\">admin@devitems.com</a></span></p>                                            </div>                                        </li>                                        <li>                                            <div class=\"contact-icon\"> <i class=\"zmdi zmdi-phone-paused\"></i> </div>                                            <div class=\"contact-text\">                                                <p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p>                                            </div>                                        </li>                                    </ul>]]></melisTag>    <melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag>    <melisTag id=\"footer_text_2\"><![CDATA[<li><a href=\"#\">My Account</a></li>                                                <li><a href=\"#\">Order History</a></li>                                                <li><a href=\"#\">Wishlist</a></li>                                                <li><a href=\"#\">Returnes</a></li>                                                <li><a href=\"#\">Private Policy</a></li>                                                <li><a href=\"#\">Site Map</a></li>]]></melisTag> <melisTag id=\"footer_title_3\"><![CDATA[InstaGram]]></melisTag>  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[shoes 5]]></melisTag>   <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/shoes/p05.jpg\" />]]></melisTag>   <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Tripknot]]></melisTag>    <melisTag id=\"content_subtitle2\"><![CDATA[Envy Style]]></melisTag>  <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(23, 'PAGE', 1, 'LINK', 'Sunglasses', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[sunglasses]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/01/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/cliff/id/24\">cliff</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/molgan/id/25\">Molgan</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/02/03.jpg\" /></div></div></div>]]></melisTag> <melisTag id=\"header_subtitle\"><![CDATA[Brand Product]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/branding.png\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/team/branding.png\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/03/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/revrex/id/26\">Revrex</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag> <melisTag id=\"content_text_4\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/greekster/id/27\">greekster</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/04/01.jpg\" /></div></div></div>]]></melisTag>   <melisTag id=\"content_text_5\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/05/02.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/yopla/id/28\">Yopla</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>   <melisTag id=\"content_text_6\"><![CDATA[]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(24, 'PAGE', 1, 'LINK', 'Cliff', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[sunglasses]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/01/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/cliff/id/24\">cliff</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/molgan/id/25\">Molgan</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/02/03.jpg\" /></div></div></div>]]></melisTag> <melisTag id=\"header_subtitle\"><![CDATA[Brand Product]]></melisTag> <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/branding.png\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/team/branding.png\">]]></melisTag> <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/03/01.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/revrex/id/26\">Revrex</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag> <melisTag id=\"content_text_4\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/greekster/id/27\">greekster</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/04/01.jpg\" /></div></div></div>]]></melisTag>   <melisTag id=\"content_text_5\"><![CDATA[<div class=\"show-product row\"><div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\"><div class=\"brand-img text-center\"><img src=\"/MelisDemoCms/images/product/sunglasses/05/02.jpg\" /></div></div><div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\"><div class=\"show-product-description\"><h6 class=\"sp-category\">New Fashion</h6><h2 class=\"uppercase montserrat\"><a href=\"/our-designs/sunglasses/yopla/id/28\">Yopla</a></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div></div></div>]]></melisTag>   <melisTag id=\"content_text_6\"><![CDATA[]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(25, 'PAGE', 1, 'LINK', 'Molgan', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[sunglasses]]></melisTag>    <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/sunglasses/p02.jpg\">]]></melisTag>    <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Molgan]]></melisTag>  <melisTag id=\"content_subtitle2\"><![CDATA[<span class=\"product-price\">Summer set</span>]]></melisTag>   <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(26, 'PAGE', 1, 'LINK', 'Revrex', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>   <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[accessories 3]]></melisTag>    <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[sunglasses]]></melisTag>    <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/sunglasses/p03.jpg\"/>]]></melisTag>   <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Revrex]]></melisTag>  <melisTag id=\"content_subtitle2\"><![CDATA[Summer set]]></melisTag>  <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(27, 'PAGE', 1, 'LINK', 'Greekster', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/breadcumb2.jpg\">]]></melisTag> <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[sunglasses]]></melisTag>    <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/sunglasses/p04.jpg\" />]]></melisTag>  <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Greekster]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[Summer set]]></melisTag>  <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(28, 'PAGE', 1, 'LINK', 'Yoopla', 5, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/designs.jpg\" data-mce-src=\"/MelisDemoCms/images/bg/designs.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Our Designs]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"header_subtitle\"><![CDATA[sunglasses]]></melisTag>    <melisTag id=\"content_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/sunglasses/p05.jpg\" />]]></melisTag>  <melisTag id=\"content_subtitle1\"><![CDATA[New Fashion]]></melisTag> <melisTag id=\"content_title\"><![CDATA[Yopla]]></melisTag>   <melisTag id=\"content_subtitle2\"><![CDATA[Summer set]]></melisTag>  <melisTag id=\"content_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1');
INSERT INTO `melis_cms_page_published` (`page_id`, `page_type`, `page_status`, `page_menu`, `page_name`, `page_tpl_id`, `page_content`, `page_taxonomy`, `page_creation_date`, `page_edit_date`, `page_last_user_id`, `page_search_type`) VALUES
(29, 'PAGE', 1, 'LINK', 'About us', 6, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"content_subtitle\"><![CDATA[Our designs]]></melisTag>  <melisTag id=\"header_image\"><![CDATA[<img src=\"/MelisDemoCms/images/bg/about.jpg\" caption=\"false\" data-mce-src=\"/MelisDemoCms/images/bg/about.jpg\">]]></melisTag>   <melisTag id=\"header_title\"><![CDATA[ABOUT DETAILS]]></melisTag>    <melisTag id=\"about_part1_title\"><![CDATA[About Us]]></melisTag>    <melisTag id=\"about_part1_image\"><![CDATA[<img class=\"img-responsive\" src=\"/MelisDemoCms/images/blog/about01.jpg\" />]]></melisTag>  <melisTag id=\"about_part1_text\"><![CDATA[<div class=\"about-des\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p></div>]]></melisTag> <melisTag id=\"about_part2_title\"><![CDATA[Why choose us]]></melisTag>   <melisTag id=\"about_part2_text\"><![CDATA[<div class=\"col-md-3 col-sm-4 col-xs-12\"><div class=\"single-choose text-center\"><div class=\"choose-icon pos-rltv\"><div class=\"svg\"><svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" viewbox=\"0 0 70 70\" enable-background=\"new 0 0 70 70\" xml:space=\"preserve\"> <g> <path fill=\"#262826\" d=\"M18.4,57c0,0,5.5,2.3,7.9-2C26.3,55,22.5,52.1,18.4,57z\"></path> <path fill=\"#262826\" d=\"M22.5,48.8c-0.3,3.2,1.9,4.8,1.9,4.8c1.2,0,2.3,0.9,2.3,0.9C27.3,50.1,22.5,48.8,22.5,48.8z\"></path> <path fill=\"#262826\" d=\"M12.4,52.4c0,0,4.4,3.6,8.1,0.3C20.5,52.8,17.5,48.7,12.4,52.4z\"></path> <path fill=\"#262826\" d=\"M18.7,50.9c1.3,0.3,1.9,1.4,1.9,1.4c2.2-4-2.3-6.7-2.3-6.7C17.2,48.5,18.7,50.9,18.7,50.9z\"></path> <path fill=\"#262826\" d=\"M15.3,48.8c0,0-2.4-4.5-8.1-1.7C7.2,47.2,11.1,51.5,15.3,48.8z\"></path> <path fill=\"#262826\" d=\"M14.3,41.5c-1.6,2.6-0.4,5.1-0.4,5.1c1.3,0.6,1.8,1.6,1.8,1.6C18.2,44.8,14.3,41.5,14.3,41.5z\"></path> <path fill=\"#262826\" d=\"M10.7,44.1c0,0-1.3-4.9-7.4-3.5C3.3,40.6,6.1,45.7,10.7,44.1z\"></path> <path fill=\"#262826\" d=\"M11.1,43.7c3.3-2.8,0.5-7,0.5-7c-2.3,2.2-1.6,5-1.6,5C11,42.6,11.1,43.7,11.1,43.7z\"></path> <path fill=\"#262826\" d=\"M7.7,39c0,0,0.3-5-6.1-5.4C1.6,33.6,2.9,39.3,7.7,39z\"></path> <path fill=\"#262826\" d=\"M10.7,32.2c-2.9,1.6-3,4.3-3,4.3c0.7,1.3,0.6,2.3,0.6,2.3C12.4,37,10.7,32.2,10.7,32.2z\"></path> <path fill=\"#262826\" d=\"M5.3,32.8c0,0,1-5-5.2-6.4C0,26.4,0.4,32.2,5.3,32.8z\"></path> <path fill=\"#262826\" d=\"M9.2,26.4c-3,1.2-3.6,3.8-3.6,3.8c0.5,1.3,0.3,2.5,0.3,2.5C10.2,31.5,9.2,26.4,9.2,26.4z\"></path> <path fill=\"#262826\" d=\"M4.8,26.1c0,0,1.9-4.7-4-7.3C0.8,18.8,0.1,24.5,4.8,26.1z\"></path> <path fill=\"#262826\" d=\"M9.8,20.5c-3.1,0.5-4.2,3-4.2,3c0.3,1.3-0.3,2.4-0.3,2.4C9.8,25.5,9.8,20.5,9.8,20.5z\"></path> <path fill=\"#262826\" d=\"M5.1,19.3c0,0,3-4-2.1-7.9C3,11.4,0.8,16.8,5.1,19.3z\"></path> <path fill=\"#262826\" d=\"M11.3,15.3c-3.2-0.3-4.9,1.9-4.9,1.9c0,1.3-0.8,2.3-0.8,2.3C10.1,20.3,11.3,15.3,11.3,15.3z\"></path> <path fill=\"#262826\" d=\"M19.1,0.5c0,0-8.6,0.8-9.3,8C9.8,8.5,17.2,9.9,19.1,0.5z\"></path> <path fill=\"#262826\" d=\"M6.5,5.2c0,0-3.2,4.9,0.2,8.2C6.7,13.3,10.7,10.2,6.5,5.2z\"></path> <path fill=\"#262826\" d=\"M7.4,13.6c4,1.8,6.3-2.7,6.3-2.7c-2.9-0.9-5,0.7-5,0.7C8.2,13,7.4,13.6,7.4,13.6z\"></path> <path fill=\"#262826\" d=\"M43.8,55c2.6,4.2,8,2,8,2C47.8,52.1,43.8,55,43.8,55z\"></path> <path fill=\"#262826\" d=\"M47.8,48.8c0,0-4.9,1.2-4.1,5.7c0,0,0.8-0.9,2.3-0.9C45.9,53.6,48,52.1,47.8,48.8z\"></path> <path fill=\"#262826\" d=\"M49.7,52.8c3.7,3.3,8.2-0.3,8.2-0.3C52.7,48.7,49.7,52.8,49.7,52.8z\"></path> <path fill=\"#262826\" d=\"M49.4,52.3c0,0,0.7-1.1,2-1.4c0,0,1.6-2.4,0.3-5.3C51.8,45.6,47.4,48.3,49.4,52.3z\"></path> <path fill=\"#262826\" d=\"M54.9,48.8c4.3,2.7,8.2-1.7,8.2-1.7C57.3,44.4,54.9,48.8,54.9,48.8z\"></path> <path fill=\"#262826\" d=\"M54.6,48.3c0,0,0.5-1,1.6-1.6c0,0,1.2-2.5-0.3-5.1C55.9,41.5,51.9,44.8,54.6,48.3z\"></path> <path fill=\"#262826\" d=\"M59.6,44.1c4.7,1.6,7.4-3.5,7.4-3.5C60.7,39.2,59.6,44.1,59.6,44.1z\"></path> <path fill=\"#262826\" d=\"M59.1,43.7c0,0,0.2-1,1.1-2c0,0,0.5-2.8-1.7-5C58.6,36.7,55.6,40.8,59.1,43.7z\"></path> <path fill=\"#262826\" d=\"M62.5,39c4.9,0.3,6-5.4,6-5.4C62.3,34,62.5,39,62.5,39z\"></path> <path fill=\"#262826\" d=\"M59.6,32.2c0,0-1.7,4.8,2.3,6.6c0,0-0.2-1,0.7-2.3C62.6,36.5,62.3,33.8,59.6,32.2z\"></path> <path fill=\"#262826\" d=\"M65.1,32.8c4.8-0.5,5.1-6.4,5.1-6.4C63.9,27.8,65.1,32.8,65.1,32.8z\"></path> <path fill=\"#262826\" d=\"M61.1,26.4c0,0-1.2,5.2,3.2,6.4c0,0-0.2-1.2,0.2-2.5C64.5,30.2,63.9,27.5,61.1,26.4z\"></path> <path fill=\"#262826\" d=\"M65.5,26.1c4.6-1.5,3.9-7.3,3.9-7.3C63.5,21.3,65.5,26.1,65.5,26.1z\"></path> <path fill=\"#262826\" d=\"M64.6,23.5c0,0-1.1-2.5-4.2-3c0,0,0,5,4.3,5.4C64.8,25.9,64.3,24.8,64.6,23.5z\"></path> <path fill=\"#262826\" d=\"M65.2,19.3c4.2-2.5,2-7.9,2-7.9C62.2,15.3,65.2,19.3,65.2,19.3z\"></path> <path fill=\"#262826\" d=\"M64.5,19.5c0,0-0.6-1-0.6-2.3c0,0-1.8-2.2-4.9-1.9C58.9,15.3,60.2,20.3,64.5,19.5z\"></path> <path fill=\"#262826\" d=\"M60.5,8.5c-0.6-7.1-9.2-8-9.2-8C53.1,9.9,60.5,8.5,60.5,8.5z\"></path> <path fill=\"#262826\" d=\"M63.4,13.3c3.6-3.3,0.2-8.2,0.2-8.2C59.6,10.2,63.4,13.3,63.4,13.3z\"></path> <path fill=\"#262826\" d=\"M56.4,10.9c0,0,2.4,4.6,6.4,2.7c0,0-0.8-0.6-1.1-2C61.6,11.6,59.5,9.9,56.4,10.9z\"></path> <polygon fill=\"#262826\" points=\"36.5,53.1 35.2,48.9 33.8,53.1 29.4,53.1 33,55.8 31.5,60 35.2,57.4 38.7,60 37.2,55.8 40.9,53.1                                \"></polygon> <path fill=\"#262826\" d=\"M18.4,25.4v1v0.7C19.1,35.4,25.6,42,34,42.6l0.6,0.1h1l0.6-0.1c8.3-0.6,14.9-7.3,15.4-15.5l0.1-0.7v-0.9                           l-0.1-0.6c-0.5-8.3-7.2-15-15.4-15.6h-0.6h-1H34c-8.4,0.6-15,7.3-15.6,15.6V25.4z M19.8,25.5v-0.5c0.6-7.5,6.7-13.7,14.4-14.3                           l0.4-0.1h1l0.5,0.1c7.7,0.5,13.8,6.7,14.3,14.3l0.1,0.5v0.9l-0.1,0.5c-0.5,7.6-6.6,13.8-14.3,14.4h-0.5h-0.9h-0.5                           c-7.7-0.6-13.9-6.7-14.4-14.4v-0.5V25.5z\"></path> <path fill=\"#262826\" d=\"M34.3,39.8h0.5h0.7h0.6c6.9-0.4,12.5-6.1,12.9-13v-0.4v-0.9V25c-0.4-6.9-6-12.4-12.9-13h-0.6h-0.7l-0.5,0.1                            c-7.1,0.4-12.5,6-13,12.9l-0.1,0.4v0.9l0.1,0.4C21.7,33.8,27.2,39.4,34.3,39.8z M22.1,25.5V25c0.6-6.4,5.7-11.7,12.1-12l0.5-0.1                         h0.7L36,13c6.5,0.3,11.6,5.7,12.1,12l0.1,0.5v0.8l-0.1,0.5c-0.5,6.4-5.7,11.7-12.1,12.1h-0.5h-0.7h-0.5                         c-6.4-0.3-11.6-5.7-12.1-12.1v-0.5V25.5z\"></path> <polygon fill=\"#262826\" points=\"28.4,35.5 35.2,30.6 41.9,35.5 39.6,27.5 46,22.7 37.9,22.7 35.2,14.7 32.5,22.7 24.4,22.7                            30.9,27.5   \"></polygon> </g> <rect x=\"0\" y=\"62\" fill=\"#262826\" width=\"70.1\" height=\"8\"></rect> <rect x=\"3.3\" y=\"63\" fill=\"none\" width=\"64.5\" height=\"6.3\"></rect> <text transform=\"matrix(1 0 0 1 3.2905 68.3026)\" fill=\"#FFFFFF\" font-family=\"\'Tahoma\'\" font-size=\"7\">Shutterstock License</text> </svg></div></div><div class=\"choose-title\"><h5>High Quality</h5></div><div class=\"choose-des\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p></div></div></div><div class=\"col-md-3 col-sm-4 col-xs-12\"><div class=\"single-choose text-center\"><div class=\"choose-icon pos-rltv\"><div class=\"svg\"><svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" viewbox=\"0 0 70 70\" enable-background=\"new 0 0 70 70\" xml:space=\"preserve\"> <g> <path fill=\"#262826\" d=\"M47.2,17.4c-3.1-2.8-7.1-4-11.1-4c-5.2,0-10.3,2.2-13.7,6.5c-3.1,3.6-4.5,8.1-4.1,12.8                     c0.4,4.5,2.6,8.9,6.2,11.9c3.1,2.6,7,4,11.1,4c5.2,0,10.3-2.3,13.6-6.3c3-3.7,4.5-8.3,4.1-13C52.8,24.6,50.7,20.5,47.2,17.4z                         M50,30.9L50,30.9h-4.8c-0.1,0-0.1,0-0.3,0c0,0,0,0-0.3,0H44c-0.2,0-0.2,0.1-0.2,0.2c0,0.3,0.1,0.5,0.2,0.5h0.6                     c0.3,0,0.3,0,0.3-0.1c0.2,0.1,0.2,0.1,0.3,0.1H50l0,0c-0.1,3.1-1.3,6.2-3.3,8.4c-2.7,3.4-6.7,5.4-11.1,5.4c-3.2,0-6.4-1.3-8.9-3.4                       c-2.8-2.4-4.6-5.8-5-9.4c0-0.5,0-1,0-1.5h4.6c0.2,0,0.2,0,0.2-0.1c0.2,0.1,0.2,0.1,0.4,0.1h0.6c0.2,0,0.3-0.2,0.3-0.4                       c0,0-0.2-0.3-0.3-0.3h-0.6c-0.2,0-0.2,0-0.4,0c0,0,0,0-0.2,0h-4.6c0-0.6,0.2-1.3,0.3-2c0.2,0.2,0.2,0.2,0.5,0.2h4.7                     c0,0,0.3,0,0.3,0c0.1,0,0.2,0,0.2,0h0.6c0.2,0,0.3-0.2,0.3-0.2c0-0.3-0.1-0.4-0.3-0.4h-0.6c0,0-0.2,0-0.2,0c0,0-0.2,0-0.3,0h-4.7                        c-0.2,0-0.3,0-0.3,0.1c0.5-2.1,1.5-4.2,3-6c2.6-3.2,6.7-5.2,10.9-5.2c3.3,0,6.5,1.2,9.1,3.3c2.8,2.5,4.6,5.8,5,9.6                      C50,30.1,50,30.6,50,30.9z\"></path> <path fill=\"#262826\" d=\"M37.4,29.1c-2.2-0.8-3-1.3-3-1.9c0-0.9,0.7-1.2,2-1.2c1.6,0,2.7,0.6,3.4,0.9l0.2,0c0.1,0,0.3,0,0.3,0                        c0.2,0,0.2-0.3,0.3-0.3l0.7-3c0,0,0-0.4-0.2-0.4c-1.1-0.5-2.3-0.8-3.7-0.8v-1.9c0-0.3-0.2-0.3-0.4-0.3h-2.6c-0.3,0-0.5,0-0.5,0.3                        v2.2c-2.6,0.5-4.3,2.5-4.3,4.9c0,3.1,2.6,4.3,4.9,5.1c2.2,0.8,2.6,1.4,2.6,2c0,1.2-1.7,1.2-2.2,1.2c-1.9,0-3.4-0.6-4.1-1.1                      c-0.1,0-0.2-0.1-0.3,0c-0.1,0.1-0.2,0.2-0.3,0.3l-0.8,3c0,0.2,0.1,0.4,0.3,0.4c1,0.6,2.6,1,4.3,1.1v2.2c0,0.1,0.2,0.4,0.4,0.4h2.5                       c0.2,0,0.5-0.3,0.5-0.4v-2.4c2.7-0.6,4.6-2.5,4.6-5.1C42,31.7,40.6,30.1,37.4,29.1z\"></path> <path fill=\"#262826\" d=\"M28.1,32.6h-0.5c-0.2,0-0.2,0-0.2,0.1c0-0.1-0.2-0.1-0.3-0.1h-4.7c-0.3,0-0.5,0.1-0.5,0.3                        c0,0.3,0.2,0.5,0.5,0.5h4.7c0,0,0.3-0.2,0.3-0.2c0.1,0,0.1,0.2,0.2,0.2h0.5c0.3,0,0.4-0.2,0.4-0.5C28.5,32.7,28.4,32.6,28.1,32.6z\"></path> <path fill=\"#262826\" d=\"M44.1,28.4c0,0-0.1-0.1-0.2-0.1h-0.6c-0.3,0-0.5,0.2-0.5,0.5c0,0.3,0.2,0.3,0.5,0.3h0.6                     c0.1,0,0.2-0.1,0.2-0.1c0.1,0,0.2,0.1,0.3,0.1h4.8c0.1,0,0.4-0.1,0.4-0.3c0-0.2-0.3-0.5-0.4-0.5h-4.8                       C44.3,28.4,44.2,28.4,44.1,28.4z\"></path> <path fill=\"#262826\" d=\"M42.9,33.3c0,0.4,0.2,0.5,0.5,0.5h0.6c0.1,0,0.2-0.1,0.2-0.1c0.1,0,0.3,0.1,0.3,0.1h4.8                       c0.3,0,0.4-0.1,0.4-0.5c0-0.2-0.1-0.3-0.4-0.3h-4.8c0,0-0.2,0-0.3,0.1c0-0.1-0.1-0.1-0.2-0.1h-0.6C43.1,33,42.9,33.2,42.9,33.3z\"></path> <polygon fill=\"#262826\" points=\"37.9,52.5 34.9,54.6 31.9,52.5 33.1,55.9 30,58.2 33.8,58.2 34.9,61.6 36,58.2 39.8,58.2                      36.8,55.9   \"></polygon> <polygon fill=\"#262826\" points=\"48.2,51.6 47.1,48.1 45.9,51.6 42.2,51.5 45.1,53.8 43.9,57.2 47,55.1 50,57.3 48.9,53.8                      51.9,51.7   \"></polygon> <polygon fill=\"#262826\" points=\"58.8,40.4 55.7,42.3 52.8,40.1 53.9,43.8 50.7,45.7 54.4,45.8 55.5,49.4 56.8,45.9 60.4,46.1                      57.6,43.9   \"></polygon> <polygon fill=\"#262826\" points=\"23.9,51.6 22.7,48.1 21.6,51.6 18,51.7 21,53.8 20,57.3 22.8,55.1 25.8,57.2 24.6,53.8 27.6,51.5                          \"></polygon> <polygon fill=\"#262826\" points=\"15.9,43.8 17,40.1 14,42.3 11,40.4 12.2,43.9 9.3,46.1 13,45.9 14.3,49.4 15.4,45.8 19.1,45.7     \"></polygon> <polygon fill=\"#262826\" points=\"32.2,9.2 35.2,7 38.2,9.2 37.1,5.9 40,3.5 36.3,3.5 35.2,0.1 34,3.5 30.3,3.5 33.3,5.9    \"></polygon> <polygon fill=\"#262826\" points=\"21.9,10.1 23,13.6 24.1,10.3 27.9,10.3 25.1,8.1 26.1,4.6 23.2,6.6 20.2,4.5 21.3,8 18.2,10.1     \"></polygon> <polygon fill=\"#262826\" points=\"11.3,21.4 14.4,19.2 17.3,21.6 16.3,18 19.3,16 15.7,15.9 14.6,12.4 13.4,15.7 9.7,15.6 12.6,18                           \"></polygon> <polygon fill=\"#262826\" points=\"46.2,10.3 47.4,13.6 48.4,10.1 52.2,10.1 49.1,8 50.2,4.5 47.3,6.6 44.3,4.6 45.5,8.1 42.5,10.3                           \"></polygon> <polygon fill=\"#262826\" points=\"54.2,18 53.2,21.6 56,19.2 59.1,21.4 57.8,18 60.7,15.6 57,15.7 55.8,12.4 54.8,15.9 51,16    \"></polygon> </g> <rect x=\"0\" y=\"62\" fill=\"#262826\" width=\"70.1\" height=\"8\"></rect> <rect x=\"3.3\" y=\"63\" fill=\"none\" width=\"64.5\" height=\"6.3\"></rect> <text transform=\"matrix(1 0 0 1 3.2905 68.3026)\" fill=\"#FFFFFF\" font-family=\"\'Tahoma\'\" font-size=\"7\">Shutterstock License</text> </svg></div></div><div class=\"choose-title\"><h5>Best Value</h5></div><div class=\"choose-des\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p></div></div></div><div class=\"col-md-3 col-sm-4 col-xs-12\"><div class=\"single-choose text-center\"><div class=\"choose-icon pos-rltv\"><div class=\"svg\"><svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" viewbox=\"0 0 70 70\" enable-background=\"new 0 0 70 70\" xml:space=\"preserve\"> <g> <path fill=\"#262826\" d=\"M21,41.6c-0.3-0.9-0.4-1.6-0.3-2.2c-5,2.2-8.1,4.4-7.8,5.3l0,0c0.1,0.1,0.2,0.3,0.3,0.3                      c0.1,0,0.3,0,0.5,0.1c1.4,0.3,4.6-0.2,8.5-1.6c-0.3-0.2-0.7-0.7-0.9-1.2C21.3,42,21.1,41.9,21,41.6z\"></path> <path fill=\"#262826\" d=\"M23.1,43.3c0.1-0.2,0.1-0.3,0.1-0.4c0.1-0.4,0.1-0.7,0-1.3c0-0.3-0.1-0.6-0.2-0.8c-0.3-0.8-0.8-1.4-1.2-1.6                       c0,0-0.2,0-0.3,0l0,0c-0.1,0-0.1,0-0.3,0.1c-0.1,0.3-0.1,1.1,0.3,2.1c0.1,0.3,0.3,0.6,0.3,0.7c0.3,0.6,0.7,0.9,1,1.2                        c0.1,0,0.2,0,0.2,0H23.1z\"></path> <path fill=\"#262826\" d=\"M64,21.6L10.1,41.9l2.3,2.3c0.7-1.8,4.8-4,8.8-5.7l0,0l0,0h0.1l0.3-0.1v0.1c0.7,0,1.3,0.8,1.9,2.1                        c0.2,0.2,0.2,0.3,0.2,0.7l6.7-2.7L25,48.2l6.6-2.6l11.5-11.6l11.5-4.4l1.4-0.5c0.1,0,0.1,0,0.2-0.2c1.9-0.9,2.2-0.9,5.9-2.7                     c4.6-2,4.1-3.6,4.1-3.6C66,22.1,65.5,21.7,64,21.6z\"></path> <path fill=\"#262826\" d=\"M62.3,21.6l-10-1c-1.5,0-2.8,0.4-3.7,0.7l-8.7,3.2l-6.8-1.3l-4.9,1.8l3.3,2.8l-16.7,7.2L4.7,30.7l-4.2,1.7                       l5.1,3.7l-2,3.9l2.7-1l0.3-0.5l3.9-4l0.3-0.4l0.4,0.4l-3.8,4L9.2,41h0.1l52.6-19.2L62.3,21.6z M26.6,33.7l-3.5,1.4l-0.3-2l3.6-1.5                       L26.6,33.7z M32.3,31.4l-3.4,1.4l-0.3-2.2l3.6-1.2L32.3,31.4z M38.1,29.2l-3.5,1.4l-0.1-2l3.4-1.3L38.1,29.2z M43.9,27l-3.5,1.4                     l-0.3-2l3.5-1.3L43.9,27z M51,22c-0.2-0.6,0.1-0.8,0.6-1.1c0,0,7.9,0.9,8,0.9c-0.1,0.1-5.1,2-5.1,2C53.1,24.1,51.6,23.4,51,22z\"></path> </g> <rect x=\"0\" y=\"62\" fill=\"#262826\" width=\"70.1\" height=\"8\"></rect> <rect x=\"3.3\" y=\"63\" fill=\"none\" width=\"64.5\" height=\"6.3\"></rect> <text transform=\"matrix(1 0 0 1 3.2905 68.3026)\" fill=\"#FFFFFF\" font-family=\"\'Tahoma\'\" font-size=\"7\">Shutterstock License</text> </svg></div></div><div class=\"choose-title\"><h5>Fast Delivery</h5></div><div class=\"choose-des\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p></div></div></div><div class=\"col-md-3 hidden-sm col-xs-12\"><div class=\"single-choose text-center\"><div class=\"choose-icon pos-rltv\"><div class=\"svg\"><svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" viewbox=\"0 0 70 70\" enable-background=\"new 0 0 70 70\" xml:space=\"preserve\"> <g> <path fill=\"#262826\" d=\"M65.8,0.9c-0.8-0.6-2.1-1.2-4.2-0.6c-2.9,0.6-6.9,5.2-9.8,9.5c-6.2,0.2-18.2,0.5-19,1.2L2.6,38.9                      c-1.3,1.3-1.5,3.2-0.3,4.3l16.2,17.7c1.2,1.2,3,1.2,4.2,0.2L53,32.9c0.9-0.6,1.7-10.5,2.1-17.1c0.8-0.6,2-0.7,2.8-1.2                       c4-1.9,9.3-4.4,9.6-8.3C67.9,4.1,67.2,2,65.8,0.9z M48.3,33.9L22.7,57.4c-1.1,1.1-3,1.1-4.2-0.1L5.8,43.5c-1.2-1.2-1.1-3.3,0.1-4.3                      l25.6-23.4c1.3-1.2,3.2-1.2,4.3,0l12.8,13.9C49.5,30.9,49.3,32.7,48.3,33.9z M51.1,18.9c-1.4,1.3-3.6,1.3-5.1-0.2                       c-1.3-1.5-1.2-3.6,0.2-5.1c1.1-0.9,2.4-1.1,3.6-0.7c-0.2,0.4-0.6,0.8-0.7,1.2c-0.5,0-0.9,0.3-1.4,0.6c-0.7,0.5-0.7,1.8-0.1,2.6                      c0.9,0.6,1.7,0.6,2.7,0c0.7-0.6,0.7-1.8,0-2.4c0.1-0.5,0.4-1,0.7-1.4c0.1,0.1,0.1,0.1,0.3,0.1C52.7,15.3,52.7,17.5,51.1,18.9z                        M66.4,6.4c-0.2,3-5.2,5.4-8.9,7c-0.7,0.4-1.5,0.8-2.3,1.2c0.2-2.9,0.3-5.1,0.3-5.1s-0.8,0.2-2,0.2c2.6-4,6.1-7.7,8.6-8.2                       c1.1-0.5,2.2-0.2,2.9,0.3C66.1,2.8,66.5,4.5,66.4,6.4z\"></path> <polygon fill=\"#262826\" points=\"20.2,38.4 18.8,37 13.1,42.4 14.3,43.8 16.4,41.9 22.2,48.2 24,46.5 18,40.2     \"></polygon> <path fill=\"#262826\" d=\"M20.7,35.2l4.8,9.8l1.9-1.8L26,40.7l2.4-1.8l2.4,1.3l1.8-1.9l-9.4-5.4L20.7,35.2z M24.8,36.5l2.1,1.2                      l-1.7,1.8L24,37.3c-0.2-0.7-0.7-1.2-1-2l0,0C23.6,35.9,24,36.2,24.8,36.5z\"></path> <path fill=\"#262826\" d=\"M32.7,30l1.4,1.5l1-1.1l1.7,1.7c-0.2,0.1-0.4,0.5-1,0.9c-1.3,1.2-3.3,1.2-4.7-0.2c-1.4-1.9-1.1-3.6,0.3-5                      c0.8-0.8,1.5-1.1,2.1-1.2l-1-1.8c-0.5,0.2-1.6,0.5-2.4,1.6c-2.6,2.4-3,5.4-0.6,8c1.1,1.1,2.4,1.8,3.7,1.8c1.2,0.1,2.6-0.7,4-1.9                     c1.1-0.8,1.7-2.1,2.3-2.8l-3.9-4.1L32.7,30z\"></path> </g> <rect x=\"0\" y=\"62\" fill=\"#262826\" width=\"70.1\" height=\"8\"></rect> <rect x=\"3.3\" y=\"63\" fill=\"none\" width=\"64.5\" height=\"6.3\"></rect> <text transform=\"matrix(1 0 0 1 3.2905 68.3026)\" fill=\"#FFFFFF\" font-family=\"\'Tahoma\'\" font-size=\"7\">Shutterstock License</text> </svg></div></div><div class=\"choose-title\"><h5>Trending</h5></div><div class=\"choose-des\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p></div></div></div>]]></melisTag>   <melisTag id=\"about_part3_title\"><![CDATA[We Are Better]]></melisTag>   <melisTag id=\"about_part3_text\"><![CDATA[<div class=\"skill-content\"><div class=\"skill-content\"><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><div class=\"powerfull-skills\"><div class=\"single-prograss\"><div class=\"progess-heading\">Trending<span>(79%)</span></div><div class=\"progress\"><div class=\"progress-bar pr-blue wow fadeInLeft     animated\" style=\"width: 79%; visibility: hidden; animation-duration: 2s; animation-delay: 1s; animation-name: none;\" data-wow-duration=\"2s\" data-wow-delay=\"1s\"></div></div></div><div class=\"single-prograss\"><div class=\"progess-heading\">Design<span>(96%)</span></div><div class=\"progress\"><div class=\"progress-bar pr-green wow fadeInLeft     animated\" style=\"width: 96%; visibility: hidden; animation-duration: 2s; animation-delay: 1s; animation-name: none;\" data-wow-duration=\"2s\" data-wow-delay=\"1s\"></div></div></div><div class=\"single-prograss\"><div class=\"progess-heading pr-voilate\">Availability<span>(85%)</span></div><div class=\"progress\"><div class=\"progress-bar pr-violate wow fadeInLeft     animated\" style=\"width: 85%; visibility: hidden; animation-duration: 2s; animation-delay: 1s; animation-name: none;\" data-wow-duration=\"2s\" data-wow-delay=\"1s\"></div></div></div><div class=\"single-prograss\"><div class=\"progess-heading\">Quality <span>(92%)</span></div><div class=\"progress\"><div class=\"progress-bar pr-ornage wow fadeInLeft     animated\" style=\"width: 92%; visibility: hidden; animation-duration: 2s; animation-delay: 1s; animation-name: none;\" data-wow-duration=\"2s\" data-wow-delay=\"1s\"></div></div></div></div><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. will be distracted by the readable content of a page when looking at its layout.</p></div></div>]]></melisTag> <melisTag id=\"about_part3_image\"><![CDATA[<img class=\"img-responsive\" src=\"/MelisDemoCms/images/blog/about02.jpg\" />]]></melisTag>  <melisTag id=\"about_part4_title\"><![CDATA[Our Team]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(30, 'PAGE', 1, 'LINK', 'Contact Us', 7, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_title\"><![CDATA[contact&nbsp;us]]></melisTag>  <melisTag id=\"content_subtitle\"><![CDATA[Shirts]]></melisTag>   <melisTag id=\"content_text_1\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/01.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                                                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_2\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/02.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_3\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/03.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_4\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/04.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_5\"><![CDATA[<div class=\"show-product row\">                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/05.jpg\" alt=\"\">                    </div>                </div>                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"content_text_6\"><![CDATA[<div class=\"show-product row\">                                <div class=\"col-lg-7 col-md-7 col-sm-6 col-xs-12\">                    <div class=\"show-product-description\">                        <h6 class=\"sp-category\">New Fashion</h6>                        <h2 class=\"uppercase montserrat\">Brand Cortta</h2>                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>                    </div>                </div>                <div class=\"col-lg-5 col-md-5 col-sm-6 col-xs-12\">                    <div class=\"brand-img text-center\">                        <img src=\"/MelisDemoCms/images/product/06.jpg\" alt=\"\">                    </div>                </div>            </div>]]></melisTag>   <melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag> <melisTag id=\"header_image\"><![CDATA[<img src=\"/MelisDemoCms/images/bg/contact.jpg\" caption=\"false\" data-mce-src=\"/MelisDemoCms/images/bg/contact.jpg\" height=\"29\" width=\"229\">]]></melisTag>   <melisTag id=\"footer_text_1\"><![CDATA[<ul><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-pin-drop\"></i><br></div><div class=\"contact-text\"><p><span>777/a Seventh Street,</span> <span>Rampura, Bonosri</span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-email-open\"></i><br></div><div class=\"contact-text\"><p><span><a href=\"#\" data-mce-href=\"#\">company@gmail.com</a></span> <span><a href=\"#\" data-mce-href=\"#\">admin@devitems.com</a></span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-phone-paused\"></i><br></div><div class=\"contact-text\"><p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p></div></li></ul>]]></melisTag>  <melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag>    <melisTag id=\"footer_text_2\"><![CDATA[<li><a href=\"#\">My Account</a></li>                                                <li><a href=\"#\">Order History</a></li>                                                <li><a href=\"#\">Wishlist</a></li>                                                <li><a href=\"#\">Returnes</a></li>                                                <li><a href=\"#\">Private Policy</a></li>                                                <li><a href=\"#\">Site Map</a></li>]]></melisTag> <melisTag id=\"contact_gmap_lat\"><![CDATA[<span style=\"color: #999999; font-family: Roboto, Arial, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\">48.850973</span>]]></melisTag> <melisTag id=\"contact_gmap_long\"><![CDATA[2.382171]]></melisTag>    <melisTag id=\"contact_addresses\"><![CDATA[<div class=\"heading-title text-center mb-50\"><h5 class=\"uppercase\">Contact Info</h5></div><ul class=\"contact-info\"><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-phone-paused\"></i></div><div class=\"contact-text\"><p>(+33) 972 386 280<br />&nbsp;</p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-email-open\"></i></div><div class=\"contact-text\"><p>contact@melistechnology.com&nbsp;</p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-pin-drop\"></i></div><div class=\"contact-text\"><p><span>4, rue du Dahomey</span>&nbsp;75011 Paris, France</p></div></li></ul>]]></melisTag>   <melisTag id=\"contact_text\"><![CDATA[<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>]]></melisTag> <melisTag id=\"footer_text_3\"><![CDATA[123.896545]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(31, 'FOLDER', 1, 'NONE', 'Transversal pages', -1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(32, 'PAGE', 1, 'LINK', 'Search results', 9, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"header_image\"><![CDATA[<img alt=\"\" src=\"/MelisDemoCms/images/bg/search.jpg\">]]></melisTag>    <melisTag id=\"header_title\"><![CDATA[Search Results]]></melisTag>   <melisTag id=\"search_title\"><![CDATA[Search Results]]></melisTag>   <melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag> <melisTag id=\"footer_text_1\"><![CDATA[<ul>                                        <li>                                            <div class=\"contact-icon\">                                               <i class=\"zmdi zmdi-pin-drop\"></i>                                          </div>                                            <div class=\"contact-text\">                                                <p><span>777/a  Seventh Street,</span> <span>Rampura, Bonosri</span></p>                                            </div>                                        </li>                                        <li>                                            <div class=\"contact-icon\"> <i class=\"zmdi zmdi-email-open\"></i> </div>                                            <div class=\"contact-text\">                                                <p><span><a href=\"#\">company@gmail.com</a></span> <span><a href=\"#\">admin@devitems.com</a></span></p>                                            </div>                                        </li>                                        <li>                                            <div class=\"contact-icon\"> <i class=\"zmdi zmdi-phone-paused\"></i> </div>                                            <div class=\"contact-text\">                                                <p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p>                                            </div>                                        </li>                                    </ul>]]></melisTag>    <melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(33, 'PAGE', 1, 'NONE', 'Testimonials', -1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(34, 'PAGE', 1, 'LINK', 'Testimonial 1', 8, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag> <melisTag id=\"footer_text_1\"><![CDATA[<ul><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-pin-drop\"></i><br></div><div class=\"contact-text\"><p><span>777/a Seventh Street,</span> <span>Rampura, Bonosri</span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-email-open\"></i><br></div><div class=\"contact-text\"><p><span><a href=\"#\" data-mce-href=\"#\">company@gmail.com</a></span> <span><a href=\"#\" data-mce-href=\"#\">admin@devitems.com</a></span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-phone-paused\"></i><br></div><div class=\"contact-text\"><p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p></div></li></ul>]]></melisTag>  <melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag>    <melisTag id=\"footer_text_2\"><![CDATA[<li><a href=\"#\">My Account</a></li>                                                <li><a href=\"#\">Order History</a></li>                                                <li><a href=\"#\">Wishlist</a></li>                                                <li><a href=\"#\">Returnes</a></li>                                                <li><a href=\"#\">Private Policy</a></li>                                                <li><a href=\"#\">Site Map</a></li>]]></melisTag> <melisTag id=\"footer_title_3\"><![CDATA[InstaGram]]></melisTag>  <melisTag id=\"testimonial_title\"><![CDATA[Anita Lendsly]]></melisTag>   <melisTag id=\"testimonial_subtitle\"><![CDATA[Model]]></melisTag>    <melisTag id=\"testimonial_text\"><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.]]></melisTag>  <melisTag id=\"testimonial_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/testi-03.jpg\" alt=\"\" data-mce-src=\"/MelisDemoCms/images/team/testi-03.jpg\">]]></melisTag> <melisTag id=\"footer_text_3\"><![CDATA[<img src=\"/MelisDemoCms/images/team/testi-03.jpg\" alt=\"\" />]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(35, 'PAGE', 1, 'LINK', 'Testimonial 2', 8, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag> <melisTag id=\"footer_text_1\"><![CDATA[<ul><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-pin-drop\"></i><br></div><div class=\"contact-text\"><p><span>777/a Seventh Street,</span> <span>Rampura, Bonosri</span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-email-open\"></i><br></div><div class=\"contact-text\"><p><span><a href=\"#\" data-mce-href=\"#\">company@gmail.com</a></span> <span><a href=\"#\" data-mce-href=\"#\">admin@devitems.com</a></span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-phone-paused\"></i><br></div><div class=\"contact-text\"><p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p></div></li></ul>]]></melisTag>  <melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag>    <melisTag id=\"footer_text_2\"><![CDATA[<li><a href=\"#\">My Account</a></li>                                                <li><a href=\"#\">Order History</a></li>                                                <li><a href=\"#\">Wishlist</a></li>                                                <li><a href=\"#\">Returnes</a></li>                                                <li><a href=\"#\">Private Policy</a></li>                                                <li><a href=\"#\">Site Map</a></li>]]></melisTag> <melisTag id=\"footer_title_3\"><![CDATA[InstaGram]]></melisTag>  <melisTag id=\"testimonial_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/testi-02.jpg\" />]]></melisTag>    <melisTag id=\"testimonial_title\"><![CDATA[Brad Wayne]]></melisTag>  <melisTag id=\"testimonial_subtitle\"><![CDATA[Model]]></melisTag>    <melisTag id=\"testimonial_text\"><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(36, 'PAGE', 1, 'LINK', 'Testimonial 3', 8, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">  <melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag> <melisTag id=\"footer_text_1\"><![CDATA[<ul>                                        <li>                                            <div class=\"contact-icon\">                                               <i class=\"zmdi zmdi-pin-drop\"></i>                                          </div>                                            <div class=\"contact-text\">                                                <p><span>777/a  Seventh Street,</span> <span>Rampura, Bonosri</span></p>                                            </div>                                        </li>                                        <li>                                            <div class=\"contact-icon\"> <i class=\"zmdi zmdi-email-open\"></i> </div>                                            <div class=\"contact-text\">                                                <p><span><a href=\"#\">company@gmail.com</a></span> <span><a href=\"#\">admin@devitems.com</a></span></p>                                            </div>                                        </li>                                        <li>                                            <div class=\"contact-icon\"> <i class=\"zmdi zmdi-phone-paused\"></i> </div>                                            <div class=\"contact-text\">                                                <p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p>                                            </div>                                        </li>                                    </ul>]]></melisTag>    <melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag>    <melisTag id=\"footer_text_2\"><![CDATA[<li><a href=\"#\">My Account</a></li>                                                <li><a href=\"#\">Order History</a></li>                                                <li><a href=\"#\">Wishlist</a></li>                                                <li><a href=\"#\">Returnes</a></li>                                                <li><a href=\"#\">Private Policy</a></li>                                                <li><a href=\"#\">Site Map</a></li>]]></melisTag> <melisTag id=\"footer_title_3\"><![CDATA[InstaGram]]></melisTag>  <melisTag id=\"testimonial_image\"><![CDATA[<img src=\"/MelisDemoCms/images/team/testi-01.jpg\" />]]></melisTag>    <melisTag id=\"testimonial_title\"><![CDATA[Laureen Parson]]></melisTag>  <melisTag id=\"testimonial_subtitle\"><![CDATA[Designer]]></melisTag> <melisTag id=\"testimonial_text\"><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(37, 'PAGE', 1, 'NONE', '404', 10, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">		<melisTag id=\"page-404\" plugin_container_id=\"\" type=\"html\"><![CDATA[<div class=\"page-404-container\"><h1>404</h1><h4>Sorry, the page you were looking for could not be found.</h4><p>You can return to our <a href=\"/\">home page</a>.</p></div>]]></melisTag></document>', NULL, NULL, NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(110, 'PAGE', 1, 'LINK', 'Blog Details', 75, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-07-23 02:08:42', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(254, 'SITE', 1, 'LINK', 'Rose Ethridge', 217, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">\n	<melisTag id=\"banner-img\" plugin_container_id=\"\" type=\"media\"><![CDATA[<img src=\"/Authors/assets/img/banner-bg.jpg\" alt=\"Banner Image\" width=\"1440\" height=\"720\" />]]></melisTag>\n	<melisTag id=\"book-img\" plugin_container_id=\"\" type=\"media\"><![CDATA[<img src=\"/Authors/assets/img/banner-img.png\" alt=\"book Image\" />]]></melisTag>\n	<melisTag id=\"title-h1\" plugin_container_id=\"\" type=\"html\"><![CDATA[Quest of the Bloodline]]></melisTag>\n	<melisTag id=\"author-name\" plugin_container_id=\"\" type=\"html\"><![CDATA[by Rose Ethridge]]></melisTag>\n	<melisTag id=\"subtitle\" plugin_container_id=\"\" type=\"html\"><![CDATA[Quest of the Bloodline vampire fantasy series takes you to a world hidden from humans.]]></melisTag>\n	<melisTag id=\"buy-btn\" plugin_container_id=\"\" type=\"html\"><![CDATA[<a href=\"https://www.amazon.com\" rel=\"noopener noreferrer\">Order The Book</a>]]></melisTag>\n	<melisTag id=\"about-book-description\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[<p>Quest of the Bloodline vampire fantasy series takes you to a world hidden from humans. A world of dark hierarchies and long-slumbering truths. But no secrets can be kept forever.</p>\n<p>Bronwyn Nina Nightshade knows that she\'s different from everyone else. She blushes, her hair\'s red and wild, her freckles show, and she\'s the slowest among her kind. She clings to the only thing that makes her feel like she still belongs: she\'s a vampire, just like everyone else. Right?</p>\n<p>On the dawn of her seventeenth birthday, the day of her Trial, she gets a chance to prove that. She is about to fulfill a task every vampire teen should undergo as a rite of passage. To take the challenge means she needs to see it through or be banished forever.</p>\n<p>Bronwyn receives unexpected help from Alexandre Petrovic, the most handsome vampire in Holloway Boarding School. To make things more exciting, she finds a mysterious note that might lead her to discover her unknown past, or worse . . . face death at the hands of the vampires\' ancient enemies.</p>\n<p>What fate awaits Bronwyn during her Trial?</p>]]></melisTag>\n	<melisTag id=\"author-blog\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[<p style=\"display: inline-block;\">Rose Ethridge</p>]]></melisTag>\n	<melisTag id=\"date-blog\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[<p style=\"display: inline-block;\">November 1, 2018</p>]]></melisTag>\n	<melisTag id=\"blog-content\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[If Helen was the face that launched a thousand ships, Bram Stoker was the author who launched a thousand vampires. Thanks to 1897?s Dracula, vampires earned a place in pop culture.]]></melisTag>\n	<melisTag id=\"featured-review-description\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[<p>I got to the end of the book and didn\'t even realize it was the end. I flipped the page and was like where is the next chapter. I was so deep into the story and was really sad when it ended on such a cliffhanger.</p>\n<p>First off Bronwyn is a very troubled girl. After finding out that her best friend Corrine is gone (won\'t spoil it) she teams up with the one vampire I didn\'t see coming. Still undecided if this vampire is trustworthy. Time will tell. Bronwyn doesn\'t think highly of herself yet she has attracted the attention of the most gorgeous guy vampire Alex. And now she\'s on a very dangerous and troubling quest.</p>\n<p>I cannot wait to see what happens. This book was such a refreshing take on vampires. The author is fantastic at character building.</p>\n<h3>-Jennifer Ann Schlag</h3>]]></melisTag>\n	<melisTag id=\"author-description\" plugin_container_id=\"\" type=\"textarea\"><![CDATA[<p>Esse tempor consectetur, aliquip consectetur nulla labore aute. Ut laboris id eu consequat nulla aute ullamco ut laboris nisi aliqua. Dolor, fugiat commodo veniam aute dolor sunt ex pariatur quis aute dolore ea do quis dolor ea ad excepteur. Amet et commodo est deserunt, non aliqua quis ut incididunt proident. Dolor cillum, veniam, cupidatat do enim tempor qui laboris ad, reprehenderit excepteur.</p>]]></melisTag>\n		<melisTag id=\"author-img\" plugin_container_id=\"\" type=\"media\"><![CDATA[<img src=\"/Authors/assets/img/author.png\" alt=\"Author Image\" />]]></melisTag>\n\n</document>', '', '2019-08-22 01:39:49', '2019-08-22 01:43:52', 3, 'tr_meliscms_page_tab_properties_search_type_option1'),
(255, 'PAGE', 1, 'LINK', 'Blog', 218, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">\n		<melisTag id=\"banner-img\" plugin_container_id=\"\" type=\"media\"><![CDATA[<img src=\"/Authors/assets/img/banner-bg.jpg\" alt=\"Banner Image\" />]]></melisTag>\n\n</document>', '', '2019-08-22 01:39:49', '2019-08-22 01:42:35', 3, 'tr_meliscms_page_tab_properties_search_type_option1'),
(256, 'PAGE', 1, 'LINK', 'Blog Details', 219, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 01:39:49', '2019-08-22 01:40:29', 3, 'tr_meliscms_page_tab_properties_search_type_option1'),
(262, 'SITE', 1, 'LINK', 'Arthur Deegan', 225, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 04:21:11', '2019-08-22 05:51:40', 3, 'tr_meliscms_page_tab_properties_search_type_option1'),
(263, 'PAGE', 1, 'LINK', 'Blog', 226, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 04:21:11', '2019-08-22 04:32:13', 3, 'tr_meliscms_page_tab_properties_search_type_option1');
INSERT INTO `melis_cms_page_published` (`page_id`, `page_type`, `page_status`, `page_menu`, `page_name`, `page_tpl_id`, `page_content`, `page_taxonomy`, `page_creation_date`, `page_edit_date`, `page_last_user_id`, `page_search_type`) VALUES
(264, 'PAGE', 1, 'LINK', 'Blog Details', 227, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 04:21:11', '2019-08-22 04:32:26', 3, 'tr_meliscms_page_tab_properties_search_type_option1'),
(266, 'SITE', 1, 'LINK', 'rose 2', 229, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 05:11:03', '2019-08-22 05:11:16', 3, 'tr_meliscms_page_tab_properties_search_type_option1'),
(267, 'PAGE', 1, 'LINK', 'Blog', 230, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 05:11:04', '2019-08-22 05:11:35', 3, 'tr_meliscms_page_tab_properties_search_type_option1'),
(268, 'PAGE', 1, 'LINK', 'Blog Details', 231, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 05:11:04', '2019-08-22 05:11:53', 3, 'tr_meliscms_page_tab_properties_search_type_option1');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_saved`
--

CREATE TABLE `melis_cms_page_saved` (
  `page_id` int(11) NOT NULL,
  `page_type` enum('SITE','FOLDER','PAGE','NEWSLETTER') NOT NULL DEFAULT 'PAGE',
  `page_status` tinyint(4) NOT NULL DEFAULT '1',
  `page_menu` enum('LINK','NOLINK','NONE') NOT NULL DEFAULT 'LINK',
  `page_name` varchar(255) NOT NULL,
  `page_tpl_id` int(11) NOT NULL,
  `page_content` longtext,
  `page_taxonomy` text,
  `page_creation_date` datetime DEFAULT NULL,
  `page_edit_date` datetime DEFAULT NULL,
  `page_last_user_id` int(11) DEFAULT NULL,
  `page_search_type` varchar(60) NOT NULL DEFAULT 'tr_meliscms_page_tab_properties_search_type_option1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of saved pages';

--
-- Dumping data for table `melis_cms_page_saved`
--

INSERT INTO `melis_cms_page_saved` (`page_id`, `page_type`, `page_status`, `page_menu`, `page_name`, `page_tpl_id`, `page_content`, `page_taxonomy`, `page_creation_date`, `page_edit_date`, `page_last_user_id`, `page_search_type`) VALUES
(2, 'PAGE', 1, 'LINK', 'News', 2, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\">\n	<melisTag id=\"contactform_001\"><![CDATA[Your name *]]></melisTag>\n	<melisTag id=\"contactform_002\"><![CDATA[Your email address *]]></melisTag>\n	<melisTag id=\"contactform_003\"><![CDATA[Subject]]></melisTag>\n	<melisTag id=\"contactform_004\"><![CDATA[Message *]]></melisTag>\n	<melisTag id=\"contacttext_001\"><![CDATA[Get in <strong>touch</strong>]]></melisTag>\n	<melisTag id=\"contacttext_002\"><![CDATA[Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae velit congue iaculis vitae at risus.]]></melisTag>\n	<melisTag id=\"contacttext_003\"><![CDATA[The <strong>Office</strong>]]></melisTag>\n	<melisTag id=\"contacttext_004\"><![CDATA[<ul class=\"list-unstyled\">              <li><i class=\"icon icon-map-marker\"></i> <strong>Address:</strong> 1234 Street Name, City Name, United States</li>              <li><i class=\"icon icon-phone\"></i> <strong>Phone:</strong> (123) 456-7890</li>             <li><i class=\"icon icon-envelope\"></i> <strong>Email:</strong> <a href=\"mailto:mail@example.com\">mail@example.com</a></li>          </ul>]]></melisTag>\n	<melisTag id=\"footer_title_1\"><![CDATA[Contact US]]></melisTag>\n	<melisTag id=\"footer_text_1\"><![CDATA[<ul><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-pin-drop\"></i><br></div><div class=\"contact-text\"><p><span>777/a Seventh Street,</span> <span>Rampura, Bonosri</span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-email-open\"></i><br></div><div class=\"contact-text\"><p><span><a href=\"#\" data-mce-href=\"#\">company@gmail.com</a></span> <span><a href=\"#\" data-mce-href=\"#\">admin@devitems.com</a></span></p></div></li><li><div class=\"contact-icon\"><i class=\"zmdi zmdi-phone-paused\"></i><br></div><div class=\"contact-text\"><p><span>+11 (019) 25184203</span> <span>+11 (018) 50950555</span></p></div></li></ul>]]></melisTag>\n	<melisTag id=\"footer_title_2\"><![CDATA[Information]]></melisTag>\n	<melisTag id=\"footer_text_2\"><![CDATA[<li><a href=\"#\">My Account</a></li>                                                <li><a href=\"#\">Order History</a></li>                                                <li><a href=\"#\">Wishlist</a></li>                                                <li><a href=\"#\">Returnes</a></li>                                                <li><a href=\"#\">Private Policy</a></li>                                                <li><a href=\"#\">Site Map</a></li>]]></melisTag>\n	<melisTag id=\"footer_title_3\"><![CDATA[InstaGram]]></melisTag>\n	<melisTag id=\"header_title\"><![CDATA[News]]></melisTag>\n	<melisTag id=\"header_subtitle\"><![CDATA[News]]></melisTag>\n	<melisTag id=\"header_image\"><![CDATA[<img src=\"/MelisDemoCms/images/bg/news.jpg\" caption=\"false\" height=\"50\" width=\"240\" />]]></melisTag>\n</document>', '', NULL, '2019-07-19 00:14:20', 6, 'tr_meliscms_page_tab_properties_search_type_option1'),
(110, 'PAGE', 1, 'LINK', 'Blog Details', 75, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-07-23 02:08:42', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(182, 'PAGE', 1, 'LINK', 'Blog', 145, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 02:53:26', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(183, 'PAGE', 1, 'LINK', 'Details', 146, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 02:53:26', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(186, 'PAGE', 1, 'LINK', 'Blog', 149, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 02:54:57', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(187, 'PAGE', 1, 'LINK', 'Details', 150, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 02:54:57', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(190, 'PAGE', 1, 'LINK', 'Blog', 153, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 03:03:40', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(191, 'PAGE', 1, 'LINK', 'Details', 154, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 03:03:40', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(196, 'PAGE', 1, 'LINK', '404', 159, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 04:45:22', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(199, 'PAGE', 1, 'LINK', 'Blog Details', 162, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 04:47:20', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(209, 'PAGE', 1, 'LINK', '404', 172, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-09 05:36:38', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(257, 'PAGE', 1, 'LINK', '404', 220, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 01:39:49', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(265, 'PAGE', 1, 'LINK', '404', 228, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 04:21:11', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1'),
(269, 'PAGE', 1, 'LINK', '404', 232, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisCMS\" author=\"MelisTechnology\" version=\"2.0\"></document>', '', '2019-08-22 05:11:04', NULL, NULL, 'tr_meliscms_page_tab_properties_search_type_option1');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_seo`
--

CREATE TABLE `melis_cms_page_seo` (
  `pseo_id` int(11) NOT NULL,
  `pseo_url` varchar(255) DEFAULT NULL,
  `pseo_url_redirect` varchar(255) DEFAULT NULL,
  `pseo_url_301` varchar(255) DEFAULT NULL,
  `pseo_meta_title` text,
  `pseo_meta_description` text,
  `pseo_canonical` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SEO datas for pages';

--
-- Dumping data for table `melis_cms_page_seo`
--

INSERT INTO `melis_cms_page_seo` (`pseo_id`, `pseo_url`, `pseo_url_redirect`, `pseo_url_301`, `pseo_meta_title`, `pseo_meta_description`, `pseo_canonical`) VALUES
(1, '', '', '', 'Home', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_style`
--

CREATE TABLE `melis_cms_page_style` (
  `pstyle_id` int(11) NOT NULL COMMENT 'Table''s primary key',
  `pstyle_page_id` int(11) NOT NULL,
  `pstyle_style_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_page_style`
--

INSERT INTO `melis_cms_page_style` (`pstyle_id`, `pstyle_page_id`, `pstyle_style_id`) VALUES
(1, 47, 1),
(2, 54, 2),
(3, 55, 2),
(4, 88, 6),
(5, 89, 6),
(6, 96, 3),
(7, 138, 7),
(10, 162, 10);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_page_tree`
--

CREATE TABLE `melis_cms_page_tree` (
  `tree_page_id` int(11) NOT NULL,
  `tree_father_page_id` int(11) NOT NULL DEFAULT '-1',
  `tree_page_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of Melis pages, and their parents';

--
-- Dumping data for table `melis_cms_page_tree`
--

INSERT INTO `melis_cms_page_tree` (`tree_page_id`, `tree_father_page_id`, `tree_page_order`) VALUES
(1, -1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 1, 1),
(5, 4, 1),
(6, 5, 2),
(7, 5, 3),
(8, 5, 4),
(9, 5, 5),
(10, 5, 6),
(11, 5, 7),
(12, 4, 8),
(13, 12, 1),
(14, 12, 2),
(15, 12, 3),
(16, 12, 4),
(17, 4, 9),
(18, 17, 1),
(19, 17, 2),
(20, 17, 3),
(21, 17, 4),
(22, 17, 5),
(23, 4, 10),
(24, 23, 1),
(25, 23, 2),
(26, 23, 3),
(27, 23, 4),
(28, 23, 5),
(29, 1, 12),
(30, 1, 13),
(31, 1, 14),
(32, 31, 15),
(33, 31, 1),
(34, 33, 1),
(35, 33, 2),
(36, 33, 3),
(37, 1, 16),
(110, 110, 1),
(182, 182, 1),
(183, 183, 1),
(186, 186, 1),
(187, 187, 1),
(190, 190, 1),
(191, 191, 1),
(196, 196, 1),
(199, 199, 1),
(209, 209, 1),
(254, -1, 2),
(255, 254, 1),
(256, 255, 1),
(257, 254, 2),
(262, -1, 3),
(263, 262, 1),
(264, 263, 1),
(265, 262, 2),
(266, -1, 4),
(267, 266, 1),
(268, 267, 1),
(269, 266, 2);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_platform_ids`
--

CREATE TABLE `melis_cms_platform_ids` (
  `pids_id` int(11) NOT NULL,
  `pids_page_id_start` int(11) NOT NULL,
  `pids_page_id_current` int(11) NOT NULL,
  `pids_page_id_end` int(11) NOT NULL,
  `pids_tpl_id_start` int(11) NOT NULL,
  `pids_tpl_id_current` int(11) NOT NULL,
  `pids_tpl_id_end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves ids intervals for each environment so that no duplicate id can occur between platforms';

--
-- Dumping data for table `melis_cms_platform_ids`
--

INSERT INTO `melis_cms_platform_ids` (`pids_id`, `pids_page_id_start`, `pids_page_id_current`, `pids_page_id_end`, `pids_tpl_id_start`, `pids_tpl_id_current`, `pids_tpl_id_end`) VALUES
(1, 1, 274, 1000, 1, 237, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_prospects`
--

CREATE TABLE `melis_cms_prospects` (
  `pros_id` int(11) NOT NULL,
  `pros_site_id` int(11) DEFAULT NULL,
  `pros_type` varchar(255) DEFAULT NULL,
  `pros_theme` int(11) DEFAULT NULL,
  `pros_name` varchar(255) DEFAULT NULL,
  `pros_email` varchar(150) DEFAULT NULL,
  `pros_telephone` varchar(20) DEFAULT NULL,
  `pros_message` text,
  `pros_company` varchar(45) DEFAULT NULL,
  `pros_country` varchar(45) DEFAULT NULL,
  `pros_contact_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_prospects`
--

INSERT INTO `melis_cms_prospects` (`pros_id`, `pros_site_id`, `pros_type`, `pros_theme`, `pros_name`, `pros_email`, `pros_telephone`, `pros_message`, `pros_company`, `pros_country`, `pros_contact_date`) VALUES
(1, NULL, NULL, NULL, 'Peter Paul Villarino', 'peterpaulvillarino@gmail.com', NULL, 'Gwapo ko', NULL, NULL, '2019-07-24 02:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_prospects_themes`
--

CREATE TABLE `melis_cms_prospects_themes` (
  `pros_theme_id` int(11) NOT NULL,
  `pros_theme_name` varchar(45) NOT NULL,
  `pros_theme_code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_prospects_themes`
--

INSERT INTO `melis_cms_prospects_themes` (`pros_theme_id`, `pros_theme_name`, `pros_theme_code`) VALUES
(1, 'Melis Demo CMS Contact', 'MELIS_DEMO_CMS_CONTACT'),
(2, 'GotoPublish', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_prospects_theme_items`
--

CREATE TABLE `melis_cms_prospects_theme_items` (
  `pros_theme_item_id` int(11) NOT NULL,
  `pros_theme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_prospects_theme_items`
--

INSERT INTO `melis_cms_prospects_theme_items` (`pros_theme_item_id`, `pros_theme_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_prospects_theme_items_trans`
--

CREATE TABLE `melis_cms_prospects_theme_items_trans` (
  `item_trans_id` int(11) NOT NULL,
  `item_trans_text` varchar(255) NOT NULL,
  `item_trans_lang_id` int(11) NOT NULL,
  `item_trans_theme_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_prospects_theme_items_trans`
--

INSERT INTO `melis_cms_prospects_theme_items_trans` (`item_trans_id`, `item_trans_text`, `item_trans_lang_id`, `item_trans_theme_item_id`) VALUES
(1, 'About a product', 1, 1),
(2, 'About the company', 1, 2),
(3, 'Press related', 1, 3),
(4, 'Apply for a position', 1, 4),
(5, 'Other', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site`
--

CREATE TABLE `melis_cms_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(45) NOT NULL,
  `site_label` varchar(100) NOT NULL,
  `site_opt_lang_url` tinyint(4) NOT NULL DEFAULT '1',
  `site_main_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of melis websites declared';

--
-- Dumping data for table `melis_cms_site`
--

INSERT INTO `melis_cms_site` (`site_id`, `site_name`, `site_label`, `site_opt_lang_url`, `site_main_page_id`) VALUES
(1, 'MelisDemoCms', 'Melis Demo CMS', 1, 1),
(108, 'Authors', 'Rose Ethridge', 1, 254),
(110, 'AuthorsMulti', 'Arthur Deegan', 1, 262),
(111, 'Authors', 'rose 2', 1, 266);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_301`
--

CREATE TABLE `melis_cms_site_301` (
  `s301_id` int(11) NOT NULL COMMENT 'site redirect id',
  `s301_site_id` int(11) DEFAULT NULL COMMENT 'Site Id',
  `s301_old_url` varchar(255) NOT NULL COMMENT 'Old Site url',
  `s301_new_url` varchar(255) NOT NULL COMMENT 'New Site url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Site redirect';

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_404`
--

CREATE TABLE `melis_cms_site_404` (
  `s404_id` int(11) NOT NULL,
  `s404_site_id` int(11) NOT NULL,
  `s404_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of 404 pages per site';

--
-- Dumping data for table `melis_cms_site_404`
--

INSERT INTO `melis_cms_site_404` (`s404_id`, `s404_site_id`, `s404_page_id`) VALUES
(1, -1, 1),
(2, 1, 37);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_config`
--

CREATE TABLE `melis_cms_site_config` (
  `sconf_id` int(11) NOT NULL,
  `sconf_site_id` int(11) NOT NULL,
  `sconf_lang_id` int(11) NOT NULL,
  `sconf_datas` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_site_config`
--

INSERT INTO `melis_cms_site_config` (`sconf_id`, `sconf_site_id`, `sconf_lang_id`, `sconf_datas`) VALUES
(1, 21, -1, 'a:0:{}'),
(2, 21, 1, 'a:0:{}'),
(3, 32, -1, 'a:0:{}'),
(4, 32, 1, 'a:0:{}'),
(7, 105, -1, 'a:0:{}'),
(8, 105, 1, 'a:0:{}'),
(11, 107, -1, 'a:0:{}'),
(12, 107, 1, 'a:0:{}'),
(15, 109, -1, 'a:0:{}'),
(16, 109, 1, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_domain`
--

CREATE TABLE `melis_cms_site_domain` (
  `sdom_id` int(11) NOT NULL,
  `sdom_site_id` int(11) NOT NULL,
  `sdom_env` varchar(50) NOT NULL,
  `sdom_scheme` varchar(10) NOT NULL,
  `sdom_domain` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of domains per site and per environments';

--
-- Dumping data for table `melis_cms_site_domain`
--

INSERT INTO `melis_cms_site_domain` (`sdom_id`, `sdom_site_id`, `sdom_env`, `sdom_scheme`, `sdom_domain`) VALUES
(1, 1, 'development', 'http', 'melis.gotoauthors.com'),
(108, 108, 'development', 'http', 'wayfairermagazine.com'),
(110, 110, 'development', 'http', 'arthurdeegan.com'),
(111, 111, 'development', 'http', 'roses.com');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_home`
--

CREATE TABLE `melis_cms_site_home` (
  `shome_id` int(11) NOT NULL,
  `shome_site_id` int(11) NOT NULL,
  `shome_lang_id` int(11) NOT NULL,
  `shome_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_site_home`
--

INSERT INTO `melis_cms_site_home` (`shome_id`, `shome_site_id`, `shome_lang_id`, `shome_page_id`) VALUES
(1, 1, 1, 1),
(58, 108, 1, 254),
(60, 110, 1, 262),
(61, 111, 1, 266);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_site_langs`
--

CREATE TABLE `melis_cms_site_langs` (
  `slang_id` int(11) NOT NULL,
  `slang_site_id` int(11) NOT NULL,
  `slang_lang_id` int(11) NOT NULL,
  `slang_status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_site_langs`
--

INSERT INTO `melis_cms_site_langs` (`slang_id`, `slang_site_id`, `slang_lang_id`, `slang_status`) VALUES
(1, 1, 1, 1),
(58, 108, 1, 1),
(60, 110, 1, 1),
(61, 111, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_slider`
--

CREATE TABLE `melis_cms_slider` (
  `mcslide_id` int(11) NOT NULL,
  `mcslide_name` varchar(255) NOT NULL,
  `mcslide_page_id` int(11) DEFAULT NULL,
  `mcslide_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_slider`
--

INSERT INTO `melis_cms_slider` (`mcslide_id`, `mcslide_name`, `mcslide_page_id`, `mcslide_date`) VALUES
(1, 'Homepage Header Slider', 1, '2019-07-09 20:36:49'),
(2, 'About us - Our Team', 29, '2019-07-09 20:36:49'),
(3, 'Book reviews', 1, NULL),
(4, 'Test Slider', 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_slider_details`
--

CREATE TABLE `melis_cms_slider_details` (
  `mcsdetail_id` int(11) NOT NULL,
  `mcsdetail_mcslider_id` int(11) NOT NULL,
  `mcsdetail_status` tinyint(4) NOT NULL,
  `mcsdetail_title` varchar(255) DEFAULT NULL,
  `mcsdetail_sub1` varchar(255) DEFAULT NULL,
  `mcsdetail_sub2` varchar(255) DEFAULT NULL,
  `mcsdetail_sub3` varchar(255) DEFAULT NULL,
  `mcsdetail_link` longtext,
  `mcsdetail_img` longtext,
  `mcsdetail_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_slider_details`
--

INSERT INTO `melis_cms_slider_details` (`mcsdetail_id`, `mcsdetail_mcslider_id`, `mcsdetail_status`, `mcsdetail_title`, `mcsdetail_sub1`, `mcsdetail_sub2`, `mcsdetail_sub3`, `mcsdetail_link`, `mcsdetail_img`, `mcsdetail_order`) VALUES
(1, 1, 1, 'New Fashion Event 2017!', 'Best Collection', 'Discover it!', '', '/news/news-details/id/3?newsid=9', '/MelisDemoCms/images/slider/slider01.jpg', 1),
(2, 1, 1, 'Best Suit Collection', 'Exclusive Fashion 2017', 'Check it out!', '', '/our-designs/suits/id/11', '/MelisDemoCms/images/slider/slider02.jpg', 2),
(3, 1, 1, 'What type of model are you?', 'Exclusive Quiz!', 'Take the test', '', '/news/news-details/id/3?newsid=5', '/MelisDemoCms/images/slider/slider03.jpg', 3),
(4, 2, 1, 'Wendy Silver', 'Stylist', NULL, NULL, NULL, '/MelisDemoCms/images/team/01.jpg', 1),
(5, 2, 1, 'Robert Stian', 'Designer', NULL, NULL, NULL, '/MelisDemoCms/images/team/02.jpg', 2),
(6, 2, 1, 'Edward Liton', 'Event Expert', NULL, NULL, NULL, '/MelisDemoCms/images/team/03.jpg', 3),
(7, 2, 1, 'Beth Gentle', 'Model', NULL, NULL, NULL, '/MelisDemoCms/images/team/04.jpg', 4),
(8, 2, 1, 'Greg Dylan', 'Fashion Expert', NULL, NULL, NULL, '/MelisDemoCms/images/team/05.jpg', 5),
(9, 2, 1, 'Christine Bolian', 'Press officer', NULL, NULL, NULL, '/MelisDemoCms/images/team/06.jpg', 6),
(10, 2, 1, 'Michael Stans', 'Model', NULL, NULL, NULL, '/MelisDemoCms/images/team/07.jpg', 7),
(11, 3, 1, 'Book review 1', 'sample review sample review sample review sample review', '', '', '', NULL, 1),
(12, 3, 1, 'Book review 2', 'sample reviewsample reviewsample review sample review', '', '', '', NULL, 2),
(13, 4, 1, 'Slide 1', '', '', '', '', '/media/sliders/4/book-2.png', 1),
(14, 4, 0, 'Slide 2', '', '', '', '', '/media/sliders/4/book-3.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_style`
--

CREATE TABLE `melis_cms_style` (
  `style_id` int(11) NOT NULL,
  `style_site_id` int(11) NOT NULL,
  `style_name` varchar(255) NOT NULL,
  `style_status` smallint(6) NOT NULL,
  `style_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_cms_style`
--

INSERT INTO `melis_cms_style` (`style_id`, `style_site_id`, `style_name`, `style_status`, `style_path`) VALUES
(3, 23, 'Red Scheme', 1, '/Authors/assets/schemes/maroon-scheme.css'),
(4, 23, 'Blue Scheme', 1, '/Authors/assets/schemes/blue-scheme.css'),
(5, 23, 'Lemon Green Scheme', 1, '/Authors/assets/schemes/lemon-green-scheme.css'),
(6, 23, 'Gold Scheme', 1, '/Authors/assets/schemes/gold-scheme.css'),
(7, 23, 'Sky Blue Scheme', 1, '/Authors/assets/schemes/sky-blue-scheme.css');

-- --------------------------------------------------------

--
-- Table structure for table `melis_cms_template`
--

CREATE TABLE `melis_cms_template` (
  `tpl_id` int(11) NOT NULL,
  `tpl_site_id` int(11) NOT NULL,
  `tpl_name` varchar(255) NOT NULL,
  `tpl_type` enum('PHP','ZF2') NOT NULL DEFAULT 'ZF2',
  `tpl_zf2_website_folder` varchar(50) DEFAULT NULL,
  `tpl_zf2_layout` varchar(50) DEFAULT NULL,
  `tpl_zf2_controller` varchar(50) DEFAULT NULL,
  `tpl_zf2_action` varchar(50) DEFAULT NULL,
  `tpl_php_path` varchar(150) DEFAULT NULL,
  `tpl_creation_date` datetime DEFAULT NULL,
  `tpl_last_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of Melis Templates used by the pages';

--
-- Dumping data for table `melis_cms_template`
--

INSERT INTO `melis_cms_template` (`tpl_id`, `tpl_site_id`, `tpl_name`, `tpl_type`, `tpl_zf2_website_folder`, `tpl_zf2_layout`, `tpl_zf2_controller`, `tpl_zf2_action`, `tpl_php_path`, `tpl_creation_date`, `tpl_last_user_id`) VALUES
(1, 1, 'Home', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'Home', 'index', NULL, '2019-07-09 20:36:49', NULL),
(2, 1, 'News List', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'News', 'list', NULL, '2019-07-09 20:36:49', NULL),
(3, 1, 'News Details', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'News', 'details', NULL, '2019-07-09 20:36:49', NULL),
(4, 1, 'Content List', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'Content', 'list', NULL, '2019-07-09 20:36:49', NULL),
(5, 1, 'Content Details', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'Content', 'details', NULL, '2019-07-09 20:36:49', NULL),
(6, 1, 'About', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'About', 'aboutus', NULL, '2019-07-09 20:36:49', NULL),
(7, 1, 'Contact', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'Contact', 'contactus', NULL, '2019-07-09 20:36:49', NULL),
(8, 1, 'Testimonial', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'Testimonial', 'testimonial', NULL, '2019-07-09 20:36:49', NULL),
(9, 1, 'Search', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'Search', 'results', NULL, '2019-07-09 20:36:49', NULL),
(10, 1, '404', 'ZF2', 'MelisDemoCms', 'defaultLayout', 'Page404', 'index', NULL, '2019-07-09 20:36:49', NULL),
(13, 3, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', NULL, '2019-07-12 06:40:28', 3),
(14, 3, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', NULL, '2019-07-10 00:49:19', 3),
(15, 3, 'Blog details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', NULL, '2019-07-10 01:40:21', 3),
(25, 7, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Home', 'index', '', '2019-07-16 02:29:26', NULL),
(26, 7, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-16 02:29:26', NULL),
(27, 7, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-16 02:29:26', NULL),
(28, 7, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'Details', '', '2019-07-16 02:29:26', NULL),
(29, 8, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-16 02:33:19', NULL),
(30, 8, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-16 02:33:19', NULL),
(31, 8, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-16 02:33:19', NULL),
(32, 8, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'Details', '', '2019-07-16 02:33:19', NULL),
(33, 9, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-16 04:55:18', NULL),
(34, 9, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-16 04:55:18', NULL),
(35, 9, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-16 04:55:18', NULL),
(36, 9, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'Details', '', '2019-07-16 04:55:18', NULL),
(37, 10, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-16 06:22:38', NULL),
(38, 10, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-16 06:22:38', NULL),
(39, 10, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-16 06:22:38', NULL),
(40, 10, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'Details', '', '2019-07-16 06:22:38', NULL),
(41, 11, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-16 08:14:19', NULL),
(42, 11, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-16 08:14:19', NULL),
(43, 11, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-16 08:14:19', NULL),
(44, 11, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-16 08:14:19', NULL),
(45, 19, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-17 00:42:22', NULL),
(46, 19, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-17 00:42:22', NULL),
(47, 19, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-17 00:42:22', NULL),
(48, 19, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-17 00:42:22', NULL),
(49, 20, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-17 00:43:26', NULL),
(50, 20, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-17 00:43:26', NULL),
(51, 20, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-17 00:43:26', NULL),
(52, 20, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-17 00:43:26', NULL),
(53, 21, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-17 01:37:57', NULL),
(54, 21, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-17 01:37:57', NULL),
(55, 21, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-17 01:37:57', NULL),
(56, 21, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-17 01:37:57', NULL),
(57, 22, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-17 05:18:23', NULL),
(58, 22, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-17 05:18:23', NULL),
(59, 22, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-17 05:18:23', NULL),
(60, 22, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-17 05:18:23', NULL),
(61, 23, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-17 06:21:00', NULL),
(62, 23, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-17 06:21:00', NULL),
(63, 23, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-17 06:21:00', NULL),
(64, 23, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-17 06:21:00', NULL),
(65, 24, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-22 02:54:45', NULL),
(66, 24, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-22 02:54:45', NULL),
(67, 24, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-22 02:54:45', NULL),
(68, 24, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-22 02:54:45', NULL),
(69, 25, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-23 02:07:09', NULL),
(70, 25, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-23 02:07:09', NULL),
(71, 25, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-23 02:07:09', NULL),
(72, 25, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-23 02:07:09', NULL),
(73, 26, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-23 02:08:42', NULL),
(74, 26, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-23 02:08:42', NULL),
(75, 26, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-23 02:08:42', NULL),
(76, 26, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-23 02:08:42', NULL),
(77, 27, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-23 02:13:15', NULL),
(78, 27, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-23 02:13:15', NULL),
(79, 27, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-23 02:13:15', NULL),
(80, 27, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-23 02:13:15', NULL),
(81, 28, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-24 23:34:43', NULL),
(82, 28, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-24 23:34:43', NULL),
(83, 28, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-24 23:34:43', NULL),
(84, 28, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-24 23:34:43', NULL),
(85, 29, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-25 00:51:32', NULL),
(86, 29, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-25 00:51:32', NULL),
(87, 29, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-25 00:51:32', NULL),
(88, 29, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-25 00:51:32', NULL),
(89, 30, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-25 02:16:53', NULL),
(90, 30, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-25 02:16:53', NULL),
(91, 30, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-25 02:16:53', NULL),
(92, 30, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-25 02:16:53', NULL),
(93, 31, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-25 04:22:55', NULL),
(94, 31, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-25 04:22:55', NULL),
(95, 31, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-25 04:22:55', NULL),
(96, 31, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-25 04:22:55', NULL),
(97, 32, 'Home', 'ZF2', 'Sam', 'defaultLayout', 'Index', 'index', '', '2019-07-25 05:54:23', NULL),
(98, 32, 'Blog', 'ZF2', 'Sam', 'defaultLayout', 'Blog', 'index', '', '2019-07-25 05:54:23', NULL),
(99, 32, 'Details', 'ZF2', 'Sam', 'defaultLayout', 'Blog', 'details', '', '2019-07-25 05:54:23', NULL),
(100, 32, '404', 'ZF2', 'Sam', 'defaultLayout', 'Page404', 'index', '', '2019-07-25 05:54:23', NULL),
(101, 33, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-29 04:52:23', NULL),
(102, 33, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-29 04:52:23', NULL),
(103, 33, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-29 04:52:23', NULL),
(104, 33, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-29 04:52:23', NULL),
(105, 34, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-29 06:26:19', NULL),
(106, 34, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-29 06:26:19', NULL),
(107, 34, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-29 06:26:20', NULL),
(108, 34, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-29 06:26:20', NULL),
(109, 35, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-29 06:38:14', NULL),
(110, 35, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-29 06:38:14', NULL),
(111, 35, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-29 06:38:14', NULL),
(112, 35, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-29 06:38:14', NULL),
(113, 36, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-29 06:43:30', NULL),
(114, 36, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-29 06:43:30', NULL),
(115, 36, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-29 06:43:30', NULL),
(116, 36, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-29 06:43:30', NULL),
(117, 37, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-29 06:48:24', NULL),
(118, 37, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-29 06:48:24', NULL),
(119, 37, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-29 06:48:24', NULL),
(120, 37, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-29 06:48:24', NULL),
(121, 43, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-29 07:39:22', NULL),
(122, 43, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-29 07:39:22', NULL),
(123, 43, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-29 07:39:22', NULL),
(124, 43, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-29 07:39:22', NULL),
(125, 45, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-30 02:14:03', NULL),
(126, 45, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-30 02:14:03', NULL),
(127, 45, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-30 02:14:03', NULL),
(128, 45, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-30 02:14:03', NULL),
(129, 46, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-30 06:55:20', NULL),
(130, 46, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-30 06:55:20', NULL),
(131, 46, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-30 06:55:20', NULL),
(132, 46, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-30 06:55:20', NULL),
(133, 47, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-30 07:00:08', NULL),
(134, 47, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-30 07:00:08', NULL),
(135, 47, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-30 07:00:08', NULL),
(136, 47, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-30 07:00:08', NULL),
(137, 48, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-07-30 07:13:47', NULL),
(138, 48, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-07-30 07:13:47', NULL),
(139, 48, 'Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-07-30 07:13:47', NULL),
(140, 48, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-07-30 07:13:47', NULL),
(155, 78, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Home', 'index', '', '2019-08-09 04:42:58', NULL),
(156, 78, '404', 'ZF2', 'Authors', 'defaultLayout', 'Page404', 'index', '', '2019-08-09 04:42:58', NULL),
(157, 79, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-09 04:45:22', NULL),
(158, 79, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-09 04:45:22', NULL),
(159, 79, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-09 04:45:22', NULL),
(160, 80, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-09 04:47:20', NULL),
(161, 80, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-09 04:47:20', NULL),
(162, 80, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-09 04:47:20', NULL),
(163, 87, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-09 05:17:41', NULL),
(164, 87, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-09 05:17:41', NULL),
(165, 88, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-09 05:18:45', NULL),
(166, 88, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-09 05:18:46', NULL),
(167, 91, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-09 05:22:38', NULL),
(168, 91, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-09 05:22:38', NULL),
(169, 93, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-09 05:36:38', NULL),
(170, 93, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-09 05:36:38', NULL),
(171, 93, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-09 05:36:38', NULL),
(172, 93, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'details', '', '2019-08-09 05:36:38', NULL),
(173, 94, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-09 05:50:23', NULL),
(174, 94, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-09 05:50:23', NULL),
(175, 94, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-09 05:50:23', NULL),
(176, 94, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-09 05:50:23', NULL),
(177, 95, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-13 00:20:22', NULL),
(178, 95, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-13 00:20:22', NULL),
(179, 95, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-13 00:20:22', NULL),
(180, 95, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-13 00:20:22', NULL),
(181, 98, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-13 01:22:43', NULL),
(182, 98, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-13 01:22:43', NULL),
(183, 98, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-13 01:22:43', NULL),
(184, 98, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-13 01:22:43', NULL),
(185, 100, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-13 01:28:27', NULL),
(186, 100, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-13 01:28:27', NULL),
(187, 100, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-13 01:28:27', NULL),
(188, 100, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-13 01:28:27', NULL),
(189, 101, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-13 05:32:46', NULL),
(190, 101, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-13 05:32:46', NULL),
(191, 101, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-13 05:32:46', NULL),
(192, 101, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-13 05:32:46', NULL),
(193, 102, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-15 01:51:55', NULL),
(194, 102, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-15 01:51:55', NULL),
(195, 102, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-15 01:51:55', NULL),
(196, 102, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-15 01:51:55', NULL),
(197, 103, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-15 05:31:35', NULL),
(198, 103, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-15 05:31:35', NULL),
(199, 103, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-15 05:31:35', NULL),
(200, 103, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-15 05:31:35', NULL),
(201, 104, 'Home', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Index', 'index', '', '2019-08-20 00:17:56', NULL),
(202, 104, 'Blog', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'index', '', '2019-08-20 00:17:56', NULL),
(203, 104, 'Blog Details', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'details', '', '2019-08-20 00:17:56', NULL),
(204, 104, '404', 'ZF2', 'AuthorsMulti', 'defaultLayout', '404', 'index', '', '2019-08-20 00:17:56', NULL),
(205, 105, 'Home', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Index', 'index', '', '2019-08-20 00:37:41', NULL),
(206, 105, 'Blog', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'index', '', '2019-08-20 00:37:41', NULL),
(207, 105, 'Blog Details', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'details', '', '2019-08-20 00:37:41', NULL),
(208, 105, '404', 'ZF2', 'AuthorsMulti', 'defaultLayout', '404', 'index', '', '2019-08-20 00:37:42', NULL),
(209, 106, 'Home', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Index', 'index', '', '2019-08-20 02:38:59', NULL),
(210, 106, 'Blog', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'index', '', '2019-08-20 02:38:59', NULL),
(211, 106, 'Blog Details', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'details', '', '2019-08-20 02:38:59', NULL),
(212, 106, '404', 'ZF2', 'AuthorsMulti', 'defaultLayout', '404', 'index', '', '2019-08-20 02:38:59', NULL),
(213, 107, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-20 04:41:42', NULL),
(214, 107, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-20 04:41:42', NULL),
(215, 107, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-20 04:41:42', NULL),
(216, 107, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-20 04:41:42', NULL),
(217, 108, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-22 01:39:49', NULL),
(218, 108, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-22 01:39:49', NULL),
(219, 108, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-22 01:39:49', NULL),
(220, 108, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-22 01:39:49', NULL),
(221, 109, 'Home', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Index', 'index', '', '2019-08-22 01:50:01', NULL),
(222, 109, 'Blog', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'index', '', '2019-08-22 01:50:01', NULL),
(223, 109, 'Blog Details', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'details', '', '2019-08-22 01:50:01', NULL),
(224, 109, '404', 'ZF2', 'AuthorsMulti', 'defaultLayout', '404', 'index', '', '2019-08-22 01:50:01', NULL),
(225, 110, 'Home', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Index', 'index', '', '2019-08-22 04:21:11', NULL),
(226, 110, 'Blog', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'index', '', '2019-08-22 04:21:11', NULL),
(227, 110, 'Blog Details', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'details', '', '2019-08-22 04:21:11', NULL),
(228, 110, '404', 'ZF2', 'AuthorsMulti', 'defaultLayout', '404', 'index', '', '2019-08-22 04:21:11', NULL),
(229, 111, 'Home', 'ZF2', 'Authors', 'defaultLayout', 'Index', 'index', '', '2019-08-22 05:11:03', NULL),
(230, 111, 'Blog', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'index', '', '2019-08-22 05:11:04', NULL),
(231, 111, 'Blog Details', 'ZF2', 'Authors', 'defaultLayout', 'Blog', 'details', '', '2019-08-22 05:11:04', NULL),
(232, 111, '404', 'ZF2', 'Authors', 'defaultLayout', '404', 'index', '', '2019-08-22 05:11:04', NULL),
(233, 112, 'Home', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Index', 'index', '', '2019-08-22 05:55:19', NULL),
(234, 112, 'Blog', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'index', '', '2019-08-22 05:55:19', NULL),
(235, 112, 'Blog Details', 'ZF2', 'AuthorsMulti', 'defaultLayout', 'Blog', 'details', '', '2019-08-22 05:55:19', NULL),
(236, 112, '404', 'ZF2', 'AuthorsMulti', 'defaultLayout', '404', 'index', '', '2019-08-22 05:55:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_bo_emails`
--

CREATE TABLE `melis_core_bo_emails` (
  `boe_id` int(11) NOT NULL,
  `boe_name` varchar(255) NOT NULL,
  `boe_code_name` varchar(255) NOT NULL,
  `boe_from_name` varchar(255) NOT NULL,
  `boe_from_email` varchar(255) NOT NULL,
  `boe_reply_to` varchar(255) DEFAULT NULL,
  `boe_tag_accepted_list` text,
  `boe_content_layout` varchar(255) DEFAULT NULL,
  `boe_content_layout_title` varchar(255) DEFAULT NULL,
  `boe_content_layout_logo` text,
  `boe_content_layout_ftr_info` text,
  `boe_last_edit_date` datetime NOT NULL,
  `boe_last_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_bo_emails_details`
--

CREATE TABLE `melis_core_bo_emails_details` (
  `boed_id` int(11) NOT NULL,
  `boed_email_id` int(11) NOT NULL,
  `boed_lang_id` int(11) NOT NULL,
  `boed_subject` varchar(255) NOT NULL,
  `boed_html` longtext NOT NULL,
  `boed_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_dashboards`
--

CREATE TABLE `melis_core_dashboards` (
  `d_id` int(11) NOT NULL COMMENT 'Dashboard plugin ID',
  `d_dashboard_id` varchar(45) NOT NULL COMMENT 'Dashboard ID',
  `d_user_id` int(11) NOT NULL COMMENT 'Dashboard plugin user ID',
  `d_content` text COMMENT 'Plugins xml data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_dashboards`
--

INSERT INTO `melis_core_dashboards` (`d_id`, `d_dashboard_id`, `d_user_id`, `d_content`) VALUES
(1, 'id_meliscore_toolstree_section_dashboard', 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Plugins>\n<plugin plugin=\"MelisCoreDashboardRecentUserActivityPlugin\" plugin_id=\"RecentUserActivity_1562704668\">\n	<x-axis><![CDATA[6]]></x-axis>\n	<y-axis><![CDATA[0]]></y-axis>\n	<height><![CDATA[4]]></height>\n	<width><![CDATA[6]]></width>\n</plugin>\n<plugin plugin=\"MelisCmsPagesIndicatorsPlugin\" plugin_id=\"PagesIndicators_1562704676\">\n	<x-axis><![CDATA[0]]></x-axis>\n	<y-axis><![CDATA[0]]></y-axis>\n	<height><![CDATA[4]]></height>\n	<width><![CDATA[6]]></width>\n</plugin>\n</Plugins>'),
(2, 'id_meliscore_toolstree_section_dashboard', 3, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Plugins>\n<plugin plugin=\"MelisCmsPagesIndicatorsPlugin\" plugin_id=\"PagesIndicators_1563768094\">\n	<x-axis><![CDATA[0]]></x-axis>\n	<y-axis><![CDATA[0]]></y-axis>\n	<height><![CDATA[4]]></height>\n	<width><![CDATA[6]]></width>\n</plugin>\n<plugin plugin=\"MelisCmsPageHistoricRecentUserActivityPlugin\" plugin_id=\"recentActivity_1563768100\">\n	<x-axis><![CDATA[6]]></x-axis>\n	<y-axis><![CDATA[0]]></y-axis>\n	<height><![CDATA[4]]></height>\n	<width><![CDATA[6]]></width>\n</plugin>\n<plugin plugin=\"MelisCoreDashboardRecentUserActivityPlugin\" plugin_id=\"RecentUserActivity_1563768108\">\n	<x-axis><![CDATA[0]]></x-axis>\n	<y-axis><![CDATA[4]]></y-axis>\n	<height><![CDATA[4]]></height>\n	<width><![CDATA[6]]></width>\n</plugin>\n<plugin plugin=\"MelisCalendarEventsPlugin\" plugin_id=\"CalendarEvents_1563768122\">\n	<x-axis><![CDATA[6]]></x-axis>\n	<y-axis><![CDATA[4]]></y-axis>\n	<height><![CDATA[4]]></height>\n	<width><![CDATA[6]]></width>\n</plugin>\n</Plugins>');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_lang`
--

CREATE TABLE `melis_core_lang` (
  `lang_id` int(11) NOT NULL,
  `lang_locale` varchar(10) NOT NULL DEFAULT 'en_EN',
  `lang_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Languages available';

--
-- Dumping data for table `melis_core_lang`
--

INSERT INTO `melis_core_lang` (`lang_id`, `lang_locale`, `lang_name`) VALUES
(1, 'en_EN', 'English'),
(2, 'fr_FR', 'Français');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_log`
--

CREATE TABLE `melis_core_log` (
  `log_id` int(11) NOT NULL COMMENT 'Log Id',
  `log_title` varchar(255) NOT NULL COMMENT 'log title',
  `log_message` varchar(255) NOT NULL COMMENT 'log message',
  `log_action_status` int(11) NOT NULL DEFAULT '0' COMMENT 'The status of the action "1" or "0"',
  `log_type_id` int(11) NOT NULL COMMENT 'log type it is the foriegn key of melis_core_type id',
  `log_item_id` int(11) DEFAULT NULL COMMENT 'Log item Id is the foreign key of the item (item can be UserId, SiteId, TemplateId, ProspectId etc...)',
  `log_user_id` int(11) NOT NULL COMMENT 'User Id who trigger the event',
  `log_date_added` datetime NOT NULL COMMENT 'Log date added/created',
  `log_status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Melis Core Logs';

--
-- Dumping data for table `melis_core_log`
--

INSERT INTO `melis_core_log` (`log_id`, `log_title`, `log_message`, `log_action_status`, `log_type_id`, `log_item_id`, `log_user_id`, `log_date_added`, `log_status`) VALUES
(1, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 2, 1, '2019-07-09 20:39:25', 0),
(2, 'Sites', 'Site has been saved successfully.', 1, 2, 2, 1, '2019-07-09 20:40:03', 0),
(3, 'Publish page \"Litfire Publishing\"', 'tr_meliscms_page_success_Page published', 1, 3, 38, 1, '2019-07-09 20:40:30', 0),
(4, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_new_fail_info', 0, 4, NULL, 1, '2019-07-09 20:56:23', 0),
(5, 'tr_meliscore_user_profile', 'tr_meliscore_user_profile_success_info', 1, 5, 2, 2, '2019-07-09 21:01:16', 0),
(6, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 2, 1, '2019-07-09 21:02:55', 0),
(7, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 3, 1, '2019-07-09 21:03:09', 0),
(8, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 2, 1, '2019-07-09 21:07:03', 0),
(9, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 3, 1, '2019-07-09 21:07:14', 0),
(10, 'Sites', 'Site has been saved successfully.', 1, 2, 2, 3, '2019-07-10 00:00:09', 0),
(11, 'Page: GoToPublish', 'tr_meliscms_page_success_Page saved', 1, 6, 38, 3, '2019-07-10 00:02:46', 0),
(12, 'Publish page \"GoToPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 38, 3, '2019-07-10 00:04:07', 0),
(13, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 11, 3, '2019-07-10 00:12:19', 0),
(14, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 12, 3, '2019-07-10 00:12:41', 0),
(15, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 39, 3, '2019-07-10 00:13:37', 0),
(16, 'Publish page \"GoToPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 38, 3, '2019-07-10 00:13:50', 0),
(17, 'Sites', 'Site has been saved successfully.', 1, 2, 2, 3, '2019-07-10 00:15:21', 0),
(18, 'Sites', 'Site has been saved successfully.', 1, 2, 2, 3, '2019-07-10 00:15:39', 0),
(19, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 11, 3, '2019-07-10 00:16:20', 0),
(20, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 12, 3, '2019-07-10 00:16:27', 0),
(21, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 12, 3, '2019-07-10 00:16:35', 0),
(22, 'Publish page \"GoToPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 38, 3, '2019-07-10 00:16:47', 0),
(23, 'Publish page \"GoToPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 38, 3, '2019-07-10 00:18:03', 0),
(24, 'Publish page \"Melis Demo CMS\"', 'tr_meliscms_page_success_Page published', 1, 3, 1, 3, '2019-07-10 00:25:01', 0),
(25, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 39, 3, '2019-07-10 00:26:21', 0),
(26, 'Deleted Page 38', 'tr_meliscms_page_error_Some errors occured while processing the request. Please find details bellow.', 0, 8, 38, 3, '2019-07-10 00:29:17', 0),
(27, 'Deleted Page 38', 'tr_meliscms_page_error_Some errors occured while processing the request. Please find details bellow.', 0, 8, 38, 3, '2019-07-10 00:29:33', 0),
(28, ' Page 39 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 39, 3, '2019-07-10 00:29:41', 0),
(29, ' Page 38 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 38, 3, '2019-07-10 00:29:45', 0),
(30, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 2, 3, '2019-07-10 00:29:57', 0),
(31, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 3, 3, '2019-07-10 00:30:32', 0),
(32, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 00:30:40', 0),
(33, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 13, 3, '2019-07-10 00:31:02', 0),
(34, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:31:09', 0),
(35, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 00:36:24', 0),
(36, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 14, 3, '2019-07-10 00:36:59', 0),
(37, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 12, 3, '2019-07-10 00:37:11', 0),
(38, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 11, 3, '2019-07-10 00:37:17', 0),
(39, 'Sites', 'Site has been saved successfully.', 1, 2, 3, 3, '2019-07-10 00:38:41', 0),
(40, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 00:39:25', 0),
(41, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 00:40:03', 0),
(42, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 00:40:17', 0),
(43, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 00:40:46', 0),
(44, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 00:44:32', 0),
(45, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:45:46', 0),
(46, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:46:01', 0),
(47, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:46:42', 0),
(48, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:47:03', 0),
(49, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:47:22', 0),
(50, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:47:53', 0),
(51, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:48:16', 0),
(52, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 14, 3, '2019-07-10 00:49:19', 0),
(53, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:49:45', 0),
(54, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:51:31', 0),
(55, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:53:41', 0),
(56, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:54:05', 0),
(57, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 00:54:25', 0),
(58, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 01:28:55', 0),
(59, 'Page: Blog Details', 'tr_meliscms_page_success_Page saved', 1, 11, 42, 3, '2019-07-10 01:39:30', 0),
(60, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 42, 3, '2019-07-10 01:39:47', 0),
(61, 'tr_tool_templates_modal_tab_text_add', 'tr_tool_template_fm_new_content', 1, 12, 15, 3, '2019-07-10 01:40:21', 0),
(62, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 42, 3, '2019-07-10 01:41:34', 0),
(63, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_success', 1, 13, 18, 3, '2019-07-10 01:52:54', 0),
(64, 'Themes', 'Theme saved successfully', 1, 14, 2, 3, '2019-07-10 02:04:46', 0),
(65, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:28:22', 0),
(66, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:29:28', 0),
(67, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:29:52', 0),
(68, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:30:13', 0),
(69, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:31:17', 0),
(70, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:31:55', 0),
(71, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:32:25', 0),
(72, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:32:57', 0),
(73, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:33:25', 0),
(74, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:33:44', 0),
(75, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:33:59', 0),
(76, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-10 05:37:49', 0),
(77, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-10 06:28:03', 0),
(78, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_file_success', 1, 15, 18, 3, '2019-07-10 07:23:28', 0),
(79, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 1, '2019-07-10 14:11:45', 0),
(80, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-11 00:40:06', 0),
(81, ' Page 43 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 43, 3, '2019-07-11 02:22:45', 0),
(82, 'Duplicate tree', 'Failed to duplicate page tree', 0, 16, NULL, 3, '2019-07-11 02:23:21', 0),
(83, 'Duplicate tree', 'Failed to duplicate page tree', 0, 16, 40, 3, '2019-07-11 02:23:40', 0),
(84, 'Duplicate tree', 'Page tree has been duplicated successfully', 1, 16, 40, 3, '2019-07-11 02:24:09', 0),
(85, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 44, 3, '2019-07-11 02:24:36', 0),
(86, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 44, 3, '2019-07-11 02:24:48', 0),
(87, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 45, 3, '2019-07-11 02:25:07', 0),
(88, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 46, 3, '2019-07-11 02:25:19', 0),
(89, 'Deleted Page 44', 'tr_meliscms_page_error_Some errors occured while processing the request. Please find details bellow.', 0, 8, 44, 3, '2019-07-11 02:26:04', 0),
(90, ' Page 46 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 46, 3, '2019-07-11 02:26:13', 0),
(91, ' Page 45 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 45, 3, '2019-07-11 02:26:21', 0),
(92, ' Page 44 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 44, 3, '2019-07-11 02:26:25', 0),
(93, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 4, 3, '2019-07-11 04:15:25', 0),
(94, 'Duplicate tree', 'Failed to duplicate page tree', 0, 16, NULL, 3, '2019-07-11 04:15:44', 0),
(95, 'Duplicate tree', 'Page tree has been duplicated successfully', 1, 16, 40, 3, '2019-07-11 04:15:51', 0),
(96, 'Deleted Page 49', 'tr_meliscms_page_error_Some errors occured while processing the request. Please find details bellow.', 0, 8, 49, 3, '2019-07-11 04:16:04', 0),
(97, ' Page 51 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 51, 3, '2019-07-11 04:16:13', 0),
(98, ' Page 50 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 50, 3, '2019-07-11 04:16:26', 0),
(99, ' Page 49 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 49, 3, '2019-07-11 04:16:30', 0),
(100, ' Page 48 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 48, 3, '2019-07-11 04:16:35', 0),
(101, 'Duplicate tree', 'Page tree has been duplicated successfully', 1, 16, 41, 3, '2019-07-11 04:17:00', 0),
(102, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 52, 3, '2019-07-11 04:17:37', 0),
(103, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 53, 3, '2019-07-11 04:17:59', 0),
(104, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 16, 3, '2019-07-11 04:18:23', 0),
(105, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 47, 3, '2019-07-11 04:18:29', 0),
(106, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 16, 3, '2019-07-11 04:19:18', 0),
(107, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 17, 3, '2019-07-11 04:19:31', 0),
(108, 'tr_tool_templates_modal_tab_text_add', 'tr_tool_template_fm_new_content', 1, 12, 18, 3, '2019-07-11 04:20:04', 0),
(109, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 53, 3, '2019-07-11 04:20:24', 0),
(110, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 47, 3, '2019-07-11 04:20:33', 0),
(111, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 47, 3, '2019-07-11 04:20:58', 0),
(112, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 47, 3, '2019-07-11 04:36:40', 0),
(113, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 47, 3, '2019-07-11 04:37:05', 0),
(114, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 47, 3, '2019-07-11 04:37:21', 0),
(115, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 52, 3, '2019-07-11 04:40:23', 0),
(116, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 52, 3, '2019-07-11 04:41:00', 0),
(117, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 53, 3, '2019-07-11 04:41:33', 0),
(118, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 52, 3, '2019-07-11 04:41:56', 0),
(119, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 1, 3, '2019-07-11 05:04:22', 0),
(120, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 1, 3, '2019-07-11 05:04:30', 0),
(121, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 1, 3, '2019-07-11 05:05:32', 0),
(122, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 1, 3, '2019-07-11 05:06:45', 0),
(123, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 1, 3, '2019-07-11 05:08:39', 0),
(124, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 1, 3, '2019-07-11 05:08:47', 0),
(125, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 1, 3, '2019-07-11 05:10:37', 0),
(126, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 47, 3, '2019-07-11 05:12:19', 0),
(127, ' Page 53 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 53, 3, '2019-07-11 05:20:27', 0),
(128, ' Page 52 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 52, 3, '2019-07-11 05:20:32', 0),
(129, ' Page 47 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 47, 3, '2019-07-11 05:20:36', 0),
(130, 'tr_meliscms_page_user_access_rights', 'tr_meliscms_page_user_access_rights', 0, 8, 47, 3, '2019-07-11 05:20:43', 0),
(131, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 4, 3, '2019-07-11 05:21:24', 0),
(132, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 5, 3, '2019-07-11 05:27:51', 0),
(133, 'Duplicate tree', 'Page tree has been duplicated successfully', 1, 16, 41, 3, '2019-07-11 05:28:30', 0),
(134, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 19, 3, '2019-07-11 05:30:01', 0),
(135, 'Publish page \"Junie Boy\"', 'tr_meliscms_page_success_Page published', 1, 3, 54, 3, '2019-07-11 05:30:52', 0),
(136, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 55, 3, '2019-07-11 05:31:27', 0),
(137, 'tr_tool_templates_modal_tab_text_add', 'tr_tool_template_fm_new_content', 1, 12, 21, 3, '2019-07-11 05:36:39', 0),
(138, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 20, 3, '2019-07-11 05:36:52', 0),
(139, 'tr_tool_templates_modal_tab_text_add', 'tr_tool_template_fm_new_content', 1, 12, 22, 3, '2019-07-11 05:37:33', 0),
(140, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 56, 3, '2019-07-11 05:38:20', 0),
(141, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 57, 3, '2019-07-11 05:38:56', 0),
(142, 'Publish page \"Junie Boy\"', 'tr_meliscms_page_success_Page published', 1, 3, 54, 3, '2019-07-11 05:40:06', 0),
(143, 'Publish page \"Junie Boy\"', 'tr_meliscms_page_success_Page published', 1, 3, 54, 3, '2019-07-11 05:40:25', 0),
(144, 'Publish page \"Junie Boy\"', 'tr_meliscms_page_success_Page published', 1, 3, 54, 3, '2019-07-11 05:40:47', 0),
(145, 'Publish page \"Junie Boy\"', 'tr_meliscms_page_success_Page published', 1, 3, 54, 3, '2019-07-11 05:41:28', 0),
(146, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 2, 3, '2019-07-11 05:42:15', 0),
(147, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 2, 3, '2019-07-11 05:42:24', 0),
(148, 'Publish page \"Junie Boy\"', 'tr_meliscms_page_success_Page published', 1, 3, 54, 3, '2019-07-11 05:45:32', 0),
(149, 'Publish page \"Junie Boy\"', 'tr_meliscms_page_success_Page published', 1, 3, 54, 3, '2019-07-11 05:46:43', 0),
(150, 'Publish page \"Junie Boy\"', 'tr_meliscms_page_success_Page published', 1, 3, 54, 3, '2019-07-11 05:46:58', 0),
(151, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 20, 3, '2019-07-11 06:36:17', 0),
(152, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 20, 3, '2019-07-11 06:40:37', 0),
(153, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 20, 3, '2019-07-11 06:41:04', 0),
(154, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 55, 3, '2019-07-11 06:48:36', 0),
(155, 'Page: Blog', 'tr_meliscms_page_success_Page moved', 1, 19, 56, 3, '2019-07-11 07:01:07', 0),
(156, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 55, 3, '2019-07-11 07:46:52', 0),
(157, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 55, 3, '2019-07-11 07:47:23', 0),
(158, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 5, 3, '2019-07-12 04:39:59', 0),
(159, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 16, 3, '2019-07-12 05:25:03', 0),
(160, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 22, 3, '2019-07-12 05:25:08', 0),
(161, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 21, 3, '2019-07-12 05:25:12', 0),
(162, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 20, 3, '2019-07-12 05:25:16', 0),
(163, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 19, 3, '2019-07-12 05:25:22', 0),
(164, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 18, 3, '2019-07-12 05:25:27', 0),
(165, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 17, 3, '2019-07-12 05:25:32', 0),
(166, ' Page 55 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 55, 3, '2019-07-12 05:27:26', 0),
(167, ' Page 57 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 57, 3, '2019-07-12 05:27:33', 0),
(168, ' Page 56 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 56, 3, '2019-07-12 05:27:37', 0),
(169, ' Page 54 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 54, 3, '2019-07-12 05:27:40', 0),
(170, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 6, 3, '2019-07-12 05:30:35', 0),
(171, 'Sites', 'Site has been saved successfully.', 1, 2, 6, 3, '2019-07-12 05:31:10', 0),
(172, 'Publish page \"Sample Website Demo\"', 'tr_meliscms_page_success_Page published', 1, 3, 58, 3, '2019-07-12 05:32:22', 0),
(173, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 23, 3, '2019-07-12 05:48:10', 0),
(174, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 24, 3, '2019-07-12 05:48:16', 0),
(175, ' Page 59 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 59, 3, '2019-07-12 06:27:32', 0),
(176, ' Page 58 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 58, 3, '2019-07-12 06:27:36', 0),
(177, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 6, 3, '2019-07-12 06:27:49', 0),
(178, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 13, 3, '2019-07-12 06:29:06', 0),
(179, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 13, 3, '2019-07-12 06:36:07', 0),
(180, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_update_content', 1, 7, 13, 3, '2019-07-12 06:40:28', 0),
(181, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 42, 3, '2019-07-14 23:41:20', 0),
(182, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 42, 3, '2019-07-14 23:41:38', 0),
(183, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 42, 3, '2019-07-14 23:41:56', 0),
(184, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 42, 3, '2019-07-15 04:30:52', 0),
(185, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 41, 3, '2019-07-15 05:49:36', 0),
(186, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 42, 3, '2019-07-15 05:49:38', 0),
(187, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-15 06:34:16', 0),
(188, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-15 06:35:07', 0),
(189, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-15 06:36:49', 0),
(190, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 3, '2019-07-15 07:17:55', 0),
(191, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 7, 3, '2019-07-16 02:29:26', 0),
(192, ' Page 63 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 63, 3, '2019-07-16 02:30:18', 0),
(193, ' Page 62 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 62, 3, '2019-07-16 02:30:22', 0),
(194, 'Deleted Page 60', 'tr_meliscms_page_error_Some errors occured while processing the request. Please find details bellow.', 0, 8, 60, 3, '2019-07-16 02:30:27', 0),
(195, ' Page 61 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 61, 3, '2019-07-16 02:30:33', 0),
(196, ' Page 60 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 60, 3, '2019-07-16 02:30:37', 0),
(197, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 7, 3, '2019-07-16 02:30:45', 0),
(198, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 8, 3, '2019-07-16 02:33:19', 0),
(199, 'Sites', 'Site has been saved successfully.', 1, 2, 8, 3, '2019-07-16 02:33:41', 0),
(200, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 64, 3, '2019-07-16 02:34:35', 0),
(201, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 67, 3, '2019-07-16 04:46:29', 0),
(202, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 64, 3, '2019-07-16 04:46:53', 0),
(203, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 66, 3, '2019-07-16 04:48:09', 0),
(204, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 66, 3, '2019-07-16 04:48:50', 0),
(205, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 66, 3, '2019-07-16 04:49:54', 0),
(206, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 65, 3, '2019-07-16 04:50:00', 0),
(207, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 64, 3, '2019-07-16 04:50:24', 0),
(208, 'Page: Charles Adu Gyamfi', 'tr_meliscms_page_success_Page saved', 1, 6, 64, 3, '2019-07-16 04:50:45', 0),
(209, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 64, 3, '2019-07-16 04:50:55', 0),
(210, ' Page 67 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 67, 3, '2019-07-16 04:53:54', 0),
(211, ' Page 66 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 66, 3, '2019-07-16 04:54:03', 0),
(212, ' Page 65 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 65, 3, '2019-07-16 04:54:08', 0),
(213, ' Page 64 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 64, 3, '2019-07-16 04:54:12', 0),
(214, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 8, 3, '2019-07-16 04:54:19', 0),
(215, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 9, 3, '2019-07-16 04:55:18', 0),
(216, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 68, 3, '2019-07-16 05:43:57', 0),
(217, 'Unpublish page \"Charles Adu Gyamfi\"', 'Page unpublished', 1, 20, 68, 3, '2019-07-16 05:44:06', 0),
(218, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 69, 3, '2019-07-16 05:44:24', 0),
(219, 'Unpublish page \"404\"', 'Page unpublished', 1, 20, 69, 3, '2019-07-16 05:44:32', 0),
(220, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 68, 3, '2019-07-16 05:51:21', 0),
(221, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 70, 3, '2019-07-16 05:51:42', 0),
(222, 'Unpublish page \"Blog\"', 'Page unpublished', 1, 20, 70, 3, '2019-07-16 05:51:49', 0),
(223, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 10, 3, '2019-07-16 06:22:39', 0),
(224, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 71, 3, '2019-07-16 07:26:28', 0),
(225, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 70, 3, '2019-07-16 07:26:57', 0),
(226, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 75, 3, '2019-07-16 07:46:12', 0),
(227, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 69, 3, '2019-07-16 08:12:18', 0),
(228, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 11, 3, '2019-07-16 08:14:19', 0),
(229, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 79, 3, '2019-07-16 08:15:12', 0),
(230, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-16 08:21:30', 0),
(231, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-16 08:23:00', 0),
(232, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-16 08:25:30', 0),
(233, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-16 08:26:21', 0),
(234, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-16 08:27:01', 0),
(235, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 4, 2, '2019-07-16 23:19:22', 0),
(236, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 4, 2, '2019-07-16 23:19:59', 0),
(237, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 4, 2, '2019-07-16 23:22:03', 0),
(238, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 5, 2, '2019-07-16 23:30:38', 0),
(239, 'Platform Scheme', 'Platform scheme successfully saved', 1, 21, 2, 2, '2019-07-16 23:33:12', 0),
(240, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 5, 2, '2019-07-16 23:34:01', 0),
(241, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_success', 1, 22, 19, 5, '2019-07-16 23:37:39', 0),
(242, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-17 00:40:39', 0),
(243, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-17 00:42:19', 0),
(244, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 19, 3, '2019-07-17 00:42:23', 0),
(245, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 80, 3, '2019-07-17 00:42:47', 0),
(246, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 20, 3, '2019-07-17 00:43:26', 0),
(247, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 20, 3, '2019-07-17 00:44:30', 0),
(248, ' Page 87 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 87, 3, '2019-07-17 00:44:41', 0),
(249, ' Page 86 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 86, 3, '2019-07-17 00:44:45', 0),
(250, ' Page 85 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 85, 3, '2019-07-17 00:44:50', 0),
(251, ' Page 84 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 84, 3, '2019-07-17 00:44:55', 0),
(252, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 83, 3, '2019-07-17 00:55:19', 0),
(253, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 82, 3, '2019-07-17 00:55:24', 0),
(254, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 81, 3, '2019-07-17 00:55:31', 0),
(255, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 80, 3, '2019-07-17 00:56:39', 0),
(256, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 80, 3, '2019-07-17 00:56:54', 0),
(257, 'Page: 404', 'tr_meliscms_page_success_Page moved', 1, 19, 81, 3, '2019-07-17 01:00:21', 0),
(258, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 80, 3, '2019-07-17 01:23:46', 0),
(259, ' Page 81 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 81, 3, '2019-07-17 01:24:00', 0),
(260, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 19, 3, '2019-07-17 01:24:08', 0),
(261, ' Page 83 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 83, 3, '2019-07-17 01:24:15', 0),
(262, ' Page 82 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 82, 3, '2019-07-17 01:24:20', 0),
(263, ' Page 80 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 80, 3, '2019-07-17 01:24:24', 0),
(264, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 11, 3, '2019-07-17 01:24:33', 0),
(265, ' Page 79 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 79, 3, '2019-07-17 01:24:38', 0),
(266, ' Page 78 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 78, 3, '2019-07-17 01:24:42', 0),
(267, ' Page 77 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 77, 3, '2019-07-17 01:24:47', 0),
(268, ' Page 76 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 76, 3, '2019-07-17 01:24:50', 0),
(269, ' Page 75 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 75, 3, '2019-07-17 01:24:58', 0),
(270, ' Page 74 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 74, 3, '2019-07-17 01:25:02', 0),
(271, ' Page 73 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 73, 3, '2019-07-17 01:25:06', 0),
(272, ' Page 72 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 72, 3, '2019-07-17 01:25:10', 0),
(273, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 10, 3, '2019-07-17 01:25:15', 0),
(274, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 9, 3, '2019-07-17 01:25:21', 0),
(275, ' Page 71 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 71, 3, '2019-07-17 01:25:25', 0),
(276, ' Page 70 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 70, 3, '2019-07-17 01:25:28', 0),
(277, ' Page 69 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 69, 3, '2019-07-17 01:25:33', 0),
(278, ' Page 68 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 68, 3, '2019-07-17 01:25:36', 0),
(279, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 21, 3, '2019-07-17 01:37:57', 0),
(280, 'Sites', 'Site has been saved successfully.', 1, 2, 21, 3, '2019-07-17 01:38:14', 0),
(281, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_delete_success', 1, 23, 1, 3, '2019-07-17 01:48:29', 0),
(282, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_delete_success', 1, 23, 2, 3, '2019-07-17 01:48:34', 0),
(283, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_fail', 0, 17, NULL, 3, '2019-07-17 01:58:26', 0),
(284, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 3, 3, '2019-07-17 01:58:40', 0),
(285, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 3, 3, '2019-07-17 01:58:57', 0),
(286, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 3, 3, '2019-07-17 02:00:24', 0),
(287, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 3, 3, '2019-07-17 02:03:55', 0),
(288, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 3, 3, '2019-07-17 02:04:27', 0),
(289, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 88, 3, '2019-07-17 02:22:47', 0),
(290, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 4, 3, '2019-07-17 02:25:03', 0),
(291, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 88, 3, '2019-07-17 02:26:06', 0),
(292, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 4, 3, '2019-07-17 02:32:30', 0),
(293, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 5, 3, '2019-07-17 02:34:18', 0),
(294, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 3, 3, '2019-07-17 02:34:33', 0),
(295, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 6, 3, '2019-07-17 02:35:08', 0),
(296, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 7, 3, '2019-07-17 02:35:32', 0),
(297, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 7, 3, '2019-07-17 02:35:45', 0),
(298, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 4, 3, '2019-07-17 02:42:59', 0),
(299, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 5, 3, '2019-07-17 02:43:06', 0),
(300, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 6, 3, '2019-07-17 02:43:13', 0),
(301, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 7, 3, '2019-07-17 02:43:21', 0),
(302, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 88, 3, '2019-07-17 02:44:29', 0),
(303, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 88, 3, '2019-07-17 02:45:12', 0),
(304, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 89, 3, '2019-07-17 02:50:04', 0),
(305, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 90, 3, '2019-07-17 02:51:56', 0),
(306, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 91, 3, '2019-07-17 02:52:21', 0),
(307, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 22, 3, '2019-07-17 05:18:23', 0),
(308, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 22, 3, '2019-07-17 05:25:28', 0),
(309, ' Page 95 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 95, 3, '2019-07-17 05:25:34', 0),
(310, ' Page 94 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 94, 3, '2019-07-17 05:25:38', 0),
(311, ' Page 93 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 93, 3, '2019-07-17 05:25:43', 0),
(312, ' Page 92 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 92, 3, '2019-07-17 05:25:47', 0),
(313, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 21, 3, '2019-07-17 05:26:09', 0),
(314, ' Page 91 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 91, 3, '2019-07-17 05:26:15', 0),
(315, ' Page 90 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 90, 3, '2019-07-17 05:26:19', 0),
(316, ' Page 89 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 89, 3, '2019-07-17 05:26:28', 0),
(317, ' Page 88 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 88, 3, '2019-07-17 05:26:40', 0),
(318, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 2, '2019-07-17 05:47:31', 0),
(319, 'Publish page \"Gotopublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 40, 2, '2019-07-17 05:47:31', 0),
(320, ' Page 42 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 42, 3, '2019-07-17 05:55:52', 0),
(321, ' Page 41 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 41, 3, '2019-07-17 05:55:56', 0),
(322, ' Page 40 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 40, 3, '2019-07-17 05:56:00', 0),
(323, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 3, 2, '2019-07-17 06:18:59', 0),
(324, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 23, 2, '2019-07-17 06:21:00', 0),
(325, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 3, 2, '2019-07-17 06:22:26', 0),
(326, 'Publish page \"GotoPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 96, 2, '2019-07-17 06:23:18', 0),
(327, 'Page: GotoPublish', 'tr_meliscms_page_success_Page saved', 1, 6, 96, 2, '2019-07-17 06:24:23', 0),
(328, 'Publish page \"GotoPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 96, 2, '2019-07-17 06:24:32', 0),
(329, 'Publish page \"GotoPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 96, 2, '2019-07-17 06:25:26', 0),
(330, 'Publish page \"GotoPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 96, 2, '2019-07-17 06:25:50', 0),
(331, 'Publish page \"GotoPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 96, 2, '2019-07-17 06:26:27', 0),
(332, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_success', 1, 22, 20, 2, '2019-07-17 06:41:31', 0),
(333, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 98, 2, '2019-07-17 06:42:31', 0),
(334, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 97, 2, '2019-07-17 06:43:13', 0),
(335, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_success', 1, 13, 20, 2, '2019-07-17 06:43:30', 0),
(336, 'Page: Blog Details', 'tr_meliscms_page_success_Page moved', 1, 19, 98, 2, '2019-07-17 07:10:42', 0),
(337, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 97, 2, '2019-07-17 07:10:49', 0),
(338, 'Page: Blog Details', 'tr_meliscms_page_success_Page moved', 1, 19, 98, 2, '2019-07-17 07:11:26', 0),
(339, 'Page: Blog Details', 'tr_meliscms_page_success_Page moved', 1, 19, 98, 2, '2019-07-17 07:11:27', 0),
(340, 'Page: Blog Details', 'tr_meliscms_page_success_Page moved', 1, 19, 98, 2, '2019-07-17 07:11:32', 0),
(341, 'Page: Blog Details', 'tr_meliscms_page_success_Page moved', 1, 19, 98, 2, '2019-07-17 07:11:37', 0),
(342, 'Page: Blog Details', 'tr_meliscms_page_success_Page moved', 1, 19, 98, 2, '2019-07-17 07:11:45', 0),
(343, 'Publish page \"GotoPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 96, 3, '2019-07-17 07:56:58', 0),
(344, 'Page: News', 'tr_meliscms_page_success_Page saved', 1, 6, 2, 6, '2019-07-19 00:14:20', 0),
(345, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 7, 3, '2019-07-22 02:49:16', 0),
(346, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 7, 3, '2019-07-22 02:50:06', 0),
(347, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 7, 3, '2019-07-22 02:50:24', 0),
(348, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 7, 3, '2019-07-22 02:50:52', 0),
(349, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 7, 3, '2019-07-22 02:51:08', 0),
(350, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 24, 7, '2019-07-22 02:54:45', 0),
(351, 'Page: Blog Details', 'tr_meliscms_page_success_Page moved', 1, 19, 102, 7, '2019-07-22 02:55:07', 0),
(352, 'Publish page \"Peter Paul\"', 'tr_meliscms_page_success_Page published', 1, 3, 100, 7, '2019-07-22 02:55:27', 0),
(353, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 99, 3, '2019-07-23 01:46:25', 0),
(354, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 25, 3, '2019-07-23 02:07:09', 0),
(355, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 26, 3, '2019-07-23 02:08:42', 0),
(356, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 26, 3, '2019-07-23 02:11:51', 0),
(357, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 25, 3, '2019-07-23 02:11:55', 0),
(358, ' Page 109 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 109, 3, '2019-07-23 02:12:08', 0),
(359, ' Page 111 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 111, 3, '2019-07-23 02:12:12', 0),
(360, ' Page 108 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 108, 3, '2019-07-23 02:12:21', 0),
(361, ' Page 107 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 107, 3, '2019-07-23 02:12:32', 0),
(362, ' Page 105 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 105, 3, '2019-07-23 02:12:36', 0),
(363, ' Page 106 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 106, 3, '2019-07-23 02:12:41', 0),
(364, ' Page 104 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 104, 3, '2019-07-23 02:12:45', 0),
(365, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 27, 3, '2019-07-23 02:13:15', 0),
(366, 'tr_MelisCmsSliderDetails_slider_save_Title', 'tr_MelisCmsSliderDetails_slider_save_success', 1, 24, 3, 3, '2019-07-24 01:54:20', 0),
(367, 'tr_MelisCmsSliderDetails_save_title', 'tr_MelisCmsSliderDetails_save_success', 1, 25, 11, 3, '2019-07-24 01:55:02', 0),
(368, 'tr_MelisCmsSliderDetails_save_title', 'tr_MelisCmsSliderDetails_save_success', 1, 25, 12, 3, '2019-07-24 01:55:15', 0),
(369, 'tr_MelisCmsSliderDetails_save_title', 'tr_MelisCmsSliderDetails_save_success', 1, 26, 12, 3, '2019-07-24 01:55:23', 0),
(370, 'tr_MelisCmsSliderDetails_slider_save_Title', 'tr_MelisCmsSliderDetails_slider_save_success', 1, 27, 3, 3, '2019-07-24 01:56:25', 0),
(371, 'Publish page \"Peter Paul\"', 'tr_meliscms_page_success_Page published', 1, 3, 100, 7, '2019-07-24 01:57:36', 0),
(372, 'Publish page \"Peter Paul\"', 'tr_meliscms_page_success_Page published', 1, 3, 100, 7, '2019-07-24 01:58:28', 0),
(373, 'Publish page \"Peter Paul\"', 'tr_meliscms_page_success_Page published', 1, 3, 100, 7, '2019-07-24 01:58:29', 0),
(374, 'Page: New', 'tr_meliscms_page_error_Some errors occured while processing the request.', 0, 11, NULL, 7, '2019-07-24 02:00:07', 0),
(375, 'Page: New', 'tr_meliscms_page_error_Some errors occured while processing the request.', 0, 11, NULL, 7, '2019-07-24 02:00:19', 0),
(376, 'Page: Test Website', 'tr_meliscms_page_success_Page saved', 1, 11, 116, 7, '2019-07-24 02:00:27', 0),
(377, 'Publish page \"Test Website\"', 'tr_meliscms_page_success_Page published', 1, 3, 116, 7, '2019-07-24 02:01:30', 0),
(378, 'tr_MelisCmsSliderDetails_slider_save_Title', 'tr_MelisCmsSliderDetails_slider_save_success', 1, 27, 3, 3, '2019-07-24 02:07:22', 0),
(379, 'tr_MelisCmsSliderDetails_slider_save_Title', 'tr_MelisCmsSliderDetails_slider_save_success', 1, 24, 4, 7, '2019-07-24 02:08:20', 0),
(380, 'tr_MelisCmsSliderDetails_save_title', 'tr_MelisCmsSliderDetails_save_success', 1, 25, 13, 7, '2019-07-24 02:09:14', 0),
(381, 'tr_MelisCmsSliderDetails_save_title', 'tr_MelisCmsSliderDetails_save_success', 1, 25, 14, 7, '2019-07-24 02:09:32', 0),
(382, 'Publish page \"Test Website\"', 'tr_meliscms_page_success_Page published', 1, 3, 116, 7, '2019-07-24 02:10:32', 0),
(383, 'Publish page \"Test Website\"', 'tr_meliscms_page_success_Page published', 1, 3, 116, 7, '2019-07-24 02:10:33', 0),
(384, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 27, 3, '2019-07-24 23:32:27', 0),
(385, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 24, 3, '2019-07-24 23:32:30', 0),
(386, ' Page 115 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 115, 3, '2019-07-24 23:32:36', 0),
(387, ' Page 114 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 114, 3, '2019-07-24 23:32:42', 0),
(388, ' Page 113 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 113, 3, '2019-07-24 23:32:46', 0),
(389, ' Page 112 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 112, 3, '2019-07-24 23:32:50', 0),
(390, ' Page 116 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 116, 3, '2019-07-24 23:32:57', 0),
(391, ' Page 103 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 103, 3, '2019-07-24 23:33:01', 0),
(392, ' Page 102 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 102, 3, '2019-07-24 23:33:07', 0),
(393, ' Page 101 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 101, 3, '2019-07-24 23:33:11', 0),
(394, ' Page 100 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 100, 3, '2019-07-24 23:33:15', 0),
(395, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 28, 3, '2019-07-24 23:34:43', 0),
(396, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 117, 3, '2019-07-24 23:56:23', 0),
(397, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 117, 3, '2019-07-24 23:57:19', 0),
(398, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 117, 3, '2019-07-24 23:57:53', 0),
(399, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 117, 3, '2019-07-25 00:19:48', 0),
(400, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 117, 3, '2019-07-25 00:21:09', 0),
(401, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 117, 3, '2019-07-25 00:21:31', 0),
(402, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 117, 3, '2019-07-25 00:27:53', 0),
(403, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 117, 3, '2019-07-25 00:44:10', 0),
(404, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 29, 3, '2019-07-25 00:51:32', 0),
(405, 'Publish page \"sample\"', 'tr_meliscms_page_success_Page published', 1, 3, 121, 3, '2019-07-25 01:33:24', 0),
(406, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 29, 3, '2019-07-25 01:36:06', 0),
(407, ' Page 124 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 124, 3, '2019-07-25 01:36:13', 0),
(408, ' Page 123 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 123, 3, '2019-07-25 01:36:20', 0),
(409, ' Page 122 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 122, 3, '2019-07-25 01:36:24', 0),
(410, ' Page 121 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 121, 3, '2019-07-25 01:36:28', 0),
(411, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 30, 3, '2019-07-25 02:16:53', 0),
(412, 'Publish page \"sample\"', 'tr_meliscms_page_success_Page published', 1, 3, 125, 3, '2019-07-25 02:47:16', 0),
(413, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 31, 3, '2019-07-25 04:22:55', 0),
(414, 'Page: sample', 'tr_meliscms_page_success_Page saved', 1, 11, 133, 3, '2019-07-25 05:01:39', 0),
(415, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 32, 3, '2019-07-25 05:54:23', 0),
(416, ' Page 133 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 133, 3, '2019-07-29 00:34:58', 0),
(417, 'Sites', 'Site has been saved successfully.', 1, 2, 32, 3, '2019-07-29 00:41:12', 0),
(418, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_new_fail_info', 0, 4, NULL, 2, '2019-07-29 03:54:26', 0),
(419, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 8, 2, '2019-07-29 03:57:49', 0),
(420, 'Publish page \"GotoPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 96, 3, '2019-07-29 04:25:05', 0),
(421, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 32, 3, '2019-07-29 04:37:34', 0),
(422, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 31, 3, '2019-07-29 04:37:48', 0),
(423, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 30, 3, '2019-07-29 04:38:20', 0),
(424, ' Page 137 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 137, 3, '2019-07-29 04:38:29', 0),
(425, ' Page 136 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 136, 3, '2019-07-29 04:38:35', 0),
(426, ' Page 135 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 135, 3, '2019-07-29 04:38:39', 0),
(427, ' Page 134 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 134, 3, '2019-07-29 04:38:43', 0),
(428, ' Page 132 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 132, 3, '2019-07-29 04:38:50', 0),
(429, ' Page 131 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 131, 3, '2019-07-29 04:38:58', 0),
(430, ' Page 130 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 130, 3, '2019-07-29 04:39:05', 0),
(431, ' Page 129 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 129, 3, '2019-07-29 04:39:09', 0),
(432, ' Page 128 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 128, 3, '2019-07-29 04:39:16', 0);
INSERT INTO `melis_core_log` (`log_id`, `log_title`, `log_message`, `log_action_status`, `log_type_id`, `log_item_id`, `log_user_id`, `log_date_added`, `log_status`) VALUES
(433, ' Page 127 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 127, 3, '2019-07-29 04:39:22', 0),
(434, ' Page 126 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 126, 3, '2019-07-29 04:39:26', 0),
(435, ' Page 125 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 125, 3, '2019-07-29 04:39:31', 0),
(436, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 28, 3, '2019-07-29 04:40:43', 0),
(437, ' Page 120 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 120, 3, '2019-07-29 04:40:49', 0),
(438, ' Page 119 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 119, 3, '2019-07-29 04:40:55', 0),
(439, ' Page 118 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 118, 3, '2019-07-29 04:40:58', 0),
(440, ' Page 117 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 117, 3, '2019-07-29 04:41:03', 0),
(441, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 33, 3, '2019-07-29 04:52:23', 0),
(442, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 138, 3, '2019-07-29 04:53:23', 0),
(443, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 138, 3, '2019-07-29 04:56:56', 0),
(444, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 138, 3, '2019-07-29 04:57:19', 0),
(445, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 138, 3, '2019-07-29 05:07:14', 0),
(446, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 8, 2, '2019-07-29 05:29:38', 0),
(447, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 139, 3, '2019-07-29 05:32:48', 0),
(448, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 139, 3, '2019-07-29 05:33:11', 0),
(449, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 139, 3, '2019-07-29 05:33:40', 0),
(450, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 139, 3, '2019-07-29 05:34:10', 0),
(451, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 140, 3, '2019-07-29 05:34:36', 0),
(452, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 140, 3, '2019-07-29 05:34:51', 0),
(453, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 140, 3, '2019-07-29 05:35:14', 0),
(454, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 34, 3, '2019-07-29 06:26:20', 0),
(455, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 35, 3, '2019-07-29 06:38:14', 0),
(456, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 36, 3, '2019-07-29 06:43:30', 0),
(457, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 37, 3, '2019-07-29 06:48:24', 0),
(458, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 37, 3, '2019-07-29 06:48:49', 0),
(459, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 36, 3, '2019-07-29 06:48:53', 0),
(460, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 35, 3, '2019-07-29 06:49:16', 0),
(461, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 34, 3, '2019-07-29 06:49:26', 0),
(462, ' Page 157 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 157, 3, '2019-07-29 06:49:32', 0),
(463, ' Page 156 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 156, 3, '2019-07-29 06:49:38', 0),
(464, ' Page 155 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 155, 3, '2019-07-29 06:49:42', 0),
(465, ' Page 154 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 154, 3, '2019-07-29 06:49:47', 0),
(466, ' Page 152 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 152, 3, '2019-07-29 06:49:59', 0),
(467, ' Page 153 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 153, 3, '2019-07-29 06:50:03', 0),
(468, ' Page 151 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 151, 3, '2019-07-29 06:50:07', 0),
(469, ' Page 150 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 150, 3, '2019-07-29 06:52:56', 0),
(470, ' Page 148 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 148, 3, '2019-07-29 06:53:04', 0),
(471, ' Page 149 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 149, 3, '2019-07-29 06:53:08', 0),
(472, ' Page 147 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 147, 3, '2019-07-29 06:53:11', 0),
(473, ' Page 146 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 146, 3, '2019-07-29 06:53:15', 0),
(474, ' Page 144 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 144, 3, '2019-07-29 06:53:25', 0),
(475, ' Page 145 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 145, 3, '2019-07-29 06:53:29', 0),
(476, ' Page 143 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 143, 3, '2019-07-29 06:53:33', 0),
(477, ' Page 142 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 142, 3, '2019-07-29 06:53:37', 0),
(478, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-29 07:12:42', 0),
(479, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-29 07:34:45', 0),
(480, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-29 07:36:33', 0),
(481, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 43, 3, '2019-07-29 07:39:22', 0),
(482, ' Page 160 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 160, 3, '2019-07-29 07:39:41', 0),
(483, ' Page 159 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 159, 3, '2019-07-29 07:39:45', 0),
(484, ' Page 161 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 161, 3, '2019-07-29 07:39:49', 0),
(485, ' Page 158 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 158, 3, '2019-07-29 07:39:53', 0),
(486, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 43, 3, '2019-07-29 07:39:59', 0),
(487, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-07-29 07:49:06', 0),
(488, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 4, 3, '2019-07-30 00:26:13', 0),
(489, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 5, 3, '2019-07-30 00:26:33', 0),
(490, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 6, 3, '2019-07-30 00:26:47', 0),
(491, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 7, 3, '2019-07-30 00:26:56', 0),
(492, 'Page: Charles Adu Gyamfi', 'tr_meliscms_page_success_Page saved', 1, 6, 138, 3, '2019-07-30 00:28:18', 0),
(493, 'Page: Charles Adu Gyamfi', 'tr_meliscms_page_success_Page saved', 1, 6, 138, 3, '2019-07-30 00:38:40', 0),
(494, 'Page: Charles Adu Gyamfi', 'tr_meliscms_page_success_Page saved', 1, 6, 138, 3, '2019-07-30 00:38:55', 0),
(495, 'Publish page \"GotoPublish\"', 'tr_meliscms_page_success_Page published', 1, 3, 96, 3, '2019-07-30 00:58:05', 0),
(496, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 33, 3, '2019-07-30 02:12:43', 0),
(497, ' Page 141 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 141, 3, '2019-07-30 02:13:08', 0),
(498, ' Page 140 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 140, 3, '2019-07-30 02:13:14', 0),
(499, ' Page 139 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 139, 3, '2019-07-30 02:13:18', 0),
(500, ' Page 138 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 138, 3, '2019-07-30 02:13:23', 0),
(501, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 45, 3, '2019-07-30 02:14:03', 0),
(502, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 02:16:23', 0),
(503, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 02:16:40', 0),
(504, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:15:55', 0),
(505, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:19:38', 0),
(506, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:20:32', 0),
(507, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:21:02', 0),
(508, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:21:57', 0),
(509, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:23:10', 0),
(510, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:24:28', 0),
(511, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 163, 3, '2019-07-30 04:24:38', 0),
(512, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 163, 3, '2019-07-30 04:24:59', 0),
(513, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:26:13', 0),
(514, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:27:50', 0),
(515, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:30:42', 0),
(516, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 8, 3, '2019-07-30 04:51:58', 0),
(517, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 8, 3, '2019-07-30 04:52:10', 0),
(518, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 04:52:54', 0),
(519, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 9, 3, '2019-07-30 05:11:50', 0),
(520, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 4, 3, '2019-07-30 05:12:02', 0),
(521, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:12:47', 0),
(522, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_delete_success', 1, 23, 8, 3, '2019-07-30 05:13:59', 0),
(523, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_delete_success', 1, 23, 9, 3, '2019-07-30 05:14:04', 0),
(524, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 6, 3, '2019-07-30 05:14:17', 0),
(525, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 7, 3, '2019-07-30 05:14:30', 0),
(526, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 17, 10, 3, '2019-07-30 05:15:10', 0),
(527, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_save_success', 1, 18, 10, 3, '2019-07-30 05:15:24', 0),
(528, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:15:58', 0),
(529, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:17:39', 0),
(530, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:31:53', 0),
(531, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:40:54', 0),
(532, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:40:54', 0),
(533, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:41:32', 0),
(534, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:42:20', 0),
(535, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:45:13', 0),
(536, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 05:45:13', 0),
(537, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 06:49:51', 0),
(538, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 06:50:07', 0),
(539, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 162, 3, '2019-07-30 06:50:23', 0),
(540, ' Page 165 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 165, 3, '2019-07-30 06:53:52', 0),
(541, ' Page 164 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 164, 3, '2019-07-30 06:54:02', 0),
(542, ' Page 163 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 163, 3, '2019-07-30 06:54:08', 0),
(543, ' Page 162 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 162, 3, '2019-07-30 06:54:14', 0),
(544, 'tr_meliscms_tool_styles', 'tr_meliscms_tool_styles_delete_success', 1, 23, 10, 3, '2019-07-30 06:54:25', 0),
(545, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 45, 3, '2019-07-30 06:54:39', 0),
(546, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 46, 3, '2019-07-30 06:55:20', 0),
(547, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 46, 3, '2019-07-30 06:58:53', 0),
(548, ' Page 169 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 169, 3, '2019-07-30 06:58:58', 0),
(549, ' Page 168 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 168, 3, '2019-07-30 06:59:03', 0),
(550, ' Page 167 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 167, 3, '2019-07-30 06:59:16', 0),
(551, ' Page 166 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 166, 3, '2019-07-30 06:59:31', 0),
(552, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 47, 3, '2019-07-30 07:00:08', 0),
(553, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 170, 3, '2019-07-30 07:00:31', 0),
(554, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 170, 3, '2019-07-30 07:01:33', 0),
(555, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 6, 3, '2019-07-30 07:11:21', 0),
(556, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 47, 6, '2019-07-30 07:12:57', 0),
(557, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 48, 6, '2019-07-30 07:13:47', 0),
(558, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 6, 3, '2019-07-30 07:14:29', 0),
(559, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 6, 3, '2019-07-30 07:15:16', 0),
(560, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 6, 3, '2019-07-30 07:16:22', 0),
(561, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 170, 3, '2019-07-30 07:18:52', 0),
(562, 'tr_meliscore_tool_user', 'tr_meliscore_tool_user_update_success_info', 1, 5, 6, 3, '2019-07-30 07:35:48', 0),
(563, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 174, 3, '2019-08-01 00:03:38', 0),
(564, ' Page 173 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 173, 3, '2019-08-01 00:03:54', 0),
(565, ' Page 172 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 172, 3, '2019-08-01 00:03:59', 0),
(566, ' Page 171 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 171, 3, '2019-08-01 00:04:04', 0),
(567, ' Page 170 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 170, 3, '2019-08-01 00:04:09', 0),
(568, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 174, 3, '2019-08-01 00:05:43', 0),
(569, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 174, 3, '2019-08-01 00:06:21', 0),
(570, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 174, 3, '2019-08-01 00:07:01', 0),
(571, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 174, 3, '2019-08-01 00:08:29', 0),
(572, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 174, 3, '2019-08-01 00:09:58', 0),
(573, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 174, 3, '2019-08-01 00:15:40', 0),
(574, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 48, 3, '2019-08-09 00:36:29', 0),
(575, ' Page 176 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 176, 3, '2019-08-09 00:36:36', 0),
(576, ' Page 175 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 175, 3, '2019-08-09 00:36:40', 0),
(577, ' Page 177 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 177, 3, '2019-08-09 00:36:44', 0),
(578, ' Page 174 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 174, 3, '2019-08-09 00:36:48', 0),
(579, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 49, 3, '2019-08-09 00:37:23', 0),
(580, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 02:40:13', 0),
(581, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 02:40:18', 0),
(582, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 02:40:27', 0),
(583, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 02:42:22', 0),
(584, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 02:42:25', 0),
(585, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 02:45:49', 0),
(586, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 02:52:48', 0),
(587, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 57, 3, '2019-08-09 02:53:26', 0),
(588, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 58, 3, '2019-08-09 02:54:57', 0),
(589, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 59, 3, '2019-08-09 03:03:40', 0),
(590, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 154, 3, '2019-08-09 04:11:36', 0),
(591, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 153, 3, '2019-08-09 04:11:42', 0),
(592, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 152, 3, '2019-08-09 04:11:47', 0),
(593, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 151, 3, '2019-08-09 04:11:52', 0),
(594, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 150, 3, '2019-08-09 04:11:58', 0),
(595, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 141, 3, '2019-08-09 04:12:08', 0),
(596, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 142, 3, '2019-08-09 04:12:17', 0),
(597, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 143, 3, '2019-08-09 04:12:22', 0),
(598, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 144, 3, '2019-08-09 04:12:27', 0),
(599, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 145, 3, '2019-08-09 04:12:35', 0),
(600, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 146, 3, '2019-08-09 04:12:40', 0),
(601, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 147, 3, '2019-08-09 04:12:45', 0),
(602, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 148, 3, '2019-08-09 04:12:52', 0),
(603, 'tr_tool_template_fm_update_title', 'tr_tool_template_fm_delete_content', 1, 10, 149, 3, '2019-08-09 04:12:57', 0),
(604, ' Page 189 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 189, 3, '2019-08-09 04:13:05', 0),
(605, ' Page 188 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 188, 3, '2019-08-09 04:13:10', 0),
(606, ' Page 185 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 185, 3, '2019-08-09 04:13:18', 0),
(607, ' Page 184 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 184, 3, '2019-08-09 04:13:21', 0),
(608, ' Page 181 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 181, 3, '2019-08-09 04:13:29', 0),
(609, ' Page 180 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 180, 3, '2019-08-09 04:13:32', 0),
(610, ' Page 179 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 179, 3, '2019-08-09 04:13:38', 0),
(611, ' Page 178 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 178, 3, '2019-08-09 04:13:42', 0),
(612, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 59, 3, '2019-08-09 04:22:59', 0),
(613, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 58, 3, '2019-08-09 04:23:02', 0),
(614, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 57, 3, '2019-08-09 04:23:05', 0),
(615, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 49, 3, '2019-08-09 04:23:08', 0),
(616, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:23:37', 0),
(617, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:23:57', 0),
(618, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:24:42', 0),
(619, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:24:47', 0),
(620, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:25:20', 0),
(621, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:25:58', 0),
(622, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:29:22', 0),
(623, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:29:26', 0),
(624, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:29:58', 0),
(625, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:30:16', 0),
(626, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:30:49', 0),
(627, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:31:42', 0),
(628, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:35:29', 0),
(629, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:36:22', 0),
(630, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:37:36', 0),
(631, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:38:21', 0),
(632, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:39:20', 0),
(633, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:40:33', 0),
(634, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 78, 3, '2019-08-09 04:42:58', 0),
(635, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 79, 3, '2019-08-09 04:45:22', 0),
(636, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 80, 3, '2019-08-09 04:47:20', 0),
(637, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:49:30', 0),
(638, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:51:39', 0),
(639, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 04:54:52', 0),
(640, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 05:00:30', 0),
(641, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 05:01:35', 0),
(642, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 05:02:14', 0),
(643, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 87, 3, '2019-08-09 05:17:41', 0),
(644, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 88, 3, '2019-08-09 05:18:46', 0),
(645, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 05:19:56', 0),
(646, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 05:21:48', 0),
(647, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 91, 3, '2019-08-09 05:22:38', 0),
(648, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-09 05:23:37', 0),
(649, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 93, 3, '2019-08-09 05:36:38', 0),
(650, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 94, 3, '2019-08-09 05:50:23', 0),
(651, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 210, 3, '2019-08-09 05:50:43', 0),
(652, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 211, 3, '2019-08-12 23:51:47', 0),
(653, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 93, 3, '2019-08-12 23:56:24', 0),
(654, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 91, 3, '2019-08-12 23:56:27', 0),
(655, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 88, 3, '2019-08-12 23:56:30', 0),
(656, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 87, 3, '2019-08-12 23:56:33', 0),
(657, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 80, 3, '2019-08-12 23:56:35', 0),
(658, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 79, 3, '2019-08-12 23:56:39', 0),
(659, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 79, 3, '2019-08-12 23:56:41', 0),
(660, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 78, 3, '2019-08-12 23:56:44', 0),
(661, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 94, 3, '2019-08-12 23:56:51', 0),
(662, ' Page 213 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 213, 3, '2019-08-12 23:57:00', 0),
(663, ' Page 212 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 212, 3, '2019-08-12 23:57:07', 0),
(664, ' Page 211 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 211, 3, '2019-08-12 23:57:12', 0),
(665, ' Page 210 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 210, 3, '2019-08-12 23:57:16', 0),
(666, ' Page 208 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 208, 3, '2019-08-12 23:57:27', 0),
(667, ' Page 207 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 207, 3, '2019-08-12 23:57:31', 0),
(668, ' Page 206 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 206, 3, '2019-08-12 23:57:34', 0),
(669, ' Page 205 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 205, 3, '2019-08-12 23:57:40', 0),
(670, ' Page 204 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 204, 3, '2019-08-12 23:57:44', 0),
(671, ' Page 203 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 203, 3, '2019-08-12 23:57:50', 0),
(672, ' Page 202 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 202, 3, '2019-08-12 23:57:53', 0),
(673, ' Page 201 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 201, 3, '2019-08-12 23:57:58', 0),
(674, ' Page 200 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 200, 3, '2019-08-12 23:58:02', 0),
(675, ' Page 198 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 198, 3, '2019-08-12 23:58:08', 0),
(676, ' Page 197 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 197, 3, '2019-08-12 23:58:12', 0),
(677, ' Page 195 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 195, 3, '2019-08-12 23:58:17', 0),
(678, ' Page 194 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 194, 3, '2019-08-12 23:58:20', 0),
(679, ' Page 193 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 193, 3, '2019-08-12 23:58:26', 0),
(680, ' Page 192 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 192, 3, '2019-08-12 23:58:29', 0),
(681, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 95, 3, '2019-08-13 00:20:22', 0),
(682, 'Publish page \"sample\"', 'tr_meliscms_page_success_Page published', 1, 3, 214, 3, '2019-08-13 00:22:56', 0),
(683, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 98, 3, '2019-08-13 01:22:43', 0),
(684, ' Page 221 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 221, 3, '2019-08-13 01:25:54', 0),
(685, ' Page 220 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 220, 3, '2019-08-13 01:26:00', 0),
(686, ' Page 219 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 219, 3, '2019-08-13 01:26:04', 0),
(687, ' Page 218 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 218, 3, '2019-08-13 01:26:07', 0),
(688, ' Page 217 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 217, 3, '2019-08-13 01:26:15', 0),
(689, ' Page 216 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 216, 3, '2019-08-13 01:26:22', 0),
(690, ' Page 215 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 215, 3, '2019-08-13 01:26:26', 0),
(691, ' Page 214 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 214, 3, '2019-08-13 01:26:30', 0),
(692, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 98, 3, '2019-08-13 01:26:36', 0),
(693, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 95, 3, '2019-08-13 01:26:39', 0),
(694, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 100, 3, '2019-08-13 01:28:27', 0),
(695, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 100, 3, '2019-08-13 01:40:20', 0),
(696, ' Page 225 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 225, 3, '2019-08-13 01:40:28', 0),
(697, 'Deleted Page 223', 'tr_meliscms_page_error_Some errors occured while processing the request. Please find details bellow.', 0, 8, 223, 3, '2019-08-13 01:40:31', 0),
(698, ' Page 224 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 224, 3, '2019-08-13 01:40:37', 0),
(699, ' Page 223 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 223, 3, '2019-08-13 01:40:41', 0),
(700, ' Page 222 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 222, 3, '2019-08-13 01:40:45', 0),
(701, 'tr_meliscms_page_user_access_rights', 'tr_meliscms_page_user_access_rights', 0, 8, 222, 3, '2019-08-13 01:56:39', 0),
(702, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 101, 3, '2019-08-13 05:32:46', 0),
(703, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 05:35:29', 0),
(704, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 06:29:27', 0),
(705, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 06:29:57', 0),
(706, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 07:38:48', 0),
(707, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 07:41:00', 0),
(708, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 07:41:19', 0),
(709, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 07:42:13', 0),
(710, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 07:42:37', 0),
(711, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-13 07:52:25', 0),
(712, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-14 02:24:23', 0),
(713, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-14 02:24:54', 0),
(714, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-14 02:25:11', 0),
(715, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-14 04:34:16', 0),
(716, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-14 04:35:57', 0),
(717, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 226, 3, '2019-08-14 04:44:08', 0),
(718, ' Page 228 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 228, 3, '2019-08-15 01:50:52', 0),
(719, ' Page 227 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 227, 3, '2019-08-15 01:50:56', 0),
(720, ' Page 229 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 229, 3, '2019-08-15 01:51:01', 0),
(721, ' Page 226 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 226, 3, '2019-08-15 01:51:05', 0),
(722, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 101, 3, '2019-08-15 01:51:25', 0),
(723, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 102, 3, '2019-08-15 01:51:55', 0),
(724, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 01:52:51', 0),
(725, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:10:48', 0),
(726, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:13:03', 0),
(727, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:13:53', 0),
(728, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 231, 3, '2019-08-15 02:19:33', 0),
(729, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:37:22', 0),
(730, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:37:22', 0),
(731, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:37:34', 0),
(732, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:41:37', 0),
(733, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:49:52', 0),
(734, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 02:53:19', 0),
(735, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 05:04:37', 0),
(736, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 05:09:48', 0),
(737, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 230, 3, '2019-08-15 05:13:48', 0),
(738, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 102, 3, '2019-08-15 05:31:07', 0),
(739, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 103, 3, '2019-08-15 05:31:35', 0),
(740, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 05:32:09', 0),
(741, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 05:38:08', 0),
(742, ' Page 233 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 233, 3, '2019-08-15 05:38:32', 0),
(743, ' Page 232 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 232, 3, '2019-08-15 05:38:45', 0),
(744, ' Page 231 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 231, 3, '2019-08-15 05:38:50', 0),
(745, ' Page 230 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 230, 3, '2019-08-15 05:38:53', 0),
(746, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 05:40:40', 0),
(747, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 05:46:18', 0),
(748, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 06:00:38', 0),
(749, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 06:20:22', 0),
(750, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 06:27:27', 0),
(751, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 06:55:04', 0),
(752, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 06:56:41', 0),
(753, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 06:57:43', 0),
(754, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 07:33:56', 0),
(755, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-15 07:42:44', 0),
(756, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-18 23:42:37', 0),
(757, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-18 23:43:12', 0),
(758, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-18 23:58:09', 0),
(759, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-18 23:58:21', 0),
(760, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-19 00:07:32', 0),
(761, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-19 00:08:05', 0),
(762, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 235, 3, '2019-08-19 00:11:20', 0),
(763, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_success', 1, 22, 21, 3, '2019-08-19 00:14:11', 0),
(764, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 235, 3, '2019-08-19 00:38:25', 0),
(765, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_file_success', 1, 15, 21, 3, '2019-08-19 00:48:01', 0),
(766, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 235, 3, '2019-08-19 00:55:48', 0),
(767, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-19 00:57:16', 0),
(768, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-19 00:57:16', 0),
(769, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 236, 3, '2019-08-19 01:27:45', 0),
(770, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 236, 3, '2019-08-19 01:34:29', 0),
(771, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 237, 3, '2019-08-19 01:45:57', 0),
(772, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 234, 3, '2019-08-19 01:47:50', 0),
(773, 'tr_meliscmsnews_delete_image_title', 'tr_meliscmsnews_delete_image_success', 1, 28, 18, 3, '2019-08-19 01:59:35', 0),
(774, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_fail', 0, 13, NULL, 3, '2019-08-19 01:59:44', 0),
(775, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_success', 1, 13, 18, 3, '2019-08-19 01:59:52', 0),
(776, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 236, 3, '2019-08-19 02:00:58', 0),
(777, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 103, 3, '2019-08-20 00:16:35', 0),
(778, ' Page 237 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 237, 3, '2019-08-20 00:16:40', 0),
(779, ' Page 236 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 236, 3, '2019-08-20 00:16:45', 0),
(780, ' Page 235 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 235, 3, '2019-08-20 00:16:49', 0),
(781, ' Page 234 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 234, 3, '2019-08-20 00:16:54', 0),
(782, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 104, 3, '2019-08-20 00:17:56', 0),
(783, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 238, 3, '2019-08-20 00:28:40', 0),
(784, 'Sites', 'Unable to save the site.', 0, 2, 104, 3, '2019-08-20 00:29:17', 0),
(785, 'Sites', 'Site has been saved successfully.', 1, 2, 104, 3, '2019-08-20 00:29:30', 0),
(786, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 238, 3, '2019-08-20 00:31:19', 0),
(787, 'Sites', 'Site has been saved successfully.', 1, 2, 104, 3, '2019-08-20 00:31:55', 0),
(788, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 104, 3, '2019-08-20 00:34:43', 0),
(789, ' Page 241 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 241, 3, '2019-08-20 00:34:50', 0),
(790, ' Page 240 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 240, 3, '2019-08-20 00:34:56', 0),
(791, ' Page 239 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 239, 3, '2019-08-20 00:35:00', 0),
(792, ' Page 238 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 238, 3, '2019-08-20 00:35:18', 0),
(793, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_unable_to_create_site', 0, 1, NULL, 3, '2019-08-20 00:36:18', 0),
(794, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 105, 3, '2019-08-20 00:37:42', 0),
(795, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 242, 3, '2019-08-20 00:44:19', 0),
(796, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 243, 3, '2019-08-20 00:51:28', 0),
(797, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 244, 3, '2019-08-20 00:51:38', 0),
(798, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 242, 3, '2019-08-20 00:52:25', 0),
(799, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 245, 3, '2019-08-20 00:53:39', 0),
(800, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 242, 3, '2019-08-20 00:55:49', 0),
(801, 'Sites', 'Unable to save the site.', 0, 2, 105, 3, '2019-08-20 00:56:17', 0),
(802, 'Sites', 'Site has been saved successfully.', 1, 2, 105, 3, '2019-08-20 00:56:31', 0),
(803, 'Unpublish page \"Arthur Deegan\"', 'Page unpublished', 1, 20, 242, 3, '2019-08-20 01:25:01', 0),
(804, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 242, 3, '2019-08-20 01:25:13', 0),
(805, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 105, 3, '2019-08-20 01:27:16', 0),
(806, ' Page 245 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 245, 3, '2019-08-20 01:28:30', 0),
(807, ' Page 244 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 244, 3, '2019-08-20 01:28:35', 0),
(808, ' Page 243 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 243, 3, '2019-08-20 01:28:39', 0),
(809, ' Page 242 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 242, 3, '2019-08-20 01:28:43', 0),
(810, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 106, 3, '2019-08-20 02:38:59', 0),
(811, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 246, 3, '2019-08-20 02:50:47', 0),
(812, 'Sites', 'Unable to save the site.', 0, 2, 106, 3, '2019-08-20 02:59:49', 0),
(813, 'Sites', 'Site has been saved successfully.', 1, 2, 106, 3, '2019-08-20 02:59:57', 0),
(814, 'Sites', 'Site has been saved successfully.', 1, 2, 106, 3, '2019-08-20 03:01:34', 0),
(815, 'Sites', 'Site has been saved successfully.', 1, 2, 106, 3, '2019-08-20 04:27:39', 0),
(816, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 106, 3, '2019-08-20 04:36:41', 0),
(817, ' Page 249 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 249, 3, '2019-08-20 04:36:46', 0),
(818, ' Page 248 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 248, 3, '2019-08-20 04:36:52', 0),
(819, ' Page 247 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 247, 3, '2019-08-20 04:36:56', 0),
(820, ' Page 246 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 246, 3, '2019-08-20 04:36:59', 0),
(821, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 107, 3, '2019-08-20 04:41:42', 0),
(822, 'Publish page \"sample\"', 'tr_meliscms_page_success_Page published', 1, 3, 250, 3, '2019-08-20 04:42:04', 0),
(823, 'Sites', 'Unable to save the site.', 0, 2, 107, 3, '2019-08-20 04:42:31', 0),
(824, 'Sites', 'Site has been saved successfully.', 1, 2, 107, 3, '2019-08-20 04:42:44', 0),
(825, 'Publish page \"sample\"', 'tr_meliscms_page_success_Page published', 1, 3, 250, 3, '2019-08-20 04:42:51', 0),
(826, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 251, 3, '2019-08-20 04:51:17', 0),
(827, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 252, 3, '2019-08-20 04:51:43', 0),
(828, 'Publish page \"404\"', 'tr_meliscms_page_success_Page published', 1, 3, 253, 3, '2019-08-20 04:51:54', 0),
(829, 'Publish page \"sample\"', 'tr_meliscms_page_success_Page published', 1, 3, 250, 3, '2019-08-20 04:52:54', 0),
(830, 'Unpublish page \"sample\"', 'Page unpublished', 1, 20, 250, 3, '2019-08-20 05:13:07', 0),
(831, 'Publish page \"sample\"', 'tr_meliscms_page_success_Page published', 1, 3, 250, 3, '2019-08-20 05:22:52', 0),
(832, ' Page 99 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 99, 3, '2019-08-20 05:34:38', 0),
(833, ' Page 98 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 98, 3, '2019-08-20 05:34:43', 0),
(834, ' Page 97 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 97, 3, '2019-08-20 05:34:49', 0),
(835, ' Page 96 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 96, 3, '2019-08-20 05:34:52', 0),
(836, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 23, 3, '2019-08-20 05:35:08', 0),
(837, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 107, 3, '2019-08-22 01:38:48', 0),
(838, ' Page 253 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 253, 3, '2019-08-22 01:38:54', 0),
(839, ' Page 252 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 252, 3, '2019-08-22 01:38:59', 0),
(840, ' Page 251 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 251, 3, '2019-08-22 01:39:03', 0),
(841, ' Page 250 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 250, 3, '2019-08-22 01:39:07', 0),
(842, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 108, 3, '2019-08-22 01:39:49', 0),
(843, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 254, 3, '2019-08-22 01:39:59', 0),
(844, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 255, 3, '2019-08-22 01:40:17', 0),
(845, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 256, 3, '2019-08-22 01:40:29', 0),
(846, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 254, 3, '2019-08-22 01:41:34', 0),
(847, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 255, 3, '2019-08-22 01:42:35', 0),
(848, 'tr_meliscmsnews_list_header_title', 'tr_meliscmsnews_save_success', 1, 13, 21, 3, '2019-08-22 01:42:59', 0),
(849, 'Publish page \"Rose Ethridge\"', 'tr_meliscms_page_success_Page published', 1, 3, 254, 3, '2019-08-22 01:43:52', 0),
(850, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 109, 3, '2019-08-22 01:50:01', 0),
(851, 'Publish page \"Charles Adu Gyamfi\"', 'tr_meliscms_page_success_Page published', 1, 3, 258, 3, '2019-08-22 02:02:27', 0),
(852, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 259, 3, '2019-08-22 02:04:17', 0),
(853, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 260, 3, '2019-08-22 02:09:16', 0),
(854, 'Sites', 'Unable to save the site.', 0, 2, 109, 3, '2019-08-22 02:15:34', 0),
(855, 'Sites', 'Site has been saved successfully.', 1, 2, 109, 3, '2019-08-22 02:15:44', 0),
(856, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 109, 3, '2019-08-22 04:20:19', 0);
INSERT INTO `melis_core_log` (`log_id`, `log_title`, `log_message`, `log_action_status`, `log_type_id`, `log_item_id`, `log_user_id`, `log_date_added`, `log_status`) VALUES
(857, ' Page 261 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 261, 3, '2019-08-22 04:20:23', 0),
(858, ' Page 260 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 260, 3, '2019-08-22 04:20:28', 0),
(859, ' Page 259 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 259, 3, '2019-08-22 04:20:33', 0),
(860, ' Page 258 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 258, 3, '2019-08-22 04:20:36', 0),
(861, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 110, 3, '2019-08-22 04:21:11', 0),
(862, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 262, 3, '2019-08-22 04:31:49', 0),
(863, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 263, 3, '2019-08-22 04:32:13', 0),
(864, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 264, 3, '2019-08-22 04:32:26', 0),
(865, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 111, 3, '2019-08-22 05:11:04', 0),
(866, 'Publish page \"rose 2\"', 'tr_meliscms_page_success_Page published', 1, 3, 266, 3, '2019-08-22 05:11:16', 0),
(867, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 267, 3, '2019-08-22 05:11:35', 0),
(868, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 268, 3, '2019-08-22 05:11:53', 0),
(869, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 262, 7, '2019-08-22 05:31:56', 0),
(870, 'Publish page \"Arthur Deegan\"', 'tr_meliscms_page_success_Page published', 1, 3, 262, 3, '2019-08-22 05:51:40', 0),
(871, 'tr_meliscms_tool_site', 'tr_melis_cms_sites_tool_add_create_site_success', 1, 1, 112, 3, '2019-08-22 05:55:19', 0),
(872, 'Publish page \"New Test Multi\"', 'tr_meliscms_page_success_Page published', 1, 3, 270, 3, '2019-08-22 05:55:38', 0),
(873, 'Publish page \"Blog\"', 'tr_meliscms_page_success_Page published', 1, 3, 271, 3, '2019-08-22 05:55:40', 0),
(874, 'Publish page \"Blog Details\"', 'tr_meliscms_page_success_Page published', 1, 3, 272, 3, '2019-08-22 05:55:44', 0),
(875, 'Deleted Page 270', 'tr_meliscms_page_error_Some errors occured while processing the request. Please find details bellow.', 0, 8, 270, 3, '2019-08-22 05:57:42', 0),
(876, ' Page 273 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 273, 3, '2019-08-22 05:57:50', 0),
(877, ' Page 272 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 272, 3, '2019-08-22 05:57:55', 0),
(878, ' Page 271 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 271, 3, '2019-08-22 05:57:59', 0),
(879, ' Page 270 Deleted', 'tr_meliscms_page_success_Page deleted_success', 1, 8, 270, 3, '2019-08-22 05:58:03', 0),
(880, 'tr_meliscms_tool_site', 'tr_meliscms_tool_site_delete_success', 1, 9, 112, 3, '2019-08-22 05:58:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_log_type`
--

CREATE TABLE `melis_core_log_type` (
  `logt_id` int(11) NOT NULL COMMENT 'Log type id',
  `logt_code` varchar(255) NOT NULL COMMENT 'log code is the codename of the action ex. PAGE_PABLISH for publishing a page, ADD_USER for adding new user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_log_type`
--

INSERT INTO `melis_core_log_type` (`logt_id`, `logt_code`) VALUES
(1, 'CMS_SITE_ADD'),
(2, 'CMS_SITE_UPDATE'),
(3, 'CMS_PAGE_PUBLISH'),
(4, 'CORE_USER_ADD'),
(5, 'CORE_USER_UPDATE'),
(6, 'CMS_PAGE_UPDATE'),
(7, 'CMS_TEMPLATE_UPDATE'),
(8, 'CMS_PAGE_DELETE'),
(9, 'CMS_SITE_DELETE'),
(10, 'CMS_TEMPLATE_DELETE'),
(11, 'CMS_PAGE_ADD'),
(12, 'CMS_TEMPLATE_ADD'),
(13, 'CMS_NEWS_UPDATE'),
(14, 'CMS_PROSPECTS_THEME_ADD'),
(15, 'CMS_NEWS_UPLOAD_IMG'),
(16, 'CMS_DUPLICATE_TREE_PAGE'),
(17, 'CMS_STYLE_DETAILS_ADD'),
(18, 'CMS_STYLE_DETAILS_UPDATE'),
(19, 'CMS_PAGE_MOVE'),
(20, 'CMS_PAGE_UNPUBLISH'),
(21, 'CORE_PLATFORM_SCHEME_SAVE'),
(22, 'CMS_NEWS_ADD'),
(23, 'CMS_STYLE_DELETE'),
(24, 'CMS_SLIDER_ADD'),
(25, 'CMS_SLIDER_DETAILS_ADD'),
(26, 'CMS_SLIDER_DETAILS_UPDATE'),
(27, 'CMS_SLIDER_UPDATE'),
(28, 'CMS_NEWS_IMAGE_DELETE');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_log_type_trans`
--

CREATE TABLE `melis_core_log_type_trans` (
  `logtt_id` int(11) NOT NULL COMMENT 'Log type translation id',
  `logtt_lang_id` int(11) NOT NULL COMMENT 'Log type Language Id',
  `logtt_type_id` int(11) NOT NULL COMMENT 'Log type id foreign key of melis_core_logs_type',
  `logtt_name` varchar(255) DEFAULT NULL COMMENT 'Log type name',
  `logtt_description` varchar(255) DEFAULT NULL COMMENT 'Log type description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_lost_password`
--

CREATE TABLE `melis_core_lost_password` (
  `rh_id` int(11) NOT NULL,
  `rh_login` varchar(255) NOT NULL,
  `rh_email` varchar(255) NOT NULL,
  `rh_hash` varchar(255) NOT NULL,
  `rh_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_microservice_auth`
--

CREATE TABLE `melis_core_microservice_auth` (
  `msoa_id` int(11) NOT NULL,
  `msoa_user_id` int(11) NOT NULL,
  `msoa_status` tinyint(1) DEFAULT '0',
  `msoa_api_key` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_microservice_logs`
--

CREATE TABLE `melis_core_microservice_logs` (
  `msl_id` int(11) NOT NULL,
  `msl_user_id` int(11) NOT NULL,
  `msl_payload` text NOT NULL,
  `msl_response` text,
  `msl_url` text NOT NULL,
  `msl_date_requested` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_platform`
--

CREATE TABLE `melis_core_platform` (
  `plf_id` int(11) NOT NULL,
  `plf_name` varchar(100) NOT NULL,
  `plf_update_marketplace` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines environement used for the project';

--
-- Dumping data for table `melis_core_platform`
--

INSERT INTO `melis_core_platform` (`plf_id`, `plf_name`, `plf_update_marketplace`) VALUES
(1, 'development', '1');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_platform_scheme`
--

CREATE TABLE `melis_core_platform_scheme` (
  `pscheme_id` int(11) NOT NULL,
  `pscheme_name` varchar(45) DEFAULT NULL,
  `pscheme_colors` text,
  `pscheme_sidebar_header_logo` text,
  `pscheme_sidebar_header_text` varchar(45) DEFAULT NULL,
  `pscheme_login_logo` text,
  `pscheme_login_background` text,
  `pscheme_favicon` text,
  `pscheme_is_active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_platform_scheme`
--

INSERT INTO `melis_core_platform_scheme` (`pscheme_id`, `pscheme_name`, `pscheme_colors`, `pscheme_sidebar_header_logo`, `pscheme_sidebar_header_text`, `pscheme_login_logo`, `pscheme_login_background`, `pscheme_favicon`, `pscheme_is_active`) VALUES
(1, 'MELIS_DEFAULT', '{\"melis_core_platform_color_primary_color\":\"#e61c23\",\"melis_core_platform_color_secondary_color\":\"#ce5459\"}', '/MelisCore/images/dashboard/melis-logo.svg', 'MELIS PLATFORM', '/MelisCore/images/login/melis-box.png', '/MelisCore/images/login/melis-blackboard.jpg', '/favicon.ico', 0),
(2, 'MELIS_SCHEME_1', '{\"melis_core_platform_color_primary_color\":\"#db7478\",\"melis_core_platform_color_secondary_color\":\"#ce5459\"}', '/MelisCore/images/dashboard/melis-logo.svg', 'MELIS PLATFORM', '/MelisCore/images/login/melis-box.png', '/MelisCore/images/login/melis-blackboard.jpg', '/favicon.ico', 1);

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_user`
--

CREATE TABLE `melis_core_user` (
  `usr_id` int(11) NOT NULL,
  `usr_status` int(11) NOT NULL DEFAULT '1',
  `usr_login` varchar(255) NOT NULL,
  `usr_email` varchar(255) NOT NULL,
  `usr_password` varchar(255) NOT NULL,
  `usr_firstname` varchar(255) NOT NULL,
  `usr_lastname` varchar(255) NOT NULL,
  `usr_lang_id` int(11) NOT NULL DEFAULT '1',
  `usr_role_id` int(11) NOT NULL DEFAULT '1',
  `usr_admin` int(11) NOT NULL DEFAULT '0',
  `usr_rights` text,
  `usr_image` mediumblob,
  `usr_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_last_login_date` datetime DEFAULT NULL,
  `usr_is_online` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Melis users';

--
-- Dumping data for table `melis_core_user`
--

INSERT INTO `melis_core_user` (`usr_id`, `usr_status`, `usr_login`, `usr_email`, `usr_password`, `usr_firstname`, `usr_lastname`, `usr_lang_id`, `usr_role_id`, `usr_admin`, `usr_rights`, `usr_image`, `usr_creation_date`, `usr_last_login_date`, `usr_is_online`) VALUES
(1, 1, 'admin', 'vincentpaul.ponteras@cri.clickablebrand.com', '$2y$10$IhcgteASXeTpSCIoMOMmgudkLM2sIOsHXKQc9L83imosOEaB9uF2W', 'Vincent Paul', 'Ponteras', 1, 1, 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n                                        	<id>-1</id>\n                                        </meliscms_pages>\n                                        <meliscore_interface>\n                                        </meliscore_interface>\n                                        <meliscore_leftmenu>\n                                        	<meliscore_toolstree_section>\n                                        	</meliscore_toolstree_section>\n                                        	<meliscms_toolstree_section>\n                                        	</meliscms_toolstree_section>\n                                        	<melismarketing_toolstree_section>\n                                        	</melismarketing_toolstree_section>\n                                        	<meliscommerce_toolstree_section>\n                                        	</meliscommerce_toolstree_section>\n                                        	<melisothers_toolstree_section>\n                                        	</melisothers_toolstree_section>\n                                        	<meliscustom_toolstree_section>\n                                        	</meliscustom_toolstree_section>\n                                        	<id>meliscore_leftmenu_root</id>\n                                        </meliscore_leftmenu>\n                                        <melis_dashboardplugin>\n                                            <id>melis_dashboardplugin_root</id>\n                                        </melis_dashboardplugin>\n                                        </document>', NULL, '2019-07-09 20:36:49', '2019-08-21 15:03:52', 1),
(2, 1, 'epesquera', 'emeliza.pesquera@cri.clickablebrand.com', '$2y$10$9/1wipQrCHi/GyownaY29.MhiUDE/gJeL03CymE3mfe65ceZaF4Bq', 'Emeliza', 'Pesquera', 1, 1, 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n	<id>-1</id>\n</meliscms_pages>\n<meliscore_interface>\n	<id>/meliscms</id>\n</meliscore_interface>\n<meliscore_leftmenu>\n	<meliscore_toolstree_section>\n		<id>meliscore_toolstree_section_root</id>\n		<id>meliscore_tool_system_config</id>\n		<id>meliscore_tool_phpunit</id>\n		<id>meliscore_tool_user_module_management</id>\n		<id>meliscore_tool_platform</id>\n		<id>meliscore_tool_language</id>\n		<id>meliscore_tool_emails_mngt</id>\n		<id>meliscore_logs_tool</id>\n		<id>meliscore_tool_platform_scheme</id>\n		<id>meliscore_tool_admin_section</id>\n		<id>melis_core_gdpr</id>\n		<id>meliscore_tool_user</id>\n		<id>meliscore_tool_creatrion_designs</id>\n		<id>melisdesign_leftnemu</id>\n		<id>meliscore_tool_tools</id>\n	</meliscore_toolstree_section>\n	<meliscms_toolstree_section>\n		<id>meliscms_toolstree_section_root</id>\n	</meliscms_toolstree_section>\n	<melismarketing_toolstree_section>\n		<id>melismarketing_toolstree_section_root</id>\n	</melismarketing_toolstree_section>\n	<meliscommerce_toolstree_section>\n		<id>meliscommerce_toolstree_section_root</id>\n	</meliscommerce_toolstree_section>\n	<melisothers_toolstree_section>\n		<id>melisothers_toolstree_section_root</id>\n	</melisothers_toolstree_section>\n	<meliscustom_toolstree_section>\n		<id>meliscustom_toolstree_section_root</id>\n	</meliscustom_toolstree_section>\n	<melismarketplace_toolstree_section>\n		<id>melismarketplace_toolstree_section_root</id>\n	</melismarketplace_toolstree_section>\n	<id>meliscore_leftmenu_root</id>\n</meliscore_leftmenu>\n<melis_dashboardplugin>\n	<id>melis_dashboardplugin_root</id>\n</melis_dashboardplugin>\n</document>', NULL, '2019-07-09 20:56:32', '2019-08-23 06:25:40', 1),
(3, 1, 'vyanson', 'vicmar.yanson@cri.clickablebrand.com', '$2y$10$0SULlBs6w4eSF09ayR40YOCtB5xu9meFX4BguqGaBXRtZ91l5pLx2', 'Vicmar', 'Yanson', 1, 1, 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n	<id>-1</id>\n</meliscms_pages>\n<meliscore_interface>\n</meliscore_interface>\n<meliscore_leftmenu>\n	<meliscore_toolstree_section>\n	</meliscore_toolstree_section>\n	<meliscms_toolstree_section>\n	</meliscms_toolstree_section>\n	<melismarketing_toolstree_section>\n	</melismarketing_toolstree_section>\n	<meliscommerce_toolstree_section>\n	</meliscommerce_toolstree_section>\n	<melisothers_toolstree_section>\n	</melisothers_toolstree_section>\n	<meliscustom_toolstree_section>\n	</meliscustom_toolstree_section>\n	<melismarketplace_toolstree_section>\n	</melismarketplace_toolstree_section>\n	<id>meliscore_leftmenu_root</id>\n</meliscore_leftmenu>\n<melis_dashboardplugin>\n	<id>melis_dashboardplugin_root</id>\n</melis_dashboardplugin>\n</document>', NULL, '2019-07-09 20:58:13', '2019-08-22 23:40:44', 1),
(4, 1, 'fo', 'emeliza.pesquera@cri.clickablebrand.com', '$2y$10$Y.xnLL2udy1AnhQjFZELyurIxAi5A0qbPogX7i2WIgTjOL32j2MdS', 'Fulfillment', 'Officer', 1, 1, 0, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n	<id>-1</id>\n</meliscms_pages>\n<meliscore_interface>\n</meliscore_interface>\n<meliscore_leftmenu>\n	<meliscore_toolstree_section>\n	</meliscore_toolstree_section>\n	<meliscms_toolstree_section>\n		<id>meliscms_toolstree_section_root</id>\n		<id>meliscms_site_tools</id>\n		<id>meliscms_tool_sites</id>\n		<id>meliscms_tool_site_301</id>\n		<id>meliscms_tool_templates</id>\n		<id>meliscms_tool_styles</id>\n		<id>meliscms_tool_language</id>\n		<id>meliscms_tool_platform_ids</id>\n		<id>meliscms_news_tool_section</id>\n		<id>meliscmsnews_left</id>\n		<id>melis_cms_slider_tool</id>\n		<id>MelisCmsSlider_left</id>\n		<id>meliscms_site_robot_tools</id>\n		<id>melis_cms_site_robots_config</id>\n	</meliscms_toolstree_section>\n	<melismarketing_toolstree_section>\n	</melismarketing_toolstree_section>\n	<meliscommerce_toolstree_section>\n	</meliscommerce_toolstree_section>\n	<melisothers_toolstree_section>\n	</melisothers_toolstree_section>\n	<meliscustom_toolstree_section>\n	</meliscustom_toolstree_section>\n	<melismarketplace_toolstree_section>\n	</melismarketplace_toolstree_section>\n</meliscore_leftmenu>\n<melis_dashboardplugin>\n</melis_dashboardplugin>\n</document>', NULL, '2019-07-16 23:04:54', '2019-07-16 23:23:45', 0),
(5, 1, 'sales_agent', 'emeliza.pesquera@cri.clickablebrand.com', '$2y$10$/mb4jN5A65UquKTwBsESpe4MySPnI8.ncOctkuizR.cJFJvHSa/Ze', 'Sales', 'Agent', 1, 1, 0, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n	<id>68</id>\n</meliscms_pages>\n<meliscore_interface>\n</meliscore_interface>\n<meliscore_leftmenu>\n	<meliscore_toolstree_section>\n	</meliscore_toolstree_section>\n	<meliscms_toolstree_section>\n		<id>meliscms_news_tool_section</id>\n	</meliscms_toolstree_section>\n	<melismarketing_toolstree_section>\n	</melismarketing_toolstree_section>\n	<meliscommerce_toolstree_section>\n	</meliscommerce_toolstree_section>\n	<melisothers_toolstree_section>\n	</melisothers_toolstree_section>\n	<meliscustom_toolstree_section>\n	</meliscustom_toolstree_section>\n	<melismarketplace_toolstree_section>\n	</melismarketplace_toolstree_section>\n</meliscore_leftmenu>\n<melis_dashboardplugin>\n</melis_dashboardplugin>\n</document>', NULL, '2019-07-16 23:29:27', '2019-07-16 23:34:23', 0),
(6, 1, 'fulfillment_officer', 'fulfillment@cri.clickablebrand.com', '$2y$10$xPJyPfTs4m3I9/3pvyuZ/uIsLZhjY4fjVvA3h25oyiR4NCNtAv4Q6', 'Fulfillment', 'Officer', 1, 1, 0, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n	<id>-1</id>\n</meliscms_pages>\n<meliscore_interface>\n</meliscore_interface>\n<meliscore_leftmenu>\n	<meliscore_toolstree_section>\n		<id>meliscore_toolstree_section_root</id>\n	</meliscore_toolstree_section>\n	<meliscms_toolstree_section>\n		<id>meliscms_toolstree_section_root</id>\n		<id>meliscms_site_tools</id>\n		<id>meliscms_tool_sites</id>\n		<id>meliscms_tool_site_301</id>\n		<id>meliscms_tool_templates</id>\n		<id>meliscms_tool_styles</id>\n		<id>meliscms_tool_language</id>\n		<id>meliscms_tool_platform_ids</id>\n		<id>meliscms_news_tool_section</id>\n		<id>meliscmsnews_left</id>\n		<id>melis_cms_slider_tool</id>\n		<id>MelisCmsSlider_left</id>\n		<id>meliscms_site_robot_tools</id>\n		<id>melis_cms_site_robots_config</id>\n	</meliscms_toolstree_section>\n	<melismarketing_toolstree_section>\n	</melismarketing_toolstree_section>\n	<meliscommerce_toolstree_section>\n	</meliscommerce_toolstree_section>\n	<melisothers_toolstree_section>\n	</melisothers_toolstree_section>\n	<meliscustom_toolstree_section>\n	</meliscustom_toolstree_section>\n	<melismarketplace_toolstree_section>\n	</melismarketplace_toolstree_section>\n	<id>meliscore_leftmenu_root</id>\n</meliscore_leftmenu>\n<melis_dashboardplugin>\n</melis_dashboardplugin>\n</document>', NULL, '2019-07-18 23:25:03', '2019-07-30 07:35:55', 0),
(7, 1, 'pvillarino', 'peter.villarino@cri.clickablebrand.com', '$2y$10$l7WYgoSFBxwVlx1NjubC5eO8N90igWLe2oc8fG9RA44oqKyyFlVwC', 'Peter', 'Villarino', 1, 1, 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n	<id>-1</id>\n</meliscms_pages>\n<meliscore_interface>\n</meliscore_interface>\n<meliscore_leftmenu>\n	<meliscore_toolstree_section>\n	</meliscore_toolstree_section>\n	<meliscms_toolstree_section>\n	</meliscms_toolstree_section>\n	<melismarketing_toolstree_section>\n	</melismarketing_toolstree_section>\n	<meliscommerce_toolstree_section>\n	</meliscommerce_toolstree_section>\n	<melisothers_toolstree_section>\n	</melisothers_toolstree_section>\n	<meliscustom_toolstree_section>\n	</meliscustom_toolstree_section>\n	<melismarketplace_toolstree_section>\n	</melismarketplace_toolstree_section>\n	<id>meliscore_leftmenu_root</id>\n</meliscore_leftmenu>\n<melis_dashboardplugin>\n	<id>melis_dashboardplugin_root</id>\n</melis_dashboardplugin>\n</document>', NULL, '2019-07-22 02:46:39', '2019-08-22 05:00:43', 1),
(8, 1, 'edwinr', 'edwinr@clickablebrand.com', '$2y$10$60OwuX70axovP80O2xWtjebTi/0tJJd4VJhije6L..M37Qnf2DTC6', 'edwin', 'rosales', 1, 1, 1, '<?xml version=\"1.0\" encoding=\"UTF-8\"?><document type=\"MelisUserRights\" author=\"MelisTechnology\" version=\"2.0\"><meliscms_pages>\n	<id>-1</id>\n</meliscms_pages>\n<meliscore_interface>\n</meliscore_interface>\n<meliscore_leftmenu>\n	<meliscore_toolstree_section>\n	</meliscore_toolstree_section>\n	<meliscms_toolstree_section>\n	</meliscms_toolstree_section>\n	<melismarketing_toolstree_section>\n	</melismarketing_toolstree_section>\n	<meliscommerce_toolstree_section>\n	</meliscommerce_toolstree_section>\n	<melisothers_toolstree_section>\n	</melisothers_toolstree_section>\n	<meliscustom_toolstree_section>\n	</meliscustom_toolstree_section>\n	<melismarketplace_toolstree_section>\n	</melismarketplace_toolstree_section>\n	<id>meliscore_leftmenu_root</id>\n</meliscore_leftmenu>\n<melis_dashboardplugin>\n	<id>melis_dashboardplugin_root</id>\n</melis_dashboardplugin>\n</document>', NULL, '2019-07-29 03:54:44', '2019-07-29 05:30:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_user_connection_date`
--

CREATE TABLE `melis_core_user_connection_date` (
  `usrcd_id` int(11) NOT NULL,
  `usrcd_usr_login` int(11) NOT NULL,
  `usrcd_last_login_date` datetime NOT NULL,
  `usrcd_last_connection_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_user_connection_date`
--

INSERT INTO `melis_core_user_connection_date` (`usrcd_id`, `usrcd_usr_login`, `usrcd_last_login_date`, `usrcd_last_connection_time`) VALUES
(1, 1, '2019-07-09 20:37:35', '2019-07-09 21:00:01'),
(2, 2, '2019-07-09 21:00:39', '2019-07-09 21:00:44'),
(3, 2, '2019-07-09 21:01:26', '2019-07-09 21:01:26'),
(4, 3, '2019-07-09 21:01:45', '2019-07-09 21:01:50'),
(5, 1, '2019-07-09 21:02:05', '2019-07-09 21:03:10'),
(6, 2, '2019-07-09 21:03:17', '2019-07-09 21:03:29'),
(7, 2, '2019-07-09 21:04:31', '2019-07-09 21:04:31'),
(8, 1, '2019-07-09 21:05:05', '2019-07-09 21:07:09'),
(9, 2, '2019-07-09 21:07:31', '2019-07-09 21:07:31'),
(10, 3, '2019-07-09 23:32:40', '2019-07-10 08:00:29'),
(11, 3, '2019-07-10 00:12:07', '2019-07-10 01:12:41'),
(12, 2, '2019-07-10 01:27:18', '2019-07-10 07:07:02'),
(13, 1, '2019-07-10 06:26:37', '2019-07-10 06:28:44'),
(14, 1, '2019-07-10 14:07:32', '2019-07-10 14:26:39'),
(15, 3, '2019-07-10 23:27:59', '2019-07-11 07:59:53'),
(16, 1, '2019-07-11 14:19:41', '2019-07-11 14:33:43'),
(17, 3, '2019-07-11 23:37:37', '2019-07-12 08:00:03'),
(18, 3, '2019-07-14 23:24:25', '2019-07-15 08:02:03'),
(19, 2, '2019-07-15 04:16:21', '2019-07-15 07:49:21'),
(20, 3, '2019-07-15 23:24:02', '2019-07-16 02:44:55'),
(21, 3, '2019-07-16 02:44:16', '2019-07-16 08:27:01'),
(22, 2, '2019-07-16 05:13:39', '2019-07-16 08:06:39'),
(23, 2, '2019-07-16 23:03:46', '2019-07-17 00:53:13'),
(24, 4, '2019-07-16 23:20:57', '2019-07-16 23:23:29'),
(25, 3, '2019-07-16 23:21:02', '2019-07-17 08:00:51'),
(26, 4, '2019-07-16 23:23:45', '2019-07-16 23:29:50'),
(27, 5, '2019-07-16 23:30:50', '2019-07-16 23:33:55'),
(28, 5, '2019-07-16 23:34:23', '2019-07-16 23:38:28'),
(29, 2, '2019-07-17 05:39:57', '2019-07-17 08:13:53'),
(30, 2, '2019-07-17 06:15:46', '2019-07-17 07:11:46'),
(31, 3, '2019-07-18 23:14:43', '2019-07-19 04:59:16'),
(32, 6, '2019-07-18 23:26:35', '2019-07-19 02:19:42'),
(33, 6, '2019-07-18 23:36:38', '2019-07-19 00:14:37'),
(34, 6, '2019-07-19 06:50:30', '2019-07-19 07:30:30'),
(35, 1, '2019-07-19 20:05:23', '2019-07-19 20:10:34'),
(36, 3, '2019-07-22 02:24:39', '2019-07-22 04:27:17'),
(37, 7, '2019-07-22 02:48:34', '2019-07-22 02:51:30'),
(38, 7, '2019-07-22 02:51:55', '2019-07-22 04:06:02'),
(39, 3, '2019-07-22 23:20:14', '2019-07-23 04:29:38'),
(40, 3, '2019-07-23 23:37:40', '2019-07-24 07:42:03'),
(41, 7, '2019-07-24 01:53:41', '2019-07-24 02:16:51'),
(42, 3, '2019-07-24 23:27:25', '2019-07-25 07:58:18'),
(43, 3, '2019-07-28 23:31:43', '2019-07-29 02:58:05'),
(44, 2, '2019-07-29 03:51:31', '2019-07-29 03:55:39'),
(45, 8, '2019-07-29 03:56:32', '2019-07-29 03:56:37'),
(46, 2, '2019-07-29 03:57:22', '2019-07-29 03:57:27'),
(47, 8, '2019-07-29 03:58:06', '2019-07-29 05:29:54'),
(48, 3, '2019-07-29 04:13:49', '2019-07-29 08:00:43'),
(49, 2, '2019-07-29 05:28:51', '2019-07-29 05:29:03'),
(50, 8, '2019-07-29 05:30:18', '2019-07-29 05:30:18'),
(51, 3, '2019-07-29 23:22:52', '2019-07-30 07:08:48'),
(52, 6, '2019-07-30 07:05:14', '2019-07-30 13:05:28'),
(53, 6, '2019-07-30 07:09:33', '2019-07-30 07:10:32'),
(54, 3, '2019-07-30 07:10:04', '2019-07-30 08:00:27'),
(55, 7, '2019-07-30 07:10:27', '2019-07-30 07:38:42'),
(56, 6, '2019-07-30 07:11:29', '2019-07-30 07:14:37'),
(57, 6, '2019-07-30 07:15:35', '2019-07-30 07:15:42'),
(58, 6, '2019-07-30 07:16:37', '2019-07-30 07:35:44'),
(59, 6, '2019-07-30 07:35:55', '2019-07-30 08:00:02'),
(60, 1, '2019-07-30 19:02:52', '2019-07-30 19:03:59'),
(61, 2, '2019-07-31 23:52:35', '2019-08-01 02:33:44'),
(62, 3, '2019-07-31 23:58:51', '2019-08-01 02:22:51'),
(63, 3, '2019-08-01 07:25:16', '2019-08-01 08:00:16'),
(64, 3, '2019-08-06 05:16:06', '2019-08-06 08:02:06'),
(65, 3, '2019-08-06 23:49:55', '2019-08-07 02:29:33'),
(66, 7, '2019-08-06 23:49:57', '2019-08-07 02:33:04'),
(67, 3, '2019-08-08 23:32:35', '2019-08-09 08:00:06'),
(68, 3, '2019-08-12 23:13:12', '2019-08-13 07:57:22'),
(69, 2, '2019-08-13 23:40:13', '2019-08-13 23:41:13'),
(70, 3, '2019-08-13 23:43:21', '2019-08-14 07:59:15'),
(71, 3, '2019-08-14 23:31:20', '2019-08-15 05:35:17'),
(72, 3, '2019-08-15 02:11:11', '2019-08-15 02:50:06'),
(73, 3, '2019-08-15 02:52:39', '2019-08-15 05:33:58'),
(74, 7, '2019-08-15 04:40:00', '2019-08-15 07:56:54'),
(75, 3, '2019-08-15 04:44:58', '2019-08-15 04:46:58'),
(76, 3, '2019-08-15 05:36:42', '2019-08-15 05:56:19'),
(77, 3, '2019-08-15 05:58:58', '2019-08-15 08:03:58'),
(78, 3, '2019-08-18 23:41:30', '2019-08-19 08:00:30'),
(79, 3, '2019-08-19 23:46:36', '2019-08-20 02:56:55'),
(80, 3, '2019-08-20 02:59:05', '2019-08-20 07:59:47'),
(81, 3, '2019-08-20 07:46:11', '2019-08-20 08:00:11'),
(82, 1, '2019-08-20 21:40:32', '2019-08-20 22:03:43'),
(83, 7, '2019-08-21 02:31:18', '2019-08-21 02:31:18'),
(84, 1, '2019-08-21 15:04:01', '2019-08-21 15:23:32'),
(85, 3, '2019-08-21 23:28:03', '2019-08-22 04:51:48'),
(86, 3, '2019-08-22 02:26:25', '2019-08-22 02:37:24'),
(87, 3, '2019-08-22 04:43:41', '2019-08-22 05:39:40'),
(88, 3, '2019-08-22 04:54:09', '2019-08-22 05:49:10'),
(89, 7, '2019-08-22 05:00:56', '2019-08-22 06:31:26'),
(90, 3, '2019-08-22 05:51:09', '2019-08-22 06:40:23'),
(91, 3, '2019-08-22 06:24:48', '2019-08-22 06:39:48'),
(92, 3, '2019-08-22 23:40:51', '2019-08-23 07:52:16'),
(93, 2, '2019-08-23 06:25:49', '2019-08-23 07:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `melis_core_user_role`
--

CREATE TABLE `melis_core_user_role` (
  `urole_id` int(11) NOT NULL,
  `urole_name` varchar(255) NOT NULL,
  `urole_rights` text,
  `urole_creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_core_user_role`
--

INSERT INTO `melis_core_user_role` (`urole_id`, `urole_name`, `urole_rights`, `urole_creation_date`) VALUES
(1, 'Custom', NULL, '2019-07-09 20:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `melis_hist_page_historic`
--

CREATE TABLE `melis_hist_page_historic` (
  `hist_id` int(11) NOT NULL,
  `hist_page_id` int(11) NOT NULL,
  `hist_action` varchar(45) NOT NULL,
  `hist_date` datetime NOT NULL,
  `hist_user_id` int(11) NOT NULL,
  `hist_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves the historic actions';

--
-- Dumping data for table `melis_hist_page_historic`
--

INSERT INTO `melis_hist_page_historic` (`hist_id`, `hist_page_id`, `hist_action`, `hist_date`, `hist_user_id`, `hist_description`) VALUES
(1, 38, 'Publish', '2019-07-09 20:40:30', 1, 'tr_melispagehistoric_description_text_publish'),
(2, 38, 'Save', '2019-07-10 00:02:46', 3, 'tr_melispagehistoric_description_text_save'),
(3, 38, 'Publish', '2019-07-10 00:04:07', 3, 'tr_melispagehistoric_description_text_publish'),
(4, 39, 'Publish', '2019-07-10 00:13:37', 3, 'tr_melispagehistoric_description_text_publish'),
(5, 38, 'Publish', '2019-07-10 00:13:50', 3, 'tr_melispagehistoric_description_text_publish'),
(6, 38, 'Publish', '2019-07-10 00:16:47', 3, 'tr_melispagehistoric_description_text_publish'),
(7, 38, 'Publish', '2019-07-10 00:18:03', 3, 'tr_melispagehistoric_description_text_publish'),
(8, 1, 'Publish', '2019-07-10 00:25:01', 3, 'tr_melispagehistoric_description_text_publish'),
(9, 39, 'Publish', '2019-07-10 00:26:21', 3, 'tr_melispagehistoric_description_text_publish'),
(10, 39, 'Delete', '2019-07-10 00:29:41', 3, 'tr_melispagehistoric_action_text_Delete'),
(11, 38, 'Delete', '2019-07-10 00:29:45', 3, 'tr_melispagehistoric_action_text_Delete'),
(12, 40, 'Publish', '2019-07-10 00:30:40', 3, 'tr_melispagehistoric_description_text_publish'),
(13, 41, 'Publish', '2019-07-10 00:31:09', 3, 'tr_melispagehistoric_description_text_publish'),
(14, 40, 'Publish', '2019-07-10 00:36:24', 3, 'tr_melispagehistoric_description_text_publish'),
(15, 40, 'Publish', '2019-07-10 00:39:25', 3, 'tr_melispagehistoric_description_text_publish'),
(16, 40, 'Publish', '2019-07-10 00:40:03', 3, 'tr_melispagehistoric_description_text_publish'),
(17, 40, 'Publish', '2019-07-10 00:40:17', 3, 'tr_melispagehistoric_description_text_publish'),
(18, 40, 'Publish', '2019-07-10 00:40:46', 3, 'tr_melispagehistoric_description_text_publish'),
(19, 40, 'Publish', '2019-07-10 00:44:32', 3, 'tr_melispagehistoric_description_text_publish'),
(20, 41, 'Publish', '2019-07-10 00:45:46', 3, 'tr_melispagehistoric_description_text_publish'),
(21, 41, 'Publish', '2019-07-10 00:46:01', 3, 'tr_melispagehistoric_description_text_publish'),
(22, 41, 'Publish', '2019-07-10 00:46:42', 3, 'tr_melispagehistoric_description_text_publish'),
(23, 41, 'Publish', '2019-07-10 00:47:03', 3, 'tr_melispagehistoric_description_text_publish'),
(24, 41, 'Publish', '2019-07-10 00:47:22', 3, 'tr_melispagehistoric_description_text_publish'),
(25, 41, 'Publish', '2019-07-10 00:47:53', 3, 'tr_melispagehistoric_description_text_publish'),
(26, 41, 'Publish', '2019-07-10 00:48:16', 3, 'tr_melispagehistoric_description_text_publish'),
(27, 41, 'Publish', '2019-07-10 00:49:45', 3, 'tr_melispagehistoric_description_text_publish'),
(28, 41, 'Publish', '2019-07-10 00:51:31', 3, 'tr_melispagehistoric_description_text_publish'),
(29, 41, 'Publish', '2019-07-10 00:53:41', 3, 'tr_melispagehistoric_description_text_publish'),
(30, 41, 'Publish', '2019-07-10 00:54:05', 3, 'tr_melispagehistoric_description_text_publish'),
(31, 41, 'Publish', '2019-07-10 00:54:25', 3, 'tr_melispagehistoric_description_text_publish'),
(32, 40, 'Publish', '2019-07-10 01:28:55', 3, 'tr_melispagehistoric_description_text_publish'),
(33, 42, 'Save', '2019-07-10 01:39:30', 3, 'tr_melispagehistoric_description_text_new'),
(34, 42, 'Publish', '2019-07-10 01:39:46', 3, 'tr_melispagehistoric_description_text_publish'),
(35, 42, 'Publish', '2019-07-10 01:41:34', 3, 'tr_melispagehistoric_description_text_publish'),
(36, 41, 'Publish', '2019-07-10 05:28:22', 3, 'tr_melispagehistoric_description_text_publish'),
(37, 41, 'Publish', '2019-07-10 05:29:28', 3, 'tr_melispagehistoric_description_text_publish'),
(38, 41, 'Publish', '2019-07-10 05:29:52', 3, 'tr_melispagehistoric_description_text_publish'),
(39, 41, 'Publish', '2019-07-10 05:30:13', 3, 'tr_melispagehistoric_description_text_publish'),
(40, 41, 'Publish', '2019-07-10 05:31:17', 3, 'tr_melispagehistoric_description_text_publish'),
(41, 41, 'Publish', '2019-07-10 05:31:55', 3, 'tr_melispagehistoric_description_text_publish'),
(42, 41, 'Publish', '2019-07-10 05:32:25', 3, 'tr_melispagehistoric_description_text_publish'),
(43, 41, 'Publish', '2019-07-10 05:32:57', 3, 'tr_melispagehistoric_description_text_publish'),
(44, 41, 'Publish', '2019-07-10 05:33:25', 3, 'tr_melispagehistoric_description_text_publish'),
(45, 41, 'Publish', '2019-07-10 05:33:44', 3, 'tr_melispagehistoric_description_text_publish'),
(46, 41, 'Publish', '2019-07-10 05:33:59', 3, 'tr_melispagehistoric_description_text_publish'),
(47, 41, 'Publish', '2019-07-10 05:37:49', 3, 'tr_melispagehistoric_description_text_publish'),
(48, 40, 'Publish', '2019-07-10 06:28:03', 3, 'tr_melispagehistoric_description_text_publish'),
(49, 40, 'Publish', '2019-07-10 14:11:45', 1, 'tr_melispagehistoric_description_text_publish'),
(50, 40, 'Publish', '2019-07-11 00:40:06', 3, 'tr_melispagehistoric_description_text_publish'),
(51, 43, 'Delete', '2019-07-11 02:22:45', 3, 'tr_melispagehistoric_action_text_Delete'),
(52, 44, 'Publish', '2019-07-11 02:24:35', 3, 'tr_melispagehistoric_description_text_publish'),
(53, 44, 'Publish', '2019-07-11 02:24:48', 3, 'tr_melispagehistoric_description_text_publish'),
(54, 45, 'Publish', '2019-07-11 02:25:07', 3, 'tr_melispagehistoric_description_text_publish'),
(55, 46, 'Publish', '2019-07-11 02:25:19', 3, 'tr_melispagehistoric_description_text_publish'),
(56, 46, 'Delete', '2019-07-11 02:26:13', 3, 'tr_melispagehistoric_action_text_Delete'),
(57, 45, 'Delete', '2019-07-11 02:26:21', 3, 'tr_melispagehistoric_action_text_Delete'),
(58, 44, 'Delete', '2019-07-11 02:26:25', 3, 'tr_melispagehistoric_action_text_Delete'),
(59, 51, 'Delete', '2019-07-11 04:16:13', 3, 'tr_melispagehistoric_action_text_Delete'),
(60, 50, 'Delete', '2019-07-11 04:16:26', 3, 'tr_melispagehistoric_action_text_Delete'),
(61, 49, 'Delete', '2019-07-11 04:16:30', 3, 'tr_melispagehistoric_action_text_Delete'),
(62, 48, 'Delete', '2019-07-11 04:16:35', 3, 'tr_melispagehistoric_action_text_Delete'),
(63, 52, 'Publish', '2019-07-11 04:17:37', 3, 'tr_melispagehistoric_description_text_publish'),
(64, 53, 'Publish', '2019-07-11 04:17:59', 3, 'tr_melispagehistoric_description_text_publish'),
(65, 47, 'Publish', '2019-07-11 04:18:29', 3, 'tr_melispagehistoric_description_text_publish'),
(66, 53, 'Publish', '2019-07-11 04:20:24', 3, 'tr_melispagehistoric_description_text_publish'),
(67, 47, 'Publish', '2019-07-11 04:20:33', 3, 'tr_melispagehistoric_description_text_publish'),
(68, 47, 'Publish', '2019-07-11 04:20:58', 3, 'tr_melispagehistoric_description_text_publish'),
(69, 47, 'Publish', '2019-07-11 04:36:40', 3, 'tr_melispagehistoric_description_text_publish'),
(70, 47, 'Publish', '2019-07-11 04:37:05', 3, 'tr_melispagehistoric_description_text_publish'),
(71, 47, 'Publish', '2019-07-11 04:37:21', 3, 'tr_melispagehistoric_description_text_publish'),
(72, 52, 'Publish', '2019-07-11 04:40:23', 3, 'tr_melispagehistoric_description_text_publish'),
(73, 52, 'Publish', '2019-07-11 04:41:00', 3, 'tr_melispagehistoric_description_text_publish'),
(74, 53, 'Publish', '2019-07-11 04:41:33', 3, 'tr_melispagehistoric_description_text_publish'),
(75, 52, 'Publish', '2019-07-11 04:41:56', 3, 'tr_melispagehistoric_description_text_publish'),
(76, 47, 'Publish', '2019-07-11 05:12:18', 3, 'tr_melispagehistoric_description_text_publish'),
(77, 53, 'Delete', '2019-07-11 05:20:27', 3, 'tr_melispagehistoric_action_text_Delete'),
(78, 52, 'Delete', '2019-07-11 05:20:32', 3, 'tr_melispagehistoric_action_text_Delete'),
(79, 47, 'Delete', '2019-07-11 05:20:36', 3, 'tr_melispagehistoric_action_text_Delete'),
(80, 54, 'Publish', '2019-07-11 05:30:52', 3, 'tr_melispagehistoric_description_text_publish'),
(81, 55, 'Publish', '2019-07-11 05:31:27', 3, 'tr_melispagehistoric_description_text_publish'),
(82, 56, 'Publish', '2019-07-11 05:38:20', 3, 'tr_melispagehistoric_description_text_publish'),
(83, 57, 'Publish', '2019-07-11 05:38:56', 3, 'tr_melispagehistoric_description_text_publish'),
(84, 54, 'Publish', '2019-07-11 05:40:06', 3, 'tr_melispagehistoric_description_text_publish'),
(85, 54, 'Publish', '2019-07-11 05:40:25', 3, 'tr_melispagehistoric_description_text_publish'),
(86, 54, 'Publish', '2019-07-11 05:40:47', 3, 'tr_melispagehistoric_description_text_publish'),
(87, 54, 'Publish', '2019-07-11 05:41:28', 3, 'tr_melispagehistoric_description_text_publish'),
(88, 54, 'Publish', '2019-07-11 05:45:32', 3, 'tr_melispagehistoric_description_text_publish'),
(89, 54, 'Publish', '2019-07-11 05:46:43', 3, 'tr_melispagehistoric_description_text_publish'),
(90, 54, 'Publish', '2019-07-11 05:46:58', 3, 'tr_melispagehistoric_description_text_publish'),
(91, 55, 'Publish', '2019-07-11 06:48:36', 3, 'tr_melispagehistoric_description_text_publish'),
(92, 55, 'Publish', '2019-07-11 07:46:52', 3, 'tr_melispagehistoric_description_text_publish'),
(93, 55, 'Publish', '2019-07-11 07:47:23', 3, 'tr_melispagehistoric_description_text_publish'),
(94, 55, 'Delete', '2019-07-12 05:27:26', 3, 'tr_melispagehistoric_action_text_Delete'),
(95, 57, 'Delete', '2019-07-12 05:27:33', 3, 'tr_melispagehistoric_action_text_Delete'),
(96, 56, 'Delete', '2019-07-12 05:27:37', 3, 'tr_melispagehistoric_action_text_Delete'),
(97, 54, 'Delete', '2019-07-12 05:27:40', 3, 'tr_melispagehistoric_action_text_Delete'),
(98, 58, 'Publish', '2019-07-12 05:32:22', 3, 'tr_melispagehistoric_description_text_publish'),
(99, 59, 'Delete', '2019-07-12 06:27:32', 3, 'tr_melispagehistoric_action_text_Delete'),
(100, 58, 'Delete', '2019-07-12 06:27:36', 3, 'tr_melispagehistoric_action_text_Delete'),
(101, 42, 'Publish', '2019-07-14 23:41:20', 3, 'tr_melispagehistoric_description_text_publish'),
(102, 42, 'Publish', '2019-07-14 23:41:38', 3, 'tr_melispagehistoric_description_text_publish'),
(103, 42, 'Publish', '2019-07-14 23:41:56', 3, 'tr_melispagehistoric_description_text_publish'),
(104, 42, 'Publish', '2019-07-15 04:30:52', 3, 'tr_melispagehistoric_description_text_publish'),
(105, 41, 'Publish', '2019-07-15 05:49:36', 3, 'tr_melispagehistoric_description_text_publish'),
(106, 42, 'Publish', '2019-07-15 05:49:38', 3, 'tr_melispagehistoric_description_text_publish'),
(107, 40, 'Publish', '2019-07-15 06:34:16', 3, 'tr_melispagehistoric_description_text_publish'),
(108, 40, 'Publish', '2019-07-15 06:35:07', 3, 'tr_melispagehistoric_description_text_publish'),
(109, 40, 'Publish', '2019-07-15 06:36:49', 3, 'tr_melispagehistoric_description_text_publish'),
(110, 40, 'Publish', '2019-07-15 07:17:55', 3, 'tr_melispagehistoric_description_text_publish'),
(111, 63, 'Delete', '2019-07-16 02:30:18', 3, 'tr_melispagehistoric_action_text_Delete'),
(112, 62, 'Delete', '2019-07-16 02:30:22', 3, 'tr_melispagehistoric_action_text_Delete'),
(113, 61, 'Delete', '2019-07-16 02:30:33', 3, 'tr_melispagehistoric_action_text_Delete'),
(114, 60, 'Delete', '2019-07-16 02:30:37', 3, 'tr_melispagehistoric_action_text_Delete'),
(115, 64, 'Publish', '2019-07-16 02:34:35', 3, 'tr_melispagehistoric_description_text_publish'),
(116, 67, 'Publish', '2019-07-16 04:46:29', 3, 'tr_melispagehistoric_description_text_publish'),
(117, 64, 'Publish', '2019-07-16 04:46:53', 3, 'tr_melispagehistoric_description_text_publish'),
(118, 66, 'Publish', '2019-07-16 04:48:09', 3, 'tr_melispagehistoric_description_text_publish'),
(119, 66, 'Publish', '2019-07-16 04:48:50', 3, 'tr_melispagehistoric_description_text_publish'),
(120, 66, 'Publish', '2019-07-16 04:49:54', 3, 'tr_melispagehistoric_description_text_publish'),
(121, 65, 'Publish', '2019-07-16 04:50:00', 3, 'tr_melispagehistoric_description_text_publish'),
(122, 64, 'Publish', '2019-07-16 04:50:24', 3, 'tr_melispagehistoric_description_text_publish'),
(123, 64, 'Save', '2019-07-16 04:50:45', 3, 'tr_melispagehistoric_description_text_save'),
(124, 64, 'Publish', '2019-07-16 04:50:55', 3, 'tr_melispagehistoric_description_text_publish'),
(125, 67, 'Delete', '2019-07-16 04:53:54', 3, 'tr_melispagehistoric_action_text_Delete'),
(126, 66, 'Delete', '2019-07-16 04:54:03', 3, 'tr_melispagehistoric_action_text_Delete'),
(127, 65, 'Delete', '2019-07-16 04:54:08', 3, 'tr_melispagehistoric_action_text_Delete'),
(128, 64, 'Delete', '2019-07-16 04:54:12', 3, 'tr_melispagehistoric_action_text_Delete'),
(129, 68, 'Publish', '2019-07-16 05:43:57', 3, 'tr_melispagehistoric_description_text_publish'),
(130, 68, 'Unpublish', '2019-07-16 05:44:06', 3, 'tr_melispagehistoric_description_text_unpublished'),
(131, 69, 'Publish', '2019-07-16 05:44:24', 3, 'tr_melispagehistoric_description_text_publish'),
(132, 69, 'Unpublish', '2019-07-16 05:44:32', 3, 'tr_melispagehistoric_description_text_unpublished'),
(133, 68, 'Publish', '2019-07-16 05:51:21', 3, 'tr_melispagehistoric_description_text_publish'),
(134, 70, 'Publish', '2019-07-16 05:51:42', 3, 'tr_melispagehistoric_description_text_publish'),
(135, 70, 'Unpublish', '2019-07-16 05:51:49', 3, 'tr_melispagehistoric_description_text_unpublished'),
(136, 71, 'Publish', '2019-07-16 07:26:28', 3, 'tr_melispagehistoric_description_text_publish'),
(137, 70, 'Publish', '2019-07-16 07:26:57', 3, 'tr_melispagehistoric_description_text_publish'),
(138, 75, 'Publish', '2019-07-16 07:46:12', 3, 'tr_melispagehistoric_description_text_publish'),
(139, 69, 'Publish', '2019-07-16 08:12:18', 3, 'tr_melispagehistoric_description_text_publish'),
(140, 79, 'Publish', '2019-07-16 08:15:12', 3, 'tr_melispagehistoric_description_text_publish'),
(141, 80, 'Publish', '2019-07-17 00:42:47', 3, 'tr_melispagehistoric_description_text_publish'),
(142, 87, 'Delete', '2019-07-17 00:44:41', 3, 'tr_melispagehistoric_action_text_Delete'),
(143, 86, 'Delete', '2019-07-17 00:44:45', 3, 'tr_melispagehistoric_action_text_Delete'),
(144, 85, 'Delete', '2019-07-17 00:44:50', 3, 'tr_melispagehistoric_action_text_Delete'),
(145, 84, 'Delete', '2019-07-17 00:44:55', 3, 'tr_melispagehistoric_action_text_Delete'),
(146, 83, 'Publish', '2019-07-17 00:55:19', 3, 'tr_melispagehistoric_description_text_publish'),
(147, 82, 'Publish', '2019-07-17 00:55:24', 3, 'tr_melispagehistoric_description_text_publish'),
(148, 81, 'Publish', '2019-07-17 00:55:31', 3, 'tr_melispagehistoric_description_text_publish'),
(149, 80, 'Publish', '2019-07-17 00:56:39', 3, 'tr_melispagehistoric_description_text_publish'),
(150, 80, 'Publish', '2019-07-17 00:56:54', 3, 'tr_melispagehistoric_description_text_publish'),
(151, 80, 'Publish', '2019-07-17 01:23:46', 3, 'tr_melispagehistoric_description_text_publish'),
(152, 81, 'Delete', '2019-07-17 01:24:00', 3, 'tr_melispagehistoric_action_text_Delete'),
(153, 83, 'Delete', '2019-07-17 01:24:15', 3, 'tr_melispagehistoric_action_text_Delete'),
(154, 82, 'Delete', '2019-07-17 01:24:20', 3, 'tr_melispagehistoric_action_text_Delete'),
(155, 80, 'Delete', '2019-07-17 01:24:24', 3, 'tr_melispagehistoric_action_text_Delete'),
(156, 79, 'Delete', '2019-07-17 01:24:38', 3, 'tr_melispagehistoric_action_text_Delete'),
(157, 78, 'Delete', '2019-07-17 01:24:42', 3, 'tr_melispagehistoric_action_text_Delete'),
(158, 77, 'Delete', '2019-07-17 01:24:47', 3, 'tr_melispagehistoric_action_text_Delete'),
(159, 76, 'Delete', '2019-07-17 01:24:50', 3, 'tr_melispagehistoric_action_text_Delete'),
(160, 75, 'Delete', '2019-07-17 01:24:58', 3, 'tr_melispagehistoric_action_text_Delete'),
(161, 74, 'Delete', '2019-07-17 01:25:02', 3, 'tr_melispagehistoric_action_text_Delete'),
(162, 73, 'Delete', '2019-07-17 01:25:06', 3, 'tr_melispagehistoric_action_text_Delete'),
(163, 72, 'Delete', '2019-07-17 01:25:09', 3, 'tr_melispagehistoric_action_text_Delete'),
(164, 71, 'Delete', '2019-07-17 01:25:25', 3, 'tr_melispagehistoric_action_text_Delete'),
(165, 70, 'Delete', '2019-07-17 01:25:28', 3, 'tr_melispagehistoric_action_text_Delete'),
(166, 69, 'Delete', '2019-07-17 01:25:33', 3, 'tr_melispagehistoric_action_text_Delete'),
(167, 68, 'Delete', '2019-07-17 01:25:36', 3, 'tr_melispagehistoric_action_text_Delete'),
(168, 88, 'Publish', '2019-07-17 02:22:47', 3, 'tr_melispagehistoric_description_text_publish'),
(169, 88, 'Publish', '2019-07-17 02:26:06', 3, 'tr_melispagehistoric_description_text_publish'),
(170, 88, 'Publish', '2019-07-17 02:44:29', 3, 'tr_melispagehistoric_description_text_publish'),
(171, 88, 'Publish', '2019-07-17 02:45:12', 3, 'tr_melispagehistoric_description_text_publish'),
(172, 89, 'Publish', '2019-07-17 02:50:04', 3, 'tr_melispagehistoric_description_text_publish'),
(173, 90, 'Publish', '2019-07-17 02:51:56', 3, 'tr_melispagehistoric_description_text_publish'),
(174, 91, 'Publish', '2019-07-17 02:52:21', 3, 'tr_melispagehistoric_description_text_publish'),
(175, 95, 'Delete', '2019-07-17 05:25:34', 3, 'tr_melispagehistoric_action_text_Delete'),
(176, 94, 'Delete', '2019-07-17 05:25:38', 3, 'tr_melispagehistoric_action_text_Delete'),
(177, 93, 'Delete', '2019-07-17 05:25:43', 3, 'tr_melispagehistoric_action_text_Delete'),
(178, 92, 'Delete', '2019-07-17 05:25:47', 3, 'tr_melispagehistoric_action_text_Delete'),
(179, 91, 'Delete', '2019-07-17 05:26:15', 3, 'tr_melispagehistoric_action_text_Delete'),
(180, 90, 'Delete', '2019-07-17 05:26:19', 3, 'tr_melispagehistoric_action_text_Delete'),
(181, 89, 'Delete', '2019-07-17 05:26:28', 3, 'tr_melispagehistoric_action_text_Delete'),
(182, 88, 'Delete', '2019-07-17 05:26:40', 3, 'tr_melispagehistoric_action_text_Delete'),
(183, 40, 'Publish', '2019-07-17 05:47:31', 2, 'tr_melispagehistoric_description_text_publish'),
(184, 40, 'Publish', '2019-07-17 05:47:31', 2, 'tr_melispagehistoric_description_text_publish'),
(185, 42, 'Delete', '2019-07-17 05:55:52', 3, 'tr_melispagehistoric_action_text_Delete'),
(186, 41, 'Delete', '2019-07-17 05:55:56', 3, 'tr_melispagehistoric_action_text_Delete'),
(187, 40, 'Delete', '2019-07-17 05:56:00', 3, 'tr_melispagehistoric_action_text_Delete'),
(188, 96, 'Publish', '2019-07-17 06:23:18', 2, 'tr_melispagehistoric_description_text_publish'),
(189, 96, 'Save', '2019-07-17 06:24:23', 2, 'tr_melispagehistoric_description_text_save'),
(190, 96, 'Publish', '2019-07-17 06:24:32', 2, 'tr_melispagehistoric_description_text_publish'),
(191, 96, 'Publish', '2019-07-17 06:25:25', 2, 'tr_melispagehistoric_description_text_publish'),
(192, 96, 'Publish', '2019-07-17 06:25:50', 2, 'tr_melispagehistoric_description_text_publish'),
(193, 96, 'Publish', '2019-07-17 06:26:27', 2, 'tr_melispagehistoric_description_text_publish'),
(194, 98, 'Publish', '2019-07-17 06:42:31', 2, 'tr_melispagehistoric_description_text_publish'),
(195, 97, 'Publish', '2019-07-17 06:43:13', 2, 'tr_melispagehistoric_description_text_publish'),
(196, 97, 'Publish', '2019-07-17 07:10:49', 2, 'tr_melispagehistoric_description_text_publish'),
(197, 96, 'Publish', '2019-07-17 07:56:58', 3, 'tr_melispagehistoric_description_text_publish'),
(198, 2, 'Save', '2019-07-19 00:14:20', 6, 'tr_melispagehistoric_description_text_save'),
(199, 100, 'Publish', '2019-07-22 02:55:27', 7, 'tr_melispagehistoric_description_text_publish'),
(200, 99, 'Publish', '2019-07-23 01:46:25', 3, 'tr_melispagehistoric_description_text_publish'),
(201, 109, 'Delete', '2019-07-23 02:12:08', 3, 'tr_melispagehistoric_action_text_Delete'),
(202, 111, 'Delete', '2019-07-23 02:12:12', 3, 'tr_melispagehistoric_action_text_Delete'),
(203, 108, 'Delete', '2019-07-23 02:12:21', 3, 'tr_melispagehistoric_action_text_Delete'),
(204, 107, 'Delete', '2019-07-23 02:12:32', 3, 'tr_melispagehistoric_action_text_Delete'),
(205, 105, 'Delete', '2019-07-23 02:12:36', 3, 'tr_melispagehistoric_action_text_Delete'),
(206, 106, 'Delete', '2019-07-23 02:12:41', 3, 'tr_melispagehistoric_action_text_Delete'),
(207, 104, 'Delete', '2019-07-23 02:12:45', 3, 'tr_melispagehistoric_action_text_Delete'),
(208, 100, 'Publish', '2019-07-24 01:57:36', 7, 'tr_melispagehistoric_description_text_publish'),
(209, 100, 'Publish', '2019-07-24 01:58:28', 7, 'tr_melispagehistoric_description_text_publish'),
(210, 100, 'Publish', '2019-07-24 01:58:29', 7, 'tr_melispagehistoric_description_text_publish'),
(211, 116, 'Save', '2019-07-24 02:00:27', 7, 'tr_melispagehistoric_description_text_new'),
(212, 116, 'Publish', '2019-07-24 02:01:30', 7, 'tr_melispagehistoric_description_text_publish'),
(213, 116, 'Publish', '2019-07-24 02:10:32', 7, 'tr_melispagehistoric_description_text_publish'),
(214, 116, 'Publish', '2019-07-24 02:10:33', 7, 'tr_melispagehistoric_description_text_publish'),
(215, 115, 'Delete', '2019-07-24 23:32:36', 3, 'tr_melispagehistoric_action_text_Delete'),
(216, 114, 'Delete', '2019-07-24 23:32:42', 3, 'tr_melispagehistoric_action_text_Delete'),
(217, 113, 'Delete', '2019-07-24 23:32:46', 3, 'tr_melispagehistoric_action_text_Delete'),
(218, 112, 'Delete', '2019-07-24 23:32:50', 3, 'tr_melispagehistoric_action_text_Delete'),
(219, 116, 'Delete', '2019-07-24 23:32:57', 3, 'tr_melispagehistoric_action_text_Delete'),
(220, 103, 'Delete', '2019-07-24 23:33:01', 3, 'tr_melispagehistoric_action_text_Delete'),
(221, 102, 'Delete', '2019-07-24 23:33:07', 3, 'tr_melispagehistoric_action_text_Delete'),
(222, 101, 'Delete', '2019-07-24 23:33:11', 3, 'tr_melispagehistoric_action_text_Delete'),
(223, 100, 'Delete', '2019-07-24 23:33:15', 3, 'tr_melispagehistoric_action_text_Delete'),
(224, 117, 'Publish', '2019-07-24 23:56:23', 3, 'tr_melispagehistoric_description_text_publish'),
(225, 117, 'Publish', '2019-07-24 23:57:19', 3, 'tr_melispagehistoric_description_text_publish'),
(226, 117, 'Publish', '2019-07-24 23:57:53', 3, 'tr_melispagehistoric_description_text_publish'),
(227, 117, 'Publish', '2019-07-25 00:19:48', 3, 'tr_melispagehistoric_description_text_publish'),
(228, 117, 'Publish', '2019-07-25 00:21:09', 3, 'tr_melispagehistoric_description_text_publish'),
(229, 117, 'Publish', '2019-07-25 00:21:31', 3, 'tr_melispagehistoric_description_text_publish'),
(230, 117, 'Publish', '2019-07-25 00:27:53', 3, 'tr_melispagehistoric_description_text_publish'),
(231, 117, 'Publish', '2019-07-25 00:44:10', 3, 'tr_melispagehistoric_description_text_publish'),
(232, 121, 'Publish', '2019-07-25 01:33:24', 3, 'tr_melispagehistoric_description_text_publish'),
(233, 124, 'Delete', '2019-07-25 01:36:13', 3, 'tr_melispagehistoric_action_text_Delete'),
(234, 123, 'Delete', '2019-07-25 01:36:20', 3, 'tr_melispagehistoric_action_text_Delete'),
(235, 122, 'Delete', '2019-07-25 01:36:24', 3, 'tr_melispagehistoric_action_text_Delete'),
(236, 121, 'Delete', '2019-07-25 01:36:28', 3, 'tr_melispagehistoric_action_text_Delete'),
(237, 125, 'Publish', '2019-07-25 02:47:16', 3, 'tr_melispagehistoric_description_text_publish'),
(238, 133, 'Save', '2019-07-25 05:01:39', 3, 'tr_melispagehistoric_description_text_new'),
(239, 133, 'Delete', '2019-07-29 00:34:58', 3, 'tr_melispagehistoric_action_text_Delete'),
(240, 96, 'Publish', '2019-07-29 04:25:05', 3, 'tr_melispagehistoric_description_text_publish'),
(241, 137, 'Delete', '2019-07-29 04:38:29', 3, 'tr_melispagehistoric_action_text_Delete'),
(242, 136, 'Delete', '2019-07-29 04:38:35', 3, 'tr_melispagehistoric_action_text_Delete'),
(243, 135, 'Delete', '2019-07-29 04:38:39', 3, 'tr_melispagehistoric_action_text_Delete'),
(244, 134, 'Delete', '2019-07-29 04:38:43', 3, 'tr_melispagehistoric_action_text_Delete'),
(245, 132, 'Delete', '2019-07-29 04:38:50', 3, 'tr_melispagehistoric_action_text_Delete'),
(246, 131, 'Delete', '2019-07-29 04:38:58', 3, 'tr_melispagehistoric_action_text_Delete'),
(247, 130, 'Delete', '2019-07-29 04:39:05', 3, 'tr_melispagehistoric_action_text_Delete'),
(248, 129, 'Delete', '2019-07-29 04:39:09', 3, 'tr_melispagehistoric_action_text_Delete'),
(249, 128, 'Delete', '2019-07-29 04:39:16', 3, 'tr_melispagehistoric_action_text_Delete'),
(250, 127, 'Delete', '2019-07-29 04:39:22', 3, 'tr_melispagehistoric_action_text_Delete'),
(251, 126, 'Delete', '2019-07-29 04:39:26', 3, 'tr_melispagehistoric_action_text_Delete'),
(252, 125, 'Delete', '2019-07-29 04:39:31', 3, 'tr_melispagehistoric_action_text_Delete'),
(253, 120, 'Delete', '2019-07-29 04:40:49', 3, 'tr_melispagehistoric_action_text_Delete'),
(254, 119, 'Delete', '2019-07-29 04:40:55', 3, 'tr_melispagehistoric_action_text_Delete'),
(255, 118, 'Delete', '2019-07-29 04:40:58', 3, 'tr_melispagehistoric_action_text_Delete'),
(256, 117, 'Delete', '2019-07-29 04:41:03', 3, 'tr_melispagehistoric_action_text_Delete'),
(257, 138, 'Publish', '2019-07-29 04:53:23', 3, 'tr_melispagehistoric_description_text_publish'),
(258, 138, 'Publish', '2019-07-29 04:56:56', 3, 'tr_melispagehistoric_description_text_publish'),
(259, 138, 'Publish', '2019-07-29 04:57:19', 3, 'tr_melispagehistoric_description_text_publish'),
(260, 138, 'Publish', '2019-07-29 05:07:14', 3, 'tr_melispagehistoric_description_text_publish'),
(261, 139, 'Publish', '2019-07-29 05:32:48', 3, 'tr_melispagehistoric_description_text_publish'),
(262, 139, 'Publish', '2019-07-29 05:33:11', 3, 'tr_melispagehistoric_description_text_publish'),
(263, 139, 'Publish', '2019-07-29 05:33:40', 3, 'tr_melispagehistoric_description_text_publish'),
(264, 139, 'Publish', '2019-07-29 05:34:10', 3, 'tr_melispagehistoric_description_text_publish'),
(265, 140, 'Publish', '2019-07-29 05:34:36', 3, 'tr_melispagehistoric_description_text_publish'),
(266, 140, 'Publish', '2019-07-29 05:34:51', 3, 'tr_melispagehistoric_description_text_publish'),
(267, 140, 'Publish', '2019-07-29 05:35:14', 3, 'tr_melispagehistoric_description_text_publish'),
(268, 157, 'Delete', '2019-07-29 06:49:32', 3, 'tr_melispagehistoric_action_text_Delete'),
(269, 156, 'Delete', '2019-07-29 06:49:38', 3, 'tr_melispagehistoric_action_text_Delete'),
(270, 155, 'Delete', '2019-07-29 06:49:42', 3, 'tr_melispagehistoric_action_text_Delete'),
(271, 154, 'Delete', '2019-07-29 06:49:47', 3, 'tr_melispagehistoric_action_text_Delete'),
(272, 152, 'Delete', '2019-07-29 06:49:59', 3, 'tr_melispagehistoric_action_text_Delete'),
(273, 153, 'Delete', '2019-07-29 06:50:03', 3, 'tr_melispagehistoric_action_text_Delete'),
(274, 151, 'Delete', '2019-07-29 06:50:07', 3, 'tr_melispagehistoric_action_text_Delete'),
(275, 150, 'Delete', '2019-07-29 06:52:56', 3, 'tr_melispagehistoric_action_text_Delete'),
(276, 148, 'Delete', '2019-07-29 06:53:04', 3, 'tr_melispagehistoric_action_text_Delete'),
(277, 149, 'Delete', '2019-07-29 06:53:08', 3, 'tr_melispagehistoric_action_text_Delete'),
(278, 147, 'Delete', '2019-07-29 06:53:11', 3, 'tr_melispagehistoric_action_text_Delete'),
(279, 146, 'Delete', '2019-07-29 06:53:15', 3, 'tr_melispagehistoric_action_text_Delete'),
(280, 144, 'Delete', '2019-07-29 06:53:25', 3, 'tr_melispagehistoric_action_text_Delete'),
(281, 145, 'Delete', '2019-07-29 06:53:29', 3, 'tr_melispagehistoric_action_text_Delete'),
(282, 143, 'Delete', '2019-07-29 06:53:33', 3, 'tr_melispagehistoric_action_text_Delete'),
(283, 142, 'Delete', '2019-07-29 06:53:37', 3, 'tr_melispagehistoric_action_text_Delete'),
(284, 160, 'Delete', '2019-07-29 07:39:41', 3, 'tr_melispagehistoric_action_text_Delete'),
(285, 159, 'Delete', '2019-07-29 07:39:45', 3, 'tr_melispagehistoric_action_text_Delete'),
(286, 161, 'Delete', '2019-07-29 07:39:49', 3, 'tr_melispagehistoric_action_text_Delete'),
(287, 158, 'Delete', '2019-07-29 07:39:53', 3, 'tr_melispagehistoric_action_text_Delete'),
(288, 138, 'Save', '2019-07-30 00:28:18', 3, 'tr_melispagehistoric_description_text_save'),
(289, 138, 'Save', '2019-07-30 00:38:40', 3, 'tr_melispagehistoric_description_text_save'),
(290, 138, 'Save', '2019-07-30 00:38:55', 3, 'tr_melispagehistoric_description_text_save'),
(291, 96, 'Publish', '2019-07-30 00:58:05', 3, 'tr_melispagehistoric_description_text_publish'),
(292, 141, 'Delete', '2019-07-30 02:13:08', 3, 'tr_melispagehistoric_action_text_Delete'),
(293, 140, 'Delete', '2019-07-30 02:13:14', 3, 'tr_melispagehistoric_action_text_Delete'),
(294, 139, 'Delete', '2019-07-30 02:13:18', 3, 'tr_melispagehistoric_action_text_Delete'),
(295, 138, 'Delete', '2019-07-30 02:13:23', 3, 'tr_melispagehistoric_action_text_Delete'),
(296, 162, 'Publish', '2019-07-30 02:16:23', 3, 'tr_melispagehistoric_description_text_publish'),
(297, 162, 'Publish', '2019-07-30 02:16:40', 3, 'tr_melispagehistoric_description_text_publish'),
(298, 162, 'Publish', '2019-07-30 04:15:55', 3, 'tr_melispagehistoric_description_text_publish'),
(299, 162, 'Publish', '2019-07-30 04:19:38', 3, 'tr_melispagehistoric_description_text_publish'),
(300, 162, 'Publish', '2019-07-30 04:20:32', 3, 'tr_melispagehistoric_description_text_publish'),
(301, 162, 'Publish', '2019-07-30 04:21:02', 3, 'tr_melispagehistoric_description_text_publish'),
(302, 162, 'Publish', '2019-07-30 04:21:57', 3, 'tr_melispagehistoric_description_text_publish'),
(303, 162, 'Publish', '2019-07-30 04:23:10', 3, 'tr_melispagehistoric_description_text_publish'),
(304, 162, 'Publish', '2019-07-30 04:24:28', 3, 'tr_melispagehistoric_description_text_publish'),
(305, 163, 'Publish', '2019-07-30 04:24:38', 3, 'tr_melispagehistoric_description_text_publish'),
(306, 163, 'Publish', '2019-07-30 04:24:59', 3, 'tr_melispagehistoric_description_text_publish'),
(307, 162, 'Publish', '2019-07-30 04:26:13', 3, 'tr_melispagehistoric_description_text_publish'),
(308, 162, 'Publish', '2019-07-30 04:27:50', 3, 'tr_melispagehistoric_description_text_publish'),
(309, 162, 'Publish', '2019-07-30 04:30:42', 3, 'tr_melispagehistoric_description_text_publish'),
(310, 162, 'Publish', '2019-07-30 04:52:54', 3, 'tr_melispagehistoric_description_text_publish'),
(311, 162, 'Publish', '2019-07-30 05:12:47', 3, 'tr_melispagehistoric_description_text_publish'),
(312, 162, 'Publish', '2019-07-30 05:15:58', 3, 'tr_melispagehistoric_description_text_publish'),
(313, 162, 'Publish', '2019-07-30 05:17:39', 3, 'tr_melispagehistoric_description_text_publish'),
(314, 162, 'Publish', '2019-07-30 05:31:53', 3, 'tr_melispagehistoric_description_text_publish'),
(315, 162, 'Publish', '2019-07-30 05:40:54', 3, 'tr_melispagehistoric_description_text_publish'),
(316, 162, 'Publish', '2019-07-30 05:40:54', 3, 'tr_melispagehistoric_description_text_publish'),
(317, 162, 'Publish', '2019-07-30 05:41:32', 3, 'tr_melispagehistoric_description_text_publish'),
(318, 162, 'Publish', '2019-07-30 05:42:20', 3, 'tr_melispagehistoric_description_text_publish'),
(319, 162, 'Publish', '2019-07-30 05:45:13', 3, 'tr_melispagehistoric_description_text_publish'),
(320, 162, 'Publish', '2019-07-30 05:45:13', 3, 'tr_melispagehistoric_description_text_publish'),
(321, 162, 'Publish', '2019-07-30 06:49:51', 3, 'tr_melispagehistoric_description_text_publish'),
(322, 162, 'Publish', '2019-07-30 06:50:07', 3, 'tr_melispagehistoric_description_text_publish'),
(323, 162, 'Publish', '2019-07-30 06:50:23', 3, 'tr_melispagehistoric_description_text_publish'),
(324, 165, 'Delete', '2019-07-30 06:53:52', 3, 'tr_melispagehistoric_action_text_Delete'),
(325, 164, 'Delete', '2019-07-30 06:54:02', 3, 'tr_melispagehistoric_action_text_Delete'),
(326, 163, 'Delete', '2019-07-30 06:54:08', 3, 'tr_melispagehistoric_action_text_Delete'),
(327, 162, 'Delete', '2019-07-30 06:54:14', 3, 'tr_melispagehistoric_action_text_Delete'),
(328, 169, 'Delete', '2019-07-30 06:58:58', 3, 'tr_melispagehistoric_action_text_Delete'),
(329, 168, 'Delete', '2019-07-30 06:59:03', 3, 'tr_melispagehistoric_action_text_Delete'),
(330, 167, 'Delete', '2019-07-30 06:59:16', 3, 'tr_melispagehistoric_action_text_Delete'),
(331, 166, 'Delete', '2019-07-30 06:59:31', 3, 'tr_melispagehistoric_action_text_Delete'),
(332, 170, 'Publish', '2019-07-30 07:00:31', 3, 'tr_melispagehistoric_description_text_publish'),
(333, 170, 'Publish', '2019-07-30 07:01:33', 3, 'tr_melispagehistoric_description_text_publish'),
(334, 170, 'Publish', '2019-07-30 07:18:52', 3, 'tr_melispagehistoric_description_text_publish'),
(335, 174, 'Publish', '2019-08-01 00:03:38', 3, 'tr_melispagehistoric_description_text_publish'),
(336, 173, 'Delete', '2019-08-01 00:03:54', 3, 'tr_melispagehistoric_action_text_Delete'),
(337, 172, 'Delete', '2019-08-01 00:03:59', 3, 'tr_melispagehistoric_action_text_Delete'),
(338, 171, 'Delete', '2019-08-01 00:04:04', 3, 'tr_melispagehistoric_action_text_Delete'),
(339, 170, 'Delete', '2019-08-01 00:04:09', 3, 'tr_melispagehistoric_action_text_Delete'),
(340, 174, 'Publish', '2019-08-01 00:05:43', 3, 'tr_melispagehistoric_description_text_publish'),
(341, 174, 'Publish', '2019-08-01 00:06:21', 3, 'tr_melispagehistoric_description_text_publish'),
(342, 174, 'Publish', '2019-08-01 00:07:01', 3, 'tr_melispagehistoric_description_text_publish'),
(343, 174, 'Publish', '2019-08-01 00:08:29', 3, 'tr_melispagehistoric_description_text_publish'),
(344, 174, 'Publish', '2019-08-01 00:09:58', 3, 'tr_melispagehistoric_description_text_publish'),
(345, 174, 'Publish', '2019-08-01 00:15:40', 3, 'tr_melispagehistoric_description_text_publish'),
(346, 176, 'Delete', '2019-08-09 00:36:36', 3, 'tr_melispagehistoric_action_text_Delete'),
(347, 175, 'Delete', '2019-08-09 00:36:40', 3, 'tr_melispagehistoric_action_text_Delete'),
(348, 177, 'Delete', '2019-08-09 00:36:44', 3, 'tr_melispagehistoric_action_text_Delete'),
(349, 174, 'Delete', '2019-08-09 00:36:48', 3, 'tr_melispagehistoric_action_text_Delete'),
(350, 189, 'Delete', '2019-08-09 04:13:05', 3, 'tr_melispagehistoric_action_text_Delete'),
(351, 188, 'Delete', '2019-08-09 04:13:10', 3, 'tr_melispagehistoric_action_text_Delete'),
(352, 185, 'Delete', '2019-08-09 04:13:18', 3, 'tr_melispagehistoric_action_text_Delete'),
(353, 184, 'Delete', '2019-08-09 04:13:21', 3, 'tr_melispagehistoric_action_text_Delete'),
(354, 181, 'Delete', '2019-08-09 04:13:29', 3, 'tr_melispagehistoric_action_text_Delete'),
(355, 180, 'Delete', '2019-08-09 04:13:32', 3, 'tr_melispagehistoric_action_text_Delete'),
(356, 179, 'Delete', '2019-08-09 04:13:38', 3, 'tr_melispagehistoric_action_text_Delete'),
(357, 178, 'Delete', '2019-08-09 04:13:42', 3, 'tr_melispagehistoric_action_text_Delete'),
(358, 210, 'Publish', '2019-08-09 05:50:43', 3, 'tr_melispagehistoric_description_text_publish'),
(359, 211, 'Publish', '2019-08-12 23:51:47', 3, 'tr_melispagehistoric_description_text_publish'),
(360, 213, 'Delete', '2019-08-12 23:57:00', 3, 'tr_melispagehistoric_action_text_Delete'),
(361, 212, 'Delete', '2019-08-12 23:57:07', 3, 'tr_melispagehistoric_action_text_Delete'),
(362, 211, 'Delete', '2019-08-12 23:57:12', 3, 'tr_melispagehistoric_action_text_Delete'),
(363, 210, 'Delete', '2019-08-12 23:57:16', 3, 'tr_melispagehistoric_action_text_Delete'),
(364, 208, 'Delete', '2019-08-12 23:57:27', 3, 'tr_melispagehistoric_action_text_Delete'),
(365, 207, 'Delete', '2019-08-12 23:57:31', 3, 'tr_melispagehistoric_action_text_Delete'),
(366, 206, 'Delete', '2019-08-12 23:57:34', 3, 'tr_melispagehistoric_action_text_Delete'),
(367, 205, 'Delete', '2019-08-12 23:57:40', 3, 'tr_melispagehistoric_action_text_Delete'),
(368, 204, 'Delete', '2019-08-12 23:57:44', 3, 'tr_melispagehistoric_action_text_Delete'),
(369, 203, 'Delete', '2019-08-12 23:57:50', 3, 'tr_melispagehistoric_action_text_Delete'),
(370, 202, 'Delete', '2019-08-12 23:57:53', 3, 'tr_melispagehistoric_action_text_Delete'),
(371, 201, 'Delete', '2019-08-12 23:57:58', 3, 'tr_melispagehistoric_action_text_Delete'),
(372, 200, 'Delete', '2019-08-12 23:58:02', 3, 'tr_melispagehistoric_action_text_Delete'),
(373, 198, 'Delete', '2019-08-12 23:58:08', 3, 'tr_melispagehistoric_action_text_Delete'),
(374, 197, 'Delete', '2019-08-12 23:58:12', 3, 'tr_melispagehistoric_action_text_Delete'),
(375, 195, 'Delete', '2019-08-12 23:58:17', 3, 'tr_melispagehistoric_action_text_Delete'),
(376, 194, 'Delete', '2019-08-12 23:58:20', 3, 'tr_melispagehistoric_action_text_Delete'),
(377, 193, 'Delete', '2019-08-12 23:58:26', 3, 'tr_melispagehistoric_action_text_Delete'),
(378, 192, 'Delete', '2019-08-12 23:58:29', 3, 'tr_melispagehistoric_action_text_Delete'),
(379, 214, 'Publish', '2019-08-13 00:22:56', 3, 'tr_melispagehistoric_description_text_publish'),
(380, 221, 'Delete', '2019-08-13 01:25:54', 3, 'tr_melispagehistoric_action_text_Delete'),
(381, 220, 'Delete', '2019-08-13 01:26:00', 3, 'tr_melispagehistoric_action_text_Delete'),
(382, 219, 'Delete', '2019-08-13 01:26:04', 3, 'tr_melispagehistoric_action_text_Delete'),
(383, 218, 'Delete', '2019-08-13 01:26:07', 3, 'tr_melispagehistoric_action_text_Delete'),
(384, 217, 'Delete', '2019-08-13 01:26:15', 3, 'tr_melispagehistoric_action_text_Delete'),
(385, 216, 'Delete', '2019-08-13 01:26:22', 3, 'tr_melispagehistoric_action_text_Delete'),
(386, 215, 'Delete', '2019-08-13 01:26:26', 3, 'tr_melispagehistoric_action_text_Delete'),
(387, 214, 'Delete', '2019-08-13 01:26:30', 3, 'tr_melispagehistoric_action_text_Delete'),
(388, 225, 'Delete', '2019-08-13 01:40:28', 3, 'tr_melispagehistoric_action_text_Delete'),
(389, 224, 'Delete', '2019-08-13 01:40:37', 3, 'tr_melispagehistoric_action_text_Delete'),
(390, 223, 'Delete', '2019-08-13 01:40:41', 3, 'tr_melispagehistoric_action_text_Delete'),
(391, 222, 'Delete', '2019-08-13 01:40:45', 3, 'tr_melispagehistoric_action_text_Delete'),
(392, 226, 'Publish', '2019-08-13 05:35:29', 3, 'tr_melispagehistoric_description_text_publish'),
(393, 226, 'Publish', '2019-08-13 06:29:27', 3, 'tr_melispagehistoric_description_text_publish'),
(394, 226, 'Publish', '2019-08-13 06:29:57', 3, 'tr_melispagehistoric_description_text_publish'),
(395, 226, 'Publish', '2019-08-13 07:38:48', 3, 'tr_melispagehistoric_description_text_publish'),
(396, 226, 'Publish', '2019-08-13 07:41:00', 3, 'tr_melispagehistoric_description_text_publish'),
(397, 226, 'Publish', '2019-08-13 07:41:19', 3, 'tr_melispagehistoric_description_text_publish'),
(398, 226, 'Publish', '2019-08-13 07:42:13', 3, 'tr_melispagehistoric_description_text_publish'),
(399, 226, 'Publish', '2019-08-13 07:42:37', 3, 'tr_melispagehistoric_description_text_publish'),
(400, 226, 'Publish', '2019-08-13 07:52:25', 3, 'tr_melispagehistoric_description_text_publish'),
(401, 226, 'Publish', '2019-08-14 02:24:23', 3, 'tr_melispagehistoric_description_text_publish'),
(402, 226, 'Publish', '2019-08-14 02:24:54', 3, 'tr_melispagehistoric_description_text_publish'),
(403, 226, 'Publish', '2019-08-14 02:25:11', 3, 'tr_melispagehistoric_description_text_publish'),
(404, 226, 'Publish', '2019-08-14 04:34:16', 3, 'tr_melispagehistoric_description_text_publish'),
(405, 226, 'Publish', '2019-08-14 04:35:56', 3, 'tr_melispagehistoric_description_text_publish'),
(406, 226, 'Publish', '2019-08-14 04:44:08', 3, 'tr_melispagehistoric_description_text_publish'),
(407, 228, 'Delete', '2019-08-15 01:50:52', 3, 'tr_melispagehistoric_action_text_Delete'),
(408, 227, 'Delete', '2019-08-15 01:50:56', 3, 'tr_melispagehistoric_action_text_Delete'),
(409, 229, 'Delete', '2019-08-15 01:51:01', 3, 'tr_melispagehistoric_action_text_Delete'),
(410, 226, 'Delete', '2019-08-15 01:51:05', 3, 'tr_melispagehistoric_action_text_Delete'),
(411, 230, 'Publish', '2019-08-15 01:52:51', 3, 'tr_melispagehistoric_description_text_publish'),
(412, 230, 'Publish', '2019-08-15 02:10:48', 3, 'tr_melispagehistoric_description_text_publish'),
(413, 230, 'Publish', '2019-08-15 02:13:03', 3, 'tr_melispagehistoric_description_text_publish'),
(414, 230, 'Publish', '2019-08-15 02:13:53', 3, 'tr_melispagehistoric_description_text_publish'),
(415, 231, 'Publish', '2019-08-15 02:19:33', 3, 'tr_melispagehistoric_description_text_publish'),
(416, 230, 'Publish', '2019-08-15 02:37:22', 3, 'tr_melispagehistoric_description_text_publish'),
(417, 230, 'Publish', '2019-08-15 02:37:22', 3, 'tr_melispagehistoric_description_text_publish'),
(418, 230, 'Publish', '2019-08-15 02:37:34', 3, 'tr_melispagehistoric_description_text_publish'),
(419, 230, 'Publish', '2019-08-15 02:41:37', 3, 'tr_melispagehistoric_description_text_publish'),
(420, 230, 'Publish', '2019-08-15 02:49:52', 3, 'tr_melispagehistoric_description_text_publish'),
(421, 230, 'Publish', '2019-08-15 02:53:19', 3, 'tr_melispagehistoric_description_text_publish'),
(422, 230, 'Publish', '2019-08-15 05:04:37', 3, 'tr_melispagehistoric_description_text_publish'),
(423, 230, 'Publish', '2019-08-15 05:09:48', 3, 'tr_melispagehistoric_description_text_publish'),
(424, 230, 'Publish', '2019-08-15 05:13:47', 3, 'tr_melispagehistoric_description_text_publish'),
(425, 234, 'Publish', '2019-08-15 05:32:09', 3, 'tr_melispagehistoric_description_text_publish'),
(426, 234, 'Publish', '2019-08-15 05:38:08', 3, 'tr_melispagehistoric_description_text_publish'),
(427, 233, 'Delete', '2019-08-15 05:38:32', 3, 'tr_melispagehistoric_action_text_Delete'),
(428, 232, 'Delete', '2019-08-15 05:38:45', 3, 'tr_melispagehistoric_action_text_Delete'),
(429, 231, 'Delete', '2019-08-15 05:38:50', 3, 'tr_melispagehistoric_action_text_Delete'),
(430, 230, 'Delete', '2019-08-15 05:38:53', 3, 'tr_melispagehistoric_action_text_Delete'),
(431, 234, 'Publish', '2019-08-15 05:40:40', 3, 'tr_melispagehistoric_description_text_publish'),
(432, 234, 'Publish', '2019-08-15 05:46:18', 3, 'tr_melispagehistoric_description_text_publish'),
(433, 234, 'Publish', '2019-08-15 06:00:38', 3, 'tr_melispagehistoric_description_text_publish'),
(434, 234, 'Publish', '2019-08-15 06:20:22', 3, 'tr_melispagehistoric_description_text_publish'),
(435, 234, 'Publish', '2019-08-15 06:27:27', 3, 'tr_melispagehistoric_description_text_publish'),
(436, 234, 'Publish', '2019-08-15 06:55:04', 3, 'tr_melispagehistoric_description_text_publish'),
(437, 234, 'Publish', '2019-08-15 06:56:41', 3, 'tr_melispagehistoric_description_text_publish'),
(438, 234, 'Publish', '2019-08-15 06:57:43', 3, 'tr_melispagehistoric_description_text_publish'),
(439, 234, 'Publish', '2019-08-15 07:33:56', 3, 'tr_melispagehistoric_description_text_publish'),
(440, 234, 'Publish', '2019-08-15 07:42:44', 3, 'tr_melispagehistoric_description_text_publish'),
(441, 234, 'Publish', '2019-08-18 23:42:37', 3, 'tr_melispagehistoric_description_text_publish'),
(442, 234, 'Publish', '2019-08-18 23:43:12', 3, 'tr_melispagehistoric_description_text_publish'),
(443, 234, 'Publish', '2019-08-18 23:58:09', 3, 'tr_melispagehistoric_description_text_publish'),
(444, 234, 'Publish', '2019-08-18 23:58:21', 3, 'tr_melispagehistoric_description_text_publish'),
(445, 234, 'Publish', '2019-08-19 00:07:32', 3, 'tr_melispagehistoric_description_text_publish'),
(446, 234, 'Publish', '2019-08-19 00:08:05', 3, 'tr_melispagehistoric_description_text_publish'),
(447, 235, 'Publish', '2019-08-19 00:11:20', 3, 'tr_melispagehistoric_description_text_publish'),
(448, 235, 'Publish', '2019-08-19 00:38:25', 3, 'tr_melispagehistoric_description_text_publish'),
(449, 235, 'Publish', '2019-08-19 00:55:48', 3, 'tr_melispagehistoric_description_text_publish'),
(450, 234, 'Publish', '2019-08-19 00:57:16', 3, 'tr_melispagehistoric_description_text_publish'),
(451, 234, 'Publish', '2019-08-19 00:57:16', 3, 'tr_melispagehistoric_description_text_publish'),
(452, 236, 'Publish', '2019-08-19 01:27:45', 3, 'tr_melispagehistoric_description_text_publish'),
(453, 236, 'Publish', '2019-08-19 01:34:29', 3, 'tr_melispagehistoric_description_text_publish'),
(454, 237, 'Publish', '2019-08-19 01:45:57', 3, 'tr_melispagehistoric_description_text_publish'),
(455, 234, 'Publish', '2019-08-19 01:47:50', 3, 'tr_melispagehistoric_description_text_publish'),
(456, 236, 'Publish', '2019-08-19 02:00:58', 3, 'tr_melispagehistoric_description_text_publish'),
(457, 237, 'Delete', '2019-08-20 00:16:40', 3, 'tr_melispagehistoric_action_text_Delete'),
(458, 236, 'Delete', '2019-08-20 00:16:45', 3, 'tr_melispagehistoric_action_text_Delete'),
(459, 235, 'Delete', '2019-08-20 00:16:49', 3, 'tr_melispagehistoric_action_text_Delete'),
(460, 234, 'Delete', '2019-08-20 00:16:54', 3, 'tr_melispagehistoric_action_text_Delete'),
(461, 238, 'Publish', '2019-08-20 00:28:40', 3, 'tr_melispagehistoric_description_text_publish'),
(462, 238, 'Publish', '2019-08-20 00:31:19', 3, 'tr_melispagehistoric_description_text_publish'),
(463, 241, 'Delete', '2019-08-20 00:34:50', 3, 'tr_melispagehistoric_action_text_Delete'),
(464, 240, 'Delete', '2019-08-20 00:34:56', 3, 'tr_melispagehistoric_action_text_Delete'),
(465, 239, 'Delete', '2019-08-20 00:35:00', 3, 'tr_melispagehistoric_action_text_Delete'),
(466, 238, 'Delete', '2019-08-20 00:35:18', 3, 'tr_melispagehistoric_action_text_Delete'),
(467, 242, 'Publish', '2019-08-20 00:44:19', 3, 'tr_melispagehistoric_description_text_publish'),
(468, 243, 'Publish', '2019-08-20 00:51:28', 3, 'tr_melispagehistoric_description_text_publish'),
(469, 244, 'Publish', '2019-08-20 00:51:38', 3, 'tr_melispagehistoric_description_text_publish'),
(470, 242, 'Publish', '2019-08-20 00:52:25', 3, 'tr_melispagehistoric_description_text_publish'),
(471, 245, 'Publish', '2019-08-20 00:53:39', 3, 'tr_melispagehistoric_description_text_publish'),
(472, 242, 'Publish', '2019-08-20 00:55:49', 3, 'tr_melispagehistoric_description_text_publish'),
(473, 242, 'Unpublish', '2019-08-20 01:25:01', 3, 'tr_melispagehistoric_description_text_unpublished'),
(474, 242, 'Publish', '2019-08-20 01:25:13', 3, 'tr_melispagehistoric_description_text_publish'),
(475, 245, 'Delete', '2019-08-20 01:28:30', 3, 'tr_melispagehistoric_action_text_Delete'),
(476, 244, 'Delete', '2019-08-20 01:28:35', 3, 'tr_melispagehistoric_action_text_Delete'),
(477, 243, 'Delete', '2019-08-20 01:28:39', 3, 'tr_melispagehistoric_action_text_Delete'),
(478, 242, 'Delete', '2019-08-20 01:28:43', 3, 'tr_melispagehistoric_action_text_Delete'),
(479, 246, 'Publish', '2019-08-20 02:50:47', 3, 'tr_melispagehistoric_description_text_publish'),
(480, 249, 'Delete', '2019-08-20 04:36:46', 3, 'tr_melispagehistoric_action_text_Delete'),
(481, 248, 'Delete', '2019-08-20 04:36:52', 3, 'tr_melispagehistoric_action_text_Delete'),
(482, 247, 'Delete', '2019-08-20 04:36:56', 3, 'tr_melispagehistoric_action_text_Delete'),
(483, 246, 'Delete', '2019-08-20 04:36:59', 3, 'tr_melispagehistoric_action_text_Delete'),
(484, 250, 'Publish', '2019-08-20 04:42:04', 3, 'tr_melispagehistoric_description_text_publish'),
(485, 250, 'Publish', '2019-08-20 04:42:51', 3, 'tr_melispagehistoric_description_text_publish'),
(486, 251, 'Publish', '2019-08-20 04:51:17', 3, 'tr_melispagehistoric_description_text_publish'),
(487, 252, 'Publish', '2019-08-20 04:51:43', 3, 'tr_melispagehistoric_description_text_publish'),
(488, 253, 'Publish', '2019-08-20 04:51:54', 3, 'tr_melispagehistoric_description_text_publish'),
(489, 250, 'Publish', '2019-08-20 04:52:54', 3, 'tr_melispagehistoric_description_text_publish'),
(490, 250, 'Unpublish', '2019-08-20 05:13:07', 3, 'tr_melispagehistoric_description_text_unpublished'),
(491, 250, 'Publish', '2019-08-20 05:22:52', 3, 'tr_melispagehistoric_description_text_publish'),
(492, 99, 'Delete', '2019-08-20 05:34:38', 3, 'tr_melispagehistoric_action_text_Delete'),
(493, 98, 'Delete', '2019-08-20 05:34:43', 3, 'tr_melispagehistoric_action_text_Delete'),
(494, 97, 'Delete', '2019-08-20 05:34:49', 3, 'tr_melispagehistoric_action_text_Delete'),
(495, 96, 'Delete', '2019-08-20 05:34:52', 3, 'tr_melispagehistoric_action_text_Delete'),
(496, 253, 'Delete', '2019-08-22 01:38:54', 3, 'tr_melispagehistoric_action_text_Delete'),
(497, 252, 'Delete', '2019-08-22 01:38:59', 3, 'tr_melispagehistoric_action_text_Delete'),
(498, 251, 'Delete', '2019-08-22 01:39:03', 3, 'tr_melispagehistoric_action_text_Delete'),
(499, 250, 'Delete', '2019-08-22 01:39:07', 3, 'tr_melispagehistoric_action_text_Delete'),
(500, 254, 'Publish', '2019-08-22 01:39:59', 3, 'tr_melispagehistoric_description_text_publish'),
(501, 255, 'Publish', '2019-08-22 01:40:17', 3, 'tr_melispagehistoric_description_text_publish'),
(502, 256, 'Publish', '2019-08-22 01:40:29', 3, 'tr_melispagehistoric_description_text_publish'),
(503, 254, 'Publish', '2019-08-22 01:41:34', 3, 'tr_melispagehistoric_description_text_publish'),
(504, 255, 'Publish', '2019-08-22 01:42:35', 3, 'tr_melispagehistoric_description_text_publish'),
(505, 254, 'Publish', '2019-08-22 01:43:52', 3, 'tr_melispagehistoric_description_text_publish'),
(506, 258, 'Publish', '2019-08-22 02:02:27', 3, 'tr_melispagehistoric_description_text_publish'),
(507, 259, 'Publish', '2019-08-22 02:04:17', 3, 'tr_melispagehistoric_description_text_publish'),
(508, 260, 'Publish', '2019-08-22 02:09:16', 3, 'tr_melispagehistoric_description_text_publish'),
(509, 261, 'Delete', '2019-08-22 04:20:23', 3, 'tr_melispagehistoric_action_text_Delete'),
(510, 260, 'Delete', '2019-08-22 04:20:28', 3, 'tr_melispagehistoric_action_text_Delete'),
(511, 259, 'Delete', '2019-08-22 04:20:33', 3, 'tr_melispagehistoric_action_text_Delete'),
(512, 258, 'Delete', '2019-08-22 04:20:36', 3, 'tr_melispagehistoric_action_text_Delete'),
(513, 262, 'Publish', '2019-08-22 04:31:49', 3, 'tr_melispagehistoric_description_text_publish'),
(514, 263, 'Publish', '2019-08-22 04:32:13', 3, 'tr_melispagehistoric_description_text_publish'),
(515, 264, 'Publish', '2019-08-22 04:32:26', 3, 'tr_melispagehistoric_description_text_publish'),
(516, 266, 'Publish', '2019-08-22 05:11:16', 3, 'tr_melispagehistoric_description_text_publish'),
(517, 267, 'Publish', '2019-08-22 05:11:35', 3, 'tr_melispagehistoric_description_text_publish'),
(518, 268, 'Publish', '2019-08-22 05:11:53', 3, 'tr_melispagehistoric_description_text_publish'),
(519, 262, 'Publish', '2019-08-22 05:31:56', 7, 'tr_melispagehistoric_description_text_publish'),
(520, 262, 'Publish', '2019-08-22 05:51:40', 3, 'tr_melispagehistoric_description_text_publish'),
(521, 270, 'Publish', '2019-08-22 05:55:38', 3, 'tr_melispagehistoric_description_text_publish'),
(522, 271, 'Publish', '2019-08-22 05:55:40', 3, 'tr_melispagehistoric_description_text_publish'),
(523, 272, 'Publish', '2019-08-22 05:55:44', 3, 'tr_melispagehistoric_description_text_publish'),
(524, 273, 'Delete', '2019-08-22 05:57:50', 3, 'tr_melispagehistoric_action_text_Delete'),
(525, 272, 'Delete', '2019-08-22 05:57:55', 3, 'tr_melispagehistoric_action_text_Delete'),
(526, 271, 'Delete', '2019-08-22 05:57:59', 3, 'tr_melispagehistoric_action_text_Delete'),
(527, 270, 'Delete', '2019-08-22 05:58:03', 3, 'tr_melispagehistoric_action_text_Delete');

-- --------------------------------------------------------

--
-- Table structure for table `melis_messenger_msg`
--

CREATE TABLE `melis_messenger_msg` (
  `msgr_msg_id` int(11) NOT NULL,
  `msgr_msg_creator_id` int(11) NOT NULL,
  `msgr_msg_date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_messenger_msg`
--

INSERT INTO `melis_messenger_msg` (`msgr_msg_id`, `msgr_msg_creator_id`, `msgr_msg_date_created`) VALUES
(1, 3, '2019-07-10 01:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `melis_messenger_msg_content`
--

CREATE TABLE `melis_messenger_msg_content` (
  `msgr_msg_cont_id` int(11) NOT NULL,
  `msgr_msg_id` int(11) NOT NULL,
  `msgr_msg_cont_sender_id` int(11) NOT NULL,
  `msgr_msg_cont_message` longtext NOT NULL,
  `msgr_msg_cont_date` datetime NOT NULL,
  `msgr_msg_cont_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_messenger_msg_content`
--

INSERT INTO `melis_messenger_msg_content` (`msgr_msg_cont_id`, `msgr_msg_id`, `msgr_msg_cont_sender_id`, `msgr_msg_cont_message`, `msgr_msg_cont_date`, `msgr_msg_cont_status`) VALUES
(1, 1, 3, 'test', '2019-07-10 01:57:45', 0),
(2, 1, 2, 'wow', '2019-08-23 06:26:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `melis_messenger_msg_members`
--

CREATE TABLE `melis_messenger_msg_members` (
  `msgr_msg_mbr_id` int(11) NOT NULL,
  `msgr_msg_id` int(11) NOT NULL,
  `msgr_msg_mbr_usr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_messenger_msg_members`
--

INSERT INTO `melis_messenger_msg_members` (`msgr_msg_mbr_id`, `msgr_msg_id`, `msgr_msg_mbr_usr_id`) VALUES
(1, 1, 2),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `melis_plugins`
--

CREATE TABLE `melis_plugins` (
  `plugin_id` int(11) NOT NULL,
  `plugin_name` varchar(255) NOT NULL,
  `plugin_module` varchar(45) NOT NULL,
  `plugin_type` varchar(100) NOT NULL,
  `plugin_date_installed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melis_plugins`
--

INSERT INTO `melis_plugins` (`plugin_id`, `plugin_name`, `plugin_module`, `plugin_type`, `plugin_date_installed`) VALUES
(1, 'RecentUserActivity', 'MelisCore', 'dashboard', '2019-07-09 08:37:17'),
(2, 'PagesIndicators', 'MelisCms', 'dashboard', '2019-07-09 08:37:17'),
(3, 'ProspectsStatistics', 'MelisCmsProspects', 'dashboard', '2019-07-09 08:37:17'),
(4, 'CalendarEvents', 'MelisCalendar', 'dashboard', '2019-07-09 08:37:17'),
(5, 'recentActivity', 'MelisCmsPageHistoric', 'dashboard', '2019-07-09 08:37:17'),
(6, 'MelisFrontTagHtmlPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(7, 'MelisFrontTagTextareaPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(8, 'MelisFrontTagMediaPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(9, 'MelisFrontBreadcrumbPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(10, 'MelisFrontMenuPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(11, 'MelisFrontShowListFromFolderPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(12, 'MelisFrontSearchResultsPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(13, 'MelisFrontBlockSectionPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(14, 'MelisFrontGdprBannerPlugin', 'melisfront', 'templating', '2019-07-09 08:40:24'),
(15, 'MelisCmsProspectsShowFormPlugin', 'meliscmsprospects', 'templating', '2019-07-09 08:40:24'),
(16, 'MelisCmsNewsLatestNewsPlugin', 'meliscmsnews', 'templating', '2019-07-09 08:40:24'),
(17, 'MelisCmsNewsListNewsPlugin', 'meliscmsnews', 'templating', '2019-07-09 08:40:24'),
(18, 'MelisCmsNewsShowNewsPlugin', 'meliscmsnews', 'templating', '2019-07-09 08:40:24'),
(19, 'MelisCmsSliderShowSliderPlugin', 'meliscmsslider', 'templating', '2019-07-09 08:40:24'),
(20, 'MiniTemplatePlugin_2box-about-us-performance_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(21, 'MiniTemplatePlugin_3contactus-details_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(22, 'MiniTemplatePlugin_4contactus-footer_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(23, 'MiniTemplatePlugin_5content-image-left-text-right_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(24, 'MiniTemplatePlugin_6content-image-right-text-left_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(25, 'MiniTemplatePlugin_7instagram-footer_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(26, 'MiniTemplatePlugin_8line-box-about-us_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(27, 'MiniTemplatePlugin_9line-box-home_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(28, 'MiniTemplatePlugin_10text_quote_home_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24'),
(29, 'MiniTemplatePlugin_11title_text_home_melisdemocms', 'MelisMiniTemplate', 'templating', '2019-07-09 08:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `melis_site_translation`
--

CREATE TABLE `melis_site_translation` (
  `mst_id` int(11) NOT NULL,
  `mst_site_id` int(11) NOT NULL,
  `mst_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `melis_site_translation_text`
--

CREATE TABLE `melis_site_translation_text` (
  `mstt_id` int(11) NOT NULL,
  `mstt_mst_id` int(11) NOT NULL,
  `mstt_lang_id` int(11) NOT NULL,
  `mstt_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cb_custom_settings`
--
ALTER TABLE `cb_custom_settings`
  ADD UNIQUE KEY `site_id` (`site_id`);

--
-- Indexes for table `changelog`
--
ALTER TABLE `changelog`
  ADD PRIMARY KEY (`change_number`,`delta_set`);

--
-- Indexes for table `melis_calendar`
--
ALTER TABLE `melis_calendar`
  ADD PRIMARY KEY (`cal_id`);

--
-- Indexes for table `melis_cms_domain_robots`
--
ALTER TABLE `melis_cms_domain_robots`
  ADD PRIMARY KEY (`robot_id`);

--
-- Indexes for table `melis_cms_gdpr_texts`
--
ALTER TABLE `melis_cms_gdpr_texts`
  ADD PRIMARY KEY (`mcgdpr_text_id`);

--
-- Indexes for table `melis_cms_lang`
--
ALTER TABLE `melis_cms_lang`
  ADD PRIMARY KEY (`lang_cms_id`);

--
-- Indexes for table `melis_cms_news`
--
ALTER TABLE `melis_cms_news`
  ADD PRIMARY KEY (`cnews_id`);

--
-- Indexes for table `melis_cms_news_texts`
--
ALTER TABLE `melis_cms_news_texts`
  ADD PRIMARY KEY (`cnews_text_id`);

--
-- Indexes for table `melis_cms_page_analytics`
--
ALTER TABLE `melis_cms_page_analytics`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `melis_cms_page_analytics_data`
--
ALTER TABLE `melis_cms_page_analytics_data`
  ADD PRIMARY KEY (`pad_id`);

--
-- Indexes for table `melis_cms_page_analytics_data_settings`
--
ALTER TABLE `melis_cms_page_analytics_data_settings`
  ADD PRIMARY KEY (`pads_id`);

--
-- Indexes for table `melis_cms_page_default_urls`
--
ALTER TABLE `melis_cms_page_default_urls`
  ADD PRIMARY KEY (`purl_page_id`);

--
-- Indexes for table `melis_cms_page_lang`
--
ALTER TABLE `melis_cms_page_lang`
  ADD PRIMARY KEY (`plang_id`);

--
-- Indexes for table `melis_cms_page_published`
--
ALTER TABLE `melis_cms_page_published`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `melis_cms_page_saved`
--
ALTER TABLE `melis_cms_page_saved`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `melis_cms_page_seo`
--
ALTER TABLE `melis_cms_page_seo`
  ADD PRIMARY KEY (`pseo_id`);

--
-- Indexes for table `melis_cms_page_style`
--
ALTER TABLE `melis_cms_page_style`
  ADD PRIMARY KEY (`pstyle_id`);

--
-- Indexes for table `melis_cms_page_tree`
--
ALTER TABLE `melis_cms_page_tree`
  ADD PRIMARY KEY (`tree_page_id`);

--
-- Indexes for table `melis_cms_platform_ids`
--
ALTER TABLE `melis_cms_platform_ids`
  ADD PRIMARY KEY (`pids_id`);

--
-- Indexes for table `melis_cms_prospects`
--
ALTER TABLE `melis_cms_prospects`
  ADD PRIMARY KEY (`pros_id`),
  ADD KEY `fk_theme_id_idx` (`pros_theme`);

--
-- Indexes for table `melis_cms_prospects_themes`
--
ALTER TABLE `melis_cms_prospects_themes`
  ADD PRIMARY KEY (`pros_theme_id`);

--
-- Indexes for table `melis_cms_prospects_theme_items`
--
ALTER TABLE `melis_cms_prospects_theme_items`
  ADD PRIMARY KEY (`pros_theme_item_id`),
  ADD KEY `fk_pros_subj_id_idx` (`pros_theme_id`);

--
-- Indexes for table `melis_cms_prospects_theme_items_trans`
--
ALTER TABLE `melis_cms_prospects_theme_items_trans`
  ADD PRIMARY KEY (`item_trans_id`),
  ADD KEY `fk_melis_cms_prospects_theme_items_trans_melis_cms_prospect_idx` (`item_trans_theme_item_id`);

--
-- Indexes for table `melis_cms_site`
--
ALTER TABLE `melis_cms_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `melis_cms_site_301`
--
ALTER TABLE `melis_cms_site_301`
  ADD PRIMARY KEY (`s301_id`);

--
-- Indexes for table `melis_cms_site_404`
--
ALTER TABLE `melis_cms_site_404`
  ADD PRIMARY KEY (`s404_id`);

--
-- Indexes for table `melis_cms_site_config`
--
ALTER TABLE `melis_cms_site_config`
  ADD PRIMARY KEY (`sconf_id`);

--
-- Indexes for table `melis_cms_site_domain`
--
ALTER TABLE `melis_cms_site_domain`
  ADD PRIMARY KEY (`sdom_id`);

--
-- Indexes for table `melis_cms_site_home`
--
ALTER TABLE `melis_cms_site_home`
  ADD PRIMARY KEY (`shome_id`);

--
-- Indexes for table `melis_cms_site_langs`
--
ALTER TABLE `melis_cms_site_langs`
  ADD PRIMARY KEY (`slang_id`);

--
-- Indexes for table `melis_cms_slider`
--
ALTER TABLE `melis_cms_slider`
  ADD PRIMARY KEY (`mcslide_id`);

--
-- Indexes for table `melis_cms_slider_details`
--
ALTER TABLE `melis_cms_slider_details`
  ADD PRIMARY KEY (`mcsdetail_id`),
  ADD KEY `fk_melis_cms_slider_details_melis_cms_slider_idx` (`mcsdetail_mcslider_id`);

--
-- Indexes for table `melis_cms_style`
--
ALTER TABLE `melis_cms_style`
  ADD PRIMARY KEY (`style_id`);

--
-- Indexes for table `melis_cms_template`
--
ALTER TABLE `melis_cms_template`
  ADD PRIMARY KEY (`tpl_id`);

--
-- Indexes for table `melis_core_bo_emails`
--
ALTER TABLE `melis_core_bo_emails`
  ADD PRIMARY KEY (`boe_id`);

--
-- Indexes for table `melis_core_bo_emails_details`
--
ALTER TABLE `melis_core_bo_emails_details`
  ADD PRIMARY KEY (`boed_id`);

--
-- Indexes for table `melis_core_dashboards`
--
ALTER TABLE `melis_core_dashboards`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `melis_core_lang`
--
ALTER TABLE `melis_core_lang`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `melis_core_log`
--
ALTER TABLE `melis_core_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `melis_core_log_type`
--
ALTER TABLE `melis_core_log_type`
  ADD PRIMARY KEY (`logt_id`);

--
-- Indexes for table `melis_core_log_type_trans`
--
ALTER TABLE `melis_core_log_type_trans`
  ADD PRIMARY KEY (`logtt_id`);

--
-- Indexes for table `melis_core_lost_password`
--
ALTER TABLE `melis_core_lost_password`
  ADD PRIMARY KEY (`rh_id`);

--
-- Indexes for table `melis_core_microservice_auth`
--
ALTER TABLE `melis_core_microservice_auth`
  ADD PRIMARY KEY (`msoa_id`);

--
-- Indexes for table `melis_core_microservice_logs`
--
ALTER TABLE `melis_core_microservice_logs`
  ADD PRIMARY KEY (`msl_id`);

--
-- Indexes for table `melis_core_platform`
--
ALTER TABLE `melis_core_platform`
  ADD PRIMARY KEY (`plf_id`);

--
-- Indexes for table `melis_core_platform_scheme`
--
ALTER TABLE `melis_core_platform_scheme`
  ADD PRIMARY KEY (`pscheme_id`);

--
-- Indexes for table `melis_core_user`
--
ALTER TABLE `melis_core_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- Indexes for table `melis_core_user_connection_date`
--
ALTER TABLE `melis_core_user_connection_date`
  ADD PRIMARY KEY (`usrcd_id`);

--
-- Indexes for table `melis_core_user_role`
--
ALTER TABLE `melis_core_user_role`
  ADD PRIMARY KEY (`urole_id`);

--
-- Indexes for table `melis_hist_page_historic`
--
ALTER TABLE `melis_hist_page_historic`
  ADD PRIMARY KEY (`hist_id`);

--
-- Indexes for table `melis_messenger_msg`
--
ALTER TABLE `melis_messenger_msg`
  ADD PRIMARY KEY (`msgr_msg_id`);

--
-- Indexes for table `melis_messenger_msg_content`
--
ALTER TABLE `melis_messenger_msg_content`
  ADD PRIMARY KEY (`msgr_msg_cont_id`);

--
-- Indexes for table `melis_messenger_msg_members`
--
ALTER TABLE `melis_messenger_msg_members`
  ADD PRIMARY KEY (`msgr_msg_mbr_id`);

--
-- Indexes for table `melis_plugins`
--
ALTER TABLE `melis_plugins`
  ADD PRIMARY KEY (`plugin_id`);

--
-- Indexes for table `melis_site_translation`
--
ALTER TABLE `melis_site_translation`
  ADD PRIMARY KEY (`mst_id`);

--
-- Indexes for table `melis_site_translation_text`
--
ALTER TABLE `melis_site_translation_text`
  ADD PRIMARY KEY (`mstt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `melis_calendar`
--
ALTER TABLE `melis_calendar`
  MODIFY `cal_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_cms_domain_robots`
--
ALTER TABLE `melis_cms_domain_robots`
  MODIFY `robot_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_cms_gdpr_texts`
--
ALTER TABLE `melis_cms_gdpr_texts`
  MODIFY `mcgdpr_text_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `melis_cms_lang`
--
ALTER TABLE `melis_cms_lang`
  MODIFY `lang_cms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `melis_cms_news`
--
ALTER TABLE `melis_cms_news`
  MODIFY `cnews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `melis_cms_news_texts`
--
ALTER TABLE `melis_cms_news_texts`
  MODIFY `cnews_text_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `melis_cms_page_analytics`
--
ALTER TABLE `melis_cms_page_analytics`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;
--
-- AUTO_INCREMENT for table `melis_cms_page_analytics_data`
--
ALTER TABLE `melis_cms_page_analytics_data`
  MODIFY `pad_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_cms_page_analytics_data_settings`
--
ALTER TABLE `melis_cms_page_analytics_data_settings`
  MODIFY `pads_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_cms_page_default_urls`
--
ALTER TABLE `melis_cms_page_default_urls`
  MODIFY `purl_page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT for table `melis_cms_page_lang`
--
ALTER TABLE `melis_cms_page_lang`
  MODIFY `plang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;
--
-- AUTO_INCREMENT for table `melis_cms_page_style`
--
ALTER TABLE `melis_cms_page_style`
  MODIFY `pstyle_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Table''s primary key', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `melis_cms_platform_ids`
--
ALTER TABLE `melis_cms_platform_ids`
  MODIFY `pids_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `melis_cms_prospects`
--
ALTER TABLE `melis_cms_prospects`
  MODIFY `pros_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `melis_cms_prospects_themes`
--
ALTER TABLE `melis_cms_prospects_themes`
  MODIFY `pros_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `melis_cms_prospects_theme_items`
--
ALTER TABLE `melis_cms_prospects_theme_items`
  MODIFY `pros_theme_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `melis_cms_prospects_theme_items_trans`
--
ALTER TABLE `melis_cms_prospects_theme_items_trans`
  MODIFY `item_trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `melis_cms_site`
--
ALTER TABLE `melis_cms_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `melis_cms_site_301`
--
ALTER TABLE `melis_cms_site_301`
  MODIFY `s301_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'site redirect id';
--
-- AUTO_INCREMENT for table `melis_cms_site_404`
--
ALTER TABLE `melis_cms_site_404`
  MODIFY `s404_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `melis_cms_site_config`
--
ALTER TABLE `melis_cms_site_config`
  MODIFY `sconf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `melis_cms_site_domain`
--
ALTER TABLE `melis_cms_site_domain`
  MODIFY `sdom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `melis_cms_site_home`
--
ALTER TABLE `melis_cms_site_home`
  MODIFY `shome_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `melis_cms_site_langs`
--
ALTER TABLE `melis_cms_site_langs`
  MODIFY `slang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `melis_cms_slider`
--
ALTER TABLE `melis_cms_slider`
  MODIFY `mcslide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `melis_cms_slider_details`
--
ALTER TABLE `melis_cms_slider_details`
  MODIFY `mcsdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `melis_cms_style`
--
ALTER TABLE `melis_cms_style`
  MODIFY `style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `melis_core_bo_emails`
--
ALTER TABLE `melis_core_bo_emails`
  MODIFY `boe_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_core_bo_emails_details`
--
ALTER TABLE `melis_core_bo_emails_details`
  MODIFY `boed_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_core_dashboards`
--
ALTER TABLE `melis_core_dashboards`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Dashboard plugin ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `melis_core_lang`
--
ALTER TABLE `melis_core_lang`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `melis_core_log`
--
ALTER TABLE `melis_core_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log Id', AUTO_INCREMENT=881;
--
-- AUTO_INCREMENT for table `melis_core_log_type`
--
ALTER TABLE `melis_core_log_type`
  MODIFY `logt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log type id', AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `melis_core_log_type_trans`
--
ALTER TABLE `melis_core_log_type_trans`
  MODIFY `logtt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log type translation id';
--
-- AUTO_INCREMENT for table `melis_core_lost_password`
--
ALTER TABLE `melis_core_lost_password`
  MODIFY `rh_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_core_microservice_auth`
--
ALTER TABLE `melis_core_microservice_auth`
  MODIFY `msoa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_core_microservice_logs`
--
ALTER TABLE `melis_core_microservice_logs`
  MODIFY `msl_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_core_platform`
--
ALTER TABLE `melis_core_platform`
  MODIFY `plf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `melis_core_platform_scheme`
--
ALTER TABLE `melis_core_platform_scheme`
  MODIFY `pscheme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `melis_core_user`
--
ALTER TABLE `melis_core_user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `melis_core_user_connection_date`
--
ALTER TABLE `melis_core_user_connection_date`
  MODIFY `usrcd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `melis_core_user_role`
--
ALTER TABLE `melis_core_user_role`
  MODIFY `urole_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `melis_hist_page_historic`
--
ALTER TABLE `melis_hist_page_historic`
  MODIFY `hist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;
--
-- AUTO_INCREMENT for table `melis_messenger_msg`
--
ALTER TABLE `melis_messenger_msg`
  MODIFY `msgr_msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `melis_messenger_msg_content`
--
ALTER TABLE `melis_messenger_msg_content`
  MODIFY `msgr_msg_cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `melis_messenger_msg_members`
--
ALTER TABLE `melis_messenger_msg_members`
  MODIFY `msgr_msg_mbr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `melis_plugins`
--
ALTER TABLE `melis_plugins`
  MODIFY `plugin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `melis_site_translation`
--
ALTER TABLE `melis_site_translation`
  MODIFY `mst_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `melis_site_translation_text`
--
ALTER TABLE `melis_site_translation_text`
  MODIFY `mstt_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
