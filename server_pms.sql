-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 05:49 PM
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
(59, 1, '2022-12-08 05:14:47', 29),
(60, 2, '2022-12-08 05:14:54', 29),
(61, 2, '2022-12-08 15:49:13', 29),
(62, 1, '2022-12-08 15:52:41', 29),
(63, 2, '2022-12-08 15:52:44', 29),
(64, 1, '2022-12-08 15:52:45', 29),
(65, 2, '2022-12-08 15:52:48', 29),
(66, 1, '2022-12-08 16:15:41', 29),
(67, 2, '2022-12-08 16:15:45', 29),
(68, 1, '2022-12-08 16:23:18', 29);

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
(50, 'newfile (11).txt', '01301972', '2022-12-01 18:30:15', '1'),
(81, 'newfile (11).txt', '01301972', '2022-12-01 19:31:55', '1'),
(82, 'newfile (11).txt', '01301972', '2022-12-01 19:36:57', '1');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(11) NOT NULL,
  `gross_salary` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `sss` int(11) NOT NULL,
  `net_salary` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salary_id`, `gross_salary`, `tax`, `sss`, `net_salary`, `users_id`) VALUES
(402, 6760, 811, 879, 4384, 29),
(403, 6760, 811, 879, 4384, 29),
(404, 6760, 811, 879, 4384, 29),
(405, 6760, 811, 879, 5424, 29),
(406, 6760, 811, 879, 5424, 29),
(407, 6760, 811, 879, 5424, 29),
(408, 12300, 1476, 1599, 9783, 32);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` varchar(25) NOT NULL,
  `citezenship` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `salary_id` int(100) DEFAULT NULL,
  `attendance_id` int(100) DEFAULT NULL,
  `pay_id` int(255) DEFAULT NULL,
  `salary` int(50) NOT NULL,
  `employee_no` varchar(100) NOT NULL,
  `days_present` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `birthdate`, `birthplace`, `address`, `sex`, `citezenship`, `email`, `password`, `department`, `type`, `salary_id`, `attendance_id`, `pay_id`, `salary`, `employee_no`, `days_present`) VALUES
(29, 'just test', '2010-02-10', 'Olongapo city', 'Blk 13 Gordon Heights', 'Male', 'Filipino', 'agrabioharvey@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'IT department', 'admin', NULL, NULL, NULL, 520, '04012020', 10),
(31, 'John Harvey Agrabio', '2001-09-04', 'Olongapo city', 'Blk 13 Gordon Heights', 'Male', 'Filipino', 'agrabioharvey@gmail.com', '70820d6efdb177302505269c9606bad6', 'IT department', 'staff', NULL, NULL, NULL, 850, '202010364', 14),
(32, 'Juana Dela Cruz', '1999-06-17', 'Zambales', '#1022 Aries Street, Sta. Rita', 'Female', 'Filipino', 'juanadelacruz@gmail.com', '8e34cd6bedab9f18eb47b6772d16dc95', 'IT department', 'staff', NULL, NULL, NULL, 820, '20202020', 15);

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
  MODIFY `attendance_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `payslip`
--
ALTER TABLE `payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
