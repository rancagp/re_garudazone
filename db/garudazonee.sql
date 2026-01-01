-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2026 at 07:50 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garudazonee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint UNSIGNED NOT NULL,
  `competition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_team_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_team_flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `away_team_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `away_team_flag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_date` date NOT NULL,
  `match_time` time NOT NULL,
  `stadium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('scheduled','live','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'scheduled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_score` int UNSIGNED DEFAULT NULL,
  `away_score` int UNSIGNED DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_25_164415_create_posts_table', 1),
(5, '2025_01_08_180426_add_role_to_users_table', 1),
(6, '2025_01_08_210040_create_matches_table_simplified', 1),
(7, '2025_01_08_223902_add_score_columns_to_matches_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `content`, `author`, `created_at`, `updated_at`) VALUES
(10, 'https://via.placeholder.com/640x480.png/0066ee?text=omnis', 'Earum reiciendis consequuntur nesciunt amet qui rerum qui qui.', 'Hatter. \'Stolen!\' the King say in a hot tureen! Who for such a nice little histories about children who had not gone far before they saw the White Rabbit cried out, \'Silence in the middle. Alice.', 1, '2025-01-12 10:39:33', '2025-01-12 10:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3ZlXaAt2CJbnY160pWqowKLbDcHwGupipJwPev1A', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWjVSeGFqNGt4Z3JhbExySjhkc1NrZDluY1loTUNBYmpFV2p5Y01SZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJyb2xlIjtzOjQ6InVzZXIiO30=', 1736704075),
('AHX6pal3bQwnfPhy7kPTPVHolpcK75LfSFlXcG8K', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiREFoSkpudThsWHpjVEhGVlgyOFBnWTF5WWRRcjFzWEtlNllrRUpNdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1736704078),
('LcWxvekomSgAKxnvelFI2GrGL0Hz5lhRrpD1TGaa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjZWSnNUS1lQekJ1WVZueURMMzdKS3lXT2xFTmIyRmVLZ2xIaUN0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9nYXJ1ZGF6b25lLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767253769),
('TYAdMQrBDEcdhAJrYrxaJWGlziQ9SaVDWrujfUbj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXNqQ0g0NEhXOGlTZER6ZEpRVFN2d3BWYjFZOGRrdkNzejRQVk1ibiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9nYXJ1ZGF6b25lLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1767152827);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Test User', 'test@gmail.com', '2025-01-12 10:39:31', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'nZwqmog3wU', '2025-01-12 10:39:31', '2025-01-12 10:39:31', 'user'),
(2, 'Alva Klocko I', 'felicia01@example.net', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'MkFmVLqljM', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(3, 'Lenna Kirlin', 'orlando13@example.net', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'Aq36hu45mo', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(4, 'Annabelle Pacocha', 'buck.hammes@example.org', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'b8hkY60jse', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(5, 'Amira O\'Conner', 'ebba.okon@example.com', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, '29q59bp6ob', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(6, 'Dr. Ettie Farrell', 'cummings.leopold@example.org', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'GqiyPzDha5', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(7, 'Lulu Swift', 'wendy.veum@example.net', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, '6hfQMEVi7z', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(8, 'Katlyn Windler', 'michele.stamm@example.net', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'TfyJHBEF5R', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(9, 'Althea Tromp', 'yessenia85@example.com', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'Nbdlnnmc4j', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(10, 'Lyla O\'Kon', 'erling.armstrong@example.com', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'gpo58XL1Zi', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(11, 'Mrs. Camille White DVM', 'hillard00@example.net', '2025-01-12 10:39:32', '$2y$12$I/Am3pA/yY2auk8kfjgfge2SUjCiXzyt0DX.k4VRdFgkZxk9Dwfv6', NULL, 'NFJpNa1Sw5', '2025-01-12 10:39:32', '2025-01-12 10:39:32', 'user'),
(12, 'Ranca Gigih Pramuditha', 'ranca632@gmail.com', NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocJ3MQtI3DCNUmwhZ4BB2RpHWYW5-Rh6aYGn72ifuwLSGeJK6zxF=s96-c', NULL, '2025-01-12 10:41:01', '2025-01-12 10:41:01', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_foreign` (`author`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
