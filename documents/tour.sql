-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tour
CREATE DATABASE IF NOT EXISTS `tour` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `tour`;

-- Dumping structure for table tour.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wdate` date DEFAULT NULL,
  `like_amount` int(11) DEFAULT NULL,
  `state` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.blog: ~0 rows (approximately)
DELETE FROM `blog`;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Dumping structure for table tour.book
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertour_id` int(11) DEFAULT NULL,
  `total_money` decimal(10,0) DEFAULT NULL,
  `child_amount` int(11) DEFAULT NULL,
  `aldult_amount` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `date` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `usertour_id` (`usertour_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`usertour_id`) REFERENCES `user_tour` (`id`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.book: ~0 rows (approximately)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Dumping structure for table tour.cat_tour
CREATE TABLE IF NOT EXISTS `cat_tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.cat_tour: ~0 rows (approximately)
DELETE FROM `cat_tour`;
/*!40000 ALTER TABLE `cat_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_tour` ENABLE KEYS */;

-- Dumping structure for table tour.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertour_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usertour_id` (`usertour_id`),
  KEY `blog_id` (`blog_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`usertour_id`) REFERENCES `user_tour` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.comment: ~0 rows (approximately)
DELETE FROM `comment`;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table tour.department
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tourguide` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.department: ~0 rows (approximately)
DELETE FROM `department`;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping structure for table tour.discount
CREATE TABLE IF NOT EXISTS `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` float DEFAULT NULL,
  `start_day` date DEFAULT NULL,
  `end_day` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.discount: ~0 rows (approximately)
DELETE FROM `discount`;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;

-- Dumping structure for table tour.evaluate
CREATE TABLE IF NOT EXISTS `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wdate` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `FK__user_tour` FOREIGN KEY (`user_id`) REFERENCES `user_tour` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_evaluate_tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.evaluate: ~0 rows (approximately)
DELETE FROM `evaluate`;
/*!40000 ALTER TABLE `evaluate` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluate` ENABLE KEYS */;

-- Dumping structure for table tour.like_blog
CREATE TABLE IF NOT EXISTS `like_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `usertour_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  KEY `usertour_id` (`usertour_id`),
  CONSTRAINT `like_blog_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  CONSTRAINT `like_blog_ibfk_2` FOREIGN KEY (`usertour_id`) REFERENCES `user_tour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.like_blog: ~0 rows (approximately)
DELETE FROM `like_blog`;
/*!40000 ALTER TABLE `like_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `like_blog` ENABLE KEYS */;

-- Dumping structure for table tour.payment
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `totalprice` decimal(20,6) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `pdate` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `payment_type` (`payment_type`),
  CONSTRAINT `FK_payment_detail_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_payment_payment_type` FOREIGN KEY (`payment_type`) REFERENCES `payment_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.payment: ~0 rows (approximately)
DELETE FROM `payment`;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

-- Dumping structure for table tour.payment_type
CREATE TABLE IF NOT EXISTS `payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.payment_type: ~0 rows (approximately)
DELETE FROM `payment_type`;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;

-- Dumping structure for table tour.place
CREATE TABLE IF NOT EXISTS `place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`) USING BTREE,
  CONSTRAINT `FK_place_province` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.place: ~0 rows (approximately)
DELETE FROM `place`;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
/*!40000 ALTER TABLE `place` ENABLE KEYS */;

-- Dumping structure for table tour.province
CREATE TABLE IF NOT EXISTS `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.province: ~0 rows (approximately)
DELETE FROM `province`;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
/*!40000 ALTER TABLE `province` ENABLE KEYS */;

-- Dumping structure for table tour.ticket
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` bit(1) DEFAULT NULL,
  `giveDate` date DEFAULT NULL,
  `unitprice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.ticket: ~0 rows (approximately)
DELETE FROM `ticket`;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;

-- Dumping structure for table tour.tour
CREATE TABLE IF NOT EXISTS `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `min_amout` int(11) DEFAULT NULL,
  `max_amout` int(11) DEFAULT NULL,
  `start_day` date DEFAULT NULL,
  `end_day` date DEFAULT NULL,
  `location_go` int(11) DEFAULT NULL,
  `cattour_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cattour_id` (`cattour_id`),
  KEY `FK_tour_department` (`location_go`),
  CONSTRAINT `FK_tour_department` FOREIGN KEY (`location_go`) REFERENCES `department` (`id`),
  CONSTRAINT `tour_ibfk_3` FOREIGN KEY (`cattour_id`) REFERENCES `cat_tour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.tour: ~0 rows (approximately)
DELETE FROM `tour`;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;

-- Dumping structure for table tour.tour_discount
CREATE TABLE IF NOT EXISTS `tour_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `discount_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `tour_id` (`tour_id`),
  KEY `discount_id` (`discount_id`),
  CONSTRAINT `FK_tour_discount_discount` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tour_discount_tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.tour_discount: ~0 rows (approximately)
DELETE FROM `tour_discount`;
/*!40000 ALTER TABLE `tour_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_discount` ENABLE KEYS */;

-- Dumping structure for table tour.tour_place
CREATE TABLE IF NOT EXISTS `tour_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place_id` int(11) NOT NULL DEFAULT 0,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `FK__place` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK__tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.tour_place: ~0 rows (approximately)
DELETE FROM `tour_place`;
/*!40000 ALTER TABLE `tour_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_place` ENABLE KEYS */;

-- Dumping structure for table tour.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.user_role: ~0 rows (approximately)
DELETE FROM `user_role`;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

-- Dumping structure for table tour.user_tour
CREATE TABLE IF NOT EXISTS `user_tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cusname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role` (`user_role`),
  CONSTRAINT `user_tour_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `user_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tour.user_tour: ~0 rows (approximately)
DELETE FROM `user_tour`;
/*!40000 ALTER TABLE `user_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tour` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
