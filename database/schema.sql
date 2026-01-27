-- データベース作成
CREATE DATABASE IF NOT EXISTS `kenchiku_estimate` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `kenchiku_estimate`;

-- アカウント情報テーブル
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(20) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 見積書テーブル
CREATE TABLE IF NOT EXISTS `estimates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estimate_number` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `created_by` int NOT NULL,
  `created_at` date NOT NULL,
  `update_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estimate_number` (`estimate_number`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `estimates_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 見積書内訳テーブル
CREATE TABLE IF NOT EXISTS `estimate_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estimate_id` int NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `estimate_id` (`estimate_id`),
  CONSTRAINT `estimate_items_ibfk_1` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
