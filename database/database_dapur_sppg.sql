-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2026 at 06:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_dapur_sppg`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `work_date` date NOT NULL,
  `status` enum('hadir','izin','alpa','libur') NOT NULL,
  `recorded_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `user_id`, `work_date`, `status`, `recorded_by`, `updated_at`) VALUES
(1, 2, '2026-10-03', 'libur', 1, '2026-10-24 08:59:22'),
(2, 2, '2026-10-04', 'libur', 1, '2026-10-24 08:59:22'),
(3, 2, '2026-10-10', 'libur', 1, '2026-10-24 08:59:22'),
(4, 2, '2026-10-11', 'libur', 1, '2026-10-24 08:59:22'),
(5, 2, '2026-10-17', 'libur', 1, '2026-10-24 08:59:22'),
(6, 2, '2026-10-18', 'libur', 1, '2026-10-24 08:59:22'),
(7, 2, '2026-10-24', 'libur', 1, '2026-10-24 08:59:22'),
(8, 2, '2026-10-25', 'libur', 1, '2026-10-24 08:59:22'),
(9, 2, '2026-10-31', 'libur', 1, '2026-10-24 08:59:22'),
(10, 2, '2026-10-01', 'hadir', 1, '2026-10-24 09:00:15'),
(11, 2, '2026-10-02', 'hadir', 1, '2026-10-24 09:00:15'),
(14, 2, '2026-10-05', 'hadir', 1, '2026-10-24 09:00:15'),
(15, 2, '2026-10-06', 'hadir', 1, '2026-10-24 09:00:15'),
(16, 2, '2026-10-07', 'hadir', 1, '2026-10-24 09:00:15'),
(17, 2, '2026-10-08', 'hadir', 1, '2026-10-24 09:00:15'),
(18, 2, '2026-10-09', 'hadir', 1, '2026-10-24 09:00:15'),
(21, 2, '2026-10-12', 'hadir', 1, '2026-10-24 09:00:15'),
(22, 2, '2026-10-13', 'hadir', 1, '2026-10-24 09:00:15'),
(23, 2, '2026-10-14', 'hadir', 1, '2026-10-24 09:00:15'),
(24, 2, '2026-10-15', 'hadir', 1, '2026-10-24 09:00:15'),
(25, 2, '2026-10-16', 'hadir', 1, '2026-10-24 09:00:15'),
(28, 2, '2026-10-19', 'hadir', 1, '2026-10-24 09:00:15'),
(29, 2, '2026-10-20', 'hadir', 1, '2026-10-24 09:00:15'),
(30, 2, '2026-10-21', 'hadir', 1, '2026-10-24 09:00:15'),
(31, 2, '2026-10-22', 'hadir', 1, '2026-10-24 09:00:15'),
(32, 2, '2026-10-23', 'hadir', 1, '2026-10-24 09:00:15'),
(35, 2, '2026-10-26', 'hadir', 1, '2026-10-24 09:00:15'),
(36, 2, '2026-10-27', 'hadir', 1, '2026-10-24 09:00:15'),
(37, 2, '2026-10-28', 'hadir', 1, '2026-10-24 09:00:15'),
(38, 2, '2026-10-29', 'hadir', 1, '2026-10-24 09:00:15'),
(39, 2, '2026-10-30', 'hadir', 1, '2026-10-24 09:00:15'),
(41, 3, '2026-10-01', 'hadir', 1, '2026-10-24 09:03:29'),
(42, 3, '2026-10-02', 'hadir', 1, '2026-10-24 09:03:29'),
(43, 3, '2026-10-03', 'libur', 1, '2026-10-24 09:03:29'),
(44, 3, '2026-10-04', 'libur', 1, '2026-10-24 09:03:29'),
(45, 3, '2026-10-05', 'hadir', 1, '2026-10-24 09:03:29'),
(46, 3, '2026-10-06', 'hadir', 1, '2026-10-24 09:03:29'),
(47, 3, '2026-10-07', 'hadir', 1, '2026-10-24 09:03:29'),
(48, 3, '2026-10-08', 'hadir', 1, '2026-10-24 09:03:29'),
(49, 3, '2026-10-09', 'hadir', 1, '2026-10-24 09:03:29'),
(50, 3, '2026-10-10', 'libur', 1, '2026-10-24 09:03:29'),
(51, 3, '2026-10-11', 'libur', 1, '2026-10-24 09:03:29'),
(52, 3, '2026-10-12', 'hadir', 1, '2026-10-24 09:03:29'),
(53, 3, '2026-10-13', 'hadir', 1, '2026-10-24 09:03:29'),
(54, 3, '2026-10-14', 'hadir', 1, '2026-10-24 09:03:29'),
(55, 3, '2026-10-15', 'hadir', 1, '2026-10-24 09:03:29'),
(56, 3, '2026-10-16', 'hadir', 1, '2026-10-24 09:03:29'),
(57, 3, '2026-10-17', 'libur', 1, '2026-10-24 09:03:29'),
(58, 3, '2026-10-18', 'libur', 1, '2026-10-24 09:03:29'),
(59, 3, '2026-10-19', 'hadir', 1, '2026-10-24 09:03:29'),
(60, 3, '2026-10-20', 'hadir', 1, '2026-10-24 09:03:29'),
(61, 3, '2026-10-21', 'hadir', 1, '2026-10-24 09:03:29'),
(62, 3, '2026-10-22', 'hadir', 1, '2026-10-24 09:03:29'),
(63, 3, '2026-10-23', 'hadir', 1, '2026-10-24 09:03:29'),
(64, 3, '2026-10-24', 'libur', 1, '2026-10-24 09:03:29'),
(65, 3, '2026-10-25', 'libur', 1, '2026-10-24 09:03:29'),
(66, 3, '2026-10-26', 'hadir', 1, '2026-10-24 09:03:29'),
(67, 3, '2026-10-27', 'hadir', 1, '2026-10-24 09:03:29'),
(68, 3, '2026-10-28', 'hadir', 1, '2026-10-24 09:03:29'),
(69, 3, '2026-10-29', 'hadir', 1, '2026-10-24 09:03:29'),
(70, 3, '2026-10-30', 'hadir', 1, '2026-10-24 09:03:29'),
(71, 3, '2026-10-31', 'libur', 1, '2026-10-24 09:03:29'),
(72, 4, '2026-10-01', 'hadir', 1, '2026-10-24 09:04:42'),
(73, 4, '2026-10-02', 'hadir', 1, '2026-10-24 09:04:42'),
(74, 4, '2026-10-03', 'libur', 1, '2026-10-24 09:04:42'),
(75, 4, '2026-10-04', 'libur', 1, '2026-10-24 09:04:42'),
(76, 4, '2026-10-05', 'hadir', 1, '2026-10-24 09:04:42'),
(77, 4, '2026-10-06', 'hadir', 1, '2026-10-24 09:04:42'),
(78, 4, '2026-10-07', 'hadir', 1, '2026-10-24 09:04:42'),
(79, 4, '2026-10-08', 'hadir', 1, '2026-10-24 09:04:42'),
(80, 4, '2026-10-09', 'hadir', 1, '2026-10-24 09:04:42'),
(81, 4, '2026-10-10', 'libur', 1, '2026-10-24 09:04:42'),
(82, 4, '2026-10-11', 'libur', 1, '2026-10-24 09:04:42'),
(83, 4, '2026-10-12', 'hadir', 1, '2026-10-24 09:04:42'),
(84, 4, '2026-10-13', 'hadir', 1, '2026-10-24 09:04:42'),
(85, 4, '2026-10-14', 'hadir', 1, '2026-10-24 09:04:42'),
(86, 4, '2026-10-15', 'hadir', 1, '2026-10-24 09:04:42'),
(87, 4, '2026-10-16', 'hadir', 1, '2026-10-24 09:04:42'),
(88, 4, '2026-10-17', 'libur', 1, '2026-10-24 09:04:42'),
(89, 4, '2026-10-18', 'libur', 1, '2026-10-24 09:04:42'),
(90, 4, '2026-10-19', 'hadir', 1, '2026-10-24 09:04:42'),
(91, 4, '2026-10-20', 'hadir', 1, '2026-10-24 09:04:42'),
(92, 4, '2026-10-21', 'hadir', 1, '2026-10-24 09:04:42'),
(93, 4, '2026-10-22', 'hadir', 1, '2026-10-24 09:04:42'),
(94, 4, '2026-10-23', 'hadir', 1, '2026-10-24 09:04:42'),
(95, 4, '2026-10-24', 'libur', 1, '2026-10-24 09:04:42'),
(96, 4, '2026-10-25', 'libur', 1, '2026-10-24 09:04:42'),
(97, 4, '2026-10-26', 'hadir', 1, '2026-10-24 09:04:42'),
(98, 4, '2026-10-27', 'hadir', 1, '2026-10-24 09:04:42'),
(99, 4, '2026-10-28', 'hadir', 1, '2026-10-24 09:04:42'),
(100, 4, '2026-10-29', 'hadir', 1, '2026-10-24 09:04:42'),
(101, 4, '2026-10-30', 'hadir', 1, '2026-10-24 09:04:42'),
(102, 4, '2026-10-31', 'libur', 1, '2026-10-24 09:04:42'),
(103, 5, '2026-10-01', 'hadir', 1, '2026-10-24 09:06:16'),
(104, 5, '2026-10-02', 'hadir', 1, '2026-10-24 09:06:16'),
(105, 5, '2026-10-03', 'libur', 1, '2026-10-24 09:06:16'),
(106, 5, '2026-10-04', 'libur', 1, '2026-10-24 09:06:16'),
(107, 5, '2026-10-05', 'hadir', 1, '2026-10-24 09:06:16'),
(108, 5, '2026-10-06', 'hadir', 1, '2026-10-24 09:06:16'),
(109, 5, '2026-10-07', 'hadir', 1, '2026-10-24 09:06:16'),
(110, 5, '2026-10-08', 'hadir', 1, '2026-10-24 09:06:16'),
(111, 5, '2026-10-09', 'hadir', 1, '2026-10-24 09:06:16'),
(112, 5, '2026-10-10', 'libur', 1, '2026-10-24 09:06:16'),
(113, 5, '2026-10-11', 'libur', 1, '2026-10-24 09:06:16'),
(114, 5, '2026-10-12', 'hadir', 1, '2026-10-24 09:06:16'),
(115, 5, '2026-10-13', 'hadir', 1, '2026-10-24 09:06:16'),
(116, 5, '2026-10-14', 'hadir', 1, '2026-10-24 09:06:16'),
(117, 5, '2026-10-15', 'hadir', 1, '2026-10-24 09:06:16'),
(118, 5, '2026-10-16', 'hadir', 1, '2026-10-24 09:06:16'),
(119, 5, '2026-10-17', 'libur', 1, '2026-10-24 09:06:16'),
(120, 5, '2026-10-18', 'libur', 1, '2026-10-24 09:06:16'),
(121, 5, '2026-10-19', 'hadir', 1, '2026-10-24 09:06:16'),
(122, 5, '2026-10-20', 'hadir', 1, '2026-10-24 09:06:16'),
(123, 5, '2026-10-21', 'hadir', 1, '2026-10-24 09:06:16'),
(124, 5, '2026-10-22', 'hadir', 1, '2026-10-24 09:06:16'),
(125, 5, '2026-10-23', 'hadir', 1, '2026-10-24 09:06:16'),
(126, 5, '2026-10-24', 'libur', 1, '2026-10-24 09:06:16'),
(127, 5, '2026-10-25', 'libur', 1, '2026-10-24 09:06:16'),
(128, 5, '2026-10-26', 'hadir', 1, '2026-10-24 09:06:16'),
(129, 5, '2026-10-27', 'hadir', 1, '2026-10-24 09:06:16'),
(130, 5, '2026-10-28', 'hadir', 1, '2026-10-24 09:06:16'),
(131, 5, '2026-10-29', 'hadir', 1, '2026-10-24 09:06:16'),
(132, 5, '2026-10-30', 'hadir', 1, '2026-10-24 09:06:16'),
(133, 5, '2026-10-31', 'libur', 1, '2026-10-24 09:06:16'),
(134, 7, '2026-10-01', 'hadir', 1, '2026-10-27 08:36:34'),
(135, 7, '2026-10-02', 'hadir', 1, '2026-10-27 08:36:34'),
(136, 7, '2026-10-03', 'libur', 1, '2026-10-27 08:36:34'),
(137, 7, '2026-10-04', 'libur', 1, '2026-10-27 08:36:34'),
(138, 7, '2026-10-05', 'hadir', 1, '2026-10-27 08:36:34'),
(139, 7, '2026-10-06', 'hadir', 1, '2026-10-27 08:36:34'),
(140, 7, '2026-10-07', 'hadir', 1, '2026-10-27 08:36:34'),
(141, 7, '2026-10-08', 'hadir', 1, '2026-10-27 08:36:34'),
(142, 7, '2026-10-09', 'hadir', 1, '2026-10-27 08:36:34'),
(143, 7, '2026-10-10', 'libur', 1, '2026-10-27 08:36:34'),
(144, 7, '2026-10-11', 'libur', 1, '2026-10-27 08:36:34'),
(145, 7, '2026-10-12', 'hadir', 1, '2026-10-27 08:36:34'),
(146, 7, '2026-10-13', 'hadir', 1, '2026-10-27 08:36:34'),
(147, 7, '2026-10-14', 'hadir', 1, '2026-10-27 08:36:34'),
(148, 7, '2026-10-15', 'hadir', 1, '2026-10-27 08:36:34'),
(149, 7, '2026-10-16', 'hadir', 1, '2026-10-27 08:36:34'),
(150, 7, '2026-10-17', 'libur', 1, '2026-10-27 08:36:34'),
(151, 7, '2026-10-18', 'libur', 1, '2026-10-27 08:36:34'),
(152, 7, '2026-10-19', 'hadir', 1, '2026-10-27 08:36:34'),
(153, 7, '2026-10-20', 'hadir', 1, '2026-10-27 08:36:34'),
(154, 7, '2026-10-21', 'hadir', 1, '2026-10-27 08:36:34'),
(155, 7, '2026-10-22', 'hadir', 1, '2026-10-27 08:36:34'),
(156, 7, '2026-10-23', 'hadir', 1, '2026-10-27 08:36:34'),
(157, 7, '2026-10-24', 'libur', 1, '2026-10-27 08:36:34'),
(158, 7, '2026-10-25', 'libur', 1, '2026-10-27 08:36:34'),
(159, 7, '2026-10-26', 'hadir', 1, '2026-10-27 08:36:34'),
(160, 7, '2026-10-27', 'hadir', 1, '2026-10-27 08:36:34'),
(161, 7, '2026-10-28', 'hadir', 1, '2026-10-27 08:36:34'),
(162, 7, '2026-10-29', 'hadir', 1, '2026-10-27 08:36:34'),
(163, 7, '2026-10-30', 'hadir', 1, '2026-10-27 08:36:34'),
(164, 7, '2026-10-31', 'libur', 1, '2026-10-27 08:36:34'),
(165, 3, '2026-11-01', 'hadir', 1, '2026-10-28 16:59:15'),
(166, 3, '2026-11-02', 'hadir', 1, '2026-10-28 16:59:15'),
(167, 3, '2026-11-03', 'hadir', 1, '2026-10-28 16:59:15'),
(168, 3, '2026-11-04', 'hadir', 1, '2026-10-28 16:59:15'),
(169, 3, '2026-11-05', 'hadir', 1, '2026-10-28 16:59:15'),
(170, 3, '2026-11-06', 'hadir', 1, '2026-10-28 16:59:15'),
(171, 3, '2026-11-07', 'hadir', 1, '2026-10-28 16:59:15'),
(172, 3, '2026-11-08', 'hadir', 1, '2026-10-28 16:59:15'),
(173, 3, '2026-11-09', 'hadir', 1, '2026-10-28 16:59:15'),
(174, 3, '2026-11-10', 'hadir', 1, '2026-10-28 16:59:15'),
(175, 3, '2026-11-11', 'hadir', 1, '2026-10-28 16:59:15'),
(176, 3, '2026-11-12', 'hadir', 1, '2026-10-28 16:59:15'),
(177, 3, '2026-11-13', 'hadir', 1, '2026-10-28 16:59:15'),
(178, 3, '2026-11-14', 'hadir', 1, '2026-10-28 16:59:15'),
(179, 3, '2026-11-15', 'hadir', 1, '2026-10-28 16:59:15'),
(180, 3, '2026-11-16', 'hadir', 1, '2026-10-28 16:59:15'),
(181, 3, '2026-11-17', 'hadir', 1, '2026-10-28 16:59:15'),
(182, 3, '2026-11-18', 'hadir', 1, '2026-10-28 16:59:15'),
(183, 3, '2026-11-19', 'hadir', 1, '2026-10-28 16:59:15'),
(184, 3, '2026-11-20', 'hadir', 1, '2026-10-28 16:59:15'),
(185, 3, '2026-11-21', 'hadir', 1, '2026-10-28 16:59:15'),
(186, 3, '2026-11-22', 'hadir', 1, '2026-10-28 16:59:15'),
(187, 3, '2026-11-23', 'hadir', 1, '2026-10-28 16:59:15'),
(188, 3, '2026-11-24', 'hadir', 1, '2026-10-28 16:59:15'),
(189, 3, '2026-11-25', 'hadir', 1, '2026-10-28 16:59:15'),
(190, 3, '2026-11-26', 'hadir', 1, '2026-10-28 16:59:15'),
(191, 3, '2026-11-27', 'hadir', 1, '2026-10-28 16:59:15'),
(192, 3, '2026-11-28', 'hadir', 1, '2026-10-28 16:59:15'),
(193, 3, '2026-11-29', 'hadir', 1, '2026-10-28 16:59:15'),
(194, 3, '2026-11-30', 'hadir', 1, '2026-10-28 16:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(60) NOT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `detail`, `ip`, `created_at`) VALUES
(1, 1, 'sekolah_edit', 'TK Tadika Mesra', '182.2.165.81', '2026-10-27 00:54:49'),
(2, 1, 'sekolah_edit', 'SD Tadika Mesra', '182.2.165.81', '2026-10-27 00:55:44'),
(3, 1, 'sekolah_edit', 'SMP Tadika Mesra', '182.2.165.81', '2026-10-27 00:56:20'),
(4, 1, 'sekolah_edit', 'SMK Tadika Mesra', '182.2.165.81', '2026-10-27 00:57:19'),
(5, 1, 'menu_tambah', '6 menu untuk TK Tadika Mesra', '182.2.165.81', '2026-10-27 01:07:48'),
(6, 1, 'menu_tambah', '1 menu untuk TK Tadika Mesra', '182.2.165.81', '2026-10-27 01:11:18'),
(7, 1, 'menu_tambah', '1 menu untuk SD Tadika Mesra', '182.2.165.81', '2026-10-27 01:12:15'),
(8, 1, 'menu_tambah', '1 menu untuk SMP Tadika Mesra', '182.2.165.81', '2026-10-27 01:12:47'),
(9, 1, 'menu_tambah', '1 menu untuk SMK Tadika Mesra', '182.2.165.81', '2026-10-27 01:13:36'),
(10, 1, 'login', 'Login berhasil', '182.2.165.217', '2026-10-27 07:49:25'),
(11, 1, 'barang_tambah', 'TSB1KG Terigu Segitiga Biru 1 KG', '182.2.165.217', '2026-10-27 07:50:22'),
(12, 1, 'barang_tambah', 'TA1KG Telur Ayam 1 KG', '182.2.165.217', '2026-10-27 07:55:29'),
(13, 1, 'pengaturan_simpan', 'Setting website diperbarui', '182.2.165.217', '2026-10-27 07:56:33'),
(14, 1, 'pengaturan_simpan', 'Setting website diperbarui', '182.2.165.217', '2026-10-27 07:56:43'),
(15, 1, 'logout', '', '182.2.165.217', '2026-10-27 07:56:47'),
(16, 1, 'login', 'Login berhasil', '182.2.165.217', '2026-10-27 07:57:19'),
(17, 1, 'pengaturan_simpan', 'Setting website diperbarui', '182.2.165.217', '2026-10-27 07:57:55'),
(18, 1, 'pengaturan_simpan', 'Setting website diperbarui', '182.2.165.217', '2026-10-27 07:57:55'),
(19, 1, 'pengaturan_simpan', 'Setting website diperbarui', '182.2.165.217', '2026-10-27 07:57:58'),
(20, 1, 'pengaturan_simpan', 'Setting website diperbarui', '182.2.165.217', '2026-10-27 07:58:49'),
(21, 1, 'pengaturan_simpan', 'Setting website diperbarui', '182.2.165.217', '2026-10-27 07:59:08'),
(22, 1, 'pengaturan_simpan', 'Setting website diperbarui', '182.2.165.217', '2026-10-27 07:59:19'),
(23, 1, 'barang_tambah', 'B50KG Beras 50 KG', '182.2.165.217', '2026-10-27 08:03:13'),
(24, 1, 'barang_tambah', 'AP1KG Ayam Potong 1 KG', '182.2.165.217', '2026-10-27 08:04:54'),
(25, 1, 'role_tambah', 'Kurir', '182.2.165.217', '2026-10-27 08:06:32'),
(26, 1, 'role_edit', 'Gudang & Logistik', '182.2.165.217', '2026-10-27 08:07:22'),
(27, 1, 'role_edit', 'Gudang & Logistik', '182.2.165.217', '2026-10-27 08:07:49'),
(28, 1, 'role_edit', 'Gudang', '182.2.165.217', '2026-10-27 08:08:39'),
(29, 1, 'role_edit', 'Admin Dapur', '182.2.165.217', '2026-10-27 08:09:51'),
(30, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:10:44'),
(31, 1, 'logout', '', '182.2.165.217', '2026-10-27 08:10:49'),
(32, 1, 'login', 'Login berhasil', '182.2.165.217', '2026-10-27 08:11:37'),
(33, 2, 'login', 'Login berhasil', '182.2.165.217', '2026-10-27 08:12:28'),
(34, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:14:02'),
(35, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:14:07'),
(36, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:14:39'),
(37, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:15:49'),
(38, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:16:46'),
(39, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:18:13'),
(40, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:18:35'),
(41, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:19:21'),
(42, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:19:49'),
(43, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:20:10'),
(44, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:20:51'),
(45, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:24:49'),
(46, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:25:51'),
(47, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:26:26'),
(48, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:27:42'),
(49, 1, 'role_edit', 'Admin Dapur', '182.2.165.217', '2026-10-27 08:28:09'),
(50, 1, 'role_edit', 'Kepala Dapur', '182.2.165.217', '2026-10-27 08:28:23'),
(51, 1, 'karyawan_tambah', 'KRY-0005 Arya Pangestu', '182.2.165.217', '2026-10-27 08:31:50'),
(52, 2, 'logout', '', '182.2.165.217', '2026-10-27 08:32:12'),
(53, 7, 'login', 'Login berhasil', '182.2.165.217', '2026-10-27 08:32:26'),
(54, 7, 'password_ganti', 'Password diganti', '182.2.165.217', '2026-10-27 08:32:54'),
(55, 1, 'pengajuan_stok', 'item #8 qty 10', '182.2.165.217', '2026-10-27 08:34:08'),
(56, 1, 'stok_setuju', 'REQ-202610-0001: 10 -> 20', '182.2.165.217', '2026-10-27 08:34:23'),
(57, 1, 'pengajuan_keluar', 'item #8 qty 10', '182.2.165.217', '2026-10-27 08:35:39'),
(58, 1, 'stok_keluar_setuju', 'OUT-202610-0002: 20 -> 10', '182.2.165.217', '2026-10-27 08:35:51'),
(59, 1, 'gaji_buat', 'KRY-0005 10-2026 net 3740000', '182.2.165.217', '2026-10-27 08:36:34'),
(60, 1, 'gaji_dibayar', 'payroll #5', '182.2.165.217', '2026-10-27 08:36:42'),
(61, 1, 'login', 'Login berhasil', '180.243.240.19', '2026-10-27 10:17:20'),
(62, 1, 'profil_ubah', 'Identitas diperbarui', '180.243.240.19', '2026-10-27 10:19:04'),
(63, 1, 'profil_ubah', 'Identitas diperbarui', '180.243.240.19', '2026-10-27 10:19:13'),
(64, 1, 'login', 'Login berhasil', '180.243.240.19', '2026-10-27 10:32:17'),
(65, 1, 'pengaturan_simpan', 'Setting website diperbarui', '180.243.240.19', '2026-10-27 10:32:51'),
(66, 1, 'login', 'Login berhasil', '114.124.150.220', '2026-10-27 18:35:31'),
(67, 2, 'login', 'Login berhasil', '182.2.165.125', '2026-10-27 18:37:36'),
(68, 1, 'role_edit', 'Kepala Dapur', '182.2.165.125', '2026-10-27 18:38:07'),
(69, 1, 'role_edit', 'Kepala Dapur', '182.2.165.125', '2026-10-27 18:38:21'),
(70, 1, 'barang_edit', 'AP1KG Ayam Potong 1 KG', '182.2.165.125', '2026-10-27 18:39:28'),
(71, 1, 'barang_edit', 'B50KG Beras 50 KG', '182.2.165.125', '2026-10-27 18:39:41'),
(72, 1, 'barang_edit', 'TA1KG Telur Ayam 1 KG', '182.2.165.125', '2026-10-27 18:39:49'),
(73, 1, 'barang_edit', 'TSB1KG Terigu Segitiga Biru 1 KG', '182.2.165.125', '2026-10-27 18:40:00'),
(74, 1, 'menu_tambah', '1 menu untuk TK Tadika Mesra', '182.2.165.125', '2026-10-27 18:41:39'),
(75, 1, 'menu_tambah', '1 menu untuk SD Tadika Mesra', '182.2.165.125', '2026-10-27 18:42:06'),
(76, 1, 'menu_tambah', '1 menu untuk SMP Tadika Mesra', '182.2.165.125', '2026-10-27 18:42:35'),
(77, 2, 'logout', '', '182.2.165.125', '2026-10-27 18:42:51'),
(78, 7, 'login', 'Login berhasil', '182.2.165.125', '2026-10-27 18:43:03'),
(79, 7, 'logout', '', '182.2.165.125', '2026-10-27 18:43:24'),
(80, 1, 'menu_tambah', '1 menu untuk SMK Tadika Mesra', '182.2.165.125', '2026-10-27 18:43:53'),
(81, 7, 'login', 'Login berhasil', '182.2.165.125', '2026-10-27 18:50:33'),
(82, 1, 'anggaran_tambah', 'IN Dana masuk Rp1.000.000.000', '::1', '2026-10-28 16:58:39'),
(83, 1, 'gaji_buat', 'KRY-0002 11-2026 net 3816000', '::1', '2026-10-28 16:59:15'),
(84, 1, 'gaji_dibayar', 'payroll #6; anggaran -3816000', '::1', '2026-10-28 16:59:30'),
(85, 1, 'pengajuan_stok', 'item #9 qty 1000', '::1', '2026-10-28 17:00:16'),
(86, 1, 'stok_setuju', 'REQ-202610-0003: 10 -> 1010', '::1', '2026-10-28 17:00:33'),
(87, 1, 'login', 'Login berhasil', '192.168.100.81', '2026-10-28 17:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `budget_transactions`
--

CREATE TABLE `budget_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('in','out') NOT NULL,
  `category` varchar(60) NOT NULL,
  `description` varchar(180) NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `transaction_date` date NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `source_type` varchar(30) DEFAULT NULL,
  `source_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `budget_transactions`
--

INSERT INTO `budget_transactions` (`id`, `type`, `category`, `description`, `amount`, `transaction_date`, `created_by`, `source_type`, `source_id`, `created_at`) VALUES
(1, 'in', 'Dana masuk', 'Anggaran Mingguan', 1000000000.00, '2026-10-28', 1, NULL, NULL, '2026-10-28 16:58:39'),
(2, 'out', 'Gaji karyawan', 'Pembayaran gaji INV-202611-0006', 3816000.00, '2026-10-28', 1, 'payroll', 6, '2026-10-28 16:59:30'),
(3, 'out', 'Pembelian bahan/barang', 'Pembelian Telur Ayam 1 KG (REQ-202610-0003)', 34000000.00, '2026-10-29', 1, 'stock_request', 3, '2026-10-28 17:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `portions` int(10) UNSIGNED NOT NULL,
  `delivery_date` date NOT NULL,
  `status` enum('preparing','in_transit','arrived','received') NOT NULL DEFAULT 'preparing',
  `distributor` varchar(150) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `eta_start` datetime DEFAULT NULL,
  `eta_ready` datetime DEFAULT NULL,
  `eta_departure` datetime DEFAULT NULL,
  `eta_arrival` datetime DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `ready_at` datetime DEFAULT NULL,
  `departed_at` datetime DEFAULT NULL,
  `arrived_at` datetime DEFAULT NULL,
  `received_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `school_id`, `menu_id`, `portions`, `delivery_date`, `status`, `distributor`, `notes`, `eta_start`, `eta_ready`, `eta_departure`, `eta_arrival`, `started_at`, `ready_at`, `departed_at`, `arrived_at`, `received_at`, `created_at`, `updated_at`) VALUES
(8, 4, 26, 110, '2026-10-28', 'received', 'Arya Pangestu', '', '2026-10-28 01:46:00', '2026-10-28 06:00:00', '2026-10-28 07:50:00', '2026-10-28 08:00:00', NULL, '2026-10-28 01:47:47', '2026-10-28 01:47:47', '2026-10-28 01:48:17', '2026-10-28 01:48:25', '2026-10-27 18:46:08', '2026-10-27 18:48:25'),
(9, 2, 27, 830, '2026-10-28', 'received', 'Arya Pangestu', '', '2026-10-28 01:49:00', '2026-10-28 06:00:00', '2026-10-28 07:50:00', '2026-10-28 08:00:00', NULL, '2026-10-28 01:50:02', '2026-10-28 01:50:02', '2026-10-28 01:50:06', '2026-10-28 01:50:41', '2026-10-27 18:49:19', '2026-10-27 18:50:41'),
(10, 1, 28, 950, '2026-10-28', 'received', 'Arya Pangestu', '', '2026-10-28 01:52:00', '2026-10-28 06:00:00', '2026-10-28 07:50:00', '2026-10-28 08:00:00', NULL, '2026-10-28 01:52:54', '2026-10-28 01:52:54', '2026-10-28 01:52:57', '2026-10-28 01:53:02', '2026-10-27 18:52:15', '2026-10-27 18:53:02'),
(11, 3, 29, 1550, '2026-10-28', 'received', 'Arya Pangestu', '', '2026-10-28 01:54:00', '2026-10-28 06:00:00', '2026-10-28 07:50:00', '2026-10-28 08:00:00', NULL, '2026-10-28 01:54:39', '2026-10-28 01:54:39', '2026-10-28 01:54:43', '2026-10-28 01:54:47', '2026-10-27 18:53:58', '2026-10-27 18:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_status_history`
--

CREATE TABLE `delivery_status_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('preparing','in_transit','arrived','received') NOT NULL,
  `note` text DEFAULT NULL,
  `changed_by` int(10) UNSIGNED DEFAULT NULL,
  `changed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_status_history`
--

INSERT INTO `delivery_status_history` (`id`, `delivery_id`, `status`, `note`, `changed_by`, `changed_at`) VALUES
(4, 8, 'preparing', 'Pengiriman dibuat.', 1, '2026-10-27 18:46:08'),
(5, 8, 'in_transit', '', 1, '2026-10-27 18:47:47'),
(6, 8, 'arrived', '', 1, '2026-10-27 18:48:17'),
(7, 8, 'received', '', 1, '2026-10-27 18:48:25'),
(8, 9, 'preparing', 'Pengiriman dibuat.', 1, '2026-10-27 18:49:19'),
(9, 9, 'in_transit', '', 1, '2026-10-27 18:50:02'),
(10, 9, 'arrived', '', 1, '2026-10-27 18:50:06'),
(11, 9, 'received', '', 7, '2026-10-27 18:50:41'),
(12, 10, 'preparing', 'Pengiriman dibuat.', 1, '2026-10-27 18:52:15'),
(13, 10, 'in_transit', '', 1, '2026-10-27 18:52:54'),
(14, 10, 'arrived', '', 1, '2026-10-27 18:52:57'),
(15, 10, 'received', '', 1, '2026-10-27 18:53:02'),
(16, 11, 'preparing', 'Pengiriman dibuat.', 1, '2026-10-27 18:53:58'),
(17, 11, 'in_transit', '', 1, '2026-10-27 18:54:39'),
(18, 11, 'arrived', '', 1, '2026-10-27 18:54:43'),
(19, 11, 'received', '', 1, '2026-10-27 18:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(40) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `unit` varchar(20) NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0,
  `min_stock` int(11) NOT NULL DEFAULT 5,
  `photo` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_items`
--

INSERT INTO `inventory_items` (`id`, `code`, `name`, `description`, `unit`, `price`, `stock`, `min_stock`, `photo`, `updated_at`) VALUES
(8, 'TSB1KG', 'Terigu Segitiga Biru 1 KG', '', 'pcs', 15500.00, 10, 5, 'uploads/items/d5a36f83e95cf971ef2ac484.png', '2026-10-27 18:40:00'),
(9, 'TA1KG', 'Telur Ayam 1 KG', '', 'kg', 34000.00, 1010, 5, 'uploads/items/3fa33069927d635757c33260.jpg', '2026-10-28 17:00:33'),
(10, 'B50KG', 'Beras 50 KG', '', 'karung', 700000.00, 10, 5, 'uploads/items/235735f9d82c456b67bce599.jpg', '2026-10-27 18:39:41'),
(11, 'AP1KG', 'Ayam Potong 1 KG', '', 'kg', 30000.00, 50, 5, 'uploads/items/6e835b077a080e77fdcfb537.jpg', '2026-10-27 18:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_no` varchar(30) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `period_year` smallint(6) NOT NULL,
  `period_month` tinyint(4) NOT NULL,
  `daily_rate` decimal(15,2) NOT NULL,
  `days_present` smallint(6) NOT NULL DEFAULT 0,
  `days_leave` smallint(6) NOT NULL DEFAULT 0,
  `days_absent` smallint(6) NOT NULL DEFAULT 0,
  `gross` decimal(15,2) NOT NULL,
  `deduction` decimal(15,2) NOT NULL DEFAULT 0.00,
  `deduction_note` varchar(255) DEFAULT NULL,
  `net` decimal(15,2) NOT NULL,
  `status` enum('unpaid','paid') NOT NULL DEFAULT 'unpaid',
  `is_final` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `invoice_no`, `user_id`, `period_year`, `period_month`, `daily_rate`, `days_present`, `days_leave`, `days_absent`, `gross`, `deduction`, `deduction_note`, `net`, `status`, `is_final`, `created_by`, `created_at`) VALUES
(1, 'INV-202610-0001', 2, 2026, 10, 290900.00, 22, 0, 0, 6399800.00, 0.00, '', 6399800.00, 'paid', 1, 1, '2026-10-24 09:00:15'),
(2, 'INV-202610-0002', 3, 2026, 10, 127200.00, 22, 0, 0, 2798400.00, 0.00, '', 2798400.00, 'paid', 1, 1, '2026-10-24 09:03:29'),
(3, 'INV-202610-0003', 4, 2026, 10, 227200.00, 22, 0, 0, 4998400.00, 0.00, '', 4998400.00, 'paid', 1, 1, '2026-10-24 09:04:42'),
(4, 'INV-202610-0004', 5, 2026, 10, 113600.00, 22, 0, 0, 2499200.00, 0.00, '', 2499200.00, 'paid', 1, 1, '2026-10-24 09:06:16'),
(5, 'INV-202610-0005', 7, 2026, 10, 170000.00, 22, 0, 0, 3740000.00, 0.00, '', 3740000.00, 'paid', 1, 1, '2026-10-27 08:36:34'),
(6, 'INV-202611-0006', 3, 2026, 11, 127200.00, 30, 0, 0, 3816000.00, 0.00, '', 3816000.00, 'paid', 1, 1, '2026-10-28 16:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(60) NOT NULL,
  `module` varchar(40) NOT NULL,
  `action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `module`, `action`) VALUES
(1, 'dashboard.view', 'dashboard', 'view'),
(2, 'karyawan.view', 'karyawan', 'view'),
(3, 'karyawan.create', 'karyawan', 'create'),
(4, 'karyawan.edit', 'karyawan', 'edit'),
(5, 'karyawan.delete', 'karyawan', 'delete'),
(6, 'karyawan.export', 'karyawan', 'export'),
(7, 'konfirmasi.view', 'konfirmasi', 'view'),
(8, 'konfirmasi.approve', 'konfirmasi', 'approve'),
(9, 'gaji.view', 'gaji', 'view'),
(10, 'gaji.edit', 'gaji', 'edit'),
(11, 'gaji.approve', 'gaji', 'approve'),
(12, 'gaji.export', 'gaji', 'export'),
(13, 'kelola_gaji.view', 'kelola_gaji', 'view'),
(14, 'kelola_gaji.create', 'kelola_gaji', 'create'),
(15, 'kelola_gaji.edit', 'kelola_gaji', 'edit'),
(16, 'stok.view', 'stok', 'view'),
(17, 'stok.create', 'stok', 'create'),
(18, 'stok.edit', 'stok', 'edit'),
(19, 'stok.delete', 'stok', 'delete'),
(20, 'stok.export', 'stok', 'export'),
(21, 'tambah_stok.view', 'tambah_stok', 'view'),
(22, 'tambah_stok.create', 'tambah_stok', 'create'),
(23, 'persetujuan_stok.view', 'persetujuan_stok', 'view'),
(24, 'persetujuan_stok.approve', 'persetujuan_stok', 'approve'),
(25, 'role.view', 'role', 'view'),
(26, 'role.create', 'role', 'create'),
(27, 'role.edit', 'role', 'edit'),
(28, 'role.delete', 'role', 'delete'),
(29, 'pengaturan.view', 'pengaturan', 'view'),
(30, 'pengaturan.edit', 'pengaturan', 'edit'),
(31, 'profile.view', 'profile', 'view'),
(32, 'profile.edit', 'profile', 'edit'),
(33, 'sekolah.view', 'sekolah', 'view'),
(34, 'sekolah.create', 'sekolah', 'create'),
(35, 'sekolah.edit', 'sekolah', 'edit'),
(36, 'sekolah.delete', 'sekolah', 'delete'),
(37, 'menu.view', 'menu', 'view'),
(38, 'menu.create', 'menu', 'create'),
(39, 'menu.edit', 'menu', 'edit'),
(40, 'menu.delete', 'menu', 'delete'),
(41, 'delivery.view', 'delivery', 'view'),
(42, 'delivery.create', 'delivery', 'create'),
(43, 'delivery.edit', 'delivery', 'edit'),
(44, 'keluar_stok.view', 'keluar_stok', 'view'),
(45, 'keluar_stok.create', 'keluar_stok', 'create'),
(46, 'dashboard_saya.view', 'dashboard_saya', 'view'),
(47, 'slip.view', 'slip', 'view'),
(48, 'slip.export', 'slip', 'export'),
(49, 'password.edit', 'password', 'edit'),
(50, 'anggaran.manage', 'anggaran', 'manage');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `is_super`, `created_at`) VALUES
(1, 'Admin', '', 1, '2026-10-24 07:35:35'),
(7, 'Kepala Dapur', '', 0, '2026-10-24 08:11:06'),
(8, 'Admin Dapur', '', 0, '2026-10-24 08:12:12'),
(9, 'Bendahara', '', 0, '2026-10-24 08:12:59'),
(10, 'Gudang', '', 0, '2026-10-24 08:14:17'),
(11, 'Kurir', '', 0, '2026-10-27 08:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`) VALUES
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 16),
(7, 21),
(7, 23),
(7, 24),
(7, 31),
(7, 33),
(7, 37),
(7, 41),
(7, 44),
(7, 46),
(7, 47),
(7, 48),
(7, 49),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 16),
(8, 21),
(8, 23),
(8, 24),
(8, 25),
(8, 26),
(8, 27),
(8, 28),
(8, 31),
(8, 33),
(8, 34),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(9, 1),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(9, 13),
(9, 14),
(9, 15),
(9, 31),
(9, 46),
(9, 47),
(9, 48),
(9, 49),
(9, 50),
(10, 16),
(10, 17),
(10, 18),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 31),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(11, 31),
(11, 41),
(11, 43),
(11, 46),
(11, 47),
(11, 48),
(11, 49);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `daily_portions` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `whatsapp`, `daily_portions`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SMP Tadika Mesra', 'Jakarta, Indonesia', '08123456789', 900, 'active', '2026-10-24 18:27:13', '2026-10-27 00:56:20'),
(2, 'SD Tadika Mesra', 'Jakarta, Indonesia', '08123456789', 800, 'active', '2026-10-24 18:27:13', '2026-10-27 00:55:44'),
(3, 'SMK Tadika Mesra', 'Jakarta, Indonesia', '08123456789', 1500, 'active', '2026-10-24 18:27:13', '2026-10-27 00:57:19'),
(4, 'TK Tadika Mesra', 'Jakarta, Indonesia', '08123456789', 100, 'active', '2026-10-24 18:27:13', '2026-10-27 00:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `school_menus`
--

CREATE TABLE `school_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `delivery_date` date NOT NULL,
  `portions` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('available','preparing','completed') NOT NULL DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_menus`
--

INSERT INTO `school_menus` (`id`, `school_id`, `name`, `description`, `delivery_date`, `portions`, `status`, `created_at`, `updated_at`) VALUES
(26, 4, 'Nasi Putih, Ayam Goreng, Tempe Mendoan, Tumis Buncis & Wortel, & Pisang', '', '2026-10-28', 110, 'completed', '2026-10-27 18:41:39', '2026-10-27 18:44:44'),
(27, 2, 'Nasi Putih, Ayam Goreng, Tempe Mendoan, Tumis Buncis & Wortel, & Pisang', '', '2026-10-28', 830, 'completed', '2026-10-27 18:42:06', '2026-10-27 18:44:37'),
(28, 1, 'Nasi Putih, Ayam Goreng, Tempe Mendoan, Tumis Buncis & Wortel, & Pisang', '', '2026-10-28', 950, 'completed', '2026-10-27 18:42:35', '2026-10-27 18:45:31'),
(29, 3, 'Nasi Putih, Ayam Goreng, Tempe Mendoan, Tumis Buncis & Wortel, & Pisang', '', '2026-10-28', 1550, 'completed', '2026-10-27 18:43:53', '2026-10-27 18:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` enum('in','out','adjust') NOT NULL,
  `qty` int(11) NOT NULL,
  `balance_after` int(11) NOT NULL,
  `ref` varchar(40) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_movements`
--

INSERT INTO `stock_movements` (`id`, `item_id`, `type`, `qty`, `balance_after`, `ref`, `note`, `created_by`, `created_at`) VALUES
(1, 8, 'in', 10, 10, 'AWAL', 'Stok awal', 1, '2026-10-27 07:50:22'),
(2, 9, 'in', 10, 10, 'AWAL', 'Stok awal', 1, '2026-10-27 07:55:29'),
(3, 10, 'in', 10, 10, 'AWAL', 'Stok awal', 1, '2026-10-27 08:03:13'),
(4, 11, 'in', 50, 50, 'AWAL', 'Stok awal', 1, '2026-10-27 08:04:54'),
(5, 8, 'in', 10, 20, 'REQ-202610-0001', 'Pengajuan disetujui', 1, '2026-10-27 08:34:23'),
(6, 8, 'out', -10, 10, 'OUT-202610-0002', 'Barang keluar disetujui', 1, '2026-10-27 08:35:51'),
(7, 9, 'in', 1000, 1010, 'REQ-202610-0003', 'Pengajuan disetujui', 1, '2026-10-28 17:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `stock_requests`
--

CREATE TABLE `stock_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_no` varchar(30) DEFAULT NULL,
  `type` enum('in','out') NOT NULL DEFAULT 'in',
  `item_id` int(10) UNSIGNED NOT NULL,
  `requested_by` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `status` enum('waiting','approved','declined') NOT NULL DEFAULT 'waiting',
  `decided_by` int(10) UNSIGNED DEFAULT NULL,
  `decided_at` datetime DEFAULT NULL,
  `decision_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_requests`
--

INSERT INTO `stock_requests` (`id`, `request_no`, `type`, `item_id`, `requested_by`, `quantity`, `reason`, `status`, `decided_by`, `decided_at`, `decision_note`, `created_at`) VALUES
(1, 'REQ-202610-0001', 'in', 8, 1, 10, 'Penambahan Stok', 'approved', 1, '2026-10-27 15:34:23', '', '2026-10-27 08:34:08'),
(2, 'OUT-202610-0002', 'out', 8, 1, 10, 'Penggunaan Bahan Makanan', 'approved', 1, '2026-10-27 15:35:51', '', '2026-10-27 08:35:39'),
(3, 'REQ-202610-0003', 'in', 9, 1, 1000, 'nambah stok', 'approved', 1, '2026-10-29 00:00:33', '', '2026-10-28 17:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_code` varchar(30) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('pending','active','inactive','rejected') NOT NULL DEFAULT 'pending',
  `must_change_password` tinyint(1) NOT NULL DEFAULT 0,
  `joined_at` date DEFAULT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_code`, `username`, `full_name`, `whatsapp`, `address`, `password_hash`, `role_id`, `status`, `must_change_password`, `joined_at`, `approved_by`, `approved_at`, `reject_reason`, `created_at`, `updated_at`) VALUES
(1, 'ADM-0001', 'admin', 'WIA (Belum Kepikiran)', '08000000000', 'Jakarta, Indonesia', '$2y$10$zXC5lVAaXvH1l1PRX0490.bn/fPx7zbN.AxjRxie0BWXgoAjLmk7u', 1, 'active', 0, '2026-10-24', NULL, NULL, NULL, '2026-10-24 07:36:32', '2026-10-27 10:19:12'),
(2, 'KRY-0001', 'KRY-0001', 'Mungkas Sukandar', '08000000001', 'Jakarta, Indonesia', '$2y$10$hhfewftLMhGmg/ZGFuCcY.Fe8tErTpjlutfcndUNGFmJofbgVlOZy', 7, 'active', 0, '2026-10-24', 1, '2026-10-24 15:18:20', NULL, '2026-10-24 08:18:20', '2026-10-24 08:50:06'),
(3, 'KRY-0002', 'KRY-0002', 'Agus Sucipto', '08000000002', 'Jakarta, Indonesia', '$2y$10$31/SsIrzWm6SDhmiua6joefjVwI0h/rKvujRGW12FF5KpnMjR0YtW', 8, 'active', 0, '2026-10-24', 1, '2026-10-24 15:25:22', NULL, '2026-10-24 08:25:22', '2026-10-24 08:50:52'),
(4, 'KRY-0003', 'KRY-0003', 'Keysha Wisma', '08000000003', 'Jakarta, Indonesia', '$2y$10$8NujUaTlYTEZQbLqRADn1u.gXSH3aY4aNE4DR1d.gZnvh39H1Ze7G', 9, 'active', 0, '2026-10-24', 1, '2026-10-24 15:29:34', NULL, '2026-10-24 08:29:34', '2026-10-24 08:51:33'),
(5, 'KRY-0004', 'KRY-0004', 'Ibrohim Zaidi', '08000000004', 'Jakarta, Indonesia', '$2y$10$Bbt6MYJJWa78hx57FsCmleR7ztzfyBbKwapDLoBRMqKjGO25NOKOq', 10, 'active', 0, '2026-10-24', 1, '2026-10-24 15:31:08', NULL, '2026-10-24 08:31:08', '2026-10-24 08:53:26'),
(7, 'KRY-0005', 'KRY-0005', 'Arya Pangestu', '08000000005', 'Jakarta, Indonesia', '$2y$12$8lrRC1BHISG7PTw8f/UxBu2EyMFb/W8UAroMvy7QBXtd7utb/sf1O', 11, 'active', 0, '2026-10-27', 1, '2026-10-27 15:31:50', NULL, '2026-10-27 08:31:50', '2026-10-27 08:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `skey` varchar(60) NOT NULL,
  `svalue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`skey`, `svalue`) VALUES
('color_button', '#071e48'),
('color_primary', '#071e48'),
('color_secondary', '#b5e0e9'),
('color_sidebar', '#071e48'),
('company_address', 'Jakarta, Indonesia'),
('company_email', 'info@bgn.go.id'),
('company_name', 'SPPG Jakarta 01'),
('company_phone', '08123456789'),
('employee_code_prefix', 'KRY'),
('footer_text', 'Hak Cipta © 2026 SPPG Jakarta 01. Seluruh Hak Dilindungi.'),
('logo', 'uploads/site/70a7fb6701752a57e2728836.png'),
('maintenance', '0'),
('registration_open', '0'),
('site_name', 'Anggaran Dapur MBG'),
('site_title', 'Sistem Manajemen Karyawan & Inventaris Dapur MBG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_att` (`user_id`,`work_date`),
  ADD KEY `recorded_by` (`recorded_by`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `budget_transactions`
--
ALTER TABLE `budget_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_budget_source` (`source_type`,`source_id`),
  ADD KEY `idx_budget_week` (`transaction_date`,`type`),
  ADD KEY `fk_budget_user` (`created_by`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_delivery_school_date` (`school_id`,`delivery_date`),
  ADD KEY `idx_delivery_status` (`status`),
  ADD KEY `fk_delivery_menu` (`menu_id`);

--
-- Indexes for table `delivery_status_history`
--
ALTER TABLE `delivery_status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_history_delivery` (`delivery_id`,`changed_at`),
  ADD KEY `fk_history_user` (`changed_by`);

--
-- Indexes for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `idx_name` (`name`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ip` (`ip`,`attempted_at`),
  ADD KEY `idx_user` (`username`,`attempted_at`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_period` (`user_id`,`period_year`,`period_month`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schools_name` (`name`),
  ADD KEY `idx_schools_status` (`status`);

--
-- Indexes for table `school_menus`
--
ALTER TABLE `school_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_menu_school_date` (`school_id`,`delivery_date`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_item` (`item_id`,`created_at`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `stock_requests`
--
ALTER TABLE `stock_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `request_no` (`request_no`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `requested_by` (`requested_by`),
  ADD KEY `decided_by` (`decided_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `uq_wa` (`whatsapp`),
  ADD UNIQUE KEY `employee_code` (`employee_code`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_name` (`full_name`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `approved_by` (`approved_by`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`skey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `budget_transactions`
--
ALTER TABLE `budget_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `delivery_status_history`
--
ALTER TABLE `delivery_status_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inventory_items`
--
ALTER TABLE `inventory_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `school_menus`
--
ALTER TABLE `school_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `stock_movements`
--
ALTER TABLE `stock_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stock_requests`
--
ALTER TABLE `stock_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `budget_transactions`
--
ALTER TABLE `budget_transactions`
  ADD CONSTRAINT `fk_budget_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `fk_delivery_menu` FOREIGN KEY (`menu_id`) REFERENCES `school_menus` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_delivery_school` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `delivery_status_history`
--
ALTER TABLE `delivery_status_history`
  ADD CONSTRAINT `fk_history_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payroll`
--
ALTER TABLE `payroll`
  ADD CONSTRAINT `payroll_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payroll_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `school_menus`
--
ALTER TABLE `school_menus`
  ADD CONSTRAINT `fk_menu_school` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD CONSTRAINT `stock_movements_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `inventory_items` (`id`),
  ADD CONSTRAINT `stock_movements_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_requests`
--
ALTER TABLE `stock_requests`
  ADD CONSTRAINT `stock_requests_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `inventory_items` (`id`),
  ADD CONSTRAINT `stock_requests_ibfk_2` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stock_requests_ibfk_3` FOREIGN KEY (`decided_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
