-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 05:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server_pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(255) NOT NULL,
  `log_type` tinyint(1) NOT NULL,
  `datetime_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `log_type`, `datetime_log`, `users_id`) VALUES
(1, 1, '2022-11-14 16:17:09', 1),
(40, 1, '2022-11-16 02:06:08', 18),
(41, 1, '2022-11-16 02:13:48', 18),
(42, 1, '2022-11-16 02:20:42', 18),
(43, 1, '2022-11-16 04:03:52', 18),
(44, 1, '2022-11-16 04:13:42', 18),
(45, 1, '2022-11-16 04:40:04', 18),
(46, 3, '2022-11-16 04:52:26', 18),
(47, 1, '2022-11-18 03:32:20', 19),
(48, 3, '2022-11-18 04:12:15', 18),
(49, 1, '2022-11-22 08:10:01', 19),
(50, 1, '2022-11-24 13:17:21', 20),
(51, 1, '2022-12-03 04:48:05', 19);

-- --------------------------------------------------------

--
-- Table structure for table `payslip`
--

CREATE TABLE `payslip` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emp_num` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payslip`
--

INSERT INTO `payslip` (`id`, `file_name`, `emp_num`, `uploaded_on`, `status`) VALUES
(1, 'newfile (10).txt', '', '2022-12-01 08:35:50', '1'),
(50, 'newfile (11).txt', '01301972', '2022-12-01 18:30:15', '1'),
(81, 'newfile (11).txt', '01301972', '2022-12-01 19:31:55', '1'),
(82, 'newfile (11).txt', '01301972', '2022-12-01 19:36:57', '1'),
(83, 'newfile (11).txt', '01301972', '2022-12-01 19:38:44', '1'),
(84, 'newfile (11).txt', '01301972', '2022-12-01 19:39:28', '1'),
(85, 'newfile (11).txt', '04012020', '2022-12-01 19:50:21', '1'),
(86, 'newfile (11).txt', '04012020', '2022-12-01 19:50:44', '1'),
(87, 'newfile (11).txt', '', '2022-12-03 11:15:13', '1'),
(88, 'newfile (11).txt', '202010364', '2022-12-03 11:17:01', '1'),
(89, 'newfile (11).txt', '', '2022-12-03 12:37:00', '1'),
(90, 'newfile (11).txt', '', '2022-12-03 12:38:00', '1'),
(91, 'newfile (11).txt', '2020-10364', '2022-12-03 12:38:56', '1'),
(92, 'newfile (11).txt', '202010364', '2022-12-03 12:40:18', '1'),
(93, 'newfile (11).txt', '202010364', '2022-12-03 12:41:08', '1');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(11) NOT NULL,
  `gross_salary` int(11) NOT NULL,
  `deduction` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `sss` int(11) NOT NULL,
  `net_salary` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_id`, `gross_salary`, `deduction`, `tax`, `sss`, `net_salary`, `users_id`) VALUES
(3, 15000, 2500, 1800, 1950, 9175, 0),
(5, 15000, 2500, 1800, 1950, 9175, 0),
(14, 232000, 123000, 27840, 30160, 90270, 19),
(15, 15600, 2600, 1872, 2028, 10426, 23),
(16, 15600, 2600, 1872, 2028, 10426, 23),
(17, 15600, 2600, 1872, 2028, 10426, 23),
(18, 15600, 2600, 1872, 2028, 10426, 23),
(19, 15600, 2600, 1872, 2028, 10426, 23),
(20, 15600, 2600, 1872, 2028, 10426, 23),
(21, 7800, 2080, 936, 1014, 4477, 19),
(22, 7800, 1040, 936, 1014, 5252, 19),
(23, 10400, 1040, 1248, 1352, 7202, 19),
(24, 7800, 1040, 936, 1014, 5164, 19),
(25, 7800, 1040, 936, 1014, 5164, 19),
(26, 12000, 1600, 1440, 1560, 7944, 23),
(36, 0, 0, 0, 0, 0, 8),
(37, 0, 0, 0, 0, 0, 8),
(38, 0, 0, 0, 0, 0, 8),
(39, 0, 0, 0, 0, 0, 8),
(40, 0, 0, 0, 0, 0, 8),
(41, 0, 0, 0, 0, 0, 8),
(42, 0, 0, 0, 0, 0, 8),
(43, 0, 0, 0, 0, 0, 8),
(44, 0, 0, 0, 0, 0, 8),
(45, 0, 0, 0, 0, 0, 8),
(46, 0, 0, 0, 0, 0, 8),
(47, 0, 0, 0, 0, 0, 8),
(48, 0, 0, 0, 0, 0, 8),
(49, 0, 0, 0, 0, 0, 8),
(50, 0, 0, 0, 0, 0, 8),
(51, 0, 0, 0, 0, 0, 8),
(52, 0, 0, 0, 0, 0, 8),
(53, 0, 0, 0, 0, 0, 8),
(54, 0, 0, 0, 0, 0, 8),
(55, 0, 0, 0, 0, 0, 8),
(56, 0, 0, 0, 0, 0, 8),
(57, 0, 0, 0, 0, 0, 8),
(58, 0, 0, 0, 0, 0, 8),
(59, 0, 0, 0, 0, 0, 8),
(60, 0, 0, 0, 0, 0, 8),
(61, 0, 0, 0, 0, 0, 8),
(62, 0, 0, 0, 0, 0, 8),
(63, 0, 0, 0, 0, 0, 8),
(64, 0, 0, 0, 0, 0, 8),
(65, 0, 0, 0, 0, 0, 8),
(66, 0, 0, 0, 0, 0, 8),
(67, 0, 0, 0, 0, 0, 8),
(68, 0, 0, 0, 0, 0, 8),
(69, 0, 0, 0, 0, 0, 8),
(70, 0, 0, 0, 0, 0, 8),
(71, 0, 0, 0, 0, 0, 8),
(72, 0, 0, 0, 0, 0, 8),
(73, 0, 0, 0, 0, 0, 8),
(74, 0, 0, 0, 0, 0, 8),
(75, 0, 0, 0, 0, 0, 8),
(76, 0, 0, 0, 0, 0, 8),
(77, 0, 0, 0, 0, 0, 8),
(78, 0, 0, 0, 0, 0, 8),
(79, 0, 0, 0, 0, 0, 8),
(80, 0, 0, 0, 0, 0, 8),
(81, 0, 0, 0, 0, 0, 8),
(82, 0, 0, 0, 0, 0, 8),
(83, 0, 0, 0, 0, 0, 8),
(84, 0, 0, 0, 0, 0, 8),
(85, 0, 0, 0, 0, 0, 8),
(86, 0, 0, 0, 0, 0, 8),
(87, 0, 0, 0, 0, 0, 8),
(88, 0, 0, 0, 0, 0, 8),
(89, 0, 0, 0, 0, 0, 8),
(90, 0, 0, 0, 0, 0, 8),
(91, 0, 0, 0, 0, 0, 8),
(92, 0, 0, 0, 0, 0, 8),
(93, 0, 0, 0, 0, 0, 8),
(94, 0, 0, 0, 0, 0, 8),
(95, 0, 0, 0, 0, 0, 8),
(96, 0, 0, 0, 0, 0, 8),
(97, 0, 0, 0, 0, 0, 8),
(98, 0, 0, 0, 0, 0, 8),
(99, 0, 0, 0, 0, 0, 8),
(100, 0, 0, 0, 0, 0, 8),
(101, 0, 0, 0, 0, 0, 8),
(102, 0, 0, 0, 0, 0, 8),
(103, 0, 0, 0, 0, 0, 8),
(104, 0, 0, 0, 0, 0, 8),
(105, 0, 0, 0, 0, 0, 8),
(106, 0, 0, 0, 0, 0, 8),
(107, 7500, 1000, 900, 975, 5050, 23),
(108, 0, 0, 0, 0, 0, 8),
(109, 0, 0, 0, 0, 0, 8),
(110, 0, 0, 0, 0, 0, 8),
(111, 0, 0, 0, 0, 0, 8),
(112, 0, 0, 0, 0, 0, 8),
(113, 0, 0, 0, 0, 0, 8),
(114, 0, 0, 0, 0, 0, 8),
(115, 0, 0, 0, 0, 0, 8),
(116, 0, 0, 0, 0, 0, 8),
(117, 0, 0, 0, 0, 0, 8),
(118, 0, 0, 0, 0, 0, 8),
(119, 0, 0, 0, 0, 0, 8),
(120, 0, 0, 0, 0, 0, 8),
(121, 0, 0, 0, 0, 0, 8),
(122, 0, 0, 0, 0, 0, 8),
(123, 0, 0, 0, 0, 0, 8),
(124, 0, 0, 0, 0, 0, 8),
(125, 0, 0, 0, 0, 0, 8),
(126, 0, 0, 0, 0, 0, 8),
(127, 0, 0, 0, 0, 0, 8),
(128, 0, 0, 0, 0, 0, 8),
(129, 0, 0, 0, 0, 0, 8),
(130, 0, 0, 0, 0, 0, 8),
(131, 0, 0, 0, 0, 0, 8),
(132, 0, 0, 0, 0, 0, 8),
(133, 0, 0, 0, 0, 0, 8),
(134, 0, 0, 0, 0, 0, 8),
(135, 0, 0, 0, 0, 0, 8),
(136, 0, 0, 0, 0, 0, 8),
(137, 0, 0, 0, 0, 0, 8),
(138, 0, 0, 0, 0, 0, 8),
(139, 0, 0, 0, 0, 0, 8),
(140, 0, 0, 0, 0, 0, 8),
(141, 0, 0, 0, 0, 0, 8),
(142, 0, 0, 0, 0, 0, 8),
(143, 0, 0, 0, 0, 0, 8),
(144, 0, 0, 0, 0, 0, 8),
(145, 0, 0, 0, 0, 0, 8),
(146, 0, 0, 0, 0, 0, 8),
(147, 0, 0, 0, 0, 0, 8),
(148, 0, 0, 0, 0, 0, 8),
(149, 0, 0, 0, 0, 0, 8),
(150, 0, 0, 0, 0, 0, 8),
(151, 0, 0, 0, 0, 0, 8),
(152, 0, 0, 0, 0, 0, 8),
(153, 0, 0, 0, 0, 0, 8),
(154, 0, 0, 0, 0, 0, 8),
(155, 0, 0, 0, 0, 0, 8),
(156, 0, 0, 0, 0, 0, 8),
(157, 0, 0, 0, 0, 0, 8),
(158, 0, 0, 0, 0, 0, 8),
(159, 0, 0, 0, 0, 0, 8),
(160, 0, 0, 0, 0, 0, 8),
(161, 0, 0, 0, 0, 0, 8),
(162, 0, 0, 0, 0, 0, 8),
(163, 0, 0, 0, 0, 0, 8),
(164, 0, 0, 0, 0, 0, 8),
(165, 0, 0, 0, 0, 0, 8),
(166, 0, 0, 0, 0, 0, 8),
(167, 15600, 2600, 1872, 2028, 10426, 23),
(168, 0, 0, 0, 0, 0, 8),
(169, 0, 0, 0, 0, 0, 8),
(170, 0, 0, 0, 0, 0, 8),
(171, 0, 0, 0, 0, 0, 8),
(172, 0, 0, 0, 0, 0, 8),
(173, 0, 0, 0, 0, 0, 8),
(174, 0, 0, 0, 0, 0, 8),
(175, 0, 0, 0, 0, 0, 8),
(176, 0, 0, 0, 0, 0, 8),
(177, 0, 0, 0, 0, 0, 8),
(178, 0, 0, 0, 0, 0, 8),
(179, 0, 0, 0, 0, 0, 8),
(180, 0, 0, 0, 0, 0, 8),
(181, 0, 0, 0, 0, 0, 8),
(182, 0, 0, 0, 0, 0, 8),
(183, 0, 0, 0, 0, 0, 8),
(184, 0, 0, 0, 0, 0, 8),
(185, 0, 0, 0, 0, 0, 8),
(186, 0, 0, 0, 0, 0, 8),
(187, 0, 0, 0, 0, 0, 8),
(188, 0, 0, 0, 0, 0, 8),
(189, 0, 0, 0, 0, 0, 8),
(190, 0, 0, 0, 0, 0, 8),
(191, 0, 0, 0, 0, 0, 8),
(192, 0, 0, 0, 0, 0, 8),
(193, 0, 0, 0, 0, 0, 8),
(194, 0, 0, 0, 0, 0, 8),
(195, 0, 0, 0, 0, 0, 8),
(196, 0, 0, 0, 0, 0, 8),
(197, 0, 0, 0, 0, 0, 8),
(198, 0, 0, 0, 0, 0, 8),
(199, 0, 0, 0, 0, 0, 8),
(200, 0, 0, 0, 0, 0, 8),
(201, 0, 0, 0, 0, 0, 8),
(202, 0, 0, 0, 0, 0, 8),
(203, 0, 0, 0, 0, 0, 8),
(204, 0, 0, 0, 0, 0, 8),
(205, 0, 0, 0, 0, 0, 8),
(206, 0, 0, 0, 0, 0, 8),
(207, 0, 0, 0, 0, 0, 8),
(208, 0, 0, 0, 0, 0, 8),
(209, 0, 0, 0, 0, 0, 8),
(210, 0, 0, 0, 0, 0, 8),
(211, 0, 0, 0, 0, 0, 8),
(212, 0, 0, 0, 0, 0, 8),
(213, 0, 0, 0, 0, 0, 8),
(214, 0, 0, 0, 0, 0, 8),
(215, 0, 0, 0, 0, 0, 8),
(216, 0, 0, 0, 0, 0, 8),
(217, 0, 0, 0, 0, 0, 8),
(218, 0, 0, 0, 0, 0, 8),
(219, 0, 0, 0, 0, 0, 8),
(220, 0, 0, 0, 0, 0, 8),
(221, 0, 0, 0, 0, 0, 8),
(222, 0, 0, 0, 0, 0, 8),
(223, 0, 0, 0, 0, 0, 8),
(224, 0, 0, 0, 0, 0, 8),
(225, 0, 0, 0, 0, 0, 8),
(226, 0, 0, 0, 0, 0, 8),
(227, 0, 0, 0, 0, 0, 8),
(228, 0, 0, 0, 0, 0, 8),
(229, 0, 0, 0, 0, 0, 8),
(230, 0, 0, 0, 0, 0, 8),
(231, 0, 0, 0, 0, 0, 8),
(232, 0, 0, 0, 0, 0, 8),
(233, 0, 0, 0, 0, 0, 8),
(234, 0, 0, 0, 0, 0, 8),
(235, 0, 0, 0, 0, 0, 8),
(236, 0, 0, 0, 0, 0, 8),
(237, 0, 0, 0, 0, 0, 8),
(238, 0, 0, 0, 0, 0, 8),
(239, 0, 0, 0, 0, 0, 8),
(240, 0, 0, 0, 0, 0, 8),
(241, 0, 0, 0, 0, 0, 8),
(242, 0, 0, 0, 0, 0, 8),
(243, 0, 0, 0, 0, 0, 8),
(244, 0, 0, 0, 0, 0, 8),
(245, 0, 0, 0, 0, 0, 8),
(246, 0, 0, 0, 0, 0, 8),
(247, 0, 0, 0, 0, 0, 8),
(248, 0, 0, 0, 0, 0, 8),
(249, 0, 0, 0, 0, 0, 8),
(250, 0, 0, 0, 0, 0, 8),
(251, 0, 0, 0, 0, 0, 8),
(252, 0, 0, 0, 0, 0, 8),
(253, 0, 0, 0, 0, 0, 8),
(254, 0, 0, 0, 0, 0, 8),
(255, 0, 0, 0, 0, 0, 8),
(256, 0, 0, 0, 0, 0, 8),
(257, 0, 0, 0, 0, 0, 8),
(258, 0, 0, 0, 0, 0, 8),
(259, 0, 0, 0, 0, 0, 8),
(260, 0, 0, 0, 0, 0, 8),
(261, 0, 0, 0, 0, 0, 8),
(262, 0, 0, 0, 0, 0, 8),
(263, 0, 0, 0, 0, 0, 8),
(264, 0, 0, 0, 0, 0, 8),
(265, 0, 0, 0, 0, 0, 8),
(266, 0, 0, 0, 0, 0, 8),
(267, 0, 0, 0, 0, 0, 8),
(268, 0, 0, 0, 0, 0, 8),
(269, 0, 0, 0, 0, 0, 8),
(270, 0, 0, 0, 0, 0, 8),
(271, 0, 0, 0, 0, 0, 8),
(272, 0, 0, 0, 0, 0, 8),
(273, 0, 0, 0, 0, 0, 8),
(274, 0, 0, 0, 0, 0, 8),
(275, 0, 0, 0, 0, 0, 8),
(276, 0, 0, 0, 0, 0, 8),
(277, 0, 0, 0, 0, 0, 8),
(278, 0, 0, 0, 0, 0, 8),
(279, 0, 0, 0, 0, 0, 8),
(280, 0, 0, 0, 0, 0, 8),
(281, 0, 0, 0, 0, 0, 8),
(282, 0, 0, 0, 0, 0, 8),
(283, 0, 0, 0, 0, 0, 8),
(284, 0, 0, 0, 0, 0, 8),
(285, 0, 0, 0, 0, 0, 8),
(286, 0, 0, 0, 0, 0, 8),
(287, 0, 0, 0, 0, 0, 8),
(288, 0, 0, 0, 0, 0, 8),
(289, 0, 0, 0, 0, 0, 8),
(290, 0, 0, 0, 0, 0, 8),
(291, 0, 0, 0, 0, 0, 8),
(292, 0, 0, 0, 0, 0, 8),
(293, 0, 0, 0, 0, 0, 8),
(294, 0, 0, 0, 0, 0, 8),
(295, 0, 0, 0, 0, 0, 8),
(296, 0, 0, 0, 0, 0, 8),
(297, 0, 0, 0, 0, 0, 8),
(298, 0, 0, 0, 0, 0, 8),
(299, 0, 0, 0, 0, 0, 8),
(300, 0, 0, 0, 0, 0, 8),
(301, 0, 0, 0, 0, 0, 8),
(302, 0, 0, 0, 0, 0, 8),
(303, 0, 0, 0, 0, 0, 8),
(304, 0, 0, 0, 0, 0, 8),
(305, 0, 0, 0, 0, 0, 8),
(306, 0, 0, 0, 0, 0, 8),
(307, 0, 0, 0, 0, 0, 8),
(308, 0, 0, 0, 0, 0, 8),
(309, 0, 0, 0, 0, 0, 8),
(310, 0, 0, 0, 0, 0, 8),
(311, 0, 0, 0, 0, 0, 8),
(312, 0, 0, 0, 0, 0, 8),
(313, 0, 0, 0, 0, 0, 8),
(314, 0, 0, 0, 0, 0, 8),
(315, 0, 0, 0, 0, 0, 8),
(316, 0, 0, 0, 0, 0, 8),
(317, 0, 0, 0, 0, 0, 8),
(318, 0, 0, 0, 0, 0, 8),
(319, 0, 0, 0, 0, 0, 8),
(320, 0, 0, 0, 0, 0, 8),
(321, 0, 0, 0, 0, 0, 8),
(322, 0, 0, 0, 0, 0, 8),
(323, 0, 0, 0, 0, 0, 8),
(324, 0, 0, 0, 0, 0, 8),
(325, 0, 0, 0, 0, 0, 8),
(326, 0, 0, 0, 0, 0, 8),
(327, 0, 0, 0, 0, 0, 8),
(328, 0, 0, 0, 0, 0, 8),
(329, 0, 0, 0, 0, 0, 8),
(330, 0, 0, 0, 0, 0, 8),
(331, 0, 0, 0, 0, 0, 8),
(332, 0, 0, 0, 0, 0, 8),
(333, 0, 0, 0, 0, 0, 8),
(334, 0, 0, 0, 0, 0, 8),
(335, 0, 0, 0, 0, 0, 8),
(336, 0, 0, 0, 0, 0, 8),
(337, 0, 0, 0, 0, 0, 8),
(338, 0, 0, 0, 0, 0, 8),
(339, 0, 0, 0, 0, 0, 8),
(340, 0, 0, 0, 0, 0, 8),
(341, 0, 0, 0, 0, 0, 8),
(342, 0, 0, 0, 0, 0, 8),
(343, 0, 0, 0, 0, 0, 8),
(344, 0, 0, 0, 0, 0, 8),
(345, 0, 0, 0, 0, 0, 8),
(346, 0, 0, 0, 0, 0, 8),
(347, 0, 0, 0, 0, 0, 8),
(348, 0, 0, 0, 0, 0, 8),
(349, 0, 0, 0, 0, 0, 8),
(350, 0, 0, 0, 0, 0, 8),
(351, 0, 0, 0, 0, 0, 8),
(352, 0, 0, 0, 0, 0, 8),
(353, 0, 0, 0, 0, 0, 8),
(354, 0, 0, 0, 0, 0, 8),
(355, 0, 0, 0, 0, 0, 8),
(356, 0, 0, 0, 0, 0, 8),
(357, 0, 0, 0, 0, 0, 8),
(358, 0, 0, 0, 0, 0, 8),
(359, 0, 0, 0, 0, 0, 8),
(360, 0, 0, 0, 0, 0, 8),
(361, 0, 0, 0, 0, 0, 8),
(362, 0, 0, 0, 0, 0, 8),
(363, 0, 0, 0, 0, 0, 8),
(364, 0, 0, 0, 0, 0, 8),
(365, 0, 0, 0, 0, 0, 8),
(366, 0, 0, 0, 0, 0, 8),
(367, 0, 0, 0, 0, 0, 8),
(368, 0, 0, 0, 0, 0, 8),
(369, 0, 0, 0, 0, 0, 8),
(370, 0, 0, 0, 0, 0, 8),
(371, 0, 0, 0, 0, 0, 8),
(372, 0, 0, 0, 0, 0, 8),
(373, 0, 0, 0, 0, 0, 8),
(374, 0, 0, 0, 0, 0, 8),
(375, 0, 0, 0, 0, 0, 8),
(376, 0, 0, 0, 0, 0, 8),
(377, 0, 0, 0, 0, 0, 8),
(378, 0, 0, 0, 0, 0, 8),
(379, 0, 0, 0, 0, 0, 8),
(380, 0, 0, 0, 0, 0, 8),
(381, 0, 0, 0, 0, 0, 8),
(382, 0, 0, 0, 0, 0, 8),
(383, 0, 0, 0, 0, 0, 8),
(384, 0, 0, 0, 0, 0, 8),
(385, 0, 0, 0, 0, 0, 8),
(386, 0, 0, 0, 0, 0, 8),
(387, 0, 0, 0, 0, 0, 8),
(388, 0, 0, 0, 0, 0, 8),
(389, 0, 0, 0, 0, 0, 8),
(390, 0, 0, 0, 0, 0, 8),
(391, 0, 0, 0, 0, 0, 8),
(392, 0, 0, 0, 0, 0, 8),
(393, 7800, 520, 936, 1014, 5684, 23),
(394, 8250, 1100, 990, 1073, 5555, 28);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `salary_id` int(100) DEFAULT NULL,
  `attendance_id` int(100) DEFAULT NULL,
  `pay_id` int(255) DEFAULT NULL,
  `employee_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `department`, `type`, `salary_id`, `attendance_id`, `pay_id`, `employee_no`) VALUES
(1, 'administrator', 'administrator@administrator.com', 'administrator', 'it department', 'admin', NULL, 1, NULL, '2020-10364'),
(8, 'teststaff', 'teststaff@admin.das', 'teststaff', 'hr department', 'staff', NULL, NULL, NULL, ''),
(9, 'harvey', 'adas@djasdjas.com', 'adas', 'HR Department', 'staff', NULL, NULL, NULL, ''),
(10, 'DumyUser', 'agrabio@harvey,com', '41243122', 'HR Department', 'staff', NULL, NULL, NULL, ''),
(11, 'testkolangmuna', 'testkolangmuna@test.com', 'testkolangmuna@test.com', 'IT department', 'staff', NULL, NULL, NULL, ''),
(12, 'administrator', 'administrator', 'administrator', 'IT department', 'staff', NULL, NULL, NULL, ''),
(13, 'administrator3112', 'administrator3112', '$2y$10$uENX/ViCZjNuAutOZu925.nHzARuc/twhItJVp5V.f/otQsM7enim', 'IT department', 'staff', NULL, NULL, NULL, ''),
(14, 'test', 'test', '$2y$10$PBI8hdGhQfyV1BsB7peoceMU9omOcrUTc5vGcy79lNTFAFPaU61V.', 'IT department', 'admin', NULL, NULL, NULL, ''),
(15, 'testuserlogin', 'testuserlogin', 'testuserlogin', 'IT department', 'staff', NULL, NULL, NULL, ''),
(16, 'myuser', 'myuser', 'd41d8cd98f00b204e9800998ecf8427e', 'HR department', 'admin', NULL, NULL, NULL, ''),
(17, 'adminstest', 'adminstest', '61284dbdc1840de89926e109d9ee28f3', 'HR department', 'staff', NULL, NULL, NULL, ''),
(18, 'administrator', 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', 'IT department', 'admin', NULL, NULL, NULL, '2020101010'),
(19, 'John Harvey Agrabio', 'agrabioharvey@gmail.com', '70820d6efdb177302505269c9606bad6', 'IT department', 'admin', NULL, NULL, NULL, '202010364'),
(20, 'administrator', 'testadmin@gmail.com', 'a384b6463fc216a5f8ecb6670f86456a', 'IT department', 'admin', NULL, NULL, NULL, '202010366'),
(22, 'dasd', 'testadmin@gmail.com', 'a384b6463fc216a5f8ecb6670f86456a', 'IT department', 'admin', NULL, NULL, NULL, '123221'),
(23, 'agrabio', 'agrabio@email.com', 'ea0af9b0c221bedb8fa56f50e03e3753', 'IT department', 'admin', NULL, NULL, NULL, '040120'),
(24, 'agrabio', 'agrabio@email.com', 'ea0af9b0c221bedb8fa56f50e03e3753', 'IT department', 'admin', NULL, NULL, NULL, '040120');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `FK_users` (`users_id`);

--
-- Indexes for table `payslip`
--
ALTER TABLE `payslip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_ibfk_2` (`attendance_id`),
  ADD KEY `salary_id` (`salary_id`),
  ADD KEY `id` (`pay_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `payslip`
--
ALTER TABLE `payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `FK_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`attendance_id`) REFERENCES `attendance` (`attendance_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`salary_id`) REFERENCES `salary` (`salary_id`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`pay_id`) REFERENCES `payslip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
