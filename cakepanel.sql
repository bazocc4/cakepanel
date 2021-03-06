-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: cakepanel
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

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
INSERT INTO `cms_accounts` VALUES (1,1,1,'admin','admin@yahoo.com','1d77e03c6e6da258ed15229d957001d56298169e','2018-04-20 14:17:39','2013-01-04 00:00:00',1,'2017-08-04 10:37:59',1);
INSERT INTO `cms_accounts` VALUES (2,2,2,'bazocc4','andybasuki88@gmail.com','d82dff1679e0137a0bab60cc67cc6a2ad36f10a0','2017-11-27 16:11:24','2013-01-15 03:42:56',1,'2016-05-23 13:18:51',2);
INSERT INTO `cms_accounts` VALUES (3,2,3,'regular1','regular@yahoo.com','d82dff1679e0137a0bab60cc67cc6a2ad36f10a0','2017-09-22 14:18:21','2013-01-15 04:17:47',2,'2014-07-24 11:05:12',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=1302 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_entries`
--

LOCK TABLES `cms_entries` WRITE;
/*!40000 ALTER TABLE `cms_entries` DISABLE KEYS */;
INSERT INTO `cms_entries` VALUES (1,'pages','About Us','about-us','<p>\r\n	This is the story of our company.<br />\r\n	Good you.</p>\r\n',4,0,1,0,'2013-01-15 04:14:04',1,'2015-06-10 09:52:33',1,548,'en-1');
INSERT INTO `cms_entries` VALUES (2,'media','Chrysanthemum','chrysanthemum',NULL,0,0,1,0,'2013-01-15 04:14:43',2,'2017-09-20 11:23:48',2,2,'');
INSERT INTO `cms_entries` VALUES (4,'media','Desert','desert',NULL,0,0,1,0,'2013-01-15 04:14:44',2,'2017-08-30 15:15:49',2,4,'');
INSERT INTO `cms_entries` VALUES (40,'media','darth-maul-wall','darth-maul-wall',NULL,0,0,1,0,'2013-01-15 06:04:17',1,'2017-08-30 15:15:49',1,40,'');
INSERT INTO `cms_entries` VALUES (6,'books','World War II Cont','world-war-ii-cont','<p>This is the full story of world war II in America.</p>\r\n',2,0,1,15,'2013-01-15 04:48:37',1,'2017-11-27 16:08:35',1,84,'en-6');
INSERT INTO `cms_entries` VALUES (7,'media','Lighthouse','lighthouse',NULL,0,0,1,0,'2013-01-15 04:58:07',1,'2017-08-30 15:15:49',1,7,'en-7');
INSERT INTO `cms_entries` VALUES (26,'media','9037147_l','9037147-l',NULL,0,0,1,0,'2013-01-15 06:02:20',1,'2017-08-30 15:15:49',1,26,'');
INSERT INTO `cms_entries` VALUES (9,'news','The Death of John Travolta EN','the-death-of-john-en','<p>In the 1996, there was a big war between John Maxwell and Paul Ruthridge.</p>\r\n\r\n<p>And then, John struggled to won against his enemy.</p>\r\n\r\n<p>Finally in 1997, there was an intruption about this war.</p>\r\n',7,6,0,0,'2013-01-15 04:59:41',1,'2017-11-17 16:25:21',1,73,'en-9');
INSERT INTO `cms_entries` VALUES (27,'media','10266023_m','10266023-m',NULL,0,0,1,0,'2013-01-15 06:02:21',1,'2017-08-30 15:15:49',1,27,'');
INSERT INTO `cms_entries` VALUES (28,'media','11034113_m','11034113-m',NULL,0,0,1,0,'2013-01-15 06:02:21',1,'2017-08-30 15:15:49',1,28,'');
INSERT INTO `cms_entries` VALUES (29,'media','4440611861_d8494f0a1c_b','4440611861-d8494f0a1c-b',NULL,0,0,1,0,'2013-01-15 06:02:22',1,'2017-08-30 15:15:49',1,29,'');
INSERT INTO `cms_entries` VALUES (30,'media','blur','blur',NULL,0,0,1,0,'2013-01-15 06:02:59',1,'2017-08-30 15:15:49',1,30,'');
INSERT INTO `cms_entries` VALUES (31,'media','celebration-3day','celebration-3day',NULL,0,0,1,1,'2013-01-15 06:03:00',1,'2017-11-17 14:50:03',1,31,'');
INSERT INTO `cms_entries` VALUES (33,'media','bokeh_art_by_noobieku','bokeh-art-by-noobieku',NULL,0,0,1,0,'2013-01-15 06:03:01',1,'2017-08-30 15:15:49',1,33,'');
INSERT INTO `cms_entries` VALUES (35,'media','Christmas_tree_sxc_hu','christmas-tree-sxc-hu',NULL,0,0,1,0,'2013-01-15 06:03:03',1,'2017-09-20 11:23:48',1,35,'');
INSERT INTO `cms_entries` VALUES (36,'media','contact','contact',NULL,0,0,1,0,'2013-01-15 06:04:15',1,'2017-08-30 15:15:49',1,36,'');
INSERT INTO `cms_entries` VALUES (37,'media','Fire-Stock-Texture','fire-stock-texture',NULL,0,0,1,0,'2013-01-15 06:04:16',1,'2017-08-30 15:15:49',1,37,'');
INSERT INTO `cms_entries` VALUES (39,'media','darth-maul-1-0','darth-maul-1-0',NULL,0,0,1,0,'2013-01-15 06:04:16',1,'2017-08-30 15:15:49',1,39,'');
INSERT INTO `cms_entries` VALUES (41,'media','hot-coffee-wallpapers_8908_1680x1050','hot-coffee-wallpapers-8908-1680x1050',NULL,0,0,1,0,'2013-01-15 06:04:17',1,'2017-08-30 16:12:43',1,41,'en-41');
INSERT INTO `cms_entries` VALUES (42,'media','lily_valley3_22896791_by_stockproject1-d30nxz4','lily-valley3-22896791-by-stockproject1-d30nxz4',NULL,0,0,1,0,'2013-01-15 06:04:18',1,'2017-08-30 15:15:49',1,42,'en-42');
INSERT INTO `cms_entries` VALUES (43,'media','Organic_Coffee_Bean_Sack','organic-coffee-bean-sack',NULL,0,0,1,0,'2013-01-15 06:04:19',1,'2017-08-30 16:12:43',1,108,'en-43');
INSERT INTO `cms_entries` VALUES (44,'media','resize_3d_cartoon_pirate','resize-3d-cartoon-pirate',NULL,0,0,1,0,'2013-01-15 06:04:20',1,'2017-08-30 15:15:49',1,43,'en-44');
INSERT INTO `cms_entries` VALUES (45,'media','resize_3d_scary_aliens','resize-3d-scary-aliens',NULL,0,0,1,0,'2013-01-15 06:04:20',1,'2017-08-30 15:15:49',1,44,'en-45');
INSERT INTO `cms_entries` VALUES (46,'media','resize_florian_new_02','resize-florian-new-02',NULL,0,0,1,0,'2013-01-15 06:04:20',1,'2017-08-30 16:10:14',1,118,'en-46');
INSERT INTO `cms_entries` VALUES (47,'media','Smoke_Stock_21_by_hatestock','smoke-stock-21-by-hatestock',NULL,0,0,1,0,'2013-01-15 06:04:21',1,'2017-08-30 15:15:49',1,48,'en-47');
INSERT INTO `cms_entries` VALUES (48,'media','Smoke-stock1191','smoke-stock1191',NULL,0,0,1,0,'2013-01-15 06:04:22',1,'2017-08-30 16:10:15',1,76,'en-48');
INSERT INTO `cms_entries` VALUES (49,'media','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005',NULL,0,0,1,1,'2013-01-15 06:04:23',1,'2017-08-30 16:12:43',1,45,'en-49');
INSERT INTO `cms_entries` VALUES (50,'media','20110530-061908','20110530-061908',NULL,0,0,1,3,'2013-01-15 06:05:40',1,'2017-11-17 14:56:35',1,871,'en-50');
INSERT INTO `cms_entries` VALUES (51,'media','20110610-103819','20110610-103819',NULL,0,0,1,0,'2013-01-15 06:05:40',1,'2017-08-30 16:10:15',1,50,'en-51');
INSERT INTO `cms_entries` VALUES (52,'media','20110610-103453','20110610-103453',NULL,0,0,1,0,'2013-01-15 06:05:41',1,'2017-08-30 16:10:14',1,116,'en-52');
INSERT INTO `cms_entries` VALUES (53,'media','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7',NULL,0,0,1,0,'2013-01-15 06:05:42',1,'2017-08-30 16:10:15',1,49,'en-53');
INSERT INTO `cms_entries` VALUES (54,'media','6462d28e02631147cd6ee51a744db6c6','6462d28e02631147cd6ee51a744db6c6',NULL,0,0,1,0,'2013-01-15 06:09:23',1,'2017-08-30 16:10:15',1,75,'en-54');
INSERT INTO `cms_entries` VALUES (55,'media','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid',NULL,0,0,1,0,'2013-01-15 06:09:23',1,'2017-08-30 16:10:15',1,51,'en-55');
INSERT INTO `cms_entries` VALUES (56,'media','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm',NULL,0,0,1,0,'2013-01-15 06:09:24',1,'2017-08-30 16:11:11',1,137,'en-56');
INSERT INTO `cms_entries` VALUES (57,'media','batman_by_frogbillgo-d2yoamc','batman-by-frogbillgo-d2yoamc',NULL,0,0,1,0,'2013-01-15 06:09:24',1,'2017-08-30 16:11:11',1,129,'en-57');
INSERT INTO `cms_entries` VALUES (58,'media','Spiderman_by_PatC_14','spiderman-by-patc-14',NULL,0,0,1,0,'2013-01-15 06:09:24',1,'2017-08-30 15:15:49',1,47,'en-58');
INSERT INTO `cms_entries` VALUES (59,'media','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb',NULL,0,0,1,0,'2013-01-15 06:09:25',1,'2017-08-30 16:10:14',1,109,'en-59');
INSERT INTO `cms_entries` VALUES (60,'blogs','War Blog IV','war-blog-iv','<p>This is the blog of war</p>\r\n',49,6,1,0,'2013-01-15 06:13:51',1,'2017-07-05 14:50:14',1,568,'en-60');
INSERT INTO `cms_entries` VALUES (61,'books','Perang Dunia 2','perang-dunia-2','<p>Ini adalah kisah penuh dari perang dunia 2 di USA.</p>\r\n',2,0,1,7,'2013-01-15 06:38:44',1,'2017-11-17 15:40:43',1,850,'id-6');
INSERT INTO `cms_entries` VALUES (574,'blogs','Morning Blog ID','morning-blog-id','<p>just a morning blog, thx</p>\r\n',54,61,1,0,'2015-03-18 11:29:19',1,'2015-03-18 12:11:38',1,579,'id-160');
INSERT INTO `cms_entries` VALUES (573,'media','20110530-061908','20110530-061908-7',NULL,0,50,1,0,'2015-03-18 11:26:37',1,'2017-07-05 11:14:03',1,573,'en-573');
INSERT INTO `cms_entries` VALUES (572,'news','The Resurrection ID','the-resurrection-id','<p>There&#39;s a news that exist a medicine can make human alive from death.</p>\r\n\r\n<p>And then, [to be continue]</p>\r\n',26,61,1,0,'2015-03-18 10:13:01',1,'2016-06-14 14:13:24',1,571,'id-73');
INSERT INTO `cms_entries` VALUES (64,'pages','Contact Us','contact-us','<p>\r\n	Ini adalah alamat baru perusahaan kami.</p>\r\n',36,0,1,0,'2013-01-15 10:24:31',1,'2015-06-10 09:52:33',1,526,'en-64');
INSERT INTO `cms_entries` VALUES (65,'pages','Home','home','<p>\r\n	Welcome to our web pages.</p>\r\n<p>\r\n	In here, you can find a lot of games entertainments.</p>\r\n',27,0,1,0,'2013-01-15 10:42:02',1,'2015-06-10 09:52:33',1,556,'en-65');
INSERT INTO `cms_entries` VALUES (66,'pages','Beranda','beranda','<p>\r\n	Selamat datang di website kami.</p>\r\n<p>\r\n	Di sini, anda semuanya dapat menemukan banyak hiburan.</p>\r\n',27,0,1,0,'2013-01-16 03:22:56',1,'2015-03-17 17:03:03',1,552,'id-65');
INSERT INTO `cms_entries` VALUES (67,'pages','Tentang Kita','tentang-kita','<p>\r\n	Ini adalah suatu kisah mengenai perusahaan kami.</p>\r\n',4,0,1,0,'2013-01-16 03:23:48',1,'2015-03-17 17:03:03',1,549,'id-1');
INSERT INTO `cms_entries` VALUES (571,'news','Serangan Gerilya ID','serangan-gerilya-id','<p>Nowadays, world is happening with &quot;Gerilya War&quot;</p>\r\n',44,61,1,0,'2015-03-18 10:00:21',1,'2016-06-14 14:12:34',1,581,'id-68');
INSERT INTO `cms_entries` VALUES (70,'books','Dark Magic','dark-magic','<p>this is magic from frontend website.</p>\r\n',56,0,1,5,'2013-01-16 09:15:23',1,'2017-11-27 16:08:36',1,70,'en-70');
INSERT INTO `cms_entries` VALUES (72,'books','tes buku indonesia','tes-buku-indo','<p>wkwkwk</p>\r\n',37,0,1,2,'2013-01-16 10:05:04',1,'2017-11-17 16:26:13',1,902,'id-72');
INSERT INTO `cms_entries` VALUES (73,'news','The Resurrection EN','the-resurrection-en','<p>There&#39;s a news that exist a medicine can make human alive from death.</p>\r\n\r\n<p>And then, [to be continue]</p>\r\n',26,6,1,0,'2013-01-16 10:18:50',1,'2016-06-14 14:14:09',1,9,'en-73');
INSERT INTO `cms_entries` VALUES (575,'media','Penguins','penguins-5',NULL,0,129,1,0,'2015-03-18 11:34:46',1,'2017-07-05 14:50:15',1,575,'en-575');
INSERT INTO `cms_entries` VALUES (576,'blogs','War Blog ID','war-blog-id','<p>This is the blog of war</p>\r\n',49,61,1,0,'2015-03-18 11:47:29',1,'2015-03-18 12:11:38',1,576,'id-60');
INSERT INTO `cms_entries` VALUES (75,'media','Penguins','penguins',NULL,0,0,1,0,'2013-01-16 10:39:46',1,'2017-08-30 16:10:15',1,53,'en-75');
INSERT INTO `cms_entries` VALUES (76,'media','Koala','koala',NULL,0,0,1,0,'2013-01-16 10:43:31',3,'2017-08-30 16:10:15',3,83,'en-76');
INSERT INTO `cms_entries` VALUES (84,'books','Jumping Mario Bros','jumping-mario-bros','<p>this is the best mario comic ever guys.</p>\r\n\r\n<p>Did you know this is our first best seller comic in USA nowadays?</p>\r\n\r\n<p>Fantastic adventure is coming soon.</p>\r\n',59,0,1,4,'2013-01-18 12:35:07',1,'2017-11-27 16:08:36',1,6,'en-84');
INSERT INTO `cms_entries` VALUES (83,'media','Lighthouse','lighthouse-1',NULL,0,0,1,0,'2013-01-18 05:39:37',1,'2017-08-30 16:10:15',1,54,'en-83');
INSERT INTO `cms_entries` VALUES (285,'form-group_photo_2','20110530-061908','20110530-061908-4',NULL,50,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,285,'en-285');
INSERT INTO `cms_entries` VALUES (144,'magazine','Body Building Muscle','body-building-muscle','',37,0,1,2,'2013-12-09 16:17:07',1,'2017-09-20 11:30:45',1,144,'en-144');
INSERT INTO `cms_entries` VALUES (108,'media','Hydrangeas','hydrangeas',NULL,0,0,1,1,'2013-01-22 11:41:10',1,'2017-08-30 16:10:14',1,117,'en-108');
INSERT INTO `cms_entries` VALUES (89,'media','Lighthouse','lighthouse-3',NULL,0,83,1,0,'2013-01-19 04:40:24',1,'2013-01-20 08:32:03',1,89,'');
INSERT INTO `cms_entries` VALUES (90,'media','Chrysanthemum','chrysanthemum-1',NULL,0,0,1,0,'2013-01-19 05:03:37',1,'2017-09-20 11:23:48',1,57,'en-90');
INSERT INTO `cms_entries` VALUES (145,'magazine','Keep Healthy Keep Fresh','keep-healthy-keep-fresh','',76,0,1,7,'2013-12-09 16:17:31',1,'2017-09-20 11:30:45',1,145,'en-145');
INSERT INTO `cms_entries` VALUES (99,'books','tes loro gambar','tes-loro-gambar','',48,0,1,2,'2013-01-19 08:28:10',1,'2017-11-17 15:40:43',1,1242,'id-96');
INSERT INTO `cms_entries` VALUES (1220,'books','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-19',NULL,55,84,1,0,'2017-07-05 15:10:41',1,'2017-07-05 15:10:41',1,1220,'en-1220');
INSERT INTO `cms_entries` VALUES (115,'media','20110530-061908','20110530-061908-3',NULL,0,50,1,0,'2013-02-12 11:23:52',1,'2014-11-21 10:36:56',1,115,'en-115');
INSERT INTO `cms_entries` VALUES (116,'media','Thursday20September2012043329slide3','thursday20september2012043329slide3',NULL,0,0,1,0,'2013-04-03 10:44:08',1,'2017-08-30 16:10:15',1,52,'en-116');
INSERT INTO `cms_entries` VALUES (117,'media','Thursday20September2012014818slide1','thursday20september2012014818slide1',NULL,0,0,1,0,'2013-04-03 10:44:37',1,'2017-08-30 16:10:14',1,130,'en-117');
INSERT INTO `cms_entries` VALUES (118,'media','Thursday20September2012043326slide2','thursday20september2012043326slide2',NULL,0,0,1,1,'2013-04-03 10:47:06',1,'2017-08-30 16:10:15',1,59,'en-118');
INSERT INTO `cms_entries` VALUES (130,'media','Lighthouse','lighthouse-2',NULL,0,0,1,0,'2013-07-09 13:51:12',1,'2017-08-30 16:10:15',1,56,'en-130');
INSERT INTO `cms_entries` VALUES (129,'media','Penguins','penguins-2',NULL,0,0,1,1,'2013-07-09 13:51:11',1,'2017-08-30 16:10:15',1,55,'en-129');
INSERT INTO `cms_entries` VALUES (131,'media','Tulips','tulips-1',NULL,0,0,1,1,'2013-07-09 13:51:13',1,'2017-11-17 15:39:50',1,90,'en-131');
INSERT INTO `cms_entries` VALUES (137,'media','slider','slider',NULL,0,0,1,0,'2013-08-16 15:24:16',1,'2017-08-30 15:15:49',1,46,'en-137');
INSERT INTO `cms_entries` VALUES (160,'blogs','Morning Blog EN','morning-blog-en','<p>just a morning blog, thx</p>\r\n',54,6,1,0,'2014-02-04 09:01:45',1,'2017-07-05 11:44:33',1,577,'en-160');
INSERT INTO `cms_entries` VALUES (1282,'form-group_photo','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb-37',NULL,59,161,1,0,'2017-11-17 16:45:25',1,'2017-11-17 16:45:26',1,1282,'en-1282');
INSERT INTO `cms_entries` VALUES (161,'magazine','All about Magazine Cake','all-about-magazine-cake','<p><img alt=\"clara_berdiri\" height=\"1280\" src=\"/cakepanel/img/upload/1270.jpeg\" width=\"960\" />test minum</p>\r\n\r\n<p>air jeruk segar</p>\r\n\r\n<p>alami lo</p>\r\n',108,0,1,18,'2014-05-08 10:17:12',1,'2017-11-17 16:45:27',1,161,'en-161');
INSERT INTO `cms_entries` VALUES (1279,'form-group_photo','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-37',NULL,56,161,1,0,'2017-11-17 16:45:25',1,'2017-11-17 16:45:25',1,1279,'en-1279');
INSERT INTO `cms_entries` VALUES (1280,'form-group_photo','20110530-061908','20110530-061908-55',NULL,50,161,1,0,'2017-11-17 16:45:25',1,'2017-11-17 16:45:25',1,1280,'en-1280');
INSERT INTO `cms_entries` VALUES (1281,'form-group_photo','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-20',NULL,49,161,1,0,'2017-11-17 16:45:25',1,'2017-11-17 16:45:25',1,1281,'en-1281');
INSERT INTO `cms_entries` VALUES (280,'form-group_photo','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-3',NULL,55,145,1,0,'2014-11-21 11:19:30',1,'2014-11-21 11:19:30',1,280,'en-280');
INSERT INTO `cms_entries` VALUES (281,'form-group_photo','Penguins','penguins-4',NULL,129,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,281,'en-281');
INSERT INTO `cms_entries` VALUES (282,'form-group_photo','Chrysanthemum','chrysanthemum-2',NULL,90,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,282,'en-282');
INSERT INTO `cms_entries` VALUES (283,'form-group_photo_2','Hydrangeas','hydrangeas-1',NULL,108,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,283,'en-283');
INSERT INTO `cms_entries` VALUES (284,'form-group_photo_2','Thursday20September2012014818slide1','thursday20september2012014818slide1-1',NULL,117,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,284,'en-284');
INSERT INTO `cms_entries` VALUES (206,'slideshow','slider good library','slider-library','',29,0,1,0,'2014-09-03 10:44:11',1,'2017-11-17 14:43:49',1,206,'en-206');
INSERT INTO `cms_entries` VALUES (207,'slideshow','slider coffee cream','slider-coffee','',1296,0,1,0,'2014-09-03 10:46:56',1,'2018-03-27 15:30:35',1,207,'en-207');
INSERT INTO `cms_entries` VALUES (208,'slideshow','slider traffic','slider-traffic','',1297,0,0,0,'2014-09-03 10:47:43',1,'2018-03-27 15:03:02',1,208,'en-208');
INSERT INTO `cms_entries` VALUES (215,'pages','Kontak kami','kontak-kami','<p>\r\n	Ini adalah alamat baru perusahaan kami.</p>\r\n',36,0,1,0,'2014-09-05 17:04:25',1,'2015-03-17 17:02:32',1,525,'id-64');
INSERT INTO `cms_entries` VALUES (1287,'form-group_photo_2','slider','slider-2',NULL,137,161,1,0,'2017-11-17 16:45:26',1,'2017-11-17 16:45:26',1,1287,'en-1287');
INSERT INTO `cms_entries` VALUES (1286,'form-group_photo_2','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-23',NULL,55,161,1,0,'2017-11-17 16:45:26',1,'2017-11-17 16:45:26',1,1286,'en-1286');
INSERT INTO `cms_entries` VALUES (286,'form-group_photo_2','Smoke-stock1191','smoke-stock1191-1',NULL,48,145,1,0,'2014-11-21 11:19:31',1,'2014-11-21 11:19:31',1,286,'en-286');
INSERT INTO `cms_entries` VALUES (1217,'books','Lighthouse','lighthouse-11',NULL,130,84,1,0,'2017-07-05 15:10:41',1,'2017-07-05 15:10:41',1,1217,'en-1217');
INSERT INTO `cms_entries` VALUES (1215,'books','Thursday20September2012043329slide3','thursday20september2012043329slide3-21',NULL,116,70,1,0,'2017-07-05 14:57:57',1,'2017-07-05 14:57:57',1,1215,'en-1215');
INSERT INTO `cms_entries` VALUES (1216,'books','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-18',NULL,49,70,1,0,'2017-07-05 14:57:57',1,'2017-07-05 14:57:57',1,1216,'en-1216');
INSERT INTO `cms_entries` VALUES (343,'books','resize_florian_new_02','resize-florian-new-02-5',NULL,46,61,1,0,'2015-01-21 10:09:43',1,'2015-01-21 10:09:43',1,343,'en-343');
INSERT INTO `cms_entries` VALUES (364,'media','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-5',NULL,0,49,1,0,'2015-01-21 10:25:39',1,'2017-11-17 16:26:13',1,364,'en-364');
INSERT INTO `cms_entries` VALUES (353,'books','20110530-061908','20110530-061908-5',NULL,50,99,1,0,'2015-01-21 10:17:20',1,'2015-01-21 10:17:20',1,353,'en-353');
INSERT INTO `cms_entries` VALUES (354,'books','20110610-103453','20110610-103453-1',NULL,52,99,1,0,'2015-01-21 10:17:20',1,'2015-01-21 10:17:20',1,354,'en-354');
INSERT INTO `cms_entries` VALUES (355,'media','Hydrangeas','hydrangeas-3',NULL,0,108,1,0,'2015-01-21 10:17:20',1,'2015-01-21 10:17:20',1,355,'en-355');
INSERT INTO `cms_entries` VALUES (1250,'books','Koala','koala-3',NULL,76,72,1,0,'2017-11-17 16:26:13',1,'2017-11-17 16:26:13',1,1250,'en-1250');
INSERT INTO `cms_entries` VALUES (1251,'books','Hydrangeas','hydrangeas-4',NULL,108,72,1,0,'2017-11-17 16:26:13',1,'2017-11-17 16:26:13',1,1251,'en-1251');
INSERT INTO `cms_entries` VALUES (1166,'books','Smoke-stock1191','smoke-stock1191-34',NULL,48,6,1,0,'2017-07-05 13:15:43',1,'2017-07-05 13:15:43',1,1166,'en-1166');
INSERT INTO `cms_entries` VALUES (1167,'books','resize_florian_new_02','resize-florian-new-02-43',NULL,46,6,1,0,'2017-07-05 13:15:43',1,'2017-07-05 13:15:43',1,1167,'en-1167');
INSERT INTO `cms_entries` VALUES (1168,'books','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-34',NULL,56,6,1,0,'2017-07-05 13:15:43',1,'2017-07-05 13:15:44',1,1168,'en-1168');
INSERT INTO `cms_entries` VALUES (1169,'books','Tulips','tulips-30',NULL,131,6,1,0,'2017-07-05 13:15:44',1,'2017-07-05 13:15:44',1,1169,'en-1169');
INSERT INTO `cms_entries` VALUES (1170,'books','20110530-061908','20110530-061908-52',NULL,50,6,1,0,'2017-07-05 13:15:44',1,'2017-07-05 13:15:44',1,1170,'en-1170');
INSERT INTO `cms_entries` VALUES (399,'news','Serangan Gerilya EN Updated','serangan-gerilya-en','<p>Nowadays, world is happening with &quot;Gerilya War&quot;</p>\r\n',44,6,1,0,'2015-02-09 15:14:13',1,'2017-11-17 15:54:25',1,399,'en-68');
INSERT INTO `cms_entries` VALUES (1275,'magazine','Hydrangeas','hydrangeas-21',NULL,108,161,1,0,'2017-11-17 16:45:24',1,'2017-11-17 16:45:24',1,1275,'en-1275');
INSERT INTO `cms_entries` VALUES (1276,'magazine','batman_by_frogbillgo-d2yoamc','batman-by-frogbillgo-d2yoamc-30',NULL,57,161,1,0,'2017-11-17 16:45:24',1,'2017-11-17 16:45:25',1,1276,'en-1276');
INSERT INTO `cms_entries` VALUES (1283,'form-group_photo','20110610-103819','20110610-103819-7',NULL,51,161,1,0,'2017-11-17 16:45:26',1,'2017-11-17 16:45:26',1,1283,'en-1283');
INSERT INTO `cms_entries` VALUES (1274,'magazine','6462d28e02631147cd6ee51a744db6c6','6462d28e02631147cd6ee51a744db6c6-26',NULL,54,161,1,0,'2017-11-17 16:45:24',1,'2017-11-17 16:45:24',1,1274,'en-1274');
INSERT INTO `cms_entries` VALUES (1273,'magazine','Smoke-stock1191','smoke-stock1191-36',NULL,48,161,1,0,'2017-11-17 16:45:24',1,'2017-11-17 16:45:24',1,1273,'en-1273');
INSERT INTO `cms_entries` VALUES (577,'blogs','Statue Blog','statue-blog','<p>Patung Budha di Yogyakarta.</p>\r\n',27,6,1,0,'2015-03-18 12:09:37',1,'2017-07-05 11:44:33',1,564,'en-577');
INSERT INTO `cms_entries` VALUES (578,'media','Thursday20September2012043326slide2','thursday20september2012043326slide2-1',NULL,0,118,1,0,'2015-03-18 12:09:38',1,'2017-07-05 11:14:26',1,578,'en-578');
INSERT INTO `cms_entries` VALUES (579,'blogs','Statue Blog ID','statue-blog-id','<p>Patung Budha di Yogyakarta.</p>\r\n',27,61,1,0,'2015-03-18 12:10:20',1,'2015-03-18 12:11:38',1,574,'id-577');
INSERT INTO `cms_entries` VALUES (581,'news','The Death of John EN','the-death-of-john-en-1','<p>In the 1996, there was a big war between John Maxwell and Paul Ruthridge.</p>\r\n\r\n<p>And then, John struggled to won against his enemy.</p>\r\n\r\n<p>Finally in 1997, there was an intruption about this war.</p>\r\n',7,61,1,0,'2015-03-18 15:20:50',1,'2016-06-14 14:14:36',1,580,'id-9');
INSERT INTO `cms_entries` VALUES (871,'media','logo','logo',NULL,0,0,1,0,'2016-03-31 11:57:48',1,'2017-08-30 16:10:14',1,131,'en-871');
INSERT INTO `cms_entries` VALUES (1272,'magazine','Spiderman_by_PatC_14','spiderman-by-patc-14-8',NULL,58,161,1,0,'2017-11-17 16:45:24',1,'2017-11-17 16:45:24',1,1272,'en-1272');
INSERT INTO `cms_entries` VALUES (1164,'books','6462d28e02631147cd6ee51a744db6c6','6462d28e02631147cd6ee51a744db6c6-25',NULL,54,6,1,0,'2017-07-05 13:15:43',1,'2017-07-05 13:15:43',1,1164,'en-1164');
INSERT INTO `cms_entries` VALUES (1165,'books','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb-35',NULL,59,6,1,0,'2017-07-05 13:15:43',1,'2017-07-05 13:15:43',1,1165,'en-1165');
INSERT INTO `cms_entries` VALUES (1278,'form-group_photo','resize_3d_cartoon_pirate','resize-3d-cartoon-pirate-8',NULL,44,161,1,0,'2017-11-17 16:45:25',1,'2017-11-17 16:45:25',1,1278,'en-1278');
INSERT INTO `cms_entries` VALUES (1289,'meta-tags','Books','books','books',0,0,1,0,'2017-12-14 11:46:58',1,'2017-12-14 11:58:26',1,1292,'en-1289');
INSERT INTO `cms_entries` VALUES (1290,'meta-tags','Buku','buku','books',0,0,1,0,'2017-12-14 11:48:36',1,'2017-12-14 11:58:26',1,1293,'id-1289');
INSERT INTO `cms_entries` VALUES (1291,'meta-tags','Shu','shu','books',0,0,1,0,'2017-12-14 11:49:07',1,'2017-12-14 11:58:26',1,1294,'zh-1289');
INSERT INTO `cms_entries` VALUES (1292,'meta-tags','Magazine','magazine','magazine',0,0,1,0,'2017-12-14 11:56:42',1,'2017-12-14 11:58:26',1,1289,'en-1292');
INSERT INTO `cms_entries` VALUES (1293,'meta-tags','Majalah','majalah','magazine',0,0,1,0,'2017-12-14 11:57:32',1,'2017-12-14 11:58:26',1,1290,'id-1292');
INSERT INTO `cms_entries` VALUES (1294,'meta-tags','Chinese Magazine','chinese-magazine','magazine',0,0,1,0,'2017-12-14 11:58:14',1,'2017-12-14 11:58:26',1,1291,'zh-1292');
INSERT INTO `cms_entries` VALUES (1288,'form-group_photo_2','Smoke-stock1191','smoke-stock1191-37',NULL,48,161,1,0,'2017-11-17 16:45:26',1,'2017-11-17 16:45:27',1,1288,'en-1288');
INSERT INTO `cms_entries` VALUES (902,'books','Sulap Kegelapan','sulap-kegelapan','<p>Ini adalah sulap hebat dari website depan !!</p>\r\n',56,0,1,5,'2016-10-11 16:36:02',1,'2017-11-17 15:40:43',1,61,'id-70');
INSERT INTO `cms_entries` VALUES (903,'books','Penguins','penguins-7',NULL,75,902,1,0,'2016-10-11 16:36:02',1,'2016-10-11 16:36:02',1,903,'en-903');
INSERT INTO `cms_entries` VALUES (904,'books','resize_florian_new_02','resize-florian-new-02-26',NULL,46,902,1,0,'2016-10-11 16:36:02',1,'2016-10-11 16:36:02',1,904,'en-904');
INSERT INTO `cms_entries` VALUES (905,'books','Koala','koala-23',NULL,76,902,1,0,'2016-10-11 16:36:02',1,'2016-10-11 16:36:02',1,905,'en-905');
INSERT INTO `cms_entries` VALUES (906,'books','Thursday20September2012043329slide3','thursday20september2012043329slide3-5',NULL,116,902,1,0,'2016-10-11 16:36:03',1,'2016-10-11 16:36:03',1,906,'en-906');
INSERT INTO `cms_entries` VALUES (907,'books','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-3',NULL,49,902,1,0,'2016-10-11 16:36:03',1,'2016-10-11 16:36:03',1,907,'en-907');
INSERT INTO `cms_entries` VALUES (908,'magazine','Majalah Kue','majalah-kue','<p>test minum</p>\r\n\r\n<p>air jeruk segar</p>\r\n\r\n<p>alami lo</p>\r\n',108,0,1,18,'2016-10-11 16:37:53',1,'2016-10-11 16:37:54',1,908,'id-161');
INSERT INTO `cms_entries` VALUES (909,'magazine','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-13',NULL,56,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,909,'en-909');
INSERT INTO `cms_entries` VALUES (910,'magazine','Spiderman_by_PatC_14','spiderman-by-patc-14-1',NULL,58,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,910,'en-910');
INSERT INTO `cms_entries` VALUES (911,'magazine','Smoke-stock1191','smoke-stock1191-9',NULL,48,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,911,'en-911');
INSERT INTO `cms_entries` VALUES (912,'magazine','6462d28e02631147cd6ee51a744db6c6','6462d28e02631147cd6ee51a744db6c6-8',NULL,54,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,912,'en-912');
INSERT INTO `cms_entries` VALUES (913,'magazine','Hydrangeas','hydrangeas-13',NULL,108,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,913,'en-913');
INSERT INTO `cms_entries` VALUES (914,'magazine','batman_by_frogbillgo-d2yoamc','batman-by-frogbillgo-d2yoamc-26',NULL,57,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,914,'en-914');
INSERT INTO `cms_entries` VALUES (915,'form-group_photo','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-11',NULL,55,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,915,'en-915');
INSERT INTO `cms_entries` VALUES (916,'form-group_photo','resize_3d_cartoon_pirate','resize-3d-cartoon-pirate-1',NULL,44,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,916,'en-916');
INSERT INTO `cms_entries` VALUES (917,'form-group_photo','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-14',NULL,56,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,917,'en-917');
INSERT INTO `cms_entries` VALUES (918,'form-group_photo','20110530-061908','20110530-061908-31',NULL,50,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,918,'en-918');
INSERT INTO `cms_entries` VALUES (919,'form-group_photo','stock-photo-coffee-beans-in-canvas-sack-9416005','stock-photo-coffee-beans-in-canvas-sack-9416005-6',NULL,49,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,919,'en-919');
INSERT INTO `cms_entries` VALUES (920,'form-group_photo','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb-14',NULL,59,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,920,'en-920');
INSERT INTO `cms_entries` VALUES (921,'form-group_photo','20110610-103819','20110610-103819-1',NULL,51,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,921,'en-921');
INSERT INTO `cms_entries` VALUES (922,'form-group_photo_2','Penguins','penguins-8',NULL,129,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,922,'en-922');
INSERT INTO `cms_entries` VALUES (923,'form-group_photo_2','Koala','koala-24',NULL,76,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:53',1,923,'en-923');
INSERT INTO `cms_entries` VALUES (924,'form-group_photo_2','Thursday20September2012043329slide3','thursday20september2012043329slide3-8',NULL,116,908,1,0,'2016-10-11 16:37:53',1,'2016-10-11 16:37:54',1,924,'en-924');
INSERT INTO `cms_entries` VALUES (925,'form-group_photo_2','resize_florian_new_02','resize-florian-new-02-27',NULL,46,908,1,0,'2016-10-11 16:37:54',1,'2016-10-11 16:37:54',1,925,'en-925');
INSERT INTO `cms_entries` VALUES (926,'form-group_photo_2','Smoke-stock1191','smoke-stock1191-10',NULL,48,908,1,0,'2016-10-11 16:37:54',1,'2016-10-11 16:37:54',1,926,'en-926');
INSERT INTO `cms_entries` VALUES (1171,'books','Thursday20September2012014818slide1','thursday20september2012014818slide1-20',NULL,117,6,1,0,'2017-07-05 13:15:44',1,'2017-07-05 13:15:45',1,1171,'en-1171');
INSERT INTO `cms_entries` VALUES (1284,'form-group_photo_2','Koala','koala-39',NULL,76,161,1,0,'2017-11-17 16:45:26',1,'2017-11-17 16:45:26',1,1284,'en-1284');
INSERT INTO `cms_entries` VALUES (1285,'form-group_photo_2','resize_florian_new_02','resize-florian-new-02-53',NULL,46,161,1,0,'2017-11-17 16:45:26',1,'2017-11-17 16:45:26',1,1285,'en-1285');
INSERT INTO `cms_entries` VALUES (1218,'books','super_mario_bro_by_skottieyoung-d4nh5fb','super-mario-bro-by-skottieyoung-d4nh5fb-36',NULL,59,84,1,0,'2017-07-05 15:10:41',1,'2017-07-05 15:10:41',1,1218,'en-1218');
INSERT INTO `cms_entries` VALUES (1219,'books','20110530-061908','20110530-061908-53',NULL,50,84,1,0,'2017-07-05 15:10:41',1,'2017-07-05 15:10:41',1,1219,'en-1219');
INSERT INTO `cms_entries` VALUES (1163,'books','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7','beautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-19',NULL,53,6,1,0,'2017-07-05 13:15:42',1,'2017-07-05 13:15:42',1,1163,'en-1163');
INSERT INTO `cms_entries` VALUES (1214,'books','Koala','koala-37',NULL,76,70,1,0,'2017-07-05 14:57:57',1,'2017-07-05 14:57:57',1,1214,'en-1214');
INSERT INTO `cms_entries` VALUES (1212,'books','Penguins','penguins-23',NULL,75,70,1,0,'2017-07-05 14:57:56',1,'2017-07-05 14:57:56',1,1212,'en-1212');
INSERT INTO `cms_entries` VALUES (1213,'books','resize_florian_new_02','resize-florian-new-02-52',NULL,46,70,1,0,'2017-07-05 14:57:56',1,'2017-07-05 14:57:56',1,1213,'en-1213');
INSERT INTO `cms_entries` VALUES (1226,'media','3rd anniv','3rd-anniv',NULL,0,0,1,0,'2017-11-17 14:48:28',1,'2017-11-17 14:48:28',1,1226,'en-1226');
INSERT INTO `cms_entries` VALUES (1229,'media','celebration-3day','celebration-3day-1',NULL,0,31,1,0,'2017-11-17 14:50:03',1,'2017-11-17 14:50:03',1,1229,'en-1229');
INSERT INTO `cms_entries` VALUES (1232,'media','20110530-061908','20110530-061908-54',NULL,0,50,1,0,'2017-11-17 14:56:35',1,'2017-11-17 15:36:34',1,1232,'en-1232');
INSERT INTO `cms_entries` VALUES (1277,'form-group_photo','avengers_vs_x_men_babies_by_skottieyoung-d4raoid','avengers-vs-x-men-babies-by-skottieyoung-d4raoid-22',NULL,55,161,1,0,'2017-11-17 16:45:25',1,'2017-11-17 16:45:25',1,1277,'en-1277');
INSERT INTO `cms_entries` VALUES (1270,'media','clara_berdiri','clara-berdiri',NULL,0,0,1,0,'2017-11-17 16:44:35',1,'2017-11-17 16:44:35',1,1270,'en-1270');
INSERT INTO `cms_entries` VALUES (1241,'media','Tulips','tulips-31',NULL,0,131,1,0,'2017-11-17 15:39:49',1,'2017-11-17 16:23:01',1,1241,'en-1241');
INSERT INTO `cms_entries` VALUES (1271,'magazine','Batgirl_Issue_10_by_Artgerm','batgirl-issue-10-by-artgerm-36',NULL,56,161,1,0,'2017-11-17 16:45:24',1,'2017-11-17 16:45:24',1,1271,'en-1271');
INSERT INTO `cms_entries` VALUES (1296,'media','word-pizza-font-independent','word-pizza-font-independent',NULL,0,0,1,0,'2018-03-27 13:46:07',1,'2018-03-27 13:46:07',1,1296,'en-1296');
INSERT INTO `cms_entries` VALUES (1297,'media','story-word','story-word',NULL,0,0,1,0,'2018-03-27 15:02:42',1,'2018-03-27 15:02:42',1,1297,'en-1297');
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
) ENGINE=MyISAM AUTO_INCREMENT=3559 DEFAULT CHARSET=latin1;
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
INSERT INTO `cms_entry_metas` VALUES (3083,6,'form-quantity','20');
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
INSERT INTO `cms_entry_metas` VALUES (65,33,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (66,33,'image_size','69422');
INSERT INTO `cms_entry_metas` VALUES (2538,137,'backup-slug','\nslider\n');
INSERT INTO `cms_entry_metas` VALUES (74,37,'image_size','76968');
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
INSERT INTO `cms_entry_metas` VALUES (3127,60,'form-background','575');
INSERT INTO `cms_entry_metas` VALUES (1128,61,'form-quantity','20');
INSERT INTO `cms_entry_metas` VALUES (1129,61,'form-weight','15');
INSERT INTO `cms_entry_metas` VALUES (1130,61,'form-author','John Roberts');
INSERT INTO `cms_entry_metas` VALUES (131,61,'count-blogs','3');
INSERT INTO `cms_entry_metas` VALUES (133,61,'count-news','3');
INSERT INTO `cms_entry_metas` VALUES (3415,72,'form-publish_date','1/16/2013');
INSERT INTO `cms_entry_metas` VALUES (149,75,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (150,75,'image_size','777835');
INSERT INTO `cms_entry_metas` VALUES (151,76,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (152,76,'image_size','780831');
INSERT INTO `cms_entry_metas` VALUES (3230,84,'form-weight','3.35');
INSERT INTO `cms_entry_metas` VALUES (851,52,'count-media','0');
INSERT INTO `cms_entry_metas` VALUES (174,83,'image_size','561276');
INSERT INTO `cms_entry_metas` VALUES (173,83,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1127,61,'form-price','4500');
INSERT INTO `cms_entry_metas` VALUES (2464,73,'form-books','world-war-ii|mario-bros');
INSERT INTO `cms_entry_metas` VALUES (3084,6,'form-weight','4.5');
INSERT INTO `cms_entry_metas` VALUES (356,89,'image_width','245.00000000000188');
INSERT INTO `cms_entry_metas` VALUES (355,89,'image_y','48');
INSERT INTO `cms_entry_metas` VALUES (354,89,'image_x','31.633331298828125');
INSERT INTO `cms_entry_metas` VALUES (353,89,'image_size','15293');
INSERT INTO `cms_entry_metas` VALUES (352,89,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (194,90,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (195,90,'image_size','133207');
INSERT INTO `cms_entry_metas` VALUES (2555,27,'backup-slug','\n10266023-m\n');
INSERT INTO `cms_entry_metas` VALUES (2556,26,'backup-slug','\n9037147-l\n');
INSERT INTO `cms_entry_metas` VALUES (2547,37,'backup-slug','\nfire-stock-texture\n');
INSERT INTO `cms_entry_metas` VALUES (2548,36,'backup-slug','\ncontact\n');
INSERT INTO `cms_entry_metas` VALUES (2554,28,'backup-slug','\n11034113-m\n');
INSERT INTO `cms_entry_metas` VALUES (2549,35,'backup-slug','\nchristmas-tree-sxc-hu\n');
INSERT INTO `cms_entry_metas` VALUES (2550,33,'backup-slug','\nbokeh-art-by-noobieku\n');
INSERT INTO `cms_entry_metas` VALUES (1170,99,'form-publish_date','1/19/2013');
INSERT INTO `cms_entry_metas` VALUES (1169,99,'form-author','Basuki Oke');
INSERT INTO `cms_entry_metas` VALUES (1171,99,'form-approval','Approve');
INSERT INTO `cms_entry_metas` VALUES (2553,29,'backup-slug','\n4440611861-d8494f0a1c-b\n');
INSERT INTO `cms_entry_metas` VALUES (357,89,'image_height','238');
INSERT INTO `cms_entry_metas` VALUES (2537,58,'backup-slug','\nspiderman-by-patc-14\n');
INSERT INTO `cms_entry_metas` VALUES (376,108,'image_size','100674');
INSERT INTO `cms_entry_metas` VALUES (375,108,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (2544,40,'backup-slug','\ndarth-maul-wall\n');
INSERT INTO `cms_entry_metas` VALUES (2545,39,'backup-slug','\ndarth-maul-1-0\n');
INSERT INTO `cms_entry_metas` VALUES (990,115,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (991,115,'image_size','36954');
INSERT INTO `cms_entry_metas` VALUES (3231,84,'form-publish_date','1/18/2013');
INSERT INTO `cms_entry_metas` VALUES (916,50,'count-media','3');
INSERT INTO `cms_entry_metas` VALUES (3219,70,'form-weight','5');
INSERT INTO `cms_entry_metas` VALUES (507,116,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (508,116,'image_size','42402');
INSERT INTO `cms_entry_metas` VALUES (509,117,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (510,117,'image_size','43638');
INSERT INTO `cms_entry_metas` VALUES (511,118,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (512,118,'image_size','60024');
INSERT INTO `cms_entry_metas` VALUES (632,137,'image_size','49147');
INSERT INTO `cms_entry_metas` VALUES (631,137,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (2542,42,'backup-slug','\nlily-valley3-22896791-by-stockproject1-d30nxz4\n');
INSERT INTO `cms_entry_metas` VALUES (3085,6,'form-author','John Roberts');
INSERT INTO `cms_entry_metas` VALUES (992,115,'image_x','124.63333129882812');
INSERT INTO `cms_entry_metas` VALUES (900,57,'count-media','0');
INSERT INTO `cms_entry_metas` VALUES (560,131,'image_size','101772');
INSERT INTO `cms_entry_metas` VALUES (559,131,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (558,130,'image_size','99009');
INSERT INTO `cms_entry_metas` VALUES (557,130,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (556,129,'image_size','114202');
INSERT INTO `cms_entry_metas` VALUES (555,129,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (3220,70,'form-publish_date','03/07/2013');
INSERT INTO `cms_entry_metas` VALUES (892,49,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (2543,41,'backup-slug','\nhot-coffee-wallpapers-8908-1680x1050\n');
INSERT INTO `cms_entry_metas` VALUES (1012,145,'count-form-group_photo','3');
INSERT INTO `cms_entry_metas` VALUES (1014,145,'form-books','Dark Magic|World War II Cont');
INSERT INTO `cms_entry_metas` VALUES (1013,145,'count-form-group_photo_2','4');
INSERT INTO `cms_entry_metas` VALUES (811,84,'count-news','0');
INSERT INTO `cms_entry_metas` VALUES (3250,206,'form-url_link','http://www.facebook.com');
INSERT INTO `cms_entry_metas` VALUES (3546,207,'form-datetimepicker','11/17/2017 14:32');
INSERT INTO `cms_entry_metas` VALUES (3544,208,'form-datetimepicker','11/20/2017 14:09');
INSERT INTO `cms_entry_metas` VALUES (2552,30,'backup-slug','\nblur\n');
INSERT INTO `cms_entry_metas` VALUES (2388,872,'backup-slug','\nlighthouse-4\n');
INSERT INTO `cms_entry_metas` VALUES (2716,980,'backup-slug','\nbatgirl-issue-10-by-artgerm-16\n');
INSERT INTO `cms_entry_metas` VALUES (2541,44,'backup-slug','\nresize-3d-cartoon-pirate\n');
INSERT INTO `cms_entry_metas` VALUES (3082,6,'form-price','23');
INSERT INTO `cms_entry_metas` VALUES (3060,1158,'backup-slug','\npenguins-1\n');
INSERT INTO `cms_entry_metas` VALUES (993,115,'image_y','76');
INSERT INTO `cms_entry_metas` VALUES (994,115,'image_width','384.0000000000019');
INSERT INTO `cms_entry_metas` VALUES (2551,31,'backup-slug','\ncelebration-3day\n');
INSERT INTO `cms_entry_metas` VALUES (2540,43,'backup-slug','\norganic-coffee-bean-sack\n');
INSERT INTO `cms_entry_metas` VALUES (995,115,'image_height','266');
INSERT INTO `cms_entry_metas` VALUES (2820,1052,'backup-slug','\nlighthouse-7\n');
INSERT INTO `cms_entry_metas` VALUES (1016,145,'form-fake_ckeditor','<p>test fake</p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (1015,145,'form-dropme','drop tiga');
INSERT INTO `cms_entry_metas` VALUES (1017,145,'form-warnaku','#8a5bea');
INSERT INTO `cms_entry_metas` VALUES (2152,830,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-3\n');
INSERT INTO `cms_entry_metas` VALUES (2539,45,'backup-slug','\nresize-3d-scary-aliens\n');
INSERT INTO `cms_entry_metas` VALUES (3229,84,'form-quantity','29');
INSERT INTO `cms_entry_metas` VALUES (3222,70,'form-approval','Pending');
INSERT INTO `cms_entry_metas` VALUES (3221,70,'form-publisher','Tony Shawn');
INSERT INTO `cms_entry_metas` VALUES (1126,61,'count-books','1');
INSERT INTO `cms_entry_metas` VALUES (1131,61,'form-publish_date','1/15/2013');
INSERT INTO `cms_entry_metas` VALUES (1132,61,'form-publisher','Bella Saphira');
INSERT INTO `cms_entry_metas` VALUES (1133,61,'form-approval','Approve');
INSERT INTO `cms_entry_metas` VALUES (3409,1250,'backup-slug','\nkoala-3\n');
INSERT INTO `cms_entry_metas` VALUES (3414,72,'form-weight','20');
INSERT INTO `cms_entry_metas` VALUES (3413,72,'form-quantity','25');
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
INSERT INTO `cms_entry_metas` VALUES (3416,72,'form-approval','Approve');
INSERT INTO `cms_entry_metas` VALUES (3419,364,'image_size','70799');
INSERT INTO `cms_entry_metas` VALUES (3418,364,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (3417,364,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-5\n');
INSERT INTO `cms_entry_metas` VALUES (3412,72,'form-price','12');
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
INSERT INTO `cms_entry_metas` VALUES (1378,6,'backup-slug','\nworld-war-ii\nworld-war-champion-ii\nworld-war-champions-ii\nworld-wars-ii\nworlds-wars-ii\nworld-wars-champion-ii\nworlds-wars-champion-ii\nworld-war-ii-cont\n');
INSERT INTO `cms_entry_metas` VALUES (1379,399,'backup-slug','\nserangan-gerilya-en\n');
INSERT INTO `cms_entry_metas` VALUES (1380,73,'backup-slug','\nthe-resurrection\nthe-resurrection-en\n');
INSERT INTO `cms_entry_metas` VALUES (1381,9,'backup-slug','\nthe-death-of-john\nthe-death-of-john-en\n');
INSERT INTO `cms_entry_metas` VALUES (2863,573,'image_size','88809');
INSERT INTO `cms_entry_metas` VALUES (2862,573,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1402,571,'backup-slug','\nserangan-gerilya-en-1\nserangan-gerilya-id\n');
INSERT INTO `cms_entry_metas` VALUES (2459,571,'form-magazine','');
INSERT INTO `cms_entry_metas` VALUES (2465,73,'form-magazine','keep-healthy-keep-fresh|body-building-muscle');
INSERT INTO `cms_entry_metas` VALUES (1415,572,'backup-slug','\nthe-resurrection-id\n');
INSERT INTO `cms_entry_metas` VALUES (2462,572,'form-magazine','keep-healthy-keep-fresh|body-building-muscle');
INSERT INTO `cms_entry_metas` VALUES (2461,572,'form-books','world-war-ii|mario-bros');
INSERT INTO `cms_entry_metas` VALUES (2864,573,'image_x','146.421875');
INSERT INTO `cms_entry_metas` VALUES (2865,573,'image_y','101');
INSERT INTO `cms_entry_metas` VALUES (2860,160,'form-action','Share|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (1447,574,'backup-slug','\nmorning-blog-id\n');
INSERT INTO `cms_entry_metas` VALUES (1448,574,'form-action','Share|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (2861,573,'backup-slug','\n20110530-061908-7\n');
INSERT INTO `cms_entry_metas` VALUES (1456,574,'form-background','573');
INSERT INTO `cms_entry_metas` VALUES (1458,129,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (1459,129,'backup-slug','\npenguins-2\n');
INSERT INTO `cms_entry_metas` VALUES (3122,575,'image_size','60284');
INSERT INTO `cms_entry_metas` VALUES (3123,575,'image_x','113.421875');
INSERT INTO `cms_entry_metas` VALUES (3124,575,'image_y','166');
INSERT INTO `cms_entry_metas` VALUES (3125,575,'image_width','401');
INSERT INTO `cms_entry_metas` VALUES (1468,576,'backup-slug','\nwar-blog-id\n');
INSERT INTO `cms_entry_metas` VALUES (3121,575,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (1478,576,'form-action','Comment|Like|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (3126,575,'image_height','177');
INSERT INTO `cms_entry_metas` VALUES (1486,576,'form-background','575');
INSERT INTO `cms_entry_metas` VALUES (1487,577,'backup-slug','\nstatue-blog\n');
INSERT INTO `cms_entry_metas` VALUES (1489,118,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (1490,118,'backup-slug','\nthursday20september2012043326slide2\n');
INSERT INTO `cms_entry_metas` VALUES (2883,578,'image_size','28813');
INSERT INTO `cms_entry_metas` VALUES (2882,578,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (2880,577,'form-action','Comment|Share');
INSERT INTO `cms_entry_metas` VALUES (1499,579,'backup-slug','\nstatue-blog-id\n');
INSERT INTO `cms_entry_metas` VALUES (2884,578,'image_x','362.421875');
INSERT INTO `cms_entry_metas` VALUES (1509,579,'form-action','Comment|Share|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (2881,578,'backup-slug','\nthursday20september2012043326slide2-1\n');
INSERT INTO `cms_entry_metas` VALUES (1517,579,'form-background','578');
INSERT INTO `cms_entry_metas` VALUES (3408,9,'form-termin','03/10/2015|09/23/2034');
INSERT INTO `cms_entry_metas` VALUES (3407,9,'form-books','dark-magic');
INSERT INTO `cms_entry_metas` VALUES (2472,581,'form-termin','03/10/2015|09/23/2034');
INSERT INTO `cms_entry_metas` VALUES (1558,581,'backup-slug','\nthe-death-of-john-en-1\n');
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
INSERT INTO `cms_entry_metas` VALUES (3086,6,'form-publish_date','1/15/2013');
INSERT INTO `cms_entry_metas` VALUES (1580,161,'backup-slug','\ncake-magazine\ngreen-cake-magazine\nall-about-magazine-cake\n');
INSERT INTO `cms_entry_metas` VALUES (1794,716,'backup-slug','\nbatgirl-issue-10-by-artgerm-9\n');
INSERT INTO `cms_entry_metas` VALUES (1793,715,'backup-slug','\nresize-3d-cartoon-pirate-3\n');
INSERT INTO `cms_entry_metas` VALUES (1792,714,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-6\n');
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
INSERT INTO `cms_entry_metas` VALUES (3451,1270,'backup-slug','\nclara-berdiri\n');
INSERT INTO `cms_entry_metas` VALUES (1764,70,'backup-slug','\ndark-magic\ndarkest-magic\ndark-aura-magic\nsuper-dark-aura-magic\nsuper-saiyan-aura-magic\nsuper-aura-magic\nblack-magic\ndark-fire-magic\nnight-dark-magic\n');
INSERT INTO `cms_entry_metas` VALUES (1765,84,'backup-slug','\nmario-bros\n123-mario-bros\n123-mario-bros-ak\njumping-mario-bros\n');
INSERT INTO `cms_entry_metas` VALUES (3461,1277,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-22\n');
INSERT INTO `cms_entry_metas` VALUES (1769,700,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-4\n');
INSERT INTO `cms_entry_metas` VALUES (1770,701,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-5\n');
INSERT INTO `cms_entry_metas` VALUES (1771,702,'backup-slug','\nsmoke-stock1191-11\n');
INSERT INTO `cms_entry_metas` VALUES (1772,703,'backup-slug','\nresize-florian-new-02-11\n');
INSERT INTO `cms_entry_metas` VALUES (1773,704,'backup-slug','\nbatgirl-issue-10-by-artgerm-7\n');
INSERT INTO `cms_entry_metas` VALUES (1774,705,'backup-slug','\ntulips-23\n');
INSERT INTO `cms_entry_metas` VALUES (1775,706,'backup-slug','\n20110530-061908-9\n');
INSERT INTO `cms_entry_metas` VALUES (1776,707,'backup-slug','\nthursday20september2012014818slide1-3\n');
INSERT INTO `cms_entry_metas` VALUES (3440,1265,'backup-slug','\nkoala-38\n');
INSERT INTO `cms_entry_metas` VALUES (3442,1266,'backup-slug','\nresize-florian-new-02-25\n');
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
INSERT INTO `cms_entry_metas` VALUES (2728,990,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-2\n');
INSERT INTO `cms_entry_metas` VALUES (1800,721,'backup-slug','\npenguins-17\n');
INSERT INTO `cms_entry_metas` VALUES (1801,722,'backup-slug','\nkoala-11\n');
INSERT INTO `cms_entry_metas` VALUES (1802,723,'backup-slug','\nthursday20september2012043329slide3-7\n');
INSERT INTO `cms_entry_metas` VALUES (1803,724,'backup-slug','\nresize-florian-new-02-12\n');
INSERT INTO `cms_entry_metas` VALUES (1804,725,'backup-slug','\nsmoke-stock1191-13\n');
INSERT INTO `cms_entry_metas` VALUES (2727,989,'backup-slug','\n20110530-061908-34\n');
INSERT INTO `cms_entry_metas` VALUES (2726,988,'backup-slug','\nbatgirl-issue-10-by-artgerm-17\n');
INSERT INTO `cms_entry_metas` VALUES (2725,987,'backup-slug','\nresize-3d-cartoon-pirate-2\n');
INSERT INTO `cms_entry_metas` VALUES (2723,986,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-1\n');
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
INSERT INTO `cms_entry_metas` VALUES (3228,84,'form-price','35');
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
INSERT INTO `cms_entry_metas` VALUES (2679,961,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-7\n');
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
INSERT INTO `cms_entry_metas` VALUES (3443,1267,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-21\n');
INSERT INTO `cms_entry_metas` VALUES (3444,1268,'backup-slug','\nslider-1\n');
INSERT INTO `cms_entry_metas` VALUES (3445,1269,'backup-slug','\nsmoke-stock1191-35\n');
INSERT INTO `cms_entry_metas` VALUES (3464,1279,'backup-slug','\nbatgirl-issue-10-by-artgerm-37\n');
INSERT INTO `cms_entry_metas` VALUES (3463,1278,'backup-slug','\nresize-3d-cartoon-pirate-8\n');
INSERT INTO `cms_entry_metas` VALUES (3462,161,'count-form-group_photo','7');
INSERT INTO `cms_entry_metas` VALUES (3439,1264,'backup-slug','\n20110610-103819-6\n');
INSERT INTO `cms_entry_metas` VALUES (2460,571,'form-termin','06/16/2016');
INSERT INTO `cms_entry_metas` VALUES (2463,572,'form-termin','06/01/2016');
INSERT INTO `cms_entry_metas` VALUES (2466,73,'form-termin','06/01/2016');
INSERT INTO `cms_entry_metas` VALUES (2473,902,'backup-slug','\nsulap-kegelapan\n');
INSERT INTO `cms_entry_metas` VALUES (2474,903,'backup-slug','\npenguins-7\n');
INSERT INTO `cms_entry_metas` VALUES (2475,902,'count-books','5');
INSERT INTO `cms_entry_metas` VALUES (2476,904,'backup-slug','\nresize-florian-new-02-26\n');
INSERT INTO `cms_entry_metas` VALUES (2477,905,'backup-slug','\nkoala-23\n');
INSERT INTO `cms_entry_metas` VALUES (2478,906,'backup-slug','\nthursday20september2012043329slide3-5\n');
INSERT INTO `cms_entry_metas` VALUES (2479,907,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-3\n');
INSERT INTO `cms_entry_metas` VALUES (2480,902,'form-price','14');
INSERT INTO `cms_entry_metas` VALUES (2481,902,'form-quantity','200');
INSERT INTO `cms_entry_metas` VALUES (2482,902,'form-weight','5');
INSERT INTO `cms_entry_metas` VALUES (2483,902,'form-publish_date','03/07/2013');
INSERT INTO `cms_entry_metas` VALUES (2484,902,'form-publisher','Tony Shawn');
INSERT INTO `cms_entry_metas` VALUES (2485,902,'form-approval','Pending');
INSERT INTO `cms_entry_metas` VALUES (2486,908,'backup-slug','\nmajalah-kue\n');
INSERT INTO `cms_entry_metas` VALUES (2487,909,'backup-slug','\nbatgirl-issue-10-by-artgerm-13\n');
INSERT INTO `cms_entry_metas` VALUES (2488,908,'count-magazine','6');
INSERT INTO `cms_entry_metas` VALUES (2489,910,'backup-slug','\nspiderman-by-patc-14-1\n');
INSERT INTO `cms_entry_metas` VALUES (2490,911,'backup-slug','\nsmoke-stock1191-9\n');
INSERT INTO `cms_entry_metas` VALUES (2491,912,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-8\n');
INSERT INTO `cms_entry_metas` VALUES (2492,913,'backup-slug','\nhydrangeas-13\n');
INSERT INTO `cms_entry_metas` VALUES (2493,914,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-26\n');
INSERT INTO `cms_entry_metas` VALUES (2494,915,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-11\n');
INSERT INTO `cms_entry_metas` VALUES (2495,908,'count-form-group_photo','7');
INSERT INTO `cms_entry_metas` VALUES (2496,916,'backup-slug','\nresize-3d-cartoon-pirate-1\n');
INSERT INTO `cms_entry_metas` VALUES (2497,917,'backup-slug','\nbatgirl-issue-10-by-artgerm-14\n');
INSERT INTO `cms_entry_metas` VALUES (2498,918,'backup-slug','\n20110530-061908-31\n');
INSERT INTO `cms_entry_metas` VALUES (2499,919,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-6\n');
INSERT INTO `cms_entry_metas` VALUES (2500,920,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-14\n');
INSERT INTO `cms_entry_metas` VALUES (2501,921,'backup-slug','\n20110610-103819-1\n');
INSERT INTO `cms_entry_metas` VALUES (2502,922,'backup-slug','\npenguins-8\n');
INSERT INTO `cms_entry_metas` VALUES (2503,908,'count-form-group_photo_2','5');
INSERT INTO `cms_entry_metas` VALUES (2504,923,'backup-slug','\nkoala-24\n');
INSERT INTO `cms_entry_metas` VALUES (2505,924,'backup-slug','\nthursday20september2012043329slide3-8\n');
INSERT INTO `cms_entry_metas` VALUES (2506,925,'backup-slug','\nresize-florian-new-02-27\n');
INSERT INTO `cms_entry_metas` VALUES (2507,926,'backup-slug','\nsmoke-stock1191-10\n');
INSERT INTO `cms_entry_metas` VALUES (2508,908,'form-books','mario bros|World War II Cont');
INSERT INTO `cms_entry_metas` VALUES (2509,908,'form-dropme','drop dua');
INSERT INTO `cms_entry_metas` VALUES (2510,908,'form-fake_ckeditor','<p>makan nasi goreng</p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (2511,908,'form-biggy_text','saya mau makan\r\nbakso goreng\r\ndi rumah hana tania.');
INSERT INTO `cms_entry_metas` VALUES (2512,908,'form-warnaku','#ff00ff');
INSERT INTO `cms_entry_metas` VALUES (2513,46,'backup-slug','\nresize-florian-new-02\n');
INSERT INTO `cms_entry_metas` VALUES (2514,108,'backup-slug','\nhydrangeas\n');
INSERT INTO `cms_entry_metas` VALUES (2515,56,'backup-slug','\nbatgirl-issue-10-by-artgerm\n');
INSERT INTO `cms_entry_metas` VALUES (2516,52,'backup-slug','\n20110610-103453\n');
INSERT INTO `cms_entry_metas` VALUES (2517,59,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb\n');
INSERT INTO `cms_entry_metas` VALUES (2518,49,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005\n');
INSERT INTO `cms_entry_metas` VALUES (2519,131,'backup-slug','\ntulips-1\n');
INSERT INTO `cms_entry_metas` VALUES (2520,117,'backup-slug','\nthursday20september2012014818slide1\n');
INSERT INTO `cms_entry_metas` VALUES (2521,76,'backup-slug','\nkoala\n');
INSERT INTO `cms_entry_metas` VALUES (2522,57,'backup-slug','\nbatman-by-frogbillgo-d2yoamc\n');
INSERT INTO `cms_entry_metas` VALUES (2523,48,'backup-slug','\nsmoke-stock1191\n');
INSERT INTO `cms_entry_metas` VALUES (2524,54,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6\n');
INSERT INTO `cms_entry_metas` VALUES (2536,47,'backup-slug','\nsmoke-stock-21-by-hatestock\n');
INSERT INTO `cms_entry_metas` VALUES (2526,90,'backup-slug','\nchrysanthemum-1\n');
INSERT INTO `cms_entry_metas` VALUES (2527,130,'backup-slug','\nlighthouse-2\n');
INSERT INTO `cms_entry_metas` VALUES (2528,83,'backup-slug','\nlighthouse-1\n');
INSERT INTO `cms_entry_metas` VALUES (2529,75,'backup-slug','\npenguins\n');
INSERT INTO `cms_entry_metas` VALUES (2530,116,'backup-slug','\nthursday20september2012043329slide3\n');
INSERT INTO `cms_entry_metas` VALUES (2531,55,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid\n');
INSERT INTO `cms_entry_metas` VALUES (2532,51,'backup-slug','\n20110610-103819\n');
INSERT INTO `cms_entry_metas` VALUES (2533,7,'backup-slug','\nlighthouse\n');
INSERT INTO `cms_entry_metas` VALUES (2534,4,'backup-slug','\ndesert\n');
INSERT INTO `cms_entry_metas` VALUES (2535,2,'backup-slug','\nchrysanthemum\n');
INSERT INTO `cms_entry_metas` VALUES (2706,978,'backup-slug','\nthursday20september2012014818slide1-9\n');
INSERT INTO `cms_entry_metas` VALUES (2705,977,'backup-slug','\n20110530-061908-33\n');
INSERT INTO `cms_entry_metas` VALUES (2704,976,'backup-slug','\ntulips-16\n');
INSERT INTO `cms_entry_metas` VALUES (2703,975,'backup-slug','\nbatgirl-issue-10-by-artgerm-15\n');
INSERT INTO `cms_entry_metas` VALUES (2702,974,'backup-slug','\nresize-florian-new-02-28\n');
INSERT INTO `cms_entry_metas` VALUES (2701,973,'backup-slug','\nsmoke-stock1191-15\n');
INSERT INTO `cms_entry_metas` VALUES (2700,972,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-16\n');
INSERT INTO `cms_entry_metas` VALUES (2699,971,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-10\n');
INSERT INTO `cms_entry_metas` VALUES (2890,1068,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-9\n');
INSERT INTO `cms_entry_metas` VALUES (3087,6,'form-publisher','Amane Saphere');
INSERT INTO `cms_entry_metas` VALUES (2688,969,'backup-slug','\nthursday20september2012014818slide1-8\n');
INSERT INTO `cms_entry_metas` VALUES (2697,970,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-8\n');
INSERT INTO `cms_entry_metas` VALUES (2681,962,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-9\n');
INSERT INTO `cms_entry_metas` VALUES (2682,963,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-15\n');
INSERT INTO `cms_entry_metas` VALUES (2683,964,'backup-slug','\nsmoke-stock1191-14\n');
INSERT INTO `cms_entry_metas` VALUES (2684,965,'backup-slug','\nresize-florian-new-02-3\n');
INSERT INTO `cms_entry_metas` VALUES (2685,966,'backup-slug','\nbatgirl-issue-10-by-artgerm-1\n');
INSERT INTO `cms_entry_metas` VALUES (2687,968,'backup-slug','\n20110530-061908-32\n');
INSERT INTO `cms_entry_metas` VALUES (2656,53,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7\n');
INSERT INTO `cms_entry_metas` VALUES (2686,967,'backup-slug','\ntulips\n');
INSERT INTO `cms_entry_metas` VALUES (2742,998,'backup-slug','\nbatgirl-issue-10-by-artgerm-18\n');
INSERT INTO `cms_entry_metas` VALUES (2718,981,'backup-slug','\nspiderman-by-patc-14-2\n');
INSERT INTO `cms_entry_metas` VALUES (2719,982,'backup-slug','\nsmoke-stock1191-16\n');
INSERT INTO `cms_entry_metas` VALUES (2720,983,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-11\n');
INSERT INTO `cms_entry_metas` VALUES (2721,984,'backup-slug','\nhydrangeas-14\n');
INSERT INTO `cms_entry_metas` VALUES (2722,985,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-1\n');
INSERT INTO `cms_entry_metas` VALUES (2729,991,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-17\n');
INSERT INTO `cms_entry_metas` VALUES (2730,992,'backup-slug','\n20110610-103819-2\n');
INSERT INTO `cms_entry_metas` VALUES (2731,993,'backup-slug','\npenguins-9\n');
INSERT INTO `cms_entry_metas` VALUES (2751,1005,'backup-slug','\nresize-3d-cartoon-pirate-4\n');
INSERT INTO `cms_entry_metas` VALUES (2733,994,'backup-slug','\nkoala-25\n');
INSERT INTO `cms_entry_metas` VALUES (2734,995,'backup-slug','\nthursday20september2012043329slide3-9\n');
INSERT INTO `cms_entry_metas` VALUES (2735,996,'backup-slug','\nresize-florian-new-02-29\n');
INSERT INTO `cms_entry_metas` VALUES (2736,997,'backup-slug','\nsmoke-stock1191-17\n');
INSERT INTO `cms_entry_metas` VALUES (2778,1024,'backup-slug','\nbatgirl-issue-10-by-artgerm-21\n');
INSERT INTO `cms_entry_metas` VALUES (2749,1004,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-12\n');
INSERT INTO `cms_entry_metas` VALUES (2768,1016,'backup-slug','\nbatgirl-issue-10-by-artgerm-20\n');
INSERT INTO `cms_entry_metas` VALUES (2744,999,'backup-slug','\nspiderman-by-patc-14-4\n');
INSERT INTO `cms_entry_metas` VALUES (2745,1000,'backup-slug','\nsmoke-stock1191-18\n');
INSERT INTO `cms_entry_metas` VALUES (2746,1001,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-12\n');
INSERT INTO `cms_entry_metas` VALUES (2747,1002,'backup-slug','\nhydrangeas-15\n');
INSERT INTO `cms_entry_metas` VALUES (2748,1003,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-2\n');
INSERT INTO `cms_entry_metas` VALUES (2752,1006,'backup-slug','\nbatgirl-issue-10-by-artgerm-19\n');
INSERT INTO `cms_entry_metas` VALUES (2753,1007,'backup-slug','\n20110530-061908-35\n');
INSERT INTO `cms_entry_metas` VALUES (2754,1008,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-4\n');
INSERT INTO `cms_entry_metas` VALUES (2755,1009,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-18\n');
INSERT INTO `cms_entry_metas` VALUES (2756,1010,'backup-slug','\n20110610-103819-3\n');
INSERT INTO `cms_entry_metas` VALUES (2757,1011,'backup-slug','\npenguins-10\n');
INSERT INTO `cms_entry_metas` VALUES (2777,1023,'backup-slug','\nresize-3d-cartoon-pirate-5\n');
INSERT INTO `cms_entry_metas` VALUES (2759,1012,'backup-slug','\nkoala-26\n');
INSERT INTO `cms_entry_metas` VALUES (2760,1013,'backup-slug','\nthursday20september2012043329slide3-10\n');
INSERT INTO `cms_entry_metas` VALUES (2761,1014,'backup-slug','\nresize-florian-new-02-30\n');
INSERT INTO `cms_entry_metas` VALUES (2762,1015,'backup-slug','\nsmoke-stock1191-19\n');
INSERT INTO `cms_entry_metas` VALUES (2804,1042,'backup-slug','\nbatgirl-issue-10-by-artgerm-23\n');
INSERT INTO `cms_entry_metas` VALUES (2775,1022,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-13\n');
INSERT INTO `cms_entry_metas` VALUES (2794,1034,'backup-slug','\nbatgirl-issue-10-by-artgerm-22\n');
INSERT INTO `cms_entry_metas` VALUES (2770,1017,'backup-slug','\nspiderman-by-patc-14-5\n');
INSERT INTO `cms_entry_metas` VALUES (2771,1018,'backup-slug','\nsmoke-stock1191-20\n');
INSERT INTO `cms_entry_metas` VALUES (2772,1019,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-13\n');
INSERT INTO `cms_entry_metas` VALUES (2773,1020,'backup-slug','\nhydrangeas-16\n');
INSERT INTO `cms_entry_metas` VALUES (2774,1021,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-3\n');
INSERT INTO `cms_entry_metas` VALUES (2779,1025,'backup-slug','\n20110530-061908-36\n');
INSERT INTO `cms_entry_metas` VALUES (2780,1026,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-8\n');
INSERT INTO `cms_entry_metas` VALUES (2781,1027,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-19\n');
INSERT INTO `cms_entry_metas` VALUES (2782,1028,'backup-slug','\n20110610-103819-4\n');
INSERT INTO `cms_entry_metas` VALUES (2783,1029,'backup-slug','\npenguins-11\n');
INSERT INTO `cms_entry_metas` VALUES (2785,1030,'backup-slug','\nkoala-27\n');
INSERT INTO `cms_entry_metas` VALUES (2786,1031,'backup-slug','\nthursday20september2012043329slide3-11\n');
INSERT INTO `cms_entry_metas` VALUES (2787,1032,'backup-slug','\nresize-florian-new-02-31\n');
INSERT INTO `cms_entry_metas` VALUES (2788,1033,'backup-slug','\nsmoke-stock1191-21\n');
INSERT INTO `cms_entry_metas` VALUES (2803,1041,'backup-slug','\nresize-3d-cartoon-pirate-6\n');
INSERT INTO `cms_entry_metas` VALUES (3435,1260,'backup-slug','\nbatgirl-issue-10-by-artgerm-35\n');
INSERT INTO `cms_entry_metas` VALUES (2801,1040,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-14\n');
INSERT INTO `cms_entry_metas` VALUES (3425,1252,'backup-slug','\nbatgirl-issue-10-by-artgerm-12\n');
INSERT INTO `cms_entry_metas` VALUES (2796,1035,'backup-slug','\nspiderman-by-patc-14-6\n');
INSERT INTO `cms_entry_metas` VALUES (2797,1036,'backup-slug','\nsmoke-stock1191-22\n');
INSERT INTO `cms_entry_metas` VALUES (2798,1037,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-14\n');
INSERT INTO `cms_entry_metas` VALUES (2799,1038,'backup-slug','\nhydrangeas-17\n');
INSERT INTO `cms_entry_metas` VALUES (2800,1039,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-27\n');
INSERT INTO `cms_entry_metas` VALUES (2805,1043,'backup-slug','\n20110530-061908-37\n');
INSERT INTO `cms_entry_metas` VALUES (2806,1044,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-9\n');
INSERT INTO `cms_entry_metas` VALUES (2807,1045,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-20\n');
INSERT INTO `cms_entry_metas` VALUES (2808,1046,'backup-slug','\n20110610-103819-5\n');
INSERT INTO `cms_entry_metas` VALUES (2809,1047,'backup-slug','\npenguins-12\n');
INSERT INTO `cms_entry_metas` VALUES (2811,1048,'backup-slug','\nkoala-28\n');
INSERT INTO `cms_entry_metas` VALUES (2812,1049,'backup-slug','\nthursday20september2012043329slide3-12\n');
INSERT INTO `cms_entry_metas` VALUES (2813,1050,'backup-slug','\nresize-florian-new-02-32\n');
INSERT INTO `cms_entry_metas` VALUES (2814,1051,'backup-slug','\nsmoke-stock1191-23\n');
INSERT INTO `cms_entry_metas` VALUES (3465,1280,'backup-slug','\n20110530-061908-55\n');
INSERT INTO `cms_entry_metas` VALUES (3434,1259,'backup-slug','\nresize-3d-cartoon-pirate-7\n');
INSERT INTO `cms_entry_metas` VALUES (3432,1258,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-20\n');
INSERT INTO `cms_entry_metas` VALUES (2830,1056,'backup-slug','\nlighthouse-8\n');
INSERT INTO `cms_entry_metas` VALUES (2822,1053,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-21\n');
INSERT INTO `cms_entry_metas` VALUES (2823,1054,'backup-slug','\n20110530-061908-38\n');
INSERT INTO `cms_entry_metas` VALUES (2824,1055,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-15\n');
INSERT INTO `cms_entry_metas` VALUES (3232,84,'form-approval','Approve');
INSERT INTO `cms_entry_metas` VALUES (2840,1060,'backup-slug','\nlighthouse-9\n');
INSERT INTO `cms_entry_metas` VALUES (2832,1057,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-22\n');
INSERT INTO `cms_entry_metas` VALUES (2833,1058,'backup-slug','\n20110530-061908-39\n');
INSERT INTO `cms_entry_metas` VALUES (2834,1059,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-16\n');
INSERT INTO `cms_entry_metas` VALUES (2850,1064,'backup-slug','\nlighthouse-10\n');
INSERT INTO `cms_entry_metas` VALUES (2842,1061,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-23\n');
INSERT INTO `cms_entry_metas` VALUES (2843,1062,'backup-slug','\n20110530-061908-40\n');
INSERT INTO `cms_entry_metas` VALUES (2844,1063,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-17\n');
INSERT INTO `cms_entry_metas` VALUES (3223,1217,'backup-slug','\nlighthouse-11\n');
INSERT INTO `cms_entry_metas` VALUES (2852,1065,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-24\n');
INSERT INTO `cms_entry_metas` VALUES (2853,1066,'backup-slug','\n20110530-061908-41\n');
INSERT INTO `cms_entry_metas` VALUES (2854,1067,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-18\n');
INSERT INTO `cms_entry_metas` VALUES (2866,573,'image_width','326');
INSERT INTO `cms_entry_metas` VALUES (2867,573,'image_height','288');
INSERT INTO `cms_entry_metas` VALUES (2868,160,'form-background','573');
INSERT INTO `cms_entry_metas` VALUES (2869,160,'form-books','world-war-ii-cont');
INSERT INTO `cms_entry_metas` VALUES (3120,575,'backup-slug','\npenguins-5\n');
INSERT INTO `cms_entry_metas` VALUES (3119,60,'form-action','Comment|Like|Unlike that damn bloG');
INSERT INTO `cms_entry_metas` VALUES (2885,578,'image_y','51');
INSERT INTO `cms_entry_metas` VALUES (2886,578,'image_width','254');
INSERT INTO `cms_entry_metas` VALUES (2887,578,'image_height','149');
INSERT INTO `cms_entry_metas` VALUES (2888,577,'form-background','578');
INSERT INTO `cms_entry_metas` VALUES (2889,577,'form-books','world-war-ii-cont');
INSERT INTO `cms_entry_metas` VALUES (2907,1077,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-10\n');
INSERT INTO `cms_entry_metas` VALUES (2892,1069,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-15\n');
INSERT INTO `cms_entry_metas` VALUES (2893,1070,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-25\n');
INSERT INTO `cms_entry_metas` VALUES (2894,1071,'backup-slug','\nsmoke-stock1191-24\n');
INSERT INTO `cms_entry_metas` VALUES (2895,1072,'backup-slug','\nresize-florian-new-02-33\n');
INSERT INTO `cms_entry_metas` VALUES (2896,1073,'backup-slug','\nbatgirl-issue-10-by-artgerm-24\n');
INSERT INTO `cms_entry_metas` VALUES (2897,1074,'backup-slug','\ntulips-17\n');
INSERT INTO `cms_entry_metas` VALUES (2898,1075,'backup-slug','\n20110530-061908-42\n');
INSERT INTO `cms_entry_metas` VALUES (2899,1076,'backup-slug','\nthursday20september2012014818slide1-10\n');
INSERT INTO `cms_entry_metas` VALUES (2924,1086,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-11\n');
INSERT INTO `cms_entry_metas` VALUES (2909,1078,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-16\n');
INSERT INTO `cms_entry_metas` VALUES (2910,1079,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-26\n');
INSERT INTO `cms_entry_metas` VALUES (2911,1080,'backup-slug','\nsmoke-stock1191-25\n');
INSERT INTO `cms_entry_metas` VALUES (2912,1081,'backup-slug','\nresize-florian-new-02-34\n');
INSERT INTO `cms_entry_metas` VALUES (2913,1082,'backup-slug','\nbatgirl-issue-10-by-artgerm-25\n');
INSERT INTO `cms_entry_metas` VALUES (2914,1083,'backup-slug','\ntulips-18\n');
INSERT INTO `cms_entry_metas` VALUES (2915,1084,'backup-slug','\n20110530-061908-43\n');
INSERT INTO `cms_entry_metas` VALUES (2916,1085,'backup-slug','\nthursday20september2012014818slide1-11\n');
INSERT INTO `cms_entry_metas` VALUES (2941,1095,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-12\n');
INSERT INTO `cms_entry_metas` VALUES (2926,1087,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-17\n');
INSERT INTO `cms_entry_metas` VALUES (2927,1088,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-27\n');
INSERT INTO `cms_entry_metas` VALUES (2928,1089,'backup-slug','\nsmoke-stock1191-26\n');
INSERT INTO `cms_entry_metas` VALUES (2929,1090,'backup-slug','\nresize-florian-new-02-35\n');
INSERT INTO `cms_entry_metas` VALUES (2930,1091,'backup-slug','\nbatgirl-issue-10-by-artgerm-26\n');
INSERT INTO `cms_entry_metas` VALUES (2931,1092,'backup-slug','\ntulips-19\n');
INSERT INTO `cms_entry_metas` VALUES (2932,1093,'backup-slug','\n20110530-061908-44\n');
INSERT INTO `cms_entry_metas` VALUES (2933,1094,'backup-slug','\nthursday20september2012014818slide1-12\n');
INSERT INTO `cms_entry_metas` VALUES (3088,6,'form-approval','Pending');
INSERT INTO `cms_entry_metas` VALUES (2958,1104,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-13\n');
INSERT INTO `cms_entry_metas` VALUES (2943,1096,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-18\n');
INSERT INTO `cms_entry_metas` VALUES (2944,1097,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-28\n');
INSERT INTO `cms_entry_metas` VALUES (2945,1098,'backup-slug','\nsmoke-stock1191-27\n');
INSERT INTO `cms_entry_metas` VALUES (2946,1099,'backup-slug','\nresize-florian-new-02-36\n');
INSERT INTO `cms_entry_metas` VALUES (2947,1100,'backup-slug','\nbatgirl-issue-10-by-artgerm-27\n');
INSERT INTO `cms_entry_metas` VALUES (2948,1101,'backup-slug','\ntulips-20\n');
INSERT INTO `cms_entry_metas` VALUES (2949,1102,'backup-slug','\n20110530-061908-45\n');
INSERT INTO `cms_entry_metas` VALUES (2950,1103,'backup-slug','\nthursday20september2012014818slide1-13\n');
INSERT INTO `cms_entry_metas` VALUES (2975,1113,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-14\n');
INSERT INTO `cms_entry_metas` VALUES (2960,1105,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-19\n');
INSERT INTO `cms_entry_metas` VALUES (2961,1106,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-29\n');
INSERT INTO `cms_entry_metas` VALUES (2962,1107,'backup-slug','\nsmoke-stock1191-28\n');
INSERT INTO `cms_entry_metas` VALUES (2963,1108,'backup-slug','\nresize-florian-new-02-37\n');
INSERT INTO `cms_entry_metas` VALUES (2964,1109,'backup-slug','\nbatgirl-issue-10-by-artgerm-28\n');
INSERT INTO `cms_entry_metas` VALUES (2965,1110,'backup-slug','\ntulips-24\n');
INSERT INTO `cms_entry_metas` VALUES (2966,1111,'backup-slug','\n20110530-061908-46\n');
INSERT INTO `cms_entry_metas` VALUES (2967,1112,'backup-slug','\nthursday20september2012014818slide1-14\n');
INSERT INTO `cms_entry_metas` VALUES (2992,1122,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-15\n');
INSERT INTO `cms_entry_metas` VALUES (2977,1114,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-20\n');
INSERT INTO `cms_entry_metas` VALUES (2978,1115,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-30\n');
INSERT INTO `cms_entry_metas` VALUES (2979,1116,'backup-slug','\nsmoke-stock1191-29\n');
INSERT INTO `cms_entry_metas` VALUES (2980,1117,'backup-slug','\nresize-florian-new-02-38\n');
INSERT INTO `cms_entry_metas` VALUES (2981,1118,'backup-slug','\nbatgirl-issue-10-by-artgerm-29\n');
INSERT INTO `cms_entry_metas` VALUES (2982,1119,'backup-slug','\ntulips-25\n');
INSERT INTO `cms_entry_metas` VALUES (2983,1120,'backup-slug','\n20110530-061908-47\n');
INSERT INTO `cms_entry_metas` VALUES (2984,1121,'backup-slug','\nthursday20september2012014818slide1-15\n');
INSERT INTO `cms_entry_metas` VALUES (3009,1131,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-16\n');
INSERT INTO `cms_entry_metas` VALUES (2994,1123,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-21\n');
INSERT INTO `cms_entry_metas` VALUES (2995,1124,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-31\n');
INSERT INTO `cms_entry_metas` VALUES (2996,1125,'backup-slug','\nsmoke-stock1191-30\n');
INSERT INTO `cms_entry_metas` VALUES (2997,1126,'backup-slug','\nresize-florian-new-02-39\n');
INSERT INTO `cms_entry_metas` VALUES (2998,1127,'backup-slug','\nbatgirl-issue-10-by-artgerm-30\n');
INSERT INTO `cms_entry_metas` VALUES (2999,1128,'backup-slug','\ntulips-26\n');
INSERT INTO `cms_entry_metas` VALUES (3000,1129,'backup-slug','\n20110530-061908-48\n');
INSERT INTO `cms_entry_metas` VALUES (3001,1130,'backup-slug','\nthursday20september2012014818slide1-16\n');
INSERT INTO `cms_entry_metas` VALUES (3026,1140,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-17\n');
INSERT INTO `cms_entry_metas` VALUES (3011,1132,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-22\n');
INSERT INTO `cms_entry_metas` VALUES (3012,1133,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-32\n');
INSERT INTO `cms_entry_metas` VALUES (3013,1134,'backup-slug','\nsmoke-stock1191-31\n');
INSERT INTO `cms_entry_metas` VALUES (3014,1135,'backup-slug','\nresize-florian-new-02-40\n');
INSERT INTO `cms_entry_metas` VALUES (3015,1136,'backup-slug','\nbatgirl-issue-10-by-artgerm-31\n');
INSERT INTO `cms_entry_metas` VALUES (3016,1137,'backup-slug','\ntulips-27\n');
INSERT INTO `cms_entry_metas` VALUES (3017,1138,'backup-slug','\n20110530-061908-49\n');
INSERT INTO `cms_entry_metas` VALUES (3018,1139,'backup-slug','\nthursday20september2012014818slide1-17\n');
INSERT INTO `cms_entry_metas` VALUES (3043,1149,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-18\n');
INSERT INTO `cms_entry_metas` VALUES (3028,1141,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-23\n');
INSERT INTO `cms_entry_metas` VALUES (3029,1142,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-33\n');
INSERT INTO `cms_entry_metas` VALUES (3030,1143,'backup-slug','\nsmoke-stock1191-32\n');
INSERT INTO `cms_entry_metas` VALUES (3031,1144,'backup-slug','\nresize-florian-new-02-41\n');
INSERT INTO `cms_entry_metas` VALUES (3032,1145,'backup-slug','\nbatgirl-issue-10-by-artgerm-32\n');
INSERT INTO `cms_entry_metas` VALUES (3033,1146,'backup-slug','\ntulips-28\n');
INSERT INTO `cms_entry_metas` VALUES (3034,1147,'backup-slug','\n20110530-061908-50\n');
INSERT INTO `cms_entry_metas` VALUES (3035,1148,'backup-slug','\nthursday20september2012014818slide1-18\n');
INSERT INTO `cms_entry_metas` VALUES (3072,1163,'backup-slug','\nbeautiful-3d-vivid-multicolor-hd-desktop-wallpaper-7-19\n');
INSERT INTO `cms_entry_metas` VALUES (3045,1150,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-24\n');
INSERT INTO `cms_entry_metas` VALUES (3046,1151,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-34\n');
INSERT INTO `cms_entry_metas` VALUES (3047,1152,'backup-slug','\nsmoke-stock1191-33\n');
INSERT INTO `cms_entry_metas` VALUES (3048,1153,'backup-slug','\nresize-florian-new-02-42\n');
INSERT INTO `cms_entry_metas` VALUES (3049,1154,'backup-slug','\nbatgirl-issue-10-by-artgerm-33\n');
INSERT INTO `cms_entry_metas` VALUES (3050,1155,'backup-slug','\ntulips-29\n');
INSERT INTO `cms_entry_metas` VALUES (3051,1156,'backup-slug','\n20110530-061908-51\n');
INSERT INTO `cms_entry_metas` VALUES (3052,1157,'backup-slug','\nthursday20september2012014818slide1-19\n');
INSERT INTO `cms_entry_metas` VALUES (3091,1172,'backup-slug','\npenguins-13\n');
INSERT INTO `cms_entry_metas` VALUES (3062,1159,'backup-slug','\nresize-florian-new-02-1\n');
INSERT INTO `cms_entry_metas` VALUES (3063,1160,'backup-slug','\nkoala-1\n');
INSERT INTO `cms_entry_metas` VALUES (3064,1161,'backup-slug','\nthursday20september2012043329slide3-2\n');
INSERT INTO `cms_entry_metas` VALUES (3065,1162,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-1\n');
INSERT INTO `cms_entry_metas` VALUES (3218,70,'form-quantity','200');
INSERT INTO `cms_entry_metas` VALUES (3073,6,'count-books','9');
INSERT INTO `cms_entry_metas` VALUES (3074,1164,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-25\n');
INSERT INTO `cms_entry_metas` VALUES (3075,1165,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-35\n');
INSERT INTO `cms_entry_metas` VALUES (3076,1166,'backup-slug','\nsmoke-stock1191-34\n');
INSERT INTO `cms_entry_metas` VALUES (3077,1167,'backup-slug','\nresize-florian-new-02-43\n');
INSERT INTO `cms_entry_metas` VALUES (3078,1168,'backup-slug','\nbatgirl-issue-10-by-artgerm-34\n');
INSERT INTO `cms_entry_metas` VALUES (3079,1169,'backup-slug','\ntulips-30\n');
INSERT INTO `cms_entry_metas` VALUES (3080,1170,'backup-slug','\n20110530-061908-52\n');
INSERT INTO `cms_entry_metas` VALUES (3081,1171,'backup-slug','\nthursday20september2012014818slide1-20\n');
INSERT INTO `cms_entry_metas` VALUES (3105,1177,'backup-slug','\npenguins-14\n');
INSERT INTO `cms_entry_metas` VALUES (3093,1173,'backup-slug','\nresize-florian-new-02-44\n');
INSERT INTO `cms_entry_metas` VALUES (3094,1174,'backup-slug','\nkoala-29\n');
INSERT INTO `cms_entry_metas` VALUES (3095,1175,'backup-slug','\nthursday20september2012043329slide3-13\n');
INSERT INTO `cms_entry_metas` VALUES (3096,1176,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-10\n');
INSERT INTO `cms_entry_metas` VALUES (3364,399,'form-books','world-war-ii-cont|dark-magic|jumping-mario-bros|traffic-light|makan-nasi-udang-bos');
INSERT INTO `cms_entry_metas` VALUES (3129,1182,'backup-slug','\npenguins-15\n');
INSERT INTO `cms_entry_metas` VALUES (3107,1178,'backup-slug','\nresize-florian-new-02-45\n');
INSERT INTO `cms_entry_metas` VALUES (3108,1179,'backup-slug','\nkoala-30\n');
INSERT INTO `cms_entry_metas` VALUES (3109,1180,'backup-slug','\nthursday20september2012043329slide3-14\n');
INSERT INTO `cms_entry_metas` VALUES (3110,1181,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-11\n');
INSERT INTO `cms_entry_metas` VALUES (3217,70,'form-price','14');
INSERT INTO `cms_entry_metas` VALUES (3128,60,'form-books','dark-magic');
INSERT INTO `cms_entry_metas` VALUES (3143,1187,'backup-slug','\npenguins-18\n');
INSERT INTO `cms_entry_metas` VALUES (3131,1183,'backup-slug','\nresize-florian-new-02-46\n');
INSERT INTO `cms_entry_metas` VALUES (3132,1184,'backup-slug','\nkoala-31\n');
INSERT INTO `cms_entry_metas` VALUES (3133,1185,'backup-slug','\nthursday20september2012043329slide3-15\n');
INSERT INTO `cms_entry_metas` VALUES (3134,1186,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-12\n');
INSERT INTO `cms_entry_metas` VALUES (3161,1192,'backup-slug','\npenguins-19\n');
INSERT INTO `cms_entry_metas` VALUES (3145,1188,'backup-slug','\nresize-florian-new-02-47\n');
INSERT INTO `cms_entry_metas` VALUES (3146,1189,'backup-slug','\nkoala-32\n');
INSERT INTO `cms_entry_metas` VALUES (3147,1190,'backup-slug','\nthursday20september2012043329slide3-16\n');
INSERT INTO `cms_entry_metas` VALUES (3148,1191,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-13\n');
INSERT INTO `cms_entry_metas` VALUES (3175,1197,'backup-slug','\npenguins-20\n');
INSERT INTO `cms_entry_metas` VALUES (3163,1193,'backup-slug','\nresize-florian-new-02-48\n');
INSERT INTO `cms_entry_metas` VALUES (3164,1194,'backup-slug','\nkoala-33\n');
INSERT INTO `cms_entry_metas` VALUES (3165,1195,'backup-slug','\nthursday20september2012043329slide3-17\n');
INSERT INTO `cms_entry_metas` VALUES (3166,1196,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-14\n');
INSERT INTO `cms_entry_metas` VALUES (3187,1202,'backup-slug','\npenguins-21\n');
INSERT INTO `cms_entry_metas` VALUES (3177,1198,'backup-slug','\nresize-florian-new-02-49\n');
INSERT INTO `cms_entry_metas` VALUES (3178,1199,'backup-slug','\nkoala-34\n');
INSERT INTO `cms_entry_metas` VALUES (3179,1200,'backup-slug','\nthursday20september2012043329slide3-18\n');
INSERT INTO `cms_entry_metas` VALUES (3180,1201,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-15\n');
INSERT INTO `cms_entry_metas` VALUES (3212,70,'count-books','5');
INSERT INTO `cms_entry_metas` VALUES (3199,1207,'backup-slug','\npenguins-22\n');
INSERT INTO `cms_entry_metas` VALUES (3189,1203,'backup-slug','\nresize-florian-new-02-50\n');
INSERT INTO `cms_entry_metas` VALUES (3190,1204,'backup-slug','\nkoala-35\n');
INSERT INTO `cms_entry_metas` VALUES (3191,1205,'backup-slug','\nthursday20september2012043329slide3-19\n');
INSERT INTO `cms_entry_metas` VALUES (3192,1206,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-16\n');
INSERT INTO `cms_entry_metas` VALUES (3211,1212,'backup-slug','\npenguins-23\n');
INSERT INTO `cms_entry_metas` VALUES (3201,1208,'backup-slug','\nresize-florian-new-02-51\n');
INSERT INTO `cms_entry_metas` VALUES (3202,1209,'backup-slug','\nkoala-36\n');
INSERT INTO `cms_entry_metas` VALUES (3203,1210,'backup-slug','\nthursday20september2012043329slide3-20\n');
INSERT INTO `cms_entry_metas` VALUES (3204,1211,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-17\n');
INSERT INTO `cms_entry_metas` VALUES (3213,1213,'backup-slug','\nresize-florian-new-02-52\n');
INSERT INTO `cms_entry_metas` VALUES (3214,1214,'backup-slug','\nkoala-37\n');
INSERT INTO `cms_entry_metas` VALUES (3215,1215,'backup-slug','\nthursday20september2012043329slide3-21\n');
INSERT INTO `cms_entry_metas` VALUES (3216,1216,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-18\n');
INSERT INTO `cms_entry_metas` VALUES (3224,84,'count-books','4');
INSERT INTO `cms_entry_metas` VALUES (3225,1218,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-36\n');
INSERT INTO `cms_entry_metas` VALUES (3226,1219,'backup-slug','\n20110530-061908-53\n');
INSERT INTO `cms_entry_metas` VALUES (3227,1220,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-19\n');
INSERT INTO `cms_entry_metas` VALUES (3238,207,'backup-slug','\nslider-coffee\n');
INSERT INTO `cms_entry_metas` VALUES (3545,207,'form-url_link','http://www.google.com');
INSERT INTO `cms_entry_metas` VALUES (3249,206,'backup-slug','\nslider-library\n');
INSERT INTO `cms_entry_metas` VALUES (3251,206,'form-datetimepicker','11/17/2017 14:43');
INSERT INTO `cms_entry_metas` VALUES (3252,1226,'backup-slug','\n3rd-anniv\n');
INSERT INTO `cms_entry_metas` VALUES (3253,1226,'image_type','jpg');
INSERT INTO `cms_entry_metas` VALUES (3254,1226,'image_size','106551');
INSERT INTO `cms_entry_metas` VALUES (3466,1281,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-20\n');
INSERT INTO `cms_entry_metas` VALUES (3452,1270,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (3453,1270,'image_size','295767');
INSERT INTO `cms_entry_metas` VALUES (3455,161,'count-magazine','6');
INSERT INTO `cms_entry_metas` VALUES (3263,1229,'backup-slug','\ncelebration-3day-1\n');
INSERT INTO `cms_entry_metas` VALUES (3264,31,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (3265,1229,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (3266,1229,'image_size','51252');
INSERT INTO `cms_entry_metas` VALUES (3267,1229,'image_x','157.421875');
INSERT INTO `cms_entry_metas` VALUES (3268,1229,'image_y','149');
INSERT INTO `cms_entry_metas` VALUES (3269,1229,'image_width','236');
INSERT INTO `cms_entry_metas` VALUES (3270,1229,'image_height','204');
INSERT INTO `cms_entry_metas` VALUES (3456,1272,'backup-slug','\nspiderman-by-patc-14-8\n');
INSERT INTO `cms_entry_metas` VALUES (3273,1231,'backup-slug','\nhydrangeas-18\n');
INSERT INTO `cms_entry_metas` VALUES (3289,1233,'backup-slug','\nhydrangeas-19\n');
INSERT INTO `cms_entry_metas` VALUES (3399,1241,'backup-slug','\ntulips-31\n');
INSERT INTO `cms_entry_metas` VALUES (3316,1232,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (3317,1232,'image_size','23134');
INSERT INTO `cms_entry_metas` VALUES (3318,1232,'image_x','28');
INSERT INTO `cms_entry_metas` VALUES (3319,1232,'image_y','159');
INSERT INTO `cms_entry_metas` VALUES (3320,1232,'image_width','217');
INSERT INTO `cms_entry_metas` VALUES (3321,1232,'image_height','111');
INSERT INTO `cms_entry_metas` VALUES (3431,1257,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-29\n');
INSERT INTO `cms_entry_metas` VALUES (3457,1273,'backup-slug','\nsmoke-stock1191-36\n');
INSERT INTO `cms_entry_metas` VALUES (3291,1234,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-28\n');
INSERT INTO `cms_entry_metas` VALUES (3315,1232,'backup-slug','\n20110530-061908-54\n');
INSERT INTO `cms_entry_metas` VALUES (3459,1275,'backup-slug','\nhydrangeas-21\n');
INSERT INTO `cms_entry_metas` VALUES (3460,1276,'backup-slug','\nbatman-by-frogbillgo-d2yoamc-30\n');
INSERT INTO `cms_entry_metas` VALUES (3458,1274,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-26\n');
INSERT INTO `cms_entry_metas` VALUES (3430,1256,'backup-slug','\nhydrangeas-20\n');
INSERT INTO `cms_entry_metas` VALUES (3325,1239,'backup-slug','\nthursday20september2012014818slide1-21\n');
INSERT INTO `cms_entry_metas` VALUES (3332,1240,'backup-slug','\nthursday20september2012014818slide1-22\n');
INSERT INTO `cms_entry_metas` VALUES (3428,1254,'backup-slug','\nsmoke-stock1191-8\n');
INSERT INTO `cms_entry_metas` VALUES (3427,1253,'backup-slug','\nspiderman-by-patc-14-7\n');
INSERT INTO `cms_entry_metas` VALUES (3454,1271,'backup-slug','\nbatgirl-issue-10-by-artgerm-36\n');
INSERT INTO `cms_entry_metas` VALUES (3404,1241,'image_width','144');
INSERT INTO `cms_entry_metas` VALUES (3340,131,'count-media','1');
INSERT INTO `cms_entry_metas` VALUES (3403,1241,'image_y','50');
INSERT INTO `cms_entry_metas` VALUES (3402,1241,'image_x','233.421875');
INSERT INTO `cms_entry_metas` VALUES (3401,1241,'image_size','13529');
INSERT INTO `cms_entry_metas` VALUES (3400,1241,'image_type','jpeg');
INSERT INTO `cms_entry_metas` VALUES (3429,1255,'backup-slug','\n6462d28e02631147cd6ee51a744db6c6-7\n');
INSERT INTO `cms_entry_metas` VALUES (3423,364,'image_height','243');
INSERT INTO `cms_entry_metas` VALUES (3424,72,'form-added_image','364');
INSERT INTO `cms_entry_metas` VALUES (3422,364,'image_width','301');
INSERT INTO `cms_entry_metas` VALUES (3421,364,'image_y','62');
INSERT INTO `cms_entry_metas` VALUES (3420,364,'image_x','92.421875');
INSERT INTO `cms_entry_metas` VALUES (3411,1251,'backup-slug','\nhydrangeas-4\n');
INSERT INTO `cms_entry_metas` VALUES (3410,72,'count-books','2');
INSERT INTO `cms_entry_metas` VALUES (3405,1241,'image_height','119');
INSERT INTO `cms_entry_metas` VALUES (3365,399,'form-termin','08/21/2015|11/12/1997|03/14/2035|11/17/2017|11/17/2017');
INSERT INTO `cms_entry_metas` VALUES (3467,1282,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-37\n');
INSERT INTO `cms_entry_metas` VALUES (3436,1261,'backup-slug','\n20110530-061908-30\n');
INSERT INTO `cms_entry_metas` VALUES (3437,1262,'backup-slug','\nstock-photo-coffee-beans-in-canvas-sack-9416005-19\n');
INSERT INTO `cms_entry_metas` VALUES (3438,1263,'backup-slug','\nsuper-mario-bro-by-skottieyoung-d4nh5fb-13\n');
INSERT INTO `cms_entry_metas` VALUES (3468,1283,'backup-slug','\n20110610-103819-7\n');
INSERT INTO `cms_entry_metas` VALUES (3469,1284,'backup-slug','\nkoala-39\n');
INSERT INTO `cms_entry_metas` VALUES (3470,161,'count-form-group_photo_2','5');
INSERT INTO `cms_entry_metas` VALUES (3471,1285,'backup-slug','\nresize-florian-new-02-53\n');
INSERT INTO `cms_entry_metas` VALUES (3472,1286,'backup-slug','\navengers-vs-x-men-babies-by-skottieyoung-d4raoid-23\n');
INSERT INTO `cms_entry_metas` VALUES (3473,1287,'backup-slug','\nslider-2\n');
INSERT INTO `cms_entry_metas` VALUES (3474,1288,'backup-slug','\nsmoke-stock1191-37\n');
INSERT INTO `cms_entry_metas` VALUES (3475,161,'form-books','Dark Magic|World War II Cont');
INSERT INTO `cms_entry_metas` VALUES (3476,161,'form-dropme','drop dua');
INSERT INTO `cms_entry_metas` VALUES (3477,161,'form-fake_ckeditor','<p>makan nasi goreng</p>\r\n');
INSERT INTO `cms_entry_metas` VALUES (3478,161,'form-biggy_text','biggy text');
INSERT INTO `cms_entry_metas` VALUES (3479,161,'form-warnaku','#ff00ff');
INSERT INTO `cms_entry_metas` VALUES (3543,208,'form-url_link','http://www.twitter.com');
INSERT INTO `cms_entry_metas` VALUES (3482,1289,'backup-slug','\nbooks\n');
INSERT INTO `cms_entry_metas` VALUES (3483,1289,'form-url_code','books');
INSERT INTO `cms_entry_metas` VALUES (3484,1289,'form-meta_title','meta books title');
INSERT INTO `cms_entry_metas` VALUES (3485,1289,'form-meta_description','meta books description');
INSERT INTO `cms_entry_metas` VALUES (3486,1289,'form-meta_keywords','meta books keywords');
INSERT INTO `cms_entry_metas` VALUES (3487,1290,'backup-slug','\nbuku\n');
INSERT INTO `cms_entry_metas` VALUES (3488,1290,'form-url_code','buku');
INSERT INTO `cms_entry_metas` VALUES (3489,1290,'form-meta_title','meta judul buku');
INSERT INTO `cms_entry_metas` VALUES (3490,1290,'form-meta_description','meta deskripsi buku');
INSERT INTO `cms_entry_metas` VALUES (3491,1290,'form-meta_keywords','meta kata kunci buku');
INSERT INTO `cms_entry_metas` VALUES (3492,1291,'backup-slug','\nshu\n');
INSERT INTO `cms_entry_metas` VALUES (3493,1291,'form-url_code','shu');
INSERT INTO `cms_entry_metas` VALUES (3494,1291,'form-meta_title','meta books title');
INSERT INTO `cms_entry_metas` VALUES (3495,1291,'form-meta_description','meta books description');
INSERT INTO `cms_entry_metas` VALUES (3496,1291,'form-meta_keywords','meta books keywords');
INSERT INTO `cms_entry_metas` VALUES (3497,1292,'backup-slug','\nmagazine\n');
INSERT INTO `cms_entry_metas` VALUES (3498,1292,'form-url_code','magazine');
INSERT INTO `cms_entry_metas` VALUES (3499,1292,'form-meta_title','meta magazine title');
INSERT INTO `cms_entry_metas` VALUES (3500,1292,'form-meta_description','meta magazine description');
INSERT INTO `cms_entry_metas` VALUES (3501,1292,'form-meta_keywords','meta magazine keywords');
INSERT INTO `cms_entry_metas` VALUES (3502,1293,'backup-slug','\nmajalah\n');
INSERT INTO `cms_entry_metas` VALUES (3503,1293,'form-url_code','majalah');
INSERT INTO `cms_entry_metas` VALUES (3504,1293,'form-meta_title','meta judul majalah');
INSERT INTO `cms_entry_metas` VALUES (3505,1293,'form-meta_description','meta deskripsi majalah');
INSERT INTO `cms_entry_metas` VALUES (3506,1293,'form-meta_keywords','meta kata kunci majalah');
INSERT INTO `cms_entry_metas` VALUES (3507,1294,'backup-slug','\nchinese-magazine\n');
INSERT INTO `cms_entry_metas` VALUES (3508,1294,'form-url_code','chinese-magazine');
INSERT INTO `cms_entry_metas` VALUES (3509,1294,'form-meta_title','meta ZH magazine title');
INSERT INTO `cms_entry_metas` VALUES (3510,1294,'form-meta_description','meta ZH magazine description');
INSERT INTO `cms_entry_metas` VALUES (3511,1294,'form-meta_keywords','meta ZH magazine keywords');
INSERT INTO `cms_entry_metas` VALUES (3537,1296,'backup-slug','\nword-pizza-font-independent\n');
INSERT INTO `cms_entry_metas` VALUES (3538,1296,'image_type','svg');
INSERT INTO `cms_entry_metas` VALUES (3539,1296,'image_size','50361');
INSERT INTO `cms_entry_metas` VALUES (3540,1297,'backup-slug','\nstory-word\n');
INSERT INTO `cms_entry_metas` VALUES (3541,1297,'image_type','svg');
INSERT INTO `cms_entry_metas` VALUES (3542,1297,'image_size','36741');
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
  `privilege` text,
  `count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_roles`
--

LOCK TABLES `cms_roles` WRITE;
/*!40000 ALTER TABLE `cms_roles` DISABLE KEYS */;
INSERT INTO `cms_roles` VALUES (1,'Super Admin','Administrator who has all access for the web without exceptions.','slideshow_view|slideshow_add|slideshow_edit|slideshow_delete|books_view|books_add|books_edit|books_delete|magazine_view|magazine_add|magazine_edit|magazine_delete|meta-tags_view|meta-tags_add|meta-tags_edit|meta-tags_delete|favicon_view|favicon_add|favicon_edit|favicon_delete',1);
INSERT INTO `cms_roles` VALUES (2,'Admin','Administrator from the clients.','slideshow_view|slideshow_add|slideshow_edit|slideshow_delete|books_view|books_add|books_edit|books_delete|magazine_view|magazine_add|magazine_edit|magazine_delete|meta-tags_view|meta-tags_add|meta-tags_edit|meta-tags_delete|favicon_view|favicon_add|favicon_edit|favicon_delete',NULL);
INSERT INTO `cms_roles` VALUES (3,'Regular User','Anyone with no access to admin panel.',NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
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
INSERT INTO `cms_settings` VALUES (19,'custom-pagination','15');
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
) ENGINE=MyISAM AUTO_INCREMENT=715 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_type_metas`
--

LOCK TABLES `cms_type_metas` WRITE;
/*!40000 ALTER TABLE `cms_type_metas` DISABLE KEYS */;
INSERT INTO `cms_type_metas` VALUES (629,3,'form-author','','text','','');
INSERT INTO `cms_type_metas` VALUES (628,3,'form-weight','','text','not_empty|is_numeric|','Product weight in kg.');
INSERT INTO `cms_type_metas` VALUES (7,4,'stagging','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (630,3,'form-publish_date','','datepicker','not_empty|','');
INSERT INTO `cms_type_metas` VALUES (631,3,'form-publisher','','text','','');
INSERT INTO `cms_type_metas` VALUES (632,3,'form-approval','Approve\r\nPending','dropdown','not_empty|','This book is already approved or not.');
INSERT INTO `cms_type_metas` VALUES (243,3,'stagging','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (180,3,'gallery','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (627,3,'form-quantity','','text','not_empty|is_numeric|','');
INSERT INTO `cms_type_metas` VALUES (254,3,'title_key','Books Name',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (681,5,'display_crop','2',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (682,5,'form-action','Comment\r\nShare\r\nLike\r\nUnlike that damn bloG','checkbox','','More Action about the blogs.');
INSERT INTO `cms_type_metas` VALUES (475,3,'category','nerd section',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (502,4,'category','nerd section',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (677,11,'form-normal_text','','text','max_length_30|','');
INSERT INTO `cms_type_metas` VALUES (678,11,'form-single_browse','','browse','','');
INSERT INTO `cms_type_metas` VALUES (497,5,'category','nerd section',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (463,12,'category','home',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (689,12,'form-datetimepicker','','datetimepicker','not_empty|','');
INSERT INTO `cms_type_metas` VALUES (440,11,'pagination','7',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (679,11,'form-warnaku','','color','not_empty|','test warna');
INSERT INTO `cms_type_metas` VALUES (465,11,'category','nerd section',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (450,11,'gallery','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (675,11,'form-fake_ckeditor','','ckeditor','not_empty|','just a test additional ckeditor.');
INSERT INTO `cms_type_metas` VALUES (676,11,'form-biggy_text','','textarea','max_length_100|','');
INSERT INTO `cms_type_metas` VALUES (633,3,'form-background','','image','','Background of the book');
INSERT INTO `cms_type_metas` VALUES (634,3,'form-added_image','','image','','');
INSERT INTO `cms_type_metas` VALUES (671,11,'form-books','','checkbox','browse_module|','browse books for checkbox.');
INSERT INTO `cms_type_metas` VALUES (680,5,'multi_language','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (640,4,'form-magazine','','multibrowse','','Zpanel Famous Magazine.');
INSERT INTO `cms_type_metas` VALUES (638,4,'form-news_file','','file','','');
INSERT INTO `cms_type_metas` VALUES (639,4,'form-books','','multibrowse','not_empty|','Test New Type again.');
INSERT INTO `cms_type_metas` VALUES (674,11,'form-group_photo_2','','gallery','max_length_5|','Maximum 5 photos only.');
INSERT INTO `cms_type_metas` VALUES (673,11,'form-dropme','drop satu\r\ndrop dua\r\ndrop tiga','dropdown','','');
INSERT INTO `cms_type_metas` VALUES (672,11,'form-group_photo','','gallery','','just a test field gallery.');
INSERT INTO `cms_type_metas` VALUES (626,3,'form-price','','text','not_empty|is_numeric|is_alnum|','');
INSERT INTO `cms_type_metas` VALUES (625,3,'display_crop','2',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (637,4,'multi_language','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (635,3,'form-filename','','file','','');
INSERT INTO `cms_type_metas` VALUES (636,3,'form-filename2','','file','','This is just a test file.');
INSERT INTO `cms_type_metas` VALUES (624,3,'multi_language','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (641,4,'form-termin','','multidate','not_empty|','tes multidate field.');
INSERT INTO `cms_type_metas` VALUES (683,5,'form-background','','image','','');
INSERT INTO `cms_type_metas` VALUES (684,5,'form-books','','browse','','');
INSERT INTO `cms_type_metas` VALUES (688,12,'form-url_link','','text','is_url|','Example: http://www.yourdomain.com');
INSERT INTO `cms_type_metas` VALUES (690,12,'form-timepicker','','timepicker','','');
INSERT INTO `cms_type_metas` VALUES (703,19,'category','others',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (704,19,'title_key','Menu Name',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (705,19,'multi_language','enable',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (706,19,'form-url_code','','text','not_empty|','Alias URL code for this module.');
INSERT INTO `cms_type_metas` VALUES (707,19,'form-meta_title','','text','','Maximum character for best SEO is 70 chars.');
INSERT INTO `cms_type_metas` VALUES (708,19,'form-meta_description','','textarea','','Maximum character for best SEO is 150 chars.');
INSERT INTO `cms_type_metas` VALUES (709,19,'form-meta_keywords','','textarea','','SEO Meta Keywords (use comma to separate each other keywords).');
INSERT INTO `cms_type_metas` VALUES (710,20,'category','others',NULL,NULL,NULL);
INSERT INTO `cms_type_metas` VALUES (711,20,'form-general_favicon','','file','not_empty|','Please upload .ico favicon file.');
INSERT INTO `cms_type_metas` VALUES (712,20,'form-apple_favicon','','file','not_empty|','please upload .png apple favicon file.');
INSERT INTO `cms_type_metas` VALUES (713,20,'form-android_favicon','','file','not_empty|','please upload .png android favicon file.');
INSERT INTO `cms_type_metas` VALUES (714,20,'form-microsoft_favicon','','file','not_empty|','please upload .png microsoft favicon file.');
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
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
INSERT INTO `cms_types` VALUES (19,'Meta Tags','meta-tags','SEO meta tags for each module.',0,0,'2017-12-14 11:07:31',1,'2017-12-14 11:07:31',1);
INSERT INTO `cms_types` VALUES (20,'Favicon','favicon','Favicon image settings.',0,0,'2018-02-19 11:53:04',1,'2018-02-19 11:53:04',1);
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

-- Dump completed on 2018-10-05 15:16:25
