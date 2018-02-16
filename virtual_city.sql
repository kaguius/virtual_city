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

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_ref` varchar(100) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `subcategory` varchar(100) DEFAULT NULL,
  `account_id` varchar(100) DEFAULT NULL,
  `vehicle_reg` varchar(100) DEFAULT NULL,
  `consumer_mobile` varchar(45) DEFAULT NULL,
  `invoice_amount` decimal(11,2) DEFAULT NULL,
  `mpesa_type` varchar(45) DEFAULT NULL,
  `logged_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `payment_instructions` text,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=latin1;

/*Data for the table `carts` */

insert  into `carts`(`id`,`invoice_ref`,`invoice_date`,`product`,`category`,`subcategory`,`account_id`,`vehicle_reg`,`consumer_mobile`,`invoice_amount`,`mpesa_type`,`logged_by`,`created`,`modified`,`payment_instructions`,`quantity`) values (360,'78773','2014-05-05','Charcoal per bag','Juja','Juja Market',NULL,'Digital Receipt','2547','50.00','Cash',13,'2014-05-05 08:18:10','2014-05-05 08:18:10',NULL,1),(363,'78774','2014-05-05','Grains','Juja','Juja Market',NULL,'Digital Receipt','2547','50.00','Cash',13,'2014-05-05 08:45:30','2014-05-05 08:45:30',NULL,1),(365,'78775','2014-05-05','Clay Pots','Juja','Juja Market',NULL,'Digital Receipt','2547','30.00','Cash',13,'2014-05-05 09:19:30','2014-05-05 09:19:30',NULL,1);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `store_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`description`,`store_id`,`created`,`modified`) values (22,'Juja','Juja Sub County',NULL,'2014-04-26 13:01:53','2014-04-26 13:01:53'),(23,'Test','d',NULL,'2014-04-28 07:16:57','2014-04-28 07:16:57');

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `country_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `cities` */

insert  into `cities`(`id`,`name`,`description`,`country_id`,`region_id`,`created`,`modified`) values (1,'Nairobi','This is Nairobi',1,1,'2013-10-23 08:34:20','2013-10-23 08:34:20');

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `telephone_code` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `countries` */

insert  into `countries`(`id`,`name`,`description`,`telephone_code`,`created`,`modified`) values (1,'Kenya','This is kenya','254','2013-10-23 08:33:42','2013-10-23 08:33:42');

/*Table structure for table `county` */

DROP TABLE IF EXISTS `county`;

CREATE TABLE `county` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `county` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

/*Data for the table `county` */

insert  into `county`(`id`,`county`) values (1,'Baringo'),(2,'Bomet'),(3,'Bungoma'),(4,'Busia'),(5,'Elgeyo Marakwet'),(6,'Embu'),(7,'Garissa'),(8,'Homa Bay'),(9,'Isiolo'),(10,'Kajiado'),(11,'Kakamega'),(12,'Kericho'),(13,'Kiambu'),(14,'Kilifi'),(15,'Kirinyaga'),(16,'Kisii'),(17,'Kisumu'),(18,'Kitui'),(19,'Kwale'),(20,'Laikipia'),(21,'Lamu'),(22,'Machakos'),(23,'Makueni'),(24,'Mandera'),(25,'Marsabit'),(26,'Meru'),(27,'Migori'),(28,'Mombasa'),(29,'Muranga'),(30,'Nairobi'),(31,'Nakuru'),(32,'Nandi'),(33,'Narok'),(34,'Nyamira'),(35,'Nyandarua'),(36,'Nyeri'),(37,'Samburu'),(38,'Siaya'),(39,'Taita Taveta'),(40,'Tana River'),(41,'Tharaka Nithi'),(42,'Trans Nzoia'),(43,'Turkana'),(44,'Uasin Gishu'),(45,'Vihiga'),(46,'Wajir'),(47,'West Pokot');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `identitycard` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `year_of_birth` year(4) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `mothers_maiden` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

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

/*Table structure for table `markers` */

DROP TABLE IF EXISTS `markers`;

CREATE TABLE `markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `markers` */

insert  into `markers`(`id`,`name`,`address`,`lat`,`lng`,`type`) values (1,'National Museums Of Kenya','Museum Hill Road Kenya',-1.274080,36.814579,'restaurant'),(2,'Kenyatta International Conference Center','Harambee Avenue',-1.288610,36.823051,'bar'),(3,'The Nairobi Club','Nairobi District',-1.297560,36.809879,'restaurant'),(4,'Jabavu Rd','Jabavu Rd',-1.292120,36.795761,'restaurant'),(5,'Ngumo Estate','Golf Course',-1.308660,36.800121,'bar'),(6,'Dennis Pritt Road','Kilimani',-1.286360,36.792950,'restaurant'),(7,'Eastleigh North','Eastleigh North, Nairobi, Kenya',-1.273170,36.860001,'bar'),(8,'Makongeni','Makongeni, Nairobi, Kenya',-1.297600,36.850590,'bar'),(9,'Majengo','Majengo, Nairobi, Kenya',-1.286080,36.842522,'restaurant');

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

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `has_multiplier` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`description`,`category_id`,`subcategory_id`,`price`,`created`,`modified`,`has_multiplier`) values (56,'Daily Cess','Daily Cess',22,58,'20.00','2014-04-28 07:00:22','2014-04-28 07:00:22','no'),(57,'Grains','Grains',22,58,'50.00','2014-04-28 07:00:40','2014-04-28 07:00:40','no'),(58,'Root Crops','Root Crops',22,58,'50.00','2014-04-28 07:00:58','2014-04-28 07:00:58','no'),(59,'Vegetables','Vegetables',22,58,'50.00','2014-04-28 07:02:36','2014-04-28 07:02:36','no'),(60,'Fruits','Fruits',22,58,'50.00','2014-04-28 07:02:51','2014-04-28 07:02:51','no'),(61,'Pick Up','Pick Up',22,58,'200.00','2014-04-28 07:03:17','2014-04-28 07:03:17','no'),(62,'Canter','Canter',22,58,'300.00','2014-04-28 07:03:33','2014-04-28 07:03:33','no'),(63,'Lorry','Lorry',22,58,'500.00','2014-04-28 07:03:47','2014-04-28 07:03:47','no'),(64,'Cattle or Cow','Cattle or Cow',22,58,'100.00','2014-04-28 07:04:17','2014-04-28 07:04:17','no'),(65,'Sheep or Goat','Sheep or Goat',22,58,'50.00','2014-04-28 07:04:31','2014-04-28 07:04:31','no'),(66,'Chicken or Duck','Chicken or Duck',22,58,'10.00','2014-04-28 07:04:50','2014-04-28 07:04:50','no'),(67,'Lorry of Goods (under 3 tonnes)','Lorry of Goods (under 3 tonnes)',22,58,'300.00','2014-04-28 07:05:35','2014-04-28 07:05:35','no'),(68,'Lorry of Goods (3 - 6 tonnes)','Lorry of Goods (3 - 6 tonnes)',22,58,'400.00','2014-04-28 07:06:00','2014-04-28 07:06:00','no'),(69,'Lorry of Goods (over 7 tonnes)','Lorry of Goods (over 7 tonnes)',22,58,'500.00','2014-04-28 07:06:24','2014-04-28 07:06:24','no'),(70,'Charcoal per bag','Charcoal per bag',22,58,'50.00','2014-04-28 07:06:48','2014-04-28 07:08:35','yes'),(71,'Firewood per load','Firewood per load',22,58,'30.00','2014-04-28 07:07:06','2014-04-28 07:07:06','yes'),(72,'Sugarcane per load','Sugarcane per load',22,58,'30.00','2014-04-28 07:07:29','2014-04-28 07:07:29','yes'),(73,'Hand made lamps','Hand made lamps',22,58,'30.00','2014-04-28 07:07:50','2014-04-28 07:07:50','yes'),(74,'Hand Made Jiko','Hand Made Jiko',22,58,'30.00','2014-04-28 07:09:06','2014-04-28 07:09:06','yes'),(75,'Hand Made Water Jugs','Hand Made Water Jugs',22,58,'30.00','2014-04-28 07:09:32','2014-04-28 07:10:04','yes'),(76,'Hand Made Sisal Straps','Hand Made Sisal Straps',22,58,'30.00','2014-04-28 07:09:50','2014-04-28 07:09:50','yes'),(77,'Hand Made Walking stick','Hand Made Walking stick',22,58,'30.00','2014-04-28 07:10:34','2014-04-28 07:10:34','yes'),(78,'Washing Stones','Washing Stones',22,58,'30.00','2014-04-28 07:10:58','2014-04-28 07:10:58','yes'),(79,'Sisal Ropes','Sisal Ropes',22,58,'30.00','2014-04-28 07:11:13','2014-04-28 07:11:13','yes'),(80,'Mats Per Bundle','Mats Per Bundle',22,58,'30.00','2014-04-28 07:11:33','2014-04-28 07:11:33','yes'),(81,'Clay Pots','Clay Pots',22,58,'30.00','2014-04-28 07:11:53','2014-04-28 07:11:53','yes'),(83,'Tobacco','Tobacco',22,58,'30.00','2014-04-28 07:12:42','2014-04-28 07:12:42','yes'),(84,'Porridge Guard','Porridge Guard',22,58,'30.00','2014-04-28 07:13:39','2014-04-28 07:13:39','yes'),(85,'Samosa Mandaze Kaimati','Samosa Mandaze Kaimati',22,58,'30.00','2014-04-28 07:14:00','2014-04-28 07:14:00','yes'),(86,'Per Debe','Per Debe',22,58,'30.00','2014-04-28 07:14:18','2014-04-28 07:14:18','yes'),(87,'Mineral Soda','Mineral Soda',22,58,'30.00','2014-04-28 07:14:34','2014-04-28 07:14:34','yes'),(88,'Sweet Potato Vines per bag','Sweet Potato Vines per bag',22,58,'30.00','2014-04-28 07:14:53','2014-04-28 07:14:53','yes'),(89,'Eggs per Tray','Eggs per Tray',22,58,'30.00','2014-04-28 07:15:08','2014-04-28 07:15:08','yes'),(90,'Herbs Medicine Assorted','Herbs Medicine Assorted',22,58,'30.00','2014-04-28 07:15:34','2014-04-28 07:15:34','yes'),(91,'Plastic Containers','Plastic Containers',22,58,'30.00','2014-04-28 07:15:56','2014-04-28 07:15:56','yes'),(92,'Nylon Bags','Nylon Bags',22,58,'30.00','2014-04-28 07:16:12','2014-04-28 07:16:12','yes'),(93,'Mali Rahisi','Mali Rahisi',22,58,'30.00','2014-04-28 07:16:29','2014-04-28 07:16:29','yes'),(94,'Daily Cess (Market Day)','Daily Cess (Market Day)',22,58,'40.00','2014-04-29 11:31:28','2014-04-29 11:31:28','no');

/*Table structure for table `regions` */

DROP TABLE IF EXISTS `regions`;

CREATE TABLE `regions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `country_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `regions` */

insert  into `regions`(`id`,`name`,`description`,`country_id`,`created`,`modified`) values (1,'Central','This is Central',1,'2013-10-23 08:34:05','2013-10-23 08:34:05');

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

/*Table structure for table `statements` */

DROP TABLE IF EXISTS `statements`;

CREATE TABLE `statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_ref` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `subcategory` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `account_id` varchar(100) DEFAULT NULL,
  `invoice_amount` decimal(11,2) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `mpesa_type` varchar(45) DEFAULT NULL,
  `mpesa_ref` varchar(100) DEFAULT NULL,
  `buygoods_id` int(11) DEFAULT NULL,
  `account_no` varchar(100) DEFAULT NULL,
  `paid_amount` decimal(11,2) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `logged_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `vehicle_reg` varchar(100) DEFAULT NULL,
  `consumer_mobile` varchar(45) DEFAULT NULL,
  `mpesa_name` varchar(100) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store` varchar(45) DEFAULT NULL,
  `clerk` varchar(100) DEFAULT NULL,
  `payment_instructions` text,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=latin1;

/*Data for the table `statements` */

insert  into `statements`(`id`,`invoice_ref`,`category`,`subcategory`,`product`,`account_id`,`invoice_amount`,`status`,`mpesa_type`,`mpesa_ref`,`buygoods_id`,`account_no`,`paid_amount`,`paid_date`,`logged_by`,`created`,`modified`,`date`,`vehicle_reg`,`consumer_mobile`,`mpesa_name`,`store_id`,`store`,`clerk`,`payment_instructions`,`quantity`) values (126,'78580','Juja','Juja Market','Eggs per Tray','','30.00','Paid','Cash','',NULL,'39','30.00','2014-04-28',13,'2014-04-28 07:19:39','2014-04-28 07:19:39','2014-04-28','','2547',NULL,NULL,NULL,'kidando','',1),(127,'78581','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'40','20.00','2014-04-29',19,'2014-04-29 11:39:38','2014-04-29 11:39:38','2014-04-29','253240','2547',NULL,NULL,NULL,'cmaina','',1),(128,'78582','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'41','20.00','2014-04-29',19,'2014-04-29 11:41:32','2014-04-29 11:41:32','2014-04-29','253241','2547',NULL,NULL,NULL,'cmaina','',1),(129,'78583','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'42','20.00','2014-04-29',19,'2014-04-29 11:43:10','2014-04-29 11:43:10','2014-04-29','253242','2547',NULL,NULL,NULL,'cmaina','',1),(130,'78584','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'43','20.00','2014-04-29',19,'2014-04-29 11:44:26','2014-04-29 11:44:26','2014-04-29','253243','2547',NULL,NULL,NULL,'cmaina','',1),(131,'78585','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'44','20.00','2014-04-29',19,'2014-04-29 11:45:45','2014-04-29 11:45:45','2014-04-29','253243','2547',NULL,NULL,NULL,'cmaina','',1),(132,'78586','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'45','20.00','2014-04-29',19,'2014-04-29 11:47:17','2014-04-29 11:47:17','2014-04-29','253244','2547',NULL,NULL,NULL,'cmaina','',1),(133,'78587','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'46','20.00','2014-04-29',19,'2014-04-29 11:48:08','2014-04-29 11:48:08','2014-04-29','253245','2547',NULL,NULL,NULL,'cmaina','',1),(134,'78588','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'47','20.00','2014-04-29',19,'2014-04-29 11:49:02','2014-04-29 11:49:02','2014-04-29','253245','2547',NULL,NULL,NULL,'cmaina','',1),(135,'78589','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'48','20.00','2014-04-29',19,'2014-04-29 11:49:55','2014-04-29 11:49:55','2014-04-29','253246','2547',NULL,NULL,NULL,'cmaina','',1),(136,'78590','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'49','20.00','2014-04-29',20,'2014-04-29 11:50:54','2014-04-29 11:50:54','2014-04-29','252326','2547',NULL,NULL,NULL,'mwangari','',1),(137,'78591','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'50','20.00','2014-04-29',20,'2014-04-29 11:52:52','2014-04-29 11:52:52','2014-04-29','252327','2547',NULL,NULL,NULL,'mwangari','',1),(138,'78591','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'50','20.00','2014-04-29',20,'2014-04-29 11:52:58','2014-04-29 11:52:58','2014-04-29','252327','2547',NULL,NULL,NULL,'mwangari','',1),(139,'78591','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'51','20.00','2014-04-29',19,'2014-04-29 11:53:08','2014-04-29 11:53:08','2014-04-29','253247','2547',NULL,NULL,NULL,'cmaina','',1),(140,'78592','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'52','20.00','2014-04-29',20,'2014-04-29 11:55:59','2014-04-29 11:55:59','2014-04-29','252328','2547',NULL,NULL,NULL,'mwangari','',1),(141,'78593','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'53','20.00','2014-04-29',20,'2014-04-29 11:57:08','2014-04-29 11:57:08','2014-04-29','252329','2547',NULL,NULL,NULL,'mwangari','',1),(142,'78593','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'53','20.00','2014-04-29',20,'2014-04-29 11:57:13','2014-04-29 11:57:13','2014-04-29','252329','2547',NULL,NULL,NULL,'mwangari','',1),(143,'78593','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'54','20.00','2014-04-29',19,'2014-04-29 11:58:04','2014-04-29 11:58:04','2014-04-29','253248','2547',NULL,NULL,NULL,'cmaina','',1),(144,'78593','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'54','20.00','2014-04-29',19,'2014-04-29 11:58:07','2014-04-29 11:58:07','2014-04-29','253248','2547',NULL,NULL,NULL,'cmaina','',1),(145,'78594','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'55','20.00','2014-04-29',20,'2014-04-29 11:59:18','2014-04-29 11:59:18','2014-04-29','252300','2547',NULL,NULL,NULL,'mwangari','',1),(146,'78594','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'56','20.00','2014-04-29',19,'2014-04-29 11:59:22','2014-04-29 11:59:22','2014-04-29','253249','2547',NULL,NULL,NULL,'cmaina','',1),(147,'78595','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'57','20.00','2014-04-29',19,'2014-04-29 12:00:29','2014-04-29 12:00:29','2014-04-29','253250','2547',NULL,NULL,NULL,'cmaina','',1),(148,'78595','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'57','20.00','2014-04-29',19,'2014-04-29 12:00:33','2014-04-29 12:00:33','2014-04-29','253250','2547',NULL,NULL,NULL,'cmaina','',1),(149,'78596','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'58','20.00','2014-04-29',19,'2014-04-29 12:01:18','2014-04-29 12:01:18','2014-04-29','253251','2547',NULL,NULL,NULL,'cmaina','',1),(150,'78597','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'59','20.00','2014-04-29',19,'2014-04-29 12:04:20','2014-04-29 12:04:20','2014-04-29','253253','2547',NULL,NULL,NULL,'cmaina','',1),(151,'78598','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'60','20.00','2014-04-29',24,'2014-04-29 12:15:59','2014-04-29 12:15:59','2014-04-29','253254','2547',NULL,NULL,NULL,'mmsogo','',1),(152,'78599','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'61','20.00','2014-04-29',24,'2014-04-29 12:16:56','2014-04-29 12:16:56','2014-04-29','253255','2547',NULL,NULL,NULL,'mmsogo','',1),(153,'78600','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'62','20.00','2014-04-29',24,'2014-04-29 12:18:07','2014-04-29 12:18:07','2014-04-29','253256','2547',NULL,NULL,NULL,'mmsogo','',1),(154,'78600','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'62','20.00','2014-04-29',24,'2014-04-29 12:18:15','2014-04-29 12:18:15','2014-04-29','253256','2547',NULL,NULL,NULL,'mmsogo','',1),(155,'78600','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'62','20.00','2014-04-29',24,'2014-04-29 12:18:20','2014-04-29 12:18:20','2014-04-29','253256','2547',NULL,NULL,NULL,'mmsogo','',1),(156,'78601','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'63','20.00','2014-04-29',24,'2014-04-29 12:19:35','2014-04-29 12:19:35','2014-04-29','253258','2547',NULL,NULL,NULL,'mmsogo','',1),(157,'78602','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'64','20.00','2014-04-29',24,'2014-04-29 12:21:03','2014-04-29 12:21:03','2014-04-29','253259','2547',NULL,NULL,NULL,'mmsogo','',1),(158,'78602','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'64','20.00','2014-04-29',24,'2014-04-29 12:21:05','2014-04-29 12:21:05','2014-04-29','253259','2547',NULL,NULL,NULL,'mmsogo','',1),(159,'78602','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'64','20.00','2014-04-29',24,'2014-04-29 12:21:06','2014-04-29 12:21:06','2014-04-29','253259','2547',NULL,NULL,NULL,'mmsogo','',1),(160,'78603','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'65','20.00','2014-04-29',24,'2014-04-29 12:22:06','2014-04-29 12:22:06','2014-04-29','253260','2547',NULL,NULL,NULL,'mmsogo','',1),(161,'78604','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'66','20.00','2014-04-29',24,'2014-04-29 12:22:53','2014-04-29 12:22:53','2014-04-29','253261','2547',NULL,NULL,NULL,'mmsogo','',1),(162,'78605','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'67','20.00','2014-04-29',24,'2014-04-29 12:23:42','2014-04-29 12:23:42','2014-04-29','253262','2547',NULL,NULL,NULL,'mmsogo','',1),(163,'78606','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'68','20.00','2014-04-29',24,'2014-04-29 12:24:26','2014-04-29 12:24:26','2014-04-29','253263','2547',NULL,NULL,NULL,'mmsogo','',1),(164,'78607','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'69','20.00','2014-04-29',24,'2014-04-29 12:25:06','2014-04-29 12:25:06','2014-04-29','253264','2547',NULL,NULL,NULL,'mmsogo','',1),(165,'78608','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'70','20.00','2014-04-29',24,'2014-04-29 12:26:07','2014-04-29 12:26:07','2014-04-29','253265','2547',NULL,NULL,NULL,'mmsogo','',1),(166,'78609','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'71','20.00','2014-04-29',24,'2014-04-29 12:26:55','2014-04-29 12:26:55','2014-04-29','253266','2547',NULL,NULL,NULL,'mmsogo','',1),(167,'78610','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'72','20.00','2014-04-29',24,'2014-04-29 12:27:37','2014-04-29 12:27:37','2014-04-29','253267','2547',NULL,NULL,NULL,'mmsogo','',1),(168,'78611','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'73','20.00','2014-04-29',24,'2014-04-29 12:28:38','2014-04-29 12:28:38','2014-04-29','253268','2547',NULL,NULL,NULL,'mmsogo','',1),(169,'78611','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'73','20.00','2014-04-29',24,'2014-04-29 12:28:52','2014-04-29 12:28:52','2014-04-29','253268','2547',NULL,NULL,NULL,'mmsogo','',1),(170,'78611','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'73','20.00','2014-04-29',24,'2014-04-29 12:28:55','2014-04-29 12:28:55','2014-04-29','253268','2547',NULL,NULL,NULL,'mmsogo','',1),(171,'78612','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'74','20.00','2014-04-29',24,'2014-04-29 12:29:50','2014-04-29 12:29:50','2014-04-29','253269','2547',NULL,NULL,NULL,'mmsogo','',1),(172,'78613','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'75','20.00','2014-04-29',24,'2014-04-29 12:31:24','2014-04-29 12:31:24','2014-04-29','253270','2547',NULL,NULL,NULL,'mmsogo','',1),(173,'78614','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'76','20.00','2014-04-29',24,'2014-04-29 12:32:20','2014-04-29 12:32:20','2014-04-29','253271','2547',NULL,NULL,NULL,'mmsogo','',1),(174,'78614','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'76','20.00','2014-04-29',24,'2014-04-29 12:32:25','2014-04-29 12:32:25','2014-04-29','253271','2547',NULL,NULL,NULL,'mmsogo','',1),(175,'78614','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'76','20.00','2014-04-29',24,'2014-04-29 12:32:29','2014-04-29 12:32:29','2014-04-29','253271','2547',NULL,NULL,NULL,'mmsogo','',1),(176,'78614','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'76','20.00','2014-04-29',24,'2014-04-29 12:32:36','2014-04-29 12:32:36','2014-04-29','253271','2547',NULL,NULL,NULL,'mmsogo','',1),(177,'78614','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'76','20.00','2014-04-29',24,'2014-04-29 12:32:43','2014-04-29 12:32:43','2014-04-29','253271','2547',NULL,NULL,NULL,'mmsogo','',1),(178,'78615','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'77','20.00','2014-04-29',24,'2014-04-29 12:33:32','2014-04-29 12:33:32','2014-04-29','253272','2547',NULL,NULL,NULL,'mmsogo','',1),(179,'78616','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'78','20.00','2014-04-29',24,'2014-04-29 12:34:32','2014-04-29 12:34:32','2014-04-29','253273','2547',NULL,NULL,NULL,'mmsogo','',1),(180,'78617','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'79','20.00','2014-04-29',24,'2014-04-29 12:35:49','2014-04-29 12:35:49','2014-04-29','253275','2547',NULL,NULL,NULL,'mmsogo','',1),(181,'78617','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'79','20.00','2014-04-29',24,'2014-04-29 12:35:56','2014-04-29 12:35:56','2014-04-29','253275','2547',NULL,NULL,NULL,'mmsogo','',1),(182,'78618','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'80','20.00','2014-04-29',24,'2014-04-29 12:37:04','2014-04-29 12:37:04','2014-04-29','253276','2547',NULL,NULL,NULL,'mmsogo','',1),(183,'78619','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'81','20.00','2014-04-29',24,'2014-04-29 12:37:57','2014-04-29 12:37:57','2014-04-29','253277','2547',NULL,NULL,NULL,'mmsogo','',1),(184,'78620','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'82','20.00','2014-04-29',24,'2014-04-29 12:39:03','2014-04-29 12:39:03','2014-04-29','253278','2547',NULL,NULL,NULL,'mmsogo','',1),(185,'78621','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'83','20.00','2014-04-29',24,'2014-04-29 12:39:39','2014-04-29 12:39:39','2014-04-29','253279','2547',NULL,NULL,NULL,'mmsogo','',1),(186,'78622','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'84','20.00','2014-04-29',24,'2014-04-29 12:40:31','2014-04-29 12:40:31','2014-04-29','253280','2547',NULL,NULL,NULL,'mmsogo','',1),(187,'78623','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'85','20.00','2014-04-29',24,'2014-04-29 12:41:19','2014-04-29 12:41:19','2014-04-29','253281','2547',NULL,NULL,NULL,'mmsogo','',1),(188,'78624','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'86','20.00','2014-04-29',24,'2014-04-29 12:41:59','2014-04-29 12:41:59','2014-04-29','253282','2547',NULL,NULL,NULL,'mmsogo','',1),(189,'78625','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'87','20.00','2014-04-29',24,'2014-04-29 12:42:32','2014-04-29 12:42:32','2014-04-29','253283','2547',NULL,NULL,NULL,'mmsogo','',1),(190,'78626','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'88','20.00','2014-04-29',24,'2014-04-29 12:43:31','2014-04-29 12:43:31','2014-04-29','253284','2547',NULL,NULL,NULL,'mmsogo','',1),(191,'78627','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'89','20.00','2014-04-29',24,'2014-04-29 12:44:35','2014-04-29 12:44:35','2014-04-29','253285','2547',NULL,NULL,NULL,'mmsogo','',1),(192,'78628','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'90','20.00','2014-04-29',24,'2014-04-29 12:45:41','2014-04-29 12:45:41','2014-04-29','253286','2547',NULL,NULL,NULL,'mmsogo','',1),(193,'78629','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'91','20.00','2014-04-29',24,'2014-04-29 12:46:32','2014-04-29 12:46:32','2014-04-29','253287','2547',NULL,NULL,NULL,'mmsogo','',1),(194,'78630','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'92','20.00','2014-04-29',24,'2014-04-29 12:47:18','2014-04-29 12:47:18','2014-04-29','253288','2547',NULL,NULL,NULL,'mmsogo','',1),(195,'78631','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'93','20.00','2014-04-29',24,'2014-04-29 12:48:05','2014-04-29 12:48:05','2014-04-29','253289','2547',NULL,NULL,NULL,'mmsogo','',1),(196,'78632','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'94','20.00','2014-04-29',24,'2014-04-29 12:48:53','2014-04-29 12:48:53','2014-04-29','253290','2547',NULL,NULL,NULL,'mmsogo','',1),(197,'78633','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'95','20.00','2014-04-29',24,'2014-04-29 12:49:52','2014-04-29 12:49:52','2014-04-29','253291','2547',NULL,NULL,NULL,'mmsogo','',1),(198,'78634','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'96','20.00','2014-04-29',24,'2014-04-29 12:50:55','2014-04-29 12:50:55','2014-04-29','253292','2547',NULL,NULL,NULL,'mmsogo','',1),(199,'78635','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'97','20.00','2014-04-29',24,'2014-04-29 12:52:14','2014-04-29 12:52:14','2014-04-29','253293','2547',NULL,NULL,NULL,'mmsogo','',1),(200,'78636','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'98','20.00','2014-04-29',24,'2014-04-29 12:53:13','2014-04-29 12:53:13','2014-04-29','253295','2547',NULL,NULL,NULL,'mmsogo','',1),(201,'78637','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'99','20.00','2014-04-29',24,'2014-04-29 12:57:27','2014-04-29 12:57:27','2014-04-29','253297','2547',NULL,NULL,NULL,'mmsogo','',1),(202,'78637','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'99','20.00','2014-04-29',24,'2014-04-29 12:57:31','2014-04-29 12:57:31','2014-04-29','253297','2547',NULL,NULL,NULL,'mmsogo','',1),(203,'78638','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'100','20.00','2014-04-29',24,'2014-04-29 12:59:29','2014-04-29 12:59:29','2014-04-29','253298','2547',NULL,NULL,NULL,'mmsogo','',1),(204,'78639','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'101','20.00','2014-04-29',24,'2014-04-29 13:00:39','2014-04-29 13:00:39','2014-04-29','253298','2547',NULL,NULL,NULL,'mmsogo','',1),(205,'78640','Juja','Juja Market','Root Crops','','50.00','Paid','Cash','',NULL,'102','50.00','2014-04-30',13,'2014-04-30 07:28:57','2014-04-30 07:28:57','2014-04-30','test','2547',NULL,NULL,NULL,'kidando','',1),(206,'78641','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'103','20.00','2014-04-30',19,'2014-04-30 09:06:11','2014-04-30 09:06:11','2014-04-30','253299','2547',NULL,NULL,NULL,'cmaina','',1),(207,'78642','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'104','20.00','2014-04-30',19,'2014-04-30 09:07:00','2014-04-30 09:07:00','2014-04-30','253300','2547',NULL,NULL,NULL,'cmaina','',1),(208,'78643','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'105','20.00','2014-04-30',19,'2014-04-30 09:08:05','2014-04-30 09:08:05','2014-04-30','253301','2547',NULL,NULL,NULL,'cmaina','',1),(209,'78644','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'106','20.00','2014-04-30',19,'2014-04-30 09:09:18','2014-04-30 09:09:18','2014-04-30','253302','2547',NULL,NULL,NULL,'cmaina','',1),(210,'78645','Juja','Juja Market','Daily Cess','','0.00','Paid','Cash','',NULL,'107','0.00','2014-04-30',19,'2014-04-30 09:10:20','2014-04-30 09:10:20','2014-04-30','253303','2547',NULL,NULL,NULL,'cmaina','',1),(211,'78643','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'108','20.00','2014-04-30',24,'2014-04-30 09:14:13','2014-04-30 09:14:13','2014-04-30','252723','2547',NULL,NULL,NULL,'mmsogo','',1),(212,'78646','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'109','20.00','2014-04-30',19,'2014-04-30 09:14:47','2014-04-30 09:14:47','2014-04-30','253304','2547',NULL,NULL,NULL,'cmaina','',1),(213,'78644','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'110','20.00','2014-04-30',24,'2014-04-30 09:14:58','2014-04-30 09:14:58','2014-04-30','252724','2547',NULL,NULL,NULL,'mmsogo','',1),(214,'78645','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'111','20.00','2014-04-30',24,'2014-04-30 09:15:34','2014-04-30 09:15:34','2014-04-30','252725','2547',NULL,NULL,NULL,'mmsogo','',1),(215,'78647','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'112','20.00','2014-04-30',19,'2014-04-30 09:15:37','2014-04-30 09:15:37','2014-04-30','253305','2547',NULL,NULL,NULL,'cmaina','',1),(216,'78648','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'113','20.00','2014-04-30',19,'2014-04-30 09:18:36','2014-04-30 09:18:36','2014-04-30','253306','2547',NULL,NULL,NULL,'cmaina','',1),(217,'78649','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'114','20.00','2014-04-30',19,'2014-04-30 09:21:36','2014-04-30 09:21:36','2014-04-30','253307','2547',NULL,NULL,NULL,'cmaina','',1),(218,'78650','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'115','20.00','2014-04-30',19,'2014-04-30 09:22:35','2014-04-30 09:22:35','2014-04-30','253308','2547',NULL,NULL,NULL,'cmaina','',1),(219,'78651','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'116','20.00','2014-04-30',19,'2014-04-30 09:23:47','2014-04-30 09:23:47','2014-04-30','253309','2547',NULL,NULL,NULL,'cmaina','',1),(220,'78652','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'117','20.00','2014-04-30',19,'2014-04-30 09:24:47','2014-04-30 09:24:47','2014-04-30','253310','2547',NULL,NULL,NULL,'cmaina','',1),(221,'78653','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'118','20.00','2014-04-30',19,'2014-04-30 09:25:39','2014-04-30 09:25:39','2014-04-30','253311','2547',NULL,NULL,NULL,'cmaina','',1),(222,'78654','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'119','20.00','2014-04-30',19,'2014-04-30 09:26:35','2014-04-30 09:26:35','2014-04-30','253312','2547',NULL,NULL,NULL,'cmaina','',1),(223,'78655','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'120','20.00','2014-04-30',19,'2014-04-30 09:27:30','2014-04-30 09:27:30','2014-04-30','253313','2547',NULL,NULL,NULL,'cmaina','',1),(224,'78656','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'121','20.00','2014-04-30',19,'2014-04-30 09:28:21','2014-04-30 09:28:21','2014-04-30','253314','2547',NULL,NULL,NULL,'cmaina','',1),(225,'78657','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'122','20.00','2014-04-30',19,'2014-04-30 09:29:39','2014-04-30 09:29:39','2014-04-30','253315','2547',NULL,NULL,NULL,'cmaina','',1),(226,'78656','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'122','20.00','2014-04-30',24,'2014-04-30 09:29:53','2014-04-30 09:29:53','2014-04-30','252726','2547',NULL,NULL,NULL,'mmsogo','',1),(227,'78658','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'123','20.00','2014-04-30',19,'2014-04-30 09:30:30','2014-04-30 09:30:30','2014-04-30','253316','2547',NULL,NULL,NULL,'cmaina','',1),(228,'78659','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'124','20.00','2014-04-30',24,'2014-04-30 09:31:02','2014-04-30 09:31:02','2014-04-30','252727','2547',NULL,NULL,NULL,'mmsogo','',1),(229,'78659','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'124','20.00','2014-04-30',19,'2014-04-30 09:31:05','2014-04-30 09:31:05','2014-04-30','253317','2547',NULL,NULL,NULL,'cmaina','',1),(230,'78660','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'125','20.00','2014-04-30',19,'2014-04-30 09:31:58','2014-04-30 09:31:58','2014-04-30','253318','2547',NULL,NULL,NULL,'cmaina','',1),(231,'78661','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'126','20.00','2014-04-30',19,'2014-04-30 09:32:37','2014-04-30 09:32:37','2014-04-30','253319','2547',NULL,NULL,NULL,'cmaina','',1),(232,'78662','Juja','Juja Market','Daily Cess','','0.00','Paid','Cash','',NULL,'127','0.00','2014-04-30',19,'2014-04-30 09:34:40','2014-04-30 09:34:40','2014-04-30','253320','2547',NULL,NULL,NULL,'cmaina','',1),(233,'78663','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'128','20.00','2014-04-30',19,'2014-04-30 09:35:24','2014-04-30 09:35:24','2014-04-30','253321','2547',NULL,NULL,NULL,'cmaina','',1),(234,'78664','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'129','20.00','2014-04-30',19,'2014-04-30 09:36:08','2014-04-30 09:36:08','2014-04-30','253322','2547',NULL,NULL,NULL,'cmaina','',1),(235,'78665','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'130','20.00','2014-04-30',19,'2014-04-30 09:36:55','2014-04-30 09:36:55','2014-04-30','253323','2547',NULL,NULL,NULL,'cmaina','',1),(236,'78666','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'131','20.00','2014-04-30',19,'2014-04-30 09:37:53','2014-04-30 09:37:53','2014-04-30','253324','2547',NULL,NULL,NULL,'cmaina','',1),(237,'78667','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'132','20.00','2014-04-30',19,'2014-04-30 09:38:54','2014-04-30 09:38:54','2014-04-30','253325','2547',NULL,NULL,NULL,'cmaina','',1),(238,'78668','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'133','20.00','2014-04-30',19,'2014-04-30 09:39:50','2014-04-30 09:39:50','2014-04-30','253326','2547',NULL,NULL,NULL,'cmaina','',1),(239,'78669','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'134','20.00','2014-04-30',19,'2014-04-30 09:40:43','2014-04-30 09:40:43','2014-04-30','253327','2547',NULL,NULL,NULL,'cmaina','',1),(240,'78670','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'135','20.00','2014-04-30',19,'2014-04-30 09:41:35','2014-04-30 09:41:35','2014-04-30','253328','2547',NULL,NULL,NULL,'cmaina','',1),(241,'78671','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'136','20.00','2014-04-30',19,'2014-04-30 09:42:12','2014-04-30 09:42:12','2014-04-30','253329','2547',NULL,NULL,NULL,'cmaina','',1),(242,'78672','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'137','20.00','2014-04-30',19,'2014-04-30 09:43:16','2014-04-30 09:43:16','2014-04-30','253330','2547',NULL,NULL,NULL,'cmaina','',1),(243,'78673','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'138','20.00','2014-04-30',19,'2014-04-30 09:44:56','2014-04-30 09:44:56','2014-04-30','253331','2547',NULL,NULL,NULL,'cmaina','',1),(244,'78674','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'139','20.00','2014-04-30',19,'2014-04-30 09:45:38','2014-04-30 09:45:38','2014-04-30','253332','2547',NULL,NULL,NULL,'cmaina','',1),(245,'78663','Juja','Juja Market','Daily Cess','','0.00','Paid','Cash','',NULL,'140','0.00','2014-04-30',24,'2014-04-30 09:45:51','2014-04-30 09:45:51','2014-04-30','252728','2547',NULL,NULL,NULL,'mmsogo','',1),(246,'78675','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'141','20.00','2014-04-30',19,'2014-04-30 09:46:42','2014-04-30 09:46:42','2014-04-30','253333','2547',NULL,NULL,NULL,'cmaina','',1),(247,'78664','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'142','20.00','2014-04-30',24,'2014-04-30 09:47:04','2014-04-30 09:47:04','2014-04-30','252729','2547',NULL,NULL,NULL,'mmsogo','',1),(248,'78665','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'143','20.00','2014-04-30',24,'2014-04-30 09:48:07','2014-04-30 09:48:07','2014-04-30','252730','2547',NULL,NULL,NULL,'cmaina','',1),(249,'78666','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'144','20.00','2014-04-30',19,'2014-04-30 09:49:09','2014-04-30 09:49:09','2014-04-30','253335','2547',NULL,NULL,NULL,'cmaina','',1),(250,'78667','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'145','20.00','2014-04-30',19,'2014-04-30 09:50:05','2014-04-30 09:50:05','2014-04-30','253336','2547',NULL,NULL,NULL,'cmaina','',1),(251,'78667','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'146','20.00','2014-04-30',24,'2014-04-30 09:50:25','2014-04-30 09:50:25','2014-04-30','252731','2547',NULL,NULL,NULL,'mmsogo','',1),(252,'78668','Juja','Juja Market','Daily Cess','','0.00','Paid','Cash','',NULL,'147','0.00','2014-04-30',19,'2014-04-30 09:50:54','2014-04-30 09:50:54','2014-04-30','253337','2547',NULL,NULL,NULL,'cmaina','',1),(253,'78668','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'148','20.00','2014-04-30',24,'2014-04-30 09:51:18','2014-04-30 09:51:18','2014-04-30','252732','2547',NULL,NULL,NULL,'mmsogo','',1),(254,'78669','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'149','20.00','2014-04-30',19,'2014-04-30 09:51:37','2014-04-30 09:51:37','2014-04-30','253338','2547',NULL,NULL,NULL,'cmaina','',1),(255,'78669','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'150','20.00','2014-04-30',24,'2014-04-30 09:52:00','2014-04-30 09:52:00','2014-04-30','252733','2547',NULL,NULL,NULL,'mmsogo','',1),(256,'78670','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'151','20.00','2014-04-30',19,'2014-04-30 09:52:16','2014-04-30 09:52:16','2014-04-30','253339','2547',NULL,NULL,NULL,'cmaina','',1),(257,'78670','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'152','20.00','2014-04-30',24,'2014-04-30 09:53:09','2014-04-30 09:53:09','2014-04-30','252734','2547',NULL,NULL,NULL,'mmsogo','',1),(258,'78671','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'152','20.00','2014-04-30',19,'2014-04-30 09:53:15','2014-04-30 09:53:15','2014-04-30','253340','2547',NULL,NULL,NULL,'cmaina','',1),(259,'78672','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'153','20.00','2014-04-30',19,'2014-04-30 09:54:18','2014-04-30 09:54:18','2014-04-30','253341','2547',NULL,NULL,NULL,'cmaina','',1),(260,'78673','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'154','20.00','2014-04-30',19,'2014-04-30 09:55:23','2014-04-30 09:55:23','2014-04-30','253342','2547',NULL,NULL,NULL,'cmaina','',1),(261,'78674','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'155','20.00','2014-04-30',24,'2014-04-30 09:58:05','2014-04-30 09:58:05','2014-04-30','252737','2547',NULL,NULL,NULL,'mmsogo','',1),(262,'78675','Juja','Juja Market','Daily Cess','','0.00','Paid','Cash','',NULL,'156','0.00','2014-04-30',19,'2014-04-30 10:00:21','2014-04-30 10:00:21','2014-04-30','253344','2547',NULL,NULL,NULL,'mmsogo','',1),(263,'78676','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'157','20.00','2014-04-30',19,'2014-04-30 10:01:48','2014-04-30 10:01:48','2014-04-30','253345','2547',NULL,NULL,NULL,'cmaina','',1),(264,'78677','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'158','20.00','2014-04-30',19,'2014-04-30 10:03:23','2014-04-30 10:03:23','2014-04-30','253346','2547',NULL,NULL,NULL,'cmaina','',1),(265,'78678','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'159','20.00','2014-04-30',19,'2014-04-30 10:04:10','2014-04-30 10:04:10','2014-04-30','253347','2547',NULL,NULL,NULL,'cmaina','',1),(266,'78678','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'160','20.00','2014-04-30',24,'2014-04-30 10:04:52','2014-04-30 10:04:52','2014-04-30','252740','2547',NULL,NULL,NULL,'mmsogo','',1),(267,'78679','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'160','20.00','2014-04-30',19,'2014-04-30 10:04:55','2014-04-30 10:04:55','2014-04-30','253348','2547',NULL,NULL,NULL,'cmaina','',1),(268,'78680','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'161','20.00','2014-04-30',19,'2014-04-30 10:05:58','2014-04-30 10:05:58','2014-04-30','253349','2547',NULL,NULL,NULL,'cmaina','',1),(269,'78681','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'162','20.00','2014-04-30',19,'2014-04-30 10:06:39','2014-04-30 10:06:39','2014-04-30','253350','2547',NULL,NULL,NULL,'cmaina','',1),(270,'78681','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'163','20.00','2014-04-30',24,'2014-04-30 10:07:09','2014-04-30 10:07:09','2014-04-30','252741','2547',NULL,NULL,NULL,'mmsogo','',1),(271,'78682','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'164','20.00','2014-04-30',19,'2014-04-30 10:07:38','2014-04-30 10:07:38','2014-04-30','253351','2547',NULL,NULL,NULL,'cmaina','',1),(272,'78683','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'165','20.00','2014-04-30',19,'2014-04-30 10:08:45','2014-04-30 10:08:45','2014-04-30','253352','2547',NULL,NULL,NULL,'cmaina','',1),(273,'78682','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'165','20.00','2014-04-30',24,'2014-04-30 10:08:50','2014-04-30 10:08:50','2014-04-30','252742','2547',NULL,NULL,NULL,'mmsogo','',1),(274,'78683','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'166','20.00','2014-04-30',24,'2014-04-30 10:09:42','2014-04-30 10:09:42','2014-04-30','252743','2547',NULL,NULL,NULL,'cmaina','',1),(275,'78684','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'167','20.00','2014-04-30',19,'2014-04-30 10:10:52','2014-04-30 10:10:52','2014-04-30','253354','2547',NULL,NULL,NULL,'cmaina','',1),(276,'78684','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'168','20.00','2014-04-30',24,'2014-04-30 10:11:08','2014-04-30 10:11:08','2014-04-30','252744','2547',NULL,NULL,NULL,'mmsogo','',1),(277,'78685','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'169','20.00','2014-04-30',24,'2014-04-30 10:12:31','2014-04-30 10:12:31','2014-04-30','252745','2547',NULL,NULL,NULL,'mmsogo','',1),(278,'78685','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'170','20.00','2014-04-30',19,'2014-04-30 10:12:36','2014-04-30 10:12:36','2014-04-30','253355','2547',NULL,NULL,NULL,'cmaina','',1),(279,'78686','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'171','20.00','2014-04-30',19,'2014-04-30 10:13:18','2014-04-30 10:13:18','2014-04-30','253356','2547',NULL,NULL,NULL,'cmaina','',1),(280,'78686','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'172','20.00','2014-04-30',24,'2014-04-30 10:14:02','2014-04-30 10:14:02','2014-04-30','252746','2547',NULL,NULL,NULL,'mmsogo','',1),(281,'78687','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'173','20.00','2014-04-30',19,'2014-04-30 10:14:12','2014-04-30 10:14:12','2014-04-30','253357','2547',NULL,NULL,NULL,'cmaina','',1),(282,'78687','Juja','Juja Market','Daily Cess (Market Day)','','40.00','Paid','Cash','',NULL,'174','40.00','2014-04-30',24,'2014-04-30 10:14:43','2014-04-30 10:14:43','2014-04-30','252747.','2547',NULL,NULL,NULL,'mmsogo','',1),(283,'78688','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'175','20.00','2014-04-30',19,'2014-04-30 10:14:53','2014-04-30 10:14:53','2014-04-30','253358','2547',NULL,NULL,NULL,'cmaina','',1),(284,'78688','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'176','20.00','2014-04-30',24,'2014-04-30 10:15:12','2014-04-30 10:15:12','2014-04-30','252748','2547',NULL,NULL,NULL,'mmsogo','',1),(285,'78689','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'177','20.00','2014-04-30',19,'2014-04-30 10:15:30','2014-04-30 10:15:30','2014-04-30','253359','2547',NULL,NULL,NULL,'cmaina','',1),(286,'78689','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'178','20.00','2014-04-30',24,'2014-04-30 10:15:57','2014-04-30 10:15:57','2014-04-30','252749','2547',NULL,NULL,NULL,'mmsogo','',1),(287,'78690','Juja','Juja Market','Daily Cess','','0.00','Paid','Cash','',NULL,'179','0.00','2014-04-30',19,'2014-04-30 10:16:18','2014-04-30 10:16:18','2014-04-30','253360','2547',NULL,NULL,NULL,'cmaina','',1),(288,'78690','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'180','20.00','2014-04-30',24,'2014-04-30 10:16:41','2014-04-30 10:16:41','2014-04-30','252750','2547',NULL,NULL,NULL,'mmsogo','',1),(289,'78691','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'181','20.00','2014-04-30',24,'2014-04-30 10:17:30','2014-04-30 10:17:30','2014-04-30','252751','2547',NULL,NULL,NULL,'mmsogo','',1),(290,'78691','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'181','20.00','2014-04-30',19,'2014-04-30 10:17:35','2014-04-30 10:17:35','2014-04-30','253361','2547',NULL,NULL,NULL,'cmaina','',1),(291,'78692','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'182','20.00','2014-04-30',24,'2014-04-30 10:18:23','2014-04-30 10:18:23','2014-04-30','252752','2547',NULL,NULL,NULL,'mmsogo','',1),(292,'78692','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'183','20.00','2014-04-30',19,'2014-04-30 10:18:48','2014-04-30 10:18:48','2014-04-30','253362','2547',NULL,NULL,NULL,'cmaina','',1),(293,'78693','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'184','20.00','2014-04-30',19,'2014-04-30 10:19:25','2014-04-30 10:19:25','2014-04-30','253363','2547',NULL,NULL,NULL,'cmaina','',1),(294,'78693','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'185','20.00','2014-04-30',24,'2014-04-30 10:19:51','2014-04-30 10:19:51','2014-04-30','252754','2547',NULL,NULL,NULL,'mmsogo','',1),(295,'78694','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'186','20.00','2014-04-30',19,'2014-04-30 10:21:06','2014-04-30 10:21:06','2014-04-30','253364','2547',NULL,NULL,NULL,'cmaina','',1),(296,'78695','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'187','20.00','2014-04-30',19,'2014-04-30 10:22:35','2014-04-30 10:22:35','2014-04-30','253365','2547',NULL,NULL,NULL,'cmaina','',1),(297,'78696','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'188','20.00','2014-04-30',19,'2014-04-30 10:23:22','2014-04-30 10:23:22','2014-04-30','253366','2547',NULL,NULL,NULL,'cmaina','',1),(298,'78697','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'189','20.00','2014-04-30',19,'2014-04-30 10:24:11','2014-04-30 10:24:11','2014-04-30','253367','2547',NULL,NULL,NULL,'cmaina','',1),(299,'78698','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'190','20.00','2014-04-30',19,'2014-04-30 10:25:26','2014-04-30 10:25:26','2014-04-30','253368','2547',NULL,NULL,NULL,'cmaina','',1),(300,'78699','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'191','20.00','2014-04-30',19,'2014-04-30 10:26:03','2014-04-30 10:26:03','2014-04-30','253369','2547',NULL,NULL,NULL,'cmaina','',1),(301,'78700','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'192','20.00','2014-04-30',19,'2014-04-30 10:26:46','2014-04-30 10:26:46','2014-04-30','253370','2547',NULL,NULL,NULL,'cmaina','',1),(302,'78700','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'193','20.00','2014-04-30',24,'2014-04-30 10:27:28','2014-04-30 10:27:28','2014-04-30','252759','2547',NULL,NULL,NULL,'mmsogo','',1),(303,'78701','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'193','20.00','2014-04-30',19,'2014-04-30 10:27:31','2014-04-30 10:27:31','2014-04-30','253371','2547',NULL,NULL,NULL,'cmaina','',1),(304,'78702','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'194','20.00','2014-04-30',24,'2014-04-30 10:28:14','2014-04-30 10:28:14','2014-04-30','252760','2547',NULL,NULL,NULL,'mmsogo','',1),(305,'78702','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'195','20.00','2014-04-30',19,'2014-04-30 10:28:42','2014-04-30 10:28:42','2014-04-30','253372','2547',NULL,NULL,NULL,'cmaina','',1),(306,'78703','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'196','20.00','2014-04-30',24,'2014-04-30 10:28:57','2014-04-30 10:28:57','2014-04-30','252761','2547',NULL,NULL,NULL,'mmsogo','',1),(307,'78703','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'197','20.00','2014-04-30',19,'2014-04-30 10:29:26','2014-04-30 10:29:26','2014-04-30','253373','2547',NULL,NULL,NULL,'cmaina','',1),(308,'78704','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'198','20.00','2014-04-30',24,'2014-04-30 10:29:49','2014-04-30 10:29:49','2014-04-30','252762','2547',NULL,NULL,NULL,'mmsogo','',1),(309,'78704','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'199','20.00','2014-04-30',19,'2014-04-30 10:30:39','2014-04-30 10:30:39','2014-04-30','253374','2547',NULL,NULL,NULL,'cmaina','',1),(310,'78705','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'200','20.00','2014-04-30',24,'2014-04-30 10:30:59','2014-04-30 10:30:59','2014-04-30','252763','2547',NULL,NULL,NULL,'mmsogo','',1),(311,'78706','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'201','20.00','2014-04-30',24,'2014-04-30 10:31:46','2014-04-30 10:31:46','2014-04-30','252764','2547',NULL,NULL,NULL,'mmsogo','',1),(312,'78707','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'202','20.00','2014-04-30',24,'2014-04-30 10:32:47','2014-04-30 10:32:47','2014-04-30','252765','2547',NULL,NULL,NULL,'mmsogo','',1),(313,'78708','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'203','20.00','2014-04-30',24,'2014-04-30 10:34:14','2014-04-30 10:34:14','2014-04-30','252767','2547',NULL,NULL,NULL,'mmsogo','',1),(314,'78709','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'204','20.00','2014-04-30',24,'2014-04-30 10:34:53','2014-04-30 10:34:53','2014-04-30','252768','2547',NULL,NULL,NULL,'mmsogo','',1),(315,'78710','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'205','20.00','2014-04-30',24,'2014-04-30 10:36:19','2014-04-30 10:36:19','2014-04-30','252770','2547',NULL,NULL,NULL,'mmsogo','',1),(316,'78709','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'206','20.00','2014-04-30',19,'2014-04-30 10:36:49','2014-04-30 10:36:49','2014-04-30','253376','2547',NULL,NULL,NULL,'cmaina','',1),(317,'78711','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'207','20.00','2014-04-30',24,'2014-04-30 10:37:01','2014-04-30 10:37:01','2014-04-30','252771','2547',NULL,NULL,NULL,'mmsogo','',1),(318,'78710','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'208','20.00','2014-04-30',19,'2014-04-30 10:37:40','2014-04-30 10:37:40','2014-04-30','253377','2547',NULL,NULL,NULL,'cmaina','',1),(319,'78711','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'209','20.00','2014-04-30',19,'2014-04-30 10:39:06','2014-04-30 10:39:06','2014-04-30','253378','2547',NULL,NULL,NULL,'cmaina','',1),(320,'78711','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'210','20.00','2014-04-30',24,'2014-04-30 10:39:22','2014-04-30 10:39:22','2014-04-30','252772','2547',NULL,NULL,NULL,'mmsogo','',1),(321,'78712','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'211','20.00','2014-04-30',19,'2014-04-30 10:40:02','2014-04-30 10:40:02','2014-04-30','253379','2547',NULL,NULL,NULL,'cmaina','',1),(322,'78713','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'212','20.00','2014-04-30',19,'2014-04-30 10:41:04','2014-04-30 10:41:04','2014-04-30','253380','2547',NULL,NULL,NULL,'cmaina','',1),(323,'78713','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'213','20.00','2014-04-30',24,'2014-04-30 10:41:13','2014-04-30 10:41:13','2014-04-30','252736','2547',NULL,NULL,NULL,'mmsogo','',1),(324,'78714','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'214','20.00','2014-04-30',19,'2014-04-30 10:41:55','2014-04-30 10:41:55','2014-04-30','253381','2547',NULL,NULL,NULL,'cmaina','',1),(325,'78715','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'215','20.00','2014-04-30',19,'2014-04-30 10:42:37','2014-04-30 10:42:37','2014-04-30','253382','2547',NULL,NULL,NULL,'cmaina','',1),(326,'78716','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'216','20.00','2014-04-30',19,'2014-04-30 10:43:27','2014-04-30 10:43:27','2014-04-30','253383','2547',NULL,NULL,NULL,'cmaina','',1),(327,'78717','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'217','20.00','2014-04-30',19,'2014-04-30 10:44:38','2014-04-30 10:44:38','2014-04-30','253384','2547',NULL,NULL,NULL,'cmaina','',1),(328,'78718','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'218','20.00','2014-04-30',19,'2014-04-30 10:52:49','2014-04-30 10:52:49','2014-04-30','test transaction ','2547',NULL,NULL,NULL,'cmaina','',1),(329,'78718','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'219','20.00','2014-04-30',24,'2014-04-30 10:53:31','2014-04-30 10:53:31','2014-04-30','252735','2547',NULL,NULL,NULL,'mmsogo','',1),(330,'78719','Juja','Juja Market','Eggs per Tray','','30.00','Paid','Cash','',NULL,'220','30.00','2014-04-30',24,'2014-04-30 10:55:02','2014-04-30 10:55:02','2014-04-30','252739','2547',NULL,NULL,NULL,'mmsogo','',1),(331,'78720','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'221','20.00','2014-04-30',24,'2014-04-30 10:55:48','2014-04-30 10:55:48','2014-04-30','2527753','2547',NULL,NULL,NULL,'mmsogo','',1),(332,'78721','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'222','20.00','2014-04-30',24,'2014-04-30 10:57:09','2014-04-30 10:57:09','2014-04-30','252755','2547',NULL,NULL,NULL,'mmsogo','',1),(333,'78722','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'223','20.00','2014-04-30',24,'2014-04-30 10:59:57','2014-04-30 10:59:57','2014-04-30','252756','2547',NULL,NULL,NULL,'mmsogo','',1),(334,'78723','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'224','20.00','2014-04-30',24,'2014-04-30 11:01:03','2014-04-30 11:01:03','2014-04-30','252757','2547',NULL,NULL,NULL,'mmsogo','',1),(335,'78724','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'225','20.00','2014-04-30',24,'2014-04-30 11:01:45','2014-04-30 11:01:45','2014-04-30','252758','2547',NULL,NULL,NULL,'mmsogo','',1),(336,'78724','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'226','20.00','2014-04-30',19,'2014-04-30 11:02:35','2014-04-30 11:02:35','2014-04-30','253343','2547',NULL,NULL,NULL,'cmaina','',1),(337,'78725','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'227','20.00','2014-04-30',24,'2014-04-30 11:02:42','2014-04-30 11:02:42','2014-04-30','252766','2547',NULL,NULL,NULL,'mmsogo','',1),(338,'78726','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'228','20.00','2014-04-30',19,'2014-04-30 11:03:11','2014-04-30 11:03:11','2014-04-30','253353','2547',NULL,NULL,NULL,'cmaina','',1),(339,'78726','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'229','20.00','2014-04-30',24,'2014-04-30 11:03:23','2014-04-30 11:03:23','2014-04-30','252769','2547',NULL,NULL,NULL,'mmsogo','',1),(340,'78727','Juja','Juja Market','Daily Cess','','0.00','Paid','Cash','',NULL,'230','0.00','2014-04-30',19,'2014-04-30 11:03:50','2014-04-30 11:03:50','2014-04-30','253375','2547',NULL,NULL,NULL,'cmaina','',1),(341,'78728','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'231','20.00','2014-04-30',19,'2014-04-30 11:04:47','2014-04-30 11:04:47','2014-04-30','253252','2547',NULL,NULL,NULL,'cmaina','',1),(342,'78729','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'232','20.00','2014-05-01',24,'2014-05-01 09:00:18','2014-05-01 09:00:18','2014-05-01','12345','2547',NULL,NULL,NULL,'mmsogo','',1),(343,'78730','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'233','20.00','2014-05-02',20,'2014-05-02 11:16:48','2014-05-02 11:16:48','2014-05-02','252401','2547',NULL,NULL,NULL,'mwangari','',1),(344,'78731','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'234','20.00','2014-05-02',20,'2014-05-02 12:28:55','2014-05-02 12:28:55','2014-05-02','253401','2547',NULL,NULL,NULL,'mwangari','',1),(345,'78732','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'235','20.00','2014-05-02',20,'2014-05-02 12:29:49','2014-05-02 12:29:49','2014-05-02','253402','2547',NULL,NULL,NULL,'mwangari','',1),(346,'78733','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'236','20.00','2014-05-02',20,'2014-05-02 12:31:01','2014-05-02 12:31:01','2014-05-02','253403','2547',NULL,NULL,NULL,'mwangari','',1),(347,'78734','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'237','20.00','2014-05-02',20,'2014-05-02 12:32:33','2014-05-02 12:32:33','2014-05-02','253404','2547',NULL,NULL,NULL,'mwangari','',1),(348,'78735','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'238','20.00','2014-05-02',20,'2014-05-02 12:34:04','2014-05-02 12:34:04','2014-05-02','253405','2547',NULL,NULL,NULL,'mwangari','',1),(349,'78736','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'239','20.00','2014-05-02',20,'2014-05-02 12:35:30','2014-05-02 12:35:30','2014-05-02','253406','2547',NULL,NULL,NULL,'mwangari','',1),(350,'78737','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'240','20.00','2014-05-02',20,'2014-05-02 12:36:15','2014-05-02 12:36:15','2014-05-02','253407','2547',NULL,NULL,NULL,'mwangari','',1),(351,'78738','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'241','20.00','2014-05-02',20,'2014-05-02 12:37:04','2014-05-02 12:37:04','2014-05-02','253408','2547',NULL,NULL,NULL,'mwangari','',1),(352,'78739','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'242','20.00','2014-05-02',20,'2014-05-02 12:37:41','2014-05-02 12:37:41','2014-05-02','253409','2547',NULL,NULL,NULL,'mwangari','',1),(353,'78740','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'243','20.00','2014-05-02',20,'2014-05-02 12:38:38','2014-05-02 12:38:38','2014-05-02','253410','2547',NULL,NULL,NULL,'mwangari','',1),(354,'78741','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'244','20.00','2014-05-02',20,'2014-05-02 12:39:21','2014-05-02 12:39:21','2014-05-02','253411','2547',NULL,NULL,NULL,'mwangari','',1),(355,'78742','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'245','20.00','2014-05-02',20,'2014-05-02 12:40:25','2014-05-02 12:40:25','2014-05-02','253412','2547',NULL,NULL,NULL,'mwangari','',1),(356,'78743','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'246','20.00','2014-05-02',20,'2014-05-02 12:41:04','2014-05-02 12:41:04','2014-05-02','253413','2547',NULL,NULL,NULL,'mwangari','',1),(357,'78744','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'247','20.00','2014-05-02',20,'2014-05-02 12:41:47','2014-05-02 12:41:47','2014-05-02','253414','2547',NULL,NULL,NULL,'mwangari','',1),(358,'78745','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'248','20.00','2014-05-02',20,'2014-05-02 12:42:34','2014-05-02 12:42:34','2014-05-02','253415','2547',NULL,NULL,NULL,'mwangari','',1),(359,'78746','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'249','20.00','2014-05-02',20,'2014-05-02 12:43:49','2014-05-02 12:43:49','2014-05-02','253416','2547',NULL,NULL,NULL,'mwangari','',1),(360,'78747','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'250','20.00','2014-05-02',20,'2014-05-02 12:44:22','2014-05-02 12:44:22','2014-05-02','253417','2547',NULL,NULL,NULL,'mwangari','',1),(361,'78748','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'251','20.00','2014-05-02',20,'2014-05-02 12:45:09','2014-05-02 12:45:09','2014-05-02','253418','2547',NULL,NULL,NULL,'mwangari','',1),(362,'78749','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'252','20.00','2014-05-02',20,'2014-05-02 12:45:54','2014-05-02 12:45:54','2014-05-02','253419','2547',NULL,NULL,NULL,'mwangari','',1),(363,'78750','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'253','20.00','2014-05-02',20,'2014-05-02 12:47:07','2014-05-02 12:47:07','2014-05-02','253420','2547',NULL,NULL,NULL,'mwangari','',1),(364,'78751','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'254','20.00','2014-05-02',20,'2014-05-02 12:47:52','2014-05-02 12:47:52','2014-05-02','253421','2547',NULL,NULL,NULL,'mwangari','',1),(365,'78752','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'255','20.00','2014-05-02',20,'2014-05-02 12:50:00','2014-05-02 12:50:00','2014-05-02','253422','2547',NULL,NULL,NULL,'mwangari','',1),(366,'78753','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'256','20.00','2014-05-02',20,'2014-05-02 12:50:49','2014-05-02 12:50:49','2014-05-02','253423','2547',NULL,NULL,NULL,'mwangari','',1),(367,'78754','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'257','20.00','2014-05-02',20,'2014-05-02 12:51:46','2014-05-02 12:51:46','2014-05-02','253424','2547',NULL,NULL,NULL,'mwangari','',1),(368,'78755','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'258','20.00','2014-05-02',20,'2014-05-02 12:52:27','2014-05-02 12:52:27','2014-05-02','253425','2547',NULL,NULL,NULL,'mwangari','',1),(369,'78756','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'259','20.00','2014-05-02',20,'2014-05-02 12:53:02','2014-05-02 12:53:02','2014-05-02','253427','2547',NULL,NULL,NULL,'mwangari','',1),(370,'78757','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'260','20.00','2014-05-02',20,'2014-05-02 12:53:55','2014-05-02 12:53:55','2014-05-02','253428','2547',NULL,NULL,NULL,'mwangari','',1),(371,'78758','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'261','20.00','2014-05-02',20,'2014-05-02 12:55:01','2014-05-02 12:55:01','2014-05-02','253429','2547',NULL,NULL,NULL,'mwangari','',1),(372,'78759','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'262','20.00','2014-05-02',20,'2014-05-02 12:56:24','2014-05-02 12:56:24','2014-05-02','253430','2547',NULL,NULL,NULL,'mwangari','',1),(373,'78760','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'263','20.00','2014-05-02',20,'2014-05-02 12:57:10','2014-05-02 12:57:10','2014-05-02','253431','2547',NULL,NULL,NULL,'mwangari','',1),(374,'78761','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'264','20.00','2014-05-02',20,'2014-05-02 12:59:11','2014-05-02 12:59:11','2014-05-02','253432','2547',NULL,NULL,NULL,'mwangari','',1),(375,'78762','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'265','20.00','2014-05-02',20,'2014-05-02 12:59:45','2014-05-02 12:59:45','2014-05-02','253433','2547',NULL,NULL,NULL,'mwangari','',1),(376,'78763','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'266','20.00','2014-05-02',20,'2014-05-02 13:00:26','2014-05-02 13:00:26','2014-05-02','253434','2547',NULL,NULL,NULL,'mwangari','',1),(377,'78764','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'267','20.00','2014-05-02',20,'2014-05-02 13:01:25','2014-05-02 13:01:25','2014-05-02','253435','2547',NULL,NULL,NULL,'mwangari','',1),(378,'78765','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'268','20.00','2014-05-02',20,'2014-05-02 13:03:41','2014-05-02 13:03:41','2014-05-02','253436','2547',NULL,NULL,NULL,'mwangari','',1),(379,'78766','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'269','20.00','2014-05-02',20,'2014-05-02 13:04:40','2014-05-02 13:04:40','2014-05-02','253426','2547',NULL,NULL,NULL,'mwangari','',1),(380,'78767','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'270','20.00','2014-05-02',20,'2014-05-02 13:05:09','2014-05-02 13:05:09','2014-05-02','253437','2547',NULL,NULL,NULL,'mwangari','',1),(381,'78768','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'271','20.00','2014-05-03',24,'2014-05-03 22:36:13','2014-05-03 22:36:13','2014-05-03','12358p','2547',NULL,NULL,NULL,'mmsogo','',1),(382,'78769','Juja','Juja Market','Grains','','50.00','Paid','Cash','',NULL,'272','50.00','2014-05-05',13,'2014-05-05 06:48:24','2014-05-05 06:48:24','2014-05-05','Digital Receipt','2547',NULL,NULL,NULL,'kidando','',1),(383,'78770','Juja','Juja Market','Charcoal per bag','','100.00','Paid','Cash','',NULL,'273','100.00','2014-05-05',13,'2014-05-05 06:51:12','2014-05-05 06:51:12','2014-05-05','Digital Receipt','2547',NULL,NULL,NULL,'kidando','',2),(384,'78771','Juja','Juja Market','Hand Made Jiko','','60.00','Paid','Cash','',NULL,'274','60.00','2014-05-05',13,'2014-05-05 07:02:01','2014-05-05 07:02:01','2014-05-05','Digital Receipt','2547',NULL,NULL,NULL,'kidando','',2),(385,'78772','Juja','Juja Market','Daily Cess (Market Day)','','40.00','Paid','Cash','',NULL,'275','40.00','2014-05-05',13,'2014-05-05 08:13:51','2014-05-05 08:13:51','2014-05-05','Digital Receipt','2547',NULL,NULL,NULL,'kidando','',1),(386,'78773','Juja','Juja Market','Clay Pots','','60.00','Paid','Cash','',NULL,'276','60.00','2014-05-05',18,'2014-05-05 08:32:56','2014-05-05 08:32:56','2014-05-05','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',2),(387,'78774','Juja','Juja Market','Daily Cess (Market Day)','','40.00','Paid','Cash','',NULL,'277','40.00','2014-05-05',18,'2014-05-05 08:51:10','2014-05-05 08:51:10','2014-05-05','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(388,'78775','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'278','300.00','2014-05-06',18,'2014-05-06 14:14:09','2014-05-06 14:14:09','2014-05-06','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(389,'78775','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'278','300.00','2014-05-06',18,'2014-05-06 14:30:15','2014-05-06 14:30:15','2014-05-06','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(390,'78776','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'279','300.00','2014-05-06',18,'2014-05-06 14:31:01','2014-05-06 14:31:01','2014-05-06','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(391,'78777','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'280','300.00','2014-05-06',18,'2014-05-06 16:13:07','2014-05-06 16:13:07','2014-05-06','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(392,'78778','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'281','300.00','2014-05-07',18,'2014-05-07 07:18:38','2014-05-07 07:18:38','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(393,'78779','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'282','300.00','2014-05-07',18,'2014-05-07 07:27:47','2014-05-07 07:27:47','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(394,'78780','Juja','Juja Market','Eggs per Tray','','30.00','Paid','Cash','',NULL,'283','30.00','2014-05-07',18,'2014-05-07 08:19:21','2014-05-07 08:19:21','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(395,'78781','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'284','300.00','2014-05-07',18,'2014-05-07 08:22:13','2014-05-07 08:22:13','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(396,'78782','Juja','Juja Market','Cattle or Cow','','100.00','Paid','Cash','',NULL,'285','100.00','2014-05-07',18,'2014-05-07 08:26:09','2014-05-07 08:26:09','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(397,'78782','Juja','Juja Market','Cattle or Cow','','100.00','Paid','Cash','',NULL,'285','100.00','2014-05-07',18,'2014-05-07 08:26:09','2014-05-07 08:26:09','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(398,'78782','Juja','Juja Market','Cattle or Cow','','100.00','Paid','Cash','',NULL,'285','100.00','2014-05-07',18,'2014-05-07 08:26:11','2014-05-07 08:26:11','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(399,'78782','Juja','Juja Market','Cattle or Cow','','100.00','Paid','Cash','',NULL,'285','100.00','2014-05-07',18,'2014-05-07 08:26:13','2014-05-07 08:26:13','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(400,'78783','Juja','Juja Market','Sugarcane per load','','30.00','Paid','Cash','',NULL,'286','30.00','2014-05-07',18,'2014-05-07 08:27:02','2014-05-07 08:27:02','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(401,'78784','Juja','Juja Market','Chicken or Duck','','10.00','Paid','Cash','',NULL,'287','10.00','2014-05-07',18,'2014-05-07 11:03:05','2014-05-07 11:03:05','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(402,'78785','Juja','Juja Market','Eggs per Tray','','600.00','Paid','Cash','',NULL,'288','600.00','2014-05-07',18,'2014-05-07 14:39:02','2014-05-07 14:39:02','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',20),(403,'78786','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'289','300.00','2014-05-07',18,'2014-05-07 14:39:30','2014-05-07 14:39:30','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(404,'78787','Juja','Juja Market','Canter','','300.00','Paid','Cash','',NULL,'290','300.00','2014-05-07',18,'2014-05-07 14:40:38','2014-05-07 14:40:38','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(405,'78788','Juja','Juja Market','Daily Cess (Market Day)','','40.00','Paid','Cash','',NULL,'291','40.00','2014-05-07',18,'2014-05-07 15:50:35','2014-05-07 15:50:35','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(406,'78789','Juja','Juja Market','Hand Made Jiko','','300.00','Paid','Cash','',NULL,'292','300.00','2014-05-07',18,'2014-05-07 15:51:04','2014-05-07 15:51:04','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',10),(407,'78790','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'293','20.00','2014-05-07',18,'2014-05-07 15:51:44','2014-05-07 15:51:44','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(408,'78791','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'294','20.00','2014-05-07',18,'2014-05-07 15:52:58','2014-05-07 15:52:58','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(409,'78792','Juja','Juja Market','Daily Cess','','20.00','Paid','Cash','',NULL,'295','20.00','2014-05-07',18,'2014-05-07 15:53:35','2014-05-07 15:53:35','2014-05-07','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1),(410,'78793','Juja','Juja Market','Lorry','','500.00','Paid','Cash','',NULL,'296','500.00','2014-05-08',18,'2014-05-08 10:13:10','2014-05-08 10:13:10','2014-05-08','Digital Receipt','2547',NULL,NULL,NULL,'clerk1','',1);

/*Table structure for table `stores` */

DROP TABLE IF EXISTS `stores`;

CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stores` */

/*Table structure for table `subcategories` */

DROP TABLE IF EXISTS `subcategories`;

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `category_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Data for the table `subcategories` */

insert  into `subcategories`(`id`,`name`,`description`,`category_id`,`created`,`modified`) values (58,'Juja Market','Juja Market',22,'2014-04-26 13:04:14','2014-04-26 13:04:14'),(59,'Murera Market','Murera Market',22,'2014-04-26 13:04:41','2014-04-26 13:04:41');

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `user_logs` */

insert  into `user_logs`(`id`,`username`,`user_id`,`log_time`,`log_ipaddress`,`log_browser`,`city`,`country`,`latitude`,`longitude`) values (1,'admin@admin.com',2,'2014-04-23 16:05:16','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(2,'kaguius@gmail.com',1,'2014-04-23 16:05:52','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(3,'kaguius@gmail.com',1,'2014-04-23 16:27:43','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(4,'kaguius@gmail.com',1,'2014-04-24 10:08:13','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(5,'kaguius@gmail.com',1,'2014-04-24 14:41:33','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(6,'kaguius@gmail.com',1,'2014-04-24 19:01:18','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0','','','',''),(7,'kaguius@gmail.com',1,'2014-05-13 11:50:16','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(8,'kaguius@gmail.com',41,'2014-05-13 12:02:04','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(9,'kaguius@gmail.com',41,'2014-05-13 12:05:34','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(10,'kaguius@gmail.com',41,'2014-05-13 12:43:17','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(11,'kaguius@gmail.com',41,'2014-05-13 16:38:22','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(12,'kaguius@gmail.com',41,'2014-05-13 18:23:00','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(13,'kaguius@gmail.com',41,'2014-05-14 17:55:21','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(14,'kaguius@gmail.com',41,'2014-05-14 18:47:39','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(15,'kaguius@gmail.com',41,'2014-05-15 09:57:10','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(16,'kaguius@gmail.com',41,'2014-05-15 11:05:36','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(17,'kaguius@gmail.com',41,'2014-05-15 13:06:57','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(18,'kaguius@gmail.com',41,'2014-05-15 14:06:19','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(19,'kaguius@gmail.com',41,'2014-05-15 14:50:54','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(20,'kaguius@gmail.com',41,'2014-05-16 12:03:00','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','',''),(21,'kaguius@gmail.com',41,'2014-05-16 12:50:56','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:29.0) Gecko/20100101 Firefox/29.0','','','','');

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

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `store` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`fname`,`lname`,`username`,`name`,`password`,`email`,`mobile`,`store_id`,`role`,`created`,`modified`,`store`,`category_id`,`subcategory_id`) values (6,'Mr','Administrator','admin',NULL,'f901a8883f48798ea2bc7ab0dfe9472eed71c2e2','admin@chapaa.com','254701123456',NULL,'admin','2013-10-04 07:31:57','2013-10-04 07:31:57','Buru Buru',NULL,NULL),(13,'Leon','Oscar','kidando',NULL,'92c48ab3f1862b309ddf68fb5c93f0a45df11082','okidando@virtualcity.co.ke','254703504048',NULL,'clerk','2014-04-26 13:14:54','2014-04-28 07:17:14',NULL,22,58),(14,'Testa','Rosta','testarosta',NULL,'f901a8883f48798ea2bc7ab0dfe9472eed71c2e2','ts@gmail.com','254789632145',NULL,'clerk','2014-04-28 07:18:57','2014-04-28 07:18:57',NULL,22,58),(15,'Felister','Muchiri','fmuchiri',NULL,'171b00ae12d6852f25c879b4bfc2a9e27adc0205','fmuchir@juja.co.ke','254722332808',NULL,'supervisor','2014-04-28 07:21:22','2014-04-28 07:21:22',NULL,22,58),(16,'George','Njoroge','gnjoroge',NULL,'5047d33e8ad16b32928b57408377efa25c5f2b03','gnjoroge@juja.co.ke','254720846733',NULL,'supervisor','2014-04-28 07:22:23','2014-04-28 07:22:23',NULL,22,58),(17,'Mr','Merchant','merchant1',NULL,'4e5832733b8f169168ccbb0cf307a10b7c3e632f','merchant@juja.co.ke','254725963369',NULL,'merchant','2014-04-28 09:14:09','2014-04-28 09:14:09',NULL,22,58),(18,'Mr','Intern','clerk1',NULL,'4e5832733b8f169168ccbb0cf307a10b7c3e632f','intern@juja.co.ke','254796321456',NULL,'clerk','2014-04-28 09:59:39','2014-04-28 09:59:39',NULL,22,58),(19,'Caroline','Maina','cmaina',NULL,'21cc3a6e18c2620b7487ee78ccee35fd256540ff','cmaina@juja.co.ke','254703698521',NULL,'clerk','2014-04-29 11:24:44','2014-04-29 11:24:44',NULL,22,58),(20,'Maria','Wangari','mwangari',NULL,'8e2991180a685147f910544fd9d19dafc4c11da9','mwangari@juja.co.ke','254724973727',NULL,'clerk','2014-04-29 11:25:56','2014-04-29 11:25:56',NULL,22,58),(21,'Jane','Kibugi','jkibugi',NULL,'8a2f3eb1572d7d288333681a3d467aa8c141558b','jkibugi@juja.co.ke','254721626534',NULL,'clerk','2014-04-29 11:32:51','2014-04-29 11:32:51',NULL,22,58),(22,'Karim','Karanja','kkaranja',NULL,'e2f6eda9031f594d2f1b6d26f329c9cb0c6889c7','kkaranja@juja.co.ke','254725111505',NULL,'clerk','2014-04-29 11:34:51','2014-04-29 11:34:51',NULL,22,58),(23,'Jecinta','Wangunya','jwangunya',NULL,'5b44b9bc4ba2a4fa7bd2808ecc0c4bd077eec37e','jwangunya@juju.co.ke','254720270975',NULL,'clerk','2014-04-29 11:39:20','2014-04-29 11:39:20',NULL,22,58),(24,'Millicen','Msogo','mmsogo',NULL,'cd8aac0aebb76be7c63bff09a715265171e802cc','mmsogo@juju.co.ke','254726968003',NULL,'clerk','2014-04-29 11:41:45','2014-04-29 11:41:45',NULL,22,58),(25,'Michael','Chege','mchege',NULL,'71fabd51ccc0be5a1b5fd473789427db33405b1d','mchege@juja.co.ke','254720779902',NULL,'clerk','2014-04-29 11:42:50','2014-04-29 11:42:50',NULL,22,58),(26,'John','Wambey','jwambey',NULL,'6118b6155e74bb17925b027fce752e82463b7382','jwambey@juja.co.ke','254722168342',NULL,'clerk','2014-04-29 11:43:33','2014-04-29 11:43:33',NULL,22,58),(27,'Christopher','Maina','chrismaina',NULL,'4d01f5a01e14936989e275cf5fa015d116ebb075','chrismaina@juja.co.ke','254723436973',NULL,'clerk','2014-04-29 11:44:45','2014-04-29 11:44:45',NULL,22,58),(28,'Eddah','Wanjiku','ewanjiku',NULL,'425317e9e27b04c1263d4ccb03ee95b4cdb7d7da','ewanjiku@juja.co.ke','254712726972',NULL,'clerk','2014-04-29 11:45:30','2014-04-29 11:45:30',NULL,22,58),(29,'Alice','Nduta','anduta',NULL,'de3d2d5147dd81853463e6858dca850b9260695d','anduta@juja.co.ke','254723739744',NULL,'clerk','2014-04-29 11:46:11','2014-04-29 11:46:11',NULL,22,58),(30,'Kina','Willingshor','kwillingshor',NULL,'db1dda9ed72547ae19ce9736bbad98ca5862559d','kwillingshor@juja.co.ke','254722709580',NULL,'clerk','2014-04-29 11:47:12','2014-04-29 11:47:12',NULL,22,58),(31,'Mary','Njiraini','mnjiraini',NULL,'1a790d3e6b91b74d1474e8674a5b2b2e4b81244f','mnjiraini@juja.co.ke','254722437616',NULL,'clerk','2014-04-29 11:47:53','2014-04-29 11:47:53',NULL,22,58),(32,'Jacinta','Kiarii','jkiarii',NULL,'b113e17d96eeb32a51c81fb9cbfe54f2695145b0','jkiarii@juja.co.ke','254724673192',NULL,'clerk','2014-04-29 11:48:40','2014-04-29 11:48:40',NULL,22,58),(33,'Phylus','Nduati','pnduati',NULL,'c4c39cc4deb72213222d424eae901359846f1af3','pnduati@juja.co.ke','254726386829',NULL,'clerk','2014-04-29 11:52:36','2014-04-29 11:52:36',NULL,22,58),(34,'Maria','Wangari','mwangari',NULL,'8e2991180a685147f910544fd9d19dafc4c11da9','mwangari@juja.co.ke','254724973727',NULL,'clerk','2014-04-29 11:53:28','2014-04-29 11:53:28',NULL,22,58),(35,'Jane','Muthoni','jmuthoni',NULL,'b867aa7c4ec4c89668d00049759c2cecbe445833','jmuthoni@juja.co.ke','254723785252',NULL,'clerk','2014-04-29 11:54:24','2014-04-29 11:54:24',NULL,22,58),(36,'Daniel','Njogu','dnjogu',NULL,'1cb59374e38157cec36f3544bee353dcc50a7385','dnjogu@juja.co.ke','254727796239',NULL,'clerk','2014-04-29 11:55:09','2014-04-29 11:55:09',NULL,22,58),(37,'Mary','Wambui','mwambui',NULL,'26bbe03b31f347e8db3bc2a0706c3f0614e035a6','mwambui@juja.co.ke','254723820399',NULL,'clerk','2014-04-29 11:55:52','2014-04-29 11:55:52',NULL,22,58),(38,'Leah','Waceke','lwaceke',NULL,'5e7cc7960779cfd094c05ef3a3cf9d3bfa663bdd','lwaceke@juja.co.ke','254735706309',NULL,'clerk','2014-04-29 11:56:45','2014-04-29 11:56:45',NULL,22,58),(39,'Mary','Makau','mmakau',NULL,'4111697dc5b5f022e730c6af6c43c1eb7d0f5a8d','mmakau@juja.co.ke','254725662360',NULL,'clerk','2014-04-29 11:58:43','2014-04-29 11:58:43',NULL,22,58),(40,'Felistus','Wamaitha','fwamaitha',NULL,'b235858eb61b6470efe4c077959b12c2d26c5792','fwamaitha@juja.co.ke','254721448312',NULL,'clerk','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(41,'Andrew','Kibe','kaguius',NULL,'3f1f22537f11f5fa990c95fe123a946c','kaguius@gmail.com','254704469814',NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58);

/*Table structure for table `users_failed_logs` */

DROP TABLE IF EXISTS `users_failed_logs`;

CREATE TABLE `users_failed_logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(70) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `ipaddress` varchar(15) DEFAULT NULL,
  `tranasctiontime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `users_failed_logs` */

insert  into `users_failed_logs`(`id`,`email_address`,`password`,`ipaddress`,`tranasctiontime`) values (1,'kaguius@gmail.com','48Kaguius92%','127.0.0.1','2014-05-13 11:58:37'),(2,'kaguius@gmail.com','48Kaguius92%','127.0.0.1','2014-05-13 11:59:41'),(3,'kaguius@gmail.com','48Kaguius92%','127.0.0.1','2014-05-13 12:00:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
