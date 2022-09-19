-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 07:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `image` text NOT NULL,
  `price` bigint(20) NOT NULL,
  `address` text DEFAULT NULL,
  `is_open` bit(1) DEFAULT NULL,
  `service_point` float(2,1) DEFAULT NULL,
  `quality_point` float(2,1) DEFAULT NULL,
  `price_point` float(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `slug`, `image`, `price`, `address`, `is_open`, `service_point`, `quality_point`, `price_point`) VALUES
(1, 'PHỞ', 'pho', 'https://images.foody.vn/res/g77/760438/prof/s576x330/foody-upload-api-foody-mobile-no3-jpg-180714140526.jpg', 38000, '86/7 Thích Quảng Đức,  Quận Phú Nhuận, TP. HCM', b'1', 7.5, 8.0, 7.3),
(2, 'BÚN BÒ HUẾ', 'bun-bo-hue', 'https://images.foody.vn/res/g1/7520/prof/s576x330/foody-mobile-x7y93g8z-jpg-874-636163713563886472.jpg', 35000, '284/39 Lý Thường Kiệt, P. 14,  Quận 10, TP. HCM', b'0', 7.1, 7.5, 7.3),
(3, 'HỦ TIẾU', 'hu-tieu', 'https://images.foody.vn/res/g7/67990/prof/s576x330/foody-mobile-pv58di7a-jpg-902-636280405084277985.jpg', 40000, '75 Lê Quốc Hưng,  Quận 4, TP. HCM', b'1', 7.1, 7.6, 7.6),
(4, 'MÌ CAY', 'mi-cay', 'https://images.foody.vn/res/g76/752439/prof/s576x330/image-8473d62e-200908105702.jpeg', 50000, '48B Tân Quý, P. Tân Quý,  Quận Tân Phú, TP. HCM', b'1', 8.0, 8.1, 8.1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
