-- MySQL dump 10.13  Distrib 5.6.21, for Win32 (x86)
--
-- Host: localhost    Database: cakepanel
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cms_accounts`
--

DROP TABLE IF EXISTS `cms_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` tinyint(3) unsigned NOT NULL,
  `username` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_accounts`
--

LOCK TABLES `cms_accounts` WRITE;
/*!40000 ALTER TABLE `cms_accounts` DISABLE KEYS */;
INSERT INTO `cms_accounts` VALUES (1,1,1,'admin','admin@yahoo.com','169e781bd52860b584879cbe117085da596238f3','2016-08-25 12:12:57','2013-01-04 00:00:00',1,'2014-05-05 15:15:38',1);
INSERT INTO `cms_accounts` VALUES (2,2,2,'bazocc4','andybasuki88@gmail.com','d82dff1679e0137a0bab60cc67cc6a2ad36f10a0','2016-06-02 09:46:22','2013-01-15 03:42:56',1,'2016-05-23 13:18:51',2);
INSERT INTO `cms_accounts` VALUES (3,2,3,'regular1','regular@yahoo.com','d2705e541f5988c37de5ceb31735a535d5994777','2013-01-17 11:23:37','2013-01-15 04:17:47',2,'2014-07-24 11:05:12',1);
INSERT INTO `cms_accounts` VALUES (7,3,2,'hanatania8','hanatania@yahoo.com','29536df66160e1ff6a6fe6e0395dd8767140657b','2014-07-24 11:40:17','2014-07-24 11:06:29',1,'2014-07-24 11:40:30',7);
/*!40000 ALTER TABLE `cms_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_entries`
--

DROP TABLE IF EXISTS `cms_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_type` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `main_image` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '1',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=902 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_entries`
--

LOCK TABLES `cms_entries` WRITE;
/*!40000 ALTER TABLE `cms_entries` DISABLE KEYS */;
INSERT INTO `cms_entries` VALUES (1,'pages','About Us','about-us','<p>\r\n	This is the story of our company.<br />\r\n	Good you.</p>\r\n',4,0,1,0,'2013-01-15 04:14:04',1,'2015-06-10 09:52:33',1,548,'en-1');
INSERT INTO `cms_entries` VALUES (2,'media','Chrysanthemum','chrysanthemum',NULL,0,0,1,0,'2013-01-15 04:14:43',2,'2013-01-15 04:14:43',2,2,'');
INSERT INTO `cms_entries` VALUES (4,'media','Desert','desert',NULL,0,0,1,0,'2013-01-15 04:14:44',2,'2013-01-15 04:14:44',2,4,'');
INSERT INTO `cms_entries` VALUES (40,'media','darth-maul-wall','darth-maul-wall',NULL,0,0,1,0,'2013-01-15 06:04:17',1,'2013-01-19 08:55:08',1,40,'');
INSERT INTO `cms_entries` VALUES (6,'books','World War II Cont','world-war-ii','<p>This is the full story of world war II in America.</p>\r\n',2,0,1,15,'2013-01-15 04:48:37',1,'2016-06-14 14:09:07',1,84,'en-6');
INSERT INTO `cms_entries` VALUES (7,'media','Lighthouse','lighthouse',NULL,0,0,1,0,'2013-01-15 04:58:07',1,'2014-11-20 16:45:06',1,7,'en-7');
INSERT INTO `cms_entries` VALUES (26,'media','9037147_l','9037147-l',NULL,0,0,1,0,'2013-01-15 06:02:20',1,'2013-01-15 06:02:20',1,26,'');
INSERT INTO `cms_entries` VALUES (9,'news','The Death of John EN','the-death-of-john-en','<p>In the 1996, there was a big war between John Maxwell and Paul Ruthridge.</p>\r\n\r\n<p>And then, John struggled to won against his enemy.</p>\r\n\r\n<p>Finally in 1997, there was an intruption about this war.</p>\r\n',7,6,0,0,'2013-01-15 04:59:41',1,'2016-06-14 14:14:23',1,73,'en-9');
INSERT INTO `cms_entries` VALUES (27,'media','10266023_m','10266023-m',NULL,0,0,1,0,'2013-01-15 06:02:21',1,'2013-01-15 06:02:21',1,27,'');
INSERT INTO `cms_entries` VALUES (28,'media','11034113_m','11034113-m',NULL,0,0,1,0,'2013-01-15 06:02:21',1,'2013-01-15 06:02:21',1,28,'');
INSERT INTO `cms_entries` VALUES (29,'media','4440611861_d8494f0a1c_b','4440611861-d8494f0a1c-b',NULL,0,0,1,0,'2013-01-15 06:02:22',1,'2013-01-15 06:02:22',1,29,'');
INSERT INTO `cms_entries` VALUES (30,'media','blur','blur',NULL,0,0,1,0,'2013-01-15 06:02:59',1,'2013-01-15 06:07:25',1,30,'');
INSERT INTO `cms_entries` VALUES (31,'media','celebration-3day','celebration-3day',NULL,0,0,1,0,'2013-01-15 06:03:00',1,'2013-01-15 06:07:25',1,31,'');
INSERT INTO `cms_entries` VALUES (32,'media','CaterPlate_with_Utensils','caterplate-with-utensils',NULL,0,0,1,0,'2013-01-15 06:03:01',1,'2013-01-15 06:07:25',1,32,'');
INSERT INTO `cms_entries` VALUES (33,'media','bokeh_art_by_noobieku','bokeh-art-by-noobieku',NULL,0,0,1,0,'2013-01-15 06:03:01',1,'2013-01-15 06:07:25',1,33,'');
INSERT INTO `cms_entries` VALUES (34,'media','Bonsai_Stock_by_Lostfiniel','bonsai-stock-by-lostfiniel',NULL,0,0,1,0,'2013-01-15 06:03:02',1,'2013-01-15 06:07:25',1,34,'');
INSERT INTO `cms_entries` VALUES (35,'media','Christmas_tree_sxc_hu','christmas-tree-sxc-hu',NULL,0,0,1,0,'2013-01-15 06:03:03',1,'2013-01-15 06:07:25',1,35,'');
INSERT INTO `cms_entries` VALUES (36,'media','contact','contact',NULL,0,0,1,0,'2013-01-15 06:04:15',1,'2013-01-15 06:07:25',1,36,'');
INSERT INTO `cms_entries` VALUES (37,'media','Fire-Stock-Texture','fire-stock-texture',NULL,0,0,1,0,'2013-01-15 06:04:16',1,'2013-01-15 06:07:25',1,37,'');
INSERT INTO `cms_entries` VALUES (38,'media','dep_2160234-Abstract-sketch-in-monochrome-colors','dep-2160234-abstract-sketch-in-monochrome-colors',NULL,0,0,1,0,'2013-01-15 06:04:16',1,'2013-01-15 06:07:25',1,38,'');
INSERT INTO `cms_entries` VALUES (39,'media','darth-maul-1-0','darth-maul-1-0',NULL,0,0,1,0,'2013-01-15 06:04:16',1,'2013-01-15 06:07:25',1,39,'');
INSERT INTO `cms_entries` VALUES (41,'media','hot-coffee-wallpapers_8908_1680x1050','hot-coffee-wallpapers-8908-1680x1050',NULL,0,0,1,0,'2013-01-15 06:04:17',1,'2014-11-20 16:45:06',1,41,'en-41');
INSERT INTO `cms_entries` VALUES (42,'media','lily_valley3_22896791_by_stockproject1-d30nxz4','lily-valley3-22896791-by-stockproject1-d30nxz4',NULL,0,0,1,0,'2013-01-15 06:04:18',1,'2014-11-20 16:45:06',1,42,'en-42');
INSERT INTO `cms_entries` VALUES (43,'media','Organic_Coffee_Bean_Sack','organic-coffee-bean-sack',NULL,0,0,1,0,'2013-01-15 06:04:19',1,'2014-11-20 16:45:06',1,44,'en-43');
INSERT INTO `cms_entries` VALUES (44,'media','resize_3d_cartoon_pirate','resize-3d-cartoon-pirate',NULL,0,0,1,0,'2013-01-15 06:04:20',1,'2014-11-20 16:45:06',1,43,'en-44');
INSERT INTO `cms_entries` VALUES (45,'media','resize_3d_scary_aliens','resize-3d-scary-aliens',NULL,0,0,1,0,'2013-01-15 06:04:20',1,'2014-11-20 16:45:06',1,45,'en-45');
INSERT INTO `cms_entries` VALUES (46,'media','resize_florian_new_02','resize-florian-new-02',NULL,0,0,1,0,'2013-01-15 06:04:20',1,'2014-11-20 16:46:34',1,137,'en-46');
INSERT INTO `cms_entries` VALUES (47,'media','Smoke_Stock_21_by_hatestock','smoke-stock-21-by-hatestock',NULL,0,0,1,0,'2013-01-15 06:04:21',1,'2014-11-20 16:45:06',1,48,'en-47');
INSERT INTO `cms_entries` VALUES (48,'media','Smoke-stock1191','smoke-stock1191',NULL,0,0,1,0,'2013-01-15 06:04:22',1,'2014-11-20 16:46:34',1,76,'en-48');
INSERT INTO `cms_entries` VALUES (49,'media','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005',NULL,0,0,1,3,'2013-01-15 06:04:23',1,'2015-01-21 10:25:39',1,116,'en-49');
INSERT INTO `cms_entries` VALUES (50,'media','20110530-061908','20110530-061908',NULL,0,0,1,2,'2013-01-15 06:05:40',1,'2015-03-18 11:29:19',1,117,'en-50');
INSERT INTO `cms_entries` VALUES (51,'media','20110610-103819','20110610-103819',NULL,0,0,1,0,'2013-01-15 06:05:40',1,'2014-11-20 16:46:34',1,50,'en-51');
INSERT INTO `cms_entries` VALUES (52,'media','20110610-103453','20110610-103453',NULL,0,0,1,1,'2013-01-15 06:05:41',1,'2014-11-21 10:37:21',1,129,'en-52');
INSERT INTO `cms_entries` VALUES (53,'media','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7',NULL,0,0,1,0,'2013-01-15 06:05:42',1,'2014-11-20 16:46:34',1,49,'en-53');
INSERT INTO `cms_entries` VALUES (54,'media','6462d28e02631147cd6ee51a744db6c6','6462d28e02631147cd6ee51a744db6c6',NULL,0,0,1,0,'2013-01-15 06:09:23',1,'2014-11-20 16:46:34',1,75,'en-54');
INSERT INTO `cms_entries` VALUES (55,'media','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid',NULL,0,0,1,0,'2013-01-15 06:09:23',1,'2014-11-20 16:46:34',1,51,'en-55');
INSERT INTO `cms_entries` VALUES (56,'media','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm',NULL,0,0,1,0,'2013-01-15 06:09:24',1,'2014-11-20 16:46:34',1,130,'en-56');
INSERT INTO `cms_entries` VALUES (57,'media','batman_by_frogbillgo-d2yoamc','batman-by-frogbillgo-d2yoamc',NULL,0,0,1,3,'2013-01-15 06:09:24',1,'2015-01-21 10:02:23',1,83,'en-57');
INSERT INTO `cms_entries` VALUES (58,'media','Spiderman_by_PatC_14','spiderman-by-patc-14',NULL,0,0,1,0,'2013-01-15 06:09:24',1,'2014-11-20 16:45:06',1,47,'en-58');
INSERT INTO `cms_entries` VALUES (59,'media','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb',NULL,0,0,1,0,'2013-01-15 06:09:25',1,'2014-11-20 16:46:34',1,118,'en-59');
INSERT INTO `cms_entries` VALUES (60,'blogs','War Blog IV','war-blog-iv','<p>This is the blog of war</p>\r\n',49,6,1,0,'2013-01-15 06:13:51',1,'2015-03-18 12:11:38',1,568,'en-60');
INSERT INTO `cms_entries` VALUES (61,'books','Perang Dunia 2','perang-dunia-2','<p>Ini adalah kisah penuh dari perang dunia 2 di USA.</p>\r\n',2,0,1,7,'2013-01-15 06:38:44',1,'2016-03-23 10:22:25',1,61,'id-6');
INSERT INTO `cms_entries` VALUES (574,'blogs','Morning Blog ID','morning-blog-id','<p>just a morning blog, thx</p>\r\n',54,61,1,0,'2015-03-18 11:29:19',1,'2015-03-18 12:11:38',1,579,'id-160');
INSERT INTO `cms_entries` VALUES (573,'media','20110530-061908','20110530-061908-7',NULL,0,50,1,0,'2015-03-18 11:26:37',1,'2015-03-18 11:29:19',1,573,'en-573');
INSERT INTO `cms_entries` VALUES (572,'news','The Resurrection ID','the-resurrection-id','<p>There&#39;s a news that exist a medicine can make human alive from death.</p>\r\n\r\n<p>And then, [to be continue]</p>\r\n',26,61,1,0,'2015-03-18 10:13:01',1,'2016-06-14 14:13:24',1,571,'id-73');
INSERT INTO `cms_entries` VALUES (64,'pages','Contact Us','contact-us','<p>\r\n	Ini adalah alamat baru perusahaan kami.</p>\r\n',36,0,1,0,'2013-01-15 10:24:31',1,'2015-06-10 09:52:33',1,526,'en-64');
INSERT INTO `cms_entries` VALUES (65,'pages','Home','home','<p>\r\n	Welcome to our web pages.</p>\r\n<p>\r\n	In here, you can find a lot of games entertainments.</p>\r\n',27,0,1,0,'2013-01-15 10:42:02',1,'2015-06-10 09:52:33',1,556,'en-65');
INSERT INTO `cms_entries` VALUES (66,'pages','Beranda','beranda','<p>\r\n	Selamat datang di website kami.</p>\r\n<p>\r\n	Di sini, anda semuanya dapat menemukan banyak hiburan.</p>\r\n',27,0,1,0,'2013-01-16 03:22:56',1,'2015-03-17 17:03:03',1,552,'id-65');
INSERT INTO `cms_entries` VALUES (67,'pages','Tentang Kita','tentang-kita','<p>\r\n	Ini adalah suatu kisah mengenai perusahaan kami.</p>\r\n',4,0,1,0,'2013-01-16 03:23:48',1,'2015-03-17 17:03:03',1,549,'id-1');
INSERT INTO `cms_entries` VALUES (571,'news','Serangan Gerilya ID','serangan-gerilya-id','<p>Nowadays, world is happening with &quot;Gerilya War&quot;</p>\r\n',44,61,1,0,'2015-03-18 10:00:21',1,'2016-06-14 14:12:34',1,581,'id-68');
INSERT INTO `cms_entries` VALUES (70,'books','Dark Magic','dark-magic','<p>this is magic from frontend website.</p>\r\n',56,0,1,5,'2013-01-16 09:15:23',1,'2016-06-07 11:11:35',1,70,'en-70');
INSERT INTO `cms_entries` VALUES (72,'books','tes buku indo','tes-buku-indo','<p>wkwkwk</p>\r\n',37,0,1,2,'2013-01-16 10:05:04',1,'2016-03-23 10:22:25',1,850,'id-72');
INSERT INTO `cms_entries` VALUES (73,'news','The Resurrection EN','the-resurrection-en','<p>There&#39;s a news that exist a medicine can make human alive from death.</p>\r\n\r\n<p>And then, [to be continue]</p>\r\n',26,6,1,0,'2013-01-16 10:18:50',1,'2016-06-14 14:14:09',1,9,'en-73');
INSERT INTO `cms_entries` VALUES (575,'media','Penguins','penguins-5',NULL,0,129,1,0,'2015-03-18 11:34:46',1,'2015-03-18 11:50:50',1,575,'en-575');
INSERT INTO `cms_entries` VALUES (576,'blogs','War Blog ID','war-blog-id','<p>This is the blog of war</p>\r\n',49,61,1,0,'2015-03-18 11:47:29',1,'2015-03-18 12:11:38',1,576,'id-60');
INSERT INTO `cms_entries` VALUES (75,'media','Penguins','penguins',NULL,0,0,1,0,'2013-01-16 10:39:46',1,'2014-11-20 16:46:34',1,53,'en-75');
INSERT INTO `cms_entries` VALUES (76,'media','Koala','koala',NULL,0,0,1,0,'2013-01-16 10:43:31',3,'2014-11-20 16:46:34',3,90,'en-76');
INSERT INTO `cms_entries` VALUES (84,'books','mario bros','mario-bros','<p>this is the best mario comic ever guys.</p>\r\n\r\n<p>Did you know this is our first best seller comic in USA nowadays?</p>\r\n\r\n<p>Fantastic adventure is coming soon.</p>\r\n',59,0,1,4,'2013-01-18 12:35:07',1,'2016-06-14 14:08:41',1,6,'en-84');
INSERT INTO `cms_entries` VALUES (83,'media','Lighthouse','lighthouse-1',NULL,0,0,1,0,'2013-01-18 05:39:37',1,'2014-11-20 16:46:34',1,54,'en-83');
INSERT INTO `cms_entries` VALUES (85,'media','20110610-103453','20110610-103453-2',NULL,0,52,1,0,'2013-01-18 12:35:07',1,'2014-11-21 10:37:21',1,85,'en-85');
INSERT INTO `cms_entries` VALUES (285,'form-group_photo_2','20110530-061908','20110530-061908-4',NULL,50,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,285,'en-285');
INSERT INTO `cms_entries` VALUES (144,'magazine','Body Building Muscle','body-building-muscle','',37,0,1,2,'2013-12-09 16:17:07',1,'2016-03-07 16:02:03',1,144,'en-144');
INSERT INTO `cms_entries` VALUES (87,'media','batman_by_frogbillgo-d2yoamc','batman-by-frogbillgo-d2yoamc-1',NULL,0,57,1,0,'2013-01-18 12:42:49',1,'2013-01-18 12:42:49',1,87,'');
INSERT INTO `cms_entries` VALUES (108,'media','Hydrangeas','hydrangeas',NULL,0,0,1,1,'2013-01-22 11:41:10',1,'2015-01-21 10:17:20',1,131,'en-108');
INSERT INTO `cms_entries` VALUES (89,'media','Lighthouse','lighthouse-3',NULL,0,83,1,0,'2013-01-19 04:40:24',1,'2013-01-20 08:32:03',1,89,'');
INSERT INTO `cms_entries` VALUES (90,'media','Chrysanthemum','chrysanthemum-1',NULL,0,0,1,0,'2013-01-19 05:03:37',1,'2014-11-20 16:46:34',1,57,'en-90');
INSERT INTO `cms_entries` VALUES (145,'magazine','Keep Healthy Keep Fresh','keep-healthy-keep-fresh','',76,0,1,7,'2013-12-09 16:17:31',1,'2016-03-07 16:02:03',1,145,'en-145');
INSERT INTO `cms_entries` VALUES (92,'media','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-1',NULL,0,55,1,0,'2013-01-19 07:12:14',1,'2013-01-19 08:04:08',1,92,'');
INSERT INTO `cms_entries` VALUES (94,'media','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-1',NULL,0,56,1,0,'2013-01-19 08:09:48',1,'2013-01-19 08:09:48',1,94,'');
INSERT INTO `cms_entries` VALUES (95,'media','resize_florian_new_02','resize-florian-new-02-3',NULL,0,46,1,0,'2013-01-19 08:13:57',1,'2013-11-06 10:14:54',1,95,'en-95');
INSERT INTO `cms_entries` VALUES (97,'media','Organic_Coffee_Bean_Sack','organic-coffee-bean-sack-2',NULL,0,43,1,0,'2013-01-19 08:25:57',1,'2013-11-06 10:11:10',1,97,'en-97');
INSERT INTO `cms_entries` VALUES (98,'media','batman_by_frogbillgo-d2yoamc','batman-by-frogbillgo-d2yoamc-3',NULL,0,57,1,0,'2013-01-19 08:25:58',1,'2013-11-06 10:11:11',1,98,'en-98');
INSERT INTO `cms_entries` VALUES (99,'books','tes loro gambar','tes-loro-gambar','',48,0,1,2,'2013-01-19 08:28:10',1,'2016-03-23 10:22:25',1,863,'id-96');
INSERT INTO `cms_entries` VALUES (109,'media','Tulips','tulips',NULL,0,0,1,0,'2013-01-22 11:43:23',1,'2014-11-20 16:46:34',1,58,'en-109');
INSERT INTO `cms_entries` VALUES (340,'books','Koala','koala-1',NULL,76,70,1,0,'2015-01-21 10:09:03',1,'2015-01-21 10:09:04',1,340,'en-340');
INSERT INTO `cms_entries` VALUES (880,'books','Lighthouse','lighthouse-6',NULL,130,84,1,0,'2016-06-14 14:08:41',1,'2016-06-14 14:08:41',1,880,'en-880');
INSERT INTO `cms_entries` VALUES (881,'books','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb-11',NULL,59,84,1,0,'2016-06-14 14:08:41',1,'2016-06-14 14:08:41',1,881,'en-881');
INSERT INTO `cms_entries` VALUES (114,'media','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-2',NULL,0,49,1,0,'2013-02-05 09:40:18',1,'2013-02-13 12:04:52',1,114,'');
INSERT INTO `cms_entries` VALUES (115,'media','20110530-061908','20110530-061908-3',NULL,0,50,1,0,'2013-02-12 11:23:52',1,'2014-11-21 10:36:56',1,115,'en-115');
INSERT INTO `cms_entries` VALUES (116,'media','Thursday20September2012043329slide3','thursday20september2012043329slide3',NULL,0,0,1,0,'2013-04-03 10:44:08',1,'2014-11-20 16:46:34',1,52,'en-116');
INSERT INTO `cms_entries` VALUES (117,'media','Thursday20September2012014818slide1','thursday20september2012014818slide1',NULL,0,0,1,0,'2013-04-03 10:44:37',1,'2014-11-20 16:46:34',1,108,'en-117');
INSERT INTO `cms_entries` VALUES (118,'media','Thursday20September2012043326slide2','thursday20september2012043326slide2',NULL,0,0,1,1,'2013-04-03 10:47:06',1,'2015-03-18 12:11:23',1,59,'en-118');
INSERT INTO `cms_entries` VALUES (130,'media','Lighthouse','lighthouse-2',NULL,0,0,1,0,'2013-07-09 13:51:12',1,'2014-11-20 16:46:34',1,56,'en-130');
INSERT INTO `cms_entries` VALUES (338,'books','Penguins','penguins-1',NULL,75,70,1,0,'2015-01-21 10:09:03',1,'2015-01-21 10:09:03',1,338,'en-338');
INSERT INTO `cms_entries` VALUES (339,'books','resize_florian_new_02','resize-florian-new-02-1',NULL,46,70,1,0,'2015-01-21 10:09:03',1,'2015-01-21 10:09:03',1,339,'en-339');
INSERT INTO `cms_entries` VALUES (129,'media','Penguins','penguins-2',NULL,0,0,1,1,'2013-07-09 13:51:11',1,'2015-03-18 11:50:50',1,55,'en-129');
INSERT INTO `cms_entries` VALUES (131,'media','Tulips','tulips-1',NULL,0,0,1,0,'2013-07-09 13:51:13',1,'2014-11-20 16:46:34',1,109,'en-131');
INSERT INTO `cms_entries` VALUES (133,'media','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-4',NULL,0,49,1,0,'2013-08-12 12:17:46',1,'2015-01-21 10:02:23',1,133,'en-133');
INSERT INTO `cms_entries` VALUES (137,'media','slider','slider',NULL,0,0,1,0,'2013-08-16 15:24:16',1,'2014-11-20 16:45:06',1,46,'en-137');
INSERT INTO `cms_entries` VALUES (138,'media','batman_by_frogbillgo-d2yoamc','batman-by-frogbillgo-d2yoamc-2',NULL,0,57,1,0,'2013-10-24 09:48:24',1,'2015-01-21 10:02:23',1,138,'en-138');
INSERT INTO `cms_entries` VALUES (160,'blogs','Morning Blog EN','morning-blog-en','<p>just a morning blog, thx</p>\r\n',54,6,1,0,'2014-02-04 09:01:45',1,'2015-03-18 12:11:38',1,577,'en-160');
INSERT INTO `cms_entries` VALUES (718,'form-group_photo','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-7',NULL,49,161,1,0,'2015-06-03 11:37:02',1,'2015-06-03 11:37:02',1,718,'en-718');
INSERT INTO `cms_entries` VALUES (161,'magazine','cake magazine','cake-magazine','<p>test minum</p>\r\n\r\n<p>air jeruk segar</p>\r\n\r\n<p>alami lo</p>\r\n',108,0,1,18,'2014-05-08 10:17:12',1,'2016-03-07 16:02:03',1,161,'en-161');
INSERT INTO `cms_entries` VALUES (717,'form-group_photo','20110530-061908','20110530-061908-10',NULL,50,161,1,0,'2015-06-03 11:37:02',1,'2015-06-03 11:37:02',1,717,'en-717');
INSERT INTO `cms_entries` VALUES (716,'form-group_photo','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-9',NULL,56,161,1,0,'2015-06-03 11:37:01',1,'2015-06-03 11:37:01',1,716,'en-716');
INSERT INTO `cms_entries` VALUES (715,'form-group_photo','resize_3d_cartoon_pirate','resize-3d-cartoon-pirate-3',NULL,44,161,1,0,'2015-06-03 11:37:01',1,'2015-06-03 11:37:01',1,715,'en-715');
INSERT INTO `cms_entries` VALUES (714,'form-group_photo','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-6',NULL,55,161,1,0,'2015-06-03 11:37:01',1,'2015-06-03 11:37:01',1,714,'en-714');
INSERT INTO `cms_entries` VALUES (280,'form-group_photo','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-3',NULL,55,145,1,0,'2014-11-21 11:19:30',1,'2014-11-21 11:19:30',1,280,'en-280');
INSERT INTO `cms_entries` VALUES (281,'form-group_photo','Penguins','penguins-4',NULL,129,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,281,'en-281');
INSERT INTO `cms_entries` VALUES (282,'form-group_photo','Chrysanthemum','chrysanthemum-2',NULL,90,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,282,'en-282');
INSERT INTO `cms_entries` VALUES (283,'form-group_photo_2','Hydrangeas','hydrangeas-1',NULL,108,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,283,'en-283');
INSERT INTO `cms_entries` VALUES (284,'form-group_photo_2','Thursday20September2012014818slide1','thursday20september2012014818slide1-1',NULL,117,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,284,'en-284');
INSERT INTO `cms_entries` VALUES (206,'slideshow','slider library','slider-library','',29,0,1,0,'2014-09-03 10:44:11',1,'2014-09-03 10:44:11',1,206,'en-206');
INSERT INTO `cms_entries` VALUES (207,'slideshow','slider coffee','slider-coffee','',43,0,1,0,'2014-09-03 10:46:56',1,'2014-09-03 10:46:56',1,207,'en-207');
INSERT INTO `cms_entries` VALUES (208,'slideshow','slider traffic','slider-traffic','',46,0,0,0,'2014-09-03 10:47:43',1,'2016-06-03 11:24:48',1,208,'en-208');
INSERT INTO `cms_entries` VALUES (215,'pages','Kontak kami','kontak-kami','<p>\r\n	Ini adalah alamat baru perusahaan kami.</p>\r\n',36,0,1,0,'2014-09-05 17:04:25',1,'2015-03-17 17:02:32',1,525,'id-64');
INSERT INTO `cms_entries` VALUES (724,'form-group_photo_2','resize_florian_new_02','resize-florian-new-02-12',NULL,46,161,1,0,'2015-06-03 11:37:03',1,'2015-06-03 11:37:03',1,724,'en-724');
INSERT INTO `cms_entries` VALUES (723,'form-group_photo_2','Thursday20September2012043329slide3','thursday20september2012043329slide3-7',NULL,116,161,1,0,'2015-06-03 11:37:03',1,'2015-06-03 11:37:03',1,723,'en-723');
INSERT INTO `cms_entries` VALUES (722,'form-group_photo_2','Koala','koala-11',NULL,76,161,1,0,'2015-06-03 11:37:02',1,'2015-06-03 11:37:02',1,722,'en-722');
INSERT INTO `cms_entries` VALUES (286,'form-group_photo_2','Smoke-stock1191','smoke-stock1191-1',NULL,48,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,286,'en-286');
INSERT INTO `cms_entries` VALUES (721,'form-group_photo_2','Penguins','penguins-17',NULL,129,161,1,0,'2015-06-03 11:37:02',1,'2015-06-03 11:37:02',1,721,'en-721');
INSERT INTO `cms_entries` VALUES (883,'books','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-10',NULL,55,84,1,0,'2016-06-14 14:08:41',1,'2016-06-14 14:08:41',1,883,'en-883');
INSERT INTO `cms_entries` VALUES (889,'books','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-11',NULL,56,6,1,0,'2016-06-14 14:09:07',1,'2016-06-14 14:09:07',1,889,'en-889');
INSERT INTO `cms_entries` VALUES (882,'books','20110530-061908','20110530-061908-28',NULL,50,84,1,0,'2016-06-14 14:08:41',1,'2016-06-14 14:08:41',1,882,'en-882');
INSERT INTO `cms_entries` VALUES (342,'books','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-1',NULL,49,70,1,0,'2015-01-21 10:09:04',1,'2015-01-21 10:09:04',1,342,'en-342');
INSERT INTO `cms_entries` VALUES (341,'books','Thursday20September2012043329slide3','thursday20september2012043329slide3-2',NULL,116,70,1,0,'2015-01-21 10:09:04',1,'2015-01-21 10:09:04',1,341,'en-341');
INSERT INTO `cms_entries` VALUES (343,'books','resize_florian_new_02','resize-florian-new-02-5',NULL,46,61,1,0,'2015-01-21 10:09:43',1,'2015-01-21 10:09:43',1,343,'en-343');
INSERT INTO `cms_entries` VALUES (364,'media','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-5',NULL,0,49,1,0,'2015-01-21 10:25:39',1,'2015-01-21 10:25:39',1,364,'en-364');
INSERT INTO `cms_entries` VALUES (353,'books','20110530-061908','20110530-061908-5',NULL,50,99,1,0,'2015-01-21 10:17:20',1,'2015-01-21 10:17:20',1,353,'en-353');
INSERT INTO `cms_entries` VALUES (354,'books','20110610-103453','20110610-103453-1',NULL,52,99,1,0,'2015-01-21 10:17:20',1,'2015-01-21 10:17:20',1,354,'en-354');
INSERT INTO `cms_entries` VALUES (355,'media','Hydrangeas','hydrangeas-3',NULL,0,108,1,0,'2015-01-21 10:17:20',1,'2015-01-21 10:17:20',1,355,'en-355');
INSERT INTO `cms_entries` VALUES (363,'books','Hydrangeas','hydrangeas-4',NULL,108,72,1,0,'2015-01-21 10:25:39',1,'2015-01-21 10:25:39',1,363,'en-363');
INSERT INTO `cms_entries` VALUES (362,'books','Koala','koala-3',NULL,76,72,1,0,'2015-01-21 10:25:39',1,'2015-01-21 10:25:39',1,362,'en-362');
INSERT INTO `cms_entries` VALUES (888,'books','resize_florian_new_02','resize-florian-new-02-24',NULL,46,6,1,0,'2016-06-14 14:09:07',1,'2016-06-14 14:09:07',1,888,'en-888');
INSERT INTO `cms_entries` VALUES (887,'books','Smoke-stock1191','smoke-stock1191-7',NULL,48,6,1,0,'2016-06-14 14:09:06',1,'2016-06-14 14:09:06',1,887,'en-887');
INSERT INTO `cms_entries` VALUES (886,'books','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb-12',NULL,59,6,1,0,'2016-06-14 14:09:06',1,'2016-06-14 14:09:06',1,886,'en-886');
INSERT INTO `cms_entries` VALUES (885,'books','6462d28e02631147cd6ee51a744db6c6','6462d28e02631147cd6ee51a744db6c6-6',NULL,54,6,1,0,'2016-06-14 14:09:06',1,'2016-06-14 14:09:06',1,885,'en-885');
INSERT INTO `cms_entries` VALUES (884,'books','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-5',NULL,53,6,1,0,'2016-06-14 14:09:06',1,'2016-06-14 14:09:06',1,884,'en-884');
INSERT INTO `cms_entries` VALUES (399,'news','Serangan Gerilya EN','serangan-gerilya-en','<p>Nowadays, world is happening with &quot;Gerilya War&quot;</p>\r\n',44,6,1,0,'2015-02-09 15:14:13',1,'2016-06-14 14:11:56',1,399,'en-68');
INSERT INTO `cms_entries` VALUES (713,'magazine','batman_by_frogbillgo-d2yoamc','batman-by-frogbillgo-d2yoamc-11',NULL,57,161,1,0,'2015-06-03 11:37:01',1,'2015-06-03 11:37:01',1,713,'en-713');
INSERT INTO `cms_entries` VALUES (720,'form-group_photo','20110610-103819','20110610-103819-13',NULL,51,161,1,0,'2015-06-03 11:37:02',1,'2015-06-03 11:37:02',1,720,'en-720');
INSERT INTO `cms_entries` VALUES (719,'form-group_photo','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb-6',NULL,59,161,1,0,'2015-06-03 11:37:02',1,'2015-06-03 11:37:02',1,719,'en-719');
INSERT INTO `cms_entries` VALUES (711,'magazine','6462d28e02631147cd6ee51a744db6c6','6462d28e02631147cd6ee51a744db6c6-5',NULL,54,161,1,0,'2015-06-03 11:37:01',1,'2015-06-03 11:37:01',1,711,'en-711');
INSERT INTO `cms_entries` VALUES (710,'magazine','Smoke-stock1191','smoke-stock1191-12',NULL,48,161,1,0,'2015-06-03 11:37:01',1,'2015-06-03 11:37:01',1,710,'en-710');
INSERT INTO `cms_entries` VALUES (712,'magazine','Hydrangeas','hydrangeas-6',NULL,108,161,1,0,'2015-06-03 11:37:01',1,'2015-06-03 11:37:01',1,712,'en-712');
INSERT INTO `cms_entries` VALUES (577,'blogs','Statue Blog','statue-blog','<p>Patung Budha di Yogyakarta.</p>\r\n',27,6,1,0,'2015-03-18 12:09:37',1,'2015-03-18 12:11:38',1,564,'en-577');
INSERT INTO `cms_entries` VALUES (578,'media','Thursday20September2012043326slide2','thursday20september2012043326slide2-1',NULL,0,118,1,0,'2015-03-18 12:09:38',1,'2015-03-18 12:11:23',1,578,'en-578');
INSERT INTO `cms_entries` VALUES (579,'blogs','Statue Blog ID','statue-blog-id','<p>Patung Budha di Yogyakarta.</p>\r\n',27,61,1,0,'2015-03-18 12:10:20',1,'2015-03-18 12:11:38',1,574,'id-577');
INSERT INTO `cms_entries` VALUES (581,'news','The Death of John EN','the-death-of-john-en-1','<p>In the 1996, there was a big war between John Maxwell and Paul Ruthridge.</p>\r\n\r\n<p>And then, John struggled to won against his enemy.</p>\r\n\r\n<p>Finally in 1997, there was an intruption about this war.</p>\r\n',7,61,1,0,'2015-03-18 15:20:50',1,'2016-06-14 14:14:36',1,580,'id-9');
INSERT INTO `cms_entries` VALUES (871,'media','logo','logo',NULL,0,0,1,0,'2016-03-31 11:57:48',1,'2016-03-31 11:57:48',1,871,'en-871');
INSERT INTO `cms_entries` VALUES (901,'books','Thursday20September2012014818slide1','thursday20september2012014818slide1-7',NULL,117,698,1,0,'2016-06-14 14:09:28',1,'2016-06-14 14:09:28',1,901,'en-901');
INSERT INTO `cms_entries` VALUES (709,'magazine','Spiderman_by_PatC_14','spiderman-by-patc-14-3',NULL,58,161,1,0,'2015-06-03 11:37:00',1,'2015-06-03 11:37:00',1,709,'en-709');
INSERT INTO `cms_entries` VALUES (708,'magazine','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-8',NULL,56,161,1,0,'2015-06-03 11:37:00',1,'2015-06-03 11:37:00',1,708,'en-708');
INSERT INTO `cms_entries` VALUES (890,'books','Tulips','tulips-14',NULL,131,6,1,0,'2016-06-14 14:09:07',1,'2016-06-14 14:09:07',1,890,'en-890');
INSERT INTO `cms_entries` VALUES (891,'books','20110530-061908','20110530-061908-29',NULL,50,6,1,0,'2016-06-14 14:09:07',1,'2016-06-14 14:09:07',1,891,'en-891');
INSERT INTO `cms_entries` VALUES (892,'books','Thursday20September2012014818slide1','thursday20september2012014818slide1-6',NULL,117,6,1,0,'2016-06-14 14:09:07',1,'2016-06-14 14:09:07',1,892,'en-892');
INSERT INTO `cms_entries` VALUES (698,'books','Shi Jie Da Zhan ZH','shi-jie-da-zhan-zh','<p>This is the full story of world war II in America.</p>\r\n',2,0,1,9,'2015-03-30 17:03:24',1,'2016-06-14 14:09:28',1,698,'zh-6');
INSERT INTO `cms_entries` VALUES (899,'books','Tulips','tulips-15',NULL,131,698,1,0,'2016-06-14 14:09:27',1,'2016-06-14 14:09:28',1,899,'en-899');
INSERT INTO `cms_entries` VALUES (900,'books','20110530-061908','20110530-061908-30',NULL,50,698,1,0,'2016-06-14 14:09:28',1,'2016-06-14 14:09:28',1,900,'en-900');
INSERT INTO `cms_entries` VALUES (898,'books','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-12',NULL,56,698,1,0,'2016-06-14 14:09:27',1,'2016-06-14 14:09:27',1,898,'en-898');
INSERT INTO `cms_entries` VALUES (897,'books','resize_florian_new_02','resize-florian-new-02-25',NULL,46,698,1,0,'2016-06-14 14:09:27',1,'2016-06-14 14:09:27',1,897,'en-897');
INSERT INTO `cms_entries` VALUES (896,'books','Smoke-stock1191','smoke-stock1191-8',NULL,48,698,1,0,'2016-06-14 14:09:27',1,'2016-06-14 14:09:27',1,896,'en-896');
INSERT INTO `cms_entries` VALUES (895,'books','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb-13',NULL,59,698,1,0,'2016-06-14 14:09:27',1,'2016-06-14 14:09:27',1,895,'en-895');
INSERT INTO `cms_entries` VALUES (894,'books','6462d28e02631147cd6ee51a744db6c6','6462d28e02631147cd6ee51a744db6c6-7',NULL,54,698,1,0,'2016-06-14 14:09:27',1,'2016-06-14 14:09:27',1,894,'en-894');
INSERT INTO `cms_entries` VALUES (893,'books','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-6',NULL,53,698,1,0,'2016-06-14 14:09:27',1,'2016-06-14 14:09:27',1,893,'en-893');
INSERT INTO `cms_entries` VALUES (725,'form-group_photo_2','Smoke-stock1191','smoke-stock1191-13',NULL,48,161,1,0,'2015-06-03 11:37:03',1,'2015-06-03 11:37:03',1,725,'en-725');
/*!40000 ALTER TABLE `cms_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_entry_metas`
--

DROP TABLE IF EXISTS `cms_entry_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_entry_metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2473 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_entry_metas`
--

LOCK TABLES `cms_entry_metas` WRITE;
/*!40000 ALTER TABLE `cms_entry_metas` DISABLE KEYS */;
INSERT INTO `cms_entry_metas` VALUES (1,2,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (2,2,'image_size','879394');
INSERT INTO `cms_entry_metas` VALUES (73,37,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (72,36,'image_size','380877');
INSERT INTO `cms_entry_metas` VALUES (5,4,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (6,4,'image_size','845941');
INSERT INTO `cms_entry_metas` VALUES (70,35,'image_size','1000306');
INSERT INTO `cms_entry_metas` VALUES (69,35,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1048,138,'image_x','439.6333312988281');
INSERT INTO `cms_entry_metas` VALUES (1047,138,'image_size','12376');
INSERT INTO `cms_entry_metas` VALUES (2435,6,'form-publish_date','1/15/2013');
INSERT INTO `cms_entry_metas` VALUES (14,7,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (15,7,'image_size','561276');
INSERT INTO `cms_entry_metas` VALUES (52,26,'image_size','152890');
INSERT INTO `cms_entry_metas` VALUES (51,26,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (18,6,'count-news','3');
INSERT INTO `cms_entry_metas` VALUES (54,27,'image_size','89217');
INSERT INTO `cms_entry_metas` VALUES (53,27,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (55,28,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (56,28,'image_size','37281');
INSERT INTO `cms_entry_metas` VALUES (57,29,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (58,29,'image_size','542535');
INSERT INTO `cms_entry_metas` VALUES (59,30,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (60,30,'image_size','175833');
INSERT INTO `cms_entry_metas` VALUES (71,36,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (62,31,'image_size','33691');
INSERT INTO `cms_entry_metas` VALUES (61,31,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (63,32,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (64,32,'image_size','83902');
INSERT INTO `cms_entry_metas` VALUES (65,33,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (66,33,'image_size','69422');
INSERT INTO `cms_entry_metas` VALUES (67,34,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (68,34,'image_size','621007');
INSERT INTO `cms_entry_metas` VALUES (74,37,'image_size','76968');
INSERT INTO `cms_entry_metas` VALUES (75,38,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (76,38,'image_size','84683');
INSERT INTO `cms_entry_metas` VALUES (77,39,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (78,39,'image_size','79164');
INSERT INTO `cms_entry_metas` VALUES (79,40,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (80,40,'image_size','101219');
INSERT INTO `cms_entry_metas` VALUES (81,41,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (82,41,'image_size','318322');
INSERT INTO `cms_entry_metas` VALUES (83,42,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (84,42,'image_size','522900');
INSERT INTO `cms_entry_metas` VALUES (85,43,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (86,43,'image_size','501805');
INSERT INTO `cms_entry_metas` VALUES (87,44,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (88,44,'image_size','139266');
INSERT INTO `cms_entry_metas` VALUES (89,45,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (90,45,'image_size','118473');
INSERT INTO `cms_entry_metas` VALUES (91,46,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (92,46,'image_size','341375');
INSERT INTO `cms_entry_metas` VALUES (93,47,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (94,47,'image_size','435839');
INSERT INTO `cms_entry_metas` VALUES (95,48,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (96,48,'image_size','512873');
INSERT INTO `cms_entry_metas` VALUES (97,49,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (98,49,'image_size','68128');
INSERT INTO `cms_entry_metas` VALUES (99,50,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (100,50,'image_size','146115');
INSERT INTO `cms_entry_metas` VALUES (101,51,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (102,51,'image_size','264859');
INSERT INTO `cms_entry_metas` VALUES (103,52,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (104,52,'image_size','371206');
INSERT INTO `cms_entry_metas` VALUES (105,53,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (106,53,'image_size','934284');
INSERT INTO `cms_entry_metas` VALUES (107,54,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (108,54,'image_size','230880');
INSERT INTO `cms_entry_metas` VALUES (109,55,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (110,55,'image_size','835025');
INSERT INTO `cms_entry_metas` VALUES (111,56,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (112,56,'image_size','167533');
INSERT INTO `cms_entry_metas` VALUES (113,57,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (114,57,'image_size','450989');
INSERT INTO `cms_entry_metas` VALUES (115,58,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (116,58,'image_size','224473');
INSERT INTO `cms_entry_metas` VALUES (117,59,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (118,59,'image_size','579210');
INSERT INTO `cms_entry_metas` VALUES (119,6,'count-blogs','3');
INSERT INTO `cms_entry_metas` VALUES (1457,60,'form-action','Comment|Like|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (493,114,'image_height','239');
INSERT INTO `cms_entry_metas` VALUES (1128,61,'form-quantity','20');
INSERT INTO `cms_entry_metas` VALUES (1129,61,'form-weight','15');
INSERT INTO `cms_entry_metas` VALUES (1130,61,'form-author','John Roberts');
INSERT INTO `cms_entry_metas` VALUES (131,61,'count-blogs','3');
INSERT INTO `cms_entry_metas` VALUES (133,61,'count-news','3');
INSERT INTO `cms_entry_metas` VALUES (1196,72,'form-quantity','25');
INSERT INTO `cms_entry_metas` VALUES (1197,72,'form-weight','20');
INSERT INTO `cms_entry_metas` VALUES (149,75,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (150,75,'image_size','777835');
INSERT INTO `cms_entry_metas` VALUES (151,76,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (152,76,'image_size','780831');
INSERT INTO `cms_entry_metas` VALUES (2418,84,'form-weight','3.35');
INSERT INTO `cms_entry_metas` VALUES (851,52,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (174,83,'image_size','561276');
INSERT INTO `cms_entry_metas` VALUES (173,83,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1127,61,'form-price','4500');
INSERT INTO `cms_entry_metas` VALUES (2464,73,'form-books','world-war-ii|mario-bros');
INSERT INTO `cms_entry_metas` VALUES (182,87,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (183,87,'image_size','450989');
INSERT INTO `cms_entry_metas` VALUES (2434,6,'form-author','John Roberts');
INSERT INTO `cms_entry_metas` VALUES (356,89,'image_width','245.00000000000188');
INSERT INTO `cms_entry_metas` VALUES (355,89,'image_y','48');
INSERT INTO `cms_entry_metas` VALUES (354,89,'image_x','31.633331298828125');
INSERT INTO `cms_entry_metas` VALUES (353,89,'image_size','15293');
INSERT INTO `cms_entry_metas` VALUES (352,89,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (492,114,'image_width','304.0000000000019');
INSERT INTO `cms_entry_metas` VALUES (194,90,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (195,90,'image_size','133207');
INSERT INTO `cms_entry_metas` VALUES (247,94,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (235,92,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (236,92,'image_size','40939');
INSERT INTO `cms_entry_metas` VALUES (237,92,'image_x','90.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (238,92,'image_y','109');
INSERT INTO `cms_entry_metas` VALUES (239,92,'image_width','365');
INSERT INTO `cms_entry_metas` VALUES (240,92,'image_height','261');
INSERT INTO `cms_entry_metas` VALUES (724,95,'image_width','194.00000000000182');
INSERT INTO `cms_entry_metas` VALUES (723,95,'image_y','253');
INSERT INTO `cms_entry_metas` VALUES (248,94,'image_size','32860');
INSERT INTO `cms_entry_metas` VALUES (249,94,'image_x','133.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (250,94,'image_y','40');
INSERT INTO `cms_entry_metas` VALUES (251,94,'image_width','345');
INSERT INTO `cms_entry_metas` VALUES (252,94,'image_height','243');
INSERT INTO `cms_entry_metas` VALUES (722,95,'image_x','348.6333312988281');
INSERT INTO `cms_entry_metas` VALUES (721,95,'image_size','12014');
INSERT INTO `cms_entry_metas` VALUES (720,95,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (698,97,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (701,97,'image_y','67');
INSERT INTO `cms_entry_metas` VALUES (700,97,'image_x','107.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (699,97,'image_size','5968');
INSERT INTO `cms_entry_metas` VALUES (707,98,'image_x','72.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (706,98,'image_size','30952');
INSERT INTO `cms_entry_metas` VALUES (1170,99,'form-publish_date','1/19/2013');
INSERT INTO `cms_entry_metas` VALUES (702,97,'image_width','117.00000000000188');
INSERT INTO `cms_entry_metas` VALUES (708,98,'image_y','29');
INSERT INTO `cms_entry_metas` VALUES (1169,99,'form-author','Basuki Oke');
INSERT INTO `cms_entry_metas` VALUES (725,95,'image_height','135');
INSERT INTO `cms_entry_metas` VALUES (705,98,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1171,99,'form-approval','Approve');
INSERT INTO `cms_entry_metas` VALUES (1003,85,'image_size','29625');
INSERT INTO `cms_entry_metas` VALUES (357,89,'image_height','238');
INSERT INTO `cms_entry_metas` VALUES (831,109,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (376,108,'image_size','100674');
INSERT INTO `cms_entry_metas` VALUES (375,108,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (491,114,'image_y','35');
INSERT INTO `cms_entry_metas` VALUES (490,114,'image_x','88.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (489,114,'image_size','31048');
INSERT INTO `cms_entry_metas` VALUES (990,115,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (991,115,'image_size','36954');
INSERT INTO `cms_entry_metas` VALUES (2416,84,'form-price','35');
INSERT INTO `cms_entry_metas` VALUES (2417,84,'form-quantity','29');
INSERT INTO `cms_entry_metas` VALUES (916,50,'count-media','2');
INSERT INTO `cms_entry_metas` VALUES (1121,70,'form-weight','5');
INSERT INTO `cms_entry_metas` VALUES (488,114,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (507,116,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (508,116,'image_size','42402');
INSERT INTO `cms_entry_metas` VALUES (509,117,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (510,117,'image_size','43638');
INSERT INTO `cms_entry_metas` VALUES (511,118,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (512,118,'image_size','60024');
INSERT INTO `cms_entry_metas` VALUES (632,137,'image_size','49147');
INSERT INTO `cms_entry_metas` VALUES (631,137,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1041,133,'image_x','83.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (2433,6,'form-weight','4.5');
INSERT INTO `cms_entry_metas` VALUES (992,115,'image_x','124.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (900,57,'count-media','3');
INSERT INTO `cms_entry_metas` VALUES (560,131,'image_size','101772');
INSERT INTO `cms_entry_metas` VALUES (559,131,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (558,130,'image_size','99009');
INSERT INTO `cms_entry_metas` VALUES (557,130,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (556,129,'image_size','114202');
INSERT INTO `cms_entry_metas` VALUES (555,129,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1123,70,'form-publish_date','03/07/2013');
INSERT INTO `cms_entry_metas` VALUES (1124,70,'form-publisher','Tony Shawn');
INSERT INTO `cms_entry_metas` VALUES (1040,133,'image_size','29785');
INSERT INTO `cms_entry_metas` VALUES (892,49,'count-media','3');
INSERT INTO `cms_entry_metas` VALUES (1039,133,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (709,98,'image_width','373.0000000000019');
INSERT INTO `cms_entry_metas` VALUES (703,97,'image_height','132');
INSERT INTO `cms_entry_metas` VALUES (710,98,'image_height','322');
INSERT INTO `cms_entry_metas` VALUES (1012,145,'count-form-group_photo','3');
INSERT INTO `cms_entry_metas` VALUES (1014,145,'form-books','Dark Magic|World War II Cont');
INSERT INTO `cms_entry_metas` VALUES (1013,145,'count-form-group_photo_2','4');
INSERT INTO `cms_entry_metas` VALUES (811,84,'count-news','0');
INSERT INTO `cms_entry_metas` VALUES (832,109,'image_size','117376');
INSERT INTO `cms_entry_metas` VALUES (833,206,'form-url_link','http://www.facebook.com');
INSERT INTO `cms_entry_metas` VALUES (834,207,'form-url_link','http://www.google.com');
INSERT INTO `cms_entry_metas` VALUES (835,208,'form-url_link','http://www.twitter.com');
INSERT INTO `cms_entry_metas` VALUES (1004,85,'image_x','246.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (1005,85,'image_y','91');
INSERT INTO `cms_entry_metas` VALUES (2388,872,'backup-slug','\nlighthouse-4\n');
INSERT INTO `cms_entry_metas` VALUES (1002,85,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (872,161,'count-magazine','6');
INSERT INTO `cms_entry_metas` VALUES (1042,133,'image_y','54');
INSERT INTO `cms_entry_metas` VALUES (1049,138,'image_y','114');
INSERT INTO `cms_entry_metas` VALUES (2436,6,'form-publisher','Amane Saphere');
INSERT INTO `cms_entry_metas` VALUES (908,70,'count-books','5');
INSERT INTO `cms_entry_metas` VALUES (993,115,'image_y','76');
INSERT INTO `cms_entry_metas` VALUES (994,115,'image_width','384.0000000000019');
INSERT INTO `cms_entry_metas` VALUES (1006,85,'image_width','393.3666687011719');
INSERT INTO `cms_entry_metas` VALUES (1007,85,'image_height','308');
INSERT INTO `cms_entry_metas` VALUES (1043,133,'image_width','324.0000000000019');
INSERT INTO `cms_entry_metas` VALUES (1046,138,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (995,115,'image_height','266');
INSERT INTO `cms_entry_metas` VALUES (2412,84,'count-books','4');
INSERT INTO `cms_entry_metas` VALUES (1016,145,'form-fake_ckeditor','<p>test fake</p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (1015,145,'form-dropme','drop tiga');
INSERT INTO `cms_entry_metas` VALUES (1017,145,'form-warnaku','#8a5bea');
INSERT INTO `cms_entry_metas` VALUES (2152,830,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-3\n');
INSERT INTO `cms_entry_metas` VALUES (1044,133,'image_height','219');
INSERT INTO `cms_entry_metas` VALUES (1050,138,'image_width','161.00000000000182');
INSERT INTO `cms_entry_metas` VALUES (1051,138,'image_height','237');
INSERT INTO `cms_entry_metas` VALUES (2419,84,'form-publish_date','1/18/2013');
INSERT INTO `cms_entry_metas` VALUES (1125,70,'form-approval','Pending');
INSERT INTO `cms_entry_metas` VALUES (1120,70,'form-quantity','200');
INSERT INTO `cms_entry_metas` VALUES (1119,70,'form-price','14');
INSERT INTO `cms_entry_metas` VALUES (1126,61,'count-books','1');
INSERT INTO `cms_entry_metas` VALUES (1131,61,'form-publish_date','1/15/2013');
INSERT INTO `cms_entry_metas` VALUES (1132,61,'form-publisher','Bella Saphira');
INSERT INTO `cms_entry_metas` VALUES (1133,61,'form-approval','Approve');
INSERT INTO `cms_entry_metas` VALUES (1141,72,'count-books','2');
INSERT INTO `cms_entry_metas` VALUES (1198,72,'form-publish_date','1/16/2013');
INSERT INTO `cms_entry_metas` VALUES (1199,72,'form-approval','Approve');
INSERT INTO `cms_entry_metas` VALUES (1147,99,'count-books','2');
INSERT INTO `cms_entry_metas` VALUES (1168,99,'form-weight','20');
INSERT INTO `cms_entry_metas` VALUES (1167,99,'form-quantity','25');
INSERT INTO `cms_entry_metas` VALUES (1166,99,'form-price','75000');
INSERT INTO `cms_entry_metas` VALUES (1172,108,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (1173,355,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1174,355,'image_size','26541');
INSERT INTO `cms_entry_metas` VALUES (1175,355,'image_x','234.421875');
INSERT INTO `cms_entry_metas` VALUES (1176,355,'image_y','145');
INSERT INTO `cms_entry_metas` VALUES (1177,355,'image_width','299');
INSERT INTO `cms_entry_metas` VALUES (1178,355,'image_height','299');
INSERT INTO `cms_entry_metas` VALUES (1179,99,'form-background','355');
INSERT INTO `cms_entry_metas` VALUES (1195,72,'form-price','12');
INSERT INTO `cms_entry_metas` VALUES (1200,364,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1201,364,'image_size','29111');
INSERT INTO `cms_entry_metas` VALUES (1202,364,'image_x','92.421875');
INSERT INTO `cms_entry_metas` VALUES (1203,364,'image_y','62');
INSERT INTO `cms_entry_metas` VALUES (1204,364,'image_width','301');
INSERT INTO `cms_entry_metas` VALUES (1205,364,'image_height','243');
INSERT INTO `cms_entry_metas` VALUES (1206,72,'form-added_image','364');
INSERT INTO `cms_entry_metas` VALUES (2457,399,'form-termin','08/21/2015|11/29/1997|03/14/2035');
INSERT INTO `cms_entry_metas` VALUES (1305,66,'backup-slug','\nberanda\n');
INSERT INTO `cms_entry_metas` VALUES (1304,67,'backup-slug','\ntentang-kita\n');
INSERT INTO `cms_entry_metas` VALUES (1303,215,'backup-slug','\nkontak-kami\n');
INSERT INTO `cms_entry_metas` VALUES (1300,65,'backup-slug','\nhome\n');
INSERT INTO `cms_entry_metas` VALUES (1301,64,'backup-slug','\ncontact-us\n');
INSERT INTO `cms_entry_metas` VALUES (1302,1,'backup-slug','\nabout-us\n');
INSERT INTO `cms_entry_metas` VALUES (1433,50,'backup-slug','\n20110530-061908\n');
INSERT INTO `cms_entry_metas` VALUES (2458,571,'form-books','dark-magic');
INSERT INTO `cms_entry_metas` VALUES (1392,160,'backup-slug','\nmorning-blog\nmorning-blog-en\n');
INSERT INTO `cms_entry_metas` VALUES (1393,60,'backup-slug','\nwar-blog-iv\n');
INSERT INTO `cms_entry_metas` VALUES (1377,61,'backup-slug','\nperang-dunia-2\n');
INSERT INTO `cms_entry_metas` VALUES (1378,6,'backup-slug','\nworld-war-ii\n');
INSERT INTO `cms_entry_metas` VALUES (1379,399,'backup-slug','\nserangan-gerilya-en\n');
INSERT INTO `cms_entry_metas` VALUES (1380,73,'backup-slug','\nthe-resurrection\nthe-resurrection-en\n');
INSERT INTO `cms_entry_metas` VALUES (1381,9,'backup-slug','\nthe-death-of-john\nthe-death-of-john-en\n');
INSERT INTO `cms_entry_metas` VALUES (1451,573,'image_size','35308');
INSERT INTO `cms_entry_metas` VALUES (1452,573,'image_x','146.421875');
INSERT INTO `cms_entry_metas` VALUES (1453,573,'image_y','101');
INSERT INTO `cms_entry_metas` VALUES (1402,571,'backup-slug','\nserangan-gerilya-en-1\nserangan-gerilya-id\n');
INSERT INTO `cms_entry_metas` VALUES (2459,571,'form-magazine','');
INSERT INTO `cms_entry_metas` VALUES (2465,73,'form-magazine','keep-healthy-keep-fresh|body-building-muscle');
INSERT INTO `cms_entry_metas` VALUES (1415,572,'backup-slug','\nthe-resurrection-id\n');
INSERT INTO `cms_entry_metas` VALUES (2462,572,'form-magazine','keep-healthy-keep-fresh|body-building-muscle');
INSERT INTO `cms_entry_metas` VALUES (2461,572,'form-books','world-war-ii|mario-bros');
INSERT INTO `cms_entry_metas` VALUES (1438,160,'form-action','Share|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (1450,573,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1449,573,'backup-slug','\n20110530-061908-7\n');
INSERT INTO `cms_entry_metas` VALUES (1446,160,'form-background','573');
INSERT INTO `cms_entry_metas` VALUES (1447,574,'backup-slug','\nmorning-blog-id\n');
INSERT INTO `cms_entry_metas` VALUES (1448,574,'form-action','Share|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (1454,573,'image_width','326');
INSERT INTO `cms_entry_metas` VALUES (1455,573,'image_height','288');
INSERT INTO `cms_entry_metas` VALUES (1456,574,'form-background','573');
INSERT INTO `cms_entry_metas` VALUES (1458,129,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (1459,129,'backup-slug','\npenguins-2\n');
INSERT INTO `cms_entry_metas` VALUES (1480,575,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1481,575,'image_size','22186');
INSERT INTO `cms_entry_metas` VALUES (1482,575,'image_x','113.421875');
INSERT INTO `cms_entry_metas` VALUES (1483,575,'image_y','166');
INSERT INTO `cms_entry_metas` VALUES (1484,575,'image_width','401');
INSERT INTO `cms_entry_metas` VALUES (1467,60,'form-background','575');
INSERT INTO `cms_entry_metas` VALUES (1468,576,'backup-slug','\nwar-blog-id\n');
INSERT INTO `cms_entry_metas` VALUES (1479,575,'backup-slug','\npenguins-5\n');
INSERT INTO `cms_entry_metas` VALUES (1478,576,'form-action','Comment|Like|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (1485,575,'image_height','177');
INSERT INTO `cms_entry_metas` VALUES (1486,576,'form-background','575');
INSERT INTO `cms_entry_metas` VALUES (1487,577,'backup-slug','\nstatue-blog\n');
INSERT INTO `cms_entry_metas` VALUES (1488,577,'form-action','Comment|Share');
INSERT INTO `cms_entry_metas` VALUES (1489,118,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (1490,118,'backup-slug','\nthursday20september2012043326slide2\n');
INSERT INTO `cms_entry_metas` VALUES (1511,578,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1512,578,'image_size','11740');
INSERT INTO `cms_entry_metas` VALUES (1513,578,'image_x','362.421875');
INSERT INTO `cms_entry_metas` VALUES (1514,578,'image_y','51');
INSERT INTO `cms_entry_metas` VALUES (1515,578,'image_width','254');
INSERT INTO `cms_entry_metas` VALUES (1498,577,'form-background','578');
INSERT INTO `cms_entry_metas` VALUES (1499,579,'backup-slug','\nstatue-blog-id\n');
INSERT INTO `cms_entry_metas` VALUES (1510,578,'backup-slug','\nthursday20september2012043326slide2-1\n');
INSERT INTO `cms_entry_metas` VALUES (1509,579,'form-action','Comment|Share|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (1516,578,'image_height','149');
INSERT INTO `cms_entry_metas` VALUES (1517,579,'form-background','578');
INSERT INTO `cms_entry_metas` VALUES (2468,9,'form-magazine','');
INSERT INTO `cms_entry_metas` VALUES (2469,9,'form-termin','03/10/2015|09/23/2034');
INSERT INTO `cms_entry_metas` VALUES (2472,581,'form-termin','03/10/2015|09/23/2034');
INSERT INTO `cms_entry_metas` VALUES (1558,581,'backup-slug','\nthe-death-of-john-en-1\n');
INSERT INTO `cms_entry_metas` VALUES (2467,9,'form-books','mario-bros|dark-magic|world-war-ii');
INSERT INTO `cms_entry_metas` VALUES (2456,399,'form-magazine','');
INSERT INTO `cms_entry_metas` VALUES (2455,399,'form-books','dark-magic|mario-bros');
INSERT INTO `cms_entry_metas` VALUES (2471,581,'form-magazine','');
INSERT INTO `cms_entry_metas` VALUES (2470,581,'form-books','mario-bros|dark-magic|world-war-ii');
INSERT INTO `cms_entry_metas` VALUES (1563,582,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-1\n');
INSERT INTO `cms_entry_metas` VALUES (1564,583,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-2\n');
INSERT INTO `cms_entry_metas` VALUES (1565,584,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-3\n');
INSERT INTO `cms_entry_metas` VALUES (1566,585,'backup-slug','\nsmoke-stock1191-2\n');
INSERT INTO `cms_entry_metas` VALUES (1567,586,'backup-slug','\nresize-florian-new-02-4\n');
INSERT INTO `cms_entry_metas` VALUES (1568,587,'backup-slug','\nbatgirl-issue-10-by-artgerm-2\n');
INSERT INTO `cms_entry_metas` VALUES (1569,588,'backup-slug','\ntulips-2\n');
INSERT INTO `cms_entry_metas` VALUES (1570,589,'backup-slug','\n20110530-061908-6\n');
INSERT INTO `cms_entry_metas` VALUES (1571,590,'backup-slug','\nthursday20september2012014818slide1-2\n');
INSERT INTO `cms_entry_metas` VALUES (2431,6,'form-price','23');
INSERT INTO `cms_entry_metas` VALUES (2432,6,'form-quantity','20');
INSERT INTO `cms_entry_metas` VALUES (1580,161,'backup-slug','\ncake-magazine\n');
INSERT INTO `cms_entry_metas` VALUES (1794,716,'backup-slug','\nbatgirl-issue-10-by-artgerm-9\n');
INSERT INTO `cms_entry_metas` VALUES (1793,715,'backup-slug','\nresize-3d-cartoon-pirate-3\n');
INSERT INTO `cms_entry_metas` VALUES (1792,714,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-6\n');
INSERT INTO `cms_entry_metas` VALUES (1791,161,'count-form-group_photo','7');
INSERT INTO `cms_entry_metas` VALUES (1628,144,'backup-slug','\nbody-building-muscle\n');
INSERT INTO `cms_entry_metas` VALUES (1993,783,'backup-slug','\nresize-florian-new-02-17\n');
INSERT INTO `cms_entry_metas` VALUES (1740,690,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-10\n');
INSERT INTO `cms_entry_metas` VALUES (1739,689,'backup-slug','\ntulips-22\n');
INSERT INTO `cms_entry_metas` VALUES (1738,688,'backup-slug','\nkoala-10\n');
INSERT INTO `cms_entry_metas` VALUES (1817,731,'backup-slug','\nthursday20september2012043326slide2-2\n');
INSERT INTO `cms_entry_metas` VALUES (1733,684,'backup-slug','\npenguins-16\n');
INSERT INTO `cms_entry_metas` VALUES (1734,685,'backup-slug','\ntulips-21\n');
INSERT INTO `cms_entry_metas` VALUES (1735,686,'backup-slug','\n20110610-103819-12\n');
INSERT INTO `cms_entry_metas` VALUES (1736,687,'backup-slug','\nthursday20september2012043329slide3-6\n');
INSERT INTO `cms_entry_metas` VALUES (1741,691,'backup-slug','\nthursday20september2012043326slide2-4\n');
INSERT INTO `cms_entry_metas` VALUES (1816,730,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-4\n');
INSERT INTO `cms_entry_metas` VALUES (1815,729,'backup-slug','\ntulips-3\n');
INSERT INTO `cms_entry_metas` VALUES (1826,735,'backup-slug','\nthursday20september2012043326slide2-3\n');
INSERT INTO `cms_entry_metas` VALUES (1813,728,'backup-slug','\nkoala-2\n');
INSERT INTO `cms_entry_metas` VALUES (1768,699,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-2\n');
INSERT INTO `cms_entry_metas` VALUES (2438,893,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-6\n');
INSERT INTO `cms_entry_metas` VALUES (1764,70,'backup-slug','\ndark-magic\n');
INSERT INTO `cms_entry_metas` VALUES (1765,84,'backup-slug','\nmario-bros\n');
INSERT INTO `cms_entry_metas` VALUES (1766,698,'backup-slug','\nshi-jie-da-zhan-zh\n');
INSERT INTO `cms_entry_metas` VALUES (1769,700,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-4\n');
INSERT INTO `cms_entry_metas` VALUES (1770,701,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-5\n');
INSERT INTO `cms_entry_metas` VALUES (1771,702,'backup-slug','\nsmoke-stock1191-11\n');
INSERT INTO `cms_entry_metas` VALUES (1772,703,'backup-slug','\nresize-florian-new-02-11\n');
INSERT INTO `cms_entry_metas` VALUES (1773,704,'backup-slug','\nbatgirl-issue-10-by-artgerm-7\n');
INSERT INTO `cms_entry_metas` VALUES (1774,705,'backup-slug','\ntulips-23\n');
INSERT INTO `cms_entry_metas` VALUES (1775,706,'backup-slug','\n20110530-061908-9\n');
INSERT INTO `cms_entry_metas` VALUES (1776,707,'backup-slug','\nthursday20september2012014818slide1-3\n');
INSERT INTO `cms_entry_metas` VALUES (2453,698,'form-publisher','Amane Saphere');
INSERT INTO `cms_entry_metas` VALUES (2452,698,'form-publish_date','1/15/2013');
INSERT INTO `cms_entry_metas` VALUES (2451,698,'form-author','John Roberts');
INSERT INTO `cms_entry_metas` VALUES (2450,698,'form-weight','4.5');
INSERT INTO `cms_entry_metas` VALUES (2449,698,'form-quantity','20');
INSERT INTO `cms_entry_metas` VALUES (2448,698,'form-price','23');
INSERT INTO `cms_entry_metas` VALUES (1785,708,'backup-slug','\nbatgirl-issue-10-by-artgerm-8\n');
INSERT INTO `cms_entry_metas` VALUES (1786,709,'backup-slug','\nspiderman-by-patc-14-3\n');
INSERT INTO `cms_entry_metas` VALUES (1787,710,'backup-slug','\nsmoke-stock1191-12\n');
INSERT INTO `cms_entry_metas` VALUES (1788,711,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-5\n');
INSERT INTO `cms_entry_metas` VALUES (1789,712,'backup-slug','\nhydrangeas-6\n');
INSERT INTO `cms_entry_metas` VALUES (1790,713,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-11\n');
INSERT INTO `cms_entry_metas` VALUES (1795,717,'backup-slug','\n20110530-061908-10\n');
INSERT INTO `cms_entry_metas` VALUES (1796,718,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-7\n');
INSERT INTO `cms_entry_metas` VALUES (1797,719,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-6\n');
INSERT INTO `cms_entry_metas` VALUES (1798,720,'backup-slug','\n20110610-103819-13\n');
INSERT INTO `cms_entry_metas` VALUES (1799,161,'count-form-group_photo_2','5');
INSERT INTO `cms_entry_metas` VALUES (1800,721,'backup-slug','\npenguins-17\n');
INSERT INTO `cms_entry_metas` VALUES (1801,722,'backup-slug','\nkoala-11\n');
INSERT INTO `cms_entry_metas` VALUES (1802,723,'backup-slug','\nthursday20september2012043329slide3-7\n');
INSERT INTO `cms_entry_metas` VALUES (1803,724,'backup-slug','\nresize-florian-new-02-12\n');
INSERT INTO `cms_entry_metas` VALUES (1804,725,'backup-slug','\nsmoke-stock1191-13\n');
INSERT INTO `cms_entry_metas` VALUES (1805,161,'form-books','mario bros|World War II Cont');
INSERT INTO `cms_entry_metas` VALUES (1806,161,'form-dropme','drop dua');
INSERT INTO `cms_entry_metas` VALUES (1807,161,'form-fake_ckeditor','<p>makan nasi goreng</p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (1808,161,'form-biggy_text','saya mau makan\r\nbakso goreng\r\ndi rumah hana tania\r\nkarena di sana terdapat\r\nbanyak pemandangan sore yang indah sekali\r\nsalam hangat\r\ndari Andy\r\nThanks');
INSERT INTO `cms_entry_metas` VALUES (1809,161,'form-warnaku','#ff00ff');
INSERT INTO `cms_entry_metas` VALUES (1810,84,'count-blogs','0');
INSERT INTO `cms_entry_metas` VALUES (1811,726,'backup-slug','\npenguins-3\n');
INSERT INTO `cms_entry_metas` VALUES (1812,727,'backup-slug','\nthursday20september2012043329slide3-1\n');
INSERT INTO `cms_entry_metas` VALUES (1825,734,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-5\n');
INSERT INTO `cms_entry_metas` VALUES (1824,733,'backup-slug','\ntulips-4\n');
INSERT INTO `cms_entry_metas` VALUES (1835,739,'backup-slug','\nthursday20september2012043326slide2-5\n');
INSERT INTO `cms_entry_metas` VALUES (1822,732,'backup-slug','\nkoala-4\n');
INSERT INTO `cms_entry_metas` VALUES (1834,738,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-6\n');
INSERT INTO `cms_entry_metas` VALUES (1833,737,'backup-slug','\ntulips-5\n');
INSERT INTO `cms_entry_metas` VALUES (1844,743,'backup-slug','\nthursday20september2012043326slide2-6\n');
INSERT INTO `cms_entry_metas` VALUES (1831,736,'backup-slug','\nkoala-5\n');
INSERT INTO `cms_entry_metas` VALUES (1843,742,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-7\n');
INSERT INTO `cms_entry_metas` VALUES (1842,741,'backup-slug','\ntulips-6\n');
INSERT INTO `cms_entry_metas` VALUES (1854,748,'backup-slug','\nthursday20september2012043326slide2-7\n');
INSERT INTO `cms_entry_metas` VALUES (1840,740,'backup-slug','\nkoala-6\n');
INSERT INTO `cms_entry_metas` VALUES (1853,747,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-8\n');
INSERT INTO `cms_entry_metas` VALUES (1852,746,'backup-slug','\ntulips-7\n');
INSERT INTO `cms_entry_metas` VALUES (1863,752,'backup-slug','\nthursday20september2012043326slide2-8\n');
INSERT INTO `cms_entry_metas` VALUES (1850,745,'backup-slug','\nkoala-7\n');
INSERT INTO `cms_entry_metas` VALUES (1849,744,'backup-slug','\nresize-florian-new-02-2\n');
INSERT INTO `cms_entry_metas` VALUES (1862,751,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-9\n');
INSERT INTO `cms_entry_metas` VALUES (1861,750,'backup-slug','\ntulips-8\n');
INSERT INTO `cms_entry_metas` VALUES (1873,757,'backup-slug','\nthursday20september2012043326slide2-9\n');
INSERT INTO `cms_entry_metas` VALUES (1859,749,'backup-slug','\nkoala-8\n');
INSERT INTO `cms_entry_metas` VALUES (1872,756,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-12\n');
INSERT INTO `cms_entry_metas` VALUES (1871,755,'backup-slug','\ntulips-9\n');
INSERT INTO `cms_entry_metas` VALUES (1869,754,'backup-slug','\nkoala-9\n');
INSERT INTO `cms_entry_metas` VALUES (1868,753,'backup-slug','\nresize-florian-new-02-6\n');
INSERT INTO `cms_entry_metas` VALUES (1883,762,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-13\n');
INSERT INTO `cms_entry_metas` VALUES (1882,761,'backup-slug','\ntulips-10\n');
INSERT INTO `cms_entry_metas` VALUES (1880,760,'backup-slug','\nkoala-12\n');
INSERT INTO `cms_entry_metas` VALUES (1878,758,'backup-slug','\nresize-florian-new-02-7\n');
INSERT INTO `cms_entry_metas` VALUES (1879,759,'backup-slug','\nhydrangeas-2\n');
INSERT INTO `cms_entry_metas` VALUES (1884,763,'backup-slug','\nthursday20september2012043326slide2-10\n');
INSERT INTO `cms_entry_metas` VALUES (1892,766,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-14\n');
INSERT INTO `cms_entry_metas` VALUES (1891,765,'backup-slug','\ntulips-11\n');
INSERT INTO `cms_entry_metas` VALUES (1902,768,'backup-slug','\nresize-florian-new-02-8\n');
INSERT INTO `cms_entry_metas` VALUES (1889,764,'backup-slug','\nkoala-13\n');
INSERT INTO `cms_entry_metas` VALUES (1893,767,'backup-slug','\nthursday20september2012043326slide2-11\n');
INSERT INTO `cms_entry_metas` VALUES (1914,771,'backup-slug','\nresize-florian-new-02-9\n');
INSERT INTO `cms_entry_metas` VALUES (1904,769,'backup-slug','\nhydrangeas-5\n');
INSERT INTO `cms_entry_metas` VALUES (1905,770,'backup-slug','\nbatgirl-issue-10-by-artgerm-3\n');
INSERT INTO `cms_entry_metas` VALUES (1925,773,'backup-slug','\nresize-florian-new-02-10\n');
INSERT INTO `cms_entry_metas` VALUES (1916,772,'backup-slug','\nhydrangeas-7\n');
INSERT INTO `cms_entry_metas` VALUES (1935,774,'backup-slug','\nresize-florian-new-02-13\n');
INSERT INTO `cms_entry_metas` VALUES (1945,775,'backup-slug','\nresize-florian-new-02-14\n');
INSERT INTO `cms_entry_metas` VALUES (1955,776,'backup-slug','\nresize-florian-new-02-15\n');
INSERT INTO `cms_entry_metas` VALUES (1957,777,'backup-slug','\nhydrangeas-8\n');
INSERT INTO `cms_entry_metas` VALUES (1972,779,'backup-slug','\nhydrangeas-9\n');
INSERT INTO `cms_entry_metas` VALUES (1981,780,'backup-slug','\nbatgirl-issue-10-by-artgerm-4\n');
INSERT INTO `cms_entry_metas` VALUES (1962,778,'backup-slug','\nresize-florian-new-02-16\n');
INSERT INTO `cms_entry_metas` VALUES (1983,781,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-2\n');
INSERT INTO `cms_entry_metas` VALUES (1984,782,'backup-slug','\n20110530-061908-2\n');
INSERT INTO `cms_entry_metas` VALUES (2037,797,'backup-slug','\n20110610-103453-4\n');
INSERT INTO `cms_entry_metas` VALUES (2038,798,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-2\n');
INSERT INTO `cms_entry_metas` VALUES (1995,784,'backup-slug','\nhydrangeas-10\n');
INSERT INTO `cms_entry_metas` VALUES (1996,785,'backup-slug','\nbatgirl-issue-10-by-artgerm-5\n');
INSERT INTO `cms_entry_metas` VALUES (1997,786,'backup-slug','\n20110610-103453-3\n');
INSERT INTO `cms_entry_metas` VALUES (1998,787,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-4\n');
INSERT INTO `cms_entry_metas` VALUES (2035,796,'backup-slug','\nhydrangeas-11\n');
INSERT INTO `cms_entry_metas` VALUES (2007,788,'backup-slug','\nresize-florian-new-02-18\n');
INSERT INTO `cms_entry_metas` VALUES (2013,789,'backup-slug','\nresize-florian-new-02-19\n');
INSERT INTO `cms_entry_metas` VALUES (2025,792,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-15\n');
INSERT INTO `cms_entry_metas` VALUES (2015,790,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-7\n');
INSERT INTO `cms_entry_metas` VALUES (2016,791,'backup-slug','\nsmoke-stock1191-3\n');
INSERT INTO `cms_entry_metas` VALUES (2032,794,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-16\n');
INSERT INTO `cms_entry_metas` VALUES (2027,793,'backup-slug','\nkoala-14\n');
INSERT INTO `cms_entry_metas` VALUES (2043,799,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-17\n');
INSERT INTO `cms_entry_metas` VALUES (2034,795,'backup-slug','\nkoala-15\n');
INSERT INTO `cms_entry_metas` VALUES (2048,802,'backup-slug','\n20110610-103453-5\n');
INSERT INTO `cms_entry_metas` VALUES (2147,144,'form-books','Dark Magic|mario bros|World War II Cont');
INSERT INTO `cms_entry_metas` VALUES (2046,801,'backup-slug','\nhydrangeas-12\n');
INSERT INTO `cms_entry_metas` VALUES (2056,805,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-18\n');
INSERT INTO `cms_entry_metas` VALUES (2045,800,'backup-slug','\nkoala-16\n');
INSERT INTO `cms_entry_metas` VALUES (2049,803,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-5\n');
INSERT INTO `cms_entry_metas` VALUES (2050,804,'backup-slug','\nresize-florian-new-02-20\n');
INSERT INTO `cms_entry_metas` VALUES (2088,817,'backup-slug','\nthursday20september2012043329slide3-3\n');
INSERT INTO `cms_entry_metas` VALUES (2061,808,'backup-slug','\nresize-florian-new-02-21\n');
INSERT INTO `cms_entry_metas` VALUES (2059,807,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-7\n');
INSERT INTO `cms_entry_metas` VALUES (2067,809,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-19\n');
INSERT INTO `cms_entry_metas` VALUES (2058,806,'backup-slug','\nkoala-17\n');
INSERT INTO `cms_entry_metas` VALUES (2086,816,'backup-slug','\npenguins-6\n');
INSERT INTO `cms_entry_metas` VALUES (2070,811,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-8\n');
INSERT INTO `cms_entry_metas` VALUES (2076,812,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-20\n');
INSERT INTO `cms_entry_metas` VALUES (2069,810,'backup-slug','\nkoala-18\n');
INSERT INTO `cms_entry_metas` VALUES (2151,145,'backup-slug','\nkeep-healthy-keep-fresh\n');
INSERT INTO `cms_entry_metas` VALUES (2083,814,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-21\n');
INSERT INTO `cms_entry_metas` VALUES (2078,813,'backup-slug','\nkoala-19\n');
INSERT INTO `cms_entry_metas` VALUES (2093,818,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-22\n');
INSERT INTO `cms_entry_metas` VALUES (2085,815,'backup-slug','\nkoala-20\n');
INSERT INTO `cms_entry_metas` VALUES (2135,828,'backup-slug','\nsmoke-stock1191-4\n');
INSERT INTO `cms_entry_metas` VALUES (2096,820,'backup-slug','\nthursday20september2012043329slide3-4\n');
INSERT INTO `cms_entry_metas` VALUES (2102,821,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-23\n');
INSERT INTO `cms_entry_metas` VALUES (2095,819,'backup-slug','\nkoala-21\n');
INSERT INTO `cms_entry_metas` VALUES (2109,823,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-24\n');
INSERT INTO `cms_entry_metas` VALUES (2104,822,'backup-slug','\nkoala-22\n');
INSERT INTO `cms_entry_metas` VALUES (2115,824,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-25\n');
INSERT INTO `cms_entry_metas` VALUES (2117,825,'backup-slug','\n20110610-103453-6\n');
INSERT INTO `cms_entry_metas` VALUES (2148,144,'form-dropme','drop dua');
INSERT INTO `cms_entry_metas` VALUES (2123,826,'backup-slug','\n20110610-103453-7\n');
INSERT INTO `cms_entry_metas` VALUES (2133,827,'backup-slug','\n20110530-061908-8\n');
INSERT INTO `cms_entry_metas` VALUES (2141,829,'backup-slug','\n20110530-061908-11\n');
INSERT INTO `cms_entry_metas` VALUES (2149,144,'form-fake_ckeditor','<p>fake ckeditor</p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (2150,144,'form-warnaku','#00ffff');
INSERT INTO `cms_entry_metas` VALUES (2171,839,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-4\n');
INSERT INTO `cms_entry_metas` VALUES (2154,831,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-1\n');
INSERT INTO `cms_entry_metas` VALUES (2155,832,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-8\n');
INSERT INTO `cms_entry_metas` VALUES (2156,833,'backup-slug','\nsmoke-stock1191-5\n');
INSERT INTO `cms_entry_metas` VALUES (2157,834,'backup-slug','\nresize-florian-new-02-22\n');
INSERT INTO `cms_entry_metas` VALUES (2158,835,'backup-slug','\nbatgirl-issue-10-by-artgerm-6\n');
INSERT INTO `cms_entry_metas` VALUES (2159,836,'backup-slug','\ntulips-12\n');
INSERT INTO `cms_entry_metas` VALUES (2160,837,'backup-slug','\n20110530-061908-12\n');
INSERT INTO `cms_entry_metas` VALUES (2161,838,'backup-slug','\nthursday20september2012014818slide1-4\n');
INSERT INTO `cms_entry_metas` VALUES (2437,6,'form-approval','Pending');
INSERT INTO `cms_entry_metas` VALUES (2421,884,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-5\n');
INSERT INTO `cms_entry_metas` VALUES (2173,840,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-3\n');
INSERT INTO `cms_entry_metas` VALUES (2174,841,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-9\n');
INSERT INTO `cms_entry_metas` VALUES (2175,842,'backup-slug','\nsmoke-stock1191-6\n');
INSERT INTO `cms_entry_metas` VALUES (2176,843,'backup-slug','\nresize-florian-new-02-23\n');
INSERT INTO `cms_entry_metas` VALUES (2177,844,'backup-slug','\nbatgirl-issue-10-by-artgerm-10\n');
INSERT INTO `cms_entry_metas` VALUES (2178,845,'backup-slug','\ntulips-13\n');
INSERT INTO `cms_entry_metas` VALUES (2179,846,'backup-slug','\n20110530-061908-13\n');
INSERT INTO `cms_entry_metas` VALUES (2180,847,'backup-slug','\nthursday20september2012014818slide1-5\n');
INSERT INTO `cms_entry_metas` VALUES (2190,849,'backup-slug','\n20110530-061908-14\n');
INSERT INTO `cms_entry_metas` VALUES (2213,852,'backup-slug','\n20110530-061908-16\n');
INSERT INTO `cms_entry_metas` VALUES (2390,873,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-1\n');
INSERT INTO `cms_entry_metas` VALUES (2400,876,'backup-slug','\nlighthouse-5\n');
INSERT INTO `cms_entry_metas` VALUES (2387,208,'backup-slug','\nslider-traffic\n');
INSERT INTO `cms_entry_metas` VALUES (2384,871,'backup-slug','\nlogo\n');
INSERT INTO `cms_entry_metas` VALUES (2385,871,'image_type','png');
INSERT INTO `cms_entry_metas` VALUES (2386,871,'image_size','3681');
INSERT INTO `cms_entry_metas` VALUES (2201,851,'backup-slug','\n20110530-061908-15\n');
INSERT INTO `cms_entry_metas` VALUES (2258,858,'backup-slug','\n20110530-061908-19\n');
INSERT INTO `cms_entry_metas` VALUES (2413,881,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-11\n');
INSERT INTO `cms_entry_metas` VALUES (2322,865,'backup-slug','\n20110530-061908-24\n');
INSERT INTO `cms_entry_metas` VALUES (2311,864,'backup-slug','\n20110530-061908-23\n');
INSERT INTO `cms_entry_metas` VALUES (2420,84,'form-approval','Approve');
INSERT INTO `cms_entry_metas` VALUES (2211,99,'backup-slug','\ntes-loro-gambar\n');
INSERT INTO `cms_entry_metas` VALUES (2212,72,'backup-slug','\ntes-buku-indo\n');
INSERT INTO `cms_entry_metas` VALUES (2269,859,'backup-slug','\n20110530-061908-20\n');
INSERT INTO `cms_entry_metas` VALUES (2391,874,'backup-slug','\n20110530-061908-1\n');
INSERT INTO `cms_entry_metas` VALUES (2392,875,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-4\n');
INSERT INTO `cms_entry_metas` VALUES (2225,854,'backup-slug','\n20110530-061908-17\n');
INSERT INTO `cms_entry_metas` VALUES (2247,857,'backup-slug','\n20110530-061908-18\n');
INSERT INTO `cms_entry_metas` VALUES (2289,861,'backup-slug','\n20110530-061908-22\n');
INSERT INTO `cms_entry_metas` VALUES (2425,887,'backup-slug','\nsmoke-stock1191-7\n');
INSERT INTO `cms_entry_metas` VALUES (2424,886,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-12\n');
INSERT INTO `cms_entry_metas` VALUES (2423,885,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-6\n');
INSERT INTO `cms_entry_metas` VALUES (2422,6,'count-books','9');
INSERT INTO `cms_entry_metas` VALUES (2415,883,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-10\n');
INSERT INTO `cms_entry_metas` VALUES (2403,878,'backup-slug','\n20110530-061908-26\n');
INSERT INTO `cms_entry_metas` VALUES (2404,879,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-9\n');
INSERT INTO `cms_entry_metas` VALUES (2299,862,'backup-slug','\n20110530-061908-21\n');
INSERT INTO `cms_entry_metas` VALUES (2426,888,'backup-slug','\nresize-florian-new-02-24\n');
INSERT INTO `cms_entry_metas` VALUES (2402,877,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-10\n');
INSERT INTO `cms_entry_metas` VALUES (2411,880,'backup-slug','\nlighthouse-6\n');
INSERT INTO `cms_entry_metas` VALUES (2333,866,'backup-slug','\n20110530-061908-25\n');
INSERT INTO `cms_entry_metas` VALUES (2414,882,'backup-slug','\n20110530-061908-28\n');
INSERT INTO `cms_entry_metas` VALUES (2363,869,'backup-slug','\n20110530-061908-27\n');
INSERT INTO `cms_entry_metas` VALUES (2427,889,'backup-slug','\nbatgirl-issue-10-by-artgerm-11\n');
INSERT INTO `cms_entry_metas` VALUES (2428,890,'backup-slug','\ntulips-14\n');
INSERT INTO `cms_entry_metas` VALUES (2429,891,'backup-slug','\n20110530-061908-29\n');
INSERT INTO `cms_entry_metas` VALUES (2430,892,'backup-slug','\nthursday20september2012014818slide1-6\n');
INSERT INTO `cms_entry_metas` VALUES (2439,698,'count-books','9');
INSERT INTO `cms_entry_metas` VALUES (2440,894,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-7\n');
INSERT INTO `cms_entry_metas` VALUES (2441,895,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-13\n');
INSERT INTO `cms_entry_metas` VALUES (2442,896,'backup-slug','\nsmoke-stock1191-8\n');
INSERT INTO `cms_entry_metas` VALUES (2443,897,'backup-slug','\nresize-florian-new-02-25\n');
INSERT INTO `cms_entry_metas` VALUES (2444,898,'backup-slug','\nbatgirl-issue-10-by-artgerm-12\n');
INSERT INTO `cms_entry_metas` VALUES (2445,899,'backup-slug','\ntulips-15\n');
INSERT INTO `cms_entry_metas` VALUES (2446,900,'backup-slug','\n20110530-061908-30\n');
INSERT INTO `cms_entry_metas` VALUES (2447,901,'backup-slug','\nthursday20september2012014818slide1-7\n');
INSERT INTO `cms_entry_metas` VALUES (2454,698,'form-approval','Pending');
INSERT INTO `cms_entry_metas` VALUES (2460,571,'form-termin','06/16/2016');
INSERT INTO `cms_entry_metas` VALUES (2463,572,'form-termin','06/01/2016');
INSERT INTO `cms_entry_metas` VALUES (2466,73,'form-termin','06/01/2016');
/*!40000 ALTER TABLE `cms_entry_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_roles`
--

DROP TABLE IF EXISTS `cms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_roles` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `description` text,
  `count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_roles`
--

LOCK TABLES `cms_roles` WRITE;
/*!40000 ALTER TABLE `cms_roles` DISABLE KEYS */;
INSERT INTO `cms_roles` VALUES (1,'Super Admin','Administrator who has all access for the web without exceptions.',1);
INSERT INTO `cms_roles` VALUES (2,'Admin','Administrator from the clients.',NULL);
INSERT INTO `cms_roles` VALUES (3,'Regular User','Anyone with no access to admin panel.',NULL);
/*!40000 ALTER TABLE `cms_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'title','Creazi Citra Cemerlang');
INSERT INTO `cms_settings` VALUES (2,'tagline','design,creazi,creative,emba 3d,interior,intrafood products,products packaging,intrafood products packaging,emba,3d interior,3d,packaging,business,products,execute,intrafood,description,competitive,company,built');
INSERT INTO `cms_settings` VALUES (3,'description','CREAzi Design Surabaya Jakarta Indonesia');
INSERT INTO `cms_settings` VALUES (4,'date_format','d M Y');
INSERT INTO `cms_settings` VALUES (5,'time_format','h:i A');
INSERT INTO `cms_settings` VALUES (6,'header','');
INSERT INTO `cms_settings` VALUES (7,'top_insert','');
INSERT INTO `cms_settings` VALUES (8,'bottom_insert','');
INSERT INTO `cms_settings` VALUES (9,'google_analytics_code','UA-33194544-1');
INSERT INTO `cms_settings` VALUES (10,'display_width','3200');
INSERT INTO `cms_settings` VALUES (11,'display_height','1800');
INSERT INTO `cms_settings` VALUES (12,'display_crop','0');
INSERT INTO `cms_settings` VALUES (13,'thumb_width','120');
INSERT INTO `cms_settings` VALUES (14,'thumb_height','120');
INSERT INTO `cms_settings` VALUES (15,'thumb_crop','0');
INSERT INTO `cms_settings` VALUES (16,'language','en_english\r\nid_indonesia\r\nzh_chinese');
INSERT INTO `cms_settings` VALUES (17,'homepage_share','871');
INSERT INTO `cms_settings` VALUES (18,'usd_sell','12016.00');
INSERT INTO `cms_settings` VALUES (19,'custom-pagination','10');
INSERT INTO `cms_settings` VALUES (20,'custom-email_contact','andybasuki88@gmail.com');
INSERT INTO `cms_settings` VALUES (21,'custom-overwrite_image','enable');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_type_metas`
--

DROP TABLE IF EXISTS `cms_type_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_type_metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text,
  `input_type` varchar(500) DEFAULT NULL,
  `validation` text,
  `instruction` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=599 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_type_metas`
--

LOCK TABLES `cms_type_metas` WRITE;
/*!40000 ALTER TABLE `cms_type_metas` DISABLE KEYS */;
INSERT INTO `cms_type_metas` VALUES (563,3,'form-approval','Approve\r\nPending','dropdown','not_empty|','This book is already approved or not.');
INSERT INTO `cms_type_metas` VALUES (562,3,'form-publisher','','text','','');
INSERT INTO `cms_type_metas` VALUES (7,4,'stagging','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (561,3,'form-publish_date','','datepicker','not_empty|','');
INSERT INTO `cms_type_metas` VALUES (560,3,'form-author','','text','','');
INSERT INTO `cms_type_metas` VALUES (559,3,'form-weight','','text','not_empty|is_numeric|','Product weight in kg.');
INSERT INTO `cms_type_metas` VALUES (243,3,'stagging','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (180,3,'gallery','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (564,3,'form-background','','image','','Background of the book');
INSERT INTO `cms_type_metas` VALUES (254,3,'title_key','Books Name',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (498,5,'display_crop','2',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (499,5,'form-action','Comment\r\nShare\r\nLike\r\nUnlike that damn bloG','checkbox','','More Action about the blogs.');
INSERT INTO `cms_type_metas` VALUES (475,3,'category','nerd section',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (569,4,'form-books','','multibrowse','not_empty|','Test New Type again.');
INSERT INTO `cms_type_metas` VALUES (502,4,'category','nerd section',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (595,11,'form-biggy_text','','textarea','max_length_100|','');
INSERT INTO `cms_type_metas` VALUES (596,11,'form-normal_text','','text','max_length_30|','');
INSERT INTO `cms_type_metas` VALUES (497,5,'category','nerd section',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (463,12,'category','home',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (464,12,'form-url_link','','text','is_url|','Example: http://www.yourdomain.com');
INSERT INTO `cms_type_metas` VALUES (440,11,'pagination','7',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (465,11,'category','nerd section',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (450,11,'gallery','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (594,11,'form-fake_ckeditor','','ckeditor','not_empty|','just a test additional ckeditor.');
INSERT INTO `cms_type_metas` VALUES (593,11,'form-group_photo_2','','gallery','max_length_5|','Maximum 5 photos only.');
INSERT INTO `cms_type_metas` VALUES (558,3,'form-quantity','','text','not_empty|is_numeric|','');
INSERT INTO `cms_type_metas` VALUES (557,3,'form-price','','text','not_empty|is_numeric|is_alnum|','');
INSERT INTO `cms_type_metas` VALUES (556,3,'display_crop','2',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (597,11,'form-single_browse','','browse','','');
INSERT INTO `cms_type_metas` VALUES (500,5,'form-background','','image','','');
INSERT INTO `cms_type_metas` VALUES (501,5,'form-books','','browse','','');
INSERT INTO `cms_type_metas` VALUES (570,4,'form-magazine','','multibrowse','','Zpanel Famous Magazine.');
INSERT INTO `cms_type_metas` VALUES (568,4,'form-news_file','','file','','');
INSERT INTO `cms_type_metas` VALUES (592,11,'form-dropme','drop satu\r\ndrop dua\r\ndrop tiga','dropdown','','');
INSERT INTO `cms_type_metas` VALUES (590,11,'form-books','','checkbox','browse_module|','browse books for checkbox.');
INSERT INTO `cms_type_metas` VALUES (591,11,'form-group_photo','','gallery','','just a test field gallery.');
INSERT INTO `cms_type_metas` VALUES (565,3,'form-added_image','','image','','');
INSERT INTO `cms_type_metas` VALUES (566,3,'form-filename','','file','','');
INSERT INTO `cms_type_metas` VALUES (567,3,'form-filename2','','file','','This is just a test file.');
INSERT INTO `cms_type_metas` VALUES (571,4,'form-termin','','multidate','not_empty|','tes multidate field.');
INSERT INTO `cms_type_metas` VALUES (598,11,'form-warnaku','','color','not_empty|','test warna');
/*!40000 ALTER TABLE `cms_type_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_types`
--

DROP TABLE IF EXISTS `cms_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_types`
--

LOCK TABLES `cms_types` WRITE;
/*!40000 ALTER TABLE `cms_types` DISABLE KEYS */;
INSERT INTO `cms_types` VALUES (1,'Media Library','media','All media image is stored here.',0,0,'2013-01-15 03:35:14',1,'2013-01-15 03:35:14',1);
INSERT INTO `cms_types` VALUES (3,'Books','books','All the books story.',0,2,'2013-01-15 04:39:42',1,'2015-03-05 12:15:23',1);
INSERT INTO `cms_types` VALUES (4,'News','news','News inside the books.',3,0,'2013-01-15 04:43:04',1,'2015-03-18 14:46:37',1);
INSERT INTO `cms_types` VALUES (5,'Blogs','blogs','People\'s Blogs.',3,0,'2013-01-15 04:46:35',1,'2015-03-18 10:47:52',1);
INSERT INTO `cms_types` VALUES (11,'Magazine','magazine','Zpanel Magazine Library.',0,0,'2013-12-09 16:16:50',1,'2016-03-07 13:04:42',1);
INSERT INTO `cms_types` VALUES (12,'Slideshow','slideshow','Cakepanel home slideshow',0,0,'2014-09-03 10:42:57',1,'2015-03-05 12:11:11',1);
/*!40000 ALTER TABLE `cms_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user_metas`
--

DROP TABLE IF EXISTS `cms_user_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_metas`
--

LOCK TABLES `cms_user_metas` WRITE;
/*!40000 ALTER TABLE `cms_user_metas` DISABLE KEYS */;
INSERT INTO `cms_user_metas` VALUES (26,2,'city','Surabaya, Indonesia');
INSERT INTO `cms_user_metas` VALUES (25,2,'address','DHI 43');
INSERT INTO `cms_user_metas` VALUES (24,2,'gender','male');
INSERT INTO `cms_user_metas` VALUES (34,3,'address','Jl. Baruk Utara');
INSERT INTO `cms_user_metas` VALUES (35,3,'city','Valencia, Spain');
INSERT INTO `cms_user_metas` VALUES (36,3,'phone','031 878 3188');
INSERT INTO `cms_user_metas` VALUES (33,3,'gender','female');
INSERT INTO `cms_user_metas` VALUES (13,1,'gender','male');
INSERT INTO `cms_user_metas` VALUES (14,1,'address','Jl. Dharmahusada Indah 43');
INSERT INTO `cms_user_metas` VALUES (15,1,'zip_code','60258');
INSERT INTO `cms_user_metas` VALUES (16,1,'city','Surabaya, Indonesia');
INSERT INTO `cms_user_metas` VALUES (17,1,'mobile_phone','089 67367 1110');
INSERT INTO `cms_user_metas` VALUES (18,1,'dob_day','28');
INSERT INTO `cms_user_metas` VALUES (19,1,'dob_month','10');
INSERT INTO `cms_user_metas` VALUES (20,1,'dob_year','1988');
INSERT INTO `cms_user_metas` VALUES (21,1,'job','Web Developer');
INSERT INTO `cms_user_metas` VALUES (22,1,'company','PT. Creazi');
INSERT INTO `cms_user_metas` VALUES (23,1,'company_address','Jl. Nginden Semolo 101');
INSERT INTO `cms_user_metas` VALUES (27,2,'phone','031 5995630');
INSERT INTO `cms_user_metas` VALUES (28,2,'mobile_phone','081 7525 5381');
INSERT INTO `cms_user_metas` VALUES (29,2,'dob_day','20');
INSERT INTO `cms_user_metas` VALUES (30,2,'dob_month','6');
INSERT INTO `cms_user_metas` VALUES (31,2,'dob_year','1985');
INSERT INTO `cms_user_metas` VALUES (32,2,'job','Freelancer');
INSERT INTO `cms_user_metas` VALUES (37,3,'mobile_phone','081 737 5678');
INSERT INTO `cms_user_metas` VALUES (38,3,'dob_day','29');
INSERT INTO `cms_user_metas` VALUES (39,3,'dob_month','1');
INSERT INTO `cms_user_metas` VALUES (40,3,'dob_year','1989');
/*!40000 ALTER TABLE `cms_user_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'admin','zpanel','2013-01-04 00:00:00',1,'2016-06-16 14:23:07',1,1);
INSERT INTO `cms_users` VALUES (2,'Andy','Basuki','2013-01-15 03:42:25',1,'2014-02-06 10:52:30',1,1);
INSERT INTO `cms_users` VALUES (3,'Hana','Tania Libianto','2013-01-21 02:59:43',2,'2014-02-06 10:53:10',1,1);
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-25 12:20:39
