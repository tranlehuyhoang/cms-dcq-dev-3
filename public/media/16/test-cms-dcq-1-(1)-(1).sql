-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 13, 2024 at 01:10 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test-cms-dcq-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `code`, `address`, `phone`, `facebook`, `created_at`, `updated_at`) VALUES
(1, 'Customer1', 'customer1', NULL, NULL, NULL, NULL, NULL),
(2, 'Customer2', 'customer2', NULL, NULL, NULL, NULL, NULL),
(3, 'Customer3', 'customer3', 'Duhok, Iraq', NULL, 'https://www.facebook.com', '2024-01-05 10:21:27', '2024-01-05 10:21:27'),
(4, 'Customer4', 'customer4', 'Thành phố Hồ Chí Minh, Việt Nam', NULL, 'https://www.facebook.com', '2024-01-05 10:21:27', '2024-01-05 10:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `dcq_projects`
--

CREATE TABLE `dcq_projects` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `budget` int(20) DEFAULT NULL,
  `customer_id` int(20) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` enum('active','pending') NOT NULL DEFAULT 'active',
  `due_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `progress` double(5,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcq_projects`
--

INSERT INTO `dcq_projects` (`id`, `name`, `code`, `budget`, `customer_id`, `description`, `status`, `due_date`, `start_date`, `progress`, `created_at`, `updated_at`) VALUES
(1, 'Project1', 'project1', NULL, 1, NULL, 'active', '2024-01-30 10:30:48', NULL, 30.50, NULL, NULL),
(2, 'Project2', 'project2', NULL, 1, NULL, 'active', '2024-01-30 10:30:48', NULL, 30.50, NULL, NULL),
(3, 'Project3', 'project3', 10000000, 1, NULL, 'active', '2024-01-31 23:30:00', NULL, 0.00, '2024-01-03 08:48:33', '2024-01-05 04:13:58'),
(4, 'Project4', 'project4', NULL, 2, '', 'active', '2024-01-31 06:16:00', NULL, NULL, '2024-01-04 00:55:55', '2024-01-06 23:16:23'),
(6, 'Project5', 'project5', 1000000, 3, '', 'pending', '2024-01-13 10:30:00', NULL, NULL, '2024-01-05 03:34:14', '2024-01-07 10:40:36'),
(7, 'Project6', 'project6', 15000000, 1, '', 'pending', '2024-01-31 00:00:00', NULL, NULL, '2024-01-05 04:00:51', '2024-01-07 10:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `conversions_disk` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generated_conversions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`, `conversions_disk`, `uuid`, `generated_conversions`) VALUES
(2, 'App\\Models\\User', 4, 'avatar', 'avatar-1', 'avatar-1.jpeg', 'image/jpeg', 'public', 3511, '[]', '[]', '[]', 1, '2024-01-11 20:24:19', '2024-01-11 20:24:19', 'public', '9ebd4225-b1bf-487c-8b8d-1d06ca2086cf', '[]'),
(3, 'App\\Models\\User', 10, 'avatar', 'avatar-1', 'avatar-1.jpeg', 'image/jpeg', 'public', 3511, '[]', '[]', '[]', 1, '2024-01-11 20:34:08', '2024-01-11 20:34:08', 'public', 'fcfc674e-c5be-4943-8a31-e4161a9b758b', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_10_112120_add_column_allowance_to_users_table', 2),
(6, '2024_01_10_150340_add_column_country_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total` int(20) DEFAULT NULL,
  `type` enum('expense','revenue') DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `entry_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`id`, `name`, `total`, `type`, `note`, `entry_date`, `created_at`, `updated_at`) VALUES
(1, 'Công dự án 1', 5000000, 'revenue', '', '2024-01-03 14:08:28', '2024-01-04 13:02:10', '2024-01-04 13:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `code`) VALUES
(1, 'Admin', 'admin'),
(2, 'Manager', 'manager'),
(3, 'Fresher', 'fresher'),
(4, 'Developer', 'developer');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(20) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `assign_to` int(20) DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `approved_by` int(20) DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `task_value` double(5,2) DEFAULT NULL,
  `parent_id` int(20) DEFAULT '0',
  `project_id` int(20) DEFAULT NULL,
  `priority` enum('hight','medium','low') NOT NULL DEFAULT 'medium',
  `status` enum('in_progress','pending','complete','awaiting confirmation','to do') NOT NULL DEFAULT 'to do',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `code`, `name`, `description`, `assign_to`, `created_by`, `approved_by`, `due_date`, `task_value`, `parent_id`, `project_id`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'task01', 'Task 01', '', 3, 2, 3, '2024-01-06 09:30:00', 1.00, 0, 1, 'low', 'to do', NULL, '2024-01-02 21:14:14'),
(3, 'task02', 'Task 02', '', 3, NULL, 3, '2024-01-31 01:23:00', 1.00, 0, 1, 'medium', 'to do', '2024-01-02 06:15:40', '2024-01-03 18:23:33'),
(4, 'task03', 'Task 03', '', 3, NULL, 3, '2024-01-13 23:30:00', 5.00, 0, 2, 'low', 'to do', '2024-01-02 21:41:13', '2024-01-02 21:50:48'),
(5, 'task04', 'Task 04', '', 3, NULL, 3, '2024-01-04 02:36:00', 10.00, 0, 4, 'medium', 'to do', '2024-01-03 17:57:34', '2024-01-03 19:37:09'),
(6, 'task05', 'Task 05', '', 3, NULL, 3, '2023-12-28 09:00:00', 4.00, 5, 4, 'low', 'complete', '2024-01-03 18:02:36', '2024-01-03 18:14:34'),
(7, NULL, 'Task 06', '', 3, NULL, 3, '2024-01-04 00:00:00', 4.00, 5, 4, 'medium', 'to do', '2024-01-03 18:18:33', '2024-01-03 18:18:33'),
(8, NULL, 'Task 07', '', 3, NULL, 3, '2024-01-05 00:30:00', 1.00, 5, 4, 'medium', 'to do', '2024-01-03 18:21:59', '2024-01-03 19:17:46'),
(9, NULL, 'Task 08', NULL, 3, NULL, 3, '2024-01-05 00:30:00', 3.00, 0, 1, 'hight', 'complete', '2024-01-03 19:44:50', '2024-01-05 01:14:46'),
(10, NULL, 'Task 09', '', 3, NULL, 3, '2024-01-05 10:30:00', 3.00, 0, 1, 'hight', 'awaiting confirmation', '2024-01-03 20:05:06', '2024-01-04 01:33:20'),
(11, NULL, 'Task 10', NULL, 6, NULL, 3, '2024-01-05 15:00:00', NULL, 0, 6, 'hight', 'to do', '2024-01-04 20:57:51', '2024-01-04 20:59:20'),
(12, NULL, 'Task 11', '', 3, NULL, 3, '2024-01-05 17:30:00', NULL, 0, 7, 'hight', 'to do', '2024-01-04 21:04:51', '2024-01-04 21:04:51'),
(13, NULL, 'Task 12', '', 3, NULL, 3, '2024-01-05 23:30:00', NULL, 0, 3, 'medium', 'to do', '2024-01-04 21:12:12', '2024-01-04 21:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` tinyint(4) NOT NULL,
  `create_by` tinyint(4) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_id` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_comments`
--

INSERT INTO `task_comments` (`id`, `task_id`, `create_by`, `content`, `reply_id`, `created_at`, `updated_at`) VALUES
(26, 3, 2, 'cấp 1', 0, '2024-01-08 22:34:29', '2024-01-08 22:34:29'),
(27, 3, 7, '@HOÀNG : cấp 2', 26, '2024-01-08 22:34:47', '2024-01-08 22:34:47'),
(28, 3, 7, '@giang : hello', 27, '2024-01-08 22:36:42', '2024-01-08 22:36:42'),
(29, 3, 2, '@giang : hả', 27, '2024-01-08 22:37:00', '2024-01-08 22:37:00'),
(30, 3, 7, '@HOÀNG : cái gì', 26, '2024-01-08 22:42:01', '2024-01-08 22:42:01'),
(31, 3, 2, '@giang : không có gì', 30, '2024-01-08 22:43:05', '2024-01-08 22:43:05'),
(32, 3, 2, 'alo', 0, '2024-01-08 22:44:34', '2024-01-08 22:44:34'),
(33, 3, 2, 'sad', 32, '2024-01-08 23:19:12', '2024-01-08 23:19:12'),
(34, 3, 2, '123123', 0, '2024-01-08 23:43:24', '2024-01-08 23:43:24'),
(35, 3, 2, '@HOÀNG : 123123', 34, '2024-01-08 23:43:34', '2024-01-08 23:43:34'),
(36, 3, 2, '@HOÀNG : 213123', 34, '2024-01-09 00:05:46', '2024-01-09 00:05:46'),
(37, 3, 2, '@HOÀNG : 123', 36, '2024-01-09 00:14:46', '2024-01-09 00:14:46'),
(38, 3, 2, '@HOÀNG : bac3', 36, '2024-01-09 00:15:35', '2024-01-09 00:15:35'),
(39, 3, 2, '@HOÀNG : 123123', 36, '2024-01-09 01:00:38', '2024-01-09 01:00:38'),
(40, 3, 2, '@HOÀNG : 234', 33, '2024-01-09 01:02:30', '2024-01-09 01:02:30'),
(41, 3, 2, '@HOÀNG : 123123123123', 36, '2024-01-09 13:02:22', '2024-01-09 13:02:22'),
(42, 3, 2, '@HOÀNG : Generic placeholder image\r\nHOÀNG (you)13 hours ago123123\r\n Reply  Xem 2 phản hồi\r\nGeneric placeholder image\r\nHOÀNG (you)12 hours ago@HOÀNG : 213123', 34, '2024-01-09 13:02:42', '2024-01-09 13:02:42'),
(43, 3, 2, '2133123', 0, '2024-01-09 13:03:53', '2024-01-09 13:03:53'),
(44, 3, 2, '1', 0, '2024-01-09 13:29:02', '2024-01-09 13:29:02'),
(45, 3, 2, '2', 0, '2024-01-09 13:29:10', '2024-01-09 13:29:10'),
(46, 3, 2, '3', 0, '2024-01-09 13:29:17', '2024-01-09 13:29:17'),
(47, 3, 2, '@admin : xin chào', 46, '2024-01-10 19:35:15', '2024-01-10 19:35:15'),
(48, 3, 2, '@admin : Xin chào comment 2', 45, '2024-01-10 19:38:31', '2024-01-10 19:38:31'),
(49, 3, 2, 'Hi everyone!!!!!!', 0, '2024-01-10 19:39:01', '2024-01-10 19:39:01'),
(50, 3, 7, '@admin : Hi admin. I\'m user5', 49, '2024-01-10 19:41:22', '2024-01-10 19:41:22'),
(51, 3, 7, 'Hi!!!!!!!!', 0, '2024-01-10 19:41:44', '2024-01-10 19:41:44'),
(52, 3, 7, '@admin : Phản hồi 2', 49, '2024-01-10 19:48:25', '2024-01-10 19:48:25'),
(53, 3, 2, 'test1111', 0, '2024-01-11 19:48:31', '2024-01-11 19:48:31'),
(54, 3, 2, '11111', 0, '2024-01-11 19:48:54', '2024-01-11 19:48:54'),
(55, 3, 2, '22222', 0, '2024-01-11 19:49:40', '2024-01-11 19:49:40'),
(56, 3, 2, '@admin : 44444', 54, '2024-01-11 19:50:27', '2024-01-11 19:50:27'),
(57, 3, 2, '33333333', 0, '2024-01-11 19:51:21', '2024-01-11 19:51:21'),
(58, 3, 2, '66666', 0, '2024-01-11 20:43:23', '2024-01-11 20:43:23'),
(59, 3, 2, '@admin : tttttt', 58, '2024-01-11 20:43:30', '2024-01-11 20:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point_accumulated` int(11) NOT NULL,
  `expertise_coefficient` int(11) NOT NULL,
  `allowance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role_id`, `country`, `phone`, `facebook`, `point_accumulated`, `expertise_coefficient`, `allowance`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@dcq.com', NULL, '$2y$12$w.K5L2jT3wC2et1j8xcfEevwiwJOTHHkBFpOjsqioR8s3SeQGT9f6', 'OEZRzDZQt1YGqhS4hZtp9nEPeO50KomUVetbinz9NmGhvJYXmQJQCnXHgAWM', '1', NULL, 0, NULL, 0, 0, 0, '2023-12-30 08:13:16', '2023-12-30 08:13:16'),
(3, 'User1', 'user1@gmail.com', NULL, '$2y$12$0jS9Wu726uZlMIEvHl6/KO5MeO4aiDMfTfGSs62rCJJI4Ix5OFShO', NULL, '2', 'Việt Nam', 905998877, NULL, 10, 1, 500000, '2024-01-02 18:46:10', '2024-01-10 18:42:17'),
(4, 'User2', 'user2@gmail.com', NULL, '$2y$12$N5HpUYgCvk9.zAUS556uhOiE1/LF8jMjXzo2BLxFlNkdqIFbWB8ny', NULL, '2', NULL, 0, NULL, 0, 0, 0, '2024-01-02 20:37:18', '2024-01-02 20:48:25'),
(5, 'User3', 'user3@dcq.com', NULL, '$2y$12$rY2ACMJwww6fBGTMF94jz.vSDzMUa2h.a2MyhuGYr4yANpvh8Qsri', NULL, '3', NULL, 0, 'https://www.facebook.com/HA58.PROTT', 0, 0, 0, '2024-01-04 20:27:48', '2024-01-04 20:27:48'),
(6, 'User4', 'user4@dcq.com', NULL, '$2y$12$qyFP9YiJ.zv1yY5NlfJr5O4KbZ3g3KoFbXvFwsQat7Ge.nntjwlRW', NULL, '4', NULL, 0, NULL, 0, 0, 0, '2024-01-04 20:59:11', '2024-01-04 20:59:11'),
(7, 'user5', 'user5@gmail.com', NULL, '$2y$12$4oTsdIXwXsLZBCUpYhQCleNTIYc4APN85PyM9XTWcF0WXqbtHhxuq', 'dNCn9XdDqNfKsaGkdzjXGXiJOec7BBpxtKv2oxG05GwmalPOEj8xL12KufHW', '4', 'Việt Nam', 909887766, NULL, 100, 2, 1000000, '2024-01-10 19:06:59', '2024-01-10 19:06:59'),
(8, 'user6', 'user6@gmail.com', NULL, '$2y$12$HvgxDSeR71eyPzl5Yogqj.7sHW9aRd18TO5rMh8LIZ115RsTn1ioq', NULL, '3', 'việt nam', 908556677, NULL, 1500, 1, 1000000, '2024-01-11 20:33:16', '2024-01-11 20:33:16'),
(10, 'user7', 'user7@gmail.com', NULL, '$2y$12$uvUYAHcSK81hSOhmP9n25eQ2SF.4Sf6Rknfw46w9U8muVt8OUG05e', '6TxBvdiwdic88q9khuFkr3ypM84B4AWfBCtwPMghSW9Rs04UuX2he1UGlVN9', '3', 'việt nam', 908556677, NULL, 1500, 1, 1000000, '2024-01-11 20:34:08', '2024-01-11 20:34:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dcq_projects`
--
ALTER TABLE `dcq_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dcq_projects`
--
ALTER TABLE `dcq_projects`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revenue`
--
ALTER TABLE `revenue`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
