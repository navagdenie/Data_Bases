-- Generation time: Sat, 03 Aug 2019 13:26:07 +0000
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

DROP TABLE IF EXISTS `hotel_facilities`;
CREATE TABLE `hotel_facilities` (
  `hotel_id` bigint(20) unsigned NOT NULL,
  `facilities_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время и дата добавления записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время и дата последнего изменения записи',
  PRIMARY KEY (`hotel_id`,`facilities_id`),
  KEY `hotel_facilities_hotel_id_idx` (`hotel_id`),
  KEY `hotel_facilities_facilities_id_idx` (`facilities_id`),
  CONSTRAINT `hotes_facilities_facilities_id_fk` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `hotes_facilities_hotel_id_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Удобства отелей/номеров';

INSERT INTO `hotel_facilities` VALUES ('1','1','2008-10-10 04:08:41','1991-04-15 02:28:30'),
('2','2','2007-01-23 16:44:51','2018-01-13 06:19:44'),
('3','3','2002-08-21 09:16:11','2007-01-02 22:03:35'),
('4','4','1983-03-12 19:25:41','2003-08-01 00:08:02'),
('5','5','2011-10-29 20:46:54','1971-09-15 05:41:39'),
('6','6','1979-03-24 18:28:12','1991-09-28 04:29:43'),
('7','7','1980-11-29 10:52:15','1996-12-22 17:37:28'),
('8','8','2006-03-21 10:43:13','1999-03-14 18:45:50'),
('9','9','2017-02-21 02:47:43','2008-07-16 05:41:26'),
('10','10','2010-09-23 12:42:20','1970-11-07 20:59:05'),
('11','11','2013-06-01 00:28:13','2005-12-30 00:04:12'),
('12','12','1984-01-17 17:30:43','1985-06-05 02:20:26'),
('13','13','1991-10-09 21:20:14','2019-06-14 22:54:40'),
('14','14','1981-08-30 08:44:39','1992-03-22 13:57:17'),
('15','15','1991-05-04 15:00:19','1992-05-14 14:32:49'),
('16','16','2010-03-07 20:11:39','1994-12-25 03:41:23'),
('17','17','2001-01-19 06:44:54','1986-08-30 03:51:48'),
('18','18','2000-06-02 05:13:23','1989-11-09 01:22:26'),
('19','19','1974-11-17 12:20:31','1974-01-19 16:01:59'),
('20','20','2011-03-11 01:41:05','1985-05-30 14:49:49'),
('21','1','2018-01-22 08:54:01','1971-12-29 03:05:11'),
('22','2','1991-11-23 02:17:10','1989-10-24 00:14:46'),
('23','3','2005-04-09 01:58:36','2019-07-11 04:38:00'),
('24','4','2016-06-09 08:10:19','1977-10-15 11:19:52'),
('25','5','2008-03-02 19:30:55','2005-09-23 16:28:30'),
('26','6','2007-08-29 03:13:18','2012-08-14 06:36:07'),
('27','7','1973-12-05 18:58:03','2001-11-09 01:32:22'),
('28','8','2018-04-21 03:36:15','1972-10-04 01:10:14'),
('29','9','1987-08-05 02:05:53','2014-08-30 09:52:55'),
('30','10','2008-08-26 11:05:33','2015-08-01 07:16:05'),
('31','11','1989-05-24 02:44:51','1984-02-15 23:13:13'),
('32','12','1979-06-23 00:29:29','2019-06-15 18:03:25'),
('33','13','1977-06-23 17:34:53','2017-11-01 01:30:48'),
('34','14','2009-06-02 12:26:22','2015-02-20 09:46:23'),
('35','15','1998-09-03 05:29:20','1988-09-27 06:45:59'),
('36','16','1986-03-04 20:31:24','1975-02-16 18:32:30'),
('37','17','1987-08-12 07:30:08','2009-12-26 10:13:59'),
('38','18','2011-04-20 07:43:03','1970-10-26 23:23:32'),
('39','19','1980-01-06 23:48:36','1982-09-25 11:52:58'),
('40','20','2002-11-06 03:50:48','2017-12-30 20:03:18'),
('41','1','2005-09-05 18:23:55','2017-03-08 15:03:21'),
('42','2','1983-12-17 09:14:28','1980-12-17 10:15:59'),
('43','3','2003-07-16 17:21:53','1973-06-18 21:13:39'),
('44','4','1976-10-10 17:54:59','1980-07-30 02:11:11'),
('45','5','1980-11-27 19:27:47','2018-01-10 20:11:50'),
('46','6','1993-09-27 17:15:40','1997-05-21 06:38:28'),
('47','7','2001-10-16 20:40:53','2015-03-28 13:21:57'),
('48','8','2015-05-20 15:36:43','2014-03-14 14:18:26'),
('49','9','1981-08-08 00:49:44','2012-03-18 18:55:14'),
('50','10','1993-06-24 04:38:50','1990-08-07 10:39:17'),
('51','11','2019-03-23 09:21:53','1971-09-30 04:13:50'),
('52','12','1971-06-23 22:18:45','1999-12-06 18:29:03'),
('53','13','2006-05-19 13:05:33','1982-04-26 11:51:12'),
('54','14','1981-04-17 17:50:37','1971-03-17 01:38:47'),
('55','15','2017-07-16 06:38:10','2014-05-27 00:07:16'),
('56','16','1996-01-27 05:53:02','1999-04-04 00:47:23'),
('57','17','1995-11-25 22:27:23','2018-01-25 14:59:11'),
('58','18','2018-11-13 09:37:38','1979-08-06 16:06:33'),
('59','19','1982-12-30 09:31:46','2010-12-09 04:45:21'),
('60','20','1984-04-13 15:40:04','1999-10-12 07:36:41'),
('61','1','1979-05-04 03:24:33','1974-04-23 16:00:08'),
('62','2','2002-08-01 17:41:51','1985-10-06 23:08:53'),
('63','3','1994-02-26 08:45:37','1982-05-23 14:47:30'),
('64','4','2008-03-12 03:33:51','1996-05-08 17:24:13'),
('65','5','1972-09-13 13:42:31','1998-04-07 16:31:19'),
('66','6','1973-06-11 13:59:33','1973-11-10 23:27:08'),
('67','7','1982-09-27 07:40:46','2009-04-03 10:07:31'),
('68','8','2006-10-24 11:01:32','1988-03-12 03:44:42'),
('69','9','1979-11-26 14:05:04','1981-04-24 02:54:14'),
('70','10','2018-02-05 12:43:33','1983-04-13 23:26:07'),
('71','11','1984-10-06 00:39:14','2006-07-30 23:40:45'),
('72','12','2008-03-26 04:09:10','1995-12-10 04:30:36'),
('73','13','1987-09-08 17:26:24','1975-12-31 02:06:34'),
('74','14','1978-02-11 10:40:53','1980-06-02 03:48:57'),
('75','15','2013-06-05 05:10:09','1989-08-04 10:27:07'),
('76','16','2001-01-04 00:57:03','2006-07-25 11:00:38'),
('77','17','1999-11-21 23:31:13','2000-05-31 18:07:52'),
('78','18','1997-09-07 03:20:12','1990-03-16 18:59:40'),
('79','19','2011-05-27 19:42:00','2000-02-09 01:40:27'),
('80','20','2006-01-03 09:19:37','1992-11-12 10:18:59'),
('81','1','2002-05-03 18:27:18','2011-12-29 22:06:23'),
('82','2','1980-05-27 00:05:47','2002-01-05 00:21:18'),
('83','3','2004-04-13 13:56:15','1991-05-17 19:32:25'),
('84','4','2008-03-06 15:15:24','2004-09-22 06:00:47'),
('85','5','1992-06-06 23:53:30','1985-03-10 20:46:46'),
('86','6','1990-03-08 20:32:07','2012-04-02 02:15:04'),
('87','7','2000-02-12 22:51:51','1981-06-08 16:55:07'),
('88','8','1972-08-02 09:17:35','1978-06-07 10:21:58'),
('89','9','1990-08-14 20:14:17','1987-03-25 06:30:27'),
('90','10','1984-04-19 12:49:45','1978-05-15 00:36:21'),
('91','11','2003-10-01 02:09:09','1974-08-25 17:05:45'),
('92','12','2003-08-13 05:24:54','2018-03-17 19:45:54'),
('93','13','1992-09-01 18:30:30','1986-06-05 18:00:21'),
('94','14','2009-09-12 00:43:05','1990-07-31 18:40:08'),
('95','15','2011-07-17 10:22:43','1970-01-20 21:34:03'),
('96','16','1986-08-01 09:32:57','1987-06-06 04:25:20'),
('97','17','2008-06-06 17:04:50','1986-01-02 05:39:03'),
('98','18','1995-12-01 00:48:27','2013-07-09 05:34:24'),
('99','19','1993-04-06 09:28:41','2012-02-14 15:24:47'),
('100','20','1981-03-19 20:38:59','1998-02-15 18:26:51'),
('101','1','1978-04-29 10:42:54','1970-10-28 23:17:44'),
('102','2','1976-04-28 11:27:39','1996-12-29 01:43:08'),
('103','3','1990-11-16 05:58:53','1985-03-24 19:14:56'),
('104','4','2001-12-23 08:54:45','1980-04-27 09:15:10'),
('105','5','1991-02-20 02:05:49','2017-09-19 05:13:05'),
('106','6','1986-11-19 01:24:41','1980-05-28 23:51:21'),
('107','7','1993-03-05 21:01:29','2009-08-02 07:33:30'),
('108','8','2010-10-09 16:52:06','1993-07-31 19:51:21'),
('109','9','2010-06-26 02:20:24','2000-03-19 04:49:09'),
('110','10','1970-08-08 05:39:47','1995-12-04 20:01:02'),
('111','11','1991-11-28 13:20:06','2018-12-10 19:11:45'),
('112','12','2002-01-10 05:38:10','2007-05-15 20:44:30'),
('113','13','1977-02-28 16:44:10','1988-02-27 16:49:01'),
('114','14','1973-04-23 07:01:07','2001-06-25 08:23:14'),
('115','15','1994-04-21 23:18:18','2009-09-01 03:43:23'),
('116','16','1990-08-19 20:00:42','1972-04-20 03:43:40'),
('117','17','1991-10-01 23:20:36','2011-11-18 04:38:35'),
('118','18','1973-07-10 12:56:03','1991-03-03 10:40:17'),
('119','19','1997-12-23 16:02:43','1976-02-19 13:43:04'),
('120','20','1999-04-13 12:24:03','1989-08-16 18:29:24'),
('121','1','2016-06-28 12:37:46','1975-08-13 11:57:58'),
('122','2','1973-11-09 12:58:34','1983-09-26 14:54:12'),
('123','3','1996-05-02 11:11:53','1973-10-02 22:14:14'),
('124','4','2011-07-16 01:54:12','2000-10-31 14:04:58'),
('125','5','1990-01-24 13:34:00','1986-12-29 20:36:56'),
('126','6','1972-09-07 16:54:30','1998-01-26 11:16:50'),
('127','7','2009-04-15 11:55:20','1975-01-10 09:25:51'),
('128','8','2010-07-25 09:26:04','1985-07-02 08:44:13'),
('129','9','1973-08-09 09:08:23','2005-08-18 20:25:22'),
('130','10','1988-07-08 06:45:51','1994-09-11 08:28:54'),
('131','11','1981-02-08 22:11:42','1980-01-27 01:33:29'),
('132','12','2015-08-14 03:50:59','1979-09-12 02:07:00'),
('133','13','2011-03-24 01:55:07','1971-02-10 17:44:39'),
('134','14','1987-01-29 15:59:12','1986-09-30 08:28:31'),
('135','15','1971-04-19 04:02:00','1989-10-04 08:34:56'),
('136','16','2009-09-12 06:28:22','2016-08-28 16:05:51'),
('137','17','1972-12-09 02:59:25','2017-01-14 08:58:49'),
('138','18','2008-03-14 13:48:05','2008-06-19 07:40:35'),
('139','19','1974-05-22 10:59:50','1998-10-20 10:32:51'),
('140','20','2006-09-16 02:34:24','1974-11-14 06:13:05'),
('141','1','2008-03-30 23:33:46','2018-02-14 02:35:21'),
('142','2','1984-02-18 07:47:10','1975-04-14 04:48:48'),
('143','3','1982-12-03 03:11:06','1978-06-01 13:45:34'),
('144','4','2012-05-22 11:45:27','2008-06-04 18:43:25'),
('145','5','1997-04-13 11:39:20','1992-09-23 07:17:33'),
('146','6','1981-10-20 09:59:14','1999-06-09 02:30:50'),
('147','7','2006-08-17 11:21:41','2004-06-25 18:15:58'),
('148','8','2009-03-07 15:21:27','1981-11-15 05:36:05'),
('149','9','2004-05-02 19:58:17','1997-03-03 11:03:56'),
('150','10','1979-09-19 02:12:51','1990-09-14 16:22:59'),
('151','11','1997-11-17 10:45:23','2015-08-30 22:21:26'),
('152','12','1993-12-25 21:45:42','2017-10-18 23:24:34'),
('153','13','2002-08-24 06:15:43','1990-07-28 20:34:57'),
('154','14','1970-05-16 18:02:58','1975-09-21 14:43:56'),
('155','15','1971-11-09 11:29:27','1977-07-31 01:41:11'),
('156','16','1997-07-31 00:53:38','2000-02-21 21:25:17'),
('157','17','2014-04-05 18:35:54','1975-08-02 05:30:03'),
('158','18','2011-05-22 10:47:14','2017-08-02 22:58:22'),
('159','19','1972-11-01 10:23:19','1988-02-04 17:36:19'),
('160','20','1972-08-31 17:36:03','1991-04-24 07:33:46'),
('161','1','1983-08-24 23:56:58','1989-07-24 07:09:57'),
('162','2','1971-10-24 06:14:12','2015-07-16 20:57:13'),
('163','3','2007-08-02 06:10:15','2010-02-17 15:28:12'),
('164','4','1972-09-18 08:10:24','1974-05-29 14:04:19'),
('165','5','2002-01-27 13:52:55','2010-07-01 01:52:30'),
('166','6','1979-12-29 11:16:36','2002-12-20 02:09:58'),
('167','7','2007-08-02 13:25:52','2017-04-17 03:07:56'),
('168','8','1989-01-08 10:12:39','2002-07-06 18:11:36'),
('169','9','2004-12-14 03:04:33','1999-08-01 09:10:23'),
('170','10','1979-07-21 07:59:43','1990-11-13 08:18:21'),
('171','11','2015-12-11 20:35:23','2007-04-16 18:08:29'),
('172','12','1972-11-18 13:28:13','1989-12-11 12:56:34'),
('173','13','1976-05-14 12:49:00','1991-04-16 12:21:44'),
('174','14','1998-06-26 00:45:27','1993-10-15 21:14:32'),
('175','15','1998-01-10 22:53:43','1976-08-18 01:39:36'),
('176','16','1990-12-13 20:23:27','2012-04-27 22:39:33'),
('177','17','2002-05-27 00:22:50','2002-10-03 17:41:29'),
('178','18','2008-02-24 14:04:22','2009-05-29 03:04:01'),
('179','19','2002-11-26 09:33:05','2006-06-10 17:29:43'),
('180','20','1978-11-19 01:05:15','1979-06-07 21:16:05'),
('181','1','1993-09-19 21:19:57','1973-11-28 23:16:11'),
('182','2','1993-02-09 08:33:05','1985-03-05 03:38:20'),
('183','3','1975-02-09 22:31:55','1993-04-02 00:23:52'),
('184','4','1970-09-10 13:21:48','1973-05-04 05:04:11'),
('185','5','1994-04-13 17:41:50','2010-08-07 22:52:40'),
('186','6','2004-02-13 11:35:38','1987-04-04 16:16:25'),
('187','7','1976-08-20 12:20:54','1974-08-19 13:41:17'),
('188','8','1988-04-27 05:03:17','1999-09-17 12:05:51'),
('189','9','2012-12-18 06:36:35','1999-07-20 07:42:04'),
('190','10','2003-10-28 01:29:05','1990-09-10 13:34:08'),
('191','11','1980-02-05 03:58:55','1977-07-03 18:09:28'),
('192','12','2019-07-25 05:14:51','1989-10-14 00:32:32'),
('193','13','1986-12-29 13:08:02','1988-11-23 10:00:43'),
('194','14','2009-10-23 09:47:31','2017-03-16 20:52:58'),
('195','15','1988-02-10 05:19:05','1983-07-05 00:18:11'),
('196','16','2016-09-19 00:21:05','1979-10-01 01:04:19'),
('197','17','1989-08-25 07:20:24','1992-08-11 05:42:22'),
('198','18','2019-03-18 09:34:49','1981-02-28 05:01:36'),
('199','19','2007-08-26 02:25:23','1998-08-14 09:19:42'),
('200','20','1982-06-19 07:59:11','1978-02-28 06:36:10'),
('201','1','2016-12-16 20:27:38','2016-12-30 06:01:56'),
('202','2','1975-10-07 17:33:07','1991-10-19 03:06:07'),
('203','3','1980-07-06 21:22:30','1999-12-06 16:56:39'),
('204','4','2016-06-28 01:50:31','1998-12-24 04:21:39'),
('205','5','1994-01-19 04:06:08','1970-11-07 00:27:12'),
('206','6','1988-11-15 14:26:38','1982-07-19 07:01:20'),
('207','7','1983-07-12 11:47:09','1975-04-29 22:45:37'),
('208','8','1979-04-03 07:21:44','1984-06-17 03:06:39'),
('209','9','1992-04-27 14:04:17','2003-12-29 11:51:55'),
('210','10','1989-07-01 02:34:06','2002-03-16 07:21:53'),
('211','11','1973-08-27 16:12:33','1972-05-05 07:50:54'),
('212','12','2004-06-28 12:50:27','1986-09-28 00:14:29'),
('213','13','1996-12-23 16:10:38','2008-06-08 22:43:21'),
('214','14','2006-08-18 03:28:43','1994-01-25 08:20:50'),
('215','15','1978-08-15 15:01:22','1994-08-06 03:48:47'),
('216','16','2004-10-18 22:26:09','1971-04-17 07:53:47'),
('217','17','1974-09-06 13:58:00','2017-12-18 20:48:32'),
('218','18','2008-04-21 14:06:51','2003-02-01 06:07:12'),
('219','19','2007-11-25 02:54:18','1978-12-23 08:53:22'),
('220','20','2009-05-15 12:10:33','1984-10-26 02:29:35'),
('221','1','2005-04-11 06:47:04','1997-07-01 00:45:53'),
('222','2','1988-05-15 06:59:42','2009-03-30 08:15:24'),
('223','3','2015-11-18 10:58:31','2019-06-08 15:29:10'),
('224','4','2008-06-28 03:48:30','2008-06-07 00:38:14'),
('225','5','2000-03-24 17:07:40','1976-07-09 02:54:57'),
('226','6','1985-07-22 09:27:30','1998-04-30 16:40:45'),
('227','7','2010-10-23 16:09:38','1986-11-19 01:25:33'),
('228','8','1995-05-18 01:24:41','2011-03-02 00:38:42'),
('229','9','1984-02-20 02:49:28','2005-09-05 20:36:39'),
('230','10','2016-09-04 19:35:58','1979-02-09 11:27:33'),
('231','11','1971-01-13 21:00:12','2008-08-17 23:07:41'),
('232','12','1971-12-04 02:15:36','2010-06-24 19:44:24'),
('233','13','1980-03-19 19:31:45','2007-07-21 11:58:17'),
('234','14','2005-03-29 02:54:51','1971-03-15 23:41:20'),
('235','15','1973-01-25 21:12:06','2005-05-14 19:39:58'),
('236','16','2007-11-14 13:30:17','1997-10-28 13:22:40'),
('237','17','1988-10-19 21:20:17','2002-01-18 05:59:29'),
('238','18','2000-11-03 18:47:18','1993-01-12 04:54:29'),
('239','19','2013-05-04 08:26:46','1995-07-25 19:05:35'),
('240','20','2005-07-18 06:17:31','1984-05-11 23:28:43'),
('241','1','1972-11-29 17:46:50','2001-12-03 21:05:36'),
('242','2','2014-03-05 18:06:24','2000-07-27 13:24:34'),
('243','3','2016-05-18 02:49:47','1991-12-25 08:42:41'),
('244','4','1988-10-25 06:42:15','1994-02-16 10:46:32'),
('245','5','2006-06-15 00:07:44','2018-01-01 15:06:26'),
('246','6','1974-11-27 17:03:18','2014-03-11 02:10:32'),
('247','7','1995-09-08 09:28:02','1979-07-02 09:00:28'),
('248','8','2001-08-07 17:42:11','1984-05-23 02:47:43'),
('249','9','1993-12-08 10:17:32','1973-10-02 10:28:22'),
('250','10','2009-02-08 13:36:24','2010-08-27 06:19:05'),
('251','11','1977-07-18 09:50:50','1990-08-09 15:58:21'),
('252','12','1993-02-08 14:04:08','1996-12-31 12:53:46'),
('253','13','1996-01-26 01:51:48','2017-07-05 20:50:30'),
('254','14','1983-12-17 04:51:24','2006-05-25 22:15:32'),
('255','15','2010-11-30 11:36:50','1989-12-18 20:18:37'),
('256','16','2001-01-08 15:01:23','1976-10-11 11:11:33'),
('257','17','1995-07-17 00:33:30','2016-08-31 08:14:44'),
('258','18','1978-07-23 14:23:41','1990-02-07 20:16:56'),
('259','19','1998-06-22 21:09:28','1977-08-26 14:35:41'),
('260','20','2008-04-10 09:23:37','1986-03-10 15:21:14'),
('261','1','2001-09-26 01:09:59','1975-04-20 22:56:46'),
('262','2','1999-02-04 03:45:20','2012-09-20 05:22:31'),
('263','3','2012-08-14 04:15:50','1977-12-17 20:18:59'),
('264','4','1991-08-26 10:20:58','2014-06-01 22:40:14'),
('265','5','1972-08-09 04:24:46','1992-04-16 21:44:15'),
('266','6','1993-01-26 12:18:58','2013-05-10 03:31:16'),
('267','7','1989-03-25 02:29:54','1997-09-27 12:47:25'),
('268','8','1996-10-27 13:31:09','2007-08-20 17:20:41'),
('269','9','1999-06-07 11:54:57','1977-05-29 03:18:17'),
('270','10','1998-10-18 16:45:17','1991-03-02 07:54:02'),
('271','11','1970-03-24 07:52:44','2006-03-14 03:20:00'),
('272','12','2000-01-20 02:34:29','2004-01-25 19:52:53'),
('273','13','2011-12-23 03:59:43','1983-11-06 15:17:12'),
('274','14','1977-08-15 13:31:38','2004-01-01 16:59:30'),
('275','15','2014-11-03 18:17:53','2012-04-13 04:09:22'),
('276','16','1972-06-10 06:30:53','2013-09-05 05:16:13'),
('277','17','1989-09-16 21:08:56','2016-01-31 09:00:32'),
('278','18','1983-08-29 05:27:11','1995-03-24 08:08:04'),
('279','19','2015-02-05 17:22:21','2012-05-02 08:47:38'),
('280','20','1993-06-30 04:03:11','1973-11-28 22:02:31'),
('281','1','1984-01-27 09:44:46','1992-09-13 15:14:29'),
('282','2','1985-02-21 02:42:49','1982-07-23 09:44:21'),
('283','3','2014-11-19 04:43:22','1974-01-03 23:11:51'),
('284','4','2001-11-28 15:21:28','2012-07-17 10:24:18'),
('285','5','1974-09-25 20:50:40','2016-08-12 16:31:53'),
('286','6','1982-07-16 10:58:28','1977-09-07 03:41:14'),
('287','7','2017-06-23 01:15:31','1982-05-13 14:24:24'),
('288','8','1977-03-09 18:41:13','1998-10-15 06:43:18'),
('289','9','1977-10-12 16:41:43','1982-12-19 19:03:16'),
('290','10','2002-11-30 18:09:38','2015-02-23 11:15:39'),
('291','11','2004-10-20 15:12:28','1990-11-10 12:50:19'),
('292','12','2001-03-05 23:43:23','1997-04-21 09:35:42'),
('293','13','2016-05-17 22:27:57','2015-01-08 17:57:14'),
('294','14','2012-12-01 06:49:09','1982-05-20 03:30:23'),
('295','15','2002-11-12 14:11:57','2012-12-19 23:56:42'),
('296','16','1978-03-13 13:46:42','1979-11-07 06:59:15'),
('297','17','2006-03-23 14:12:56','1981-02-13 22:39:49'),
('298','18','1999-10-06 20:43:45','1987-10-27 03:07:44'),
('299','19','2017-05-09 09:03:57','1974-06-15 23:49:03'),
('300','20','2015-11-20 21:14:21','1998-03-30 22:34:18'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

