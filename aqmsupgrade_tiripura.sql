-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 07:49 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqmsupgrade_tiripura`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adimg` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `adimg`, `created_at`, `updated_at`) VALUES
(1, 'Advertisement 1', '1563195086.jpg', '2019-07-15 12:51:26', '2019-07-15 12:51:26'),
(9, 'advertisement 2', '1563431296.jpg', '2019-07-18 06:28:16', '2019-07-18 06:28:16'),
(10, 'advertisement 3', '1563195117.jpg', '2019-07-15 12:51:57', '2019-07-15 12:51:57'),
(11, 'No Advertisement', '1563192517.jpg', '2019-07-15 12:08:37', '2019-07-15 12:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `counter_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ads_id` int(10) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `priority` int(6) DEFAULT '4' COMMENT '1=platinum,2=Gold,3=Silver,4=Normal',
  `view_status` tinyint(1) NOT NULL DEFAULT '0',
  `called_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `doctor_work_start` int(11) DEFAULT '0',
  `doctor_work_start_date` datetime DEFAULT NULL,
  `doctor_work_end` int(11) DEFAULT '0',
  `doctor_work_end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `queue_id`, `department_id`, `counter_id`, `user_id`, `ads_id`, `number`, `priority`, `view_status`, `called_date`, `created_at`, `updated_at`, `pid`, `doctor_work_start`, `doctor_work_start_date`, `doctor_work_end`, `doctor_work_end_date`) VALUES
(1, 1, 5, 7, 21, 10, 5000, 4, 1, '2019-07-26', '2019-07-26 13:46:53', '2019-07-26 13:53:38', 3, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_sequence` int(10) DEFAULT NULL,
  `pid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `name`, `display_sequence`, `pid`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'PHY-309', 1, '1', '1', '2019-02-18 08:05:15', '2019-02-18 08:05:15'),
(2, 'ORTH-310A', 2, '2', '4', '2019-02-18 08:05:42', '2019-02-18 08:05:42'),
(3, 'ORTH-310B', 3, '2', '4', '2019-02-18 08:06:08', '2019-02-18 08:06:08'),
(4, 'ORTH-310C', 4, '2', '4', '2019-02-18 08:06:26', '2019-02-18 08:06:26'),
(5, 'SURG-311A', 5, '3', '5', '2019-02-18 08:07:00', '2019-02-18 08:07:00'),
(6, 'SURG-311B', 6, '3', '5', '2019-02-18 08:07:17', '2019-02-18 08:07:17'),
(7, 'SURG-311C', 7, '3', '5', '2019-02-18 08:07:32', '2019-02-18 08:07:32'),
(8, 'EYE-322A', 8, '4', '7', '2019-02-18 08:31:09', '2019-02-18 08:31:09'),
(9, 'EYE-322B', 9, '4', '7', '2019-02-18 08:31:28', '2019-02-18 08:31:28'),
(10, 'EYE-322C', 10, '4', '7', '2019-02-18 08:31:45', '2019-02-18 08:31:45'),
(11, 'ENT-321A', 11, '5', '8', '2019-02-18 08:32:10', '2019-02-18 08:32:10'),
(12, 'ENT-321B', 12, '5', '8', '2019-02-18 08:32:28', '2019-02-18 08:32:28'),
(13, 'ENT-321C', 13, '5', '8', '2019-02-18 08:32:46', '2019-02-18 08:32:46'),
(14, 'DEN-319', 14, '7', '9', '2019-02-18 08:33:12', '2019-02-18 08:33:12'),
(15, 'DEN-318', 15, '7', '9', '2019-02-18 08:34:12', '2019-02-18 08:34:12'),
(16, 'DEN-317', 16, '7', '9', '2019-02-18 08:34:47', '2019-02-18 08:34:47'),
(17, 'FAM-408', 17, '8', '10', '2019-02-18 08:35:48', '2019-02-18 08:35:48'),
(18, 'GYN-409A', 18, '9', '11', '2019-02-18 08:36:08', '2019-02-18 08:36:08'),
(19, 'GYN-409B', 19, '9', '11', '2019-02-18 08:36:28', '2019-02-18 08:36:28'),
(20, 'GYN-409C', 20, '9', '11', '2019-02-18 08:36:48', '2019-02-18 08:36:48'),
(21, 'GYN-407', 21, '9', '11', '2019-02-18 08:37:14', '2019-02-18 08:37:14'),
(22, 'PED-410A', 22, '6', '2', '2019-02-18 08:37:32', '2019-02-18 08:37:32'),
(23, 'PED-410B', 23, '6', '2', '2019-02-18 08:37:51', '2019-02-18 08:37:51'),
(24, 'PED-410C', 24, '6', '2', '2019-02-18 08:38:15', '2019-02-18 08:38:15'),
(25, 'AYU-411A', 25, '10', '12', '2019-02-18 08:38:41', '2019-02-18 08:38:41'),
(26, 'AYU-411B', 26, '10', '12', '2019-02-18 08:39:02', '2019-02-18 08:39:02'),
(27, 'AYU-411C', 27, '10', '12', '2019-02-18 08:39:37', '2019-02-18 08:39:37'),
(28, 'CHE-423A', 28, '11', '13', '2019-02-18 08:40:04', '2019-02-18 08:40:04'),
(29, 'CHE-423B', 29, '11', '13', '2019-02-18 08:41:45', '2019-02-18 08:41:45'),
(30, 'CHE-423C', 30, '11', '13', '2019-02-18 08:42:33', '2019-02-18 08:42:33'),
(31, 'MED-422A', 31, '14', '14', '2019-02-18 08:42:52', '2019-02-18 08:42:52'),
(32, 'MED-422B', 32, '14', '14', '2019-02-18 08:43:10', '2019-02-18 08:43:10'),
(33, 'MED-422C', 33, '14', '14', '2019-02-18 08:43:33', '2019-02-18 08:43:33'),
(34, 'PSY-421A', 34, '12', '3', '2019-02-18 11:37:56', '2019-02-18 11:37:56'),
(35, 'PSY-421B', 35, '12', '3', '2019-02-18 11:38:17', '2019-02-18 11:38:17'),
(36, 'PSY-421C', 36, '12', '3', '2019-02-18 11:38:38', '2019-02-18 11:38:38'),
(37, 'SKI-419A', 37, '13', '6', '2019-02-18 11:38:57', '2019-02-18 11:38:57'),
(38, 'SKI-419B', 38, '13', '6', '2019-02-18 11:39:18', '2019-02-18 11:39:18'),
(39, 'LAB-LG-01', 39, '16', '16', '2019-02-18 11:39:50', '2019-02-18 11:39:50'),
(40, 'LAB-LG-02', 40, '16', '16', '2019-02-18 11:40:11', '2019-02-18 11:40:11'),
(41, 'RFPA-320', 41, '8', '10', '2019-07-11 14:10:32', '2019-07-11 14:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `olangname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `regcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `letter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `is_uhid_required` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `olangname`, `regcode`, `letter`, `start`, `created_at`, `updated_at`, `pid`, `is_uhid_required`) VALUES
(1, 'Physiotherapy', 'फिजियोथेरेपी ', 'OPPHYS', '', 1000, '2019-02-07 04:39:10', '2019-06-13 08:03:31', 1, 2),
(2, 'Pediatric', 'पीडियाट्रिक ', 'OPPAED', '', 2000, '2019-02-07 04:39:41', '2019-07-17 12:56:55', 6, 2),
(3, 'Psychiatry (मनोरोग)', '', 'OPPSYC', '', 3000, '2019-02-07 04:41:42', '2019-05-14 01:33:53', 12, 2),
(4, 'Orthopedic', 'ऑर्थोपेडिक', 'OPORTH', '', 4000, '2019-02-07 04:44:23', '2019-06-13 08:04:48', 2, 2),
(5, 'Surgery ', 'सर्जरी', 'OPGESU', '', 5000, '2019-02-07 04:45:01', '2019-07-23 14:49:02', 3, 2),
(6, 'Skin (चर्म रोग)', '', 'OPSKIN', '', 6000, '2019-02-07 04:45:55', '2019-05-14 01:34:58', 13, 2),
(7, 'Eye ', 'आँख', 'OPEYEO', '', 7000, '2019-02-07 04:49:31', '2019-06-23 06:00:59', 4, 2),
(8, 'ENT (ईएनटी)', '', 'OPENTO', '', 8000, '2019-02-07 04:49:57', '2019-05-14 01:38:03', 5, 2),
(9, 'Dental', 'डेंटल ', 'OPDENT', '', 9000, '2019-02-07 04:50:22', '2019-06-24 09:36:48', 7, 2),
(10, 'F P ', 'परिवार नियोजन ', 'OPFAMP', '', 1600, '2019-02-07 04:50:42', '2019-06-24 09:37:32', 8, 2),
(11, 'Gyneco (गायनोकॉलोजी)', '', 'OPOBST', '', 2500, '2019-02-07 04:51:05', '2019-05-14 01:40:57', 9, 2),
(12, 'Ayurvedic (आयुर्वेदिक)', '', 'OPAYUR', '', 3500, '2019-02-07 04:51:31', '2019-05-14 01:42:11', 10, 2),
(13, 'Chest (चेस्ट)', '', 'OPPUCT', '', 4500, '2019-02-07 04:51:50', '2019-05-14 01:42:50', 11, 2),
(14, 'Medical (मेडिकल)', '', 'OPMEDI', '', 5500, '2019-02-07 04:52:20', '2019-05-14 01:46:04', 14, 2),
(15, 'Medicine (दवा)', '', 'OPGENE', 'M', 100, '2019-02-07 04:52:56', '2019-05-14 01:47:28', 15, 2),
(16, 'LAB (प्रयोगशाला)', '', 'OPLABO', '', 6500, '2019-02-07 06:34:39', '2019-05-14 01:48:01', 16, 1),
(18, 'Homeo (होम्योपैथिक)', '', 'OPHOME', '', 2000, '2019-05-14 02:06:39', '2019-05-14 02:06:39', 17, 2),
(19, 'Anashe (बेहोशी)', '', 'OPANAE', '', 3000, '2019-05-14 02:08:19', '2019-05-14 02:08:19', 18, 2),
(20, 'Radio (रेडियोलोजी)', '', 'OPRADI', '', 4000, '2019-05-14 02:09:20', '2019-05-14 02:09:20', 19, 2),
(21, 'Casualty (हताहत)', '', 'OPCASU', '', 5000, '2019-05-14 02:10:54', '2019-05-14 02:10:54', 20, 2),
(22, 'Patho (पैथोलोजी)', '', 'OPPATH', '', 6000, '2019-05-14 02:12:34', '2019-05-14 02:12:34', 21, 2),
(23, 'Bioche (बायोकेमिस्ट्री)', '', 'OPBIOC', '', 7000, '2019-05-14 02:14:09', '2019-05-14 02:14:09', 22, 2),
(24, 'Ayurvedic', 'आयुर्वेदिक', 'OPAYUR', '', 3000, '2019-06-13 08:08:31', '2019-06-13 08:08:31', 10, 2),
(25, 'ENT', 'ेंट ', 'ENTTG', '', 5000, '2019-07-11 14:20:07', '2019-07-11 14:20:07', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `display_settings`
--

CREATE TABLE `display_settings` (
  `id` int(10) NOT NULL,
  `textup` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `textdown` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bgimg` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `work` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `deptflag` int(2) DEFAULT NULL COMMENT '1=English, 2=Other language, 3=Both',
  `deptcflag` int(2) DEFAULT NULL COMMENT '1=English, 2=Other language, 3=Both',
  `columnflag` int(2) DEFAULT NULL COMMENT '1=Department, 2=Doctor, 3=Both',
  `doctorflag` int(2) DEFAULT NULL COMMENT '1=English, 2=Other language, 3=Both',
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `display_settings`
--

INSERT INTO `display_settings` (`id`, `textup`, `textdown`, `video`, `bgimg`, `work`, `deptflag`, `deptcflag`, `columnflag`, `doctorflag`, `created_at`, `updated_at`) VALUES
(1, 'Please Wait...', 'No token Called', '1560599484.mp4', '1560603856.jpg', 'দয়া করে রুম সংখ্যা এ এগিয়ে যান', 1, 2, 1, 2, '2019-07-18 08:05:11', '2019-07-18 08:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_reports`
--

CREATE TABLE `doctor_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `call_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `display`, `image`, `created_at`, `updated_at`) VALUES
(1, 'gb', 'English', 'Google UK English Female', 'United-Kingdom.png', '2019-01-22 03:43:45', '2019-01-22 03:43:45'),
(2, 'tr', 'Turkish', 'Turkish Female', 'Turkey.png', '2019-01-22 03:43:45', '2019-01-22 03:43:45'),
(3, 'de', 'German', 'Deutsch Female', 'Germany.png', '2019-01-22 03:43:45', '2019-01-22 03:43:45'),
(4, 'es', 'Spanish', 'Spanish Female', 'Spain.png', '2019-01-22 03:43:45', '2019-01-22 03:43:45'),
(5, 'fr', 'French', 'French Female', 'France.png', '2019-01-22 03:43:45', '2019-01-22 03:43:45'),
(6, 'in', 'Hindi', 'Google हिन्दी', 'India.png', '2019-01-22 03:43:45', '2019-01-22 03:43:45'),
(7, 'it', 'Italian', 'Italian Female', 'Italy.png', '2019-01-22 03:43:45', '2019-01-22 03:43:45'),
(8, 'pt', 'Portuguese', 'Portuguese Female', 'Portugal.png', '2019-01-22 03:43:45', '2019-01-22 03:43:45'),
(9, 'ru', 'Russian', 'Russian Female', 'Russia.png', '2019-01-22 03:43:46', '2019-01-22 03:43:46'),
(10, 'sa', 'Arabic', 'Arabic Male', 'Saudi-Arabia.png', '2019-01-22 03:43:46', '2019-01-22 03:43:46'),
(11, 'sk', 'Slovak', 'Slovak Female', 'Slovakia.png', '2019-01-22 03:43:46', '2019-01-22 03:43:46'),
(12, 'th', 'Thai', 'Thai Female', 'Thailand.png', '2019-01-22 03:43:46', '2019-01-22 03:43:46'),
(13, 'id', 'Indonesian', 'Indonesian Female', 'Indonesia.png', '2019-01-22 03:43:46', '2019-01-22 03:43:46'),
(14, 'bn', 'Bengoli', 'Bengoli Female', 'bengoli.png', '2019-01-22 03:43:46', '2019-01-22 03:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE `limits` (
  `id` int(10) NOT NULL,
  `doctor` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `cmo` int(11) DEFAULT NULL,
  `displayctrl` int(11) DEFAULT NULL,
  `helpdesk` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `pdepartment` int(11) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `ads` int(11) DEFAULT NULL,
  `tokenperday` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `limits`
--

INSERT INTO `limits` (`id`, `doctor`, `user`, `cmo`, `displayctrl`, `helpdesk`, `department`, `pdepartment`, `room`, `ads`, `tokenperday`, `created_at`, `updated_at`) VALUES
(1, 8, 2, 1, 1, 1, 24, 22, 41, 10, 3, '0000-00-00 00:00:00', '2019-07-12 07:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_07_16_161740_create_departments_table', 1),
(4, '2016_07_16_180929_create_counters_table', 1),
(5, '2016_07_16_190715_create_queues_table', 1),
(6, '2016_07_19_170334_create_calls_table', 1),
(7, '2016_08_24_231859_create_languages_table', 1),
(8, '2016_09_28_123908_create_settings_table', 1),
(10, '2019_01_25_111036_create_parent_departments_table', 2),
(12, '2019_01_25_164519_add_pid_to_departments', 3),
(13, '2019_01_25_210736_add_pid_to_calls', 4),
(14, '2019_01_25_222612_add_pid_to_queues', 5),
(15, '2019_01_25_224152_add_uhid_to_queues', 6),
(16, '2019_01_25_224359_add_priority_to_queues', 6),
(17, '2019_01_26_052008_add_is_uhid_required_to_departments', 7),
(18, '2019_01_26_055620_create_uhid_masters_table', 8),
(19, '2019_01_27_144115_create_doctor_reports_table', 9),
(20, '2019_01_29_152923_add_counter_id_to_users_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `parent_departments`
--

CREATE TABLE `parent_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `olangname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent_departments`
--

INSERT INTO `parent_departments` (`id`, `name`, `olangname`, `created_at`, `updated_at`) VALUES
(1, 'Physiotherapy', 'फिजियोथेरेपी ', '2019-02-07 04:30:41', '2019-06-13 07:10:06'),
(2, 'Orthopedic', 'ऑर्थोपेडिक ', '2019-02-07 04:30:57', '2019-06-13 07:22:11'),
(3, 'Surgery', 'सर्जरी', '2019-02-07 04:31:07', '2019-06-13 07:22:34'),
(4, 'Eye', 'आँख ', '2019-02-07 04:31:17', '2019-06-13 07:23:05'),
(5, 'ENT', 'इ एन  टी ', '2019-02-07 04:31:26', '2019-06-13 07:35:25'),
(6, 'Pediatric', 'पीडियाट्रिक ', '2019-02-07 04:31:52', '2019-06-24 09:46:35'),
(7, 'Dental', 'डेंटल ', '2019-02-07 04:32:03', '2019-06-24 09:46:26'),
(8, 'Family Planning', 'परिवार नियोजन ', '2019-02-07 04:32:16', '2019-06-24 09:46:15'),
(9, 'Gynecology', 'गायनोकॉलोजी ', '2019-02-07 04:32:45', '2019-06-24 09:45:44'),
(10, 'Ayurvedic', 'आयुर्वेदिक ', '2019-02-07 04:33:18', '2019-06-24 09:46:46'),
(11, 'Chest', 'चेस्ट ', '2019-02-07 04:33:28', '2019-06-24 09:46:59'),
(12, 'Psychiatry', 'साइकाइट्री ', '2019-02-07 04:35:20', '2019-06-24 09:47:16'),
(13, 'Skin', '', '2019-02-07 04:36:34', '2019-02-07 04:36:34'),
(14, 'Medical', '', '2019-02-07 04:36:45', '2019-02-07 04:36:45'),
(15, 'Medicine', '', '2019-02-07 04:36:53', '2019-02-07 04:36:53'),
(16, 'Laboratory', '', '2019-02-07 05:08:49', '2019-02-07 05:08:49'),
(17, 'Homeopathic', '', '2019-03-22 00:07:27', '2019-05-14 01:54:43'),
(18, 'Anasthesia', '', '2019-05-14 01:55:29', '2019-05-14 01:55:29'),
(19, 'Radiology', '', '2019-05-14 01:55:49', '2019-05-14 01:55:49'),
(20, 'Casualty', '', '2019-05-14 01:56:15', '2019-05-14 01:56:15'),
(21, 'Pathology', '', '2019-05-14 01:56:36', '2019-05-14 01:56:36'),
(22, 'Biochemistry', '', '2019-05-14 01:57:00', '2019-05-14 01:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patientcalls`
--

CREATE TABLE `patientcalls` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `token_number` varchar(20) NOT NULL,
  `room_number` varchar(20) NOT NULL,
  `patient_status` int(5) DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE `queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `counter_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `pname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pmobile` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pemail` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regnumber` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `called` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `uhid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '4' COMMENT '1=platinum,2=Gold,3=Silver,4=Normal',
  `customer_waiting` int(11) DEFAULT NULL,
  `queue_status` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queues`
--

INSERT INTO `queues` (`id`, `department_id`, `counter_id`, `user_id`, `number`, `pname`, `pmobile`, `pemail`, `regnumber`, `called`, `created_at`, `updated_at`, `pid`, `uhid`, `priority`, `customer_waiting`, `queue_status`) VALUES
(1, 5, 7, 21, 5000, 'deepak', NULL, NULL, 'OPGESU071985800', 1, '2019-07-26 13:39:25', '2019-07-26 13:46:53', 3, '500', 4, 0, 1),
(2, 5, 7, 21, 5001, 'rahul kumar', '8447471357', NULL, 'OPGESU071961924', 0, '2019-07-26 13:39:45', '2019-07-26 13:39:45', 3, '500', 4, 1, 1),
(3, 5, 7, 21, 5002, NULL, NULL, NULL, 'OPGESU071939940', 0, '2019-07-26 13:44:30', '2019-07-26 13:44:30', 3, '500', 4, 2, 1),
(4, 5, 7, 21, 5003, NULL, NULL, NULL, 'OPGESU071974031', 0, '2019-07-26 13:44:36', '2019-07-26 13:44:36', 3, '500', 4, 3, 1),
(5, 5, 7, 21, 5004, NULL, NULL, NULL, 'OPGESU071962542', 0, '2019-07-26 13:44:41', '2019-07-26 13:44:41', 3, '500', 4, 4, 1),
(6, 5, 7, 21, 5005, NULL, NULL, NULL, 'OPGESU071972243', 0, '2019-07-26 13:44:47', '2019-07-26 13:44:47', 3, '500', 4, 5, 1),
(7, 5, 7, 21, 5000, 'Deepak', '8447471357', NULL, 'OPGESU071915344', 0, '2019-07-29 06:26:03', '2019-07-29 06:57:46', 3, '500', 4, 1, 1),
(8, 5, NULL, NULL, 5001, 'deepe', '8447471357', NULL, 'OPGESU071952077', 0, '2019-07-29 07:19:48', '2019-07-29 07:22:19', 3, '500', 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `queue_settings`
--

CREATE TABLE `queue_settings` (
  `id` int(10) NOT NULL,
  `texteng` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `textotherlang` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `deptflag` int(10) DEFAULT NULL,
  `reg_required` int(10) DEFAULT NULL COMMENT '1 = Yes, 2 = No',
  `tokendisplay` int(3) DEFAULT NULL COMMENT '1=Department Wise, 2=Doctor Wise',
  `dr_tokenstyle` int(10) DEFAULT NULL COMMENT '1=Department with Doctor, 2=only Doctor ',
  `bgimg` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue_settings`
--

INSERT INTO `queue_settings` (`id`, `texteng`, `textotherlang`, `deptflag`, `reg_required`, `tokendisplay`, `dr_tokenstyle`, `bgimg`, `created_at`, `updated_at`) VALUES
(1, 'Click on Department to get token Number', 'टोकन  नंबर पाने के लिए विभाग पर क्लिक करें', 3, 2, 2, 2, '1560755004.jpg', '2019-08-08 05:25:16', '2019-08-08 05:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bus_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification` text COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `over_time` int(11) NOT NULL,
  `missed_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `language_id`, `name`, `bus_no`, `address`, `email`, `phone`, `location`, `notification`, `size`, `color`, `logo`, `over_time`, `missed_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'Healthy Planet- A Multispeciality Polyclinic', '', '', 'info@esic.com', '', '', 'হেল্দি প্ল্যানেট- একটি মাল্টিস্পেশালিটি পলিক্লিনিকে আপনাকে স্বাগতম', 30, '#f7184e', '1560947126.png', 30, 30, '2019-01-22 03:43:46', '2019-07-23 07:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `uhid_masters`
--

CREATE TABLE `uhid_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `uhid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority_type` int(6) NOT NULL DEFAULT '5' COMMENT '1=platinum,2=Gold,3=Silver,4=Normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhid_masters`
--

INSERT INTO `uhid_masters` (`id`, `uhid`, `uid`, `priority_type`, `created_at`, `updated_at`) VALUES
(1, '123', '48789541254785', 1, '2019-01-26 13:59:18', '2019-01-26 13:59:24'),
(2, '456', '9876789', 2, '2019-01-26 14:00:04', '2019-01-26 14:00:04'),
(3, '789', '', 3, NULL, NULL),
(4, '500', '', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ads_id` int(10) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `counter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `profile`, `username`, `ads_id`, `email`, `role`, `pid`, `department_id`, `counter_id`, `password`, `user_status`, `remember_token`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1563436236.JPG', 'Administrator', 'admin123', NULL, 'your_email@rxample.com', 'A', NULL, NULL, NULL, '$2y$10$NIRuYzTg06rAwZXmjT1snOaauS2j7.0VI0mMrV8uEZdeDFikrFu6e', '1', 'KpDlLrk1RXG9j1YwToXVnqHtNlqR6e1FPQVW0mNEnmgqRgbWB5EIrlSLe4K7', 'dkjEA4lLprlHUmQruCbtHABLBc8QReY3J9ZWHqKx', '2019-01-22 03:43:45', '2019-08-08 05:24:56'),
(3, 'mahima', '1563440608.jpg', 'Token User', 'mahima123', NULL, 'mahima@asadeltech.com', 'S', NULL, NULL, NULL, '$2y$10$yGHGpHMTZRp2Mh86IqJdXumBucGB97iY84NJj099Yk/Bw5VcqTRQ2', '1', 'sIkE7M8onoAKKvVcHsXwB9rWQdm2c7P6jQGDnhjb7PC2l0PacW93N4sUJ5lt', NULL, '2019-05-16 05:33:48', '2019-07-19 07:29:33'),
(4, 'sarita', NULL, NULL, 'sarita123', NULL, 'sarita@asadeltech.com', 'C', NULL, NULL, NULL, '$2y$10$2T3l91K/aFzuoFytsX9uhukt9vmXmBWfKpfr3XGk7gNT32km8oJke', '1', 'WQvgli4zskgaZF1h1T9huy3ULjbetPlmPqcB94a2RrHFxMZYtUeCTyrRC5rw', NULL, '2019-05-16 05:34:34', '2019-06-13 11:32:47'),
(5, 'ranjanran', NULL, NULL, 'ranjan123', NULL, 'ranjan@asadeltech.com', 'H', NULL, NULL, NULL, '$2y$10$2fucpnC.h8ejPfzUDz3RhONXfztaxShjatXKYdBNagFvi/cZQITtG', '1', 'ctpF48f4F4VjooQuwDYt2KkxSsskm5y4oyU6NHGaegzCggWcaDJYOdrigtnS', NULL, '2019-05-16 05:35:22', '2019-06-19 10:38:57'),
(6, 'Manju', NULL, NULL, 'manju123', NULL, 'manju@asadeltech.com', 'I', NULL, NULL, NULL, '$2y$10$O1FPdVMRiI3pNckPe9d.feuda39Vh9knIYjBWvhpvGcrCvNVdkndC', '1', 'LcghXO5p8E0hCAskr2YFeKOT54a2KlXtKHJbbJImB0TcZ75W09F0UYyS9zgA', NULL, '2019-05-16 05:36:21', '2019-06-18 08:56:28'),
(13, 'superadmin', '1562921437.png', 'superadmin', 'superadmin', NULL, 'info@asadeltech.com', 'O', NULL, NULL, NULL, '$2y$10$AsEvH0QOFoDk8FPjmc3vk.8Bgi7RqrIfCdACp941q9lmCoNlrwf8y', '1', 'tbD6cSuybdxhrTFq4bnGpJF7eSjmxi00prDQzL5opPJZQ1qvgEgrh8gCO8Zl', 'lFXvmcOsnAbKye7p0rU1jTsPoPMw2O7fwOSXNntb', '2019-07-11 06:22:30', '2019-07-26 13:31:57'),
(21, 'mandeep', '1562923061.JPG', 'mandeepa', 'mandeep', 10, 'deepak@asadeltech.com', 'D', 3, 5, '7', '$2y$10$ubtXrFYSTPFNN9KxSkYL0eVkVlXKIuxT52RIxPNXJX2DD4uHvGhMy', '1', 'Vvcy5ipVxZfhiMjCdGeQx5YE030GEd3AQEJeYiKNpk5CNQxW5iaazOUzarjm', 'pTYZhT6pKNSh0xXvJgJoJCtdlOl4Pswi1foi9lRT', '2019-07-12 09:17:41', '2019-07-26 13:46:43'),
(22, 'Dr. Santanu Ghosh', '1562930943.jpg', 'MBBS, Orthopedic', 'santanu', 11, 'santanu@gmail.com', 'D', 4, 7, '9', '$2y$10$2CDxc5/mNjzuovNqoMI9gOYNPhKCjftc79RnovW8eDw9.23k.ZabW', '1', 'XB6XKQqUNeOwG85xZDv5hsZmlPRVjj7RdQ8e95tWWArCGAmOYQKRJ4S7i4q6', NULL, '2019-07-12 11:29:03', '2019-07-18 06:04:21'),
(23, 'Raju', '1563260529.jpg', 'BA, COLLGEGE', 'raju123', NULL, 'raju@gmail.com', 'S', NULL, NULL, NULL, '$2y$10$1xo9Kl4nuixwkjzP.4exOu1EtDcJ8AvGyVWv8F6OiURtUUMrlWIn.', '1', NULL, NULL, '2019-07-16 07:02:09', '2019-07-16 07:02:09'),
(24, 'Dr. Epsita Ghosh', '1563367991.jpg', 'MBBS', 'epsita', 1, 'epsita@gmail.com', 'D', 6, 2, '22', '$2y$10$xbw8L3Y7lSl673RiCiPNjesNFqUhuq69JJwCPrMeGN29ZljkO7d8S', '1', 'AqXaUF3F23XYsiOGPdHwdkyIs3Vvpq2ulncKU2dmH9kgo3MoXUo2HoIoadut', NULL, '2019-07-17 12:53:11', '2019-07-19 06:59:06'),
(28, 'Dr. Shyam', '1563452336.jpg', 'MBBS, Surgery', 'shyam123', 10, 'shyam@gmail.com', 'D', 3, 5, '6', '$2y$10$LnDOaqtjDPgICF2OdwxprOdprkTCCjMpaYmrlKJ.0LlGLDV8IeBJ.', '1', NULL, NULL, '2019-07-18 12:18:56', '2019-07-18 12:19:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calls_queue_id_foreign` (`queue_id`),
  ADD KEY `calls_department_id_foreign` (`department_id`),
  ADD KEY `calls_counter_id_foreign` (`counter_id`),
  ADD KEY `calls_user_id_foreign` (`user_id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `display_settings`
--
ALTER TABLE `display_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_reports`
--
ALTER TABLE `doctor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_departments`
--
ALTER TABLE `parent_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `patientcalls`
--
ALTER TABLE `patientcalls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queues_department_id_foreign` (`department_id`);

--
-- Indexes for table `queue_settings`
--
ALTER TABLE `queue_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_language_id_foreign` (`language_id`);

--
-- Indexes for table `uhid_masters`
--
ALTER TABLE `uhid_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `display_settings`
--
ALTER TABLE `display_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `doctor_reports`
--
ALTER TABLE `doctor_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `parent_departments`
--
ALTER TABLE `parent_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `patientcalls`
--
ALTER TABLE `patientcalls`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `queue_settings`
--
ALTER TABLE `queue_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `uhid_masters`
--
ALTER TABLE `uhid_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_counter_id_foreign` FOREIGN KEY (`counter_id`) REFERENCES `counters` (`id`),
  ADD CONSTRAINT `calls_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `calls_queue_id_foreign` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`id`),
  ADD CONSTRAINT `calls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `queues`
--
ALTER TABLE `queues`
  ADD CONSTRAINT `queues_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
