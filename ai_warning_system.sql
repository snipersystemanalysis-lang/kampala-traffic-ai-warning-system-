-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2026 at 07:15 PM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stpaulsss_ai_warning_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_verification`
--

CREATE TABLE `email_verification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `code_expires` datetime NOT NULL,
  `attempts` int(11) DEFAULT 0,
  `verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `email_verification`
--

INSERT INTO `email_verification` (`id`, `user_id`, `verification_code`, `code_expires`, `attempts`, `verified_at`, `created_at`) VALUES
(4, 1, '1-DD0EF', '2026-03-18 12:10:59', 0, '2026-03-18 12:02:10', '2026-03-18 12:00:59'),
(5, 5, '5-F9FE5', '2026-03-18 12:48:40', 0, '2026-03-18 12:39:22', '2026-03-18 12:38:40'),
(6, 6, '6-D0DBC', '2026-03-19 13:11:05', 0, '2026-03-19 13:02:15', '2026-03-19 13:01:05'),
(7, 7, '7-77468', '2026-03-23 06:59:26', 0, '2026-03-23 06:57:10', '2026-03-23 06:49:26'),
(8, 8, '8-A9704', '2026-03-23 07:00:01', 0, '2026-03-23 06:51:13', '2026-03-23 06:50:01'),
(9, 8, '8-8BF84', '2026-03-23 07:01:13', 0, '2026-03-23 06:51:39', '2026-03-23 06:51:13'),
(10, 8, '8-A1672', '2026-03-23 07:01:39', 0, '2026-03-23 08:05:14', '2026-03-23 06:51:39'),
(11, 7, '7-7E40C', '2026-03-23 07:07:10', 0, '2026-03-23 06:58:42', '2026-03-23 06:57:10'),
(12, 8, '8-504A8', '2026-03-23 08:15:14', 0, '2026-03-23 08:06:04', '2026-03-23 08:05:14'),
(13, 9, '9-CDC8E', '2026-03-23 10:58:33', 0, '2026-03-23 10:52:48', '2026-03-23 10:48:33'),
(14, 10, '10-F7A01', '2026-03-23 13:00:00', 0, '2026-03-23 12:52:21', '2026-03-23 12:50:00'),
(15, 11, '11-75A8B', '2026-03-23 13:05:49', 0, '2026-03-23 13:03:13', '2026-03-23 12:55:49'),
(16, 11, '11-572A4', '2026-03-23 13:13:13', 0, '2026-03-23 13:05:22', '2026-03-23 13:03:13'),
(17, 12, '12-ECA68', '2026-03-23 15:57:53', 0, '2026-03-23 15:50:42', '2026-03-23 15:47:53'),
(18, 13, '13-BBAF1', '2026-03-24 11:37:43', 0, '2026-03-24 11:28:27', '2026-03-24 11:27:43'),
(19, 14, '14-DDA57', '2026-04-06 10:41:58', 0, '2026-04-06 10:32:47', '2026-04-06 10:31:58'),
(20, 15, '15-03306', '2026-04-09 08:26:19', 0, '2026-04-09 08:16:35', '2026-04-09 08:16:19'),
(21, 16, '16-5E3D7', '2026-04-10 19:19:44', 0, '2026-04-10 19:11:24', '2026-04-10 19:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `hotspots`
--

CREATE TABLE `hotspots` (
  `id` int(11) NOT NULL,
  `location_name` varchar(150) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `peak_start` time DEFAULT NULL,
  `peak_end` time DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hotspots`
--

INSERT INTO `hotspots` (`id`, `location_name`, `latitude`, `longitude`, `peak_start`, `peak_end`, `created_by`, `created_at`) VALUES
(2, '', -0.5380113, 30.1423503, '07:00:00', '09:00:00', 1, '2026-03-19 08:24:22'),
(3, '', 0.4353036, 33.2055568, '07:00:00', '09:00:00', 1, '2026-03-19 08:25:04'),
(5, 'Seeta', 0.0591588, 32.3473334, '09:50:00', '09:50:00', 1, '2026-03-20 06:37:18'),
(6, 'Mbarara City', -0.6107896, 30.6533181, '07:00:00', '09:00:00', 1, '2026-03-20 06:51:06'),
(7, 'Namabasa V', 1.1136490, 34.1481186, '07:00:00', '09:00:00', 1, '2026-03-20 06:51:54'),
(8, 'Kabalagala', 0.3026439, 32.5951750, '07:00:00', '09:00:00', 12, '2026-03-24 10:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reset_code` varchar(100) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remember_tokens`
--

CREATE TABLE `remember_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `id` int(11) NOT NULL,
  `log_type` enum('info','warning','error','success') DEFAULT 'info',
  `message` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `system_logs`
--

INSERT INTO `system_logs` (`id`, `log_type`, `message`, `details`, `created_by`, `created_at`) VALUES
(1, 'success', 'New hotspot added', 'Added hotspot: Seeta', 1, '2026-03-20 06:37:18'),
(2, 'success', 'New hotspot added', 'Added hotspot: Mbarara City', 1, '2026-03-20 06:51:06'),
(3, 'success', 'New hotspot added', 'Added hotspot: Namabasa V', 1, '2026-03-20 06:51:54'),
(4, 'success', 'New hotspot added', 'Added hotspot: Kabalagala', 12, '2026-03-24 10:54:44'),
(5, 'success', 'User created', 'New user: James (jameshuwei093@gmail.com) created by admin', 14, '2026-04-09 08:15:32'),
(6, 'success', 'User created', 'New user: snipersystemanalysis@gmail.com (snipersystemanalysis@gmail.com) created by admin', 1, '2026-04-22 18:45:55'),
(7, 'success', 'User created', 'New user: Emmanuel (snipersystemanalysis@gmail.com) created by admin', 1, '2026-04-22 19:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `sidebar_color` varchar(50) DEFAULT '#343a40',
  `font_family` varchar(50) DEFAULT 'Arial',
  `font_size` varchar(20) DEFAULT '14px'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `sidebar_color`, `font_family`, `font_size`) VALUES
(1, '#0c4f97', 'Times New Roman', '14px');

-- --------------------------------------------------------

--
-- Table structure for table `traffic_data`
--

CREATE TABLE `traffic_data` (
  `id` int(11) NOT NULL,
  `hotspot_id` int(11) DEFAULT NULL,
  `congestion_level` varchar(50) DEFAULT NULL,
  `vehicle_speed` decimal(5,2) DEFAULT NULL,
  `traffic_density` int(11) DEFAULT NULL,
  `recorded_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `traffic_predictions`
--

CREATE TABLE `traffic_predictions` (
  `id` int(11) NOT NULL,
  `hotspot_id` int(11) DEFAULT NULL,
  `predicted_level` varchar(50) DEFAULT NULL,
  `prediction_time` datetime DEFAULT NULL,
  `confidence_score` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `traffic_predictions`
--

INSERT INTO `traffic_predictions` (`id`, `hotspot_id`, `predicted_level`, `prediction_time`, `confidence_score`, `created_at`) VALUES
(1, 1, 'Light', '2026-03-10 11:55:33', 75.00, '2026-03-10 11:10:33'),
(2, 1, 'Light', '2026-03-17 11:45:38', 75.00, '2026-03-17 11:00:38'),
(3, 1, 'Light', '2026-03-18 12:43:32', 75.00, '2026-03-18 11:58:32'),
(4, 1, 'Light', '2026-03-19 08:57:54', 75.00, '2026-03-19 08:12:54'),
(5, 2, 'Light', '2026-03-19 14:41:32', 75.00, '2026-03-19 13:56:32'),
(6, 3, 'Light', '2026-03-19 14:41:32', 75.00, '2026-03-19 13:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `traffic_reports`
--

CREATE TABLE `traffic_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hotspot_id` int(11) DEFAULT NULL,
  `traffic_level` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT NULL,
  `status` enum('active','suspended','pending') DEFAULT 'pending',
  `email_verified` tinyint(1) DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `last_ip` varchar(45) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `role`, `status`, `email_verified`, `last_login`, `last_ip`, `verified_at`, `created_at`) VALUES
(1, 'Emmanuel', 'emmymorgan1278@gmail.com', '$2y$10$yjLpCCQW/uWerhinJMxBQOdUSHCxYLJovvaZHMB0SZnyoniKGS/Le', 'admin', 'pending', 1, '2026-04-22 19:05:13', '41.210.154.100', '2026-03-18 12:02:10', '2026-03-10 11:05:28'),
(5, 'Morgana Hayley', 'morganahaly@gmail.com', '$2y$10$.o6bI.kzoMnKPW4kYtPPM.9U87RkA03FJXHMV0KGLud.9c9xL9dnG', 'admin', 'pending', 1, NULL, NULL, '2026-03-18 12:39:22', '2026-03-18 12:38:40'),
(6, 'KAKANYERO Deogracious', 'Kakadeogracious73@gmail.com', '$2y$10$HofeAaG.JyYHY3NTfaQD0u4nMkORKBrNKwFxaSGFtapUzkhzsWomS', 'admin', 'pending', 1, '2026-04-09 08:30:30', '84.247.164.29', '2026-03-19 13:02:15', '2026-03-19 13:01:05'),
(7, 'Mugisha Enock', 'mugishaenock676@gmail.com', '$2y$10$8H0gf/DEzF9EhGNyhuswfOMrChfWhTHYMeN.mwAMQrCKtt0S84rIe', 'admin', 'pending', 1, '2026-03-23 07:06:20', '41.75.174.77', '2026-03-23 06:58:42', '2026-03-23 06:49:26'),
(8, 'Nabadda Keren', 'nabaddakeren2004@gmail.com', '$2y$10$Ssxs1Y2o4tdp3ktJHsn2Q.UCeKgxjn1Lt71nCu0UEVZ.EhmDsyKNi', 'user', 'pending', 1, '2026-03-23 11:07:48', '41.75.172.253', '2026-03-23 08:06:04', '2026-03-23 06:50:01'),
(9, 'kasirye Mark', 'kasirye0000@gmail.com', '$2y$10$dk.YAWoAf1OLQOtw2NOH9.jPyrnfKXYWKKq4Cdvx/tODvtBS8TINW', 'user', 'pending', 1, '2026-03-23 12:18:05', '102.218.37.165', '2026-03-23 10:52:48', '2026-03-23 10:48:33'),
(10, 'Tugume Isaac ', 'isaactugume950@gmail.com', '$2y$10$trAbLd76HzqQJVostW71/OGnV8y9eew46p80QrS/B0G4z1M7l8JwS', 'user', 'pending', 1, '2026-04-17 14:23:41', '197.239.5.4', '2026-03-23 12:52:21', '2026-03-23 12:50:00'),
(11, 'KEMIGISA HASIFAH', 'hasfahkemigisa@gmail.com', '$2y$10$j9app/qOwCiYRixi1NV6hufWqgNMuV2KWYUmWUvoCH1XE5of2PRHC', 'user', 'pending', 1, '2026-04-07 13:14:35', '41.210.145.48', '2026-03-23 13:05:22', '2026-03-23 12:55:49'),
(12, 'Alinaitwe Shannet', 'shannetalinaitwe@gmail.com', '$2y$10$2CzAb3alds6HWemlQ0hpYevegFhP5mfYiTnJZWO94HAfvCEk1nCVu', 'admin', 'pending', 1, '2026-03-24 10:48:57', '41.75.184.192', '2026-03-23 15:50:42', '2026-03-23 15:47:53'),
(13, 'Kabaale', 'oundoalex27@gmail.com', '$2y$10$RZ5OOkJbf79NSd4NvR6LLu0lH8eoti1KIJ3lhk.ytZuoWFfeEZn4C', 'admin', 'pending', 1, '2026-03-26 20:24:50', '161.97.64.230', '2026-03-24 11:28:27', '2026-03-24 11:27:43'),
(14, 'Parsonal Diaz7ihjb', 'parsonaldiaz@gmail.com', '$2y$10$fHiXYdPSwKsj.qP4oN8si.x4hbs0EMyeolPQV7p4ctpPR3yIAvp5C', 'admin', 'pending', 1, '2026-04-09 08:08:54', '41.75.177.18', '2026-04-06 10:32:47', '2026-04-06 10:31:58'),
(15, 'James', 'jameshuwei093@gmail.com', '$2y$10$dhgcH.ZQpp8Dr7bvYNjtGuqeyDfY46u1OJrr.IBHMZmECQHc89jGW', 'user', 'active', 1, '2026-04-10 11:11:41', '41.75.174.86', '2026-04-09 08:16:35', '2026-04-09 08:15:32'),
(16, 'Emmanuel', 'ngorokemmymorgan@gmail.com', '$2y$10$.VtdtvfzeS.pJLsz0CrLM.ovh8zEm25.YyxyMPFTjJxvC5Dk0fFqO', 'admin', 'pending', 1, NULL, NULL, '2026-04-10 19:11:24', '2026-04-10 19:09:44'),
(22, 'Emmanuel', 'snipersystemanalysis@gmail.com', '$2y$10$z5ScWOk1sr.5E5a.qCPk4.Jn7nwQLpW9SXzVtkY8JUZz0SNU2TMo2', 'user', 'active', 1, '2026-04-22 19:09:04', '41.210.154.100', NULL, '2026-04-22 19:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_logs`
--

CREATE TABLE `user_activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_activity_logs`
--

INSERT INTO `user_activity_logs` (`id`, `user_id`, `action`, `details`, `ip_address`, `created_at`) VALUES
(1, 1, 'login', 'Successful login', '41.210.154.15', '2026-03-20 06:09:01'),
(2, 1, 'login', 'Successful login', '41.210.154.15', '2026-03-20 06:10:40'),
(3, 1, 'login', 'Successful login', '41.210.154.15', '2026-03-20 06:14:36'),
(4, 1, 'login', 'Successful login', '41.210.154.15', '2026-03-20 07:47:57'),
(5, 1, 'login', 'Successful login', '41.210.154.15', '2026-03-20 16:06:03'),
(6, 6, 'login', 'Successful login', '162.212.154.126', '2026-03-20 16:06:12'),
(7, 6, 'login', 'Successful login', '212.28.187.234', '2026-03-20 19:29:02'),
(8, 6, 'login', 'Successful login', '212.28.187.234', '2026-03-20 19:29:37'),
(9, 6, 'login', 'Successful login', '212.28.187.234', '2026-03-20 19:33:30'),
(10, 6, 'login', 'Successful login', '212.28.187.234', '2026-03-20 21:16:10'),
(11, 1, 'login', 'Successful login', '41.75.174.77', '2026-03-23 06:30:11'),
(12, 1, 'login', 'Successful login', '41.75.174.77', '2026-03-23 06:30:39'),
(13, 1, 'login', 'Successful login', '41.75.174.77', '2026-03-23 06:33:39'),
(14, 8, 'login_failed', 'Attempted login with unverified email', '41.75.172.253', '2026-03-23 06:52:55'),
(15, 7, 'login', 'Successful login', '41.75.174.77', '2026-03-23 06:59:01'),
(16, 7, 'login_failed', 'Invalid password attempt', '41.75.174.77', '2026-03-23 07:00:34'),
(17, 7, 'login_failed', 'Invalid password attempt', '41.75.174.77', '2026-03-23 07:00:54'),
(18, 7, 'login_failed', 'Invalid password attempt', '41.75.174.77', '2026-03-23 07:01:00'),
(19, 7, 'login', 'Successful login', '41.75.174.77', '2026-03-23 07:02:23'),
(20, 7, 'login', 'Successful login', '41.75.174.77', '2026-03-23 07:06:20'),
(21, 8, 'login_failed', 'Attempted login with unverified email', '41.75.172.253', '2026-03-23 08:02:34'),
(22, 8, 'login_failed', 'Attempted login with unverified email', '41.75.172.253', '2026-03-23 08:03:44'),
(23, 8, 'login', 'Successful login', '41.75.172.253', '2026-03-23 08:06:06'),
(24, 8, 'login', 'Successful login', '41.75.172.253', '2026-03-23 10:24:26'),
(25, 9, 'login', 'Successful login', '102.218.37.165', '2026-03-23 10:53:12'),
(26, 8, 'login', 'Successful login', '41.75.172.253', '2026-03-23 11:07:48'),
(27, 1, 'login', 'Successful login', '41.75.191.214', '2026-03-23 11:17:24'),
(28, 1, 'login', 'Successful login', '41.75.191.214', '2026-03-23 11:28:16'),
(29, 1, 'login', 'Successful login', '41.75.191.214', '2026-03-23 11:30:09'),
(30, 9, 'login', 'Successful login', '102.218.37.165', '2026-03-23 12:18:05'),
(31, 6, 'login', 'Successful login', '212.28.187.234', '2026-03-23 12:23:25'),
(32, 1, 'login', 'Successful login', '41.75.191.214', '2026-03-23 12:33:52'),
(33, 1, 'login', 'Successful login', '41.75.191.214', '2026-03-23 12:44:44'),
(34, 10, 'login', 'Successful login', '102.209.111.226', '2026-03-23 12:52:29'),
(35, 11, 'login_failed', 'Attempted login with unverified email', '102.86.5.181', '2026-03-23 13:02:26'),
(36, 11, 'login', 'Successful login', '102.86.5.181', '2026-03-23 13:05:24'),
(37, 1, 'login', 'Successful login', '41.75.191.214', '2026-03-23 15:18:41'),
(38, 12, 'login', 'Successful login', '102.209.111.251', '2026-03-23 15:50:54'),
(39, 12, 'login', 'Successful login', '102.86.1.47', '2026-03-24 06:10:44'),
(40, 12, 'login', 'Successful login', '41.75.184.192', '2026-03-24 10:48:57'),
(41, 1, 'login', 'Successful login', '41.75.184.192', '2026-03-24 10:53:41'),
(42, 13, 'login', 'Successful login', '173.249.14.157', '2026-03-24 11:28:44'),
(43, 10, 'login', 'Successful login', '197.239.13.128', '2026-03-25 16:14:03'),
(44, 13, 'login', 'Successful login', '161.97.64.230', '2026-03-26 20:24:50'),
(45, 1, 'login', 'Successful login', '41.210.147.172', '2026-03-29 06:30:03'),
(46, 6, 'login', 'Successful login', '197.157.24.57', '2026-03-30 10:36:56'),
(47, 1, 'login', 'Successful login', '41.210.147.31', '2026-04-06 07:13:36'),
(48, 1, 'login', 'Successful login', '41.210.147.31', '2026-04-06 07:41:53'),
(49, 1, 'login', 'Successful login', '41.210.147.31', '2026-04-06 08:12:44'),
(50, 14, 'login', 'Successful login', '41.210.147.31', '2026-04-06 10:32:52'),
(51, 14, 'login', 'Successful login', '41.210.147.31', '2026-04-06 13:31:34'),
(52, 14, 'login', 'Successful login', '41.210.147.31', '2026-04-06 14:44:56'),
(53, 14, 'login', 'Successful login', '41.210.147.31', '2026-04-06 15:40:12'),
(54, 11, 'login_failed', 'Invalid password attempt', '41.210.145.48', '2026-04-07 13:14:21'),
(55, 11, 'login', 'Successful login', '41.210.145.48', '2026-04-07 13:14:35'),
(56, 14, 'login', 'Successful login', '41.75.184.187', '2026-04-08 10:22:21'),
(57, 14, 'login', 'Successful login', '41.75.182.32', '2026-04-09 06:12:59'),
(58, 14, 'login', 'Successful login', '41.75.182.32', '2026-04-09 07:15:23'),
(59, 8, 'login_failed', 'Invalid password attempt', '41.75.182.152', '2026-04-09 07:18:50'),
(60, 8, 'login_failed', 'Invalid password attempt', '41.75.182.152', '2026-04-09 07:19:05'),
(61, 8, 'login_failed', 'Invalid password attempt', '41.75.182.152', '2026-04-09 07:23:14'),
(62, 8, 'login_failed', 'Invalid password attempt', '41.75.182.152', '2026-04-09 07:28:05'),
(63, 8, 'login_failed', 'Invalid password attempt', '41.75.182.152', '2026-04-09 07:28:18'),
(64, 8, 'login_failed', 'Invalid password attempt', '41.75.182.152', '2026-04-09 07:28:21'),
(65, 8, 'login_failed', 'Invalid password attempt', '41.75.182.152', '2026-04-09 07:31:35'),
(66, 10, 'login', 'Successful login', '102.86.6.109', '2026-04-09 07:45:54'),
(67, 14, 'login', 'Successful login', '41.75.177.18', '2026-04-09 08:08:54'),
(68, 15, 'login_failed', 'Attempted login with unverified email', '41.75.177.18', '2026-04-09 08:16:03'),
(69, 15, 'login', 'Successful login', '41.75.177.18', '2026-04-09 08:16:36'),
(70, 15, 'login', 'Successful login', '41.75.177.18', '2026-04-09 08:16:44'),
(71, 6, 'login', 'Successful login', '84.247.164.29', '2026-04-09 08:30:30'),
(72, 15, 'login', 'Successful login', '41.75.177.18', '2026-04-09 08:48:49'),
(73, 15, 'login', 'Successful login', '41.75.174.86', '2026-04-10 11:11:41'),
(74, 10, 'login', 'Successful login', '197.239.5.4', '2026-04-17 14:23:41'),
(75, 16, 'login_failed', 'Invalid password attempt', '41.75.190.156', '2026-04-22 13:08:42'),
(76, 1, 'login', 'Successful login', '41.75.190.156', '2026-04-22 13:08:56'),
(77, 1, 'login', 'Successful login', '41.210.154.100', '2026-04-22 18:33:09'),
(82, 16, 'login_failed', 'Invalid password attempt', '41.210.154.100', '2026-04-22 19:05:07'),
(83, 1, 'login', 'Successful login', '41.210.154.100', '2026-04-22 19:05:13'),
(84, 22, 'login', 'Successful login', '41.210.154.100', '2026-04-22 19:09:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_verification`
--
ALTER TABLE `email_verification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `verification_code` (`verification_code`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hotspots`
--
ALTER TABLE `hotspots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reset_code` (`reset_code`);

--
-- Indexes for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traffic_data`
--
ALTER TABLE `traffic_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traffic_predictions`
--
ALTER TABLE `traffic_predictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traffic_reports`
--
ALTER TABLE `traffic_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_verification`
--
ALTER TABLE `email_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hotspots`
--
ALTER TABLE `hotspots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `traffic_data`
--
ALTER TABLE `traffic_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `traffic_predictions`
--
ALTER TABLE `traffic_predictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `traffic_reports`
--
ALTER TABLE `traffic_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `email_verification`
--
ALTER TABLE `email_verification`
  ADD CONSTRAINT `email_verification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  ADD CONSTRAINT `remember_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD CONSTRAINT `user_activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
