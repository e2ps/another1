-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2025 at 09:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourismdestination_db`
--
DROP DATABASE IF EXISTS `tourismdestination_db`;
CREATE DATABASE IF NOT EXISTS `tourismdestination_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tourismdestination_db`;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_tb`
--

CREATE TABLE `inquiry_tb` (
  `inq_id` int(11) NOT NULL,
  `inq_name` varchar(50) DEFAULT NULL,
  `inq_message` varchar(1000) NOT NULL,
  `inq_email` varchar(200) NOT NULL,
  `inq_contact` bigint(12) NOT NULL,
  `inq_isSeen` enum('1','0') NOT NULL DEFAULT '0',
  `inq_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry_tb`
--

INSERT INTO `inquiry_tb` (`inq_id`, `inq_name`, `inq_message`, `inq_email`, `inq_contact`, `inq_isSeen`, `inq_date`) VALUES
(1, NULL, 'Sample message 1.', 'sample@gmail.com', 9123456789, '1', '2025-07-23 12:07:15'),
(2, NULL, 'Sample message 2', 'sample2@gmail.com', 9123456789, '1', '2025-07-23 12:09:44'),
(3, NULL, 'Sample message 3', 'sample3@gmail.com', 9123456789, '1', '2025-07-23 06:10:21'),
(4, 'Sample Name', 'Sample message 4', 'sample4@gmail.com', 9123456789, '1', '2025-07-23 06:49:21'),
(5, 'Sample Name 2', 'Sample message 5', 'sample5@gmail.com', 9123456789, '1', '2025-07-23 12:51:44'),
(6, 'Mikko B Sabillo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'sample7@gmail.com', 9123456789, '1', '2025-07-23 02:28:21'),
(7, 'Laurente', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'sample0@gmail.com', 9123456789, '1', '2025-07-23 02:33:51'),
(8, '', 'Lorem ipsum dolor sit amet consectetur adipiscing elit. Consectetur adipiscing elit quisque faucibus ex sapien vitae. Ex sapien vitae pellentesque sem placerat in id. Placerat in id cursus mi pretium tellus duis. Pretium tellus duis convallis tempus leo eu aenean.', 'sample9@gmail.com', 9123456789, '1', '2025-07-23 02:35:02'),
(9, '', 'very good website!', 'sample100@gmail.com', 9125454874, '1', '2025-07-23 02:44:16'),
(10, 'Deniel Laurente', 'aray ko!', 'email3@gmail.com', 9445165452, '1', '2025-07-23 02:47:23'),
(11, 'Ako lang to', 'Information  Overload', 'okayfine@gmail.com', 9887440217, '1', '2025-07-23 02:50:17'),
(12, '', 'rfhfhjhfijdhfjdahjfhjrehtyer8yfuihviuhihfiheijhriuryeufjhfjhiuriyregyurihruh brain damage na ako sir', 'email1@gmail.com', 9454156145, '1', '2025-07-23 03:06:45'),
(13, '', 'ayaw na sir', 'sample@gmail.com', 15915515121, '1', '2025-07-23 03:17:32'),
(14, 'its a frank', '......', 'Itsafrank@gmail.com', 9987654321, '0', '2025-07-23 03:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `user_id` int(11) NOT NULL,
  `user_lname` varchar(50) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_mname` varchar(50) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_contact` bigint(12) NOT NULL,
  `user_type` enum('Admin','Client') NOT NULL DEFAULT 'Client',
  `user_uname` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`user_id`, `user_lname`, `user_fname`, `user_mname`, `user_email`, `user_contact`, `user_type`, `user_uname`, `user_password`) VALUES
(1, 'Yu', 'Wendell', 'Rivas', 'sample_admin@gmail.com', 9123456789, 'Admin', 'sample_admin', '$2y$10$dOdJvg0Q6tSayrl4UdyUIuRcNNAuvvmoOy6IUAnhZd9rwc1xexDuW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inquiry_tb`
--
ALTER TABLE `inquiry_tb`
  ADD PRIMARY KEY (`inq_id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inquiry_tb`
--
ALTER TABLE `inquiry_tb`
  MODIFY `inq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
