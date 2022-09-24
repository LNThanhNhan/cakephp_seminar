-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2022 at 12:43 PM
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
  `service_point` float(3,1) DEFAULT NULL,
  `quality_point` float(3,1) DEFAULT NULL,
  `price_point` float(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `slug`, `image`, `price`, `address`, `is_open`, `service_point`, `quality_point`, `price_point`) VALUES
(1, 'PHỞ', 'pho', 'https://images.foody.vn/res/g1/1361/prof/s576x330/foody-mobile-f2-jpg-471-635773887027409246.jpg', 40000, '260C Pasteur, P. 8,  Quận 3, TP. HCM', b'1', 5.7, 6.2, 5.5),
(2, 'GỎI CUỐN TÔM NHẢY', 'goi-cuon', 'https://images.foody.vn/res/g73/721437/prof/s576x330/foody-upload-api-foody-mobile-6l-jpg-180725204409.jpg', 10000, '424 Lạc Long Quân, P. 5,  Quận 11, TP. HCM', b'1', 8.3, 8.6, 8.2),
(3, 'BÁNH MÌ XÍU MẠI', 'banh-mi-xiu-mai', 'https://images.foody.vn/res/g16/155289/prof/s576x330/foody-mobile-397-mb-jpg-920-635806812869250103.jpg', 18000, '397 Phan Xích Long, P. 3,  Quận Phú Nhuận, TP. HCM', b'1', 7.6, 7.6, 7.6),
(4, 'BÚN BÒ HUẾ', 'bun-bo', 'https://images.foody.vn/res/g88/873000/prof/s576x330/image-7790a650-200910114132.jpeg', 40000, '14B Đường Số 46, P. 5,  Quận 4, TP. HCM', b'0', 8.4, 8.5, 8.5),
(5, 'CƠM GÀ', 'com-ga', 'https://images.foody.vn/res/g1/9339/prof/s576x330/foody-mobile-kmx0lu8j-jpg-646-635828339367571767.jpg', 25000, '17C Hậu Giang, P 2,  Quận 6, TP. HCM', b'1', 6.6, 7.4, 8.1),
(6, 'BÁNH CANH', 'banh-canh', 'https://images.foody.vn/res/g65/644260/prof/s576x330/foody-mobile-foody-banh-canh-cha--770-636253481407709685.jpg', 25000, '174 Nguyễn Thị Định, P. Bình Trưng Tây,  Tp. Thủ Đức, TP. HCM', b'0', 8.1, 8.1, 8.1),
(7, 'BÚN CHẢ HÀ NỘI', 'bun-cha', 'https://images.foody.vn/res/g90/894001/prof/s576x330/foody-upload-api-foody-mobile-3-190318175124.jpg', 45000, 'CC5 Trường Sơn, P. 15,  Quận 10, TP. HCM', b'1', 7.5, 7.6, 7.4),
(8, 'BÁNH KHỌT', 'banh-khot', 'https://images.foody.vn/res/g67/664854/prof/s576x330/foody-upload-api-foody-mobile-fg-jpg-180410134642.jpg', 20000, '606/187 Đường 3 Tháng 2, P. 14,  Quận 10, TP. HCM', b'0', 7.7, 8.0, 8.2),
(9, 'CƠM TẤM', 'com-tam', 'https://images.foody.vn/res/g106/1050893/prof/s576x330/file_restaurant_photo_hezx_16032-4b187c5a-201020221015.jpg', 30000, '181A Đường Số 8, P. Bình Hưng Hòa A,  Quận Bình Tân, TP. HCM', b'1', 8.3, 8.3, 8.3),
(10, 'BÁNH XÈO', 'banh-xeo', 'https://images.foody.vn/res/g4/34068/prof/s576x330/foody-mobile-hdk6dcvkdkapdel-jpg-185-635760886397510352.jpg', 20000, '89 Nguyễn Thái Sơn, P. 4,  Quận Gò Vấp, TP. HCM', b'1', 8.0, 8.5, 8.1),
(11, 'HỦ TIẾU', 'hu-tieu', 'https://images.foody.vn/res/g86/851528/prof/s576x330/foody-upload-api-foody-mobile-hmss-jpg-181123114801.jpg', 30000, 'B112/73 Bạch Đằng, P. 2,  Quận Tân Bình, TP. HCM', b'1', 10.0, 10.0, 7.5),
(12, 'BÁNH ĐA CUA', 'banh-da-cua', 'https://images.foody.vn/res/g88/870890/prof/s576x330/foody-upload-api-foody-mobile-banh-da-cua-jpg-181224182134.jpg', 45000, '47/1 Quốc Hương, P. Thảo Điền,  Tp. Thủ Đức, TP. HCM', b'1', 8.5, 8.5, 7.5),
(13, 'MIẾN LƯƠN', 'mien-luon', 'https://images.foody.vn/res/g101/1002116/prof/s576x330/foody-upload-api-foody-mobile-cong-thuc-lam-mien-l-200214120037.jpg', 50000, '38 Thái Thuận, P. Thảo Điền,  Tp. Thủ Đức, TP. HCM', b'0', 8.8, 9.6, 9.3),
(14, 'MÌ QUẢNG', 'mi-quang', 'https://images.foody.vn/res/g26/250935/prof/s576x330/foody-mobile-t2-jpg-875-636028150237713186.jpg', 35000, '35 Phạm Văn Đồng, P. 3,  Quận Gò Vấp, TP. HCM', b'1', 8.7, 8.5, 7.9),
(15, 'BÁNH CUỐN', 'banh-cuon', 'https://images.foody.vn/res/g100005/1000047339/prof/s576x330/file_e61d4a97-441f-47c1-9c64-280-dc1865ee-220217113645.jpeg', 30000, '54 Phạm Nhữ Tăng, P. 4,  Quận 8, TP. HCM', b'1', 10.0, 10.0, 10.0);

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
