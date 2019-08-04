-- Generation time: Sat, 03 Aug 2019 13:11:47 +0000
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

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название страны',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время и дата добавления записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время и дата последнего изменения записи',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Страны мира';

INSERT INTO `countries` VALUES ('1','Guatemala','1979-09-26 07:50:47','1984-09-13 18:19:39'),
('2','French Guiana','2019-03-14 01:46:51','1994-09-09 12:44:07'),
('3','Northern Mariana Islands','1993-12-16 22:36:12','1993-01-24 08:54:18'),
('4','United Kingdom','2005-06-02 15:20:28','1973-03-09 11:00:05'),
('5','Israel','1997-07-08 12:14:21','1996-06-23 15:45:01'),
('6','Monaco','1981-08-14 21:37:27','1982-12-07 20:21:00'),
('7','Namibia','1979-08-28 13:53:05','2018-06-25 03:51:51'),
('8','Saint Helena','2011-10-25 21:27:56','1996-12-06 22:58:42'),
('9','Philippines','1988-06-27 10:34:07','1975-12-24 13:32:44'),
('10','Andorra','1992-01-31 13:53:31','1972-11-25 23:31:03'),
('11','South Africa','2011-04-05 04:43:40','1990-06-16 05:58:14'),
('12','Falkland Islands (Malvinas)','1997-12-13 08:45:36','1977-01-15 10:27:30'),
('13','Panama','2004-05-21 10:00:43','1977-09-12 18:31:21'),
('14','New Zealand','1972-01-16 21:19:17','2013-04-07 01:17:08'),
('15','Guinea-Bissau','1974-09-10 23:18:29','1978-11-11 12:15:31'),
('16','Hong Kong','1984-01-07 16:35:31','1973-08-16 17:39:16'),
('17','Netherlands','1979-01-14 21:41:13','2007-10-20 16:44:24'),
('18','Oman','2011-08-08 06:46:06','2018-05-22 07:32:20'),
('19','Saint Barthelemy','2005-04-29 10:51:04','1971-11-10 16:59:10'),
('20','Falkland Islands (Malvinas)','1973-03-03 23:31:23','1986-03-13 15:54:27'),
('21','Samoa','2006-08-07 15:28:38','2008-10-11 18:16:53'),
('22','Ukraine','1971-04-13 22:40:53','1984-09-13 02:25:37'),
('23','Malta','2011-02-25 06:19:30','1999-10-23 08:47:03'),
('24','Macao','2017-04-14 00:09:23','2003-07-10 19:07:45'),
('25','Korea','1975-11-20 04:00:40','2018-03-07 06:03:48'),
('26','Vietnam','1983-05-15 06:12:13','1990-10-09 06:27:55'),
('27','Nauru','2012-06-11 04:11:11','2010-03-06 12:51:51'),
('28','Anguilla','2018-03-21 02:23:01','1983-08-28 20:23:30'),
('29','Equatorial Guinea','1994-11-14 18:27:30','2015-09-11 21:55:32'),
('30','Jersey','1975-06-07 21:33:13','1976-12-21 18:27:57'),
('31','Ireland','2013-05-30 20:56:03','1994-01-22 14:08:16'),
('32','Grenada','1982-11-30 02:17:31','1999-08-19 21:43:43'),
('33','Slovakia (Slovak Republic)','2007-11-26 14:43:59','1983-02-20 00:14:26'),
('34','Bulgaria','2008-06-16 11:38:11','2018-10-10 22:48:30'),
('35','Mongolia','1986-10-23 19:11:32','2005-07-09 21:37:40'),
('36','Andorra','1984-06-23 04:57:19','1981-11-11 19:37:15'),
('37','Australia','1986-07-21 10:49:11','1970-01-18 17:55:19'),
('38','Hungary','1981-06-07 15:23:51','1970-01-27 05:02:28'),
('39','Sierra Leone','1983-03-30 18:34:03','1986-11-14 23:05:05'),
('40','Gabon','1982-09-01 19:44:55','2015-12-28 06:53:38'),
('41','Monaco','2001-01-16 10:46:56','1996-03-06 11:19:21'),
('42','Svalbard & Jan Mayen Islands','2019-02-16 02:22:21','1984-01-09 00:43:14'),
('43','Thailand','1993-12-02 23:20:33','2009-02-28 22:06:40'),
('44','Turkey','1973-07-26 18:08:28','1982-12-06 23:08:15'),
('45','Liberia','1992-06-20 11:18:15','1974-03-28 14:48:42'),
('46','El Salvador','2016-10-22 08:27:33','2018-11-04 03:59:53'),
('47','Saint Martin','2019-05-11 08:24:27','2012-11-16 10:36:56'),
('48','Macao','1997-11-30 16:55:00','1975-04-30 14:18:06'),
('49','Libyan Arab Jamahiriya','1970-08-31 07:27:35','1978-09-03 20:14:30'),
('50','Moldova','1988-06-21 07:51:24','1979-08-21 09:53:13'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

