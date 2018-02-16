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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`fname`,`lname`,`username`,`name`,`password`,`email`,`mobile`,`store_id`,`role`,`created`,`modified`,`store`,`category_id`,`subcategory_id`) values (6,'Mr','Administrator','admin',NULL,'f901a8883f48798ea2bc7ab0dfe9472eed71c2e2','admin@chapaa.com','254701123456',NULL,'admin','2013-10-04 07:31:57','2013-10-04 07:31:57','Buru Buru',NULL,NULL),(13,'Leon','Oscar','kidando',NULL,'92c48ab3f1862b309ddf68fb5c93f0a45df11082','okidando@virtualcity.co.ke','254703504048',NULL,'clerk','2014-04-26 13:14:54','2014-04-28 07:17:14',NULL,22,58),(14,'Testa','Rosta','testarosta',NULL,'f901a8883f48798ea2bc7ab0dfe9472eed71c2e2','ts@gmail.com','254789632145',NULL,'clerk','2014-04-28 07:18:57','2014-04-28 07:18:57',NULL,22,58),(15,'Felister','Muchiri','fmuchiri',NULL,'171b00ae12d6852f25c879b4bfc2a9e27adc0205','fmuchir@juja.co.ke','254722332808',NULL,'supervisor','2014-04-28 07:21:22','2014-04-28 07:21:22',NULL,22,58),(16,'George','Njoroge','gnjoroge',NULL,'5047d33e8ad16b32928b57408377efa25c5f2b03','gnjoroge@juja.co.ke','254720846733',NULL,'supervisor','2014-04-28 07:22:23','2014-04-28 07:22:23',NULL,22,58),(17,'Mr','Merchant','merchant1',NULL,'4e5832733b8f169168ccbb0cf307a10b7c3e632f','merchant@juja.co.ke','254725963369',NULL,'merchant','2014-04-28 09:14:09','2014-04-28 09:14:09',NULL,22,58),(18,'Mr','Intern','clerk1',NULL,'4e5832733b8f169168ccbb0cf307a10b7c3e632f','intern@juja.co.ke','254796321456',NULL,'clerk','2014-04-28 09:59:39','2014-04-28 09:59:39',NULL,22,58),(19,'Caroline','Maina','cmaina',NULL,'21cc3a6e18c2620b7487ee78ccee35fd256540ff','cmaina@juja.co.ke','254703698521',NULL,'clerk','2014-04-29 11:24:44','2014-04-29 11:24:44',NULL,22,58),(20,'Maria','Wangari','mwangari',NULL,'8e2991180a685147f910544fd9d19dafc4c11da9','mwangari@juja.co.ke','254724973727',NULL,'clerk','2014-04-29 11:25:56','2014-04-29 11:25:56',NULL,22,58),(21,'Jane','Kibugi','jkibugi',NULL,'8a2f3eb1572d7d288333681a3d467aa8c141558b','jkibugi@juja.co.ke','254721626534',NULL,'clerk','2014-04-29 11:32:51','2014-04-29 11:32:51',NULL,22,58),(22,'Karim','Karanja','kkaranja',NULL,'e2f6eda9031f594d2f1b6d26f329c9cb0c6889c7','kkaranja@juja.co.ke','254725111505',NULL,'clerk','2014-04-29 11:34:51','2014-04-29 11:34:51',NULL,22,58),(23,'Jecinta','Wangunya','jwangunya',NULL,'5b44b9bc4ba2a4fa7bd2808ecc0c4bd077eec37e','jwangunya@juju.co.ke','254720270975',NULL,'clerk','2014-04-29 11:39:20','2014-04-29 11:39:20',NULL,22,58),(24,'Millicen','Msogo','mmsogo',NULL,'cd8aac0aebb76be7c63bff09a715265171e802cc','mmsogo@juju.co.ke','254726968003',NULL,'clerk','2014-04-29 11:41:45','2014-04-29 11:41:45',NULL,22,58),(25,'Michael','Chege','mchege',NULL,'71fabd51ccc0be5a1b5fd473789427db33405b1d','mchege@juja.co.ke','254720779902',NULL,'clerk','2014-04-29 11:42:50','2014-04-29 11:42:50',NULL,22,58),(26,'John','Wambey','jwambey',NULL,'6118b6155e74bb17925b027fce752e82463b7382','jwambey@juja.co.ke','254722168342',NULL,'clerk','2014-04-29 11:43:33','2014-04-29 11:43:33',NULL,22,58),(27,'Christopher','Maina','chrismaina',NULL,'4d01f5a01e14936989e275cf5fa015d116ebb075','chrismaina@juja.co.ke','254723436973',NULL,'clerk','2014-04-29 11:44:45','2014-04-29 11:44:45',NULL,22,58),(28,'Eddah','Wanjiku','ewanjiku',NULL,'425317e9e27b04c1263d4ccb03ee95b4cdb7d7da','ewanjiku@juja.co.ke','254712726972',NULL,'clerk','2014-04-29 11:45:30','2014-04-29 11:45:30',NULL,22,58),(29,'Alice','Nduta','anduta',NULL,'de3d2d5147dd81853463e6858dca850b9260695d','anduta@juja.co.ke','254723739744',NULL,'clerk','2014-04-29 11:46:11','2014-04-29 11:46:11',NULL,22,58),(30,'Kina','Willingshor','kwillingshor',NULL,'db1dda9ed72547ae19ce9736bbad98ca5862559d','kwillingshor@juja.co.ke','254722709580',NULL,'clerk','2014-04-29 11:47:12','2014-04-29 11:47:12',NULL,22,58),(31,'Mary','Njiraini','mnjiraini',NULL,'1a790d3e6b91b74d1474e8674a5b2b2e4b81244f','mnjiraini@juja.co.ke','254722437616',NULL,'clerk','2014-04-29 11:47:53','2014-04-29 11:47:53',NULL,22,58),(32,'Jacinta','Kiarii','jkiarii',NULL,'b113e17d96eeb32a51c81fb9cbfe54f2695145b0','jkiarii@juja.co.ke','254724673192',NULL,'clerk','2014-04-29 11:48:40','2014-04-29 11:48:40',NULL,22,58),(33,'Phylus','Nduati','pnduati',NULL,'c4c39cc4deb72213222d424eae901359846f1af3','pnduati@juja.co.ke','254726386829',NULL,'clerk','2014-04-29 11:52:36','2014-04-29 11:52:36',NULL,22,58),(34,'Maria','Wangari','mwangari',NULL,'8e2991180a685147f910544fd9d19dafc4c11da9','mwangari@juja.co.ke','254724973727',NULL,'clerk','2014-04-29 11:53:28','2014-04-29 11:53:28',NULL,22,58),(35,'Jane','Muthoni','jmuthoni',NULL,'b867aa7c4ec4c89668d00049759c2cecbe445833','jmuthoni@juja.co.ke','254723785252',NULL,'clerk','2014-04-29 11:54:24','2014-04-29 11:54:24',NULL,22,58),(36,'Daniel','Njogu','dnjogu',NULL,'1cb59374e38157cec36f3544bee353dcc50a7385','dnjogu@juja.co.ke','254727796239',NULL,'clerk','2014-04-29 11:55:09','2014-04-29 11:55:09',NULL,22,58),(37,'Mary','Wambui','mwambui',NULL,'26bbe03b31f347e8db3bc2a0706c3f0614e035a6','mwambui@juja.co.ke','254723820399',NULL,'clerk','2014-04-29 11:55:52','2014-04-29 11:55:52',NULL,22,58),(38,'Leah','Waceke','lwaceke',NULL,'5e7cc7960779cfd094c05ef3a3cf9d3bfa663bdd','lwaceke@juja.co.ke','254735706309',NULL,'clerk','2014-04-29 11:56:45','2014-04-29 11:56:45',NULL,22,58),(39,'Mary','Makau','mmakau',NULL,'4111697dc5b5f022e730c6af6c43c1eb7d0f5a8d','mmakau@juja.co.ke','254725662360',NULL,'clerk','2014-04-29 11:58:43','2014-04-29 11:58:43',NULL,22,58),(40,'Felistus','Wamaitha','fwamaitha',NULL,'b235858eb61b6470efe4c077959b12c2d26c5792','fwamaitha@juja.co.ke','254721448312',NULL,'clerk','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(41,'Andrew','Kibe','kaguius',NULL,'3f1f22537f11f5fa990c95fe123a946c','kaguius@gmail.com','254704469814',NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(42,'Thomas','Kimanzi','tkimanzi',NULL,'ee29382c2660cb00e82222b71d428ee6','tkimanzi@virtualcity.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(43,'William','Kabogo','kabogo',NULL,'7bf690633f66bea3fc97d807fd7edc58','kabogo@kiambu.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(44,'Mary','Nguli','mary',NULL,'b8e7be5dfa2ce0714d21dcfc7d72382c','mary@kiambu.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(45,'John','Gacaci','john',NULL,'527bd5b5d689e2c32ae974c6229ff785','john@kiambu.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(46,'Anne','Muchai','anne',NULL,'e3fb62ebfa4f36acf5cbff6a6ed0f2e0','anne@kiambu.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(47,'Douglas','Njiraini','douglas',NULL,'3b16dc694c38d04f7d7451cc37d3c654','douglas@kiambu.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(48,'Patrick','Patrick','patrick',NULL,'6c84cbd30cf9350a990bad2bcc1bec5f','patrick@kiambu.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(49,'Felistus','Wamaitha','felistus',NULL,'d92ca008126b5d2500ccda0f7bf73850','felistus@kiambu.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58),(50,'Susan','Kabura','susan',NULL,'ac575e3eecf0fa410518c2d3a2e7209f','susan@kiambu.co.ke',NULL,NULL,'admin','2014-04-29 11:59:38','2014-04-29 11:59:38',NULL,22,58);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
