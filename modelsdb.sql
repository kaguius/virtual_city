/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.37-0ubuntu0.12.04.1 : Database - modelsdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`modelsdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `modelsdb`;

/*Table structure for table `admin_status` */

DROP TABLE IF EXISTS `admin_status`;

CREATE TABLE `admin_status` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `admin_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';

/*Data for the table `admin_status` */

insert  into `admin_status`(`id`,`admin_status`) values (1,'Administrator'),(2,'Management'),(3,'User'),(4,'Developer');

/*Table structure for table `avail` */

DROP TABLE IF EXISTS `avail`;

CREATE TABLE `avail` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `avail` varchar(50) DEFAULT NULL,
  `enable` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `avail` */

insert  into `avail`(`id`,`avail`,`enable`) values (1,'Day',1),(2,'Night',1),(3,'Mid Morning',1),(4,'Afternoon',1),(5,'Evening',1),(6,'Brunch',0);

/*Table structure for table `calender` */

DROP TABLE IF EXISTS `calender`;

CREATE TABLE `calender` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `month` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `calender` */

insert  into `calender`(`id`,`month`) values (1,'Jan'),(2,'Feb'),(3,'Mar'),(4,'Apr'),(5,'May'),(6,'Jun'),(7,'Jul'),(8,'Aug'),(9,'Sep'),(10,'Oct'),(11,'Nov'),(12,'Dec');

/*Table structure for table `county` */

DROP TABLE IF EXISTS `county`;

CREATE TABLE `county` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `county` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

/*Data for the table `county` */

insert  into `county`(`id`,`county`) values (1,'Baringo'),(2,'Bomet'),(3,'Bungoma'),(4,'Busia'),(5,'Elgeyo Marakwet'),(6,'Embu'),(7,'Garissa'),(8,'Homa Bay'),(9,'Isiolo'),(10,'Kajiado'),(11,'Kakamega'),(12,'Kericho'),(13,'Kiambu'),(14,'Kilifi'),(15,'Kirinyaga'),(16,'Kisii'),(17,'Kisumu'),(18,'Kitui'),(19,'Kwale'),(20,'Laikipia'),(21,'Lamu'),(22,'Machakos'),(23,'Makueni'),(24,'Mandera'),(25,'Marsabit'),(26,'Meru'),(27,'Migori'),(28,'Mombasa'),(29,'Muranga'),(30,'Nairobi'),(31,'Nakuru'),(32,'Nandi'),(33,'Narok'),(34,'Nyamira'),(35,'Nyandarua'),(36,'Nyeri'),(37,'Samburu'),(38,'Siaya'),(39,'Taita Taveta'),(40,'Tana River'),(41,'Tharaka Nithi'),(42,'Trans Nzoia'),(43,'Turkana'),(44,'Uasin Gishu'),(45,'Vihiga'),(46,'Wajir'),(47,'West Pokot');

/*Table structure for table `hair_color` */

DROP TABLE IF EXISTS `hair_color`;

CREATE TABLE `hair_color` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `hair_color` varchar(150) DEFAULT NULL,
  `enable` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `hair_color` */

insert  into `hair_color`(`id`,`hair_color`,`enable`) values (1,'Black Hair',1),(2,'Natural Black Hair',1),(3,'Deepest Brunette Hair',1),(4,'Brown Hair',1),(5,'Medium Brown Hair',1),(6,'Natural Brown Hair',1),(7,'Light Brown Hair',1),(8,'Chestnut Brown Hair',1),(9,'Light Chestnut Brown Hair',1),(10,'Auburn Hair',1),(11,'Copper Hair',1),(12,'Red Hair',1),(13,'Titian Hair',1),(14,'Strawberry Blonde Hair',1),(15,'Light Blonde Hair',1),(16,'Dark Blonde Hair',1),(17,'Golden Blond Hair',1),(18,'Curly Blonde Hair',1),(19,'Medium Blond Hair',1),(20,'Grey Hair',1),(21,'White Hair',1),(22,'White Hair caused by Albinism',1);

/*Table structure for table `heights` */

DROP TABLE IF EXISTS `heights`;

CREATE TABLE `heights` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `feet` varchar(10) DEFAULT NULL,
  `inch` varchar(10) DEFAULT NULL,
  `centimeters` varchar(10) DEFAULT NULL,
  `enable` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `heights` */

insert  into `heights`(`id`,`feet`,`inch`,`centimeters`,`enable`) values (1,'5 0\"','60 In','152.40 cm',1),(2,'5 1\"','61 In','154.94cm',1);

/*Table structure for table `models` */

DROP TABLE IF EXISTS `models`;

CREATE TABLE `models` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `middle-Name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `emailaddress` varchar(50) DEFAULT NULL,
  `idnumber` varchar(20) DEFAULT NULL,
  `height` int(5) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `hotness` int(5) DEFAULT NULL,
  `beautymarks` longtext,
  `skin_color` int(5) DEFAULT NULL,
  `hair_color` int(5) DEFAULT NULL,
  `compensation` float DEFAULT NULL,
  `availability` int(5) DEFAULT NULL,
  `headshot` longtext,
  `fullbody` longtext,
  `sex` varchar(5) DEFAULT NULL,
  `transactiontime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `models` */

insert  into `models`(`id`,`first_name`,`middle-Name`,`last_name`,`dateofbirth`,`phone_number`,`emailaddress`,`idnumber`,`height`,`weight`,`hotness`,`beautymarks`,`skin_color`,`hair_color`,`compensation`,`availability`,`headshot`,`fullbody`,`sex`,`transactiontime`) values (1,'Andrew',NULL,'Kibe','1984-04-16','0721100342','kaguius@gmail.com','23049745',1,'81 Kg',8,'None',6,1,800,1,'uploads/Exotic-car-with-model-hig-b14a3.jpg','uploads/444px-Back_view_of_teen_boys_head_-_1.jpeg','M','2014-04-24 14:17:15'),(2,'Joseph',NULL,'Kibe','2000-08-05','0721100342','kibe@gmail.com','23049745',2,'67 Kg',9,'None',3,11,1000,3,'uploads/444px-Back_view_of_teen_boys_head_-_1.jpeg','uploads/Exotic-car-with-model-hig-b14a3.jpg','F','2014-04-24 14:19:23');

/*Table structure for table `passwords` */

DROP TABLE IF EXISTS `passwords`;

CREATE TABLE `passwords` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `passwords` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `passwords` */

insert  into `passwords`(`id`,`passwords`) values (1,'f4r5ZzBZ'),(2,'SXe8ATRu'),(3,'PMKEVVjQ'),(4,'QgEp45An'),(5,'m6MdLtCF'),(6,'r9ZUGwFY'),(7,'pCndCcKs'),(8,'SwEbgQbF'),(9,'H3K5jRNR'),(10,'dY9BCA9f');

/*Table structure for table `skin_color` */

DROP TABLE IF EXISTS `skin_color`;

CREATE TABLE `skin_color` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `skin_color` varchar(150) DEFAULT NULL,
  `enable` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `skin_color` */

insert  into `skin_color`(`id`,`skin_color`,`enable`) values (1,'Light, Pale White',1),(2,'White, Fair',1),(3,'Medium, White to Light Brown',1),(4,'Olive, Moderate Brown',1),(5,'Brown, Dark Brown',1),(6,'Very Dark Brown to Black',1),(7,'Dark Skinned',1);

/*Table structure for table `user_logs` */

DROP TABLE IF EXISTS `user_logs`;

CREATE TABLE `user_logs` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `log_ipaddress` varchar(20) DEFAULT NULL,
  `log_browser` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `latitude` varchar(150) DEFAULT NULL,
  `longitude` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `user_logs` */

insert  into `user_logs`(`id`,`username`,`user_id`,`log_time`,`log_ipaddress`,`log_browser`,`city`,`country`,`latitude`,`longitude`) values (1,'admin@admin.com',2,'2014-04-23 16:05:16','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(2,'kaguius@gmail.com',1,'2014-04-23 16:05:52','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(3,'kaguius@gmail.com',1,'2014-04-23 16:27:43','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(4,'kaguius@gmail.com',1,'2014-04-24 10:08:13','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(5,'kaguius@gmail.com',1,'2014-04-24 14:41:33','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(6,'kaguius@gmail.com',1,'2014-04-24 19:01:18','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','','');

/*Table structure for table `user_profiles` */

DROP TABLE IF EXISTS `user_profiles`;

CREATE TABLE `user_profiles` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `password_main` varchar(100) DEFAULT NULL,
  `password_confirm` varchar(100) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `admin_status` int(5) NOT NULL DEFAULT '3',
  `transactiontime` datetime DEFAULT NULL,
  `tenant_id` int(5) NOT NULL,
  `user_status` int(5) DEFAULT '0',
  `manager_id` int(10) DEFAULT '0',
  `UID` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=382 DEFAULT CHARSET=latin1;

/*Data for the table `user_profiles` */

insert  into `user_profiles`(`id`,`first_name`,`last_name`,`email_address`,`password_main`,`password_confirm`,`phone_number`,`admin_status`,`transactiontime`,`tenant_id`,`user_status`,`manager_id`,`UID`) values (1,'Andrew','Kibe','kaguius@gmail.com','3f1f22537f11f5fa990c95fe123a946c','3f1f22537f11f5fa990c95fe123a946c','+254704469814',1,'2012-07-14 07:09:00',3,1,0,1),(2,'Admin','Admin','admin@admin.com','21232f297a57a5a743894a0e4a801fc3','21232f297a57a5a743894a0e4a801fc3','+254721121121',2,'2012-07-14 07:09:00',0,1,NULL,1);

/*Table structure for table `users_failed_logs` */

DROP TABLE IF EXISTS `users_failed_logs`;

CREATE TABLE `users_failed_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(70) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `ipaddress` varchar(15) DEFAULT NULL,
  `tranasctiontime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `users_failed_logs` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
