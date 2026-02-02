-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for clair4udio
CREATE DATABASE IF NOT EXISTS `clair4udio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clair4udio`;

-- Dumping structure for table clair4udio.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'IEM',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `price` decimal(10,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'active',
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shopee_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tokopedia_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tiktok_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now()),
  `updated_at` timestamp NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table clair4udio.products: ~6 rows (approximately)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `category`, `name`, `description`, `price`, `status`, `image_url`, `shopee_url`, `tokopedia_url`, `tiktok_url`, `created_at`, `updated_at`) VALUES
	(1, 'IEM', 'Tanchjim Bunny', 'Comfortable and light "like a rabbit"\r\nThe BUNNY shape also adopts a simple design style that takes into account the fit and comfort of the wearer.', 300000.00, 'active', 'images/tanchjim-bunny.jpg', 'https://id.shp.ee/DZKwTgZ', 'https://tokopedia.com/product/123', 'https://tiktok.com/product/123', '2025-11-24 01:29:38', '2026-02-01 07:40:20'),
	(2, 'IEM', 'Tanchjim Fission', 'FISSION continues the sleek, minimalist design of the 4U and BUNNY, with a sandblasted, anodized aluminum body for durability and texture. The teardrop-shaped glass adds a refined, stylish contrast to the all-metal build.', 2200000.00, 'active', 'images/tanchjim-fission.jpg', 'https://shopee.co.id/Tanchjim-FISSION-10mm-DMT5-Dynamic-Driver-In-Ear-Monitor-Earphone-i.159299554.27636847886?extraParams=%7B%22display_model_id%22%3A196092734609%2C%22model_selection_logic%22%3A3%7D&sp_atk=ab56ffe9-ee38-4821-bb0e-b91315803957&xptdk=ab56ffe9-ee38-4821-bb0e-b91315803957', 'https://tokopedia.com/product/123', 'https://tiktok.com/product/123', '2025-11-24 01:29:38', '2026-02-01 15:12:14'),
	(3, 'IEM', 'Tanchjim Nora', 'Based on the balanced tuning favored by audiophiles, NORA enhances vocals and treble insturments for crisp, detailed, and fatigue-free sound. The lightweight, ergonomic design ensures lasting comfort for extended listening.', 1600000.00, 'active', 'images/tanchjim-nora.jpg', 'https://shopee.co.id/Tanchjim-NORA-DMT5-Dynamic-Driver-Monitoring-In-Ear-Monitor-Earphone-i.159299554.42912586094?extraParams=%7B%22display_model_id%22%3A296055023970%2C%22model_selection_logic%22%3A3%7D&sp_atk=b5b55942-6747-48b5-a169-533885b6f9cf&xptdk=b5b55942-6747-48b5-a169-533885b6f9cf', 'https://tokopedia.com/product/123', 'https://tiktok.com/product/123', '2025-11-24 01:29:38', '2026-02-01 15:12:14'),
	(4, 'IEM', 'Tangzu Waner 2 Jade Dragon', 'This upgraded version retains its original soul while introducing enhancements in design, materials, and performance, making it an even more compelling choice for audiophiles.', 399000.00, 'active', 'images/tangzu-waner-2-jade.jpg', 'https://shopee.co.id/product/159299554/41910337585', 'https://tokopedia.com/product/123', 'https://tiktok.com/product/123', '2025-11-24 01:29:38', '2026-02-01 15:12:14'),
	(5, 'IEM', 'Tangzu Xuan NV', 'Xuan NV shell is 3D printed with medical-grade resin and is designed with rigorous testing and data to achieve the most ergonomic shape for this configuration.', 1300000.00, 'active', 'images/tangzu-xuan-nv.jpg', 'https://shopee.co.id/product/159299554/20487520746/', 'https://tokopedia.com/product/123', 'https://tiktok.com/product/123', '2025-11-24 01:29:38', '2026-02-02 02:23:05'),
	(6, 'IEM', 'Tangzu Wukong', 'Inspired by the Monkey King\'s extraordinary power and unparalleled grace, this design seamlessly blends raw strength with refined artistry.', 34299000.00, 'active', 'images/tangzu-wukong.jpg', 'https://shopee.co.id/product/159299554/43265162333', 'https://tokopedia.com/product/123', 'https://tiktok.com/product/123', '2025-11-24 01:29:38', '2026-02-01 15:12:14');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
