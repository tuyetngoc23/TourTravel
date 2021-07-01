-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table tour.blog: ~0 rows (approximately)
DELETE FROM `blog`;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Dumping data for table tour.book: ~0 rows (approximately)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Dumping data for table tour.cat_tour: ~2 rows (approximately)
DELETE FROM `cat_tour`;
/*!40000 ALTER TABLE `cat_tour` DISABLE KEYS */;
INSERT INTO `cat_tour` (`id`, `name`) VALUES
	(1, 'family'),
	(2, 'hoeymoon');
/*!40000 ALTER TABLE `cat_tour` ENABLE KEYS */;

-- Dumping data for table tour.comment: ~0 rows (approximately)
DELETE FROM `comment`;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping data for table tour.department: ~0 rows (approximately)
DELETE FROM `department`;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping data for table tour.discount: ~0 rows (approximately)
DELETE FROM `discount`;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;

-- Dumping data for table tour.evaluate: ~0 rows (approximately)
DELETE FROM `evaluate`;
/*!40000 ALTER TABLE `evaluate` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluate` ENABLE KEYS */;

-- Dumping data for table tour.hotel: ~0 rows (approximately)
DELETE FROM `hotel`;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;

-- Dumping data for table tour.image_blog: ~0 rows (approximately)
DELETE FROM `image_blog`;
/*!40000 ALTER TABLE `image_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_blog` ENABLE KEYS */;

-- Dumping data for table tour.image_tour: ~0 rows (approximately)
DELETE FROM `image_tour`;
/*!40000 ALTER TABLE `image_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `image_tour` ENABLE KEYS */;

-- Dumping data for table tour.like_blog: ~0 rows (approximately)
DELETE FROM `like_blog`;
/*!40000 ALTER TABLE `like_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `like_blog` ENABLE KEYS */;

-- Dumping data for table tour.payment: ~0 rows (approximately)
DELETE FROM `payment`;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

-- Dumping data for table tour.payment_type: ~4 rows (approximately)
DELETE FROM `payment_type`;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
INSERT INTO `payment_type` (`id`, `type`) VALUES
	(1, 'momo'),
	(2, 'cash'),
	(3, 'credit'),
	(4, 'ATM');
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;

-- Dumping data for table tour.place: ~0 rows (approximately)
DELETE FROM `place`;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
/*!40000 ALTER TABLE `place` ENABLE KEYS */;

-- Dumping data for table tour.province: ~63 rows (approximately)
DELETE FROM `province`;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` (`id`, `name`) VALUES
	(1, 'An Giang'),
	(2, 'Bà Rịa - Vũng Tàu'),
	(3, 'Bắc Giang'),
	(4, 'Bắc Kạn'),
	(5, 'Bạc Liêu'),
	(6, 'Bắc Ninh'),
	(7, 'Bến Tre'),
	(8, 'Bình Định'),
	(9, 'Bình Dương'),
	(10, 'Bình Phước'),
	(11, 'Bình Thuận'),
	(12, 'Cà Mau'),
	(13, 'Cao Bằng'),
	(14, 'Cần Thơ'),
	(15, 'Đà Nẵng'),
	(16, 'Đắk Lắk'),
	(17, 'Đắk Nông'),
	(18, 'Điện Biên'),
	(19, 'Đồng Nai'),
	(20, 'Đồng Tháp'),
	(21, 'Gia Lai'),
	(22, 'Hà Giang'),
	(23, 'Hà Nam'),
	(24, 'Hà Tĩnh'),
	(25, 'Hà Nội'),
	(26, 'Hải Phòng'),
	(27, 'Hải Dương'),
	(28, 'Hậu Giang'),
	(29, 'Hòa Bình'),
	(30, 'Hưng Yên'),
	(31, 'Khánh Hòa'),
	(32, 'Kiên Giang'),
	(33, 'Kon Tum'),
	(34, 'Lai Châu'),
	(35, 'Lâm Đồng'),
	(36, 'Lạng Sơn'),
	(37, 'Lào Cai'),
	(38, 'Long An'),
	(39, 'Nam Định'),
	(40, 'Nghệ An'),
	(41, 'Ninh Bình'),
	(42, 'Ninh Thuận'),
	(43, 'Phú Thọ'),
	(44, 'Quảng Bình'),
	(45, 'Quảng Nam'),
	(46, 'Quảng Ngãi'),
	(47, 'Quảng Ninh'),
	(48, 'Quảng Trị'),
	(49, 'Sóc Trăng'),
	(50, 'Sơn La'),
	(51, 'Tây Ninh'),
	(52, 'Thái Bình'),
	(53, 'Thái Nguyên'),
	(54, 'Thanh Hóa'),
	(55, 'Thừa Thiên Huế'),
	(56, 'Tiền Giang'),
	(57, 'Trà Vinh'),
	(58, 'Tuyên Quang'),
	(59, 'Vĩnh Long'),
	(60, 'Vĩnh Phúc'),
	(61, 'Yên Bái'),
	(62, 'Phú Yên'),
	(63, 'TP HCM');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;

-- Dumping data for table tour.ticket: ~0 rows (approximately)
DELETE FROM `ticket`;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;

-- Dumping data for table tour.tour: ~0 rows (approximately)
DELETE FROM `tour`;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;

-- Dumping data for table tour.tour_discount: ~0 rows (approximately)
DELETE FROM `tour_discount`;
/*!40000 ALTER TABLE `tour_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_discount` ENABLE KEYS */;

-- Dumping data for table tour.tour_place: ~0 rows (approximately)
DELETE FROM `tour_place`;
/*!40000 ALTER TABLE `tour_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_place` ENABLE KEYS */;

-- Dumping data for table tour.user_role: ~6 rows (approximately)
DELETE FROM `user_role`;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`id`, `role`) VALUES
	(1, 'ADMIN'),
	(2, 'USER'),
	(3, 'ADMIN'),
	(4, 'USER'),
	(5, 'ADMIN'),
	(6, 'USER');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

-- Dumping data for table tour.user_tour: ~0 rows (approximately)
DELETE FROM `user_tour`;
/*!40000 ALTER TABLE `user_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tour` ENABLE KEYS */;

-- Dumping data for table tour.vehicle: ~0 rows (approximately)
DELETE FROM `vehicle`;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
