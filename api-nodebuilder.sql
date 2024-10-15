-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Okt 2024 pada 03.25
-- Versi server: 8.0.31
-- Versi PHP: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_core_builder`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms`
--

CREATE TABLE `cms` (
  `id` int NOT NULL,
  `site_id` int DEFAULT NULL,
  `instance_id` int DEFAULT NULL,
  `title` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login_email` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `login_username` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login_password` text COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `configs`
--

CREATE TABLE `configs` (
  `id` int NOT NULL,
  `config_name` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `config_value` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `configs`
--

INSERT INTO `configs` (`id`, `config_name`, `config_value`, `createdAt`, `updatedAt`) VALUES
(1, 'base_domain_id', '34', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'base_domain_name', 'nodebuilder.id', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'base_domain_guid', '8db1a2a6-ae53-4654-bec2-7b2d51723571', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'owner_email', 'fajarizaf@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'owner_id', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'owner_login', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'owner_guid', 'c6611881-70e7-11ef-be80-52540021d029', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'owner_pass', 'Adayanghilang123@', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `servers`
--

CREATE TABLE `servers` (
  `id` int NOT NULL,
  `ip_address` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ipv4` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ipv6` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `host_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plesk_username` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plesk_password` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ssh_host` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ssh_user` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ssh_password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `server_status` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `servers`
--

INSERT INTO `servers` (`id`, `ip_address`, `ipv4`, `ipv6`, `host_name`, `plesk_username`, `plesk_password`, `ssh_host`, `ssh_user`, `ssh_password`, `server_status`, `createdAt`, `updatedAt`) VALUES
(1, '103.217.145.155', '10.16.236.178', '2606:2800:220:1:248:1893:25c8:1946', 'https://nodebuilder.id:8443', 'admin', 'Adayanghilang123@', 'nodebuilder.id:8443/', 'landing', 'Adayanghilang123@', 'available', '2023-04-12 12:33:56', '2023-04-12 12:33:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sites`
--

CREATE TABLE `sites` (
  `id` int NOT NULL,
  `domain_id` int DEFAULT NULL,
  `subscription_id` int DEFAULT NULL,
  `domain_name` varchar(90) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `guid` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ftp_login` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ftp_password` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sites`
--

INSERT INTO `sites` (`id`, `domain_id`, `subscription_id`, `domain_name`, `guid`, `ftp_login`, `ftp_password`, `createdAt`, `updatedAt`) VALUES
(38, 36, 2, 'coba.nodebuilder.id', 'ee14673e-2c4e-4c7f-931a-4896898ca715', 'coba', 'Adayanghilang123@', '2024-09-23 14:45:34', '2024-09-23 14:45:34'),
(42, 40, 2, 'jono.nodebuilder.id.nodebuilder.id', '4b30b1e0-1697-4028-8240-41f52dd0015f', 'jono.nodebuilder.id', 'Adayanghilang123@', '2024-09-24 02:45:06', '2024-09-24 02:45:06'),
(43, 41, 3, 'dara.nodebuilder.id', 'cc1d50b8-2a45-48c8-99d9-0abfa0d902ca', 'dara', 'Adayanghilang123@', '2024-09-24 03:32:52', '2024-09-24 03:32:52'),
(44, 42, 3, 'dara.nodebuilder.id', '9d46d587-95cb-4fe8-9b94-a3e310a2dc96', 'dara', 'Adayanghilang123@', '2024-09-24 06:34:09', '2024-09-24 06:34:09'),
(45, 43, 3, 'dara.nodebuilder.id', 'd135b501-9dab-4add-b63a-d2db216b4344', 'dara', 'Adayanghilang123@', '2024-09-24 06:36:39', '2024-09-24 06:36:39'),
(46, 44, 1, 'dorusa.nodebuilder.id', '7a703090-8c72-422b-b4b2-3a685a022815', 'dorusa', 'Adayanghilang123@', '2024-09-24 08:12:53', '2024-09-24 08:12:53'),
(47, 45, 3, 'dorusa.nodebuilder.id', '82e368dc-2979-4867-ad84-ef96fc7d205e', 'dorusa', 'Adayanghilang123@', '2024-09-24 09:21:42', '2024-09-24 09:21:42'),
(48, 46, 4, 'dorusa.nodebuilder.id', 'a0b4c87e-3ce8-4e6f-b17c-2c33011e9c58', 'dorusa', 'Adayanghilang123@', '2024-09-24 09:24:31', '2024-09-24 09:24:31'),
(49, 47, 5, 'dorusa.nodebuilder.id', 'b7074bb6-a7f7-48c2-8606-ba4019b98717', 'dorusa', 'Adayanghilang123@', '2024-09-24 10:34:07', '2024-09-24 10:34:07'),
(50, 48, 6, 'dorusa.nodebuilder.id', '43d77f77-3f58-4066-b8e5-47d7e8b717ae', 'dorusa', 'Adayanghilang123@', '2024-09-24 10:37:19', '2024-09-24 10:37:19'),
(51, 49, 2, 'rana.nodebuilder.id', '029b2880-0d4f-4051-854a-7f4c30283f09', 'rana', 'Adayanghilang123@', '2024-09-24 14:41:41', '2024-09-24 14:41:41'),
(52, 50, 1, 'rudi.nodebuilder.id', 'be02d5e9-6dd3-4a9b-a278-9f1a3536af01', 'rudi', 'Adayanghilang123@', '2024-09-25 04:26:46', '2024-09-25 04:26:46'),
(53, 52, 2, 'yana.nodebuilder.id', 'fbc8cae9-8611-4be3-b4d0-e4059904c0ac', 'yana', 'Adayanghilang123@', '2024-09-25 15:47:47', '2024-09-25 15:47:47'),
(54, 53, 3, 'gita.nodebuilder.id', '9ab7e1eb-1420-4a85-b37b-c5c0204a2a47', 'gita', 'Adayanghilang123@', '2024-09-25 15:57:13', '2024-09-25 15:57:13'),
(55, 54, 4, 'saranjaya.nodebuilder.id', '99d2bcbd-f4a3-42df-b5ce-86c7affcee83', 'saranjaya', 'Adayanghilang123@', '2024-09-26 02:20:04', '2024-09-26 02:20:04'),
(56, 55, 5, 'winda.nodebuilder.id', '00729971-1278-41e6-9eaf-a68b9f3993bb', 'winda', 'Adayanghilang123@', '2024-09-26 03:54:21', '2024-09-26 03:54:21'),
(57, 56, 6, 'rina.nodebuilder.id', '82f692c9-2d93-47cb-befe-5bfc25dc3331', 'rina', 'Adayanghilang123@', '2024-09-26 03:58:08', '2024-09-26 03:58:08'),
(58, 57, 7, 'raka.nodebuilder.id', '90e80d45-9072-47bb-8b15-04d92a62cb14', 'raka', 'Adayanghilang123@', '2024-09-26 04:00:57', '2024-09-26 04:00:57'),
(59, 58, 8, 'desya.nodebuilder.id', '3d648995-40a4-4bd9-8c2f-0996fd59542c', 'desya', 'Adayanghilang123@', '2024-09-26 04:20:14', '2024-09-26 04:20:14'),
(60, 59, 1, 'dora.nodebuilder.id', 'dbad1008-2835-4386-863d-44a2d78b7e2f', 'dora', 'Adayanghilang123@', '2024-09-26 17:07:45', '2024-09-26 17:07:45'),
(61, 60, 1, 'irna.nodebuilder.id', 'f3f09e69-ac13-46d0-adcf-3a5c708a029f', 'irna', 'Adayanghilang123@', '2024-09-26 17:12:04', '2024-09-26 17:12:04'),
(62, 61, 1, 'gagat.nodebuilder.id', 'd7b4ff3f-dfc9-4166-9e69-eec3d772f6c8', 'gagat', 'Adayanghilang123@', '2024-09-26 17:15:49', '2024-09-26 17:15:49'),
(63, 62, 1, 'rina.nodebuilder.id', 'd1ac908d-b215-4b88-9e66-90bec0f47838', 'rina', 'Adayanghilang123@', '2024-09-26 17:20:20', '2024-09-26 17:20:20'),
(64, 63, 1, 'nilam.nodebuilder.id', '8ff0ac44-bcc8-4f5a-a338-55019b84ea64', 'nilam', 'Adayanghilang123@', '2024-09-27 04:45:55', '2024-09-27 04:45:55'),
(65, 64, 1, 'naura.nodebuilder.id', 'e6da0bec-cc8b-435f-8a08-24d094e778e5', 'naura', 'Adayanghilang123@', '2024-09-27 06:45:52', '2024-09-27 06:45:52'),
(66, 65, 1, 'rudi.nodebuilder.id', 'bde9fc0f-31b5-4ea2-bad0-a04aaabd9e2b', 'rudi', 'Adayanghilang123@', '2024-09-27 08:27:44', '2024-09-27 08:27:44'),
(67, 66, 2, 'dorasa.nodebuilder.id', 'dffaa33d-d882-4dbb-a6a3-4370269fff27', 'dorasa', 'Adayanghilang123@', '2024-09-27 19:21:39', '2024-09-27 19:21:39'),
(68, 67, 3, 'vima.nodebuilder.id', 'accc7581-77f1-47b9-b18f-5cd21e6db582', 'vima', 'Adayanghilang123@', '2024-09-27 19:32:25', '2024-09-27 19:32:25'),
(69, 68, 4, 'order.nodebuilder.id', '2d13a71c-8ef7-4e71-8232-44a81c273bcf', 'order', 'Adayanghilang123@', '2024-09-28 02:33:28', '2024-09-28 02:33:28'),
(70, 69, 2, 'dera.nodebuilder.id', '31e91a9b-4781-4fe4-8702-17e5c37971de', 'dera', 'Adayanghilang123@', '2024-09-28 18:15:09', '2024-09-28 18:15:09'),
(71, 70, 2, 'coba.nodebuilder.id', 'df0c48dd-340a-4808-86e5-74bf18a32644', 'coba', 'Adayanghilang123@', '2024-09-30 04:54:23', '2024-09-30 04:54:23'),
(72, 71, 1, 'hola.nodebuilder.id', '5ef91f4a-2170-4b56-bde8-617db6db42be', 'hola', 'Adayanghilang123@', '2024-09-30 05:04:09', '2024-09-30 05:04:09'),
(73, 72, 1, 'dira.nodebuilder.id', '16e24bc8-4a3c-4db8-b847-13d3032f154d', 'dira', 'Adayanghilang123@', '2024-10-02 01:45:30', '2024-10-02 01:45:30'),
(74, 73, 2, 'bonda.nodebuilder.id', 'e57aee1c-6f22-491a-b0e1-4a339b868de8', 'bonda', 'Adayanghilang123@', '2024-10-06 14:14:05', '2024-10-06 14:14:05'),
(75, 74, 3, 'bundle.nodebuilder.id', 'ececdb5b-3f91-42f5-87cd-87db6ce1c863', 'bundle', 'Adayanghilang123@', '2024-10-06 14:29:58', '2024-10-06 14:29:58'),
(76, 75, 6, 'giwa.nodebuilder.id', '53154c17-a2ab-4d8e-9195-f70370b4b62c', 'giwa', 'Adayanghilang123@', '2024-10-06 14:43:11', '2024-10-06 14:43:11'),
(77, 76, 10, 'gama.nodebuilder.id', '4b6bb51e-b4bf-4395-9ee6-d61820229728', 'gama', 'Adayanghilang123@', '2024-10-06 16:20:45', '2024-10-06 16:20:45'),
(78, 78, 12, 'bobo.nodebuilder.id', '9effe476-e55d-4086-9ab3-b57291a056fe', 'bobo', 'Adayanghilang123@', '2024-10-08 14:52:40', '2024-10-08 14:52:40'),
(79, 79, 1, 'dora.nodebuilder.id', 'ff5348d9-f139-4e2f-b9ca-f373f2bbcfc0', 'dora', 'Adayanghilang123@', '2024-10-08 15:18:37', '2024-10-08 15:18:37'),
(80, 80, 2, 'fajar.nodebuilder.id', '6653042c-4c1b-4a66-8dd3-2fa671a67faa', 'fajar', 'Adayanghilang123@', '2024-10-09 15:27:21', '2024-10-09 15:27:21'),
(81, 81, 3, 'baba.nodebuilder.id', '31324510-bd33-4e81-915d-c4a604f73821', 'baba', 'Adayanghilang123@', '2024-10-09 15:32:54', '2024-10-09 15:32:54'),
(82, 82, 4, 'bambang.nodebuilder.id', '5bd8711a-e0f8-47f7-a4af-1fb2e72e172d', 'bambang', 'Adayanghilang123@', '2024-10-09 15:40:32', '2024-10-09 15:40:32'),
(83, 83, 5, 'kamal.nodebuilder.id', 'e190f37a-7dc9-4dd6-a4c8-7048db5f0691', 'kamal', 'Adayanghilang123@', '2024-10-09 16:19:56', '2024-10-09 16:19:56'),
(84, 84, 1, 'turis.nodebuilder.id', '1a62d052-e371-4c76-af5f-9d9b94f470db', 'turis', 'Adayanghilang123@', '2024-10-11 07:44:27', '2024-10-11 07:44:27'),
(85, 85, 2, 'cova.nodebuilder.id', '5782cb96-3ff1-46ba-97ee-b17164aca07d', 'cova', 'Adayanghilang123@', '2024-10-14 16:11:46', '2024-10-14 16:11:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `themes`
--

CREATE TABLE `themes` (
  `id` int NOT NULL,
  `theme_author` int NOT NULL,
  `theme_category` int NOT NULL,
  `theme_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_editor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `theme_cover` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `theme_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `themes`
--

INSERT INTO `themes` (`id`, `theme_author`, `theme_category`, `theme_type`, `theme_editor`, `theme_name`, `theme_desc`, `theme_cover`, `createdAt`, `updatedAt`, `theme_code`, `theme_link`) VALUES
(1, 1, 1, 'free', 'beaverbuilder', 'Love Nature', 'Elegant and serene multipurpose design to build any type of website', 'ove-nature-02.jpg', '2024-02-03 18:44:01', '2024-02-03 18:44:01', '59760', 'https://websitedemos.net/love-nature-08/'),
(2, 1, 2, 'free', 'beaverbuilder', 'Outdoor Adventure', 'Multipurpose template perfect for anyone looking to build a stylish website', 'outdoor-adventure-02.jpg', '2024-02-03 18:44:01', '2024-02-03 18:44:01', '48078', 'https://websitedemos.net/outdoor-adventure-08/'),
(3, 1, 3, 'free', 'beaverbuilder', 'Planet Earth', 'The Planet Earth multipurpose template is a captivating design with minimalist appeal', 'earth-02.jpg', '2024-02-03 18:44:01', '2024-02-03 18:44:01', '69916', 'https://websitedemos.net/earth-08/'),
(4, 1, 2, 'free', 'beaverbuilder', 'Digital Agency', 'Build an agency website using our professionally designed Digital Agency template', 'digital-agency-02.jpg', '2024-02-03 18:44:01', '2024-02-03 18:44:01', '54463', 'https://websitedemos.net/digital-agency-08/'),
(5, 1, 1, 'free', 'beaverbuilder', 'Local Business', 'Professional-looking website template to promote your local business and services', 'local-business-02.jpg', '2024-02-03 18:44:01', '2024-02-03 18:44:01', '55315', 'https://websitedemos.net/local-business-08/'),
(6, 1, 2, 'free', 'beaverbuilder', 'Tech Startup', 'Well-designed flat theme with lovely colors, suitable for any type of business', 'tech-startup-02.jpg', '2024-02-03 18:44:01', '2024-02-03 18:44:01', '48671', 'https:://websitedemos.net/tech-startup-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `theme_authors`
--

CREATE TABLE `theme_authors` (
  `id` int NOT NULL,
  `author_theme_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author_slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `theme_authors`
--

INSERT INTO `theme_authors` (`id`, `author_theme_name`, `author_slug`, `createdAt`, `updatedAt`) VALUES
(1, 'Astra Themes', 'astra', '2024-02-03 18:44:01', '2024-02-03 18:44:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `theme_categoris`
--

CREATE TABLE `theme_categoris` (
  `id` int NOT NULL,
  `categori_theme_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `theme_categoris`
--

INSERT INTO `theme_categoris` (`id`, `categori_theme_name`, `createdAt`, `updatedAt`) VALUES
(1, 'Bussines', '2024-02-03 18:44:01', '2024-02-03 18:44:01'),
(2, 'Nature', '2024-02-03 18:44:01', '2024-02-03 18:44:01'),
(3, 'Services', '2024-02-03 18:44:01', '2024-02-03 18:44:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usercredentials`
--

CREATE TABLE `usercredentials` (
  `id` int NOT NULL,
  `UserCode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `UserLogin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PasswordLogin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `VerifyCode` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FgVerified` int DEFAULT NULL,
  `FgActive` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `usercredentials`
--

INSERT INTO `usercredentials` (`id`, `UserCode`, `UserLogin`, `PasswordLogin`, `VerifyCode`, `FgVerified`, `FgActive`, `createdAt`, `updatedAt`) VALUES
(1, 'USR1', 'fajarizaf@gmail.com', '47bce5c74f589f4867dbd57e9ca9f808', 'mxT0swUFrshWFFNlFie0c45j7', 1, 'Y', '2022-04-08 19:09:08', '2024-02-07 16:36:04'),
(3, 'USR2', 'raditya@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'mxT0swUFrshWFFNlFie0c45j7', 1, 'Y', '2024-02-07 17:09:21', '2024-02-07 17:09:21'),
(5, 'USR3', 'dodit@gmail.com', '8c8d357b5e872bbacd45197626bd5759', 'itWo3tZaW62SL5MGD25UAMHDd', 1, 'Y', '2024-02-08 05:52:05', '2024-02-08 05:52:05'),
(6, 'USR4', 'dodits@gmail.com', '8c8d357b5e872bbacd45197626bd5759', 'Y36pBjg2KlpBOqJ2Xdvo4qOzx', 1, 'Y', '2024-02-08 05:56:49', '2024-02-08 05:56:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userlogs`
--

CREATE TABLE `userlogs` (
  `id` int NOT NULL,
  `descriptions` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `UserCode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ipaddr` varchar(170) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `useragent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `req` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `res` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `userlogs`
--

INSERT INTO `userlogs` (`id`, `descriptions`, `user`, `UserCode`, `ipaddr`, `useragent`, `req`, `res`, `createdAt`, `updatedAt`) VALUES
(1, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.31.3', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-12 12:33:56', '2023-04-12 12:33:56'),
(2, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.31.3', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-12 14:18:17', '2023-04-12 14:18:17'),
(3, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.31.3', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-12 16:55:35', '2023-04-12 16:55:35'),
(4, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.31.3', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-13 14:02:50', '2023-04-13 14:02:50'),
(5, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.32.2', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-14 13:40:39', '2023-04-14 13:40:39'),
(6, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.32.2', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-15 14:35:14', '2023-04-15 14:35:14'),
(7, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.32.2', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-27 01:47:09', '2023-04-27 01:47:09'),
(8, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.32.2', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-27 01:47:33', '2023-04-27 01:47:33'),
(9, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.32.2', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2023-04-27 01:49:07', '2023-04-27 01:49:07'),
(10, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.33.0', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-01-11 14:32:22', '2024-01-11 14:32:22'),
(11, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.33.0', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-01-12 14:32:17', '2024-01-12 14:32:17'),
(12, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.33.0', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-01-13 15:56:40', '2024-01-13 15:56:40'),
(13, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.36.1', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-01-16 14:08:35', '2024-01-16 14:08:35'),
(14, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.36.1', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-01-16 14:14:18', '2024-01-16 14:14:18'),
(15, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.36.1', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-01-16 14:14:28', '2024-01-16 14:14:28'),
(16, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.36.1', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-02-03 05:41:38', '2024-02-03 05:41:38'),
(17, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.36.1', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-02-06 01:48:21', '2024-02-06 01:48:21'),
(18, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.36.1', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-02-07 15:35:55', '2024-02-07 15:35:55'),
(19, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.36.1', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-02-07 16:18:31', '2024-02-07 16:18:31'),
(20, 'auth/login', 'Fajar Riza Fauzi', 'USR1', '::1', 'PostmanRuntime/7.36.1', '{\"email\":\"fajarizaf@gmail.com\",\"password\":\"aaa\"}', NULL, '2024-02-07 16:36:04', '2024-02-07 16:36:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userprofiles`
--

CREATE TABLE `userprofiles` (
  `UserCode` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ContactName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `userprofiles`
--

INSERT INTO `userprofiles` (`UserCode`, `ContactName`, `Phone`, `Email`, `createdAt`, `updatedAt`) VALUES
('USR1', 'Fajar Riza Fauzi', '082125649665', 'fajarizaf@gmail.com', '2022-04-08 19:09:08', '2022-04-08 19:09:08'),
('USR2', 'raditya', NULL, 'raditya@gmail.com', '2024-02-07 17:09:21', '2024-02-07 17:09:21'),
('USR3', 'dodit', NULL, 'dodit@gmail.com', '2024-02-08 05:52:05', '2024-02-08 05:52:05'),
('USR4', 'dodit', NULL, 'dodits@gmail.com', '2024-02-08 05:56:49', '2024-02-08 05:56:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int NOT NULL,
  `role_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users_roles`
--

INSERT INTO `users_roles` (`id`, `role_name`, `role_type`, `status_id`) VALUES
(1, 'Administrator', 'admin', '1001'),
(2, 'Owner', 'customer', '1001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indeks untuk tabel `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_author` (`theme_author`),
  ADD KEY `theme_category` (`theme_category`);

--
-- Indeks untuk tabel `theme_authors`
--
ALTER TABLE `theme_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `theme_categoris`
--
ALTER TABLE `theme_categoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `theme_authors`
--
ALTER TABLE `theme_authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `theme_categoris`
--
ALTER TABLE `theme_categoris`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `themes`
--
ALTER TABLE `themes`
  ADD CONSTRAINT `themes_ibfk_1` FOREIGN KEY (`theme_author`) REFERENCES `theme_authors` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `themes_ibfk_2` FOREIGN KEY (`theme_category`) REFERENCES `theme_categoris` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
