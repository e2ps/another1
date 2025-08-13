-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 02:09 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `carousel_ft_tb`
--

DROP TABLE IF EXISTS `carousel_ft_tb`;
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
(3, 'EL NIDO, Palawan', 'Palawan boasts numerous stunning beaches, both in the El Nido and Puerto Princesa areas. Some popular choices include Nacpan Beach, Duli Beach, and Ipil Beach in El Nido, and Nagtabon Beach and Talaudyong Beach in Puerto Princesa.', '1', 'https://mediaim.expedia.com/destination/1/dcc4b5ab1c594fa368c2c71f52313040.jpg', '1', 'https://www.google.com/search?q=el+nido+palawan&sca_esv=571e9f62cdadf4fd&udm=2&biw=1920&bih=929&sxsrf=AE3TifO2nq0OGZFTilM0SrhdxeeBhMGr7Q%3A1753166204224&ei=fDF_aL-4De7Q2roP9eaj0As&oq=El+nid&gs_lp=EgNpbWciBkVsIG5pZCoCCAAyDRAAGIAEGLEDGEMYigUyChAAGIAEGEMYigUyChAAGIAEGEMYigUyDRAAGIAEGLEDGEMYigUyChAAGIAEGEMYigUyCxAAGIAEGLEDGIMBMgoQABiABBhDGIoFMgoQABiABBhDGIoFMggQABiABBixAzIKEAAYgAQYQxiKBUj-GFAAWLYPcAB4AJABAJgBYKAB-wOqAQE2uAEDyAEA-AEBmAIGoAKFBMICBxAjGCcYyQLCAgUQABiABJgDAJIHATagB6wisgcBNrgHhQTCBwMwLjbIBwg&sclient=img', '2025-07-24 09:40:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carousel_ft_tb`
--
ALTER TABLE `carousel_ft_tb`
  ADD PRIMARY KEY (`cft_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel_ft_tb`
--
ALTER TABLE `carousel_ft_tb`
  MODIFY `cft_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
