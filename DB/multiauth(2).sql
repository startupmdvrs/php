-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 01:30 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(3, 'test', 1, '2017-12-19 01:44:55', '2018-03-16 04:57:45'),
(5, 'test2', 0, '2017-12-19 02:36:05', '2018-02-15 07:47:53'),
(6, 'test3', 0, '2017-12-19 02:43:05', '2018-02-15 07:47:53'),
(7, 'test4', 0, '2017-12-19 02:58:05', '2018-02-15 07:47:53'),
(8, 'test5', 1, '2017-12-19 03:03:05', '2017-12-19 03:03:05'),
(9, 'test6', 1, '2017-12-19 03:08:05', '2017-12-19 03:08:05'),
(10, 'test7', 1, '2017-12-19 03:14:05', '2017-12-19 03:14:05'),
(11, 'test8', 1, '2017-12-19 03:21:05', '2017-12-19 03:21:05'),
(12, 'test9', 1, '2017-12-19 03:28:05', '2017-12-19 03:28:05');

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
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2017_12_19_054654_create_brand', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'kaushik', 'kothiyakaushik@yahoo.com', '$2y$10$N24f3TIsAsHvveEDeq6XHeH6lboXPj5r7yi5o0kVSIlNbmVCX/nl6', 0, 'QlbeFgn6aAsc2yUY4PPAPjJVNy1uMdcsUNiIQCB80o5pcBHfoZZqnSU1g9vw', '2017-12-15 07:23:57', '2017-12-15 07:23:57'),
(12, 'admin', 'admin@admin.com', '$2y$10$x0NZOxkdqanEOcEb5SeCUuPTONylO3aolaRTxglLvXRDmSsysFKvu', 1, 'o4PPiJYQ7r1O8h5bxujp8YhTHK93JeD4Y1zIthGfgiitX13CN8lNCmAfcLyc', '2017-12-15 07:24:57', '2017-12-15 07:24:57'),
(14, 'vimal', 'vimalc@yahoo.com', '$2y$10$wQU5W5u9uODzKR6X9OUkReSBqLB6pieHib.bcWJO4dUPO2cIeF5WO', 0, 'HnsJZqMCAR1NSiHc890G8puQQqAE18Iz7JrTOHzgylfaVs4qd0XyIX3U8hCw', '2017-12-16 00:08:41', '2017-12-16 00:08:41'),
(15, 'admin111', 'admin111@yahoo.com', '$2y$10$ep.u8TWKTvxHtK8OiB710O3ordlkyKzuJ70mBgj9BoajenzuiLw3S', 1, 'aMI0qFQpFe2QbMkPFIIUbMVLYTZPM3gFOHarYZAuR8rgBe8W3U0Woc5sFuU8', '2017-12-16 06:24:37', '2017-12-16 06:24:37'),
(16, 'admin12', 'admin12@yahoo.com', '$2y$10$QLwI9n1MX9FLcaLmCTkpwO6T/SKy66oYCcoHJzh8WLnQXDag/NziO', 1, NULL, '2017-12-18 01:07:15', '2017-12-18 01:07:15'),
(18, 'admin', 'admin14@yahoo.com', '$2y$10$fXNLRVa0R27e/Va9Nipuwuj0ey.1tREYB8FL74KICgX04zBLwv6Ii', 1, 'If2yV4Hr1qIDTRaQszfapxnp6bEuNAXUNtJaRupaWPOTHpiiYpY0U6g31Tek', '2017-12-18 05:20:21', '2017-12-18 05:20:21'),
(19, 'Hardik', 'hardik@yahoo.com', '$2y$10$jGoZr/cOpwY0CiLmH8y2/OVVONmO.8ZnN./i8y8gVhMXBZEYq3SSK', 0, 'qyQ66d2cnpIop9oef1ZJLiAH8sxMa161cRhBj33q4PoNizqMVXcSFfCYrAkH', '2017-12-18 05:22:33', '2017-12-18 05:22:33'),
(21, 'aa', 'vimalc111@yahoo.com', '$2y$10$M6UDoAPw5JBSX4YWk.4rVO3D6Q2ZnF0iTk1BFv3Qk.S41m.xXsJjC', 1, NULL, '2018-01-04 05:32:40', '2018-01-04 05:32:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
