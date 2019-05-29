-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 01:02 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `created_at`, `updated_at`, `time`, `title`, `description`) VALUES
(1, '2019-05-11 20:40:17', '2019-05-11 20:40:17', '2016-01-11 12:54:00', 'metting 4', 'nemw metting'),
(2, '2019-05-11 20:40:30', '2019-05-11 20:40:30', '2016-01-11 12:54:00', 'metting 3', 'nemw metting'),
(3, '2019-05-11 20:40:37', '2019-05-11 20:51:36', '2019-01-11 12:54:00', 'metting 2', 'nemw metting'),
(4, '2019-05-11 20:40:48', '2019-05-11 20:40:48', '2016-01-11 12:54:00', 'metting 2', 'nemw metting'),
(5, '2019-05-11 20:40:56', '2019-05-12 09:01:53', '2019-01-11 12:54:00', 'metting 2', 'nemw metting'),
(6, '2019-05-12 08:59:33', '2019-05-12 08:59:33', '2019-01-11 12:54:00', 'metting 5', 'nemw metting 5'),
(7, '2019-05-29 06:48:30', '2019-05-29 06:48:30', '2019-01-11 12:54:00', 'metting 10', 'nemw metting 10 added');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_user`
--

CREATE TABLE `meeting_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meeting_user`
--

INSERT INTO `meeting_user` (`id`, `created_at`, `updated_at`, `user_id`, `meeting_id`) VALUES
(1, NULL, NULL, 2, 1),
(2, NULL, NULL, 2, 2),
(3, NULL, NULL, 2, 3),
(4, NULL, NULL, 1, 4),
(5, NULL, NULL, 1, 5),
(6, NULL, NULL, 1, 3),
(7, NULL, NULL, 4, 6),
(8, NULL, NULL, 3, 7),
(9, NULL, NULL, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_05_11_134940_create_mettings_table', 1),
('2019_05_11_135038_create_user_metting_table', 1),
('2016_05_11_124723_create_meetings_table', 2),
('2016_05_11_124859_create_meeting_user_table', 2),
('2019_10_12_000000_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'eyob', 'eyob@df.asfd', '$2y$10$.1QESNNUCeoo.JhTzfFgveAfl5NwI1wqcUGd97mp.NOVUbA1HOxDO', NULL, '2019-05-11 20:34:39', '2019-05-11 20:34:39'),
(3, 'eyob 2', 'eyob2@df.asfd', '$2y$10$Yuqi2mdqORCnSt67IaKujOea6zKwgINToXtbkGEAmCjW86W1QVPJi', NULL, '2019-05-11 20:37:10', '2019-05-11 20:37:10'),
(4, 'eyob 23', 'eyob23@df.asfd', '$2y$10$/Fw5107yf8xXipD9V5xLue0Cme3qb/RHMehCI0i0LagDTltn5f/Ae', NULL, '2019-05-12 08:56:55', '2019-05-12 08:56:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_user`
--
ALTER TABLE `meeting_user`
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
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `meeting_user`
--
ALTER TABLE `meeting_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
