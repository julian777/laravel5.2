-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-08-2016 a las 01:20:58
-- Versión del servidor: 5.7.13-0ubuntu0.16.04.2
-- Versión de PHP: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrators`
--

CREATE TABLE `administrators` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `administrators`
--

INSERT INTO `administrators` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin', 'admin@ejemplo.com', '$2y$10$p4pgtrParlHBDnQ5SyCt2OoxqjnBUG.yUCIBhNveqo5pDYcIYdjrC', NULL, '2016-08-30 23:05:49', '2016-08-30 23:05:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_30_155837_create_administrators_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rosalinda Bogan', 'jamal.gorczany', 'karelle.bins@example.net', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'IEfFkQXixG', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(2, 'Dr. Daisy Hegmann II', 'elton63', 'lorine23@example.net', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'vLaTgdBqdh', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(3, 'Green Satterfield', 'woberbrunner', 'tlesch@example.net', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'momglR32xQ', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(4, 'Declan McLaughlin', 'aiyana69', 'theodora84@example.com', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'PuW7H9fEIVF8DzUXO4ckISkxLYNw8I2GHjckoiszkwLekV8LDyDOFu80i5cH', '2016-08-30 13:34:49', '2016-08-30 13:50:10'),
(5, 'Princess McClure', 'jammie.aufderhar', 'howe.noemi@example.net', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'EPgPzfsmXb', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(6, 'Gregg Schmitt', 'kathryn59', 'kuvalis.tess@example.com', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'zkTduD47bk', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(7, 'Orie Greenfelder', 'smurazik', 'nbeahan@example.org', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'kFtQeEVRWJ', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(8, 'Dasia Little', 'herzog.wellington', 'scot76@example.org', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'KgR0vlf51c', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(9, 'Linnie Runolfsdottir III', 'makayla48', 'lee.von@example.com', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'HQK0mQv0I5', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(10, 'Dr. Ora Stehr', 'april.walter', 'bins.mariah@example.com', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', '9K3GvVZDj0', '2016-08-30 13:34:49', '2016-08-30 13:34:49'),
(11, 'Adalberto Kuvalis DVM', 'okuneva.hipolito', 'demetris46@example.org', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', '3IxOyvZZ24', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(12, 'Einar Baumbach DDS', 'wilford17', 'emery.dubuque@example.org', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'IPU3v3u6JR', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(13, 'Dr. Shannon Harvey V', 'shields.marcelle', 'kemmer.ludwig@example.net', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'lo9xKEYLBy', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(14, 'Dr. Darrel Gleason II', 'gbrown', 'lesley.heaney@example.org', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', '0AMJ16iSh8', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(15, 'Dr. Antonio Hettinger', 'abernathy.lonie', 'gianni58@example.org', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', '3w0hUJZu4F', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(16, 'Corine Stiedemann', 'bianka.lakin', 'wkihn@example.org', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'kI21W2v5aL', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(17, 'Prof. Edwardo Mohr', 'lokeefe', 'herman.hilbert@example.com', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'YNTM6LhKJh', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(18, 'Prof. Alek Maggio', 'bernier.reuben', 'kara19@example.org', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'm7dXKOqpoC', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(19, 'Bradford Armstrong', 'rluettgen', 'nhansen@example.net', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'aC7PifRrUv', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(20, 'Cedrick Hodkiewicz', 'robert88', 'bklein@example.net', '$2y$10$Af89xma6nWPRp6Rm1yOl8uqKlwsbirE.ij7AO3H2xbQNPNEaiMvBu', 'tjlWcYbHdL', '2016-08-30 13:34:50', '2016-08-30 13:34:50'),
(21, 'Julian', NULL, 'julian01cs@hotmail.com', '$2y$10$4L10iSV4lSjCzJD4s5bDWu8cG5MK9m9.zbtTeoYB1R01gg.NI0YZ6', 'oh3FxPzigROtETOfAXtbyaSJKmZueVsj88JL0f8KtYxVT3J3u2E9dSpq4sa4', '2016-08-30 14:11:27', '2016-08-31 12:19:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
