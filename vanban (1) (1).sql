-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2025 at 03:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vanban`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CTD-CTCT', '2024-11-14 19:22:33', '2024-11-14 19:22:33'),
(2, 'CT Tham Mưu', '2024-11-21 08:45:44', '2024-11-21 08:45:44'),
(4, 'CT Hậu cần', '2024-12-03 08:55:45', '2024-12-03 08:55:45'),
(5, 'CT Kỹ thuật', '2024-12-03 08:57:27', '2024-12-03 08:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `cate_child`
--

CREATE TABLE `cate_child` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cate_child`
--

INSERT INTO `cate_child` (`id`, `name`, `cate_id`, `created_at`, `updated_at`) VALUES
(1, 'CT Tuyên huấn', 1, '2024-11-14 19:45:16', '2024-11-14 19:45:16'),
(4, 'CT Tổ chức XD Đảng', 1, '2024-12-03 08:52:05', '2024-12-03 08:52:05'),
(5, 'CT KT, Giám sát', 1, '2024-12-03 08:52:22', '2024-12-03 08:52:22'),
(6, 'CT Cán bộ', 1, '2024-12-03 08:52:44', '2024-12-03 08:52:44'),
(7, 'CT Chính sách', 1, '2024-12-03 08:52:54', '2024-12-03 08:52:54'),
(8, 'CT BV An ninh', 1, '2024-12-03 08:53:05', '2024-12-03 08:53:05'),
(9, 'CT Dân Vận', 1, '2024-12-03 08:53:19', '2024-12-03 08:53:19'),
(10, 'CT Quần chúng', 1, '2024-12-03 08:53:33', '2024-12-03 08:53:33'),
(11, 'CT KH Tổng hợp', 1, '2024-12-03 08:53:46', '2024-12-03 08:53:46'),
(12, 'CT SSCĐ', 2, '2024-12-03 08:54:06', '2024-12-03 08:54:06'),
(13, 'CT Huấn luyện', 2, '2024-12-03 08:54:15', '2024-12-03 08:54:15'),
(14, 'CT XD Lực lượng', 2, '2024-12-03 08:54:26', '2024-12-03 08:54:26'),
(15, 'CT XD NNCQ, QL,RLKL', 2, '2024-12-03 08:54:55', '2024-12-03 08:54:55'),
(16, 'CT TM Hậu cần', 4, '2024-12-03 08:56:01', '2024-12-03 08:56:01'),
(17, 'CT Quân nhu', 4, '2024-12-03 08:56:10', '2024-12-03 08:56:10'),
(18, 'CT Quân Y', 4, '2024-12-03 08:56:17', '2024-12-03 08:56:17'),
(19, 'CT Xăng dầu', 4, '2024-12-03 08:56:25', '2024-12-03 08:56:25'),
(20, 'CT Doanh trại', 4, '2024-12-03 08:56:34', '2024-12-03 08:56:34'),
(21, 'CT Vận tải', 4, '2024-12-03 08:56:44', '2024-12-03 08:56:44'),
(22, 'CT Tài chính', 4, '2024-12-03 08:57:17', '2024-12-03 08:57:17'),
(23, 'CTKT Ngành', 5, '2024-12-03 08:57:38', '2024-12-03 08:57:38'),
(24, 'CTKT Vật tư, toàn tàu', 5, '2024-12-03 08:58:08', '2024-12-03 08:58:24'),
(25, 'XD NNCQKT, VCĐ 50', 5, '2024-12-03 08:59:05', '2024-12-03 08:59:05'),
(26, 'CT BĐAT, VSATLĐ', 5, '2024-12-03 08:59:32', '2024-12-03 08:59:32'),
(27, 'CT HL Kỹ thuật', 5, '2024-12-03 08:59:58', '2024-12-03 08:59:58'),
(28, 'HĐ KHCN, TT KHKTQS', 5, '2024-12-03 09:00:25', '2024-12-03 09:00:25'),
(29, 'CT Động viên kỹ thuật', 5, '2024-12-03 09:00:44', '2024-12-30 02:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE `choice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer_pick` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doccate`
--

CREATE TABLE `doccate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `catechild_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doccate`
--

INSERT INTO `doccate` (`id`, `name`, `catechild_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(1, 'VB của BQP', 1, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(2, 'VB của QCHQ', 1, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(3, 'VB của BTL V3', 1, 1, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(4, 'VB của Lữ đoàn 172', 1, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(5, 'VB của TW, CP, Bộ, Ban, Ngành', 1, 1, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(6, 'VB của BQP', 4, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(7, 'VB của QCHQ', 4, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(8, 'VB của BTL V3', 4, 1, '2024-12-03 09:01:43', '2024-12-03 09:01:43'),
(9, 'VB của Lữ đoàn 172', 4, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(16, 'VB của BQP', 5, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(17, 'VB của QCHQ', 5, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(18, 'VB của BTL V3', 5, 1, '2024-12-03 09:01:43', '2024-12-03 09:01:43'),
(19, 'VB của Lữ đoàn 172', 5, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(21, 'VB của BQP', 6, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(22, 'VB của QCHQ', 6, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(23, 'VB của BTL V3', 6, 1, '2024-12-03 09:01:43', '2024-12-03 09:01:43'),
(24, 'VB của Lữ đoàn 172', 6, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(26, 'VB của TW, CP, Bộ, Ban, Ngành', 4, 1, '2024-12-22 08:25:33', '2024-12-22 08:25:33'),
(27, 'VB của TW, CP, Bộ, Ban, Ngành', 5, 1, '2024-12-23 00:19:06', '2024-12-23 00:19:06'),
(28, 'VB của TW, CP, Bộ, Ban, Ngành', 6, 1, '2024-12-23 01:19:38', '2024-12-23 01:19:38'),
(29, 'VB của BQP', 7, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(30, 'VB của QCHQ', 7, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(31, 'VB của BTL V3', 7, 1, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(32, 'VB của Lữ đoàn 172', 7, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(33, 'VB của TW, CP, Bộ, Ban, Ngành', 7, 1, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(34, 'VB của BQP', 8, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(35, 'VB của QCHQ', 8, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(36, 'VB của BTL V3', 8, 1, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(37, 'VB của Lữ đoàn 172', 8, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(38, 'VB của TW, CP, Bộ, Ban, Ngành', 8, 1, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(39, 'VB của BQP', 9, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(40, 'VB của QCHQ', 9, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(41, 'VB của BTL V3', 9, 1, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(42, 'VB của Lữ đoàn 172', 9, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(43, 'VB của TW, CP, Bộ, Ban, Ngành', 9, 1, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(44, 'VB của BQP', 10, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(45, 'VB của QCHQ', 10, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(46, 'VB của BTL V3', 10, 1, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(47, 'VB của Lữ đoàn 172', 10, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(48, 'VB của TW, CP, Bộ, Ban, Ngành', 10, 1, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(49, 'VB của BQP', 11, 1, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(50, 'VB của QCHQ', 11, 1, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(51, 'VB của BTL V3', 11, 1, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(52, 'VB của Lữ đoàn 172', 11, 1, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(53, 'VB của TW, CP, Bộ, Ban, Ngành', 11, 1, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(54, 'VB của BQP', 12, 2, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(55, 'VB của QCHQ', 12, 2, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(56, 'VB của BTL V3', 12, 2, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(57, 'VB của Lữ đoàn 172', 12, 2, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(58, 'VB của TW, CP, Bộ, Ban, Ngành', 12, 2, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(59, 'VB của BQP', 13, 2, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(60, 'VB của QCHQ', 13, 2, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(61, 'VB của BTL V3', 13, 2, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(62, 'VB của Lữ đoàn 172', 13, 2, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(63, 'VB của TW, CP, Bộ, Ban, Ngành', 13, 2, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(64, 'VB của BQP', 14, 2, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(65, 'VB của QCHQ', 14, 2, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(66, 'VB của BTL V3', 14, 2, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(67, 'VB của Lữ đoàn 172', 14, 2, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(68, 'VB của TW, CP, Bộ, Ban, Ngành', 14, 2, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(69, 'VB của BQP', 15, 2, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(70, 'VB của QCHQ', 15, 2, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(71, 'VB của BTL V3', 15, 2, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(72, 'VB của Lữ đoàn 172', 15, 2, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(73, 'VB của TW, CP, Bộ, Ban, Ngành', 15, 2, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(74, 'VB của BQP', 16, 4, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(75, 'VB của QCHQ', 16, 4, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(76, 'VB của BTL V3', 16, 4, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(77, 'VB của Lữ đoàn 172', 16, 4, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(78, 'VB của TW, CP, Bộ, Ban, Ngành', 16, 4, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(79, 'VB của BQP', 17, 4, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(80, 'VB của QCHQ', 17, 4, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(81, 'VB của BTL V3', 17, 4, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(82, 'VB của Lữ đoàn 172', 17, 4, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(83, 'VB của TW, CP, Bộ, Ban, Ngành', 17, 4, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(84, 'VB của BQP', 18, 4, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(85, 'VB của QCHQ', 18, 4, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(86, 'VB của BTL V3', 18, 4, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(87, 'VB của Lữ đoàn 172', 18, 4, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(88, 'VB của TW, CP, Bộ, Ban, Ngành', 18, 4, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(89, 'VB của BQP', 19, 4, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(90, 'VB của QCHQ', 19, 4, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(91, 'VB của BTL V3', 19, 4, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(92, 'VB của Lữ đoàn 172', 19, 4, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(93, 'VB của TW, CP, Bộ, Ban, Ngành', 19, 4, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(94, 'VB của BQP', 20, 4, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(95, 'VB của QCHQ', 20, 4, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(96, 'VB của BTL V3', 20, 4, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(97, 'VB của Lữ đoàn 172', 20, 4, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(98, 'VB của TW, CP, Bộ, Ban, Ngành', 20, 4, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(99, 'VB của BQP', 21, 4, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(100, 'VB của QCHQ', 21, 4, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(101, 'VB của BTL V3', 21, 4, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(102, 'VB của Lữ đoàn 172', 21, 4, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(103, 'VB của TW, CP, Bộ, Ban, Ngành', 21, 4, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(104, 'VB của BQP', 22, 4, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(105, 'VB của QCHQ', 22, 4, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(106, 'VB của BTL V3', 22, 4, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(107, 'VB của Lữ đoàn 172', 22, 4, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(108, 'VB của TW, CP, Bộ, Ban, Ngành', 22, 4, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(109, 'VB của BQP', 23, 5, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(110, 'VB của QCHQ', 23, 5, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(111, 'VB của BTL V3', 23, 5, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(112, 'VB của Lữ đoàn 172', 23, 5, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(113, 'VB của TW, CP, Bộ, Ban, Ngành', 23, 5, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(114, 'VB của BQP', 24, 5, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(115, 'VB của QCHQ', 24, 5, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(116, 'VB của BTL V3', 24, 5, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(117, 'VB của Lữ đoàn 172', 24, 5, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(118, 'VB của TW, CP, Bộ, Ban, Ngành', 24, 5, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(119, 'VB của BQP', 25, 5, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(120, 'VB của QCHQ', 25, 5, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(121, 'VB của BTL V3', 25, 5, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(122, 'VB của Lữ đoàn 172', 25, 5, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(123, 'VB của TW, CP, Bộ, Ban, Ngành', 25, 5, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(124, 'VB của BQP', 26, 5, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(125, 'VB của QCHQ', 26, 5, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(126, 'VB của BTL V3', 26, 5, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(127, 'VB của Lữ đoàn 172', 26, 5, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(128, 'VB của TW, CP, Bộ, Ban, Ngành', 26, 5, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(129, 'VB của BQP', 27, 5, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(130, 'VB của QCHQ', 27, 5, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(131, 'VB của BTL V3', 27, 5, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(132, 'VB của Lữ đoàn 172', 27, 5, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(133, 'VB của TW, CP, Bộ, Ban, Ngành', 27, 5, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(134, 'VB của BQP', 28, 5, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(135, 'VB của QCHQ', 28, 5, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(136, 'VB của BTL V3', 28, 5, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(137, 'VB của Lữ đoàn 172', 28, 5, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(138, 'VB của TW, CP, Bộ, Ban, Ngành', 28, 5, '2024-12-03 09:02:25', '2024-12-03 09:02:25'),
(139, 'VB của BQP', 29, 5, '2024-11-14 19:45:25', '2024-12-03 09:01:22'),
(140, 'VB của QCHQ', 29, 5, '2024-12-03 09:01:32', '2024-12-03 09:01:32'),
(141, 'VB của BTL V3', 29, 5, '2024-12-03 09:01:43', '2024-12-18 07:20:40'),
(142, 'VB của Lữ đoàn 172', 29, 5, '2024-12-03 09:01:53', '2024-12-03 09:01:53'),
(143, 'VB của TW, CP, Bộ, Ban, Ngành', 29, 5, '2024-12-03 09:02:25', '2024-12-03 09:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_code` varchar(20) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `title` varchar(500) NOT NULL,
  `content` varchar(120) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `catechild_id` int(10) UNSIGNED NOT NULL,
  `doccate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `document_code`, `type`, `title`, `content`, `user_id`, `cate_id`, `catechild_id`, `doccate_id`, `created_at`, `updated_at`) VALUES
(20, '1269/HD-CT', 'Hướng dẫn', 'Xét tặng danh hiệu \"Đơn vị văn hóa tiêu biểu\"  trong Quân đội Nhân dân Việt Nam', '2024-05-24', 1, 1, 1, 2, '2024-12-22 07:54:27', '2024-12-22 07:54:27'),
(21, '1811/QC-BTL', 'Quy chế', 'Xây dựng, quản lý, khai thác tủ sách pháp luật trong Bộ Tư Lệnh Vùng 3 Hải Quân', '2024-05-23', 1, 1, 1, 3, '2024-12-22 07:59:22', '2024-12-22 08:23:20'),
(22, '3399/QyĐ-BTL', 'Quyết định', 'Về thực hiện thông báo chính trị - thời sự, đọc báo, nghe đài, xem truyền hình; thực hiện ngày CTVHTT, ngày Đảng, ngày Pháp luật trong Vùng 3 Hải Quân', '2024-09-27', 1, 1, 1, 3, '2024-12-22 08:02:22', '2024-12-22 08:02:22'),
(23, '12377/HD-CT', 'Hướng dẫn', 'Xét tặng danh hiệu \"Đơn vị văn hóa\" tiêu biểu hằng năm', '2024-06-10', 1, 1, 1, 2, '2024-12-22 08:05:36', '2024-12-22 08:05:36'),
(24, '2423-CT/QUTW', 'Chỉ thị', 'Chỉ thị 2423 của QUTW về đổi mới GDCT trong giai đoạn mới', '2024-09-11', 1, 1, 1, 3, '2024-12-22 08:13:37', '2024-12-22 08:23:57'),
(25, '4263', 'Công văn', 'V/v tiếp tục nâng cao chất lượng thực hiện Quy chế giáo dục chính trị', '2021-12-13', 1, 1, 1, 3, '2024-12-22 08:16:47', '2024-12-22 08:16:47'),
(27, '144-QĐ/TW', 'Quy định', 'Chuẩn mực đạo đức Cách mạng của CB,ĐV trong giai đoạn mới', '2024-05-09', 1, 1, 4, 26, '2024-12-22 08:28:12', '2024-12-22 09:01:40'),
(28, '189-QĐ/TW', 'Quy định', 'Về kiểm soat quyền lực, phòng, chống tham nhũng, tiêu cực trong quản lý, sử dụng tài chính, tài sản công', '2024-08-10', 1, 1, 4, 26, '2024-12-22 08:29:48', '2024-12-22 09:02:01'),
(29, '109-QĐ/TW', 'Quy định', 'Về công tác kiểm tra của tổ chức Đảng đối với việt tu dưỡng, rèn luyện đạo đức, lối sống của cán bộ, đảng viên', '2018-01-03', 1, 1, 4, 26, '2024-12-22 08:31:30', '2024-12-22 09:02:07'),
(30, '678/BTL-CT', 'Công văn', 'V/v xét, tặng huy hiệu Đảng đối với đảng viên', '2024-03-11', 1, 1, 4, 8, '2024-12-22 08:33:05', '2024-12-22 08:33:05'),
(31, '08-QĐi/TW', 'Quy định', 'Trách nhiệm nêu gương của cán bộ , đảng viên, trước hết là Ủy viên bộ CT, Ủy viên Ban Bí thư,Ủy viên Ban chấp hành Trung Ương', '2018-10-25', 1, 1, 4, 26, '2024-12-22 08:50:03', '2024-12-22 09:02:14'),
(32, '01-HD/TW', 'Hướng dẫn', 'Một số vấn đề cụ thể thi hành điều lệ Đảng', '2021-09-28', 1, 1, 4, 26, '2024-12-22 08:51:31', '2024-12-22 08:51:31'),
(33, '03-HD', 'Hướng dẫn', 'Thực hiện chế độ đảng phí theo quyết định số 342-QĐ/TW, ngày 28-12-2010 của BCT', '2016-07-06', 1, 1, 4, 26, '2024-12-22 08:53:17', '2024-12-22 08:53:17'),
(34, '540-CV/VPQU', 'Công văn', 'V/v thực hiện quy định về những điều đảng viên không được làm', '2021-10-28', 1, 1, 4, 26, '2024-12-22 08:54:47', '2024-12-22 08:54:47'),
(35, '24-QĐ/TW', 'Quy định', 'Thi hành điều lệ đảng', '2021-07-30', 1, 1, 4, 26, '2024-12-22 08:56:43', '2024-12-22 09:02:21'),
(36, '104-QĐ/QU', 'Quy định', 'Một số vấn đề cơ bản về thực hiện nguyên tắc tập trung dân chủ của tổ chức Đảng trong QĐNDVN', '2017-02-16', 1, 1, 4, 26, '2024-12-22 08:58:35', '2024-12-22 09:02:36'),
(37, '213-QĐ/TW', 'Quy định', 'Về trách nhiệm của đảng viên đang công tác thường xuyên giữ mối liên hệ với tổ chức đảng và nhân dân nơi củ trú', '2021-01-02', 1, 1, 4, 26, '2024-12-22 09:00:19', '2024-12-22 09:02:43'),
(38, '21-NQ/TW', 'Nghị Quyết', 'Hội nghị lần thứ 5 ban chấp hành trung ương đảng khóa XIII về tăng cường cũng cố, xây dựng tổ chức cơ sở đảng và nâng cao chất lượng đội ngũ đảng viên trong giai đoạn mới', '2022-06-16', 1, 1, 4, 26, '2024-12-22 09:05:50', '2024-12-22 09:05:50'),
(39, '02-HD/UBKTTW', 'Hướng dẫn', 'Thực hiện  quy định  về những điều đảng viên không được làm', '2021-11-29', 1, 1, 4, 26, '2024-12-22 09:07:16', '2024-12-22 09:07:16'),
(40, '21-KL/TW', 'Kết luận', 'Hội nghị lần thứ 4 ban chấp hành trung ương đảng khóa XIII về đẩy mạnh xây dựng , chỉnh đốn đảng vàHTCT; kiên quyết ngăn chặn đẩy lùi, xử lý nghiêm CB,ĐV suy thoái về tư tưởng chính trị, đạo đức, lối sống, biểu hiện \"tự diễn biến\", \"tự chuyển hóa\"', '2021-10-25', 1, 1, 4, 26, '2024-12-22 09:14:55', '2024-12-22 09:14:55'),
(41, '01-KL/TW', 'Kết luận', 'Về tiếp tục thực hiện chỉ thị số 05-CT/TW của BCT \" về đẩy mạnh học tập và làm theo tư tưởng, đạo đức, phong cách HCM\"', '2021-05-18', 1, 1, 4, 26, '2024-12-22 09:16:36', '2024-12-22 09:16:36'),
(42, '59/2016/TT-BQP', 'Thông tư', 'Quy định tiếp công dân trong BQP', '2016-04-21', 1, 1, 5, 16, '2024-12-23 00:15:08', '2024-12-23 00:15:08'),
(43, '09-HD/UBKTTW', 'Hướng dẫn', 'Cơ câu tổ chức và số lượng ủy viên ban kiểm tra của đảng ủy cấp trên trực tiếp cơ sở và cấp trên cơ sở thuộc đảng bộ Quân dội', '2020-02-14', 1, 1, 5, 27, '2024-12-23 00:21:02', '2024-12-23 00:21:02'),
(44, '234-KL/QUTW', 'Kết luận', 'về cơ cấu và công tác  nhân sự UBKT  đảng ủy từ cấp cơ sở  đến cấp trực thuộc QUTW nhiệm kỳ 2020-2025', '2020-02-29', 1, 1, 5, 27, '2024-12-23 00:23:11', '2024-12-23 00:23:11'),
(45, '22-QĐ/TW', 'Quy định', 'Về công tác kiểm tra, giám sát và kỷ luật của Đảng', '2021-07-28', 1, 1, 5, 27, '2024-12-23 00:26:10', '2024-12-23 00:26:10'),
(46, '86-QĐ/TW', 'Quy định', 'Giám sát trong Đảng', '2017-06-01', 1, 1, 5, 27, '2024-12-23 00:26:58', '2024-12-23 00:26:58'),
(47, '21036/CT-CBc', 'Công văn', 'V/v quán triệt , thực hiện quy định số 114-QĐ/TW ngày 11/7/2023 của BCT', '0003-10-24', 1, 1, 5, 17, '2024-12-23 00:30:12', '2024-12-23 00:30:12'),
(48, '2155-QĐ/QUTW', 'Quy định', 'Thẩm quyền thi hành kỷ luật  về Đảng và kỷ luật Quân đội  của các cấp ủy, tổ chức Đảng trong QĐNDVN', '2023-07-28', 1, 1, 5, 27, '2024-12-23 00:52:57', '2024-12-23 00:52:57'),
(49, '01-QĐi/UBKTTW', 'Quy định', 'Về tổ chức và hoạt động của đoàn kiểm tra, giám sát của UBKTTW', '2018-05-03', 1, 1, 5, 27, '2024-12-23 01:03:22', '2024-12-23 01:03:22'),
(50, '117-QĐ/TW', 'Quy định', 'Về xin lỗi và phục hồi quyền lợi của tổ chức Đảng, đảng viên bị kỷ luật oan', '2023-08-18', 1, 1, 5, 27, '2024-12-23 01:10:09', '2024-12-23 01:10:09'),
(51, '89-QĐ/TW', 'Quyết định', 'Ban hành quy trình kiểm tra, giám sát, thi hành kỷ luật đảng, giải quyết tố cáo, khiếu nại kỷ luật đảng của cấp ủy tỉnh và tương đương cơ sở', '2022-12-01', 1, 1, 5, 27, '2024-12-23 01:12:19', '2024-12-23 01:12:19'),
(52, '354-QĐ/UBKTTW', 'Quyết định', 'Ban hành  các quy trình  thực hiện kiểm tra, giám sát và thi hành kỷ luật đảng', '2021-12-22', 1, 1, 5, 27, '2024-12-23 01:14:27', '2024-12-23 01:14:27'),
(53, '1094-QĐ/UBKT', 'Quyết định', 'Ban hành Quy trình thực hiện công tác kiểm tra, giám sát và thi hành kỷ luật đảng  của UBKT các cấp  trong Đảng bộ Quân đội', '2022-08-30', 1, 1, 5, 27, '2024-12-23 01:17:09', '2024-12-23 01:17:09'),
(54, '2069-QĐ/QUTW', 'Quyết định', 'Ban hành quy trình kiểm tra, giám sát, thi hành kỷ luật đảng, giải quyết tố cáo của cấp ủy, tổ chức đảng các cấp trong Đảng bộ Quân đội', '2023-06-30', 1, 1, 5, 27, '2024-12-23 01:18:55', '2024-12-23 01:18:55'),
(55, '1992-QĐ/QUTW', 'Quy định', 'Về việc lấy phiếu tín nhiệm đối với cấp ủy viên, cán bộ chỉ huy, quản lý trong QĐNDVN', '2023-05-25', 1, 1, 6, 28, '2024-12-23 01:36:31', '2024-12-23 01:36:31'),
(56, '2254/CT-CB', 'Công văn', 'V/v thực hiện quy định  của QUTW về lấy phiếu tín nhiệm  đối với cấp ủy viên, cán bộ chỉ huy, quản lý trong QĐNDVN', '2023-07-06', 1, 1, 6, 28, '2024-12-23 01:41:27', '2024-12-23 01:41:27'),
(57, '80/2021/TT-BQP', 'Thông tư', 'Quy định thời hạn người có chức vụ, quyền hạn trong Quân đội không được thành lập, giữ chức danh, chức vụ quản lý, điều hành doanh nghiệp, hợp tác xã thuộc lĩnh vực trước đây mình có trách nhiệm quản lý  sau khi thôi giữ chức vụ; quy định danh mục và thời hạn định kỳ chuyển đổi vị trí công tác trong cơ quan, đơn vị thuộc BQP', '2021-07-08', 1, 1, 6, 21, '2024-12-23 01:48:00', '2024-12-23 01:48:00'),
(58, '755/HD-BHXH', 'Hướng dẫn', 'Thủ tục hồ sơ, quy trình cấp, quản lý và sử dụng thẻ bảo hiểm y tế trong BQP', '2022-10-28', 1, 1, 7, 29, '2024-12-23 01:51:07', '2024-12-23 01:51:07'),
(59, '83/2023/TT-BQP', 'Thông tư', 'Quy định và hướng dẫn quản lý sử dụng  nhà ở công vụ trong BQP', '2023-11-11', 1, 1, 7, 29, '2024-12-23 01:54:22', '2024-12-23 01:54:22'),
(60, '01/VBHB-VPQH', 'Khác', 'BỘ LUẬT HÌNH SỰ 2015 SỬA ĐỔI BỔ SUNG 2017', '2023-07-10', 1, 1, 8, 38, '2024-12-23 01:59:34', '2024-12-23 01:59:34'),
(62, '143/2023/TT-BQP', 'Thông tư', 'Quy định xử lý kỷ luật trong QĐNDVN', '2023-12-27', 1, 1, 8, 34, '2024-12-23 02:02:16', '2024-12-23 02:02:16'),
(63, '590-CT/ĐUQSTW', 'Chỉ thị', 'V/v tiếp tục đẩy mạnh xây dựng và thực hiện quy chế dân chủ cơ sở trong quân đội', '2010-10-04', 1, 1, 9, 43, '2024-12-23 02:05:05', '2024-12-23 02:05:05'),
(64, '120-KL/TW', 'Kết luận', 'V/v tiếp tục đẩy mạnh, nâng cao chất lượng, hiệu quả việc xây dựng và thực hiện quy chế dân chủ ở cơ sở', '2016-01-07', 1, 1, 9, 43, '2024-12-23 02:06:28', '2024-12-23 02:06:28'),
(65, '165/2018/TT-BQP', 'Thông tư', 'Quy định về tổ chức và hoạt động của hội đồng quân nhân trong QĐNDVN', '2018-12-01', 1, 1, 9, 39, '2024-12-23 02:07:57', '2024-12-23 02:07:57'),
(66, '767-HD/BTL', 'Hướng dẫn', 'Công tác tuyên truyền, hướng nghiệp, tư vấn tuyển sinh quân sự cho thanh, thiếu niên giai đoạn 2024-2030', '2024-03-19', 1, 1, 10, 46, '2024-12-23 02:10:20', '2024-12-23 02:10:20'),
(67, '764/HD-BTL', 'Hướng dẫn', 'Văn kiện sổ sách công tác Đoàn và phong trào thanh niên', '2024-03-19', 1, 1, 10, 46, '2024-12-23 02:16:41', '2024-12-23 02:16:41'),
(68, '997/HD-BTL', 'Hướng dẫn', 'Triển khai mô hình hoạt động \"Bát nước thao trường, khâu áo chiến sĩ, bửa cơm tự quản\" năm 2024 và những năm tiếp theo', '2024-04-08', 1, 1, 10, 46, '2024-12-23 02:20:54', '2024-12-23 02:20:54'),
(69, '343/HD-LĐ', 'Hướng dẫn', 'Văn kiện sổ sách công tác đoàn và phong trào thanh niên', '2024-03-07', 1, 1, 10, 47, '2024-12-23 02:22:04', '2024-12-23 02:22:04'),
(70, '2741/QC-LĐ', 'Quy chế', 'Hoạt động của Ban vì sự tiến bộ của phụ nữ Lữ đoàn 172', '2022-11-15', 1, 1, 10, 47, '2024-12-23 02:23:07', '2024-12-23 02:23:07'),
(71, '2227/QC-BTL', 'Quy chế', 'Công tác phụ nữ trong Vùng 3 Hải quân', '2024-07-25', 1, 1, 10, 46, '2024-12-23 02:24:09', '2024-12-23 02:24:09'),
(72, '166/2023/TT-BQP', 'Thông tư', 'Ban hành quy chế về giải thưởng tuổi trẻ sáng tạo trong QĐNDVN', '2023-12-29', 1, 1, 10, 44, '2024-12-23 02:25:17', '2024-12-23 02:25:17'),
(73, '758/HD-BTL', 'Hướng dẫn', 'Đăng ký sổ tổng hợp CTĐ-CTCT; việc ký, phê duyệt một số văn bản CTĐ-CTCT', '2024-03-19', 1, 1, 11, 51, '2024-12-23 02:27:23', '2024-12-23 02:27:23'),
(76, '18/2012/QH13', 'Khác', 'Luật Biển Việt Nam', '2012-06-21', 2, 1, 1, 5, '2024-12-27 01:13:18', '2024-12-27 01:13:18'),
(77, '52/2014/QH13', 'Khác', 'Luật hôn nhân và gia đình', '2014-06-19', 2, 1, 1, 5, '2024-12-27 01:14:07', '2024-12-27 01:14:07'),
(78, '24/2018/QH14', 'Khác', 'Luật an ninh mạng', '2018-06-12', 2, 1, 1, 5, '2024-12-27 01:14:58', '2024-12-27 01:14:58'),
(79, '23/2008/QH12', 'Khác', 'Luật giao thông đường bộ', '2008-11-13', 2, 1, 1, 5, '2024-12-27 01:16:00', '2024-12-27 01:16:00'),
(80, '78/2015/QH13', 'Khác', 'Luật nghĩa vụ quân sự', '2015-06-19', 2, 1, 1, 5, '2024-12-27 01:16:46', '2024-12-27 01:16:46'),
(81, '44/2019/QH14', 'Khác', 'Luật phòng, chống tác hại của rượu, bia', '2019-06-14', 2, 1, 1, 5, '2024-12-27 01:18:01', '2024-12-27 01:18:01'),
(82, '13/2022/QH15', 'Khác', 'Luật phòng, chống bạo lực gia đình', '2022-11-14', 2, 1, 1, 5, '2024-12-27 01:19:01', '2024-12-27 01:19:01'),
(83, '22/2018/QH14', 'Khác', 'Luật Quốc phòng', '2016-06-08', 2, 1, 1, 5, '2024-12-27 01:19:44', '2024-12-27 01:19:44'),
(84, '98/2015/QH13', 'Khác', 'Luật Quân nhân chuyện nghiệp, công nhân và viên chức quốc phòng', '2015-11-26', 2, 1, 1, 5, '2024-12-27 01:20:44', '2024-12-27 01:20:44'),
(85, '06/2022-QH15', 'Khác', 'Luật thi đua, khen thưởng', '2022-06-15', 2, 1, 1, 5, '2024-12-27 01:21:31', '2024-12-27 01:21:31'),
(86, '02/2016/QH14', 'Khác', 'Luật tín ngưỡng, tôn giáo', '2016-11-18', 2, 1, 1, 5, '2024-12-27 01:22:31', '2024-12-27 01:22:31'),
(87, '2782/QĐ-BQP', 'Quyết định', 'Công bố thủ tục hành chính được sửa đổi lĩnh vực chính sách người có công với cách mạng thuộc phạm vi chức năng quản lý của BQP', '2023-06-26', 1, 1, 1, 1, '2024-12-30 01:14:15', '2024-12-30 01:14:15'),
(89, '53/2024/TT-BQP', 'Thông tư', 'Quy định điều chỉnh trợ cấp hằng tháng đối với quân nhân, người làm công tác cơ yếu hưởng lương như đối với quân nhân đã phục viên, xuất ngũ, thôi việc', '2024-09-17', 1, 1, 1, 1, '2024-12-30 01:18:50', '2024-12-30 01:18:50'),
(90, '55/2022/TT-BQP', 'Thông tư', 'hướng dẫn quy trình công nhận và thực hiện chế độ ưu đãi  đối với người có công với cách mạng thuộc trách nhiệm của BQP', '2022-07-27', 1, 1, 1, 1, '2024-12-30 01:20:42', '2024-12-30 01:20:42'),
(91, '82/2023/TT-BQP', 'Thông tư', 'Quy định về trợ cấp hằng tháng đối với quân nhân, người làm công tác cơ yếu hưởng lương như đối với quân nhân đã phục viên, xuất ngũ, thôi việc', '2023-11-03', 1, 1, 1, 1, '2024-12-30 01:21:47', '2024-12-30 01:21:47'),
(92, '118/2023/TT-BQP', 'Thông tư', 'Quy định và hướng dẫn thi đua, khen thưởng trong QĐNDVN', '2023-12-22', 1, 1, 1, 1, '2024-12-30 01:23:03', '2024-12-30 01:23:03'),
(93, '6003/QĐ-BQP', 'Quyết định', 'Công bố thủ tục hành chính được sửa đổi, bổ sung lĩnh vực chính sách thuộc phạm vi chức năng quản lý của BQP', '2024-12-10', 1, 2, 15, 69, '2024-12-30 02:08:51', '2024-12-30 02:08:51'),
(94, '23/2018/TT-BQP', 'Thông tư', 'Quy định chế độ quản lý, lưu trữ, khai thác, sử dụng hồ sơ quản lý tạm giữ, tạm giam trong quân đội', '2018-03-08', 1, 2, 15, 69, '2024-12-30 02:10:15', '2024-12-30 02:10:15'),
(95, '25/2019/TT-BQP', 'Thông tư', 'Quy định bồi dưỡng đối với các đối tượng trong QĐ làm nhiệm vụ tiếp công dân, xử lý đơn khiếu nại, tố cáo, kiến nghị, phản ánh', '2019-03-25', 1, 2, 15, 69, '2024-12-30 02:11:46', '2024-12-30 02:11:46'),
(96, '63/2022/TT-BQP', 'Thông tư', 'Quy định về tín chỉ đào tạo, bồi dưỡng, tập huấn trong nhà trường QĐ', '2022-09-30', 1, 2, 15, 69, '2024-12-30 02:12:54', '2024-12-30 02:12:54'),
(97, '09/VBHN-BQP', 'Khác', 'Về thực hiện một số chế độ, chính sách góp phần chăm sóc đối với cán bộ quân đội nghĩ hưu', '2024-05-08', 1, 2, 15, 69, '2024-12-30 02:22:52', '2024-12-30 02:22:52'),
(98, '09/VBHN-BQP', 'Khác', 'Quy định tiêu chuẩn tuyên truyền viên giáo dục quốc phòng và an ninh', '2023-12-14', 1, 2, 15, 69, '2024-12-30 02:24:17', '2024-12-30 02:24:17'),
(100, '66/2024/TT-BQP', 'Thông tư', 'Quy định về kiểm tra an toàn kỹ thuật và bảo vệ môi trường xe cơ giới, xe máy chuyên dùng thộc phạm vi quản lý của BQP', '2024-10-14', 1, 4, 16, 74, '2024-12-30 02:29:14', '2024-12-30 02:29:14'),
(101, '79/2019/TT-BQP', 'Thông tư', 'hướng dẫn thực hiện mức lương cơ sở đối với các đối tượng đang hưởng lương hoặc phụ cấp quân hàm từ ngân sách nhà nước trong các cơ quan đơn vị thuộc BQP', '2019-06-11', 1, 4, 16, 74, '2024-12-30 02:30:55', '2024-12-30 02:30:55'),
(102, '88/2018/TT-BQP', 'Thông tư', 'hướng dẫn thực hiện mức lương cơ sở đối với các đối tượng đang hưởng lương hoặc phụ cấp quân hàm  từ ngân sách nhà nước trong các cơ quan, đơn vị thuộc  BQP', '2018-06-28', 1, 4, 16, 74, '2024-12-30 02:34:18', '2024-12-30 02:34:18'),
(103, '94/2024/TT-BQP', 'Thông tư', 'Quy định chi  tiết một số điều của Luật nhà ở trong QĐNDVN', '2024-11-11', 1, 4, 16, 74, '2024-12-30 02:35:33', '2024-12-30 02:35:33'),
(104, '95/2024/TT-BQP', 'Thông tư', 'hướng dẫn thực hiện chế độ tiền thưởng đối với các đối tượng hưởng lương từ ngân sách nhà nước thuộc phạm vi quản lý của BQP', '2024-11-11', 1, 4, 16, 74, '2024-12-30 02:37:20', '2024-12-30 02:37:20'),
(105, '224/2017/TT-BQP', 'Thông tư', 'hướng dẫn thực hiện chế độ phụ cấp thâm niên đối với sỹ quan, QNCN, công nhân quốc phòng và viên chức Quốc phòng', '2017-09-13', 1, 4, 16, 74, '2024-12-30 02:38:58', '2024-12-30 02:38:58'),
(106, '06/VBHN-BQP', 'Khác', 'quy định tiêu chuẩn, định lượng, mức tiền ăn, tiền thuốc bổ thường xuyên đối với huấn luyện viên, vận động viên và giáo viên thể dục, thể thao trong quân đội', '2022-08-12', 1, 4, 16, 74, '2024-12-30 02:41:13', '2024-12-30 02:41:13'),
(107, '07/VBHN-BQP', 'Khác', 'quy định và hướng dẫn quản lý sử dụng nhà ở công vụ trong BQP', '2023-12-11', 1, 4, 16, 74, '2024-12-30 02:43:48', '2024-12-30 02:43:48'),
(108, '08/VBHN-BQP', 'Khác', 'Quyết định của Bộ trưởng BQP ban hành quy định về khám bệnh, chữa bênh đối với sỹ quan phụ viên có đủ 15 năm phụ vụ trong QĐ', '2024-05-08', 1, 4, 16, 74, '2024-12-30 02:46:07', '2024-12-30 02:46:07'),
(109, '02/2024/TT-BQP', 'Thông tư', 'về công tác đăng kiểm tàu quấn sự', '2024-01-12', 1, 5, 24, 114, '2024-12-30 02:47:39', '2024-12-30 02:47:39'),
(110, '68/2024/TT-BQP', 'Thông tư', 'quy định về đào tạo, sát hạch cấp giấy phép lái xe quân sự; bồi dưỡng kiến thực pháp luật về giao thông đường bộ  cho người điều khiển xe máy  chuyên dùng thuộc phạm vi quản lý của BQP', '2024-10-14', 1, 5, 24, 114, '2024-12-30 02:49:46', '2024-12-30 02:49:46'),
(111, '71/2024/TT-BQP', 'Thông tư', 'quy định về kiểm soát quân sự, kiểm tra xe quân sự tham gia giao thông đường bộ', '2024-10-14', 1, 5, 24, 114, '2024-12-30 02:50:56', '2024-12-30 02:50:56'),
(112, '08/VBHN-BQP', 'Công văn', 'Ban hành quy chế xét duyệt nang ngạch, bãi miễn chức danh sỹ quan chuyên môn -  kỹ thuật - nghiệp vụ trong QĐNDVN', '2023-12-14', 1, 5, 24, 114, '2024-12-30 02:56:17', '2024-12-30 02:56:17'),
(113, '02/2019/NĐ-CP', 'Nghị định', 'Về phòng thủ dân sự', '2019-01-02', 1, 2, 15, 73, '2024-12-30 06:51:14', '2024-12-30 06:51:14'),
(114, '03/2016/NĐ-CP', 'Nghị định', 'Quy định chi tiết và biện pháp thi hành một số điều của Luật dân quân tự vệ', '2016-01-05', 1, 2, 15, 73, '2024-12-30 06:52:39', '2024-12-30 06:52:39'),
(115, '07/2023/TT-BQP', 'Thông tư', 'HD một số điều của NĐ số 120/2013/NĐ-CP ngày 09/10/2023 của CP quy định  xử phạt vi phạm hành chính trong lĩnh vực QP, cơ yếu và NĐ số 37/2022/NĐ-CP  ngày 06/06/2022 của CP sửa  đổi, bổ sung một số điều của các NĐ quy định  xử phạt vi phạm hành chính trong lĩnh vực QP, cơ yếu; quản lý bảo vệ biên giới quốc gia; trên các vùng biển , đảo và thềm lục địa của nước CHXHCNVN', '2023-01-27', 1, 2, 15, 73, '2024-12-30 07:03:24', '2024-12-30 07:03:24'),
(116, '10/2023/TT-BQP', 'Thông tư', 'SĐ,BS  một số điều của TT số 18/2018/TT-BQP ngày 09/02/2018 của Bộ trưởng BQP quy định về chức danh cán bộ ngành Thi hành an QĐ', '2023-01-30', 1, 2, 15, 73, '2024-12-30 07:05:43', '2024-12-30 07:05:43'),
(117, '13/2024/TT-BQP', 'Thông tư', 'SĐ,BS một số điều  của các VB  quy phạm pháp luật thuộc thẩm quyền  abn hành của Bộ trưởng BQP liên quan đến việc kê khai thông tin cá nhân  khi thực hiện thủ tục hành chính', '2024-03-18', 1, 2, 15, 73, '2024-12-30 07:07:36', '2024-12-30 07:07:36'),
(118, '14/2016/NĐ-CP', 'Nghị định', 'Quy định ngành , nghề chuyên môn phù hợp với yêu cầu của QĐND đối với công dân nữ trong độ tuổi thực hiện NVQS ; công dân thuộc diện miễn gọi nhập ngũ trong thời chiến và việc huấn luyện  dự bị hạng hai', '2016-03-15', 1, 2, 15, 73, '2024-12-30 07:10:48', '2024-12-30 07:10:48'),
(119, '18/2019/NĐ-CP', 'Nghị định', 'Về quản lý và thực hiện hoạt động khắc phục hậu quả bom mìn  vật nổ sau chiến tranh', '2019-02-01', 1, 2, 15, 73, '2024-12-30 07:12:44', '2024-12-30 07:12:44'),
(120, '18/2023/QH15', 'Khác', 'Luật phòng thủ dân sự', '2023-06-20', 1, 2, 15, 73, '2024-12-30 07:14:06', '2024-12-30 07:14:06'),
(121, '18/2020/QĐ-TTg', 'Quyết định', 'Thiết lập khu vực cấm bay, khu vực hạn chế bay đối với tàu bay không người lái  và các phương tiện bay siêu nhẹ', '2020-06-10', 1, 2, 15, 73, '2024-12-30 07:16:14', '2024-12-30 07:16:14'),
(122, '19/2022/NĐ-CP', 'Nghị định', 'Quy định biện pháp thi hành chế độ, chính sách đối với QNCN, công nhân và viên chức QP chuyển ngành, công nhân và viên chức QP thôi việc theo quy định của Luật QNCN , công nhân và viên chức QP', '2022-02-22', 1, 2, 15, 73, '2024-12-30 07:18:40', '2024-12-30 07:18:40'),
(123, '23/2017/NĐ-CP', 'Nghị định', 'SĐ,BS một số điều NĐ số 162/2013/NĐ-CP ngày 12/11/2013 của CP quy định về xử phạt vi phạm hành chính trên các vùng biển, đảo, thềm lục địa của nước CHXHCNVN', '2017-03-13', 1, 2, 15, 73, '2024-12-30 07:58:57', '2024-12-30 07:58:57'),
(124, '25/2016/QĐ-TTg', 'Quyết định', 'V/v ban hành quy chế hoạt động của Cảng Cam Ranh - BQP', '2016-06-27', 1, 2, 15, 73, '2024-12-30 08:00:00', '2024-12-30 08:00:00'),
(125, '27/2016/NĐ-CP', 'Nghị định', 'Quy định một số chế độ, chính sách đối với HSQ-BS phục vụ tại ngũ, xuất ngũ và thân nhân của HSQ-BS tại ngũ', '2016-04-06', 1, 2, 15, 73, '2024-12-30 08:02:20', '2024-12-30 08:02:20'),
(126, '28/2019/NĐ-CP', 'Nghị định', 'Quy định về tố cáo và giải quyết tố cáo trong QĐNDVN', '2019-03-20', 1, 2, 15, 73, '2024-12-30 08:03:18', '2024-12-30 08:03:18'),
(127, '29/2019/QĐ-TTg', 'Quyết định', 'SĐ,BS một số điều của quy chế quản lý hoạt động của cảng quốc tế Cam Ranh - BQP ban hành kèm theo quyết định số 25/2016/QĐ-TTg ngày 27/06/2016 của Thủ tướng Chính phủ', '2019-10-03', 1, 2, 15, 73, '2024-12-30 08:05:47', '2024-12-30 08:05:47'),
(128, '32/2016/NĐ-CP', 'Nghị định', 'Quy định về quản lý độ cao chướng ngại vật hàng không và các trận địa quản lý, bảo vệ vùng trời tại VN', '2016-05-06', 1, 2, 15, 73, '2024-12-30 08:07:27', '2024-12-30 08:07:27'),
(129, '33/2018/QH14', 'Khác', 'Luật Cảnh sát biển VN', '2018-11-19', 1, 2, 15, 73, '2024-12-30 08:08:20', '2024-12-30 08:08:20'),
(130, '34/2023/NĐ-CP', 'Nghị định', 'SĐ,BS một số điều của NĐ số 112/2014/NĐ-CP ngày 21/11/2014 của CP quy định về quản lý cửa khẩu biên giới đất liền', '2023-06-16', 1, 2, 15, 73, '2024-12-30 08:10:08', '2024-12-30 08:10:08'),
(131, '36/2024/TT-BQP', 'Thông tư', 'Bãi bỏ một số văn bản quy phạm pháp luật thuộc thẩm quyền ban hành của Bộ trưởng BQP', '2024-07-07', 1, 2, 15, 69, '2024-12-30 08:11:24', '2024-12-30 08:11:24'),
(132, '37/2022/NĐ-CP', 'Nghị định', 'SĐ,BS một số điều của các nghị định quy định xử phạt vi phạm hành chính trong lĩnh vực QP, cơ yếu; quản lý, bảo vệ biên giới quốc gia; trên các vùng biển, đảo và thềm lục địa của nước CHXHCNVN', '2022-06-06', 1, 2, 15, 73, '2024-12-30 08:13:38', '2024-12-30 08:13:38'),
(133, '38/2023/TT-BQP', 'Thông tư', 'Bãi bỏ một số  văn bản quy phạm pháp luật, văn bản quy phạm nội bộ thuộc thẩm quyền ban hành của Bộ trưởng BQP', '2023-06-14', 1, 2, 15, 69, '2024-12-30 08:15:10', '2024-12-30 08:15:10'),
(134, '42/2016/NĐ-CP', 'Nghị định', 'Quy định điều kiện, trình tự, thủ tục mở, đóng sân bay chuyên dùng', '2016-05-15', 1, 2, 15, 73, '2024-12-30 08:16:27', '2024-12-30 08:16:27'),
(135, '48/2019/QH14', 'Khác', 'Luật Dân quân tự vệ', '2019-11-22', 1, 2, 15, 73, '2024-12-30 08:17:14', '2024-12-30 08:17:14'),
(136, '51/2022/TT-BQP', 'Thông tư', 'SĐ,BS một số điều của TT số 59/2021/TT-BQP ngày 11/06/2021 của Bộ trưởng BQP quy định  và hướng dẫn thực hiện công tác tuyển sinh vào các trường trong QĐ', '2022-07-16', 1, 2, 15, 69, '2024-12-30 08:19:58', '2024-12-30 08:19:58'),
(137, '53/2019/QH14', 'Khác', 'Luật lực lượng dự bị động viên', '2019-11-26', 1, 2, 15, 73, '2024-12-30 08:21:35', '2024-12-30 08:21:35'),
(138, '53/2022/TT-BQP', 'Thông tư', 'SĐ,BS khoản 8 điều 4 và thay thế phục lục I của thông tư số 164/2019/TT-BQP ngày 03/11/2019 của Bộ trưởng BQP quy định tiêu chuẩn, định lượng, mức tiền ăn, tiền thuốc bổ thường xuyên đối với huấn luyện viên, vận động viên và giáo viên thể dục, thể thao trong quân đội', '2022-07-18', 1, 2, 15, 69, '2024-12-30 08:24:53', '2024-12-30 08:24:53'),
(139, '58/2021/TT-BQP', 'Thông tư', 'Hướng dẫn thực hiện quy định về thí điểm môt số chính sách để thá gỡ vướng mắc , tồn đọng  trong quản lý, sử dụng đất QP kết hợp với hoạt động lao động sản xuất, xây dựng kinh tế', '2021-06-07', 1, 2, 15, 69, '2024-12-30 08:29:31', '2024-12-30 08:29:31'),
(140, '59/2016/NĐ-CP', 'Nghị định', 'Quy định về chứng minh QNCN, công nhân và viên chức QP', '2016-07-01', 1, 2, 15, 73, '2024-12-30 08:30:47', '2024-12-30 08:30:47'),
(141, '61/2021/NĐ-CP', 'Nghị định', 'Quy định chi tiết một số điều NQ số 130/2020/QH14 của Quốc hội về  tham gia lực lượng giữ gìn hòa bình của LHQ', '2021-06-25', 1, 2, 15, 73, '2024-12-30 08:32:55', '2024-12-30 08:32:55'),
(142, '61/2022/NĐ-CP', 'Nghị định', 'Quy định chức năng, nhiệm vụ, quyền hạn và cơ cấu tổ chức của Ban QL Lăng Chủ tịch Hồ Chí Minh', '2022-09-12', 1, 2, 15, 73, '2024-12-30 08:34:39', '2024-12-30 08:34:39'),
(143, '61/2019/NĐ-CP', 'Nghị định', 'Quy định chi tiết một số điều và biện pháp thi hành Luật Cảnh sát biển VN', '2019-07-10', 1, 2, 15, 73, '2024-12-30 08:35:55', '2024-12-30 08:35:55'),
(144, '71/2015/NĐ-CP', 'Nghị định', 'Về QL HĐ của người, phương tiện trong khu vực biên giới biển nước CHXHCNVN', '2015-09-03', 1, 2, 15, 73, '2024-12-30 08:37:07', '2024-12-30 08:37:07'),
(145, '71/2021/TT-BQP', 'Thông tư', 'Bãi bỏ một số văn bản quy phạm pháp luật thuộc thẩm quyền ban hành của Bộ trưởng BQP', '2021-06-21', 1, 2, 15, 69, '2024-12-30 08:38:45', '2024-12-30 08:38:45'),
(146, '11/2023/TT-BQP', 'Thông tư', 'Quy định hợp tác quốc tế về cứu hộ, cứu nạn trong QĐNDVN', '2023-03-02', 1, 5, 24, 114, '2024-12-30 08:43:29', '2024-12-30 08:43:29'),
(147, '12/2021/QĐ-TTg', 'Quyết định', 'Ban hành quy chế hoạt động ứng phó sự cố tràn dầu', '2021-03-24', 1, 5, 24, 118, '2024-12-30 09:12:36', '2024-12-30 09:12:36'),
(148, '04/2024/TT-BQP', 'Thông tư', 'SĐ,BS một số điều của TT số 155/2019/TT-BQP ngày 15/10/2019 của Bộ trưởng BQP  về hướng dẫn chuyển doanh nghiệp nhà nước và công ty TNHH MTV do doanh nghiệp nhà nước đầu tư 100% vốn điều lệ thuộc BQP thành công ty cổ phần và TT số 156/2019/TT-BQP ngày 15/10/2019 của Bộ trưởng BQP hướng dẫn chuyển nhượng phần vốn nhà nước đầu tư tại công ty cổ phần do BQP là cơ quan đại diện chủ sở hữu', '2024-01-15', 1, 4, 16, 74, '2024-12-30 11:37:15', '2024-12-30 11:37:15'),
(149, '05/2018/NĐ-CP', 'Nghị định', 'Về điều lệ tổ chức của công ty mẹ - Tập đoàn công nghiệp - Viễn thông QĐ', '2018-01-05', 1, 4, 16, 78, '2024-12-30 11:38:31', '2024-12-30 11:38:31'),
(150, '06/2024/TT-BQP', 'Thông tư', 'Hướng dẫn thực hiện chế độ báo cáo, công bố thông tin, kiểm tra, giám sát đối với doanh nghiệp trực tiếp phục vụ QP, an ninh và doanh nghiệp kết hợp kinh tế với QP, an ninh thuộc BQP', '2024-01-24', 1, 4, 16, 74, '2024-12-30 11:40:41', '2024-12-30 11:40:41'),
(151, '13/2016/NĐ-CP', 'Nghị định', 'Quy định trình tự, thủ tục đăng ký và chế độ, chính sách của công dân trong thời gian đăng ký, khám, kiểm tra, sức khỏe NVQS', '2016-02-19', 1, 4, 16, 78, '2024-12-30 11:42:37', '2024-12-30 11:42:37'),
(152, '16/2024/NĐ-CP', 'Nghị định', 'Về người hành nghề khám bệnh, chữa bệnh và cơ sở khám bệnh, chữa bệnh thuộc lực lượng vũ trang nhân dân', '2024-02-16', 1, 4, 16, 78, '2024-12-30 11:43:57', '2024-12-30 11:43:57'),
(153, '16/2024/QĐ-TTg', 'Quyết định', 'Về chế độ bồi dưỡng với các đối tượng hưởng lương, phụ cấp từ ngân sách nhà nước trực tiếp thực hiện nhiệm vụ khảo sát, rà phá bom mìn, vật nổ sau chiến tranh', '2024-10-14', 1, 4, 16, 78, '2024-12-30 11:45:46', '2024-12-30 11:45:46'),
(154, '19/2017/NĐ-CP', 'Nghị định', 'Quy định chế độ tiển lương của công nhân QP và chế độ phụ cấp thêm niên đối với viên chức QP', '2017-02-24', 1, 4, 16, 78, '2024-12-30 11:46:54', '2024-12-30 11:46:54'),
(155, '22/2021/NĐ-CP', 'Nghị định', 'Về khu kinh tế- QP', '2021-03-19', 1, 4, 16, 78, '2024-12-30 11:47:43', '2024-12-30 11:47:43'),
(156, '22/2022/TT-BQP', 'Thông tư', 'Quy định về điều chỉnh trợ cấp hằng tháng đối với quân nhân, người làm công tác cơ yếu hưởng lương như đối với quân nhân đã phục viên, xuất ngũ, thôi việc', '2022-04-02', 1, 4, 16, 74, '2024-12-30 11:49:36', '2024-12-30 11:49:36'),
(157, '22/2024/NĐ-CP', 'Nghị định', 'SĐ,BS một số điều của NĐ số 82/2016/NĐ-CP ngày 01/7/2016 của CP quy định quân hiệu, cấp hiệu, phù hiệu và trang phục của QĐNDVN và NĐ số 61/2019/NĐ-CP ngày 10/7/2019 của CP quy định  chi tiết một số điều và biện pháp thi hành luật cảnh sát biển VN', '2024-02-27', 1, 4, 16, 78, '2024-12-30 11:53:16', '2024-12-30 11:53:16'),
(158, '26/21/NĐ-CP', 'Nghị định', 'Quy định chi tiết về một số điều của NQ số 132/2020/QH14 ngày 17/11/2020 của Quốc hội thí điểm  một số chính sách để tháo gỡ vướn mắc, tồn đọng trong quản lý, sử dụng đất QP, an ninh kết hợp với hoạt động lao động sản xuất, xây dựng kinh tế.', '2021-03-25', 1, 4, 16, 78, '2024-12-30 12:00:59', '2024-12-30 12:00:59'),
(159, '32/2023/NĐ-CP', 'Nghị định', 'SĐ,BS nghị định số 53/2018/NĐ-CP ngày 16/4/2018 của CP sửa đổi, bổ sung NĐ số 58/2016/NĐ-CP ngày 01/7/2016 của CP quy định chi tiết về kinh doanh sản phẩm, dịch vụ mật mã dân sự và xuất khẩu, nhập khẩu sản phẩm mật mã dân sự', '2023-06-09', 1, 4, 16, 78, '2024-12-30 12:25:23', '2024-12-30 12:25:23'),
(160, '33/2016/NĐ-CP', 'Nghị định', 'quy định chi tiết và HD thi hành một số điều của Luật bảo hiểm xã hội về bảo hiểm xã hội  bắt buộc đối với quân nhân, công an nhân dân và người làm công tác cơ yếu hưởng lương như đối với quân nhân', '2016-05-10', 1, 4, 16, 78, '2024-12-30 12:31:05', '2024-12-30 12:31:05'),
(161, '35/2022/TT-BQP', 'Thông tư', 'SĐ,BS một số điều của TT số 116/2015/TT-BQP ngày 01/10/2015 của Bộ trưởng BQP quy định tiêu chuẩn vật chất hậu cần đối với hojc viên cơ yếu', '2022-04-26', 1, 4, 16, 74, '2024-12-30 12:34:41', '2024-12-30 12:34:41'),
(162, '15/2019/QĐ-TTg', 'Quyết định', 'V/v thực hiện thủ tục biên phòng điện tử tại các cửa khẩu do BQP quản lý', '2019-03-28', 1, 5, 24, 118, '2024-12-30 12:44:19', '2024-12-30 12:44:19'),
(163, '23/2022/TT-BQP', 'Thông tư', 'Ban hành \" quy chuẩn  kỹ thuật quốc gia về đặc tính kỷ thuật mật mã sử dụng trong các sản phẩm mật mã dân sự thuộc nhóm sản phẩm bảo mật luồn IP sử dụng công nghệ IPsec và TLS\"', '2022-04-04', 1, 5, 24, 114, '2024-12-30 12:46:32', '2024-12-30 12:46:32'),
(164, '302017/NĐ-CP', 'Nghị định', 'Quy định tổ chức, haojt động ứng phó sự cố, thiên tai và tìm kiếm cứu nạn', '2017-03-21', 1, 5, 24, 118, '2024-12-30 12:47:45', '2024-12-30 12:47:45'),
(165, '59/2022/TT-BQP', 'Thông tư', 'Ban hành quy chuẩn QCVN 01:2022/BQP, quy chuẩn kỹ thuật quốc gia về rà phá bom mìn vật nổ', '2022-08-30', 1, 5, 24, 114, '2024-12-30 12:49:14', '2024-12-30 12:49:14'),
(166, '67/2024/TT-BQP', 'Thông tư', 'Quy định trình tự, thủ tục chứng nhận chất lượng an toàn kỹ thuật và bảo vệ môi trường xe cơ giới nhập khẩu, sản xuất, lắp ráp thuộc phạm vi quản lý của BQP', '2024-10-14', 1, 5, 24, 114, '2024-12-30 12:51:15', '2024-12-30 12:51:15'),
(168, '69/2024/TT-BQP', 'Thông tư', 'Quy định về đăng ký, quản lý, sử dụng xe cơ giới, xe máy chuyên dùng thuộc phạm vi quản lý của BQP', '2024-10-14', 1, 5, 24, 114, '2024-12-30 12:55:50', '2024-12-30 12:55:50'),
(169, '72/2024/TT-BQP', 'Thông tư', 'Quy định, HD thực hiện chế độ quản lý, tính hao mòn, khấu hao tài sản cố định là tài sản chuyên dùng;chế độ báo cáo tài sản cố định là tài sản chuyên dùng, tài sản phục vụ công tác quản lý tại các đơn vị thuộc BQP và tài sản cố định do nhà nước giao cho doanh nghiệp quản lý không tính thành phần vốn nhà nước tại doanh nghiệp thuộc BQP', '2024-10-18', 1, 5, 24, 114, '2024-12-30 12:58:35', '2024-12-30 12:58:35'),
(170, '86/2023/TT-BQP', 'Thông tư', 'SĐ,BS một số điều của TT số 170/2021/TT-BQP  ngày 23/12/2021 của Bộ trưởng BQP quy định về  đào tạo, sát hạch, cấp giấy phép lái xe quân sự; bồi dưỡng kiến thức pháp luật về giao thông đường bộ cho người điều khiển xe máy chuyên dùng thuộc phạm vi quản lý của BQP', '2023-11-20', 1, 5, 24, 114, '2024-12-30 13:00:24', '2024-12-30 13:00:24'),
(171, '87/2024/TT-BQP', 'Thông tư', 'Quy định danh mục tiêu chuẩn kỹ thuật mật mã áp dụng  bắt buộc cho mô đun an toàn phần cứng trong hoạt động định danh và xác thực điện tử', '2024-10-26', 1, 5, 24, 114, '2024-12-30 13:01:49', '2024-12-30 13:01:49'),
(172, '88/2023/TT-BQP', 'Thông tư', 'Quy định màu sắt cờ hiệu, phù hiệu, tín hiệu của tàu thuyền, máy bay, xe máy và phương tiện và phương tiện khác của Bộ đội Biên Phòng', '2023-11-22', 1, 5, 24, 114, '2024-12-30 13:04:05', '2024-12-30 13:04:05'),
(173, '95/2023/TT-BQP', 'Thông tư', 'Quy định về cải tạo xe cơ giới, xe máy chuyên dùng thuộc phạm vi quản lý của BQP', '2023-11-29', 1, 5, 24, 114, '2024-12-30 13:05:09', '2024-12-30 13:05:09'),
(174, '96/2023/TT-BQP', 'Thông tư', 'Ban hành \"Quy chuẩn kỹ thuật quốc gia về đặt tính kỹ thuật mật mã sử dụng trong ác sản phẩm  mật mã dân sự thuộc nhóm sản phẩm bảo mật dử liệu lưu giữ\"', '2023-11-29', 1, 5, 24, 114, '2024-12-30 13:06:59', '2024-12-30 13:06:59'),
(175, '99/2023/TT-BQP', 'Thông tư', 'Quy định về kiểm định an toàn  kỹ thuật và bảo vệ môi trường xe cơ giới trong BQP', '2023-11-30', 1, 5, 24, 114, '2024-12-30 13:08:07', '2024-12-30 13:08:07'),
(176, '101/2022/NĐ-CP', 'Nghị định', 'Quy định về điều kiện đầu tư kinh doanh quân trang, quân dụng, vu khí quân dụng, trang thiết bị kỹ thuật và công nghệ chuyên dùng phụ vụ QP, an ninh', '2022-12-08', 1, 5, 24, 118, '2024-12-30 13:09:59', '2024-12-30 13:09:59'),
(177, '103/2021/TT-BQP', 'Thông tư', 'Quy định về kiểm định chất lượng an toàn kỹ thuật và bảo vệ môi trường xe máy chuyển dùng trong BQP', '2021-07-23', 1, 5, 24, 114, '2024-12-30 13:11:51', '2024-12-30 13:11:51'),
(178, '121/2021/TT-BQP', 'Thông tư', 'Ban hành quy trình kỹ thuật điều tra, khảo sát, rà phá bom mìn vật nổ', '2021-09-20', 1, 5, 24, 114, '2024-12-30 13:13:27', '2024-12-30 13:13:27'),
(179, '122/2021/TT-BQP', 'Thông tư', 'Hướng dẫn xác định đơn giá ca máy và thiết bị thi công rà phá bom, mìn, vật nổ', '2021-09-20', 1, 5, 24, 114, '2024-12-30 13:14:42', '2024-12-30 13:14:42'),
(180, '123/2021/TT-BQP', 'Thông tư', 'Hướng dẫn xác định định mức dự toán  và quản lý chi phí  trong dự toán rà phá bom mìn vật nổ', '2021-09-20', 1, 5, 24, 114, '2024-12-30 13:15:52', '2024-12-30 13:15:52'),
(181, '129/2021/TT-BQP', 'Thông tư', 'Ban hành quy trình quản lý chất lượng trong điều tra khảo sát và rà phá bom mìn vật nổ', '2021-10-06', 1, 5, 24, 114, '2024-12-30 13:16:55', '2024-12-30 13:16:55'),
(182, '134/2021/TT-BQP', 'Thông tư', 'Ban hành 03quy trình kiểm định  kỹ thuật an toàn máy, thiết bị có yêu cầu nghiêm ngặt về an toàn lao động  trong BQP', '2021-10-16', 1, 5, 24, 114, '2024-12-30 13:18:12', '2024-12-30 13:18:12'),
(183, '169/2021/TT-BQP', 'Thông tư', 'Quy định về đăng ký, quản lý, sử dụng xe cơ giới, xe máy chuyên dùng trong BQP', '2021-12-23', 1, 5, 24, 114, '2024-12-30 13:19:29', '2024-12-30 13:19:29'),
(184, '37/2023/TT-BQP', 'Thông tư', 'Quy định về hợp tác quốc tế trong lĩnh vực quân y', '2023-06-13', 1, 4, 16, 74, '2024-12-30 13:21:20', '2024-12-30 13:21:20'),
(185, '41/2023/TT-BQP', 'Thông tư', 'Hướng dẫn thực hiện mức lương cơ sở  đối với các đối tượng đang hưởng lương hoặc phụ cấp quân hàm từ ngân sách nhà nước trong các cơ quan đơn vị thuộc bQP', '2023-06-28', 1, 4, 16, 74, '2024-12-30 13:22:54', '2024-12-30 13:22:54'),
(186, '42/2016/QĐ-TTg', 'Quyết định', 'Sửa đổi khoản 1 điều 1 QĐ số 72/2007/QĐ-TTg ngày 23/05/2007 của Thủ tướng CP về chế độ phụ cấp đặc thù đối với một số chức danh tư pháp và thanh tra trong Qân đội', '2016-10-10', 1, 4, 16, 78, '2024-12-30 13:25:14', '2024-12-30 13:25:14'),
(187, '53/2018/NĐ-CP', 'Nghị định', 'SĐ,BS nghị định số 58/2016/NĐ-CP  ngày 01/7/2016 của CP quy định chi tiết về kinh doanh sản phẩm, dijhc vụ mật mã dân sự và xuất khẩu, nhập khẩu sản phẩm mật mã dân sự', '2018-04-16', 1, 4, 16, 78, '2024-12-30 13:27:15', '2024-12-30 13:27:15'),
(188, '70/2015/NĐ-CP', 'Nghị định', 'Quy định chi tiết và HD thi hành một số điều của Luật BHYT đối với quân nhân, công an nhân dân và người làm công tác sơ yếu', '2015-09-01', 1, 4, 16, 78, '2024-12-30 13:29:48', '2024-12-30 13:29:48'),
(189, '82/2016/NĐ-CP', 'Nghị định', 'Quy định quân hiệu, cấp hiệu, phù hiệu và trang phục của QĐNDVN', '2016-07-01', 1, 4, 16, 78, '2024-12-30 13:31:07', '2024-12-30 13:31:07'),
(190, '94/2021/TT-BQP', 'Thông tư', 'Ban hành tiêu chuẩn TNCS/QS 1822:2021, trang phục dân quân tự vệ', '2021-07-16', 1, 4, 16, 74, '2024-12-30 13:32:59', '2024-12-30 13:32:59'),
(191, '102/2018/NĐ-CP', 'Nghị định', 'Quy chế chế độ hỗ trợ  và một số chế độ đãi ngộ khác đối với người VN có công với cách mạng, người tham gia kháng chiến, chiến tranh bảo vệ tổ quốc và làm đang định cư ở nước ngoài', '2018-07-20', 1, 4, 16, 78, '2024-12-30 13:35:39', '2024-12-30 13:35:39'),
(192, '105/2023/TT-BQP', 'Thông tư', 'Quy định tiêu chuẩn sức khỏe, khám sức khỏe cho các đối tượng thuộc phạm vi quản lý của BQP', '2023-12-06', 1, 4, 16, 74, '2024-12-30 13:37:09', '2024-12-30 13:37:09'),
(193, '153/2021/TT-BQP', 'Thông tư', 'HD về hồ sơ quy trình và trách nhiệm giải quyết kinh phí hỗ trợ chuyễn đổi nghề nghiệp, các hoạt động phòng ngừa, chia sẽ rũi ro về tai nạn lao động, bệnh nghề nghiệp và kế hoạch kinh phí hỗ trợ các hoạt động phòng ngừa, chia sẽ rủi ro về tai nạn lao động, bệnh nghề nghiệp trong BQP', '2021-11-23', 1, 4, 16, 74, '2024-12-30 13:40:28', '2024-12-30 13:40:28'),
(194, '72/2020/NĐ-CP', 'Nghị định', 'Quy định chi tiết một số điều của luật dân quân tự vệ  về tổ chức xây dựng lực lượng và chế độ, chính sách đối với dân quân tự vệ', '2020-06-30', 1, 2, 15, 73, '2024-12-30 13:50:39', '2024-12-30 13:50:39'),
(195, '77/2017/NĐ-CP', 'Nghị định', 'Quy định về quản lý, bảo vệ an ninh, trật tự tại cửa khẩu cảng', '2017-07-03', 1, 2, 15, 73, '2024-12-30 13:57:16', '2024-12-30 13:57:16'),
(196, '78/2020/NĐ-CP', 'Nghị định', 'Về sỹ quan dự bị QĐNDVN', '2020-07-06', 1, 2, 15, 73, '2024-12-30 13:58:05', '2024-12-30 13:58:05'),
(197, '02/2023/TT-BQP', 'Thông tư', 'Quy định về đối tượng tiêu chuẩn đào tạo cán bộ QĐNDVN', '2023-01-12', 1, 1, 1, 1, '2024-12-31 06:51:15', '2024-12-31 06:51:15'),
(198, '45/QĐ-BTL', 'Quyết định', 'Ban hành quy định quản lý người, phương tiện ra, vào cơ quan đơn vị', '2020-01-05', 1, 1, 1, 3, '2024-12-31 06:53:03', '2024-12-31 06:53:03'),
(200, 'quo', 'Thông tư', 'demo user post document', '2000-11-10', 13, 5, 27, 132, '2025-01-07 02:12:01', '2025-01-07 02:12:01'),
(201, 'quo', 'Thông tư', 'demo test post document', '2000-11-10', 12, 5, 27, 132, '2025-01-07 02:13:26', '2025-01-07 02:13:26'),
(202, 'quo', 'Thông tư', 'demo test post document', '2000-11-10', 14, 5, 27, 132, '2025-01-07 02:23:02', '2025-01-07 02:23:02'),
(203, '144/KH-BCĐTKNQ18', 'Kế hoạch', 'KH định hướng sắp xếp, tinh gọn bộ máy của CP', '2024-12-05', 1, 1, 1, 5, '2025-01-08 00:34:04', '2025-01-08 00:34:04'),
(204, '863/CT-BTL', 'Chỉ thị', 'Vv xử lý kỹ luật đối với hành vi đã sử dụng rượu bia vẫn điều khiển phương tiện tham gia giao thông trong QC', '2020-01-20', 1, 1, 1, 5, '2025-01-08 00:35:50', '2025-01-08 00:35:50'),
(205, '569/HĐ-CT', 'Hướng dẫn', 'Thực hiện chế độ đảng phí trong Đảng bộ QĐ', '2011-05-05', 1, 1, 1, 5, '2025-01-08 00:36:42', '2025-01-08 00:36:42'),
(206, '85/QĐ-ĐUQSTW', 'Quyết định', 'Vv ban hành \"Quy định trách nhiệm, quyền hạn, mối quan hệ làm việc của người CH và chính ủy, CTV trong QĐNDVN', '2006-04-03', 1, 1, 1, 5, '2025-01-08 00:39:19', '2025-01-08 00:39:19'),
(207, '2482/HD-QH', 'Hướng dẫn', 'Một số nội dung về nghĩ lễ, kiểm soát quân sự', '2021-07-23', 1, 1, 1, 5, '2025-01-08 00:40:42', '2025-01-08 00:40:42'),
(208, '2634/HD-TM', 'Hướng dẫn', 'Thực hiện chỉ thị 7061/CT-BTL ngày 14/06/2018 của TLHQ về việc không khói thuốc lá trong QC', '2018-09-12', 1, 1, 1, 3, '2025-01-08 00:42:51', '2025-01-08 00:42:51'),
(209, '2764/HC-QY', 'Công văn', 'Vv tăng cường công tác quản lý bộ đội khi đi bệnh xá, bệnh viện', '2018-09-24', 1, 1, 1, 3, '2025-01-08 00:44:13', '2025-01-08 00:44:13'),
(210, '11/CT-TM', 'Chỉ thị', 'Vv nâng cao chất lượng xây dựng chính quy quản lý kỷ luật trong toàn quân', '2023-04-12', 1, 1, 1, 5, '2025-01-08 00:47:51', '2025-01-08 00:47:51'),
(211, '34-CT/TW', 'Chỉ thị', 'Về tăng cường sự lãnh đạo của đảng đối với công tác phát triển nhà ở xã hội trong tình hình mới', '2024-05-24', 1, 1, 1, 5, '2025-01-08 00:49:14', '2025-01-08 00:49:14'),
(212, '8122/VP-NC', 'Công văn', 'Vv giải quyết cho sỹ quan, QNCN, công nhân và viên chức QP nghĩ phép, tranh thủ, đi về hằng ngày', '2023-10-18', 1, 1, 1, 1, '2025-01-08 00:50:43', '2025-01-08 00:50:43'),
(213, '35/CT-TTg', 'Chỉ thị', 'Vv xử lý cán bộ, công chức, viên chức và chiến sỹ trong lực lượng vũ trang  vi phạm quy định về điều khiển phương tiện giao thông mà trong máu hoặc hơi thở có nồng độ cồn; không hợp tác với lực lượng chức năng trong xử lý vi phạm', '2024-09-17', 1, 1, 1, 5, '2025-01-08 00:53:08', '2025-01-08 00:53:08'),
(214, '22/HD-CT', 'Hướng dẫn', 'Phong, thăng quân hàm sỹ quan các cấp và nâng lương cán bộ trong QĐNDVN', '2023-01-05', 1, 1, 1, 5, '2025-01-08 00:54:20', '2025-01-08 00:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `document_images`
--

CREATE TABLE `document_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `doc_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_images`
--

INSERT INTO `document_images` (`id`, `name`, `doc_id`, `created_at`, `updated_at`) VALUES
(51, 'L_462 TCCT Huong dan xet tang danh hieu Đơn vị van hoa tieu bieu trong Q_NDVN.pdf', 20, '2024-12-22 07:54:27', '2024-12-22 07:54:27'),
(52, '4_1811 Quy chế xây dựng, quản lý, khai thác tủ sách Pháp luật.pdf', 21, '2024-12-22 07:59:22', '2024-12-22 07:59:22'),
(53, '7_3399 Quy Định về thực hiện chế độ thông báo chính trị thời sự, đọc báo, nghe đài, xem truyền hình; thực hiện ngày CT VHTT, ngày đảng, Pháp luật....pdf', 22, '2024-12-22 08:02:22', '2024-12-22 08:02:22'),
(54, 'j_12377 HD của CCT xét tặng danh hiệu Đơn vị văn hóa tiêu biểu hằng năm.pdf', 23, '2024-12-22 08:05:36', '2024-12-22 08:05:36'),
(55, 't_Chỉ thị 2423 của QUTW về đổi mới GDCT6.pdf', 24, '2024-12-22 08:13:37', '2024-12-22 08:13:37'),
(56, 'q_Hướng dẫn đăng ký GDCT.pdf', 25, '2024-12-22 08:16:47', '2024-12-22 08:16:47'),
(58, 'd_1. Quy định 144-TW.pdf', 27, '2024-12-22 08:28:12', '2024-12-22 08:28:12'),
(59, 'b_2. Quy định 89-TW.pdf', 28, '2024-12-22 08:29:48', '2024-12-22 08:29:48'),
(60, '8_3. Quy định 109 của BCHTW tháng 1 năm 2018 về kiểm tra đảng viên.PDF', 29, '2024-12-22 08:31:30', '2024-12-22 08:31:30'),
(61, 'R_4. Công văn số 678 về Xét và tặng Huy hiệu Đảng viên.pdf', 30, '2024-12-22 08:33:05', '2024-12-22 08:33:05'),
(62, 'R_5. Quy định số 08 về nêu gương.pdf', 31, '2024-12-22 08:50:03', '2024-12-22 08:50:03'),
(63, 'Q_6. Hướng dẫn 01  một số VĐ cụ thể  thi hành điều lệ Đảng.pdf', 32, '2024-12-22 08:51:31', '2024-12-22 08:51:31'),
(64, 'm_7. Hướng dẫn 03 của VP TW chế độ đảng phí.pdf', 33, '2024-12-22 08:53:17', '2024-12-22 08:53:17'),
(65, 'Y_8. Quy định 37 những điều đảng viên không được làm.pdf', 34, '2024-12-22 08:54:47', '2024-12-22 08:54:47'),
(66, 'U_10. Quy định 24 thi hành Điều lệ Đảng.pdf', 35, '2024-12-22 08:56:43', '2024-12-22 08:56:43'),
(67, 'C_11. Quy định 104 QUY ĐỊNH THỰC HIỆN NGUYÊN TẮC TẬP TRUNG DÂN CHỦ.pdf', 36, '2024-12-22 08:58:35', '2024-12-22 08:58:35'),
(68, '5_12. Quy dinh 213-Bo-Chinh-tri.pdf', 37, '2024-12-22 09:00:19', '2024-12-22 09:00:19'),
(69, 'T_13. Nghi quyết số 21-HNTW5.pdf', 38, '2024-12-22 09:05:50', '2024-12-22 09:05:50'),
(70, 't_14. Hướng dẫn HD 02 UBKTTW thuc hien QD 37.pdf', 39, '2024-12-22 09:07:16', '2024-12-22 09:07:16'),
(71, '5_16. Kết luận số 21-TW.pdf', 40, '2024-12-22 09:14:55', '2024-12-22 09:14:55'),
(72, 'u_17. KẾT LUẬN Số 01-KLTW.pdf', 41, '2024-12-22 09:16:36', '2024-12-22 09:16:36'),
(73, 'p_1. thong-tu-59-2016-tt-bqp-quy-dinh-tiep-cong-dan-trong-bo-quoc-phong.pdf', 42, '2024-12-23 00:15:08', '2024-12-23 00:15:08'),
(74, 'k_2. Hướng dẫn 09 về cơ cấu tổ chức và số lượng UBKT Quân đội.pdf', 43, '2024-12-23 00:21:02', '2024-12-23 00:21:02'),
(75, 'u_3. Kết luận số 234 của TVQUTW.pdf', 44, '2024-12-23 00:23:11', '2024-12-23 00:23:11'),
(76, 'T_5. Quy định 22 công tác KTGS và kỷ luật của Đảng.pdf', 45, '2024-12-23 00:26:10', '2024-12-23 00:26:10'),
(77, 'X_6. Quy định 86 về giám sát trong Đảng.pdf', 46, '2024-12-23 00:26:58', '2024-12-23 00:26:58'),
(78, 'n_7. Quy định 114 của BCT Kiểm soát quyền lực và PCTN.pdf', 47, '2024-12-23 00:30:12', '2024-12-23 00:30:12'),
(79, 'G_8. Quy định 2155 ngày 28.7.2023 của QUTW về thẩm quyền thi hành kỷ luật về Đảng, KL Quân đội của các cấp ủy tổ chức Đảng trong QĐNDVN.pdf', 48, '2024-12-23 00:52:57', '2024-12-23 00:52:57'),
(80, 'B_9. Quy định hoạt động của đoàn kiểm tra giám sát TƯ.pdf', 49, '2024-12-23 01:03:22', '2024-12-23 01:03:22'),
(81, '9_10. Quy định số 117 của BCT về xin lỗi phục hồi kỷ luật oan.pdf', 50, '2024-12-23 01:10:09', '2024-12-23 01:10:09'),
(82, 'f_11. Quyết định 89 của BBT quy trình KTGS.pdf', 51, '2024-12-23 01:12:19', '2024-12-23 01:12:19'),
(83, '0_12. Quyết định 354 của UBKTTW Quy trình kiểm tra giám sát.pdf', 52, '2024-12-23 01:14:27', '2024-12-23 01:14:27'),
(84, 'r_13. Quyết định 1094 của UBKT QUTW về quy trình KTGS, KL.pdf', 53, '2024-12-23 01:17:09', '2024-12-23 01:17:09'),
(85, 'o_14. Quyết định 2069 ngày 30.6.2023 của QUTW về Quy trình KTGS,THKL của Quân ủy Trung ương.pdf', 54, '2024-12-23 01:18:55', '2024-12-23 01:18:55'),
(86, 'O_2023 1992-QĐ QUTW 25052023 QĐ VV lấy phiếu tín nhiệm đối với cấp UV, CB CHQL trong QĐNDVN.pdf', 55, '2024-12-23 01:36:31', '2024-12-23 01:36:31'),
(87, 'q_2254 VV thực hiện QĐ của QUTW về lấy phiếu tín nhiệm.pdf', 56, '2024-12-23 01:41:27', '2024-12-23 01:41:27'),
(88, '8_2499 Thông tư quy định thời hạn người có chức vụ, quyền hạn.pdf', 57, '2024-12-23 01:48:00', '2024-12-23 01:48:00'),
(89, 'I_CV SỐ 755_HD THỦ TỤC HỒ SƠ, QUY TRÌNH CẤP, QUẢN LÝ VÀ SỬ DỤNG THẺ BHYT TRONG BQP.PDF', 58, '2024-12-23 01:51:07', '2024-12-23 01:51:07'),
(90, 'c_TT 83 quy định và hướng dẫn sử dụng và quản lý nhà công vụ trong BQP.pdf', 59, '2024-12-23 01:54:22', '2024-12-23 01:54:22'),
(91, 'z_BỘ LUẬT HÌNH SỰ 2015 SỬA ĐỔI BỔ SUNG 2017.pdf', 60, '2024-12-23 01:59:34', '2024-12-23 01:59:34'),
(93, 'z_THÔNG TƯ 143 BỘ QUỐC PHÒNG.pdf', 62, '2024-12-23 02:02:16', '2024-12-23 02:02:16'),
(94, '6_CHI THI 590 CUA ĐẢNG ỦY QSTW QCDCCS ....pdf', 63, '2024-12-23 02:05:05', '2024-12-23 02:05:05'),
(95, '3_KẾT LUẬN 120 CỦA BỘ CHÍNH TRỊ VỀ NÂNG CAO CHẤT LƯỢNG QCDCCS.pdf', 64, '2024-12-23 02:06:28', '2024-12-23 02:06:28'),
(96, 'r_THÔNG TƯ 165 BQP.pdf', 65, '2024-12-23 02:07:57', '2024-12-23 02:07:57'),
(97, 'L_Hướng dẫn công tác tuyên truyền, hướng nghiệp, tư vấn tuyển sinh quân sự giai đoạn 2024-2030.pdf', 66, '2024-12-23 02:10:20', '2024-12-23 02:10:20'),
(98, 'o_Hướng dẫn sổ sách đoàn và phong trào thanh niên.pdf', 67, '2024-12-23 02:16:41', '2024-12-23 02:16:41'),
(99, 'T_Hướng dẫn triển khai mô hình bát nước thao trường.pdf', 68, '2024-12-23 02:20:54', '2024-12-23 02:20:54'),
(100, 'Q_Hướng dẫn văn kiện sổ sách công tác Đoàn và phong trào thanh niên Lữ đoàn.pdf', 69, '2024-12-23 02:22:04', '2024-12-23 02:22:04'),
(101, 'n_QUY CHẾ HOẠT ĐỘNG BAN VSTBPN LỮ ĐOÀN.pdf', 70, '2024-12-23 02:23:07', '2024-12-23 02:23:07'),
(102, 't_Quy chế Phụ nữ Vùng 3.pdf', 71, '2024-12-23 02:24:09', '2024-12-23 02:24:09'),
(103, 'Z_THÔNG TƯ 166 BQP. QUY CHẾ GIẢI THƯỞNG TTSTQĐ.pdf', 72, '2024-12-23 02:25:17', '2024-12-23 02:25:17'),
(104, 'g_1. Hướng dẫn 758 Đăng ký sổ Kế hoạch TH.pdf', 73, '2024-12-23 02:27:23', '2024-12-23 02:27:23'),
(110, 'J_18_bienvn.pdf', 76, '2024-12-27 01:13:18', '2024-12-27 01:13:18'),
(111, 'p_52_honnhan_gd.signed.pdf', 77, '2024-12-27 01:14:07', '2024-12-27 01:14:07'),
(112, 'C_Luật an ninh mạng.pdf', 78, '2024-12-27 01:14:58', '2024-12-27 01:14:58'),
(113, 'e_Luật giao thông đường bộ.pdf', 79, '2024-12-27 01:16:00', '2024-12-27 01:16:00'),
(114, '4_Luật nghĩa vụ quân sự.pdf', 80, '2024-12-27 01:16:46', '2024-12-27 01:16:46'),
(115, 'C_Luật phòng chống tác hại của rượu bia.pdf', 81, '2024-12-27 01:18:01', '2024-12-27 01:18:01'),
(116, 'D_Luật phòng, chống bạo lực gia đình.pdf', 82, '2024-12-27 01:19:01', '2024-12-27 01:19:01'),
(117, 'n_Luat22.2018QH14.pdf', 83, '2024-12-27 01:19:44', '2024-12-27 01:19:44'),
(118, 'q_qncn.pdf', 84, '2024-12-27 01:20:44', '2024-12-27 01:20:44'),
(119, 'M_thiduakhenthuong.pdf', 85, '2024-12-27 01:21:31', '2024-12-27 01:21:31'),
(120, 'O_tinnguongtongiao.pdf', 86, '2024-12-27 01:22:31', '2024-12-27 01:22:31'),
(121, 'p_QD2782.BQP.pdf', 87, '2024-12-30 01:14:15', '2024-12-30 01:14:15'),
(123, '9_TT53.2024BQP.pdf', 89, '2024-12-30 01:18:50', '2024-12-30 01:18:50'),
(124, 'x_TT55.2022BQP.pdf', 90, '2024-12-30 01:20:42', '2024-12-30 01:20:42'),
(125, 'P_TT82.2023BQP.pdf', 91, '2024-12-30 01:21:47', '2024-12-30 01:21:47'),
(126, '3_TT118.2023BQP.pdf', 92, '2024-12-30 01:23:03', '2024-12-30 01:23:03'),
(127, 'Q_QD6003BQP.pdf', 93, '2024-12-30 02:08:51', '2024-12-30 02:08:51'),
(128, 'Y_TT23.2018BQP.pdf', 94, '2024-12-30 02:10:15', '2024-12-30 02:10:15'),
(129, 'L_TT25.2019BQP.pdf', 95, '2024-12-30 02:11:46', '2024-12-30 02:11:46'),
(130, 'B_TT63.2022BQP.pdf', 96, '2024-12-30 02:12:54', '2024-12-30 02:12:54'),
(131, 'D_VBHN09.2024BQP.pdf', 97, '2024-12-30 02:22:52', '2024-12-30 02:22:52'),
(132, 'C_VBHN09BQP.pdf', 98, '2024-12-30 02:24:17', '2024-12-30 02:24:17'),
(134, 'q_TT66.2024BQP.pdf', 100, '2024-12-30 02:29:14', '2024-12-30 02:29:14'),
(135, 'H_TT79.2019BQP.pdf', 101, '2024-12-30 02:30:55', '2024-12-30 02:30:55'),
(136, 'S_TT88.2018BQP.pdf', 102, '2024-12-30 02:34:18', '2024-12-30 02:34:18'),
(137, 'B_TT94.2024BQP.pdf', 103, '2024-12-30 02:35:33', '2024-12-30 02:35:33'),
(138, 'd_TT95.2024BQP.pdf', 104, '2024-12-30 02:37:20', '2024-12-30 02:37:20'),
(139, 'V_TT224.2017BQP.pdf', 105, '2024-12-30 02:38:58', '2024-12-30 02:38:58'),
(140, 'c_VBHN06BQP.pdf', 106, '2024-12-30 02:41:13', '2024-12-30 02:41:13'),
(141, 'U_VBHN07BQP.pdf', 107, '2024-12-30 02:43:48', '2024-12-30 02:43:48'),
(142, '1_VBHN08.2024BQP.pdf', 108, '2024-12-30 02:46:07', '2024-12-30 02:46:07'),
(143, 'O_TT02.2024BQP.pdf', 109, '2024-12-30 02:47:39', '2024-12-30 02:47:39'),
(144, 'K_TT68.2024BQP.pdf', 110, '2024-12-30 02:49:46', '2024-12-30 02:49:46'),
(145, 'u_TT71.2024BQP.pdf', 111, '2024-12-30 02:50:56', '2024-12-30 02:50:56'),
(146, 'Y_VBHN08BQP.pdf', 112, '2024-12-30 02:56:17', '2024-12-30 02:56:17'),
(147, 'v_VanBanGoc_02.2019.ND-CP.pdf', 113, '2024-12-30 06:51:14', '2024-12-30 06:51:14'),
(148, 'P_VanBanGoc_03.2016.NĐ.CP.pdf', 114, '2024-12-30 06:52:39', '2024-12-30 06:52:39'),
(149, 'i_VanBanGoc_07.2023.TT-BQP.pdf', 115, '2024-12-30 07:03:24', '2024-12-30 07:03:24'),
(150, '3_VanBanGoc_10.2023.TT-BQP.pdf', 116, '2024-12-30 07:05:43', '2024-12-30 07:05:43'),
(151, 'U_VanBanGoc_13.2024.TT-BQP.pdf', 117, '2024-12-30 07:07:36', '2024-12-30 07:07:36'),
(152, 'x_VanBanGoc_14.2016.NĐ-CP.pdf', 118, '2024-12-30 07:10:48', '2024-12-30 07:10:48'),
(153, '8_VanBanGoc_18.2019.ND-CP.pdf', 119, '2024-12-30 07:12:44', '2024-12-30 07:12:44'),
(154, '7_VanBanGoc_18.2023.QH15.pdf', 120, '2024-12-30 07:14:06', '2024-12-30 07:14:06'),
(155, '3_VanBanGoc_18.signed.pdf', 121, '2024-12-30 07:16:14', '2024-12-30 07:16:14'),
(156, 'r_VanBanGoc_19.2022.ND-CP.pdf', 122, '2024-12-30 07:18:40', '2024-12-30 07:18:40'),
(157, 'W_VanBanGoc_23.2017.NĐ-CP.pdf', 123, '2024-12-30 07:58:57', '2024-12-30 07:58:57'),
(158, 'o_VanBanGoc_25.2016.QD.TTg.pdf', 124, '2024-12-30 08:00:00', '2024-12-30 08:00:00'),
(159, 'v_VanBanGoc_27.2016.NĐ.CP.pdf', 125, '2024-12-30 08:02:20', '2024-12-30 08:02:20'),
(160, 'I_VanBanGoc_28.signed.pdf', 126, '2024-12-30 08:03:18', '2024-12-30 08:03:18'),
(161, 'x_VanBanGoc_29.signed.pdf', 127, '2024-12-30 08:05:47', '2024-12-30 08:05:47'),
(162, '2_VanBanGoc_32.2016.NĐ.CP.pdf', 128, '2024-12-30 08:07:27', '2024-12-30 08:07:27'),
(163, 'F_VanBanGoc_33.2018.QH14.pdf', 129, '2024-12-30 08:08:20', '2024-12-30 08:08:20'),
(164, 'g_VanBanGoc_34.2023.ND-CP.pdf', 130, '2024-12-30 08:10:08', '2024-12-30 08:10:08'),
(165, 'y_VanBanGoc_36.2024.TT-BQP.pdf', 131, '2024-12-30 08:11:24', '2024-12-30 08:11:24'),
(166, '0_VanBanGoc_37.2022.ND-CP.pdf', 132, '2024-12-30 08:13:38', '2024-12-30 08:13:38'),
(167, 'i_VanBanGoc_38.2023.TT-BQP.pdf', 133, '2024-12-30 08:15:10', '2024-12-30 08:15:10'),
(168, 'i_VanBanGoc_42.2016.ND-CP.pdf', 134, '2024-12-30 08:16:27', '2024-12-30 08:16:27'),
(169, 'E_VanBanGoc_48.2019.QH14.pdf', 135, '2024-12-30 08:17:14', '2024-12-30 08:17:14'),
(170, '6_VanBanGoc_51.2022.TT-BQP.pdf', 136, '2024-12-30 08:19:58', '2024-12-30 08:19:58'),
(171, '3_VanBanGoc_53.2022.TT-BQP.pdf', 137, '2024-12-30 08:21:35', '2024-12-30 08:21:35'),
(172, '6_VanBanGoc_53.2022.TT-BQP.pdf', 138, '2024-12-30 08:24:53', '2024-12-30 08:24:53'),
(173, 'f_VanBanGoc_58.2021.TT-BQP.pdf', 139, '2024-12-30 08:29:31', '2024-12-30 08:29:31'),
(174, 'O_VanBanGoc_59.2016.ND.CP.pdf', 140, '2024-12-30 08:30:47', '2024-12-30 08:30:47'),
(175, 't_VanBanGoc_61.2021.ND-CP.pdf', 141, '2024-12-30 08:32:55', '2024-12-30 08:32:55'),
(176, 'U_VanBanGoc_61.2022.ND-CP.pdf', 142, '2024-12-30 08:34:39', '2024-12-30 08:34:39'),
(177, 'w_VanBanGoc_61.signed.pdf', 143, '2024-12-30 08:35:55', '2024-12-30 08:35:55'),
(178, '2_VanBanGoc_71.2015. NĐ.CP.pdf', 144, '2024-12-30 08:37:07', '2024-12-30 08:37:07'),
(179, 'O_VanBanGoc_71.2021.TT-BQP.pdf', 145, '2024-12-30 08:38:45', '2024-12-30 08:38:45'),
(180, '3_VanBanGoc_11.2023.TT-BQP.pdf', 146, '2024-12-30 08:43:29', '2024-12-30 08:43:29'),
(181, 'B_VanBanGoc_12.2021.QD-TTg.pdf', 147, '2024-12-30 09:12:36', '2024-12-30 09:12:36'),
(182, 'm_VanBanGoc_04.2024.TT-BQP.pdf', 148, '2024-12-30 11:37:15', '2024-12-30 11:37:15'),
(183, 'A_VanBanGoc_05.2018.ND-CP.pdf', 149, '2024-12-30 11:38:31', '2024-12-30 11:38:31'),
(184, '1_VanBanGoc_06.2024.TT-BQP.pdf', 150, '2024-12-30 11:40:41', '2024-12-30 11:40:41'),
(185, '6_VanBanGoc_13.2016.NĐ-CP.pdf', 151, '2024-12-30 11:42:37', '2024-12-30 11:42:37'),
(186, 'd_VanBanGoc_16.2024.ND-CP.pdf', 152, '2024-12-30 11:43:57', '2024-12-30 11:43:57'),
(187, 'E_VanBanGoc_16.2024.QD-TTg.pdf', 153, '2024-12-30 11:45:46', '2024-12-30 11:45:46'),
(188, '2_VanBanGoc_19.2017.NĐ-CP.pdf', 154, '2024-12-30 11:46:54', '2024-12-30 11:46:54'),
(189, 'F_VanBanGoc_22.2021.ND-CP.pdf', 155, '2024-12-30 11:47:43', '2024-12-30 11:47:43'),
(190, 'c_VanBanGoc_22.2022.TT-BQP.pdf', 156, '2024-12-30 11:49:36', '2024-12-30 11:49:36'),
(191, 'Y_VanBanGoc_22.2024.ND-CP.pdf', 157, '2024-12-30 11:53:16', '2024-12-30 11:53:16'),
(192, 'X_VanBanGoc_26.2021.ND-CP.pdf', 158, '2024-12-30 12:00:59', '2024-12-30 12:00:59'),
(193, 'R_VanBanGoc_32.2023.ND-CP.pdf', 159, '2024-12-30 12:25:23', '2024-12-30 12:25:23'),
(194, '2_VanBanGoc_33.2016.NĐ.CP.pdf', 160, '2024-12-30 12:31:05', '2024-12-30 12:31:05'),
(195, '3_VanBanGoc_35.2022.TT-BQP.pdf', 161, '2024-12-30 12:34:41', '2024-12-30 12:34:41'),
(196, 'L_VanBanGoc_15.signed.pdf', 162, '2024-12-30 12:44:19', '2024-12-30 12:44:19'),
(197, 'L_VanBanGoc_23.2022.TT-BQP.pdf', 163, '2024-12-30 12:46:32', '2024-12-30 12:46:32'),
(198, 'k_VanBanGoc_30.2017.NĐ-CP.pdf', 164, '2024-12-30 12:47:45', '2024-12-30 12:47:45'),
(199, 'Q_VanBanGoc_59.2022.TT-BQP.pdf', 165, '2024-12-30 12:49:14', '2024-12-30 12:49:14'),
(200, 'x_VanBanGoc_67.2024.TT-BQP.pdf', 166, '2024-12-30 12:51:15', '2024-12-30 12:51:15'),
(202, '2_VanBanGoc_69.2024.TT-BQP.pdf', 168, '2024-12-30 12:55:50', '2024-12-30 12:55:50'),
(203, 'X_VanBanGoc_72.2024.TT-BQP.pdf', 169, '2024-12-30 12:58:35', '2024-12-30 12:58:35'),
(204, 'f_VanBanGoc_86.2023.TT-BQP.pdf', 170, '2024-12-30 13:00:24', '2024-12-30 13:00:24'),
(205, 'r_VanBanGoc_87.2024.TT-BQP.pdf', 171, '2024-12-30 13:01:49', '2024-12-30 13:01:49'),
(206, 'n_VanBanGoc_88.2023.TT-BQP.pdf', 172, '2024-12-30 13:04:05', '2024-12-30 13:04:05'),
(207, '5_VanBanGoc_95.2023.TT-BQP.pdf', 173, '2024-12-30 13:05:09', '2024-12-30 13:05:09'),
(208, 'g_VanBanGoc_96.2023.TT-BQP.pdf', 174, '2024-12-30 13:06:59', '2024-12-30 13:06:59'),
(209, 'c_VanBanGoc_99.2023.TT-BQP.pdf', 175, '2024-12-30 13:08:07', '2024-12-30 13:08:07'),
(210, 'd_VanBanGoc_101.2022.ND-CP.pdf', 176, '2024-12-30 13:09:59', '2024-12-30 13:09:59'),
(211, 't_VanBanGoc_103.2021.TT-BQP.pdf', 177, '2024-12-30 13:11:51', '2024-12-30 13:11:51'),
(212, 'U_VanBanGoc_121.2021.TT-BQP.pdf', 178, '2024-12-30 13:13:27', '2024-12-30 13:13:27'),
(213, '7_VanBanGoc_122.2021.TT-BQP.pdf', 179, '2024-12-30 13:14:42', '2024-12-30 13:14:42'),
(214, 'o_VanBanGoc_123.2021.TT-BQP.pdf', 180, '2024-12-30 13:15:52', '2024-12-30 13:15:52'),
(215, 'y_VanBanGoc_129.2021.TT-BQP.pdf', 181, '2024-12-30 13:16:55', '2024-12-30 13:16:55'),
(216, 'f_VanBanGoc_134.2021.TT-BQP.pdf', 182, '2024-12-30 13:18:12', '2024-12-30 13:18:12'),
(217, 'r_VanBanGoc_169.2021.TT-BQP.pdf', 183, '2024-12-30 13:19:29', '2024-12-30 13:19:29'),
(218, 'q_VanBanGoc_37.2023.TT-BQP.pdf', 184, '2024-12-30 13:21:20', '2024-12-30 13:21:20'),
(219, 'i_VanBanGoc_41.2023.TT-BQP.pdf', 185, '2024-12-30 13:22:54', '2024-12-30 13:22:54'),
(220, 'I_VanBanGoc_42.2016.QĐ.TTG.pdf', 186, '2024-12-30 13:25:14', '2024-12-30 13:25:14'),
(221, 'X_VanBanGoc_53.2018.ND-CP.pdf', 187, '2024-12-30 13:27:15', '2024-12-30 13:27:15'),
(222, 'K_VanBanGoc_70.2015.NĐ.CP.pdf', 188, '2024-12-30 13:29:48', '2024-12-30 13:29:48'),
(223, 'K_VanBanGoc_82.2016.ND.CP.pdf', 189, '2024-12-30 13:31:07', '2024-12-30 13:31:07'),
(224, 'L_VanBanGoc_94.2021.TT-BQP.pdf', 190, '2024-12-30 13:32:59', '2024-12-30 13:32:59'),
(225, 'X_VanBanGoc_102.2018.ND-CP.pdf', 191, '2024-12-30 13:35:39', '2024-12-30 13:35:39'),
(226, '5_VanBanGoc_105.2023.TT-BQP.pdf', 192, '2024-12-30 13:37:09', '2024-12-30 13:37:09'),
(227, '9_VanBanGoc_153.2021.TT-BQP.pdf', 193, '2024-12-30 13:40:28', '2024-12-30 13:40:28'),
(228, 'G_VanBanGoc_72.2020.ND-CP.pdf', 194, '2024-12-30 13:50:39', '2024-12-30 13:50:39'),
(229, 'J_VanBanGoc_77.2017.ND-CP.pdf', 195, '2024-12-30 13:57:16', '2024-12-30 13:57:16'),
(230, 'F_VanBanGoc_78.2020.ND-CP.pdf', 196, '2024-12-30 13:58:05', '2024-12-30 13:58:05'),
(231, 'D_02_Thông tư CỦA BQP VỀ ĐÀO TẠO CÁN BỘ.pdf', 197, '2024-12-31 06:51:15', '2024-12-31 06:51:15'),
(232, 'T_45 Quyết định ban hành Quy định quản lý người, phương tiện ra vào cơ quan, đơn vị.pdf', 198, '2024-12-31 06:53:03', '2024-12-31 06:53:03'),
(234, 'Z_logo172.png', 200, '2025-01-07 02:12:01', '2025-01-07 02:12:01'),
(235, 'D_logo172.png', 201, '2025-01-07 02:13:26', '2025-01-07 02:13:26'),
(236, 'G_logo172.png', 202, '2025-01-07 02:23:02', '2025-01-07 02:23:02'),
(237, 'q_140_KH-BCDTKNQ18_05122024-signed.pdf', 203, '2025-01-08 00:34:04', '2025-01-08 00:34:04'),
(238, 'j_215 (SAO) Chỉ thị về việc xử lý kỷ luật đối với hành vi đã sử dụng rượu, bia vãn điều khiển phương tiện tham gia giao thông.....pdf', 204, '2025-01-08 00:35:50', '2025-01-08 00:35:50'),
(239, '7_342,_569_về_thực_hiện_chế_độ_đảng_phí_trong_QĐNDVN.pdf', 205, '2025-01-08 00:36:42', '2025-01-08 00:36:42'),
(240, 'f_2006. QUY ĐỊNH 85.pdf', 206, '2025-01-08 00:39:19', '2025-01-08 00:39:19'),
(241, 'R_2619 Hướng dẫn một số nội dung về nghi lễ, KSQS.pdf', 207, '2025-01-08 00:40:42', '2025-01-08 00:40:42'),
(242, 'N_2634  Hướng dẫn thực hiện chỉ thị 7061 ngày 14.6.2018 của Tư lệnh HQ về việc thực hiện khôn khói thuốc lá trong QC.pdf', 208, '2025-01-08 00:42:51', '2025-01-08 00:42:51'),
(243, 's_2764 về việc tăng cường công tác quản lý bộ đội khi đi bệnh xá, bệnh viện.pdf', 209, '2025-01-08 00:44:13', '2025-01-08 00:44:13'),
(244, 'o_Chỉ thị 11 năm 2023.pdf', 210, '2025-01-08 00:47:51', '2025-01-08 00:47:51'),
(245, 'O_CT-34-TW.pdf', 211, '2025-01-08 00:49:14', '2025-01-08 00:49:14'),
(246, '8_CV đồng ý cho quan nhân về.pdf', 212, '2025-01-08 00:50:43', '2025-01-08 00:50:43'),
(247, 'K_dongdau1114_17-09-2024-14-53-27_35_CT-TTg_17092024_1-signed.pdf', 213, '2025-01-08 00:53:08', '2025-01-08 00:53:08'),
(248, 'l_HD 22 PHONG THANG QUAN HAM.2023.pdf', 214, '2025-01-08 00:54:20', '2025-01-08 00:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `document_read`
--

CREATE TABLE `document_read` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `text_id` bigint(20) UNSIGNED NOT NULL,
  `read_count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_read`
--

INSERT INTO `document_read` (`id`, `user_id`, `text_id`, `read_count`, `created_at`, `updated_at`) VALUES
(1, 1, 76, 3, '2025-01-09 02:53:04', '2025-01-09 07:17:30'),
(2, 1, 81, 1, '2025-01-09 02:55:22', '2025-01-09 02:55:22'),
(3, 1, 21, 1, '2025-01-09 02:55:29', '2025-01-09 02:55:29'),
(4, 1, 208, 1, '2025-01-09 02:55:55', '2025-01-09 02:55:55'),
(5, 1, 209, 2, '2025-01-09 02:55:58', '2025-01-13 02:55:07'),
(6, 1, 87, 3, '2025-01-09 07:12:51', '2025-01-09 07:12:56'),
(7, 1, 93, 1, '2025-01-09 09:02:04', '2025-01-09 09:02:04'),
(8, 1, 20, 1, '2025-01-13 02:55:10', '2025-01-13 02:55:10'),
(9, 1, 23, 2, '2025-01-13 02:55:12', '2025-01-13 03:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_document`
--

CREATE TABLE `like_document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doc_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `like_document`
--

INSERT INTO `like_document` (`id`, `doc_id`, `user_id`, `created_at`, `updated_at`) VALUES
(76, 25, 2, '2024-12-25 08:13:01', '2024-12-25 08:13:01'),
(80, 26, 1, '2024-12-25 08:30:18', '2024-12-25 08:30:18'),
(81, 26, 2, '2024-12-25 08:34:09', '2024-12-25 08:34:09'),
(83, 20, 1, '2024-12-31 01:12:07', '2024-12-31 01:12:07'),
(84, 29, 1, '2025-01-08 01:05:17', '2025-01-08 01:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2024_10_21_031559_create_document', 1),
(6, '2024_10_21_032523_create_doccate', 1),
(7, '2024_10_21_032701_create_cate_child', 1),
(8, '2024_10_21_032817_create_category', 1),
(9, '2024_10_21_033057_create_role', 1),
(10, '2024_10_21_033155_create_like_document', 1),
(11, '2024_10_25_061201_create_document_images', 1),
(12, '2024_11_04_020318_create_question', 1),
(13, '2024_11_04_020627_create_question_choice', 1),
(15, '2024_11_15_082021_create_choice', 2),
(16, '2024_11_28_144852_create_sessions_table', 3),
(17, '2024_11_28_154610_create_user_active', 4),
(18, '2024_11_29_135231_create_role_user', 5),
(19, '2025_01_09_093038_create_document_read', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext NOT NULL,
  `answer1` longtext NOT NULL,
  `answer2` longtext NOT NULL,
  `answer3` longtext NOT NULL,
  `answer4` longtext NOT NULL,
  `answertrue` longtext NOT NULL,
  `doccate_id` int(10) UNSIGNED DEFAULT NULL,
  `catechild_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `name`, `answer1`, `answer2`, `answer3`, `answer4`, `answertrue`, `doccate_id`, `catechild_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(508, 'Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 có tên gọi là gì?', 'Thông tư quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam.', 'Thông tư quy định trình tự, thời hạn, thời hiệu xử lý kỷ luật trong Quân đội nhân dân Việt Nam.', 'Thông tư quy định thời hạn, thời hiệu xử lý kỷ luật trong Quân đội nhân dân Việt Nam.', 'Thông tư quy định trình tự xử lý kỷ luật trong Quân đội nhân dân Việt Nam.', 'Thông tư quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(509, 'Phạm vi điều chỉnh của Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 là gì?', 'Thông tư này quy định về nguyên tắc, thời hiệu, thời hạn; hình thức và thẩm quyền xử lý kỷ luật; hành vi vi phạm và áp dụng hình thức kỷ luật; trình tự, thủ tục xử lý kỷ luật đối với người vi phạm kỷ luật Quân đội, pháp luật Nhà nước trong Quân đội nhân dân Việt Nam.', 'Thông tư này quy định về nguyên tắc, thời hiệu, thời hạn; hình thức và thẩm quyền xử lý kỷ luật; hành vi vi phạm và áp dụng hình thức kỷ luật đối với người vi phạm kỷ luật Quân đội, pháp luật Nhà nước trong Quân đội nhân dân Việt Nam.', 'Thông tư này quy định về nguyên tắc, thời hiệu, thời hạn; hành vi vi phạm và áp dụng hình thức kỷ luật; trình tự, thủ tục xử lý kỷ luật đối với người vi phạm kỷ luật Quân đội, pháp luật Nhà nước trong Quân đội nhân dân Việt Nam.', 'Thông tư này quy định về hình thức và thẩm quyền xử lý kỷ luật; hành vi vi phạm và áp dụng hình thức kỷ luật; trình tự, thủ tục xử lý kỷ luật đối với người vi phạm kỷ luật Quân đội, pháp luật Nhà nước trong Quân đội nhân dân Việt Nam.', 'Thông tư này quy định về nguyên tắc, thời hiệu, thời hạn; hình thức và thẩm quyền xử lý kỷ luật; hành vi vi phạm và áp dụng hình thức kỷ luật; trình tự, thủ tục xử lý kỷ luật đối với người vi phạm kỷ luật Quân đội, pháp luật Nhà nước trong Quân đội nhân dân Việt Nam.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(510, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người vi phạm được hiểu như thế nào?', 'Là người thực hiện hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội mà theo quy định của Thông tư này và văn bản pháp luật có liên quan phải bị xử lý kỷ luật.', 'Là người thực hiện hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội, các nội quy của đơn vị đóng quân mà theo quy định của Thông tư này và văn bản pháp luật có liên quan phải bị xử lý kỷ luật.', 'Là người thực hiện hành vi vi phạm pháp luật Nhà nước mà theo quy định của Thông tư này và văn bản pháp luật có liên quan phải bị xử lý kỷ luật.', 'Là người thực hiện hành vi vi phạm kỷ luật Quân đội mà theo quy định của Thông tư này và văn bản pháp luật có liên quan phải bị xử lý kỷ luật.', 'Là người thực hiện hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội mà theo quy định của Thông tư này và văn bản pháp luật có liên quan phải bị xử lý kỷ luật.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(511, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tình trạng mất năng lực hành vi dân sự được hiểu như thế nào?', 'Là tình trạng của người thực hiện hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội trong khi đang mắc bệnh tâm thần hoặc bệnh khác làm mất khả năng nhận thức hoặc mất khả năng điều khiển hành vi của mình.', 'Là tình trạng của người thực hiện hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội trong khi đang mắc bệnh làm mất khả năng nhận thức.', 'Là tình trạng của người thực hiện hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội trong khi đang mắc bệnh tâm thần.', 'Là tình trạng của người thực hiện hành vi vi phạm kỷ luật Quân đội trong khi đang mắc bệnh tâm thần hoặc bệnh khác làm mất khả năng nhận thức hoặc mất khả năng điều khiển hành vi của mình.', 'Là tình trạng của người thực hiện hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội trong khi đang mắc bệnh tâm thần hoặc bệnh khác làm mất khả năng nhận thức hoặc mất khả năng điều khiển hành vi của mình.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(512, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, phòng vệ chính đáng được hiểu như thế nào?', 'Là hành vi của người vì bảo vệ quyền hoặc lợi ích chính đáng của mình, của người khác hoặc lợi ích của Nhà nước, của cơ quan, tổ chức mà chống trả lại một cách cần thiết người đang có hành vi xâm phạm các lợi ích nói trên.', 'Là hành vi của người vì bảo vệ quyền hoặc lợi ích chính đáng của mình mà chống trả lại một cách cần thiết người đang có hành vi xâm phạm các lợi ích nói trên.', 'Là hành vi của người vì bảo vệ quyền hoặc lợi ích chính đáng của người khác mà chống trả lại một cách cần thiết người đang có hành vi xâm phạm các lợi ích nói trên.', 'Là hành vi của người vì bảo vệ quyền hoặc lợi ích chính đáng của Nhà nước, của cơ quan, tổ chức mà chống trả lại một cách cần thiết người đang có hành vi xâm phạm các lợi ích nói trên.', 'Là hành vi của người vì bảo vệ quyền hoặc lợi ích chính đáng của mình, của người khác hoặc lợi ích của Nhà nước, của cơ quan, tổ chức mà chống trả lại một cách cần thiết người đang có hành vi xâm phạm các lợi ích nói trên.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(513, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tình thế cấp thiết được hiểu như thế nào?', 'Là tình thế của người vì muốn tránh gây thiệt hại cho quyền, lợi ích hợp pháp của mình, của người khác hoặc lợi ích của Nhà nước, của cơ quan, tổ chức mà không còn cách nào khác là phải gây thiệt hại nhỏ hơn thiệt hại cần ngăn ngừa.', 'Là tình thế của người vì muốn tránh gây thiệt hại cho quyền, lợi ích hợp pháp của mình, của người khác hoặc lợi ích của Nhà nước, của cơ quan, tổ chức mặc dù còn nhiều cách khác nhưng vẫn gây thiệt hại bằng thiệt hại cần ngăn ngừa.', 'Là tình thế của người vì muốn tránh gây thiệt hại cho quyền, lợi ích hợp pháp của mình, của người khác hoặc lợi ích của Nhà nước, của cơ quan, tổ chức mà không còn cách nào khác là phải gây thiệt hại bằng thiệt hại cần ngăn ngừa.', 'Là tình thế của người vì muốn tránh gây thiệt hại cho quyền, lợi ích hợp pháp của mình, của người khác hoặc lợi ích của Nhà nước, của cơ quan, tổ chức mà không còn cách nào khác là phải gây thiệt hại lớn hơn thiệt hại cần ngăn ngừa.', 'Là tình thế của người vì muốn tránh gây thiệt hại cho quyền, lợi ích hợp pháp của mình, của người khác hoặc lợi ích của Nhà nước, của cơ quan, tổ chức mà không còn cách nào khác là phải gây thiệt hại nhỏ hơn thiệt hại cần ngăn ngừa.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(514, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, điều kiện bất khả kháng được hiểu như thế nào?', 'Là điều kiện mà trong đó do hoàn cảnh khách quan người có hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội không thể lường trước được và không thể khắc phục được mặc dù đã áp dụng mọi biện pháp cần thiết và khả năng cho phép.', 'Là điều kiện mà trong đó do hoàn cảnh khách quan người có hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội không thể lường trước được và có thể khắc phục được.', 'Là điều kiện mà trong đó do hoàn cảnh khách quan người có hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội có thể lường trước được và không thể khắc phục được mặc dù đã áp dụng mọi biện pháp cần thiết và khả năng cho phép.', 'Là điều kiện mà trong đó do hoàn cảnh chủ quan người có hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội không thể lường trước được và không thể khắc phục được mặc dù đã áp dụng mọi biện pháp cần thiết và khả năng cho phép.', 'Là điều kiện mà trong đó do hoàn cảnh khách quan người có hành vi vi phạm pháp luật Nhà nước, kỷ luật Quân đội không thể lường trước được và không thể khắc phục được mặc dù đã áp dụng mọi biện pháp cần thiết và khả năng cho phép.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(515, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, vi phạm kỷ luật nghiêm trọng được hiểu như thế nào?', 'Là vi phạm có tính chất, mức độ, tác hại lớn; gây dư luận xấu, làm ảnh hưởng xấu đến hình ảnh, uy tín của Quân đội và của cơ quan, đơn vị, tổ chức.', 'Là vi phạm có tính chất, mức độ, tác hại vừa phải, ít làm ảnh hưởng xấu đến hình ảnh, uy tín của Quân đội và của cơ quan, đơn vị, tổ chức.', 'Là vi phạm có tính chất, mức độ, tác hại lớn; không gây dư luận xấu, không làm ảnh hưởng xấu đến hình ảnh, uy tín của Quân đội và của cơ quan, đơn vị, tổ chức.', 'Là vi phạm có tính chất, mức độ, tác hại nhỏ; gây dư luận xấu, làm ảnh hưởng xấu đến hình ảnh, uy tín của Quân đội và của cơ quan, đơn vị, tổ chức.', 'Là vi phạm có tính chất, mức độ, tác hại lớn; gây dư luận xấu, làm ảnh hưởng xấu đến hình ảnh, uy tín của Quân đội và của cơ quan, đơn vị, tổ chức.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(516, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, lưu học sinh quân sự, lưu học sinh cơ yếu được hiểu như thế nào?', 'Là học viên được Bộ Quốc phòng, Ban Cơ yếu Chính phủ cử đi đào tạo, bồi dưỡng ở nước ngoài để phục vụ Quân đội, phục vụ ngành cơ yếu.', 'Là học viên được Bộ Quốc phòng cử đi huấn luyện ở nước ngoài để phục vụ Quân đội, phục vụ ngành cơ yếu.', 'Là học viên được Ban Cơ yếu Chính phủ cử đi đào tạo, bồi dưỡng ở nước ngoài để phục vụ Quân đội, phục vụ ngành cơ yếu.', 'Là học viên được Bộ Giáo dục và đào tạo, Ban Cơ yếu Chính phủ cử đi đào tạo, bồi dưỡng ở nước ngoài để phục vụ Quân đội, phục vụ ngành cơ yếu.', 'Là học viên được Bộ Quốc phòng, Ban Cơ yếu Chính phủ cử đi đào tạo, bồi dưỡng ở nước ngoài để phục vụ Quân đội, phục vụ ngành cơ yếu.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(517, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, lưu học sinh quân sự, lưu học sinh cơ yếu không về nước theo quy định được hiểu như thế nào?', 'Là về nước chậm từ 15 ngày trở lên kể từ ngày hết hạn học tập theo quyết định của Bộ Quốc phòng, Ban Cơ yếu Chính phủ mà không được cấp có thẩm quyền cho phép hoặc không có lý do chính đáng.', 'Là về nước chậm từ 10 ngày trở lên kể từ ngày hết hạn học tập theo quyết định của Bộ Quốc phòng, Ban Cơ yếu Chính phủ mà không được cấp có thẩm quyền cho phép hoặc không có lý do chính đáng.', 'Là về nước chậm từ 10 ngày trở lên kể từ ngày hết hạn học tập theo quyết định của Bộ Quốc phòng, Ban Cơ yếu Chính phủ mà được cấp có thẩm quyền cho phép hoặc có lý do chính đáng.', 'Là về nước chậm từ 15 ngày trở lên kể từ ngày hết hạn học tập theo quyết định của Bộ Quốc phòng, Ban Cơ yếu Chính phủ mà được cấp có thẩm quyền cho phép hoặc có lý do chính đáng.', 'Là về nước chậm từ 15 ngày trở lên kể từ ngày hết hạn học tập theo quyết định của Bộ Quốc phòng, Ban Cơ yếu Chính phủ mà không được cấp có thẩm quyền cho phép hoặc không có lý do chính đáng.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(518, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, vắng mặt trái phép được hiểu như thế nào?', 'Là hành vi vắng mặt ở đơn vị dưới 24 (hai bốn) giờ từ 02 lần trở lên hoặc từ 24 (hai bốn) giờ đến 72 giờ (ba ngày) đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng, người làm việc trong tổ chức cơ yếu; dưới 24 (hai bốn) giờ từ 02 lần trở lên hoặc từ 24 (hai bốn) giờ đến 168 giờ (07 ngày) đối với hạ sĩ quan, binh sĩ mà không được phép của người chỉ huy có thẩm quyền.', 'Là hành vi vắng mặt ở đơn vị dưới 24 (hai bốn) giờ từ 02 lần trở lên hoặc từ 24 (hai bốn) giờ đến 48 giờ (hai ngày) đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng, người làm việc trong tổ chức cơ yếu; dưới 24 (hai bốn) giờ từ 03 lần trở lên hoặc từ 24 (hai bốn) giờ đến 168 giờ (07 ngày) đối với hạ sĩ quan, binh sĩ mà không được phép của người chỉ huy có thẩm quyền.', 'Là hành vi vắng mặt ở đơn vị dưới 24 (hai bốn) giờ từ 02 lần trở lên hoặc từ 24 (hai bốn) giờ đến 72 giờ (ba ngày) đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng, người làm việc trong tổ chức cơ yếu; dưới 24 (hai bốn) giờ từ 03 lần trở lên hoặc từ 24 (hai bốn) giờ đến 168 giờ (07 ngày) đối với hạ sĩ quan, binh sĩ mà không được phép của người chỉ huy có thẩm quyền.', 'Là hành vi vắng mặt ở đơn vị dưới 24 (hai bốn) giờ từ 03 lần trở lên hoặc từ 24 (hai bốn) giờ đến 48 giờ (hai ngày) đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng, người làm việc trong tổ chức cơ yếu; dưới 24 (hai bốn) giờ từ 02 lần trở lên hoặc từ 24 (hai bốn) giờ đến 168 giờ (07 ngày) đối với hạ sĩ quan, binh sĩ mà không được phép của người chỉ huy có thẩm quyền.', 'Là hành vi vắng mặt ở đơn vị dưới 24 (hai bốn) giờ từ 02 lần trở lên hoặc từ 24 (hai bốn) giờ đến 72 giờ (ba ngày) đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng, người làm việc trong tổ chức cơ yếu; dưới 24 (hai bốn) giờ từ 02 lần trở lên hoặc từ 24 (hai bốn) giờ đến 168 giờ (07 ngày) đối với hạ sĩ quan, binh sĩ mà không được phép của người chỉ huy có thẩm quyền.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(519, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, đào ngũ được hiểu như thế nào?', 'Là hành vi tự ý rời khỏi đơn vị quá 03 (ba) ngày đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng; quá 07 (bảy) ngày đối với hạ sĩ quan, binh sĩ nhưng không thuộc các trường hợp được quy định tại Bộ luật hình sự.', 'Là hành vi tự ý rời khỏi đơn vị quá 02 (hai) ngày đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng; quá 06 (sáu) ngày đối với hạ sĩ quan, binh sĩ nhưng không thuộc các trường hợp được quy định tại Bộ luật hình sự.', 'Là hành vi tự ý rời khỏi đơn vị quá 03 (ba) ngày đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng; quá 06 (sáu) ngày đối với hạ sĩ quan, binh sĩ nhưng không thuộc các trường hợp được quy định tại Bộ luật hình sự.', 'Là hành vi tự ý rời khỏi đơn vị quá 02 (hai) ngày đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng; quá 07 (bảy) ngày đối với hạ sĩ quan, binh sĩ nhưng không thuộc các trường hợp được quy định tại Bộ luật hình sự.', 'Là hành vi tự ý rời khỏi đơn vị quá 03 (ba) ngày đối với sĩ quan, quân nhân chuyên nghiệp, công chức, công nhân và viên chức quốc phòng; quá 07 (bảy) ngày đối với hạ sĩ quan, binh sĩ nhưng không thuộc các trường hợp được quy định tại Bộ luật hình sự.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(520, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hiệu xử lý kỷ luật được hiểu như thế nào?', 'Là thời hạn quy định mà khi hết thời hạn đó người có hành vi vi phạm không bị kỷ luật.', 'Là thời hạn quy định mà khi gần hết thời hạn đó người có hành vi vi phạm không bị kỷ luật.', 'Là thời hạn quy định mà khi hết thời hạn đó người có hành vi vi phạm có thể bị kỷ luật.', 'Là thời hạn quy định mà khi hết thời hạn đó người có hành vi vi phạm vẫn  bị kỷ luật.', 'Là thời hạn quy định mà khi hết thời hạn đó người có hành vi vi phạm không bị kỷ luật.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(521, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hạn xử lý kỷ luật được hiểu như thế nào?', 'Là khoảng thời gian từ khi phát hiện hành vi vi phạm hoặc từ khi cấp có thẩm quyền kết luận có hành vi vi phạm đến khi có quyết định xử lý kỷ luật của cơ quan, tổ chức có thẩm quyền.', 'Là khoảng thời gian từ khi phát hiện hành vi vi phạm hoặc từ khi cấp có thẩm quyền kết luận có hành vi vi phạm đến 12 tháng kể từ khi có quyết định xử lý kỷ luật của cơ quan, tổ chức có thẩm quyền.', 'Là khoảng thời gian sau khi phát hiện hành vi vi phạm đến khi có quyết định xử lý kỷ luật của cơ quan, tổ chức có thẩm quyền.', 'Là khoảng thời gian từ khi phát hiện hành vi vi phạm đến khi có quyết định xử lý kỷ luật của cơ quan, tổ chức có thẩm quyền.', 'Là khoảng thời gian từ khi phát hiện hành vi vi phạm hoặc từ khi cấp có thẩm quyền kết luận có hành vi vi phạm đến khi có quyết định xử lý kỷ luật của cơ quan, tổ chức có thẩm quyền.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(522, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, hạ bậc lương được hiểu như thế nào?', 'Là hạ bậc có hệ số lương cao hơn xuống bậc có hệ số lương thấp hơn đối với sĩ quan được nâng lương và các đối tượng hưởng lương khác quy định tại Thông tư này.', 'Là tăng bậc có hệ số lương thấp hơn lên bậc có hệ số lương cao hơn đối với sĩ quan được nâng lương và các đối tượng hưởng lương khác quy định tại Thông tư này.', 'Là hạ bậc có hệ số lương cao hơn xuống bậc có hệ số lương thấp hơn đối với sĩ quan được nâng lương.', 'Là hạ bậc có hệ số lương cao hơn xuống bậc có hệ số lương thấp hơn đối với quân nhân chuyên nghiệp.', 'Là hạ bậc có hệ số lương cao hơn xuống bậc có hệ số lương thấp hơn đối với sĩ quan được nâng lương và các đối tượng hưởng lương khác quy định tại Thông tư này.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(523, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, mỗi hành vi vi phạm kỷ luật bị xử lý bao nhiêu hình thức kỷ luật?', 'Chỉ bị xử lý một lần bằng một hình thức kỷ luật.', 'Bị xử lý bốn lần bằng bốn hình thức kỷ luật.', 'Bị xử lý ba lần bằng ba hình thức kỷ luật.', 'Bị xử lý hai lần bằng hai hình thức kỷ luật.', 'Chỉ bị xử lý một lần bằng một hình thức kỷ luật.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(524, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trong cùng một thời điểm xem xét xử lý kỷ luật, nếu người vi phạm từ 02 hành vi vi phạm trở lên thì phải xử lý như thế nào?', 'Xem xét, kết luận về từng hành vi vi phạm và quyết định chung bằng một hình thức cao nhất tương ứng với hành vi vi phạm.', 'Xem xét, kết luận về từng hành vi vi phạm và quyết định bằng nhiều hình thức kỷ luật tương ứng với số hành vi vi phạm.', 'Xem xét chỉ xử lý một hành vi vi phạm tùy quyết định của người chỉ huy.', 'Xem xét, kết luận về từng hành vi vi phạm và quyết định chung bằng một hình thức thấp nhất tương ứng với hành vi vi phạm.', 'Xem xét, kết luận về từng hành vi vi phạm và quyết định chung bằng một hình thức cao nhất tương ứng với hành vi vi phạm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(525, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, việc xử lý vi phạm kỷ luật phải căn cứ vào đâu?', 'Nội dung, động cơ, tính chất, mức độ, hậu quả, nguyên nhân vi phạm, hoàn cảnh cụ thể, các tình tiết giảm nhẹ, tình tiết tăng nặng, thái độ tiếp thu sửa chữa, việc khắc phục khuyết điểm, hậu quả vi phạm đã gây ra.', 'Nguyên nhân vi phạm, hoàn cảnh cụ thể, các tình tiết giảm nhẹ, tình tiết tăng nặng, thái độ tiếp thu sửa chữa, việc khắc phục khuyết điểm, hậu quả vi phạm đã gây ra.', 'Các tình tiết giảm nhẹ, tình tiết tăng nặng, thái độ tiếp thu sửa chữa, việc khắc phục khuyết điểm, hậu quả vi phạm đã gây ra.', 'Nội dung, động cơ, tính chất, mức độ, hậu quả, nguyên nhân vi phạm, hoàn cảnh cụ thể.', 'Nội dung, động cơ, tính chất, mức độ, hậu quả, nguyên nhân vi phạm, hoàn cảnh cụ thể, các tình tiết giảm nhẹ, tình tiết tăng nặng, thái độ tiếp thu sửa chữa, việc khắc phục khuyết điểm, hậu quả vi phạm đã gây ra.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(526, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng hình thức kỷ luật giáng cấp bậc quân hàm đối với sĩ quan đang giữ cấp bậc quân hàm nào?', 'Thiếu úy.', 'Thiếu tá.', 'Thượng úy.', 'Trung úy.', 'Thiếu úy.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(527, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng hình thức kỷ luật giáng cấp bậc quân hàm đối với quân nhân chuyên nghiệp đang giữ cấp bậc quân hàm nào?', 'Thiếu úy quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Thượng úy quân nhân chuyên nghiệp.', 'Trung úy quân nhân chuyên nghiệp.', 'Thiếu úy quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(528, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng hình thức kỷ luật giáng cấp bậc quân hàm đối với binh sĩ đang giữ cấp bậc quân hàm nào?', 'Binh nhì.', 'Thượng sĩ.', 'Hạ sĩ.', 'Binh nhất.', 'Binh nhì.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(529, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng hình thức kỷ luật giáng chức, cách chức đối với ai?', 'Người vi phạm không giữ chức vụ chỉ huy, quản lý.', 'Người vi phạm giữ chức vụ Phó Đại đội trưởng.', 'Người vi phạm giữ chức vụ Chính trị viên Đại đội.', 'Người vi phạm giữ chức vụ Đại đội trưởng.', 'Người vi phạm không giữ chức vụ chỉ huy, quản lý.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(530, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng hình thức kỷ luật hạ bậc lương đối với sĩ quan trong trường hợp nào?', 'Sĩ quan chưa được nâng lương.', 'Sĩ quan được nâng lương lần 1.', 'Sĩ quan được nâng lương lần 2.', 'Sĩ quan được nâng lương lần 3.', 'Sĩ quan chưa được nâng lương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(531, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng hình thức kỷ luật hạ bậc lương đối với công chức, công nhân và viên chức quốc phòng đang hưởng lương Bậc nào?', 'Bậc 1.', 'Bậc 3.', 'Bậc 2.', 'Bậc 4.', 'Bậc 1.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(532, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tình tiết nào sau đây là tình tiết giảm nhẹ?', 'Người vi phạm kỷ luật đã có hành vi ngăn chặn, làm giảm bớt hậu quả của vi phạm hoặc tự nguyện khắc phục hậu quả, bồi thường thiệt hại.', 'Lợi dụng chức vụ, quyền hạn để vi phạm kỷ luật.', 'Ép buộc người bị lệ thuộc vào mình về vật chất hoặc tinh thần thực hiện hành vi vi phạm kỷ luật.', 'Vi phạm kỷ luật nhiều làn hoặc tái phạm.', 'Người vi phạm kỷ luật đã có hành vi ngăn chặn, làm giảm bớt hậu quả của vi phạm hoặc tự nguyện khắc phục hậu quả, bồi thường thiệt hại.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(533, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tình tiết nào sau đây là tình tiết giảm nhẹ?', 'Người vi phạm kỷ luật đã tự nguyện khai báo, thành thật hối lỗi, tích cực giúp đỡ cơ quan chức năng phát hiện vi phạm, xử lý vi phạm kỷ luật.', 'Lợi dụng chức vụ, quyền hạn để vi phạm kỷ luật.', 'Sau khi vi phạm kỷ luật đã có hành vi trốn tránh, che giấu vi phạm kỷ luật.', 'Tiếp tục vi phạm kỷ luật mặc dù người có thẩm quyền đã yêu cầu chấm dứt hành vi vi phạm đó.', 'Người vi phạm kỷ luật đã tự nguyện khai báo, thành thật hối lỗi, tích cực giúp đỡ cơ quan chức năng phát hiện vi phạm, xử lý vi phạm kỷ luật.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(534, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tình tiết nào sau đây là tình tiết giảm nhẹ?', 'Vi phạm kỷ luật do bị ép buộc hoặc bị lệ thuộc về vật chất hoặc tinh thần; vi phạm trong hoàn cảnh đặc biệt khó khăn.', 'Lợi dụng chức vụ lôi kéo người khác tham gia.', 'Sau khi vi phạm kỷ luật đã có hành vi trốn tránh, che giấu vi phạm kỷ luật.', 'Sau khi vi phạm liền che giấu không khai báo.', 'Vi phạm kỷ luật do bị ép buộc hoặc bị lệ thuộc về vật chất hoặc tinh thần; vi phạm trong hoàn cảnh đặc biệt khó khăn.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(535, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tình tiết nào sau đây là tình tiết tăng nặng?', 'Vi phạm kỷ luật nhiều làn hoặc tái phạm.', 'Có nhiều thành tích trong học tập, công tác, lao động, sản xuất, chiến đấu.', 'Người vi phạm kỷ luật đã tự nguyện khai báo, thành thật hối lỗi, tích cực giúp đỡ cơ quan chức năng phát hiện vi phạm, xử lý vi phạm kỷ luật.', 'Người vi phạm kỷ luật đã có hành vi ngăn chặn, làm giảm bớt hậu quả của vi phạm hoặc tự nguyện khắc phục hậu quả, bồi thường thiệt hại.', 'Vi phạm kỷ luật nhiều làn hoặc tái phạm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(536, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trường hợp nào sau đây vẫn xem xét kỷ luật?', 'Trong thời gian nghỉ chuẩn bị hưu.', 'Trong thời gian điều trị tại các bệnh viện ở quân đội.', 'Trong thời gian nghỉ hưu.', 'Trong thời gian nghỉ chế độ phép.', 'Trong thời gian nghỉ chuẩn bị hưu.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(537, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trường hợp nào sau đây vẫn xem xét kỷ luật?', 'Trong thời gian nghỉ ốm tại đơn vị.', 'Đang trong thời gian chờ kết quả giải quyết cuối cùng của cơ quan có thẩm quyền điều tra, truy tố, xét xử về hành vi vi phạm pháp luật', 'Phụ nữ đang trong thời gian mang thai, nghỉ chế độ thai sản, đang nuôi con dưới 12 tháng tuổi.', 'Trong thời gian điều trị có xác nhận của cơ sở quân y cấp trung đoàn trở lên hoặc bệnh viện, trung tâm y tế từ tuyến huyện trở lên.', 'Trong thời gian nghỉ ốm tại đơn vị.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(538, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trong trường hợp vợ chết hoặc vì lý do khách quan, bất khả kháng khác, nam giới đang nuôi con dưới bao nhiêu tuổi thì chưa xem xét kỷ luật?', 'Dưới 12 tháng.', 'Dưới 36 tháng.', 'Dưới 24 tháng.', 'Dưới 18 tháng.', 'Dưới 12 tháng.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(539, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trường hợp nào sau đây không được miễn trách nhiệm kỷ luật ?', 'Phụ nữ vi phạm pháp luật Nhà nước, kỷ luật quân đội trong thời gian mang thai.', 'Vi phạm do chấp hành mệnh lệnh của người chỉ huy cấp trên hoặc phân công nhiệm vụ của người có thẩm quyền theo quy định của pháp luật và Bộ Quốc phòng.', 'Vi phạm pháp luật Nhà nước, kỷ luật Quân đội trong trường hợp phòng vệ chính đáng, tình thế cấp thiết, do điều kiện bất khả kháng.', 'Được cơ quan có thẩm quyền xác nhận tình trạng mất năng lực hành vi dân sự khi vi phạm pháp luật Nhà nước, kỷ luật Quân đội.', 'Phụ nữ vi phạm pháp luật Nhà nước, kỷ luật quân đội trong thời gian mang thai.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(540, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hiệu xử lý kỷ luật khiển trách là bao lâu?', '5 năm.', '6 năm.', '7 năm.', '8 năm.', '5 năm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(541, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hiệu xử lý kỷ luật cảnh cáo là bao lâu?', '10 năm.', '13 năm.', '12 năm.', '14 năm.', '10 năm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(542, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hiệu xử lý kỷ luật hạ bậc lương là bao lâu?', '10 năm.', '16 năm.', '15 năm.', '14 năm.', '10 năm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(543, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hiệu xử lý kỷ luật giáng chức là bao lâu?', '10 năm.', '13 năm.', '12 năm.', '11 năm.', '10 năm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(544, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hiệu xử lý kỷ luật cách chức là bao lâu?', '10 năm.', '16 năm.', '15 năm.', '14 năm.', '10 năm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(545, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hiệu xử lý kỷ luật giáng cấp bậc quân hàm là bao lâu?', '10 năm.', '12 năm.', '11 năm.', '15 năm.', '10 năm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(546, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng thời hiệu xử lý kỷ luật đối với mức kỷ luật nào?', 'Tước quân hàm sĩ quan.', 'Cách chức.', 'Hạ bậc lương.', 'Cảnh cáo.', 'Tước quân hàm sĩ quan.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(547, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng thời hiệu xử lý kỷ luật đối với mức kỷ luật nào?', 'Tước danh hiệu quân nhân.', 'Hạ bậc lương.', 'Cách chức.', 'Giáng chức.', 'Tước danh hiệu quân nhân.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(548, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không áp dụng thời hiệu xử lý kỷ luật đối với mức kỷ luật nào?', 'Buộc thôi việc.', 'Cách chức.', 'Hạ bậc lương.', 'Giáng chức.', 'Buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(549, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, hành vi vi phạm nào được áp dụng thời hiệu xử lý kỷ luật?', 'Hành vi sử dụng mũ bảo hiểm không bảo đảm an toàn khi tham gia giao thông.', 'Quân nhân, người làm việc trong tổ chức cơ yếu, công chức, công nhân và viên chức quốc phòng là đảng viên có hành vi vi phạm đến mức phải xử lý kỷ luật bằng hình thức khai trừ.', 'Hành vi vi phạm việc sử dụng văn bằng, chứng chỉ, giấy chứng nhận, xác nhận giả hoặc không hợp pháp.', 'Hành vi vi phạm quy định về công tác bảo vệ chính trị nội bộ, hành vi vi phạm xâm hại đến lợi ích quốc gia trong lĩnh vực quốc phòng, an ninh, đối ngoại.', 'Hành vi sử dụng mũ bảo hiểm không bảo đảm an toàn khi tham gia giao thông.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(550, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hạn xử lý kỷ luật không quá bao nhiêu ngày?', '90 ngày.', '180 ngày.', '150 ngày.', '120 ngày.', '90 ngày.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(551, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hạn xử lý kỷ luật trong trường hợp vụ việc có những tình tiết phức tạp cần có thời gian thanh tra, kiểm tra, xác minh làm rõ thì thời hạn xử lý kỷ luật có thể kéo dài nhưng tối đa không quá bao nhiêu ngày?', '150 ngày.', '210 ngày.', '90 ngày.', '180 ngày.', '150 ngày.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(552, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trường hợp người vi phạm nếu tiếp tục làm việc có thể ảnh hưởng đến việc hoàn thành nhiệm vụ của đơn vị hoặc gây khó khăn cho việc xác minh, thì trong thời gian xem xét, xử lý kỷ luật, cấp nào trở lên được quyền tạm đình chỉ công tác đối với người vi phạm kỷ luật thuộc quyền quản lý và tạm thời chỉ định người thay thế, nhưng phải báo cáo lên cấp trên?', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Đại đội trưởng chính trị viên đại đội và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(553, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, thời hạn tạm đình chỉ công tác người vi phạm không quá bao nhiêu ngày?', '90 ngày.', '180 ngày.', '150 ngày.', '120 ngày.', '90 ngày.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(554, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trong thời hạn tạm đình chỉ công tác, trường hợp đặc biệt do có nhiều tình tiết phức tạp cần được làm rõ thì có thể kéo dài nhưng không được quá bao nhiêu ngày?', '150 ngày.', '180 ngày.', '90 ngày.', '120 ngày.', '150 ngày.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(555, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, quân nhân, người làm việc trong tổ chức cơ yếu, công chức, công nhân và viên chức quốc phòng được cử đi đào tạo bằng nguồn ngân sách Nhà nước và nguồn hợp pháp khác tại các cơ sở đào tạo trong hay ngoài Quân đội, ngành cơ yếu hoặc ở nước ngoài không phải bồi thường chi phí đào tạo trong trường hợp nào sau đây?', 'Trong quá trình học tập không đủ sức khỏe được cấp có thẩm quyền xác nhận thôi học.', 'Tự ý bỏ học.', 'Đã tốt nghiệp nhưng không nhận nhiệm vụ hoặc không về nước để chấp hành sự điều động công tác của cấp có thẩm quyền.', 'Vi phạm kỷ luật đến mức không được tiếp tục đào tạo, công nhận tốt nghiệp.', 'Trong quá trình học tập không đủ sức khỏe được cấp có thẩm quyền xác nhận thôi học.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(556, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, có bao nhiêu hình thức kỷ luật đối với sỹ quan?', '8', '7', '6', '5', '8', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(557, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, những hình thức kỷ luật đối với sỹ quan nào sau đây là đúng?', 'Khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan, tước danh hiệu quân nhân.', 'Khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan, buộc thôi việc.', 'Khiển trách, cảnh cáo, hạ bậc lương, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan, tước danh hiệu quân nhân.', 'Khiển trách, cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan, tước danh hiệu quân nhân.', 'Khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan, tước danh hiệu quân nhân.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(558, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, có bao nhiêu hình thức kỷ luật đối với quân nhân chuyên nghiệp?', '7', '6', '5', '4', '7', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(559, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, có bao nhiêu hình thức kỷ luật đối với hạ sĩ quan – binh sĩ?', '6', '5', '4', '3', '6', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(560, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, hình thức kỷ luật đối với hạ sĩ quan – binh sĩ nào sau đây là đúng?', 'Khiển trách, cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm, tước danh hiệu quân nhân.', 'Khiển trách, cảnh cáo, giáng chức, giáng cấp bậc quân hàm, tước danh hiệu quân nhân.', 'Khiển trách, cảnh cáo, giáng chức, cách chức, hạ bậc lương, tước danh hiệu quân nhân.', 'Khiển trách, cảnh cáo, giáng chức,cách chức,hạ bậc lương, giáng cấp bậc quân hàm, tước danh hiệu quân nhân.', 'Khiển trách, cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm, tước danh hiệu quân nhân.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(561, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, có bao nhiêu hình thức kỷ luật đối với công chức, công nhân và viên chức quốc phòng?', '6', '5', '4', '3', '6', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(562, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đội trưởng có thẩm quyền xử lý kỷ luật đối với chiến sĩ hình thức kỷ luật nào?', 'Khiển trách.', 'Cách chức.', 'Giáng chức.', 'Cảnh cáo.', 'Khiển trách.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(563, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, hình thức kỷ luật đối với công chức, công nhân và viên chức quốc phòng nào sau đây là đúng?', 'Khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, buộc thôi việc.', 'Khiển trách, cảnh cáo, giáng chức, cách chức, buộc thôi việc.', 'Khiển trách, cảnh cáo, hạ bậc lương, giáng chức, giáng cấp bậc quân hàm, cách chức, buộc thôi việc.', 'Khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, tước danh hiệu quân nhân.', 'Khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(564, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, đại đội trưởng, chính trị viên đại đội, trạm trưởng trạm kiểm soát biên phòng và chức vụ tương đương được quyền khiển trách đến chức vụ nào?', 'Trung đội trưởng và tương đương.', 'Quân nhân chuyên nghiệp thuộc quyền.', 'Chiến sĩ thuộc quyền.', 'Tiểu đội trưởng và tương đương.', 'Trung đội trưởng và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(565, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, đại đội trưởng, chính trị viên đại đội, trạm trưởng trạm kiểm soát biên phòng và chức vụ tương đương được quyền khiển trách sĩ quan thuộc quyền đến cấp nào?', 'Đại úy.', 'Thiếu tá.', 'Trung úy.', 'Thượng úy.', 'Đại úy.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(566, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, đại đội trưởng, chính trị viên đại đội, trạm trưởng trạm kiểm soát biên phòng và chức vụ tương đương được quyền khiển trách quân nhân chuyên nghiệp thuộc quyền đến cấp nào?', 'Đại úy quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Trung úy quân nhân chuyên nghiệp.', 'Thượng úy quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(567, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, đại đội trưởng, chính trị viên đại đội, trạm trưởng trạm kiểm soát biên phòng và chức vụ tương đương được quyền khiển trách công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 5,3.', 'Trên 5,3.', '5,3.', 'Dưới 4,2.', 'Dưới 5,3.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(568, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, đại đội trưởng, chính trị viên đại đội, trạm trưởng trạm kiểm soát biên phòng và chức vụ tương đương được quyền cảnh cáo đến chức vụ nào?', 'Quân nhân chuyên nghiệp thuộc quyền.', 'Tiểu đội trưởng và tương đương.', 'Chiến sĩ thuộc quyền.', 'Trung đội trưởng và tương đương.', 'Tiểu đội trưởng và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(569, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, đại đội trưởng, chính trị viên đại đội, trạm trưởng trạm kiểm soát biên phòng và chức vụ tương đương được quyền cảnh cáo hạ sĩ quan đến cấp nào?', 'Binh nhất.', 'Trung sĩ.', 'Hạ sĩ.', 'Thượng sĩ.', 'Trung sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(570, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, đại đội trưởng, chính trị viên đại đội, trạm trưởng trạm kiểm soát biên phòng và chức vụ tương đương được quyền cảnh cáo công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 4,2.', 'Dưới 4,9.', 'Dưới 4,5.', 'Dưới 5,3.', 'Dưới 4,9.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(571, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền khiển trách đến cấp nào?', 'Tiểu đội trưởng.', 'Đại đội trưởng, chính trị viên đại đội.', 'Tất cả quân nhân thuộc quyền.', 'Trung đội trưởng.', 'Đại đội trưởng, chính trị viên đại đội.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(572, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền khiển trách quân nhân chuyên nghiệp đến cấp nào?', 'Trung úy quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Thượng úy quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(573, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền khiển trách công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 4,9.', 'Dưới 6,1.', 'Dưới 5,3.', 'Dưới 6,3.', 'Dưới 6,1.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(574, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền cảnh cáo công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 4,9.', 'Dưới 5,3.', 'Dưới 6,3.', 'Dưới 6,1.', 'Dưới 5,3.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(575, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền cảnh cáo quân nhân chuyên nghiệp đến cấp nào?', 'Trung úy quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', 'Thượng úy quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(576, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền khiển trách sĩ quan đến cấp nào?', 'Trung úy.', 'Thiếu tá.', 'Thượng úy.', 'Đại úy.', 'Thiếu tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(577, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền cảnh cáo sĩ quan đến cấp nào?', 'Trung úy.', 'Đại úy.', 'Thượng úy.', 'Thiếu tá.', 'Đại úy.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(578, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền cảnh cáo đến cấp nào?', 'Tất cả quân nhân thuộc quyền.', 'Trung đội trưởng và tương đương.', 'Tiểu đội trưởng.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Trung đội trưởng và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(579, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tiểu đoàn trưởng, chính trị viên tiểu đoàn; đồn trưởng, chính trị viên đồn biên phòng và chức vụ tương đương được quyền giáng cấp quân hàm từ cấp nào đến cấp nào?', 'Từ trung sĩ xuống binh nhất.', 'Từ binh nhất xuống binh nhì.', 'Từ trung sĩ xuống hạ sĩ.', 'Từ hạ sĩ xuống binh nhất.', 'Từ binh nhất xuống binh nhì.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(580, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền khiển trách đến cấp nào?', 'Tiểu đội trưởng và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Trung đội trưởng và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(581, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền khiển trách sĩ quan đến cấp nào?', 'Thiếu tá.', 'Trung tá.', 'Đại tá.', 'Thượng tá.', 'Trung tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(582, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền khiển trách quân nhân chuyên nghiệp đến cấp nào?', 'Đại tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(583, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền khiển trách công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 4,9.', 'Dưới 6,8.', 'Dưới 5,3.', 'Dưới 6,3.', 'Dưới 6,8.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(584, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền cảnh cáo đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Tiểu đội trưởng và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(585, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền cảnh cáo sĩ quan đến cấp nào?', 'Đại úy.', 'Thiếu tá.', 'Thượng tá.', 'Trung tá.', 'Thiếu tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(586, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền cảnh cáo quân nhân chuyên nghiệp đến cấp nào?', 'Đại úy quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05');
INSERT INTO `question` (`id`, `name`, `answer1`, `answer2`, `answer3`, `answer4`, `answertrue`, `doccate_id`, `catechild_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(587, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền cảnh cáo công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 4,9.', 'Dưới 6,1.', 'Dưới 5,3.', 'Dưới 6,8.', 'Dưới 6,1.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(588, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền giáng chức đến cấp nào?', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn.', 'Tiểu đội trưởng.', 'Đại đội trưởng, chính trị viên đại đội.', 'Trung đội trưởng.', 'Tiểu đội trưởng.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(589, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền cách chức đến cấp nào?', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn.', 'Tiểu đội trưởng.', 'Đại đội trưởng, chính trị viên đại đội.', 'Trung đội trưởng.', 'Tiểu đội trưởng.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(590, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền giáng cấp bậc quân hàm đến cấp nào?', 'Binh nhất.', 'Trung sĩ.', 'Hạ sĩ.', 'Thượng sĩ.', 'Trung sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(591, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trung đoàn trưởng, lữ đoàn trưởng, chính ủy trung đoàn, lữ đoàn và chức vụ tương đương được quyền tước danh hiệu quân nhân đến cấp nào?', 'Binh nhất.', 'Trung sĩ.', 'Hạ sĩ.', 'Thượng sĩ.', 'Trung sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(592, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền khiển trách đến cấp nào?', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Trung đội trưởng.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(593, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền khiển trách sĩ quan đến cấp nào?', 'Thiếu tá.', 'Thượng tá.', 'Đại tá.', 'Trung tá.', 'Thượng tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(594, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền khiển trách quân nhân chuyên nghiệp đến cấp nào?', 'Thiếu tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(595, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền cảnh cáo đến cấp nào?', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đội trưởng và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(596, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền cảnh cáo sĩ quan đến cấp nào?', 'Thiếu tá.', 'Trung tá.', 'Đại tá.', 'Thượng tá.', 'Trung tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(597, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền cảnh cáo quân nhân chuyên nghiệp đến cấp nào?', 'Thiếu tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(598, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền cảnh cáo công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 6,1.', 'Dưới 6,8.', 'Dưới 4,9.', 'Dưới 5,3.', 'Dưới 6,8.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(599, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền giáng chức đến cấp nào?', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Phó tiểu đoàn trưởng, chính trị viên phó tiểu đoàn và tương đương.', 'Trung đội trưởng và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Phó tiểu đoàn trưởng, chính trị viên phó tiểu đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(600, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền cách chức đến cấp nào?', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Phó tiểu đoàn trưởng, chính trị viên phó tiểu đoàn và tương đương.', 'Trung đội trưởng và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Phó tiểu đoàn trưởng, chính trị viên phó tiểu đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(601, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền giáng cấp bậc quân hàm đến cấp nào?', 'Hạ sĩ.', 'Thượng sĩ.', 'Trung sĩ.', 'Binh nhất.', 'Thượng sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(602, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, sư đoàn trưởng, chính ủy sư đoàn và chức vụ tương đương được quyền tước danh hiệu quân nhân đến cấp nào?', 'Hạ sĩ.', 'Thượng sĩ.', 'Trung sĩ.', 'Binh nhất.', 'Thượng sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(603, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền khiển trách đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(604, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền khiển trách đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(605, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền khiển trách sĩ quan đến cấp nào?', 'Trung tá.', 'Đại tá.', 'Thượng tá.', 'Thiếu tướng.', 'Đại tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(606, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền khiển trách quân nhân chuyên nghiệp đến cấp nào?', 'Đại úy quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyển nghiệp.', 'Trung tá quân nhân chuyển nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(607, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền cảnh cáo đến cấp nào?', 'Ngành trưởng và tương đương.', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(608, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền cảnh cáo sĩ quan đến cấp nào?', 'Thiếu tá.', 'Trung tá.', 'Đại tá.', 'Thượng tá.', 'Trung tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(609, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền cảnh cáo quân nhân chuyên nghiệp đến cấp nào?', 'Thiếu tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(610, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền cảnh cáo công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 6,1.', 'Dưới 6,8.', 'Dưới 4,9.', 'Dưới 5,3.', 'Dưới 6,8.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(611, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền giáng chức đến cấp nào?', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', 'Ngành trưởng và tương đương.', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(612, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền cách chức đến cấp nào?', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', 'Ngành trưởng và tương đương.', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(613, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền giáng cấp bậc quân hàm đến cấp nào?', 'Binh nhất.', 'Thượng sĩ.', 'Hạ sĩ.', 'Trung sĩ.', 'Thượng sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(614, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Hải quân được quyền tước danh hiệu quân nhân đến cấp nào?', 'Binh nhất.', 'Thượng sĩ.', 'Hạ sĩ.', 'Trung sĩ.', 'Thượng sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(615, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền khiển trách đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Hải đoàn trưởng, chính ủy hải đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Hải đoàn trưởng, chính ủy hải đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(616, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền khiển trách đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(617, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền khiển trách sĩ quan đến cấp nào?', 'Trung tá.', 'Đại tá.', 'Thượng tá.', 'Thiếu tướng.', 'Đại tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(618, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền khiển trách quân nhân chuyên nghiệp đến cấp nào?', 'Đại úy quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(619, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền cảnh cáo đến cấp nào?', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', 'Ngành trưởng và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(620, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền cảnh cáo sĩ quan đến cấp nào?', 'Thiếu tá.', 'Trung tá.', 'Đại tá.', 'Thượng tá.', 'Trung tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(621, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền cảnh cáo quân nhân chuyên nghiệp đến cấp nào?', 'Thiếu tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(622, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền cảnh cáo công chức, công nhân và viên chức quốc phòng có hệ số lương bao nhiêu?', 'Dưới 6,1.', 'Dưới 6,8.', 'Dưới 4,9.', 'Dưới 5,3.', 'Dưới 6,8.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(623, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền giáng chức đến cấp nào?', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', 'Ngành trưởng và tương đương.', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(624, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền cách chức đến cấp nào?', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', 'Ngành trưởng và tương đương.', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(625, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền giáng cấp bậc quân hàm đến cấp nào?', 'Hạ sĩ.', 'Thượng sĩ.', 'Binh nhất.', 'Trung sĩ.', 'Thượng sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(626, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Bộ Tư lệnh vùng Cảnh sát biển được quyền tước danh hiệu quân nhân đến cấp nào?', 'Binh nhất.', 'Thượng sĩ.', 'Hạ sĩ.', 'Trung sĩ.', 'Thượng sĩ.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(627, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Cảnh sát biển Việt Nam được quyền khiển trách đến cấp nào?', 'Hải đội trưởng, chính trị viên hải đội và tương đương.', 'Tư lệnh, chính ủy vùng Cảnh sát biển Việt Nam và tương đương.', 'Thuyền trưởng, chính trị viên tàu có hệ số phụ cấp chức vụ 0,4.', 'Hải đoàn trưởng, chính ủy hải đoàn và tương đương.', 'Tư lệnh, chính ủy vùng Cảnh sát biển Việt Nam và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(628, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Cảnh sát biển Việt Nam được quyền cảnh cáo sĩ quan đến cấp nào?', 'Thiếu tướng.', 'Trung tá.', 'Đại tá.', 'Thượng tá.', 'Đại tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(629, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Cảnh sát biển Việt Nam được quyền cảnh cáo quân nhân chuyên nghiệp đến cấp nào?', 'Đại úy quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(630, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Cảnh sát biển Việt Nam được quyền hạ bậc lương sĩ quan đến cấp nào?', 'Thượng tá.', 'Đại tá.', 'Thiếu tá.', 'Trung tá.', 'Thiếu tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(631, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy Cảnh sát biển Việt Nam được quyền giáng cấp bậc quân hàm sĩ quan đến cấp nào?', 'Thượng tá.', 'Trung tá.', 'Thiếu tá.', 'Đại tá.', 'Thiếu tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(632, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân khu được quyền khiển trách đến cấp nào?', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Sư đoàn trưởng, chính ủy sư đoàn và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Sư đoàn trưởng, chính ủy sư đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(633, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền khiển trách đến cấp nào?', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Tư lệnh, chính ủy vùng hải quân.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Tư lệnh, chính ủy vùng hải quân.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(634, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền cảnh cáo đến cấp nào?', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Trung đội trưởng và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(635, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền cảnh cáo đến cấp nào?', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Đại đội trưởng, chính trị viên đại đội và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Trung đội trưởng và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(636, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền cảnh cáo sĩ quan đến cấp nào?', 'Thượng tá.', 'Trung tướng.', 'Đại tá.', 'Thiếu tướng.', 'Đại tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(637, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền cảnh cáo quân nhân chuyên nghiệp đến cấp nào?', 'Đại úy quân nhân chuyên nghiệp.', 'Thiếu tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(638, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền giáng chức đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Đại đội trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(639, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền giáng chức đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Đại đội trưởng, chính trị viên tiểu đoàn và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(640, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền cách chức đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Đại đội trưởng, chính trị viên tiểu đoàn và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Lữ đoàn trưởng, chính ủy lữ đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(641, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền cách chức đến cấp nào?', 'Trung đội trưởng và tương đương.', 'Đại đội trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', 'Tiểu đoàn trưởng, chính trị viên tiểu đoàn và tương đương.', 'Trung đoàn trưởng, chính ủy trung đoàn và tương đương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(642, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền hạ bậc lương sĩ quan đến cấp nào?', 'Thiếu tá.', 'Đại tá.', 'Trung tá.', 'Thượng tá.', 'Trung tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(643, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền giáng cấp bậc quân hàm sĩ quan đến cấp nào?', 'Thiếu tá.', 'Đại tá.', 'Trung tá.', 'Thượng tá.', 'Trung tá.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(644, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền giáng cấp bậc quân hàm quân nhân chuyên nghiệp đến cấp nào?', 'Thiếu tá quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(645, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tư lệnh, chính ủy quân chủng được quyền hạ bậc lương quân nhân chuyên nghiệp đến cấp nào?', 'Thiếu tá quân nhân chuyên nghiệp.', 'Đại úy quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', 'Thượng tá quân nhân chuyên nghiệp.', 'Trung tá quân nhân chuyên nghiệp.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(646, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy trực tiếp và trên một cấp do thiếu trách nhiệm trong quản lý, chỉ huy mà để quân nhân, công chức, công nhân và viên chức quốc phòng thuộc quyền vi phạm pháp luật Nhà nước, kỷ luật Quân đội đến mức bị xử lý kỷ luật từ cảnh cáo trở lên hoặc bị truy cứu trách nhiệm hình sự thì bị kỷ luật hình thức nào?', 'Khiển trách đến giáng chức.', 'Cảnh cáo đến hạ bậc lương.', 'Khiển trách đến cảnh cáo.', 'Khiển trách đến hạ bậc lương.', 'Khiển trách đến cảnh cáo.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(647, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy trực tiếp và trên một cấp do thiếu trách nhiệm trong quản lý, chỉ huy mà để quân nhân, công chức, công nhân và viên chức quốc phòng thuộc quyền vi phạm pháp luật Nhà nước, kỷ luật Quân đội đến mức bị xử lý kỷ luật từ cảnh cáo trở lên hoặc bị truy cứu trách nhiệm hình sự, biết hoặc phát hiện dấu hiệu cấp dưới thuộc quyền có hành vi vi phạm nhưng không có biện pháp kịp thời ngăn chặn thì bị kỷ luật hình thức nào?', 'Hạ bậc lương, giáng chức, cách chức.', 'Cảnh cáo đến hạ bậc lương.', 'Hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Khiển trách đến hạ bậc lương.', 'Hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(648, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy trực tiếp và trên một cấp do thiếu trách nhiệm trong quản lý, chỉ huy mà để quân nhân, công chức, công nhân và viên chức quốc phòng thuộc quyền vi phạm pháp luật Nhà nước, kỷ luật Quân đội đến mức bị xử lý kỷ luật từ cảnh cáo trở lên hoặc bị truy cứu trách nhiệm hình sự, bao che cho hành vi vi phạm của cấp dưới thì bị kỷ luật hình thức nào?', 'Hạ bậc lương, giáng chức, cách chức.', 'Cảnh cáo đến hạ bậc lương.', 'Hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Khiển trách đến hạ bậc lương.', 'Hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(649, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy lợi dụng chức vụ, quyền hạn làm sai nguyên tắc, quy định hoặc ra mệnh lệnh vượt quá quyền hạn thì bị kỷ luật hình thức nào?', 'Cảnh cáo đến hạ bậc lương.', 'Khiển trách đến hạ bậc lương.', 'Hạ bậc lương, giáng chức, cách chức.', 'Khiển trách hoặc cảnh cáo.', 'Hạ bậc lương, giáng chức, cách chức.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(650, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy lợi dụng chức vụ, quyền hạn làm sai nguyên tắc, quy định hoặc ra mệnh lệnh vượt quá quyền hạn thì bị kỷ luật từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm nếu vi phạm trong trường hợp nào sau đây?', 'Gây hậu quả nghiêm trọng.', 'Đã được can ngăn, nhắc nhở nhưng vẫn cố tình vi phạm.', 'Sử dụng các phương tiện, trang bị của Quân đội để thực hiện hành vi vi phạm; đã được can ngăn, nhắc nhở nhưng vẫn cố tình vi phạm; đã bị xử lý kỷ luật mà còn vi phạm; gây hậu quả nghiêm trọng.', 'Sử dụng các phương tiện, trang bị của Quân đội để thực hiện hành vi vi phạm.', 'Sử dụng các phương tiện, trang bị của Quân đội để thực hiện hành vi vi phạm; đã được can ngăn, nhắc nhở nhưng vẫn cố tình vi phạm; đã bị xử lý kỷ luật mà còn vi phạm; gây hậu quả nghiêm trọng.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(651, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không chấp hành mệnh lệnh hoặc không thực hiện nhiệm vụ khi người chỉ huy trực tiếp hoặc cấp có thẩm quyền giao thì bị kỷ luật hình thức nào?', 'Giáng chức.', 'Cách chức.', 'Cảnh cáo.', 'Khiển trách.', 'Cảnh cáo.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(652, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không chấp hành mệnh lệnh hoặc không thực hiện nhiệm vụ khi người chỉ huy trực tiếp hoặc cấp có thẩm quyền giao thì bị kỷ luật từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc nếu vi phạm trong trường hợp nào sau đây?', 'Đã bị xử lý kỷ luật mà còn vi phạm.', 'Lôi kéo người khác tham gia.', 'Là chỉ huy; lôi kéo người khác tham gia; trong sẵn sàng chiến đấu; đã bị xử lý kỷ luật mà còn vi phạm; gây hậu quả nghiêm trọng.', 'Gây hậu quả nghiêm trọng.', 'Là chỉ huy; lôi kéo người khác tham gia; trong sẵn sàng chiến đấu; đã bị xử lý kỷ luật mà còn vi phạm; gây hậu quả nghiêm trọng.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(653, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, khi được người chỉ huy trực tiếp hoặc cấp trên có thẩm quyền ra lệnh hoặc giao nhiệm vụ nhưng chấp hành không đầy đủ, lơ là, tùy tiện, chậm trễ gây trở ngại cho việc chỉ huy, ảnh hưởng đến việc hoàn thành nhiệm vụ của đơn vị thì bị kỷ luật hình thức nào?', 'Giáng chức hoặc cách chức.', 'Khiển trách hoặc giáng chức.', 'Khiển trách hoặc cảnh cáo.', 'Cảnh cáo hoặc giáng chức.', 'Khiển trách hoặc cảnh cáo.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(654, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy nào lợi dụng chức vụ, quyền hạn làm sai nguyên tắc, quy định hoặc ra mệnh lệnh vượt quá quyền hạn thì bị kỷ luật hình thức nào?', 'Cảnh cáo.', 'Khiển trách.', 'Khiển trách hoặc cảnh cáo.', 'Cảnh cáo hoặc giáng chức.', 'Khiển trách hoặc cảnh cáo.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(655, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy lợi dụng chức vụ, quyền hạn làm sai nguyên tắc, quy định hoặc ra mệnh lệnh vượt quá quyền hạn, mặt khác sử dụng các phương tiện, trang bị của Quân đội để thực hiện hành vi vi phạm thì bị kỷ luật hình thức nào?', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ khiển trách, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(656, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy lợi dụng chức vụ, quyền hạn làm sai nguyên tắc, quy định hoặc ra mệnh lệnh vượt quá quyền hạn, mặc dù đã được can ngăn, nhắc nhở nhưng vẫn cố tình vi phạm thì bị kỷ luật hình thức nào?', 'Cảnh cáo, hạ bậc lương, giáng chức đến giáng cấp bậc quân hàm.', 'Từ khiển trách, hạ bậc lương, giáng chức, cách chức đến tước danh hiệu sĩ quan.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(657, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy lợi dụng chức vụ, quyền hạn làm sai nguyên tắc, quy định hoặc ra mệnh lệnh vượt quá quyền hạn, đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Cảnh cáo, hạ bậc lương, giáng chức đến giáng cấp bậc quân hàm.', 'Từ khiển trách, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(658, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy lợi dụng chức vụ, quyền hạn làm sai nguyên tắc, quy định hoặc ra mệnh lệnh vượt quá quyền hạn, gây hậu quả nghiêm trọng thì bị kỷ luật hình thức nào?', 'Cảnh cáo, hạ bậc lương, giáng chức đến giáng cấp bậc quân hàm.', 'Từ khiển trách, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức đến cách chức, tước danh hiêu quân nhân.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(659, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không chấp hành mệnh lệnh hoặc không thực hiện nhiệm vụ khi người chỉ huy trực tiếp hoặc cấp có thẩm quyền giao thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo đến hạ bậc lương.', 'Khiển trách.', 'Cảnh cáo.', 'Từ khiển trách đến cảnh cáo.', 'Cảnh cáo.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(660, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, là người chỉ huy không chấp hành mệnh lệnh hoặc không thực hiện nhiệm vụ khi người chỉ huy trực tiếp hoặc cấp có thẩm quyền giao thì bị kỷ luật hình thức nào?', 'Từ hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm,.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(661, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không chấp hành mệnh lệnh hoặc không thực hiện nhiệm vụ khi người chỉ huy trực tiếp hoặc cấp có thẩm quyền giao, mặt khác còn lôi kéo người khác tham gia thì bị kỷ luật hình thức nào?', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(662, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trong sẵn sàng chiến đấu mà không chấp hành mệnh lệnh hoặc không thực hiện nhiệm vụ khi người chỉ huy trực tiếp hoặc cấp có thẩm quyền giao thì bị kỷ luật hình thức nào?', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm,', 'Từ khiển trách đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(663, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không chấp hành mệnh lệnh hoặc không thực hiện nhiệm vụ khi người chỉ huy trực tiếp hoặc cấp có thẩm quyền giao mặc dù đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ khiển trách đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(664, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, không chấp hành mệnh lệnh hoặc không thực hiện nhiệm vụ khi người chỉ huy trực tiếp hoặc cấp có thẩm quyền giao gây hậu quả nghiêm trọng thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ khiển trách, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(665, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, khi được người chỉ huy trực tiếp hoặc cấp trên có thẩm quyền ra lệnh hoặc giao nhiệm vụ nhưng chấp hành không đầy đủ, lơ là, tùy tiện, chậm trễ gây trở ngại cho việc chỉ huy, ảnh hưởng đến việc hoàn thành nhiệm vụ của đơn vị thì bị kỷ luật hình thức nào?', 'Cảnh cáo hoặc hạ bậc lương.', 'Cảnh cáo.', 'Khiển trách hoặc cảnh cáo.', 'Khiển trách.', 'Khiển trách hoặc cảnh cáo.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(666, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, là người chỉ huy khi được người chỉ huy trực tiếp hoặc cấp trên có thẩm quyền ra lệnh hoặc giao nhiệm vụ nhưng chấp hành không đầy đủ, lơ là, tùy tiện, chậm trễ gây trở ngại cho việc chỉ huy, ảnh hưởng đến việc hoàn thành nhiệm vụ của đơn vị thì bị kỷ luật hình thức nào?', 'Từ khiển trách, hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ khiển trách, cảnh cáo, hạ bậc lương đến giáng chức, cách chức.', 'Từ hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(667, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, khi được người chỉ huy trực tiếp hoặc cấp trên có thẩm quyền ra lệnh hoặc giao nhiệm vụ nhưng chấp hành không đầy đủ, lơ là, tùy tiện, chậm trễ, lỗi kéo người khác tham gia gây trở ngại cho việc chỉ huy, ảnh hưởng đến việc hoàn thành nhiệm vụ của đơn vị thì bị kỷ luật hình thức nào?', 'Từ khiển trách, hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ khiển trách, cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(668, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trong sẵn sàng chiến đấu khi được người chỉ huy trực tiếp hoặc cấp trên có thẩm quyền ra lệnh hoặc giao nhiệm vụ nhưng chấp hành không đầy đủ, lơ là, tùy tiện, chậm trễ gây trở ngại cho việc chỉ huy, ảnh hưởng đến việc hoàn thành nhiệm vụ của đơn vị thì bị kỷ luật hình thức nào?', 'Từ khiển trách, hạ bậc lương đến giáng chức, cách chức.', 'Từ cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ khiển trách, cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(669, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, khi được người chỉ huy trực tiếp hoặc cấp trên có thẩm quyền ra lệnh hoặc giao nhiệm vụ nhưng chấp hành không đầy đủ, lơ là, tùy tiện, chậm trễ gây trở ngại cho việc chỉ huy, ảnh hưởng đến việc hoàn thành nhiệm vụ của đơn vị, mặc dù đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Từ giáng chức, cách chức đến giáng cấp cậc quân hàm, tước danh hiệu sĩ quan.', 'Từ cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ khiển trách, cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương đến giáng chức, cách chức, giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(670, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, gây khó khăn hoặc xúi giục nhằm cản trở đồng đội thực hiện nhiệm vụ thì bị kỷ luật hình thức nào?', 'Cảnh cáo hoặc giáng chức.', 'Cảnh cáo.', 'Khiển trách hoặc cảnh cáo.', 'Khiển trách.', 'Khiển trách hoặc cảnh cáo.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(671, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, gây khó khăn hoặc xúi giục nhằm cản trở đồng đội thực hiện nhiệm vụ, mặc dù đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(672, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, gây khó khăn hoặc xúi giục nhằm cản trở đồng đội thực hiện nhiệm vụ, mặt khác còn lôi kéo người khác tham gia thì bị kỷ luật hình thức nào?', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(673, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, gây khó khăn hoặc xúi giục nhằm cản trở đồng đội thực hiện nhiệm vụ gây hậu quả nghiêm trọng thì bị kỷ luật hình thức nào?', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(674, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào xúc phạm đến nhân phẩm, danh dự, uy tín của đồng đội trong quan hệ công tác thì bị kỷ luật hình thức nào?', 'Cảnh cáo.', 'Khiển trách hoặc cảnh cáo.', 'Từ khiển trách, cảnh cáo đến hạ bậc lương.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ khiển trách, cảnh cáo đến hạ bậc lương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(675, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, là chỉ huy hoặc cấp trên xúc phạm đến nhân phẩm, danh dự, uy tín của đồng đội trong quan hệ công tác thì bị kỷ luật hình thức nào?', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Khiển trách hoặc cảnh cáo.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(676, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào xúc phạm đến nhân phẩm, danh dự, uy tín của đồng đội trong quan hệ công tác, mặc dù đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ khiển trách, cảnh cáo đến hạ bậc lương.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(677, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào xúc phạm đến nhân phẩm, danh dự, uy tín của đồng đội trong quan hệ công tác, mặt khác lôi kéo người khác tham gia thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ khiển trách, cảnh cáo đến hạ bậc lương.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(678, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào xúc phạm đến nhân phẩm, danh dự, uy tín của đồng đội trong quan hệ công tác gây tổn hại sức khỏe thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ khiển trách, cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05');
INSERT INTO `question` (`id`, `name`, `answer1`, `answer2`, `answer3`, `answer4`, `answertrue`, `doccate_id`, `catechild_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(679, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào trong quan hệ công tác có hành động hành hung, xúc phạm đến thân thể của đồng đội thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ khiển trách, cảnh cáo, hạ bậc lương đến giáng chức.', 'Từ khiển trách, cảnh cáo đến hạ bậc lương.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ khiển trách, cảnh cáo đến hạ bậc lương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(680, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, là chỉ huy hoặc cấp trên trong quan hệ công tác có hành động hành hung, xúc phạm đến thân thể của đồng đội thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(681, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào trong quan hệ công tác có hành động hành hung, xúc phạm đến thân thể của đồng đội, đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(682, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào trong quan hệ công tác có hành động hành hung, xúc phạm đến thân thể của đồng đội, mặt khác lôi kéo người khác tham gia thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức đến cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(683, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào trong quan hệ công tác có hành động hành hung, xúc phạm đến thân thể của đồng đội gây thương tích hoặc gây tổn hại sức khỏe thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ hạ bậc lương, giáng chức, cách chức đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(684, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào vắng mặt trái phép thì bị kỷ luật hình thức nào?', 'Khiển trách hoặc cảnh cáo.', 'Hạ bậc lương.', 'Khiển trách.', 'Cảnh cáo.', 'Khiển trách.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(685, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, là chỉ huy vắng mặt trái phép thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Khiển trách hoặc cảnh cáo.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(686, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào vắng mặt trái phép, đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Khiển trách hoặc cảnh cáo.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(687, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào vắng mặt trái phép mà còn lôi kéo người khác tham gia bị kỷ luật hình thức nào?', 'Khiển trách, cảnh cáo đến hạ bậc lương.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(688, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trong sẵn sàng chiến đấu người nào vắng mặt trái phép bị kỷ luật hình thức nào?', 'Khiển trách, cảnh cáo đến, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(689, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào vắng mặt trái phép gây ảnh hưởng đến việc thực hiện nhiệm vụ của đơn vị bị kỷ luật hình thức nào?', 'Khiển trách, cảnh cáo đến, hạ bậc lương đến giáng chức.', 'Từ hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ cảnh cáo, hạ bậc lương, giáng chức, cách chức đến giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(690, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào đào ngũ thì bị kỷ luật hình thức nào?', 'Khiển trách.', 'Khiển trách, cảnh cáo.', 'Cảnh cáo.', 'Cảnh cáo, hạ bậc lương.', 'Cảnh cáo, hạ bậc lương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(691, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người chỉ huy đào ngũ thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(692, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào đào ngũ đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Từ cảnh cáo, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(693, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào lôi kéo người khác tham gia đào ngũ thì bị kỷ luật hình thức nào?', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(694, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào đào ngũ gây hậu quả nhưng chưa đến mức độ nghiêm trọng thì bị kỷ luật hình thức nào?', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(695, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, người nào đào ngũ khi đang làm nhiệm vụ thì bị kỷ luật hình thức nào?', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(696, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tự gây thương tích, gây tổn hại đến sức khỏe của mình, giả bị bệnh hoặc dùng các hình thức gian dối khác để trốn tránh, thoái thác nhiệm vụ được giao thì bị kỷ luật hình thức nào?', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Cảnh cáo.', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Cảnh cáo, hạ bậc lương.', 'Cảnh cáo, hạ bậc lương.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(697, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, là người chỉ huy tự gây thương tích, gây tổn hại đến sức khỏe của mình, giả bị bệnh hoặc dùng các hình thức gian dối khác để trốn tránh, thoái thác nhiệm vụ được giao thì bị kỷ luật hình thức nào?', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Cảnh cáo.', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan, tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan, tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(698, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tự gây thương tích, gây tổn hại đến sức khỏe của mình, giả bị bệnh hoặc dùng các hình thức gian dối khác để trốn tránh, thoái thác nhiệm vụ được giao đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Cảnh cáo, hạ bậc lương.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan, tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan, tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(699, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, tự gây thương tích, gây tổn hại đến sức khỏe của mình, giả bị bệnh hoặc dùng các hình thức gian dối khác để trốn tránh, thoái thác nhiệm vụ được giao mà còn lôi kéo người khác tham gia thì bị kỷ luật hình thức nào?', 'Từ khiển trách, cảnh cáo, hạ bậc lương, giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan.', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan, tước danh hiệu quân nhân, buộc thôi việc.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm đến tước quân hàm sĩ quan, tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(700, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, lưu học sinh quân sự, lưu học sinh cơ yếu về nước chậm từ 15 ngày đến dưới 30 ngày so với thời gian quy định thì bị kỷ luật hình thức nào?', 'Cảnh cáo.', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Khiển trách.', 'Khiển trách.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(701, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, lưu học sinh quân sự, lưu học sinh cơ yếu về nước chậm từ 30 ngày đến dưới 90 ngày so với thời gian quy định thì bị kỷ luật hình thức nào?', 'Cảnh cáo.', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Cảnh cáo đến giáng cấp bậc quân hàm.', 'Cảnh cáo đến giáng cấp bậc quân hàm.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(702, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, lưu học sinh quân sự, lưu học sinh cơ yếu về nước chậm từ 90 ngày trở lên so với thời gian quy định thì bị kỷ luật hình thức nào?', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Cảnh cáo đến giáng cấp bậc quân hàm.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(703, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, vô ý làm lộ bí mật hoặc làm mất vật, tài liệu bí mật quân sự, bí mật Nhà nước thì bị kỷ luật hình thức nào?', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Cảnh cáo đến giáng cấp bậc quân hàm.', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Cảnh cáo, hạ bậc lương đến giáng chức, cách chức.', 'Cảnh cáo, hạ bậc lương đến giáng chức, cách chức.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(704, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, trong khu vực có tình hình an ninh chính trị mất ổn định mà vô ý làm lộ bí mật hoặc làm mất vật, tài liệu bí mật quân sự, bí mật Nhà nước thì bị kỷ luật hình thức nào?', 'Cảnh cáo đến giáng cấp bậc quân hàm.', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(705, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, vô ý làm lộ bí mật hoặc làm mất vật, tài liệu bí mật quân sự, bí mật Nhà nước đã bị xử lý kỷ luật mà còn vi phạm thì bị kỷ luật hình thức nào?', 'Cảnh cáo đến giáng cấp bậc quân hàm, tước danh hiệu sĩ quan.', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(706, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, vô ý làm lộ bí mật hoặc làm mất vật, tài liệu bí mật quân sự, bí mật Nhà nước ảnh hưởng đến việc hoàn thành nhiệm vụ của đơn vị thì bị kỷ luật hình thức nào?', 'Cảnh cáo đến giáng cấp bậc quân hàm, tước danh hiệu sĩ quan.', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', 'Giáng cấp bậc quân hàm, tước quân hàm sĩ quan đến tước danh hiệu quân nhân, buộc thôi việc.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(707, 'Theo Thông tư số 143/2023/TT-BQP ngày 27 tháng 12 năm 2023 về việc quy định xử lý kỷ luật trong Quân đội nhân dân Việt Nam, báo cáo sai, báo cáo không kịp thời, không báo cáo nhằm lừa dối cấp trên, bao che, trốn tránh trách nhiệm, đổ lỗi cho người khác thì bị kỷ luật hình thức nào?', 'Cảnh cáo đến giáng cấp bậc quân hàm, tước danh hiệu sĩ quan.', 'Cảnh cáo, hạ bậc lương, giáng chức, cách chức.', 'Từ giáng chức, cách chức, giáng cấp bậc quân hàm.', 'Khiển trách hoặc cảnh cáo.', 'Khiển trách hoặc cảnh cáo.', NULL, 1, 1, '2025-01-02 03:00:05', '2025-01-02 03:00:05'),
(708, 'Biện pháp nghiệp vụ là gì?', 'biện pháp công tác của cơ quan chuyên trách bảo vệ an ninh quốc gia được thực hiện theo quy định của pháp luật.', 'biện pháp công tác của cơ quan chuyên trách bảo vệ an ninh quốc gia được thực hiện theo quy định của Bộ Quốc phòng.', 'biện pháp công tác của cơ quan chuyên trách bảo vệ an ninh quốc gia được thực hiện theo quy định của hiến pháp.', 'Cả 3 đáp án đều sai', 'biện pháp công tác của cơ quan chuyên trách bảo vệ an ninh quốc gia được thực hiện theo quy định của pháp luật.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(709, 'Mục tiêu quan trọng về an ninh quốc gia là gì?', 'những đối tượng, địa điểm, công trình, cơ sở về chính trị, an ninh, quốc phòng, kinh tế, khoa học - kỹ thuật, văn hoá, xã hội thuộc danh mục cần được bảo vệ do pháp luật quy định.', 'những đối tượng, địa điểm, công trình, cơ sở về chính trị, an ninh, quốc phòng, kinh tế, khoa học - kỹ thuật, xã hội thuộc danh mục cần được bảo vệ do pháp luật quy định.', 'những đối tượng, địa điểm, công trình, cơ sở về chính trị, an ninh, quốc phòng, kinh tế, khoa học - kỹ thuật, văn hoá, xã hội thuộc danh mục cần được bảo vệ do Bộ quốc phòng quy định.', 'những địa điểm, công trình, cơ sở về chính trị, an ninh, quốc phòng, kinh tế, khoa học - kỹ thuật, văn hoá, xã hội thuộc danh mục cần được bảo vệ do Bộ quốc phòng quy định.', 'những đối tượng, địa điểm, công trình, cơ sở về chính trị, an ninh, quốc phòng, kinh tế, khoa học - kỹ thuật, văn hoá, xã hội thuộc danh mục cần được bảo vệ do pháp luật quy định.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(710, 'Theo Khoản 1, Điều 4 Luật An ninh quốc gia Nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam thực hiện chính sách an ninh quốc gia như thế nào?', 'hòa bình, hữu nghị, mở rộng giao lưu và hợp tác với tất cả các nước trên cơ sở tôn trọng độc lập, chủ quyền và toàn vẹn lãnh thổ của nhau, không can thiệp vào công việc nội bộ của nhau, bình đẳng và cùng có lợi.', 'hòa bình, hữu nghị, mở rộng giao lưu và hợp tác với tất cả các nước trên cơ sở tôn trọng độc lập, chủ quyền và toàn vẹn lãnh thổ của nhau, không can thiệp vào công việc nội bộ của nhau, bình đẳng và cùng hợp tác.', 'hòa bình, hữu nghị, mở rộng giao lưu và hợp tác với tất cả các nước trên cơ sở tôn trọng độc lập, chủ quyền và toàn vẹn lãnh thổ của nhau, không can thiệp vào công việc nội bộ của nhau, bình đẳng và cùng phát triển.', 'mở rộng giao lưu và hợp tác với tất cả các nước trên cơ sở tôn trọng độc lập, chủ quyền và toàn vẹn lãnh thổ của nhau, không can thiệp vào công việc nội bộ của nhau, bình đẳng và cùng phát triển.', 'hòa bình, hữu nghị, mở rộng giao lưu và hợp tác với tất cả các nước trên cơ sở tôn trọng độc lập, chủ quyền và toàn vẹn lãnh thổ của nhau, không can thiệp vào công việc nội bộ của nhau, bình đẳng và cùng có lợi.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(711, 'Theo Điều 5 Luật An ninh quốc gia có mấy nguyên tắc hoạt động bảo vệ an ninh quốc gia?', '4', '5', '6', '7', '4', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(712, 'Theo Điều 6 Luật An ninh quốc gia xây dựng lực lượng bảo vệ an ninh quốc gia như thế nào', 'Nhà nước xây dựng lực lượng chuyên trách bảo vệ an ninh quốc gia cách mạng, chính quy, tinh nhuệ, từng bước hiện đại làm nòng cốt thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', 'Nhà nước xây dựng lực lượng chuyên trách bảo vệ an ninh quốc gia cách mạng, chính quy, tinh nhuệ, hiện đại làm nòng cốt thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', 'Nhà nước xây dựng lực lượng chuyên trách bảo vệ an ninh quốc gia cách mạng, chính quy, tinh nhuệ, từng bước hiện đại làm tiền đề thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', 'Nhà nước xây dựng lực lượng chuyên trách bảo vệ an ninh quốc gia cách mạng, chính quy, hiện đại làm tiền đề thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', 'Nhà nước xây dựng lực lượng chuyên trách bảo vệ an ninh quốc gia cách mạng, chính quy, tinh nhuệ, từng bước hiện đại làm nòng cốt thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(713, 'Theo Điều 7 Luật An ninh quốc gia cơ quan bảo đảm điều kiện cho hoạt động bảo vệ an ninh quốc gia?', 'Nhà nước', 'Bộ Quốc phòng', 'Bộ Công an', 'Quốc hội', 'Nhà nước', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(714, 'Theo Điều 8 Luật An ninh quốc gia quy định trách nhiệm, nghĩa vụ bảo vệ an ninh quốc gia như thế nào?', 'Bảo vệ an ninh quốc gia là sự nghiệp của toàn dân. Cơ quan, tổ chức, công dân có trách nhiệm, nghĩa vụ bảo vệ an ninh quốc gia theo quy định của pháp luật.', 'Bảo vệ an ninh quốc gia là sự nghiệp của toàn dân. Cơ quan, tổ chức, công dân có trách nhiệm, nghĩa vụ bảo vệ an ninh quốc gia theo quy định của Hiến pháp.', 'Bảo vệ an ninh quốc gia là sự nghiệp của toàn dân. Cơ quan, tổ chức, công dân có trách nhiệm, nghĩa vụ bảo vệ an ninh quốc gia theo quy định của Bộ quốc phòng.', 'Bảo vệ an ninh quốc gia là sự nghiệp của toàn Đảng, toàn dân. Cơ quan, tổ chức, công dân có trách nhiệm, nghĩa vụ bảo vệ an ninh quốc gia theo quy định của Bộ quốc phòng.', 'Bảo vệ an ninh quốc gia là sự nghiệp của toàn dân. Cơ quan, tổ chức, công dân có trách nhiệm, nghĩa vụ bảo vệ an ninh quốc gia theo quy định của pháp luật.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(715, 'Bảo vệ an ninh quốc gia là sự nghiệp của toàn Đảng, toàn dân. Cơ quan, tổ chức, công dân có trách nhiệm, nghĩa vụ bảo vệ an ninh quốc gia theo quy định của Bộ quốc phòng.', 'Có', 'Không', 'Tùy trường hợp', 'Do BQP quy định', 'Có', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(716, 'Theo khoản 1, Điều 10 Luật An ninh quốc gia cơ quan nào có trách nhiệm tổ chức, chỉ đạo công tác tuyên truyền, giáo dục bảo vệ an ninh quốc gia?', 'Chính phủ, các bộ, cơ quan ngang bộ, cơ quan thuộc Chính phủ và Uỷ ban nhân dân các cấp', 'Cơ quan thuộc Chính phủ và Uỷ ban nhân dân các cấp', 'Bộ Quốc phòng', 'Quốc hội', 'Chính phủ, các bộ, cơ quan ngang bộ, cơ quan thuộc Chính phủ và Uỷ ban nhân dân các cấp', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(717, 'Giáo dục bảo vệ an ninh quốc gia là một nội dung giáo dục?', 'Quốc dân.', 'Quốc phòng', 'Tự nguyện', 'Bắt buộc', 'Quốc dân.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(718, 'Theo Điều 11 Luật An ninh quốc gia Việt Nam thực hiện chính sách hợp tác quốc tế trong lĩnh vực bảo vệ an ninh quốc gia như thế nào?', 'Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam thực hiện chính sách hợp tác quốc tế đa phương, song phương với các nước, các tổ chức quốc tế trong hoạt động bảo vệ an ninh quốc gia phù hợp với pháp luật Việt Nam và pháp luật quốc tế; thực hiện các điều ước quốc tế liên quan đến lĩnh vực bảo vệ an ninh quốc gia mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập.', 'Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam thực hiện chính sách hợp tác quốc tế song phương với các nước, các tổ chức quốc tế trong hoạt động bảo vệ an ninh quốc gia phù hợp với pháp luật Việt Nam và pháp luật quốc tế; thực hiện các điều ước quốc tế liên quan đến lĩnh vực bảo vệ an ninh quốc gia mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập.', 'Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam thực hiện chính sách hợp tác quốc tế đa phương, song phương với các nước, các tổ chức quốc tế trong hoạt động bảo vệ an ninh quốc gia phù hợp với pháp luật Việt Nam; thực hiện các điều ước quốc tế liên quan đến lĩnh vực bảo vệ an ninh quốc gia mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập.', 'Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam thực hiện chính sách hợp tác quốc tế đa phương, song phương với các nước trong hoạt động bảo vệ an ninh quốc gia phù hợp với pháp luật Việt Nam; thực hiện các điều ước quốc tế liên quan đến lĩnh vực bảo vệ an ninh quốc gia mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập.', 'Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam thực hiện chính sách hợp tác quốc tế đa phương, song phương với các nước, các tổ chức quốc tế trong hoạt động bảo vệ an ninh quốc gia phù hợp với pháp luật Việt Nam và pháp luật quốc tế; thực hiện các điều ước quốc tế liên quan đến lĩnh vực bảo vệ an ninh quốc gia mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(719, 'Theo Điều 14 Luật An ninh quốc gia có mấy nhiệm vụ bảo vệ an ninh quốc gia?', '5', '6', '7', '8', '5', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(720, 'Theo Điều 16 Luật An ninh quốc gia xây dựng nền an ninh nhân dân và thế trận an ninh nhân dân có mấy nội dung?', '4', '5', '6', '7', '4', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(721, 'Theo Điều 17 Luật An ninh quốc gia công dân có mấy quyền và nghĩa vụ trong bảo vệ an ninh quốc gia?', '5', '6', '7', '8', '5', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(722, 'Theo Điều 18 Luật An ninh quốc gia có mấy trách nhiệm của cơ quan, tổ chức trong bảo vệ an ninh quốc gia?', '5', '6', '7', '8', '5', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(723, 'Theo Điều 19 Luật An ninh quốc gia quy định trách nhiệm của Mặt trận Tổ quốc Việt Nam và các tổ chức thành viên trong bảo vệ an ninh quốc gia?', 'Mặt trận Tổ quốc Việt Nam và các tổ chức thành viên trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm tuyên truyền, động viên nhân dân xây dựng khối đại đoàn kết toàn dân tộc, nghiêm chỉnh chấp hành pháp luật về bảo vệ an ninh quốc gia; giám sát việc thực hiện pháp luật về bảo vệ an ninh quốc gia của tổ chức, cá nhân.', 'Mặt trận Tổ quốc Việt Nam và các tổ chức thành viên trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm tuyên truyền, động viên nhân dân nghiêm chỉnh chấp hành pháp luật về bảo vệ an ninh quốc gia; giám sát việc thực hiện pháp luật về bảo vệ an ninh quốc gia của tổ chức, cá nhân.', 'Mặt trận Tổ quốc Việt Nam và các tổ chức thành viên trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm tuyên truyền, động viên nhân dân xây dựng khối đại đoàn kết toàn dân tộc, nghiêm chỉnh chấp hành pháp luật về bảo vệ an ninh quốc gia.', 'Mặt trận Tổ quốc Việt Nam trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm tuyên truyền, động viên nhân dân xây dựng khối đại đoàn kết toàn dân tộc, nghiêm chỉnh chấp hành pháp luật về bảo vệ an ninh quốc gia.', 'Mặt trận Tổ quốc Việt Nam và các tổ chức thành viên trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm tuyên truyền, động viên nhân dân xây dựng khối đại đoàn kết toàn dân tộc, nghiêm chỉnh chấp hành pháp luật về bảo vệ an ninh quốc gia; giám sát việc thực hiện pháp luật về bảo vệ an ninh quốc gia của tổ chức, cá nhân.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(724, 'Mặt trận Tổ quốc Việt Nam trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm tuyên truyền, động viên nhân dân xây dựng khối đại đoàn kết toàn dân tộc, nghiêm chỉnh chấp hành pháp luật về bảo vệ an ninh quốc gia.', 'Theo Pháp luật về tình trạng khẩn cấp, tình trạng chiến tranh.', 'Theo lệnh của Bộ trưởng Bộ Quốc phòng', 'Theo lệnh của Chủ tịch nước', 'Quốc hội ban hành', 'Theo Pháp luật về tình trạng khẩn cấp, tình trạng chiến tranh.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(725, 'Theo Điều 20 Luật An ninh quốc gia Hội đồng quốc phòng an ninh có trách nhiệm gì?', 'Động viên mọi lực lượng và khả năng của đất nước để bảo vệ Tổ quốc; thực hiện những nhiệm vụ và quyền hạn đặc biệt do Quốc hội giao.', 'Động viên lực lượng dự bị động viên để bảo vệ Tổ quốc; thực hiện những nhiệm vụ và quyền hạn đặc biệt do Quốc hội giao.', 'Động viên toàn dân để bảo vệ Tổ quốc; thực hiện những nhiệm vụ và quyền hạn đặc biệt do Quốc hội giao.', 'Động viên toàn dân thực hiện những nhiệm vụ và quyền hạn đặc biệt do Quốc hội giao.', 'Động viên mọi lực lượng và khả năng của đất nước để bảo vệ Tổ quốc; thực hiện những nhiệm vụ và quyền hạn đặc biệt do Quốc hội giao.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(726, 'Theo Khoản 1, Điều 21 Luật An ninh quốc gia khi có nguy cơ đe doạ an ninh quốc gia nhưng chưa đến mức ban bố tình trạng khẩn cấp, Thủ tướng Chính phủ được quyết định áp dụng mấy biện pháp:', 'Cơ quan, tổ chức, cá nhân', 'Bộ Quốc phòng', 'Nhân dân', 'Cơ quan, tổ chức', 'Cơ quan, tổ chức, cá nhân', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(727, 'Theo khoản 2, Điều 23 Luật An ninh quốc gia nhiệm vụ của cơ quan chuyên trách bảo vệ an ninh quốc gia gồm mấy nhiệm vụ?', '5', '6', '7', '8', '5', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(728, 'Theo Khoản 1, Điều 24 Luật An ninh quốc gia Cơ quan chuyên trách bảo vệ an ninh quốc gia có mấy quyền?', '8', '7', '6', '5', '8', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(729, 'Theo Điều 26 Luật An ninh quốc gia cán bộ, chiến sĩ cơ quan chuyên trách bảo vệ an ninh quốc gia có được trang bị và sử dụng vũ khí, phương tiện kỹ thuật nghiệp vụ, công cụ hỗ trợ để thực hiện nhiệm vụ hay không?', 'Có', 'Không', 'Tùy trường hợp', 'Theo quy định hiện hành', 'Có', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(730, 'Theo Điều 28 Luật An ninh quốc gia chế độ, chính sách đối với cán bộ, chiến sĩ cơ quan chuyên trách bảo vệ an ninh quốc gia', 'Cán bộ, chiến sĩ cơ quan chuyên trách bảo vệ an ninh quốc gia được tuyển chọn, bồi dưỡng, đào tạo, được phong, thăng hàm, cấp lực lượng vũ trang nhân dân và hưởng chế độ, chính sách ưu đãi theo quy định của pháp luật.', 'Cán bộ, chiến sĩ cơ quan chuyên trách bảo vệ an ninh quốc gia được phong, thăng hàm, cấp lực lượng vũ trang nhân dân và hưởng chế độ, chính sách ưu đãi theo quy định của pháp luật.', 'Cán bộ, chiến sĩ cơ quan chuyên trách bảo vệ an ninh quốc gia được tuyển chọn, bồi dưỡng, đào tạo, được phong, thăng hàm, cấp lực lượng vũ trang nhân dân.', 'Cán bộ, chiến sĩ cơ quan chuyên trách bảo vệ an ninh quốc gia được tuyển chọn, bồi dưỡng, đào tạo, được phong, thăng hàm, cấp theo quy định của Bộ quốc phòng', 'Cán bộ, chiến sĩ cơ quan chuyên trách bảo vệ an ninh quốc gia được tuyển chọn, bồi dưỡng, đào tạo, được phong, thăng hàm, cấp lực lượng vũ trang nhân dân và hưởng chế độ, chính sách ưu đãi theo quy định của pháp luật.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(731, 'Theo Điều 29 Luật An ninh quốc gia có mấy nội dung quản lý nhà nước về an ninh quốc gia?', '6', '7', '8', '9', '6', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(732, 'Theo Khoản 1, Điều 30 Luật An ninh quốc gia cơ quan nào thống nhất quản lý nhà nước về an ninh quốc gia?', 'Chính phủ', 'Nhà nước', 'Bộ Quốc phòng', 'Quốc hội', 'Chính phủ', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(733, 'Theo Điều 31 Luật An ninh quốc gia Quy chế phối hợp giữa Bộ Công an với Bộ Quốc phòng trong việc thực hiện nhiệm vụ bảo vệ an ninh quốc gia do ai quy định?', 'Thủ tướng Chính phủ.', 'Chủ tịch nước', 'Tổng Bí thư', 'Quốc hội', 'Thủ tướng Chính phủ.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(734, 'Luật An ninh quốc gia được Quốc hội Khóa mấy thông qua?', 'XI', 'XII', 'XIII', 'XIV', 'XI', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(735, 'An ninh Quốc gia là gì', 'An ninh quốc gia là phát triển bền vững của chế độ xã hội chủ nghĩa và Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam, sự bất khả xâm phạm độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của Tổ quốc.', 'An ninh quốc gia là sự ổn định, phát triển bền vững của chế độ xã hội chủ nghĩa và Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam, sự bất khả xâm phạm độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của Tổ quốc.', 'An ninh quốc gia là sự ổn định, phát triển bền vững của chế độ xã hội chủ nghĩa và Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam, không xâm phạm độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của Tổ quốc.', 'An ninh quốc gia là sự ổn định, phát triển bền vững của chế độ xã hội chủ nghĩa và Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam, sự bất khả xâm phạm độc lập, chủ quyền toàn vẹn lãnh thổ của Tổ quốc.', 'An ninh quốc gia là sự ổn định, phát triển bền vững của chế độ xã hội chủ nghĩa và Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam, sự bất khả xâm phạm độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của Tổ quốc.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(736, 'Cơ quan chuyên trách bảo vệ an ninh quốc gia là gì?', 'là cơ quan chỉ đạo, chỉ huy và đơn vị nghiệp vụ thuộc lực lượng vũ trang nhân dân được giao nhiệm vụ chuyên trách làm tổ chức, trực tiếp thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', 'là cơ quan chỉ đạo, chỉ huy và đơn vị nghiệp vụ thuộc lực lượng vũ trang nhân dân được giao nhiệm vụ chuyên trách làm tham mưu, tổ chức, trực tiếp thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', 'là cơ quan chỉ đạo, chỉ huy và đơn vị nghiệp vụ thuộc lực lượng vũ trang nhân dân được giao nhiệm vụ chuyên trách trực tiếp thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', 'là cơ quan tham mưu, chỉ huy và đơn vị nghiệp vụ thuộc lực lượng vũ trang nhân dân được giao nhiệm vụ chuyên trách làm tổ chức, trực tiếp thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', 'là cơ quan chỉ đạo, chỉ huy và đơn vị nghiệp vụ thuộc lực lượng vũ trang nhân dân được giao nhiệm vụ chuyên trách làm tham mưu, tổ chức, trực tiếp thực hiện nhiệm vụ bảo vệ an ninh quốc gia.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(737, 'Nền an ninh nhân dân là gì?', 'sức mạnh về vật chất, sự đoàn kết và truyền thống dựng nước, giữ nước của toàn dân tộc được huy động vào sự nghiệp bảo vệ an ninh quốc gia, trong đó lực lượng chuyên trách bảo vệ an ninh quốc gia làm nòng cốt.', 'sức mạnh về tinh thần, vật chất, sự đoàn kết và truyền thống dựng nước, giữ nước của toàn dân tộc được huy động vào sự nghiệp bảo vệ an ninh quốc gia, trong đó lực lượng chuyên trách bảo vệ an ninh quốc gia làm nòng cốt', 'sức mạnh về sự đoàn kết và truyền thống dựng nước, giữ nước của toàn dân tộc được huy động vào sự nghiệp bảo vệ an ninh quốc gia, trong đó lực lượng chuyên trách bảo vệ an ninh quốc gia làm nòng cốt', 'sức mạnh về sự đoàn kết dựng nước, giữ nước của toàn dân tộc được huy động vào sự nghiệp bảo vệ an ninh quốc gia, trong đó lực lượng chuyên trách bảo vệ an ninh quốc gia làm nòng cốt', 'sức mạnh về tinh thần, vật chất, sự đoàn kết và truyền thống dựng nước, giữ nước của toàn dân tộc được huy động vào sự nghiệp bảo vệ an ninh quốc gia, trong đó lực lượng chuyên trách bảo vệ an ninh quốc gia làm nòng cốt', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(738, 'Theo Điều 6 Luật An ninh quốc gia ai xây dựng lực lượng bảo vệ an ninh quốc gia', 'Chính phủ', 'Nhà nước', 'Bộ Quốc phòng', 'Quốc hội', 'Nhà nước', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(739, 'Cơ quan chuyên trách bảo vệ an ninh quốc gia quy định như thế nàp?', 'Bộ Quốc phòng quy định', 'Pháp luật quy định', 'Chủ tịch nước quy định', 'Quốc hội quy định', 'Pháp luật quy định', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(740, 'Theo Khoản 3, Điều 24 Luật An ninh quốc gia cơ quan chuyên trách bảo vệ an ninh quốc gia có mấy trách nhiệm?', '2', '3', '4', '5', '3', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(741, 'Theo Khoản 1, Điều 25 Luật An ninh quốc gia cán bộ chuyên trách bảo vệ an ninh quốc gia trong khi thực hiện nhiệm vụ được mấy quyền?', '3', '4', '5', '6', '4', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(742, 'Theo Khoản 2, Điều 30 Luật An ninh quốc gia cơ quan nào chịu trách nhiệm trước Chính phủ chủ trì, phối hợp với Bộ Quốc phòng, Bộ Ngoại giao, các bộ, cơ quan ngang bộ thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia?', 'Bộ Ngoại giao', 'Bộ Công an', 'Bộ GTVT', 'Bộ Quốc phòng', 'Bộ Công an', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(743, 'Theo Điều 32 Luật An ninh quốc gia quy định trách nhiệm của Bộ Ngoại giao trong quản lý nhà nước về an ninh quốc gia', 'Bộ Ngoại giao trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, phối hợp với Bộ Công an, Bộ Quốc phòng, các cơ quan hữu quan khác để bảo vệ an ninh quốc gia.', 'Bộ Ngoại giao trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, các quy định khác của pháp luật có liên quan và phối hợp với Bộ Công an, Bộ Quốc phòng, các cơ quan hữu quan khác để bảo vệ an ninh quốc gia.', 'Bộ Quốc phòng trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, các quy định khác của pháp luật có liên quan.', 'Bộ Công an trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, phối hợp với Bộ Công an, Bộ Quốc phòng, các cơ quan hữu quan khác để bảo vệ an ninh quốc gia.', 'Bộ Ngoại giao trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, các quy định khác của pháp luật có liên quan và phối hợp với Bộ Công an, Bộ Quốc phòng, các cơ quan hữu quan khác để bảo vệ an ninh quốc gia.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(744, 'Theo Điều 32 Luật An ninh quốc gia quy chế phối hợp giữa Bộ Công an với Bộ Ngoại giao trong việc thực hiện nhiệm vụ bảo vệ an ninh quốc gia do', 'Chủ tịch nước', 'Thủ tướng Chính phủ.', 'Tổng Bí thư', 'Quốc hội', 'Thủ tướng Chính phủ.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(745, 'Luật An ninh quốc gia được thông qua tại kỳ họp thứ mấy Quốc hội Khóa XI', '5', '6', '8', '7', '6', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(746, 'Bảo vệ an ninh quốc gia là gì?', 'Bảo vệ an ninh quốc gia là phòng ngừa, phát hiện, ngăn chặn, đấu tranh làm thất bại các hoạt động xâm phạm an ninh quốc gia.', 'Bảo vệ an ninh quốc gia là phòng ngừa, ngăn chặn, đấu tranh làm thất bại các hoạt động xâm phạm an ninh quốc gia.', 'Bảo vệ an ninh quốc gia là phát hiện, ngăn chặn, đấu tranh làm thất bại các hoạt động xâm phạm an ninh quốc gia.', 'Bảo vệ an ninh quốc gia là ngăn chặn, đấu tranh làm thất bại các hoạt động xâm phạm an ninh quốc gia.', 'Bảo vệ an ninh quốc gia là phòng ngừa, ngăn chặn, đấu tranh làm thất bại các hoạt động xâm phạm an ninh quốc gia.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(747, 'Cán bộ chuyên trách bảo vệ an ninh quốc gia là ai?', 'Sĩ quan', 'Hạ sĩ quan', 'Sĩ quan và Hạ sĩ quan', 'Quân nhân chuyên nghiệp', 'Sĩ quan và Hạ sĩ quan', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(748, 'Theo Điều 4 Luật An ninh quốc gia Nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam thực hiện chính sách an ninh quốc gia như thế nào?', 'hòa bình, hữu nghị, mở rộng giao lưu và hợp tác với tất cả các nước trên cơ sở tôn trọng độc lập, chủ quyền và toàn vẹn lãnh thổ của nhau, không can thiệp vào công việc nội bộ của nhau, bình đẳng và cùng có lợi.', 'Nhà nước có chính sách xây dựng khối đại đoàn kết toàn dân tộc; phát triển kinh tế, văn hoá, xã hội, khoa học, công nghệ, an ninh, quốc phòng, đối ngoại vững mạnh, giữ vững ổn định chính trị để bảo đảm an ninh quốc gia.', 'Cả 2 đáp án trên đúng', 'Cả 2 đáp án trên sai', 'Cả 2 đáp án trên đúng', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(749, 'Theo Điều 5 Luật An ninh quốc gia đâu là nguyên tắc hoạt động bảo vệ an ninh quốc gia?', 'Tuân thủ Hiến pháp, pháp luật, bảo đảm lợi ích của Nhà nước, quyền và lợi ích hợp pháp của tổ chức, cá nhân; Đặt dưới sự lãnh đạo của Đảng Cộng sản Việt Nam, sự quản lý thống nhất của Nhà nước; huy động sức mạnh tổng hợp của hệ thống chính trị và toàn dân tộc, lực lượng chuyên trách bảo vệ an ninh quốc gia làm nòng cốt.', 'Kết hợp chặt chẽ giữa nhiệm vụ bảo vệ an ninh quốc gia với nhiệm vụ xây dựng, phát triển kinh tế, văn hoá, xã hội; phối hợp có hiệu quả hoạt động an ninh, quốc phòng và đối ngoại; Chủ động phòng ngừa, chủ động đấu tranh làm thất bại mọi âm mưu và hoạt động xâm phạm an ninh quốc gia.', 'Cả 2 đáp án trên đúng', 'Cả 2 đáp án trên sai', 'Cả 2 đáp án trên đúng', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(750, 'Theo Điều 9 Luật An ninh quốc gia chế độ, chính sách đối với cơ quan, tổ chức, cá nhân trong hoạt động bảo vệ an ninh quốc gia quy đinh như thế nào?', 'Nhà nước bảo vệ, giữ bí mật cho cán bộ, chiến sĩ thuộc lực lượng chuyên trách bảo vệ an ninh quốc gia và cơ quan, tổ chức, cá nhân tham gia bảo vệ an ninh quốc gia.', 'Cơ quan, tổ chức, cá nhân trong hoạt động bảo vệ an ninh quốc gia có thành tích thì được khen thưởng, bị tổn hại về danh dự thì được khôi phục, bị thiệt hại về tài sản thì được đền bù; người bị thương tích, tổn hại về sức khỏe, bị thiệt hại về tính mạng thì bản thân và gia đình được hưởng chế độ, chính sách theo quy định của pháp luật.', 'Cả 2 đáp án trên đúng', 'Cả 2 đáp án trên sai', 'Cả 2 đáp án trên đúng', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(751, 'Theo Khoản 3, Điều 10 Luật An ninh quốc gia Cơ quan, tổ chức trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm tuyên truyền, giáo dục, vận động?', 'Công dân Việt Nam', 'Công dân đang sinh sống tại Việt Nam', 'Công dân Việt Nam, người Việt Nam định cư ở nước ngoài', 'Công dân nước ngoài sinh sống tại VN', 'Công dân Việt Nam, người Việt Nam định cư ở nước ngoài', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(752, 'Theo Điều 13 Luật An ninh quốc gia có mấy hành vi bị nghiêm cấm?', '5', '6', '7', '8', '7', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(753, 'Các biện pháp cơ bản bảo vệ an ninh quốc gia', 'Vận động quần chúng, ngoại giao, kinh tế, khoa học - kỹ thuật, nghiệp vụ, vũ trang.', 'Vận động kinh tế, khoa học - kỹ thuật, nghiệp vụ, vũ trang.', 'Vận động quần chúng, pháp luật, ngoại giao, kinh tế, khoa học - kỹ thuật, nghiệp vụ, vũ trang.', 'Vận động ngoại giao', 'Vận động quần chúng, pháp luật, ngoại giao, kinh tế, khoa học - kỹ thuật, nghiệp vụ, vũ trang.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(754, 'Theo Điều 18 Luật An ninh quốc gia đâu trách nhiệm của cơ quan, tổ chức trong bảo vệ an ninh quốc gia?', 'Thực hiện các biện pháp bảo vệ an ninh chính trị nội bộ, huy động sức mạnh của cơ quan, tổ chức để thực hiện nhiệm vụ bảo vệ an ninh quốc gia; đưa nhiệm vụ bảo vệ an ninh quốc gia vào chương trình, kế hoạch và các hoạt động chuyên môn của cơ quan, tổ chức.', 'Phát hiện, cung cấp kịp thời thông tin, tài liệu liên quan đến hoạt động xâm phạm an ninh quốc gia cho cơ quan chuyên trách bảo vệ an ninh quốc gia hoặc chính quyền nơi gần nhất.', 'Cả 3 đáp án trên.', 'Giáo dục, động viên mọi thành viên của cơ quan, tổ chức mình và nhân dân tham gia bảo vệ an ninh quốc gia;', 'Cả 3 đáp án trên.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(755, 'Theo Khoản 1, Điều 21 Luật An ninh quốc gia khi có nguy cơ đe doạ an ninh quốc gia nhưng chưa đến mức ban bố tình trạng khẩn cấp, Thủ tướng Chính phủ được quyết định áp dụng mấy biện pháp:', '7', '8', '9', '10', '9', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(756, 'Có mấy chế độ quản lý thông tin, tài liệu, đồ vật về bảo vệ an ninh quốc gia?', '1', '4', '2', '5', '2', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(757, 'Chế độ quản lý thông tin, tài liệu, đồ vật về bảo vệ an ninh quốc gia?', 'Thông tin, tài liệu, đồ vật liên quan đến cơ quan chuyên trách bảo vệ an ninh quốc gia hoặc do cơ quan này thu thập được thuộc bí mật nhà nước và được quản lý theo quy định của pháp luật về bảo vệ bí mật nhà nước.', 'Thông tin, tài liệu, đồ vật quy định tại khoản 1 Điều này có giá trị lịch sử, khoa học và công nghệ đã được công bố theo quy định của pháp luật thì có thể được chuyển giao cho cơ quan lưu trữ nhà nước quản lý.', 'Cả 2 đáp án trên đúng', 'Cả 2 đáp án trên sai', 'Cả 2 đáp án trên đúng', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(758, 'Theo Điều 34 Luật An ninh quốc gia quy định trách nhiệm của Uỷ ban nhân dân các cấp trong quản lý nhà nước về an ninh quốc gia?', 'Uỷ ban nhân dân các cấp thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia tại địa phương; thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định của Luật này và các quy định khác của pháp luật có liên quan.', 'Uỷ ban nhân dân các cấp trong phạm vi nhiệm vụ, quyền hạn của mình thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia tại địa phương; thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định của Luật này.', 'Uỷ ban nhân dân các cấp trong phạm vi nhiệm vụ, quyền hạn của mình thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia tại địa phương; thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định của Luật này và các quy định khác của pháp luật có liên quan.', 'Uỷ ban nhân dân các cấp thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định của Luật này và các quy định khác của pháp luật có liên quan.', 'Uỷ ban nhân dân các cấp trong phạm vi nhiệm vụ, quyền hạn của mình thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia tại địa phương; thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định của Luật này và các quy định khác của pháp luật có liên quan.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(759, 'Thế trận an ninh nhân dân là gì?', 'việc tổ chức, bố trí lực lượng bảo vệ Đảng và nhà nước và các nguồn lực cần thiết để chủ động bảo vệ an ninh quốc gia.', 'việc tổ chức, bố trí lực lượng bảo vệ nhân dân và các nguồn lực cần thiết để chủ động bảo vệ an ninh quốc gia', 'việc bố trí lực lượng bảo vệ an ninh quốc gia và các nguồn lực cần thiết để chủ động bảo vệ an ninh quốc gia', 'việc tổ chức, bố trí lực lượng bảo vệ an ninh quốc gia và các nguồn lực cần thiết để chủ động bảo vệ an ninh quốc gia', 'việc tổ chức, bố trí lực lượng bảo vệ an ninh quốc gia và các nguồn lực cần thiết để chủ động bảo vệ an ninh quốc gia', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29');
INSERT INTO `question` (`id`, `name`, `answer1`, `answer2`, `answer3`, `answer4`, `answertrue`, `doccate_id`, `catechild_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(760, 'Điều 12 Luật An ninh quốc gia chính sách xử lý các hành vi xâm phạm an ninh quốc gia như thế nào?', 'Mọi hành vi xâm phạm an ninh quốc gia đều phải bị xử lý nghiêm minh, kịp thời theo đúng quy định của pháp luật. Người chủ mưu, cầm đầu, chỉ huy, ngoan cố chống đối thì bị nghiêm trị.', 'Người bị ép buộc, lừa gạt, lôi kéo nhận làm việc cho tổ chức, cá nhân để hoạt động xâm phạm an ninh quốc gia mà tự thú, thành khẩn khai báo thì được khoan hồng; nếu lập công thì được khen thưởng.', 'Người nước ngoài có hành vi xâm phạm an ninh quốc gia của Việt Nam ở ngoài lãnh thổ Việt Nam có thể bị xử lý theo pháp luật của nước Cộng hoà xã hội chủ nghĩa Việt Nam trong trường hợp điều ước quốc tế mà Cộng hoà xã hội chủ nghĩa Việt Nam ký kết hoặc gia nhập có quy định.', 'Cả 3 đáp án trên', 'Cả 3 đáp án trên', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(761, 'Theo Điều 14 Luật An ninh quốc gia có mấy nhiệm vụ bảo vệ an ninh quốc gia?', 'Bảo vệ chế độ chính trị và Nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam, bảo vệ độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của Tổ quốc; Bảo vệ an ninh về tư tưởng và văn hoá, khối đại đoàn kết toàn dân tộc, quyền và lợi ích hợp pháp của cơ quan, tổ chức, cá nhân.', 'Bảo vệ an ninh trong các lĩnh vực kinh tế, quốc phòng, đối ngoại và các lợi ích khác của quốc gia; Bảo vệ bí mật nhà nước và các mục tiêu quan trọng về an ninh quốc gia.', 'Phòng ngừa, phát hiện, ngăn chặn, đấu tranh làm thất bại và loại trừ các hoạt động xâm phạm an ninh quốc gia, nguy cơ đe doạ an ninh quốc gia.', 'Cả 3 đáp án trên', 'Cả 3 đáp án trên', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(762, 'Cơ quan chuyên trách bảo vệ an ninh quốc gia gồm?', 'Cơ quan chỉ đạo, chỉ huy và các đơn vị an ninh, tình báo, cảnh vệ Công an nhân dân;', 'Cơ quan chỉ đạo, chỉ huy và các đơn vị bảo vệ an ninh quân đội, tình báo Quân đội nhân dân;', 'Bộ đội biên phòng, cảnh sát biển là cơ quan chuyên trách bảo vệ an ninh quốc gia ở khu vực biên giới trên đất liền và khu vực biên giới trên biển.', 'Cả 3 đáp án trên', 'Cả 3 đáp án trên', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(763, 'Theo Khoản 1, Điều 24 Luật An ninh quốc gia đâu là một trong những quyền của Cơ quan chuyên trách bảo vệ an ninh quốc gia?', 'Sử dụng các biện pháp nghiệp vụ theo quy định của pháp luật;', 'Yêu cầu cơ quan, tổ chức, cá nhân cung cấp thông tin, tài liệu, đồ vật khi có căn cứ xác định liên quan đến hoạt động xâm phạm an ninh quốc gia;', 'Yêu cầu cơ quan, tổ chức tài chính, kho bạc, ngân hàng kiểm tra, phong toả tài khoản, nguồn tài chính liên quan đến hoạt động xâm phạm an ninh quốc gia;', 'Cả 3 quyền trên', 'Cả 3 quyền trên', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(764, 'Theo Khoản 3, Điều 24 Luật An ninh quốc gia cơ quan chuyên trách bảo vệ an ninh quốc gia có trách nhiệm?', 'Tiến hành các hoạt động bảo vệ an ninh quốc gia trong phạm vi chức năng, nhiệm vụ, quyền hạn của mình theo quy định của pháp luật;', 'Tuân thủ các quy định của pháp luật về bảo vệ lợi ích của Nhà nước, quyền và lợi ích hợp pháp của tổ chức, cá nhân; trong trường hợp vì yêu cầu bảo vệ an ninh quốc gia phải hạn chế các quyền và lợi ích đó thì phải được người có thẩm quyền quyết định;', 'Giữ bí mật về sự giúp đỡ của cơ quan, tổ chức, cá nhân đối với công tác bảo vệ an ninh quốc gia.', 'Cả 3 đáp án trên', 'Cả 3 đáp án trên', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(765, 'Theo Khoản 3, Điều 25 Luật An ninh quốc gia Ccán bộ chuyên trách bảo vệ an ninh quốc gia có trách nhiệm?', 'Chấp hành nghiêm chỉnh các quy tắc nghiệp vụ chuyên môn, kỷ luật của lực lượng vũ trang nhân dân và chịu trách nhiệm trước pháp luật về những việc làm của mình.', 'Chấp hành nghiêm chỉnh pháp luật của Nhà nước', 'Các quy tắc nghiệp vụ chuyên môn, kỷ luật của lực lượng vũ trang nhân dân và chịu trách nhiệm trước pháp luật về những việc làm của mình.', 'Chấp hành nghiêm chỉnh pháp luật của Nhà nước, các quy tắc nghiệp vụ chuyên môn, kỷ luật của lực lượng vũ trang nhân dân và chịu trách nhiệm trước pháp luật về những việc làm của mình.', 'Chấp hành nghiêm chỉnh pháp luật của Nhà nước, các quy tắc nghiệp vụ chuyên môn, kỷ luật của lực lượng vũ trang nhân dân và chịu trách nhiệm trước pháp luật về những việc làm của mình.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(766, 'Theo Điều 29 Luật An ninh quốc gia có mấy nội dung quản lý nhà nước về an ninh quốc gia?', 'Tổ chức, chỉ đạo, hướng dẫn hoạt động thu thập, phát hiện, điều tra, xử lý thông tin, tài liệu, hành vi liên quan đến hoạt động xâm phạm an ninh quốc gia.', 'Chỉ đạo, hướng dẫn thực hiện các biện pháp bảo vệ an ninh quốc gia.', 'Hợp tác quốc tế về bảo vệ an ninh quốc gia.', 'Cả 3 đáp án trên.', 'Cả 3 đáp án trên.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(767, 'Theo Điều 31 Luật An ninh quốc gia quy định trách nhiệm của Bộ Quốc phòng trong quản lý nhà nước về an ninh quốc gia?', 'Bộ Quốc phòng chịu trách nhiệm trước Chính phủ phối hợp với Bộ Công an thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia; chỉ đạo các lực lượng thuộc quyền phối hợp chặt chẽ với lực lượng Công an nhân dân và chính quyền địa phương để bảo vệ an ninh quốc gia theo quy định của pháp luật.', 'Bộ Công an trong phạm vi nhiệm vụ, quyền hạn của mình chịu trách nhiệm trước Chính phủ phối hợp với Bộ Công an thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia', 'Bộ Công an trong phạm vi nhiệm vụ, quyền hạn của mình chịu trách nhiệm trước Chính phủ phối hợp với Bộ Công an thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia; chỉ đạo các lực lượng thuộc quyền phối hợp chặt chẽ với lực lượng Công an nhân dân và chính quyền địa phương để bảo vệ an ninh quốc gia theo quy định của pháp luật.', 'Bộ Quốc phòng trong phạm vi nhiệm vụ, quyền hạn của mình chịu trách nhiệm trước Chính phủ phối hợp với Bộ Công an thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia; chỉ đạo các lực lượng thuộc quyền phối hợp chặt chẽ với lực lượng Công an nhân dân và chính quyền địa phương để bảo vệ an ninh quốc gia theo quy định của pháp luật', 'Bộ Quốc phòng trong phạm vi nhiệm vụ, quyền hạn của mình chịu trách nhiệm trước Chính phủ phối hợp với Bộ Công an thực hiện quản lý nhà nước về bảo vệ an ninh quốc gia; chỉ đạo các lực lượng thuộc quyền phối hợp chặt chẽ với lực lượng Công an nhân dân và chính quyền địa phương để bảo vệ an ninh quốc gia theo quy định của pháp luật', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(768, 'Theo Điều 33 Luật An ninh quốc gia quy định trách nhiệm của các bộ, cơ quan ngang bộ trong quản lý nhà nước về an ninh quốc gia?', 'Bộ Công an trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, các quy định khác của pháp luật có liên quan và phối hợp với các cơ quan hữu quan để bảo vệ an ninh quốc gia.', 'Các bộ, cơ quan ngang bộ trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này phối hợp với các cơ quan hữu quan để bảo vệ an ninh quốc gia.', 'Các bộ, cơ quan ngang bộ trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, các quy định khác của pháp luật có liên quan.', 'Các bộ, cơ quan ngang bộ trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, các quy định khác của pháp luật có liên quan và phối hợp với các cơ quan hữu quan để bảo vệ an ninh quốc gia.', 'Các bộ, cơ quan ngang bộ trong phạm vi nhiệm vụ, quyền hạn của mình có trách nhiệm thực hiện các nhiệm vụ bảo vệ an ninh quốc gia theo quy định tại Điều 14 của Luật này, các quy định khác của pháp luật có liên quan và phối hợp với các cơ quan hữu quan để bảo vệ an ninh quốc gia.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(769, 'Luật An ninh quốc gia có hiệu lực thi hành ngày, tháng, năm nào?', '38724', '38359', '38353', '39083', '39083', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(770, 'Hoạt động xâm phạm an ninh quốc gia là gì?', 'là những hành vi xâm phạm chế độ kinh tế, nền văn hoá, an ninh, quốc phòng, đối ngoại, độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', 'là những hành vi xâm phạm nền văn hoá, an ninh, quốc phòng, đối ngoại, độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', 'là những hành vi xâm phạm chế độ chính trị, chế độ kinh tế, nền văn hoá, an ninh, quốc phòng, đối ngoại, độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', 'là những hành vi xâm phạm an ninh, quốc phòng, đối ngoại, độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', 'là những hành vi xâm phạm an ninh, quốc phòng, đối ngoại, độc lập, chủ quyền, thống nhất, toàn vẹn lãnh thổ của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29'),
(771, 'Nguy cơ đe doạ an ninh quốc gia là gì?', 'là những nhân tố bên trong, bên ngoài lãnh thổ Việt Nam có nguy cơ thực tế gây nguy hại cho an ninh quốc gia của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', 'là những nhân tố bên trong lãnh thổ Việt Nam có khả năng thực tế gây nguy hại cho an ninh quốc gia của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', 'là những nhân tố bên trong, bên ngoài lãnh thổ Việt Nam có khả năng thực tế gây nguy hại cho an ninh quốc gia của nước Cộng hoà xã hội chủ nghĩa Việt Nam và các nước láng giềng.', 'là những nhân tố bên trong, bên ngoài lãnh thổ Việt Nam có khả năng thực tế gây nguy hại cho an ninh quốc gia của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', 'là những nhân tố bên trong, bên ngoài lãnh thổ Việt Nam có khả năng thực tế gây nguy hại cho an ninh quốc gia của nước Cộng hoà xã hội chủ nghĩa Việt Nam.', NULL, 8, 1, '2025-01-13 02:12:29', '2025-01-13 02:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `question_choice`
--

CREATE TABLE `question_choice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `point` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `doccate_id` int(10) UNSIGNED DEFAULT NULL,
  `catechild_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `count_anser` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_choice`
--

INSERT INTO `question_choice` (`id`, `point`, `user_id`, `doccate_id`, `catechild_id`, `cate_id`, `created_at`, `updated_at`, `count_anser`) VALUES
(2, '8', 2, 1, 1, 1, '2024-11-21 07:57:27', '2024-11-21 07:57:27', 20),
(3, '6', 2, NULL, 1, 1, '2024-11-27 02:05:46', '2024-11-27 02:05:46', 6),
(4, '9', 1, 1, 1, 1, '2024-11-27 08:34:01', '2024-11-27 08:34:01', 9),
(5, '5', 1, NULL, 1, 1, '2024-12-04 01:14:03', '2024-12-04 01:14:03', 5),
(6, '0', 1, 1, 1, 1, '2024-12-04 02:06:18', '2024-12-04 02:06:18', 0),
(7, '10', 2, 1, 1, 1, '2024-12-04 07:22:39', '2024-12-04 07:22:39', 10),
(8, '0', 2, 1, 1, 1, '2024-12-12 07:56:50', '2024-12-12 07:56:50', 0),
(9, '0', 1, NULL, 1, 1, '2024-12-12 07:57:13', '2024-12-12 07:57:13', 0),
(10, '0', 2, 1, 1, 1, '2024-12-12 07:59:11', '2024-12-12 07:59:11', 0),
(11, '0', 2, 1, 1, 1, '2024-12-12 07:59:52', '2024-12-12 07:59:52', 0),
(12, '0', 2, NULL, 1, 1, '2024-12-12 08:00:43', '2024-12-12 08:00:43', 0),
(13, '0', 2, 1, 1, 1, '2024-12-12 08:00:52', '2024-12-12 08:00:52', 0),
(14, '0', 2, 1, 1, 1, '2024-12-12 08:03:58', '2024-12-12 08:03:58', 0),
(15, '0', 2, 1, 1, 1, '2024-12-12 08:14:26', '2024-12-12 08:14:26', 0),
(16, '0', 1, 1, 1, 1, '2024-12-20 07:38:43', '2024-12-20 07:38:43', 0),
(17, '2', 11, NULL, 1, 1, '2024-12-20 08:36:24', '2024-12-20 08:36:24', 2),
(18, '0', 1, 1, 1, 1, '2024-12-20 13:59:08', '2024-12-20 13:59:08', 0),
(19, '0', 1, 1, 1, 1, '2024-12-25 02:08:54', '2024-12-25 02:08:54', 0),
(20, '10', 1, 1, 1, 1, '2024-12-26 07:41:15', '2024-12-26 07:41:15', 20),
(21, '2', 1, NULL, 1, 1, '2025-01-02 08:02:16', '2025-01-02 08:02:16', 2),
(22, '2', 1, NULL, 1, 1, '2025-01-07 01:27:35', '2025-01-07 01:27:35', 2),
(23, '2', 1, NULL, 1, 1, '2025-01-08 01:08:57', '2025-01-08 01:08:57', 2);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thông thường', NULL, NULL),
(2, 'Quản lý', NULL, NULL),
(3, 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, '2024-12-03 08:32:44'),
(2, 2, 3, NULL, '2024-12-13 01:22:57'),
(6, 11, 2, '2024-12-20 03:26:24', '2025-01-08 00:28:23'),
(7, 12, 2, '2024-12-24 07:10:23', '2025-01-08 00:28:27'),
(8, 13, 1, '2024-12-26 06:42:38', '2024-12-26 06:42:38'),
(9, 14, 1, '2024-12-26 06:42:56', '2024-12-26 06:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trương Minh Quốc', 346479741, 'quocdam20@gmail.com', NULL, '$2y$12$wsjj/Z2I9t8CARjxGzTXS.VsrWyjCxKDcWXrfs/eLlCGjH12BqFMm', 'UThh4klCG4U2blXyaUsWt40vJTeLLSy5QSjOPmjv8qOgZpSlbchnrbAfslQG', '2024-11-14 20:06:45', '2025-01-07 01:47:51'),
(2, 'No name 2000', 346479740, 'ha@gmail.com', NULL, '$2y$12$eQTtx2V55WlgI6fMyOlYTeXX9dDUKEBh4cIlP2NSbh231K0rzEWxm', 'yRVnOG085xrDlS60s27g2KK9Nl9snsYAJmPgPZWQY6FP1jLAVao2c7CsANoo', '2024-11-18 20:03:30', '2024-12-20 07:14:42'),
(11, 'No name 1999', 346479741, 'aa@gmail.com', NULL, '$2y$12$xsrdxKeGs0X9d6O/XU6ce.Y35/SV2ZbkLbnpF7gcP0u3w74Vao7X6', NULL, '2024-12-20 03:26:24', '2024-12-20 08:40:56'),
(12, 'Nguyễn Minh Đức', 346479740, 'thuan@gmail.com', NULL, '$2y$12$B69YUTKb3HuQJaQyg3ffuOlIM3uc4PGsvfjTV55/VpNL1zUc68F3e', 'TFXKd8c68gBKDfVZoayQQosWezTN0KA837v4J9gR9DNuhid17FMiK8KQCT85', '2024-12-24 07:10:22', '2025-01-09 01:58:20'),
(13, 'Trần Văn Hiếu', 346479740, 'cv@gmail.com', NULL, '$2y$12$A6JvQNpHQMZiNNg6EYEm.el2nnJeKJi.8ZLgHLn0xuWuZrwW6nDrK', 'd9LCx6qTpRw9H3rOsKInaLtjObAw3UqD6GhcfEaMJnWaTVQjXsCfA6Pp1Pyb', '2024-12-26 06:42:38', '2025-01-09 01:57:54'),
(14, 'Trần Minh Thành', 346479740, 'thnah@gmail.com', NULL, '$2y$12$zu2fQHy2RA61RAPGOmKvHujB1TedrFXKw.hJbJSt/OzPJ.wuoXGUO', 'uaKUFk5y6I5wfKhFC7ElSyMaeQuqN6PvfstXLccDUQLaGUz0ikSsM4oQQLcC', '2024-12-26 06:42:56', '2025-01-09 01:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_active`
--

CREATE TABLE `user_active` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `active` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_active`
--

INSERT INTO `user_active` (`id`, `user_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 63, '2024-11-29 02:30:16', '2025-01-13 08:46:48'),
(2, 2, 11, '2024-11-29 03:09:49', '2025-01-09 08:55:08'),
(29, 11, 10, '2024-12-20 08:51:40', '2024-12-20 12:52:47'),
(30, 13, 80, '2025-01-07 02:10:56', '2025-01-07 02:12:12'),
(31, 12, 33, '2025-01-07 02:12:36', '2025-01-07 02:13:33'),
(32, 14, 64, '2025-01-07 02:22:32', '2025-01-07 02:23:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate_child`
--
ALTER TABLE `cate_child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doccate`
--
ALTER TABLE `doccate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_images`
--
ALTER TABLE `document_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_read`
--
ALTER TABLE `document_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `like_document`
--
ALTER TABLE `like_document`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_choice`
--
ALTER TABLE `question_choice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `user_active`
--
ALTER TABLE `user_active`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cate_child`
--
ALTER TABLE `cate_child`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202;

--
-- AUTO_INCREMENT for table `doccate`
--
ALTER TABLE `doccate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `document_images`
--
ALTER TABLE `document_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `document_read`
--
ALTER TABLE `document_read`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_document`
--
ALTER TABLE `like_document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `question_choice`
--
ALTER TABLE `question_choice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_active`
--
ALTER TABLE `user_active`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
