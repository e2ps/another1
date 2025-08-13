-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2025 at 02:21 AM
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
-- Table structure for table `carousel_ft_tb`
--

CREATE TABLE `carousel_ft_tb` (
  `cft_id` int(11) NOT NULL,
  `cft_name` varchar(100) NOT NULL,
  `cft_desc` varchar(800) NOT NULL,
  `cft_imgLink` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 - Yes, 0 - No',
  `cft_img` varchar(1000) NOT NULL COMMENT 'could be a link or an uploaded file',
  `cft_moreLink` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1 - Yes, 0 - No',
  `cft_more` varchar(1000) NOT NULL COMMENT 'could be a link or an uploaded file',
  `cft_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel_ft_tb`
--

INSERT INTO `carousel_ft_tb` (`cft_id`, `cft_name`, `cft_desc`, `cft_imgLink`, `cft_img`, `cft_moreLink`, `cft_more`, `cft_date`) VALUES
(1, 'KALANGGAMAN ISLAND', 'Kalanggaman Island is a sandbar located in the sea between Leyte and Cebu, in the Visayas Archipelago of the Philippines. It is located 10 kilometres west from the municipality of Palompon, Leyte. It got its name from the local word \"langgam\" which means bird or fowl.', '1', 'https://tourism.biliranisland.com/wp-content/uploads/2017/08/Kalanggaman-Island-1.jpg', '1', 'https://www.google.com/search?sca_esv=571e9f62cdadf4fd&sxsrf=AE3TifNeuK1rmYMaDrgNj9AbcHYJGCogfQ:1753166120093&q=kalanggaman+island&udm=2&fbs=AIIjpHxU7SXXniUZfeShr2fp4giZ1Y6MJ25_tmWITc7uy4KIetxLMeWi1u_d0OMRvkClUbalBeyXa8ssyRd_VUj5FQB2orc_91wYCtVawaLNWtsSdnJ_agCi1vXbEl7uZXA8AjE2NqiuBojCPQl6egjY7R0owM2nckZJQjTvxtXZz2MpvBCYdWRPQf8FHTncTtr7uitEMqK6-CZtuxMg7ADhv__Fr2NCMw&sa=X&ved=2ahUKEwjJ8cfe7M-OAxWssVYBHVl2BicQtKgLKAF6BAgUEAE&biw=1920&bih=929&dpr=1', '2025-07-24 09:21:30'),
(2, 'PINK BEACH', 'This pink hue comes from the red coral fragments mixed with the white sand. Other notable pink sand beaches include those on Sila Island in Northern Samar, Tikling Island and Subic Beach in Sorsogon, and Pundaguitan Beach in Davao Oriental.', '1', 'https://www.journee-mondiale.com/en/wp-content/uploads/2025/05/2025-05-25-17-05-37_.webp', '1', 'https://www.google.com/search?sca_esv=571e9f62cdadf4fd&sxsrf=AE3TifM3NAIXJF06TW2_6pIujygV55FtWw:1753166202364&q=pink+beach&udm=2&fbs=AIIjpHxU7SXXniUZfeShr2fp4giZ1Y6MJ25_tmWITc7uy4KIei9-d4bDCYGWNP_eFTtBNEyYMcX31Q33SxCPRlVkPAGVxS50-sTaNUUiEcv__mgmqctno9dJGigHEH4vxWZPwJpeGIvGthulvfUVWviI5CTEbinflav1arv7QBpt6VoO7m809TZDfCxqlneM9-S9Y_DEGX5QGSAQyN-Od_E6u8BUUdH4Ew&sa=X&ved=2ahUKEwi7pOWF7c-OAxVNsFYBHXPeGBcQtKgLKAF6BAgZEAE&biw=1920&bih=929&dpr=1', '2025-07-24 09:39:59'),
(3, 'EL NIDO, Palawan', 'Palawan boasts numerous stunning beaches, both in the El Nido and Puerto Princesa areas. Some popular choices include Nacpan Beach, Duli Beach, and Ipil Beach in El Nido, and Nagtabon Beach and Talaudyong Beach in Puerto Princesa.', '1', 'https://gttp.images.tshiftcdn.com/260574/x/0/chocolate-hills-in-bohol-island-everything-you-need-to-know-2.jpg?auto=compress%2Cformat&ch=Width%2CDPR&dpr=1&ixlib=php-3.3.0&w=883', '1', 'https://www.google.com/search?sa=X&sca_esv=6d736987b85df9e7&sxsrf=AE3TifMA7KwAnoiXoZcIju8PmZjCm-1TfA:1753751551096&udm=2&fbs=AIIjpHxU7SXXniUZfeShr2fp4giZ1Y6MJ25_tmWITc7uy4KIeuyr9ljWioGWIw0oasFed3r8LaW3XA98i2ShdMlbRhimzP-LKiCe8ZLNLp9AKTluaLjpznqavLqWx0gVm5jpp1AGkhNwxbANzNhwNDDdYXabqT5gxZ4dkQ6d0Zs7jrmME0w6h0hLlsDT7XyUyiJVyMeSS88qMfvi1R_ydUk1Pi3g4GAZhQ&q=chocolate+hills&ved=2ahUKEwix1ujR8eCOAxXqlFYBHWqON08QtKgLegQIEhAB&biw=1280&bih=630&dpr=1.5#vhid=csojBKPyNjXFCM&vssid=mosaic', '2025-07-24 09:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `hero_ft_tb`
--

CREATE TABLE `hero_ft_tb` (
  `hft_id` int(11) NOT NULL,
  `hft_title` varchar(20) NOT NULL,
  `hft_subTitle` varchar(20) NOT NULL,
  `hft_desc` varchar(1000) NOT NULL,
  `hft_img` varchar(500) NOT NULL,
  `hft_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hero_ft_tb`
--

INSERT INTO `hero_ft_tb` (`hft_id`, `hft_title`, `hft_subTitle`, `hft_desc`, `hft_img`, `hft_date`) VALUES
(1, 'Boracay, ', 'White sand beach.', 'Palawan boasts numerous stunning beaches, both in the El Nido and Puerto Princesa areas. Some popular choices include Nacpan Beach, Duli Beach, and Ipil Beach in El Nido, and Nagtabon Beach and Talaudyong Beach in Puerto Princesa.', 'https://www.exploreshaw.com/wp-content/uploads/2019/04/DSCF9807.jpg', '2025-07-30 10:52:57'),
(2, 'Coron, Palawan. ', 'See for yourself.', 'Palawan boasts numerous stunning beaches, both in the El Nido and Puerto Princesa areas. Some popular choices include Nacpan Beach, Duli Beach, and Ipil Beach in El Nido, and Nagtabon Beach and Talaudyong Beach in Puerto Princesa.', 'https://i0.wp.com/filipeanut.art/wp-content/uploads/2023/03/Coron-island-karst-limestone-going-to-Twin-Lagoon-Coron-Palawan.jpg?fit=1900%2C1738&ssl=1', '2025-07-30 10:54:54'),
(3, 'Panglao.', 'The Best Sunset!', 'Palawan boasts numerous stunning beaches, both in the El Nido and Puerto Princesa areas. Some popular choices include Nacpan Beach, Duli Beach, and Ipil Beach in El Nido, and Nagtabon Beach and Talaudyong Beach in Puerto Princesa.', 'https://www.contiki.com/six-two/images/width=1900,height=0,crop=0/2024/03/michael-maga-ao-iSUUqI9Ao98-unsplash-e1709565324857.jpg', '2025-07-30 10:56:36');

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
(4, 'Sample Name', 'Sample message 4', 'sample4@gmail.com', 9123456789, '1', '2025-07-23 06:49:21'),
(5, 'Sample Name 2', 'Sample message 5', 'sample5@gmail.com', 9123456789, '1', '2025-07-23 12:51:44'),
(6, 'Mikko B Sabillo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'sample7@gmail.com', 9123456789, '1', '2025-07-23 02:28:21'),
(7, 'Laurente', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'sample0@gmail.com', 9123456789, '1', '2025-07-23 02:33:51'),
(8, '', 'Lorem ipsum dolor sit amet consectetur adipiscing elit. Consectetur adipiscing elit quisque faucibus ex sapien vitae. Ex sapien vitae pellentesque sem placerat in id. Placerat in id cursus mi pretium tellus duis. Pretium tellus duis convallis tempus leo eu aenean.', 'sample9@gmail.com', 9123456789, '1', '2025-07-23 02:35:02'),
(9, '', 'very good website!', 'sample100@gmail.com', 9125454874, '1', '2025-07-23 02:44:16'),
(10, 'Deniel Laurente', 'aray ko!', 'email3@gmail.com', 9445165452, '1', '2025-07-23 02:47:23'),
(11, 'Ako lang to', 'Information  Overload', 'okayfine@gmail.com', 9887440217, '1', '2025-07-23 02:50:17'),
(15, 'Jerome P Noveda', 'Contact Us!!!\r\nSend us an enquiry, or rate us! By sending with us your feedback we can improve our services talored with your needs.', 'sample@gmail.com', 9123456789, '1', '2025-07-24 07:40:42'),
(21, 'babymo', 'Grrrrrrrrr', 'babymo@gmail.com', 9943520861, '1', '2025-07-25 02:19:27'),
(22, 'babymo', 'MALIPONG NA TAK ULO!', 'babymo@gmail.com', 9913526481, '1', '2025-07-25 04:53:02'),
(23, 'babymo', 'makuri mat na bago sir TvT', 'babymo@gmail.com', 3125649851, '1', '2025-07-29 02:41:37'),
(24, '', '', '', 0, '1', '2025-07-30 11:27:32'),
(25, '', '', '', 0, '1', '2025-07-31 09:02:26');

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
-- Indexes for table `carousel_ft_tb`
--
ALTER TABLE `carousel_ft_tb`
  ADD PRIMARY KEY (`cft_id`);

--
-- Indexes for table `hero_ft_tb`
--
ALTER TABLE `hero_ft_tb`
  ADD PRIMARY KEY (`hft_id`);

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
-- AUTO_INCREMENT for table `carousel_ft_tb`
--
ALTER TABLE `carousel_ft_tb`
  MODIFY `cft_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hero_ft_tb`
--
ALTER TABLE `hero_ft_tb`
  MODIFY `hft_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inquiry_tb`
--
ALTER TABLE `inquiry_tb`
  MODIFY `inq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
