-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2022 at 09:59 AM
-- Server version: 8.0.29
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_11_154047_create_weather_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hanieh Rohban', 'h.rohban@gmail.com', NULL, '$2y$10$eOtv.7mRkNiyrUWd45MBXuYdts6yW.fer2KhuVE0FuM1okyMdGgie', NULL, '2022-06-14 17:07:32', '2022-06-14 17:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specified_at` timestamp NULL DEFAULT NULL,
  `latitude` double(8,2) DEFAULT NULL,
  `longitude` double(8,2) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datetime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conditions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunrise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempmax` double(8,2) DEFAULT NULL,
  `tempmin` double(8,2) DEFAULT NULL,
  `dew` double(8,2) DEFAULT NULL,
  `humidity` double(8,2) DEFAULT NULL,
  `pressure` double(8,2) DEFAULT NULL,
  `windspeed` double(8,2) DEFAULT NULL,
  `visibility` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `name`, `specified_at`, `latitude`, `longitude`, `location`, `datetime`, `conditions`, `description`, `icon`, `sunrise`, `sunset`, `tempmax`, `tempmin`, `dew`, `humidity`, `pressure`, `windspeed`, `visibility`, `created_at`, `updated_at`) VALUES
(10, 'Hanieh Rohban', '2022-06-11 23:00:00', 51.51, -0.13, 'london', '2022-06-12', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:43:23', '21:17:45', 71.10, 54.20, 45.60, 55.90, 1023.30, 15.80, 8.40, '2022-06-12 16:13:20', '2022-06-12 16:13:20'),
(11, 'Hanieh Rohban', '2022-06-12 23:00:00', 51.51, -0.13, 'london', '2022-06-13', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:43:09', '21:18:22', 69.00, 51.00, 44.30, 56.20, 1024.00, 6.30, 15.00, '2022-06-12 16:17:37', '2022-06-12 16:17:37'),
(12, 'Hanieh Rohban', '2022-06-07 23:00:00', 51.51, -0.13, 'london', '2022-06-08', 'Rain, Partially cloudy', 'Partly cloudy throughout the day with rain clearing later.', 'rain', '04:44:48', '21:14:52', 71.10, 57.10, 51.30, 66.50, 1005.60, 18.40, 6.10, '2022-06-12 16:22:45', '2022-06-12 16:22:45'),
(13, 'Hanieh Rohban', '2022-06-07 23:00:00', 51.51, -0.13, 'london', '2022-06-08', 'Rain, Partially cloudy', 'Partly cloudy throughout the day with rain clearing later.', 'rain', '04:44:48', '21:14:52', 71.10, 57.10, 51.30, 66.50, 1005.60, 18.40, 6.10, '2022-06-12 16:24:02', '2022-06-12 16:24:02'),
(14, 'Hanieh Rohban', '2022-06-07 23:00:00', 51.51, -0.13, 'london', '2022-06-08', 'Rain, Partially cloudy', 'Partly cloudy throughout the day with rain clearing later.', 'rain', '04:44:48', '21:14:52', 71.10, 57.10, 51.30, 66.50, 1005.60, 18.40, 6.10, '2022-06-12 16:28:29', '2022-06-12 16:28:29'),
(15, 'Hanieh Rohban', '2022-06-07 23:00:00', 51.51, -0.13, 'london', '2022-06-08', 'Rain, Partially cloudy', 'Partly cloudy throughout the day with rain clearing later.', 'rain', '04:44:48', '21:14:52', 71.10, 57.10, 51.30, 66.50, 1005.60, 18.40, 6.10, '2022-06-12 16:32:38', '2022-06-12 16:32:38'),
(16, 'Hanieh Rohban', '2022-06-14 23:00:00', 51.51, -0.13, 'london', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:51', '21:19:27', 76.70, 55.50, 49.60, 55.40, 1018.90, 8.10, 15.00, '2022-06-12 16:33:36', '2022-06-12 16:33:36'),
(17, 'Hanieh Rohban', '2022-06-14 23:00:00', 51.51, -0.13, 'london', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:51', '21:19:27', 76.70, 55.50, 49.60, 55.40, 1018.90, 8.10, 15.00, '2022-06-12 17:13:06', '2022-06-12 17:13:06'),
(18, 'Hanieh Rohban', '2022-06-14 23:00:00', 51.51, -0.13, 'london', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:51', '21:19:27', 76.70, 55.50, 49.60, 55.40, 1018.90, 8.10, 15.00, '2022-06-12 17:14:15', '2022-06-12 17:14:15'),
(19, 'Hanieh Rohban', '2022-06-14 23:00:00', 51.51, -0.13, 'london', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:51', '21:19:27', 76.70, 55.50, 49.60, 55.40, 1018.90, 8.10, 15.00, '2022-06-12 17:16:38', '2022-06-12 17:16:38'),
(20, 'Hanieh Rohban', '2022-06-11 23:00:00', 53.48, -2.25, 'manchester', '2022-06-12', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:40:19', '21:37:50', 62.50, 53.60, 45.80, 65.40, 1021.70, 18.90, 7.60, '2022-06-12 17:17:28', '2022-06-12 17:17:28'),
(21, 'Hanieh Rohban', '2022-06-11 23:00:00', 53.48, -2.25, 'manchester', '2022-06-12', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:40:19', '21:37:50', 62.50, 53.60, 45.80, 65.40, 1021.70, 18.90, 7.60, '2022-06-12 17:35:46', '2022-06-12 17:35:46'),
(22, 'Hanieh Rohban', '2022-06-11 23:00:00', 53.48, -2.25, 'manchester', '2022-06-12', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:40:19', '21:37:50', 62.50, 53.60, 45.80, 65.40, 1021.70, 18.90, 7.60, '2022-06-12 17:37:13', '2022-06-12 17:37:13'),
(23, 'Hanieh Rohban', '2022-06-14 23:00:00', 51.51, -0.13, 'london', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:51', '21:19:27', 76.70, 55.50, 49.60, 55.40, 1018.90, 8.10, 15.00, '2022-06-12 17:37:31', '2022-06-12 17:37:31'),
(24, 'Hanieh Rohban', '2022-06-14 23:00:00', 51.51, -0.13, 'london', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:51', '21:19:27', 76.70, 55.50, 49.60, 55.40, 1018.90, 8.10, 15.00, '2022-06-12 17:38:48', '2022-06-12 17:38:48'),
(25, 'Hanieh Rohban', '2022-06-14 23:00:00', 51.51, -0.13, 'london', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:51', '21:19:27', 76.70, 55.50, 49.60, 55.40, 1018.90, 8.10, 15.00, '2022-06-12 17:42:51', '2022-06-12 17:42:51'),
(26, 'Hanieh Rohban', '2022-06-14 23:00:00', 51.51, -0.13, 'london', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:51', '21:19:27', 76.70, 55.50, 49.60, 55.40, 1018.90, 8.10, 15.00, '2022-06-12 17:42:59', '2022-06-12 17:42:59'),
(27, 'Hanieh Rohban', '2022-06-07 23:00:00', 53.48, -2.25, 'manchester', '2022-06-08', 'Rain, Partially cloudy', 'Partly cloudy throughout the day with a chance of rain throughout the day.', 'rain', '04:41:59', '21:34:42', 64.20, 52.10, 53.30, 82.70, 1003.60, 12.10, 6.10, '2022-06-13 15:01:43', '2022-06-13 15:01:43'),
(28, 'Hanieh Rohban', '2022-06-07 23:00:00', 53.48, -2.25, 'manchester', '2022-06-08', 'Rain, Partially cloudy', 'Partly cloudy throughout the day with a chance of rain throughout the day.', 'rain', '04:41:59', '21:34:42', 64.20, 52.10, 53.30, 82.70, 1003.60, 12.10, 6.10, '2022-06-13 15:03:02', '2022-06-13 15:03:02'),
(29, 'Hanieh Rohban', '2022-06-07 23:00:00', 53.48, -2.25, 'manchester', '2022-06-08', 'Rain, Partially cloudy', 'Partly cloudy throughout the day with a chance of rain throughout the day.', 'rain', '04:41:59', '21:34:42', 64.20, 52.10, 53.30, 82.70, 1003.60, 12.10, 6.10, '2022-06-13 15:05:15', '2022-06-13 15:05:15'),
(34, 'test', '2022-06-12 23:00:00', 41.90, 12.50, 'italy', '2022-06-13', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:34:19', '20:46:05', 88.80, 65.60, 53.90, 47.10, 1015.20, 11.30, 8.00, '2022-06-13 15:23:52', '2022-06-13 15:23:52'),
(35, 'Hanieh Rohban', '2022-06-20 23:00:00', 53.48, -2.25, 'manchester', '2022-06-21', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:39:53', '21:41:47', 59.80, 53.70, 51.20, 79.90, 1016.90, 13.00, 14.50, '2022-06-13 15:35:46', '2022-06-13 15:35:46'),
(36, 'Hanieh Rohban', '2022-06-01 23:00:00', 53.48, -2.25, 'manchester', '2022-06-02', 'Partially cloudy', 'Becoming cloudy in the afternoon.', 'partly-cloudy-day', '04:46:07', '21:28:38', 64.80, 42.90, 46.20, 73.00, 1019.60, 7.00, 20.10, '2022-06-13 16:16:03', '2022-06-13 16:16:03'),
(37, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:24:46', '2022-06-13 16:24:46'),
(38, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:28:38', '2022-06-13 16:28:38'),
(39, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:28:45', '2022-06-13 16:28:45'),
(40, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:31:02', '2022-06-13 16:31:02'),
(41, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:31:06', '2022-06-13 16:31:06'),
(42, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:32:27', '2022-06-13 16:32:27'),
(43, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:33:04', '2022-06-13 16:33:04'),
(44, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:33:35', '2022-06-13 16:33:35'),
(45, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:47:59', '2022-06-13 16:47:59'),
(46, 'Hanieh Rohban', '2022-06-16 23:00:00', 51.51, -0.13, 'london', '2022-06-17', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:42:45', '21:20:20', 86.60, 62.30, 54.60, 51.30, 1019.70, 8.70, 15.00, '2022-06-13 16:48:33', '2022-06-13 16:48:33'),
(47, 'Hanieh Rohban', '2022-06-01 23:00:00', 53.48, -2.25, 'manchester', '2022-06-02', 'Partially cloudy', 'Becoming cloudy in the afternoon.', 'partly-cloudy-day', '04:46:07', '21:28:38', 64.80, 42.90, 46.20, 73.00, 1019.60, 7.00, 20.10, '2022-06-13 16:53:33', '2022-06-13 16:53:33'),
(48, 'hanieh rohban', '2022-06-12 23:00:00', 41.90, 12.50, 'italy', '2022-06-13', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:34:19', '20:46:05', 88.80, 65.60, 54.00, 47.00, 1015.20, 11.30, 7.70, '2022-06-13 16:58:50', '2022-06-13 16:58:50'),
(49, 'hanieh   rohban', '2022-06-12 23:00:00', 40.42, -3.69, 'spain', '2022-06-13', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '06:44:05', '21:45:50', 100.80, 68.90, 40.70, 21.90, 1017.80, 9.30, 7.70, '2022-06-13 16:59:20', '2022-06-13 16:59:20'),
(60, 'test', '2022-06-12 23:00:00', 53.48, -2.25, 'manchester', '2022-06-13', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:40:03', '21:38:29', 60.70, 53.30, 45.90, 68.10, 1024.00, 11.80, 6.20, '2022-06-13 21:18:28', '2022-06-13 21:18:28'),
(62, 'test', '2022-06-12 23:00:00', 53.48, -2.25, 'manchester', '2022-06-13', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:40:03', '21:38:29', 60.70, 53.30, 45.90, 68.10, 1024.00, 11.80, 6.20, '2022-06-13 21:43:16', '2022-06-13 21:43:16'),
(66, 'Hanieh Rohban', '2022-06-13 23:00:00', 53.48, -2.25, 'manchester', '2022-06-14', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:39:50', '21:39:05', 66.30, 47.40, 44.70, 63.30, 1021.70, 6.00, 14.60, '2022-06-13 22:34:22', '2022-06-13 22:34:22'),
(67, 'Hanieh Rohban', '2022-06-13 23:00:00', 41.90, 12.50, 'italy', '2022-06-14', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '05:34:17', '20:46:32', 88.40, 64.30, 59.20, 58.80, 1015.70, 11.70, 8.40, '2022-06-14 14:21:12', '2022-06-14 14:21:12'),
(68, 'Hanieh Rohban', '2022-06-13 23:00:00', 41.90, 12.50, 'italy', '2022-06-14', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '05:34:17', '20:46:32', 88.40, 64.30, 59.20, 58.80, 1015.70, 11.70, 8.40, '2022-06-14 14:21:47', '2022-06-14 14:21:47'),
(69, 'Hanieh Rohban', '2022-06-14 23:00:00', 53.48, -2.25, 'manchester', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:39:40', '21:39:38', 71.90, 51.90, 48.80, 64.50, 1019.00, 7.60, 15.00, '2022-06-14 14:38:41', '2022-06-14 14:38:41'),
(70, 'Hanieh Rohban', '2022-06-14 23:00:00', 53.48, -2.25, 'manchester', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:39:40', '21:39:38', 71.90, 51.90, 48.80, 64.50, 1019.00, 7.60, 15.00, '2022-06-14 14:39:08', '2022-06-14 14:39:08'),
(71, 'Hanieh Rohban', '2022-06-14 23:00:00', 53.48, -2.25, 'manchester', '2022-06-15', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '04:39:40', '21:39:38', 71.90, 51.90, 48.80, 64.50, 1019.00, 7.60, 15.00, '2022-06-14 14:40:15', '2022-06-14 14:40:15'),
(72, 'test', '2022-06-13 23:00:00', 41.90, 12.50, 'italy', '2022-06-14', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '05:34:17', '20:46:32', 88.40, 64.30, 59.20, 58.80, 1015.80, 13.40, 8.00, '2022-06-14 15:25:10', '2022-06-14 15:25:10'),
(73, 'Hanieh Rohban', '2022-06-13 23:00:00', 35.69, 51.41, 'Tehran', '2022-06-14', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:48:01', '20:21:22', 98.80, 83.90, 21.60, 8.70, 1008.80, 17.90, 6.50, '2022-06-14 15:52:47', '2022-06-14 15:52:47'),
(74, 'Hanieh Rohban', '2022-06-13 23:00:00', 35.69, 51.41, 'Tehran', '2022-06-14', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:48:01', '20:21:22', 98.80, 83.90, 21.60, 8.70, 1008.80, 17.90, 6.50, '2022-06-14 15:53:35', '2022-06-14 15:53:35'),
(75, 'Hanieh Rohban', '2022-06-13 23:00:00', 35.69, 51.41, 'Tehran', '2022-06-14', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:48:01', '20:21:22', 98.80, 83.90, 21.60, 8.70, 1008.80, 17.90, 6.50, '2022-06-14 15:54:09', '2022-06-14 15:54:09'),
(76, 'Hanieh Rohban', '2022-06-13 23:00:00', 35.69, 51.41, 'Tehran', '2022-06-14', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:48:01', '20:21:22', 98.80, 83.90, 21.60, 8.70, 1008.80, 17.90, 6.50, '2022-06-14 15:54:32', '2022-06-14 15:54:32'),
(77, 'Hanieh Rohban', '2022-06-13 23:00:00', 35.69, 51.41, 'Tehran', '2022-06-14', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:48:01', '20:21:22', 98.80, 83.90, 21.60, 8.70, 1008.80, 17.90, 6.50, '2022-06-14 15:56:58', '2022-06-14 15:56:58'),
(78, 'Hanieh Rohban', '2022-06-13 23:00:00', 35.69, 51.41, 'Tehran', '2022-06-14', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:48:01', '20:21:22', 98.80, 83.90, 21.60, 8.70, 1008.80, 17.90, 6.50, '2022-06-14 15:57:37', '2022-06-14 15:57:37'),
(79, 'Hanieh Rohban', '2022-06-13 23:00:00', 35.69, 51.41, 'Tehran', '2022-06-14', 'Clear', 'Clear conditions throughout the day.', 'clear-day', '05:48:01', '20:21:22', 98.80, 83.90, 21.60, 8.70, 1008.80, 17.90, 6.50, '2022-06-14 15:59:45', '2022-06-14 15:59:45'),
(80, 'Hanieh Rohban', '2022-06-28 23:00:00', 32.74, 35.32, 'Mashhad', '2022-06-29', 'Partially cloudy', '', 'partly-cloudy-day', '05:33:37', '19:50:42', 88.20, 67.90, 63.40, 60.30, 1008.00, 13.40, 6.20, '2022-06-14 16:02:07', '2022-06-14 16:02:07'),
(81, 'Hanieh Rohban', '2022-06-13 23:00:00', 32.74, 35.32, 'Mashhad', '2022-06-14', 'Partially cloudy', 'Partly cloudy throughout the day.', 'partly-cloudy-day', '05:30:21', '19:47:46', 83.70, 68.40, 64.60, 71.20, 1010.00, 11.90, 9.50, '2022-06-14 16:58:00', '2022-06-14 16:58:00'),
(82, 'test', '2022-06-15 23:00:00', 41.90, 12.50, 'italy', '2022-06-16', 'Partially cloudy', 'Becoming cloudy in the afternoon.', 'partly-cloudy-day', '05:34:18', '20:47:19', 87.90, 65.90, 62.20, 64.50, 1017.30, 8.70, 15.00, '2022-06-14 17:22:33', '2022-06-14 17:22:33'),
(83, 'test', '2022-06-16 23:00:00', 41.90, 12.50, 'italy', '2022-06-17', 'Partially cloudy', 'Becoming cloudy in the afternoon.', 'partly-cloudy-day', '05:34:22', '20:47:40', 90.80, 66.50, 61.00, 60.10, 1017.70, 9.20, 14.80, '2022-06-14 17:23:08', '2022-06-14 17:23:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
