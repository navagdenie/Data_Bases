-- Generation time: Sat, 03 Aug 2019 13:38:48 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_23
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `discount_types`;
CREATE TABLE `discount_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `orders_amount` decimal(15,2) unsigned NOT NULL COMMENT 'Сумма заказов',
  `discount_percent` int(10) unsigned NOT NULL COMMENT 'Процент скидки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время и дата добавления записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время и дата последнего изменения записи',
  PRIMARY KEY (`id`),
  KEY `discount_types_orders_amount_idx` (`orders_amount`),
  KEY `discount_types_discount_percent_idx` (`discount_percent`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы скидок';

INSERT INTO `discount_types` VALUES ('1','15000.00','3','1999-08-01 12:58:57','2007-08-05 23:47:45'),
('2','20000.00','5','1974-10-28 06:07:15','2002-05-06 20:28:39'),
('3','30000.00','7','1999-12-09 14:52:14','2001-06-09 02:02:37'),
('4','40000.00','10','2003-09-05 14:34:20','1971-06-05 12:43:56'),
('5','50000.00','15','1995-05-27 14:16:06','2000-01-10 18:06:04'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

