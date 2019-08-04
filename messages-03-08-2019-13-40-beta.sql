-- Generation time: Sat, 03 Aug 2019 13:40:52 +0000
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

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `delivered` tinyint(1) DEFAULT NULL COMMENT 'Доставлено',
  `readed` tinyint(1) DEFAULT NULL COMMENT 'Прочитано',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Время и дата добавления записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время и дата последнего изменения записи',
  PRIMARY KEY (`from_user_id`,`to_user_id`,`created_at`),
  KEY `messages_from_user_id_to_user_id_idx` (`from_user_id`,`to_user_id`),
  KEY `messages_to_user_id_from_user_id_idx` (`to_user_id`,`from_user_id`),
  CONSTRAINT `messages_from_user_id_fk` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `messages_to_user_id_fk` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения пользователей';

INSERT INTO `messages` VALUES ('1','1','0','1','Ullam numquam enim et corrupti ut eos. Quia voluptatem sequi voluptatem iusto dolor dolor dolorem. Odio delectus voluptatum ut animi.','1998-07-04 02:59:04','1974-01-14 16:12:59'),
('2','2','0','0','Eveniet non veniam tempora eligendi aut aut. Voluptates et cum iusto modi. Ullam nihil placeat ratione impedit.','1984-10-10 09:15:04','2016-02-26 04:10:54'),
('3','3','0','1','Doloremque fugiat et nesciunt excepturi. Temporibus voluptatibus asperiores rerum itaque.','1978-06-15 03:47:04','1974-03-11 13:01:18'),
('4','4','0','1','Inventore expedita beatae veritatis fugiat quia vel. Animi libero aut nihil cumque. Exercitationem adipisci maxime inventore laborum eum error et minima.','1987-02-09 23:29:41','1980-03-13 10:31:28'),
('5','5','1','1','Aspernatur dolorum provident sit est enim. Praesentium sit et molestiae quas autem facere. Aperiam nulla magni perferendis non eos odit. In voluptas ut reprehenderit dolores perferendis reprehenderit architecto.','1992-07-02 21:52:45','1990-11-29 02:46:28'),
('6','6','0','1','Consectetur accusantium cum officiis voluptatem velit. Ut atque exercitationem delectus maxime expedita. Fuga quam vero ipsam ipsam eos reiciendis numquam.','2002-06-05 01:22:57','1992-10-05 19:46:28'),
('7','7','1','0','Molestiae harum nobis aut alias aut. Cumque omnis inventore ab mollitia maiores. Dolorem iure voluptatum et aut error nisi doloremque. Exercitationem aut cumque accusamus doloribus quia modi ducimus.','1980-12-28 10:33:37','2005-12-15 23:56:53'),
('8','8','1','1','Assumenda magni maiores magnam recusandae reiciendis sapiente. Quod qui eum laboriosam. Vel atque ad hic praesentium similique. Accusantium sunt eius veniam molestias illo sint et.','2016-06-17 16:24:45','2018-06-12 08:55:41'),
('9','9','1','0','Qui sapiente enim necessitatibus. Est id recusandae eum et aut. Suscipit tempora ut ullam saepe. Quam quis sit ipsa iusto.','2012-07-15 12:11:57','1982-11-04 07:17:34'),
('10','10','0','0','Eligendi culpa tenetur tenetur perspiciatis alias quo sequi. Ut dolorum officia et labore alias sed.','2015-01-06 02:36:50','2012-07-01 20:32:38'),
('11','11','1','1','Illo nihil et nobis voluptatum iure tempore nihil. Veniam rem ut dolorem omnis nihil enim sed.','2007-12-07 01:53:02','1973-06-28 19:12:48'),
('12','12','1','1','Modi laborum assumenda ut qui. Asperiores ut ut illum id molestiae debitis repellat. Exercitationem quo facilis debitis. Dolore repellat vero iusto iure voluptas laborum dolor. Qui quasi voluptatum doloremque qui modi.','1977-12-31 19:27:57','2002-04-15 08:07:00'),
('13','13','0','0','Ut non alias placeat quasi. Occaecati eum deleniti qui et commodi iusto dignissimos. Placeat quaerat autem laborum libero. Quisquam et necessitatibus necessitatibus ipsa soluta aut.','2004-12-03 21:32:18','2004-10-29 22:24:07'),
('14','14','1','0','Ratione dolorem laudantium consequatur voluptas. Doloribus ut itaque nam consectetur. Asperiores consectetur nobis maiores tempora.','2008-01-31 19:37:37','2007-04-30 21:44:31'),
('15','15','0','0','Odio minus voluptatem fuga iusto perferendis est ea voluptatum. Ratione rerum totam sunt temporibus. Repellendus aspernatur quia omnis. Vitae illo optio iste a provident sed a eos. Velit veritatis non commodi repellat aut.','1979-10-23 15:37:02','2004-05-13 20:57:12'),
('16','16','1','1','Eum cupiditate recusandae nostrum amet. Ea nisi totam adipisci consequuntur culpa. Aliquid necessitatibus numquam eligendi sit iste ut. Quisquam doloribus enim aut molestiae maxime dolore et sed.','1982-07-11 06:53:40','1975-07-29 22:39:33'),
('17','17','0','0','Voluptatibus inventore sit dolore modi deleniti inventore. Iste in distinctio nobis nihil deleniti sequi. Quibusdam tempore cupiditate explicabo et.','2009-05-20 12:21:41','2011-04-11 02:57:13'),
('18','18','1','1','Nam sint eum et voluptatum. Rerum minus beatae exercitationem suscipit voluptatem quibusdam. Delectus cupiditate culpa illo in quia est.','2019-06-02 13:55:35','1977-10-31 05:53:58'),
('19','19','0','0','Molestias deleniti consectetur voluptas provident omnis. Nihil ut autem dolorem debitis vitae qui consequatur. Sint laboriosam voluptatem sed minus nemo. Voluptate blanditiis illo quia. Ipsa repudiandae hic qui sit.','2013-02-06 19:56:19','2006-12-06 00:34:32'),
('20','20','0','1','Amet illo aut ea ut alias. Molestiae quod consequatur sunt earum et ullam nemo eos. Aut corrupti ratione ut eum deleniti. Fugit nisi expedita aperiam dolorem ut.','1973-03-03 10:09:00','2012-10-29 12:19:05'),
('21','21','0','1','Eligendi nisi maxime qui expedita. Voluptates praesentium voluptatem sunt sit ipsum eum. Quod tempore et sed. Asperiores vel unde neque dolor explicabo odit.','1986-03-21 02:40:40','1980-03-06 10:07:30'),
('22','22','0','1','Voluptatibus modi libero rerum quis. Ut perferendis animi et sed. Officia quam molestias quis. Eligendi ut neque qui consequatur.','1990-06-29 16:01:46','2018-03-08 21:20:25'),
('23','23','1','0','Et accusantium eum accusamus corrupti quas hic eius. Et et est et facilis et. Reiciendis dolor fugit nulla voluptatem facilis. Praesentium inventore doloribus deserunt dolor vitae.','1989-11-23 15:07:21','1998-07-25 00:33:20'),
('24','24','1','1','Animi voluptatem mollitia aut ut nemo dicta sapiente. Velit maiores vitae voluptas omnis omnis sequi aut. Fuga est earum laboriosam quo eos exercitationem illo. Laudantium voluptates ad ex eveniet sed.','1992-05-04 01:37:19','2018-02-08 18:13:19'),
('25','25','1','0','Hic et id consequatur alias consequatur est et. Et voluptas commodi voluptates. Non ea quia accusantium natus dolorem illo. Ducimus at sequi ut et molestiae et. Ipsum id in occaecati.','1988-06-06 14:10:22','1998-10-01 13:12:38'),
('26','26','1','0','A nemo distinctio saepe ea et rerum. Consectetur corporis culpa facere aut repellat eum ab voluptatum. Quasi omnis quos cumque voluptatem.','2016-11-17 17:11:00','2007-08-19 20:40:14'),
('27','27','1','0','Perspiciatis nihil facilis laborum dignissimos odio occaecati. Praesentium a rerum cupiditate qui voluptatem voluptas. Necessitatibus quis expedita aliquid optio dolores. Inventore consectetur rerum magnam dolor sapiente distinctio.','1983-08-27 16:17:43','1982-03-15 23:36:19'),
('28','28','0','1','Similique ut est aut amet similique fuga. Dolor labore et doloremque exercitationem aperiam quo rem. Id alias dicta voluptatem et voluptas voluptatem veritatis quaerat. Et ab nisi natus cumque ut odit sunt.','2013-04-02 17:05:06','1978-06-19 13:17:26'),
('29','29','0','0','Non et omnis sunt. Corrupti odit suscipit labore assumenda. Veniam incidunt quasi non numquam est aliquam sit illum. Libero rerum voluptate similique minus quia.','1997-01-19 18:36:13','1970-11-23 02:34:46'),
('30','30','0','0','Repellat mollitia nobis architecto rem quas eum sit sint. Dignissimos eius ipsam exercitationem possimus fugiat molestias. Magnam nobis et necessitatibus nesciunt. Id qui officia voluptatibus illo ut corporis.','1992-03-03 07:36:59','1987-07-12 08:58:02'),
('31','31','1','0','Aperiam sit sunt porro cumque voluptatem. Qui sequi voluptate quis est molestias. Asperiores vel excepturi eius nihil numquam dolorem.','1976-02-12 12:26:14','2009-04-04 22:33:08'),
('32','32','0','1','Quasi necessitatibus velit dolores. Unde repellat aut eos nostrum sapiente quis deserunt. Ipsa labore esse natus dolorem voluptatem laboriosam dolorem.','2009-07-07 05:01:27','2019-07-24 08:22:27'),
('33','33','0','0','Omnis et sit commodi dolor qui. Et amet maiores nisi. Et quisquam voluptas repudiandae iure.','1980-02-04 19:53:07','2008-02-12 01:59:37'),
('34','34','0','0','Maiores excepturi est omnis et porro. Sint aut corrupti odit est. Sint sed veniam omnis. Beatae veniam error officia qui.','2009-10-17 06:12:32','1975-03-11 05:24:45'),
('35','35','0','0','Quasi dolorem consequatur iste ea fugiat itaque laboriosam. Ea enim repudiandae ullam omnis maxime hic dolores eum. Cumque amet minima et. Autem optio delectus culpa iure earum cumque rem.','2011-02-07 19:43:23','1992-12-30 21:54:52'),
('36','36','0','0','Labore sunt nihil maxime necessitatibus voluptatibus reiciendis optio. Perspiciatis voluptates et facilis labore sapiente at.','1974-01-22 18:06:04','1995-07-06 03:52:14'),
('37','37','0','1','Fuga tenetur et eos repellendus optio. Autem voluptatem ea autem est doloremque quis qui. Nobis itaque est officia alias quos dolorum animi blanditiis. Non aspernatur officiis dolorem modi aspernatur magni.','1974-10-24 05:23:58','1996-04-29 06:48:30'),
('38','38','0','1','Provident vitae eveniet incidunt rem enim repellendus commodi. Accusantium iusto perferendis iure praesentium. Consequatur ut id et et quia placeat minus voluptatem. Voluptatem tempore dolorum nihil mollitia voluptatem consequatur provident.','2017-03-20 01:47:54','1979-10-29 02:34:24'),
('39','39','0','0','Voluptate earum fugiat aut voluptatem in iste. Perspiciatis officiis et eum voluptatem quia totam. Ut dolorum tenetur rerum et vel voluptatem. Aut vero esse iste.','1970-08-26 06:18:33','2016-12-29 01:51:50'),
('40','40','1','0','Perspiciatis qui ut quia ducimus. Modi maxime veniam iure fugit natus laborum. Voluptate optio nihil rerum. Ea quae esse accusantium.','2011-02-12 03:50:04','2012-07-07 12:32:46'),
('41','41','1','0','Tempora minus deserunt voluptas excepturi dignissimos inventore qui inventore. Ipsa quo atque laudantium rerum natus. Dolor amet temporibus reiciendis. Nesciunt voluptatem odit est nostrum magni eos magnam et.','1985-02-09 21:21:55','2008-11-15 09:04:14'),
('42','42','0','1','Accusantium unde aut eius eum voluptas. Quibusdam nihil quas qui aut quia. Aliquam quod nihil suscipit hic ut et est. Et assumenda ut aut corrupti soluta nam.','2006-04-28 23:57:51','1976-10-31 18:56:00'),
('43','43','0','1','Assumenda earum ex beatae consequatur veritatis. Quae voluptas rerum enim saepe.','1970-06-05 17:04:59','1990-11-02 11:53:06'),
('44','44','0','1','Autem soluta quos fuga dolores vitae esse et. At facere unde incidunt odit. At natus est esse quasi sint. Quia eos error perspiciatis laboriosam vel quia veritatis.','1987-03-08 17:56:49','1983-11-02 08:50:00'),
('45','45','0','1','Optio et ducimus cupiditate laudantium amet eum non. Magnam cumque sunt consequatur consectetur. Dolor mollitia corporis fugiat porro ipsam. Nostrum ex esse cumque animi et.','1984-04-22 01:02:12','1974-12-05 08:32:28'),
('46','46','0','0','Consectetur eligendi modi placeat libero id. Adipisci quo a eum ut ipsam ullam. Ad et odit voluptatibus eligendi.','1981-08-18 13:50:35','1975-03-01 22:41:44'),
('47','47','0','1','Blanditiis magni magnam maiores. Non voluptates possimus nisi sunt. Earum cum alias praesentium in. Est perferendis eum nisi vero culpa praesentium repellat.','2008-02-09 04:06:29','1973-05-09 00:28:25'),
('48','48','1','1','Est dicta dolor enim repudiandae officia ea. Quam corrupti voluptas eum ducimus. Suscipit et nihil voluptas iste. Cupiditate asperiores modi provident enim sapiente. Aliquam suscipit ipsum quis suscipit vero eius.','1994-07-29 11:33:59','1988-09-28 06:42:29'),
('49','49','1','1','Occaecati a fugit tempora est asperiores. Quibusdam ducimus itaque libero ea illum atque voluptatem. Odio inventore recusandae magni quod.','1998-01-22 17:30:54','1984-05-08 16:15:25'),
('50','50','0','1','Eveniet quaerat expedita aut vitae. Quo blanditiis a in et quia. Officia fugiat iusto est explicabo. Mollitia quaerat ipsam nostrum et dolores et.','2005-08-08 20:21:04','2017-09-17 18:25:42'),
('51','51','0','1','Quod ab omnis dolorum laboriosam illum odio veritatis. Eos nisi qui quo quia libero. Dicta nemo rerum ducimus distinctio atque ipsam consequatur. Sequi architecto adipisci ut qui.','2018-09-20 06:48:38','1990-12-27 14:34:51'),
('52','52','1','0','Numquam voluptatum ab eum. Nostrum modi placeat nostrum et. Deserunt laudantium asperiores voluptas nulla quidem cupiditate facere.','2004-05-28 14:03:27','2000-11-04 19:20:09'),
('53','53','1','0','Repudiandae quisquam nisi aut enim eos dicta. Deleniti doloribus nulla nemo quasi mollitia distinctio. Magnam quae molestiae sapiente neque voluptates. Dolores aliquid quisquam alias.','1981-09-08 18:53:04','1990-08-13 04:18:25'),
('54','54','1','0','Ut ea voluptate ad veniam officiis ipsam voluptatem. Porro sunt aut aut voluptas.','1987-08-18 01:46:49','2003-11-15 07:13:41'),
('55','55','1','0','Ut eos veritatis hic porro quia non quia. Eligendi explicabo temporibus consequuntur ut magnam. Corporis sunt quo voluptate tempore beatae facere modi. Veritatis eaque quo maxime rerum et quia.','2011-08-12 10:38:36','2002-01-22 20:10:16'),
('56','56','0','0','Quo doloremque beatae voluptatibus aut veritatis autem cumque. Vel natus accusantium autem facilis. Inventore quam hic ut enim. Voluptates ab qui illo nam. Dolorem aut in sint incidunt.','1975-12-03 17:24:01','2011-03-10 06:25:56'),
('57','57','1','0','Dolorem voluptatem et est voluptatem laudantium. Ut est numquam reprehenderit iste non reprehenderit. Velit maiores dolor omnis soluta non molestiae harum explicabo. Et quia enim aut delectus quia molestiae nam.','2000-01-27 03:56:05','1980-07-19 13:07:32'),
('58','58','1','0','Facere ullam vero atque ducimus rerum earum totam. Repellendus numquam quia expedita nisi. Laborum iusto alias dolores aperiam placeat. Unde alias fugit ut dolor aliquam.','1996-02-08 03:55:22','1979-12-13 11:36:13'),
('59','59','1','0','Asperiores praesentium exercitationem et voluptatum consequatur molestiae. Est qui quos itaque consectetur voluptatem. Eos soluta est omnis aut nihil non illum.','2011-09-30 03:27:45','2003-09-25 16:50:42'),
('60','60','0','1','Veniam ad quia nostrum necessitatibus deleniti. Et illum in neque soluta dignissimos. Et rem quo nisi reprehenderit omnis praesentium quas delectus. Vitae exercitationem beatae libero quas explicabo quis.','1972-09-28 10:29:43','1983-06-30 10:35:34'),
('61','61','1','0','Cupiditate qui et sequi eos et. Earum et eos voluptates a dolor voluptatem.','1979-10-27 12:21:12','2000-08-22 22:59:09'),
('62','62','0','0','Voluptas rerum similique aut aut. Dolorem velit est ad et modi autem. Nulla pariatur quia cumque omnis et ad inventore.','2005-02-24 08:57:00','1988-02-27 07:32:43'),
('63','63','0','0','Architecto facere et maxime et quia aut expedita. Sint veniam provident corporis a molestiae quia adipisci. In sit labore quis odit dolores. Eos inventore sit sit adipisci debitis.','1981-05-13 05:58:27','2002-03-31 12:12:20'),
('64','64','0','1','Nulla omnis voluptates molestias ab atque. Voluptates cum fuga nam enim sint repellat in molestias. Minus qui natus odio et corrupti.','1993-02-02 03:46:45','2018-06-23 08:46:13'),
('65','65','1','0','Necessitatibus voluptatem harum ipsa. Exercitationem laborum labore commodi quisquam. Deserunt sit sapiente quaerat quia et quisquam.','1984-11-13 01:39:49','2007-11-25 09:23:59'),
('66','66','1','0','Vel rem sint unde sed quis eum. Consectetur ipsum quia praesentium non eum. Unde magnam explicabo quo.','2005-12-21 00:00:53','1982-04-27 09:13:45'),
('67','67','0','1','Doloribus et odit voluptatem sed ab iure ab. Qui occaecati deleniti autem quod labore. Qui voluptas quisquam minus quia. Necessitatibus ipsum quos consequatur qui quaerat.','1994-10-05 07:39:49','2016-04-10 05:18:59'),
('68','68','1','1','Delectus provident dolor nostrum similique. Quis ea hic tempora eligendi sint sed ut. Non eos reiciendis veniam qui at eum consequatur. Veritatis tempore accusamus quae laudantium.','1970-07-05 18:49:59','1979-10-04 19:04:27'),
('69','69','0','1','Dolores cumque vel perspiciatis ut. Quia eum eos cumque. Quibusdam fugit consequatur esse consectetur quo ratione nemo.','2003-02-18 01:56:15','1976-10-07 16:21:58'),
('70','70','1','0','Qui quisquam perferendis sapiente ducimus qui dolorem nihil. Totam quod ea tempore provident ut quia illum sequi. Accusamus rerum voluptatibus cumque dolore sunt sit non excepturi. Rem repellat consectetur et velit.','1989-06-13 08:47:28','1999-02-03 14:20:11'),
('71','71','1','1','Ducimus cupiditate eum voluptates quasi cumque praesentium ullam. Culpa aut odio harum eum.','1980-11-14 17:04:09','1990-07-09 11:23:27'),
('72','72','0','1','Ad nihil voluptatem distinctio mollitia quia ut maxime. Eius qui iste et officiis autem dolor. Voluptas animi consectetur porro rem ut quis enim.','2012-07-11 19:14:06','1996-02-07 10:09:31'),
('73','73','1','0','Rerum assumenda ad dolore odio asperiores ab qui. Optio praesentium nihil illo similique quos. Nam sit vitae omnis consequatur dolor delectus ipsam. Cum enim accusamus hic aut officiis aut et.','1989-04-20 08:16:52','1977-05-24 12:32:44'),
('74','74','0','0','Maiores sunt consequatur doloribus doloremque. Laborum temporibus facilis mollitia qui animi dicta nesciunt. Dolor temporibus iure qui quibusdam accusantium sequi nobis. Consequuntur quibusdam repellendus sed id omnis minus. Aut consequatur cumque veritatis in totam nam.','1992-10-08 12:32:54','2007-02-04 05:12:58'),
('75','75','0','1','Adipisci quaerat consequatur rerum. Quo tempore voluptatum et repellendus. Id temporibus pariatur accusamus iure. Sint officia dignissimos magnam officia non perferendis voluptatem. Id sint illo ea molestiae enim quia vitae.','1998-04-29 19:06:38','1975-12-16 12:21:49'),
('76','76','0','1','Odio modi maxime error et est eveniet ab ratione. Dolorem corporis voluptatem sed. Fugiat libero numquam beatae a dolores laboriosam. Et provident dolores nemo. Possimus inventore autem nam.','1983-08-28 08:23:37','1981-07-21 03:52:46'),
('77','77','0','1','Labore impedit modi dolor numquam enim veniam. Qui atque consequuntur assumenda nostrum magni.','1985-09-18 18:03:25','1980-07-30 19:12:47'),
('78','78','0','1','Quibusdam voluptatem at consequatur aspernatur ab sint. Vel et dolores aut architecto. Voluptatem ipsa libero saepe sunt et facere et. Dolor incidunt voluptatem odit perferendis veritatis et. Veniam eum temporibus expedita quo consequuntur rerum nihil quasi.','1998-04-10 01:29:56','1989-06-16 23:01:44'),
('79','79','1','1','Minima officia ut tenetur ut ex incidunt asperiores rerum. Ad officia culpa optio eius ut.','1984-09-06 03:38:34','2014-03-17 03:03:21'),
('80','80','1','0','Repudiandae hic quos et. Delectus aut non occaecati ex. Ex voluptatem culpa a quae voluptas.','2004-09-12 15:23:44','2015-05-06 11:28:45'),
('81','81','0','1','Sed voluptatem et voluptas voluptatem ipsum optio voluptatem. Asperiores consectetur tempore illo similique. Beatae aut ea omnis.','2006-05-05 00:44:26','2002-06-17 00:05:24'),
('82','82','0','0','Aut ea molestias temporibus vitae amet eos reprehenderit qui. Cum adipisci corporis consectetur est perferendis quia. Labore sint odio natus dolorum quae iusto magni. Quo distinctio ut dolores sint.','2008-11-29 10:20:53','1983-11-02 04:12:08'),
('83','83','1','0','Maiores veniam quo rerum maiores quaerat. Iste similique explicabo perspiciatis consequatur cupiditate nemo quas eos.','1984-10-10 06:52:45','2016-11-14 12:44:15'),
('84','84','1','1','Sint qui id cumque facilis neque voluptatem. Optio ut ullam quo eos magni sit. Ut harum autem quibusdam.','1976-01-05 05:14:30','1993-10-17 11:51:18'),
('85','85','1','1','Et in molestiae aperiam qui id velit facilis. Sequi ut quis quidem illo. Distinctio possimus asperiores molestias sunt.','1976-09-30 01:15:51','1983-03-16 04:06:39'),
('86','86','1','1','Debitis et quidem et. Blanditiis explicabo voluptas itaque dolor sint vel et asperiores. Totam repellendus maiores et officiis. Laudantium ut occaecati itaque id.','2010-08-15 16:36:45','1998-02-19 01:18:30'),
('87','87','0','0','Fuga laudantium maiores ut illum eum velit. Facere et laboriosam et nihil fugit alias. Ratione eum sunt et qui et.','1970-08-18 08:11:15','1997-03-18 06:45:04'),
('88','88','0','1','Deserunt eos ullam cumque qui. Doloremque libero sed qui sequi. Aut vitae repellat cum iste ut.','1972-02-24 19:13:16','1988-11-18 15:24:52'),
('89','89','1','0','Qui esse natus laudantium nesciunt ea magni tenetur. Suscipit vel quo eum sed expedita architecto. Ea omnis iure aut dolorem voluptate dolorum.','1985-12-01 15:47:05','1999-03-10 00:38:29'),
('90','90','1','1','Iste praesentium quo non sed dolor aut voluptatem. Aut deserunt tenetur provident cupiditate vel possimus illo voluptate. Facilis autem rerum autem provident harum praesentium dolor et. Consectetur officiis fugiat ut eos eaque.','2002-08-17 01:25:03','2009-10-30 03:53:31'),
('91','91','0','0','Itaque aut ea nulla. Quae aliquam sit et qui autem. Omnis quo perferendis exercitationem quo fuga eos enim aut. Illum qui non et dicta aperiam est alias ad.','2013-05-07 05:05:00','2007-05-09 07:24:28'),
('92','92','1','0','Architecto ex ipsam et alias tenetur sit dolorum. Ut tempore quidem ut natus consequatur atque doloremque. Voluptatem rem aut aut ut ut. Quia rerum officiis temporibus tempore accusamus sed dolorem.','2016-04-01 15:46:59','1991-09-06 09:12:41'),
('93','93','1','0','Accusamus vel eos qui cumque accusamus eos consequatur praesentium. Possimus necessitatibus incidunt non. Aperiam nihil nobis optio atque sunt debitis debitis. Sint deleniti natus similique at.','2006-03-07 17:08:56','2010-10-25 09:07:58'),
('94','94','1','0','Voluptatem aut dolor id excepturi sit sed. Rerum et non quia amet illum aut ratione et. Sit facilis quam necessitatibus quam.','1973-06-15 17:41:33','1990-09-24 14:46:38'),
('95','95','0','1','Ut id non et est sequi non. Neque quia architecto minus et sapiente cumque. Consequatur voluptas harum nesciunt dolore nobis.','1979-06-30 05:37:30','2001-03-10 21:51:12'),
('96','96','1','0','Est ducimus vitae excepturi enim. Praesentium possimus minus voluptatibus. Aut ab soluta inventore minima quis at. Ex et aut quo cupiditate nemo tempore.','1971-11-19 17:09:12','1994-02-19 20:12:27'),
('97','97','0','1','Et aut reiciendis autem dicta. Ullam sed officiis ea iusto qui molestias. Laborum quo officia laboriosam fugit. Alias est sapiente ullam illo ipsum dicta sunt tenetur.','1987-05-12 23:38:15','1983-09-11 07:36:56'),
('98','98','0','1','Et hic nesciunt iste repellendus dolores debitis eius. Molestiae sapiente quis laborum illum aut corporis labore. Dolores non doloribus molestias et perspiciatis. Quis voluptatibus ullam reprehenderit ea officiis voluptatem.','1971-06-10 17:51:05','2018-07-02 16:08:05'),
('99','99','0','1','Repellendus non qui cupiditate culpa aliquam. Dolorem autem quaerat non explicabo est. Unde nesciunt error ut dolor qui. Rerum et ipsa praesentium soluta sunt.','2017-06-27 08:06:34','1993-12-15 04:00:28'),
('100','100','0','1','Sint quis perspiciatis velit eum ut incidunt perferendis. Enim incidunt non facere odit est consequuntur. Nihil accusamus officia nisi et quia fugit odit. Recusandae quo natus repudiandae vel necessitatibus eligendi.','2009-07-11 12:58:58','1992-02-25 06:30:17'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

