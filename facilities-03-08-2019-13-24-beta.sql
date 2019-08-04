-- Generation time: Sat, 03 Aug 2019 13:24:36 +0000
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

DROP TABLE IF EXISTS `facilities`;
CREATE TABLE `facilities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название удобства',
  `category_id` bigint(20) unsigned NOT NULL COMMENT 'Категория удобства',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время и дата добавления записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время и дата последнего изменения записи',
  PRIMARY KEY (`id`),
  KEY `facilities_category_id_fk` (`category_id`),
  CONSTRAINT `facilities_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `facilities_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Удобства';

INSERT INTO `facilities` VALUES ('1','quisquam','1','1997-08-29 02:38:14','2013-12-31 21:45:04'),
('2','quibusdam','2','2016-01-06 23:28:32','1985-07-30 14:17:36'),
('3','a','3','1990-04-28 02:08:26','1998-03-30 19:06:11'),
('4','ducimus','4','2017-08-31 16:47:57','2015-01-05 06:12:11'),
('5','rerum','5','2008-05-06 19:37:43','2014-11-22 08:50:43'),
('6','voluptatibus','6','1979-01-05 14:58:42','1974-02-07 19:52:56'),
('7','id','7','1970-03-30 22:37:48','1996-09-16 17:27:43'),
('8','non','1','1999-02-06 08:25:37','2017-07-17 10:35:56'),
('9','sint','2','1975-05-07 04:54:41','1996-11-19 13:09:24'),
('10','vero','3','1994-10-18 22:53:38','1971-01-22 06:53:07'),
('11','officiis','4','1971-11-04 16:18:02','1997-04-28 16:24:17'),
('12','beatae','5','1976-04-08 12:58:58','1994-04-21 13:01:18'),
('13','sapiente','6','1989-07-08 11:50:59','1977-05-28 21:14:54'),
('14','nihil','7','1984-08-05 10:46:22','1987-11-03 16:32:34'),
('15','mollitia','1','1996-12-09 10:09:13','1980-08-10 17:24:15'),
('16','quae','2','1980-01-13 16:19:41','1970-05-20 13:26:38'),
('17','a','3','1980-02-02 03:47:30','1978-09-19 16:08:03'),
('18','reprehenderit','4','2003-02-15 07:39:08','1986-02-22 12:02:35'),
('19','molestiae','5','1980-12-08 02:32:42','2000-04-25 11:03:56'),
('20','iusto','6','2018-04-09 21:20:54','1999-06-01 23:11:26'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

