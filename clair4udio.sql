-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql110.infinityfree.com
-- Generation Time: Jan 31, 2026 at 08:18 AM
-- Server version: 11.4.9-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_40680829_iem_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `shopee_url` varchar(500) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image_url`, `shopee_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tanchjim Bunny', 'Comfortable and light \"like a rabbit\"\r\nThe BUNNY shape also adopts a simple design style that takes into account the fit and comfort of the wearer.', '300000.00', 'images/tanchjim-bunny.jpg', 'https://id.shp.ee/DZKwTgZ', 'active', '2025-11-24 01:29:38', '2025-12-15 02:33:07'),
(2, 'Tanchjim Fission', 'FISSION continues the sleek, minimalist design of the 4U and BUNNY, with a sandblasted, anodized aluminum body for durability and texture. The teardrop-shaped glass adds a refined, stylish contrast to the all-metal build.', '2200000.00', 'images/tanchjim-fission.jpg', 'https://shopee.co.id/Tanchjim-FISSION-10mm-DMT5-Dynamic-Driver-In-Ear-Monitor-Earphone-i.159299554.27636847886?extraParams=%7B%22display_model_id%22%3A196092734609%2C%22model_selection_logic%22%3A3%7D&sp_atk=ab56ffe9-ee38-4821-bb0e-b91315803957&xptdk=ab56ffe9-ee38-4821-bb0e-b91315803957', 'active', '2025-11-24 01:29:38', '2025-12-14 13:24:18'),
(3, 'Tanchjim Nora', 'Based on the balanced tuning favored by audiophiles, NORA enhances vocals and treble insturments for crisp, detailed, and fatigue-free sound. The lightweight, ergonomic design ensures lasting comfort for extended listening.', '1600000.00', 'images/tanchjim-nora.jpg', 'https://shopee.co.id/Tanchjim-NORA-DMT5-Dynamic-Driver-Monitoring-In-Ear-Monitor-Earphone-i.159299554.42912586094?extraParams=%7B%22display_model_id%22%3A296055023970%2C%22model_selection_logic%22%3A3%7D&sp_atk=b5b55942-6747-48b5-a169-533885b6f9cf&xptdk=b5b55942-6747-48b5-a169-533885b6f9cf', 'active', '2025-11-24 01:29:38', '2025-12-14 13:28:39'),
(4, 'Tangzu Waner 2 Jade Dragon', 'This upgraded version retains its original soul while introducing enhancements in design, materials, and performance, making it an even more compelling choice for audiophiles.', '399000.00', 'images/tangzu-waner-2-jade.jpg', 'https://shopee.co.id/product/159299554/41910337585', 'active', '2025-11-24 01:29:38', '2025-12-14 13:50:43'),
(5, 'Tangzu Xuan NV', 'Xuan Nv’s shell is 3D printed with medical-grade resin and is designed with rigorous testing and data to achieve the most ergonomic shape for this configuration.', '1300000.00', 'images/tangzu-xuan-nv.jpg', 'https://shopee.co.id/product/159299554/20487520746/', 'active', '2025-11-24 01:29:38', '2025-12-14 13:53:09'),
(6, 'Tangzu Wukong', 'Inspired by the Monkey King\'s extraordinary power and unparalleled grace, this design seamlessly blends raw strength with refined artistry.', '34299000.00', 'images/tangzu-wukong.jpg', 'https://shopee.co.id/product/159299554/43265162333', 'active', '2025-11-24 01:29:38', '2025-12-14 13:59:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
