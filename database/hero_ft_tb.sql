-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2025 at 05:06 AM
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
-- Database: `tourismdestination_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hero_ft_tb`
--

DROP TABLE IF EXISTS `hero_ft_tb`;
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hero_ft_tb`
--
ALTER TABLE `hero_ft_tb`
  ADD PRIMARY KEY (`hft_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hero_ft_tb`
--
ALTER TABLE `hero_ft_tb`
  MODIFY `hft_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
