-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2021 at 07:31 AM
-- Server version: 10.5.9-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lumenPaymentGateway`
--

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
(1, '2021_04_30_173144_create_products_table', 1),
(2, '2021_04_30_184411_create_users_table', 1),
(3, '2021_04_30_220314_add_cashier_tables', 1),
(4, '2021_04_30_220433_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 31, 3, '2021-05-01 00:23:34', '2021-05-01 00:23:34'),
(2, 31, 9, '2021-05-01 00:23:57', '2021-05-01 00:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category`, `price`, `created_at`, `updated_at`) VALUES
(1, 'tempore', 'Repellat nihil dolorem qui.', 'voluptatem', 3, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(2, 'saepe', 'Temporibus pariatur non occaecati voluptate in.', 'rerum', 8, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(3, 'animi', 'Iste quis pariatur dicta vel dolorem iusto.', 'voluptatem', 2, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(4, 'qui', 'Facere architecto quia numquam recusandae dignissimos illo et.', 'aspernatur', 7, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(5, 'error', 'Quia sint aliquam eos iusto.', 'possimus', 7, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(6, 'et', 'Optio ducimus cupiditate impedit voluptas consequatur recusandae.', 'mollitia', 0, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(7, 'assumenda', 'Officiis voluptatibus autem voluptatem amet.', 'assumenda', 6, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(8, 'eum', 'Voluptatum minima molestiae accusantium doloribus facilis.', 'dolorum', 8, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(9, 'porro', 'Totam dicta vel molestias deleniti.', 'facilis', 6, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(10, 'molestias', 'Qui laudantium harum facilis deserunt odio.', 'assumenda', 7, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(11, 'ratione', 'Quaerat nobis voluptatem provident voluptatibus voluptas explicabo occaecati voluptatem.', 'quas', 3, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(12, 'minus', 'Sed molestiae et sit autem.', 'porro', 7, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(13, 'quos', 'Perspiciatis molestiae error autem officia sunt et.', 'et', 1, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(14, 'ut', 'Expedita earum optio ut.', 'aliquam', 2, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(15, 'est', 'Autem fugiat fugiat quod modi alias atque minima.', 'et', 0, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(16, 'sint', 'Explicabo rerum quia voluptas quasi.', 'beatae', 9, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(17, 'deserunt', 'Dolorem unde sed vel facere ut.', 'nostrum', 7, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(18, 'minima', 'Qui nemo consectetur et placeat quaerat molestiae.', 'molestiae', 8, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(19, 'quia', 'Atque magni quam sint aspernatur.', 'earum', 9, '2021-05-01 00:20:43', '2021-05-01 00:20:43'),
(20, 'architecto', 'Asperiores eius perferendis accusantium enim.', 'distinctio', 3, '2021-05-01 00:20:43', '2021-05-01 00:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'Prof. Fidel Hyatt', 'gvon@example.org', '$2y$10$W6FEEFA1uoF6pEyGmNGBUeWdqJb/c2J6vgpj8dClimTM4jb9Sx5ZC', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(2, 'Prof. Emerald Ondricka Jr.', 'kaelyn25@example.net', '$2y$10$px2nlOffqfaDIkZKrxbxXeASsD3A2SjdsPANSpnSJA3ZCot.oY19G', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(3, 'Omer Bogan PhD', 'hoppe.kirk@example.org', '$2y$10$Z4hSpOu8sFGnnxmlw4a8dOtIiGAgussqa9mAFItGjlAmPeB9Qrfbq', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(4, 'Dr. Janick Stoltenberg', 'xhudson@example.net', '$2y$10$R3laikvxFmRD7mR4PnJ2Qu2QPt2KLdkZeLeIaTjE9ttLatjUESyDG', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(5, 'Douglas Bruen Jr.', 'roberta.gaylord@example.net', '$2y$10$aW4X3Rz/5RNTlEJ6Cg/iEuw1qUlN5vjmzNV0UtlyabZBGNxEgEe7e', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(6, 'Mrs. Mellie Kovacek', 'donnelly.claude@example.com', '$2y$10$nMvcpBrHioRjVAKbi/HKqe3aUGaXO8qXQBZOoIrJiqX3iZOwigqpm', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(7, 'Anderson Hirthe', 'rryan@example.com', '$2y$10$.E4luPSKO6BkGzIiIYqj/O9aex0S1jbwcnB1mnp1FwbhA0C6r1XBG', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(8, 'Fae Fisher MD', 'ileuschke@example.org', '$2y$10$pqSENB.Ck1eIq4vz8ecIiO//hNQTiOi/tJVW54Zub6Io8AZNOTjOu', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(9, 'Tessie Predovic DDS', 'lula.langosh@example.org', '$2y$10$JHcDgjpB6jqajcnlZxmNu.GVVi6CCouwMFmmLhj.oz4XVcu5SJPbi', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(10, 'Ivory O\'Kon', 'astrid39@example.com', '$2y$10$rA33ToT/vdHzHaAaN5X7puwrweUNsntYPvi3o3Gd2HKLZ/EGNb4pm', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(11, 'Charley Kuhlman', 'bquitzon@example.com', '$2y$10$24pMNcL6HhD.hx44FE7XgOPkWqkAMJ5XQXdq71JlvumGRSoPGK2AW', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(12, 'Rae Hand', 'jarret.conroy@example.com', '$2y$10$TI0WDZ11TwO20jwdieEGJOTUVWsMGPKQ5jdisFP2EgW4TAC8RFWQm', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(13, 'Brent Mertz', 'amelia76@example.org', '$2y$10$9pPNv/cp1SQMu/ZsBJ8H5eO7WLx6LCmZpGotrPwlrJn50eONJGKOG', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(14, 'Mr. Keshaun Pacocha', 'lilliana.balistreri@example.org', '$2y$10$yQcClgGmwt4U7frdqUXIqebtW/LNek4Fr1jFTnfGfjWkAd9ROfJqu', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(15, 'Horacio Weber DVM', 'mann.kyler@example.net', '$2y$10$NnGRD5MPa96TNbHegd2Rpuh/37EpTzGawKGrYZ9qTM42LjDL2FaVu', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(16, 'Rashad Morissette', 'lizzie81@example.com', '$2y$10$Se5PV9mPxRemPdvfDJf4Ku4nwdLrSTJEl2Q1fU2ZKBK4hMhL2O1bG', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(17, 'Madilyn Ruecker', 'billie64@example.com', '$2y$10$CWKBtGi4ePWy4a.3WTMFG.5KnAXmeRpEEhwbP2TJGNYhrC17AlMFC', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(18, 'Elouise Fay IV', 'kavon69@example.net', '$2y$10$PeAqvDx.gT0IT1Up0vrHVORG8zTfpv31iASvqdBhMdOfuaMvRi3sS', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(19, 'Pablo Stamm', 'lschultz@example.net', '$2y$10$ezrG5t5UHeBP6361htNNc.v9t0qkwkZNLOYDiZSL3ZmR/AyPv6Tj.', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(20, 'Ralph Gottlieb', 'constantin.larkin@example.org', '$2y$10$8ddQUKtwXVxiEVjF5Tzl/eVxc0jmSQcYY8t08EJJdgUR6vukl4JnW', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(21, 'Dr. Dejah Schumm DVM', 'idell25@example.com', '$2y$10$KdRPeU.iSyMHwV8wLH67oOYICN4PzV0Ybc57isx95CiMFTlrobUDa', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(22, 'Eulah Huels', 'kpaucek@example.net', '$2y$10$7MaP/lansd75aa1fgiRt1.4ltmCrQ4lmyJEjC.fFkmkX8FLrSuDdS', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(23, 'Helena Swift DDS', 'estevan.gutkowski@example.net', '$2y$10$9WBNejU2AddJp2T36Kp1xeZs3OdaPAU7GA2sLRpkfzFEusExv3w8G', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(24, 'Justine Ullrich', 'ymayer@example.com', '$2y$10$sKholwbL0hqBZBIx3cVb2ul4fObUar.kJexc44j2bZjiIXh81Ohqm', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(25, 'Delmer Satterfield', 'awillms@example.net', '$2y$10$kAvORh/cvSZn7hWEj63pIerBnq0x.LrqDoTx3XggC8H8ggsr/gdsS', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(26, 'Will Veum', 'mueller.porter@example.com', '$2y$10$SEt9T/5feQWbi2uUBKCzX.Z.eTpJWoQY5MQ9tsGpQtPiJ8wuByCES', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(27, 'Mr. Ronny Lemke Sr.', 'kylie.gulgowski@example.org', '$2y$10$mWxwuSrbUi1cX5EVs1W32O0woviP2CFd7uVD.r9JKSoyIUHXVN1z.', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(28, 'Mr. Kendall Hermiston', 'orn.terence@example.org', '$2y$10$aNd5pMBJOTdHQmsumhyeaeIbpcJ0cVO56FPBsLqm3KKumD0V2NPZK', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(29, 'Johnathon Rosenbaum V', 'johathan.zboncak@example.com', '$2y$10$navi6s8MVAdzVHYlR/.jFuHvI2umkYHnjYVLcGTwJ6PUouwdiIv2S', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(30, 'Miss Bethel Rogahn', 'ydamore@example.net', '$2y$10$Rdb2ZiZ9o5TkQJupGNpTCeD0WXDLhUs9VQJXy7wnFh3Dhg3G9VPuG', NULL, NULL, '2021-05-01 00:20:43', '2021-05-01 00:20:43', NULL, NULL, NULL, NULL),
(31, 'Kautsar Al Bana', 'kautsaralbaa@gmail.com', '$2y$10$GPMOzDGkwrFQ/VWql3rOheTJhnVtlHSdzox1wBGAVJyzYdk5l/j7a', NULL, NULL, '2021-05-01 00:21:04', '2021-05-01 00:21:21', 'cus_JOuPdS9g2nyzoZ', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
