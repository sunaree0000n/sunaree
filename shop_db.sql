-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 13, 2025 at 12:16 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `phone`, `address`, `payment_method`, `created_at`) VALUES
(1, 'กดหก', '2454545454', 'หกดฟหกดฟหกด', 'ชำระปลายทาง', '2025-05-05 18:17:34'),
(2, 'คณิศร บัวจันทร์', '0807316489', '358 ม.8 ต.หนองครก อ.เมือง จ.ศรีสะเกษ 33000', 'ชำระปลายทาง', '2025-05-05 18:19:45'),
(3, 'พำไพๆ', '45465768', 'พะัพำะัำพ', 'ชำระปลายทาง', '2025-05-05 18:23:41'),
(4, 'ต่างหูเพชร', '0807316489', 'ccsfdsdf', 'พร้อมเพย์', '2025-05-06 18:09:28'),
(5, 'ห', '2454545454', 'เ้่ด้่ดเ้', 'พร้อมเพย์', '2025-05-07 18:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 9, 3, 300.00),
(2, 1, 15, 1, 990.00),
(3, 2, 9, 1, 300.00),
(4, 2, 5, 1, 500.00),
(5, 2, 14, 1, 950.00),
(6, 3, 14, 1, 950.00),
(7, 3, 10, 2, 300.00),
(8, 4, 10, 2, 300.00),
(9, 5, 15, 1, 990.00),
(10, 5, 6, 2, 500.00),
(11, 5, 3, 2, 250.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `code` varchar(50) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `code`, `image_url`, `description`, `category`, `status`, `created_at`) VALUES
(1, 'เสื้อคอกลม', 350.00, 'L001', 'uploads/68179d6eaf870_download.jpg', 'lfsdfasdf', 'เสื้อผ้า', 'active', '2025-05-04 17:01:34'),
(2, 'กางเกง', 450.00, 'M001', 'uploads/68179f765b3cd_download (1).jpg', 'กางเกงยืนส์', 'กางเกง', 'active', '2025-05-04 17:10:14'),
(3, 'เสื้อคอกลม', 250.00, 'L002', 'uploads/6817aa136c72c_download.jpg', 'หฟหกดฟหก', 'เสื้อผ้า', 'active', '2025-05-04 17:55:31'),
(4, 'เสื้อคอกลม', 250.00, 'L003', 'uploads/6817aaa314fc1_download.jpg', 'หฟหกดฟหก', 'เสื้อผ้า', 'active', '2025-05-04 17:57:55'),
(5, 'กางเกงยีนส์เดฟ', 500.00, 'M002', 'uploads/6817aad6959d7_download (1).jpg', 'หฟหกดฟหก', 'กางเกง', 'active', '2025-05-04 17:58:46'),
(6, 'กางเกงยีนส์เดฟ', 500.00, 'M003', 'uploads/6817ab0806591_download (1).jpg', 'หฟหกดฟหก', 'กางเกง', 'active', '2025-05-04 17:59:36'),
(7, 'กางเกงยีนส์เดฟ', 500.00, 'M004', 'uploads/6817ab1818b23_download (1).jpg', 'หฟหกดฟหก', 'กางเกง', 'active', '2025-05-04 17:59:52'),
(8, 'เสื้อคอกลม', 300.00, 'M004', 'uploads/68185a5a6d337_download.jpg', 'sdfasdfasdf', 'เสื้อผ้า', 'active', '2025-05-05 06:27:38'),
(9, 'เสื้อคอกลม', 300.00, 'M004', 'uploads/68185a9bd3a7c_download.jpg', 'sdfasdfasdf', 'เสื้อผ้า', 'active', '2025-05-05 06:28:43'),
(10, 'เสื้อคอกลม', 300.00, 'M004', 'uploads/68185ad4384f6_download.jpg', 'sdfasdfasdf', 'เสื้อผ้า', 'active', '2025-05-05 06:29:40'),
(11, 'ต่างหู', 620.00, 'p001', 'uploads/68185f08b7567_p1.jpg', 'sdfasdfasd', 'เครื่องประดับ', 'active', '2025-05-05 06:47:36'),
(12, 'ต่างหู', 620.00, 'p001', 'uploads/68185f451757a_p1.jpg', 'sdfasdfasd', 'เครื่องประดับ', 'active', '2025-05-05 06:48:37'),
(13, 'ต่างหูเพชร', 750.00, 'p002', 'uploads/68185f66550e5_p2.jpg', 'sdfasdfas', 'เครื่องประดับ', 'active', '2025-05-05 06:49:10'),
(14, 'นาฬิกา', 950.00, 'p003', 'uploads/68185f88be3e7_p3.jpg', 'sdfasdgsdgsd', 'เครื่องประดับ', 'active', '2025-05-05 06:49:44'),
(15, 'แหวนเพชร', 990.00, 'p004', 'uploads/68187074cc1af_p4.jpg', 'asdgsdgasf', 'เครื่องประดับ', 'active', '2025-05-05 08:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(3, 'admin1', '$2y$10$gVDgGrd7D15.hthWMccx4.WaLXH7zL8K1dkNIVRAQx7PeGrnbkxta', 'admin'),
(4, 'user', '$2y$10$mqUwb/Yp9Qdfu0QtzaFyuetEZC7aYEFFKB8YfBwfM7gb2h7SrXPgO', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
