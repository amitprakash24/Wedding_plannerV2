/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.31 : Database - dbwedding
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbwedding` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `dbwedding`;

/*Table structure for table `account_details` */

DROP TABLE IF EXISTS `account_details`;

CREATE TABLE `account_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `cash_advanced` decimal(38,2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `date_signed` datetime(6) DEFAULT NULL,
  `datetime_created` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `detail_type` varchar(255) DEFAULT NULL,
  `expectation_visitor` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_date` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpfwbg6sgmfg61mpud02gtc37l` (`user_id`),
  CONSTRAINT `FKpfwbg6sgmfg61mpud02gtc37l` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `account_details` */

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_type` varchar(255) NOT NULL,
  `balance` double NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnjuop33mo69pd79ctplkck40n` (`user_id`),
  CONSTRAINT `FKnjuop33mo69pd79ctplkck40n` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `accounts` */

/*Table structure for table `calendar` */

DROP TABLE IF EXISTS `calendar`;

CREATE TABLE `calendar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `allDay` bit(1) NOT NULL,
  `endDate` varchar(255) DEFAULT NULL,
  `startDate` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7lyt2gd8862h9hhn5ne38l51i` (`user_id`),
  CONSTRAINT `FK7lyt2gd8862h9hhn5ne38l51i` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `calendar` */

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `dateCreated` datetime(6) DEFAULT NULL,
  `end` datetime(6) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `event_time` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `FKepqkh41kaplq9yscnbdwu7j6b` (`booking_id`),
  KEY `FKat8p3s7yjcp57lny4udqvqncq` (`user_id`),
  CONSTRAINT `FKat8p3s7yjcp57lny4udqvqncq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKepqkh41kaplq9yscnbdwu7j6b` FOREIGN KEY (`booking_id`) REFERENCES `tblweddingbook` (`booking_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `events` */

insert  into `events`(`event_id`,`color`,`dateCreated`,`end`,`location`,`start`,`title`,`booking_id`,`created_at`,`description`,`event_date`,`event_name`,`event_time`,`updated_at`,`user_id`) values 
(3,'#FF0000','2018-03-07 18:06:30.000000','2018-03-19 20:00:00.000000','valencia city ','2018-03-19 08:00:00.000000','The wedding party & the happy couple are introduced',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(4,'#FF0000','2018-03-07 18:07:11.000000','2018-03-09 21:00:00.000000','valencia city ','2018-03-09 07:30:00.000000','First dance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5,'#FFD700','2018-03-07 18:09:28.000000','2018-03-08 00:00:00.000000','asdasd','2018-03-07 00:00:00.000000','Toast & speeches',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,'','2018-03-07 18:10:10.000000','2018-03-08 00:00:00.000000','asdasd','2018-03-07 00:00:00.000000','Dinner',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(8,'#008000','2018-03-07 18:15:03.000000','2018-03-07 10:00:00.000000','asdasd','2018-03-07 06:00:00.000000','Mother/son dance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(9,'#008000','2018-03-07 18:15:53.000000','2018-03-10 00:00:00.000000','asdasd','2018-03-09 00:00:00.000000','Bouquet & garter toss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,'#008000','2018-03-07 18:18:44.000000','2018-03-10 00:00:00.000000','asdasd','2018-03-09 00:00:00.000000','Dancing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11,'#008000','2018-03-07 18:21:58.000000','2018-03-11 00:00:00.000000','ASDASD','2018-03-10 00:00:00.000000','Cake-cutting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(13,'','2018-03-07 18:22:38.000000','2018-03-11 00:00:00.000000','ASDASD','2018-03-10 00:00:00.000000','End of reception/After-party',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(14,'#FF0000','2022-04-13 18:30:17.000000','2022-04-14 00:00:00.000000','Demo Location','2022-04-13 00:00:00.000000','Demo Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(16,'#000','2022-04-13 18:32:25.000000','2022-04-29 00:00:00.000000','Loc 1','2022-04-28 00:00:00.000000','Title One',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tbl_features` */

DROP TABLE IF EXISTS `tbl_features`;

CREATE TABLE `tbl_features` (
  `featureId` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `wedingType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`featureId`),
  KEY `FK8hodaxpvq92ldr13a56dr8oul` (`category_id`),
  CONSTRAINT `FK8hodaxpvq92ldr13a56dr8oul` FOREIGN KEY (`category_id`) REFERENCES `tblweddingcategories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbl_features` */

insert  into `tbl_features`(`featureId`,`description`,`title`,`category_id`,`wedingType`) values 
(1,'none','Hair and Make Up',NULL,'Gold'),
(2,'unlimited shot\r\nSoftCopy(CD/DVD)','Photographer',2,'Gold'),
(3,'unlimited shot','Hair And Make Up',2,'Gold'),
(4,'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate','Appetizers and Meal Service',5,'Gold'),
(5,'Our own professional worker','Hair And Make Up',NULL,'Gold'),
(6,'Custom Wedding Cake','Wedding Cake',NULL,'Gold'),
(7,'Vegetable &amp; Cheese Platters','Appetizers',5,'Classic'),
(8,'DJ Services','DJ Services',1,'Classic'),
(9,'Bar Service','Bar Service',5,'Classic'),
(10,'Champagne &amp; Cider Toast','Champagne &amp; Cider Toast',1,'Classic'),
(11,'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate','Appetizers and Meal Service',1,'Classic'),
(12,'hair cut that will change you life','Hair And Make Up',5,'Classic'),
(13,'Invitations &amp; Accessories','Invitations &amp; Accessories',5,'Classic'),
(14,'DJ &amp; MC Services','DJ &amp; MC Services',NULL,'Classic'),
(15,'Custom Wedding Cake','Wedding Cake',4,'Premium'),
(16,'Chairs &amp; Linens','Chairs &amp; Linens',4,'Premium'),
(17,'unlimited shot','Photographer',5,'Premium'),
(18,'Beer, Wine','Bar Service',5,'Premium'),
(19,'Stage Decor','Reception Decor',4,'Premium'),
(20,'unlimited shot','Hair And Make Up',5,'Premium'),
(21,'Choice Six Hot/Cold, 3-Entr&eacute;e Buffet or Duet Plate','Appetizers and Meal Services',5,'Premium'),
(22,'none','Invitations &amp; Accessories',4,'Premium'),
(23,'none','DJ &amp; MC Services',4,'Premium'),
(24,'Vegetable &amp; Cheese Platters','Appetizers',3,'Gold'),
(25,'Stage Decorations','Decorations',3,'Gold'),
(26,'Custom Wedding Cake','Wedding Cake',3,'Gold'),
(27,'none','DJ &amp; MC Services',3,'Elite'),
(28,'Standard','Centerpieces',2,'Elite'),
(29,'Centerpieces','Centerpieces',2,'Elite'),
(30,'Photobooth','Photobooth',3,'Elite'),
(31,'Grand Sparklers','Grand Sparklers',4,'Elite'),
(32,'Specialty Lighting','Specialty Lighting',4,'Elite');

/*Table structure for table `tbl_liquidation` */

DROP TABLE IF EXISTS `tbl_liquidation`;

CREATE TABLE `tbl_liquidation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cash` double NOT NULL,
  `credit` double NOT NULL,
  `dateIssue` varchar(255) DEFAULT NULL,
  `dateModified` varchar(255) DEFAULT NULL,
  `payment` double NOT NULL,
  `booking_id` int DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK646jt1fw5jt0cdps8la3ukb9b` (`booking_id`),
  KEY `FK9rlbnm707589fpk81cu1ofxe` (`event_id`),
  KEY `FKh45fo75oprxandti13w1d0uyx` (`user_id`),
  CONSTRAINT `FK646jt1fw5jt0cdps8la3ukb9b` FOREIGN KEY (`booking_id`) REFERENCES `tblweddingbook` (`booking_Id`),
  CONSTRAINT `FK9rlbnm707589fpk81cu1ofxe` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  CONSTRAINT `FKh45fo75oprxandti13w1d0uyx` FOREIGN KEY (`user_id`) REFERENCES `tblusers` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbl_liquidation` */

/*Table structure for table `tblaccounts` */

DROP TABLE IF EXISTS `tblaccounts`;

CREATE TABLE `tblaccounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accessLevel` enum('LEVEL_0','LEVEL_1','LEVEL_2') DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2q4sk134vq6pvqblgr00gfp6d` (`user_id`),
  CONSTRAINT `FK2q4sk134vq6pvqblgr00gfp6d` FOREIGN KEY (`user_id`) REFERENCES `tblusers` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblaccounts` */

insert  into `tblaccounts`(`id`,`accessLevel`,`userEmail`,`userPassword`,`user_id`) values 
(1,NULL,'jasonp@mail.com','root',NULL),
(2,NULL,'anniel@mail.com','root',NULL),
(3,NULL,'rosieing@mail.com','root',NULL),
(4,NULL,'marklw@mail.com','root',NULL),
(5,NULL,'deweyv@mail.com','root',NULL),
(6,NULL,'berrynich@mail.com','root',NULL),
(7,NULL,'vicrroyo@mail.com','root',NULL),
(8,NULL,'danielwbk@mail.com','root',NULL),
(9,NULL,'sharoncn@mail.com','root',NULL),
(10,NULL,'michaelcomb@mail.com','root',NULL),
(11,NULL,'peggykhoury@mail.com','root',NULL),
(12,NULL,'paulproc@mail.com','root',NULL),
(13,NULL,'dekkersus@mail.com','root',NULL),
(14,NULL,'gingerlw@mail.com','root',NULL),
(15,NULL,'jameswf@mail.com','root',NULL),
(16,NULL,'lindagd@mail.com','root',NULL),
(17,NULL,'guemary@mail.com','root',NULL),
(18,NULL,'davidwls@mail.com','root',NULL),
(19,NULL,'donniehr@mail.com','root',NULL),
(20,NULL,'bettyvass@mail.com','root',NULL),
(21,NULL,'cherlylp@mail.com','root',NULL),
(22,NULL,'carolcass@mail.com','root',NULL),
(23,NULL,'angelocl@mail.com','root',NULL),
(24,NULL,'peggybkk@mail.com','root',NULL),
(25,NULL,'test@mail.com','root',NULL),
(26,NULL,'troybrl@mail.com','root',NULL),
(27,NULL,'uuu@mail.com','root',NULL),
(28,NULL,'qweqw@asdas.com','root',NULL),
(29,NULL,'aaaa@aaa.com','root',NULL),
(30,NULL,'andrewc@mail.com','root',NULL),
(31,NULL,'aaront@mail.com','root',NULL),
(32,NULL,'bruce@mail.com','root',NULL),
(33,NULL,'amy@mail.co','root',NULL),
(34,NULL,'ww@mail.com','root',NULL),
(35,NULL,'stevenn@mail.com','root',NULL);

/*Table structure for table `tblaccounts_detail` */

DROP TABLE IF EXISTS `tblaccounts_detail`;

CREATE TABLE `tblaccounts_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cashAdvanced` decimal(38,2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `dateSigned` datetime(6) DEFAULT NULL,
  `datetimeCreated` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `expectationVisitor` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4i3mu6mr5owivytohvmrrlxv1` (`user_id`),
  CONSTRAINT `FK4i3mu6mr5owivytohvmrrlxv1` FOREIGN KEY (`user_id`) REFERENCES `tblusers` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblaccounts_detail` */

insert  into `tblaccounts_detail`(`id`,`cashAdvanced`,`city`,`dateSigned`,`datetimeCreated`,`description`,`expectationVisitor`,`firstname`,`lastname`,`location`,`phone`,`status`,`user_id`) values 
(1,11000.00,'Corpus Christi',NULL,'2018-03-05 16:03:18.000000','description','100','Jason','Phares','location','8520001450','confirm',NULL),
(2,10000.00,'Chillicothe',NULL,'2018-03-06 22:03:05.000000','none','100','Annie','Lin','94 Fairmont Avenue','1458003650','confirm',NULL),
(3,1500.00,'Olympia',NULL,'2018-03-08 14:03:03.000000','none','512','Rosie','Ingram','15 Honeysuckle Lane','0147852220','pending',NULL),
(4,1000.00,'Greenville',NULL,'2018-03-08 14:03:35.000000','none','150','Mark','Lew','521 Brown Avenue','1478521456','pending',NULL),
(5,1100.00,'Scottsdale',NULL,'2018-03-08 14:03:36.000000','none','210','Dewey','Vasquez','96 East Avenue','3214589999','pending',NULL),
(6,2500.00,'New York',NULL,'2018-03-08 14:03:40.000000','none','300','Nicholas','Berry','74 Godfrey Road','1479996650','pending',NULL),
(7,1250.00,'Columbus',NULL,'2018-03-08 14:03:41.000000','none','120','Victoria','Arroyo','98 Collins Avenue','3256665870','pending',NULL),
(8,1000.00,'Salina',NULL,'2018-03-08 14:03:42.000000','none','90','Daniel','Wilbanks','28 Sherman Street','4580001450','pending',NULL),
(9,5000.00,'Grand Rapids',NULL,'2018-03-08 14:03:44.000000','none','300','Sharon','Cintron','61 Bee Street','1456662210','pending',NULL),
(10,4500.00,'Portland',NULL,'2018-03-08 14:03:47.000000','none','300','Michael','Halcomb','101 Pratt Avenue','4545554700','pending',NULL),
(11,4000.00,'Pittsburg',NULL,'2018-03-08 14:03:51.000000','none','250','Peggy','Khoury','87 Breezewood Court','4589780000','pending',NULL),
(12,5000.00,'Fort Lauderdale',NULL,'2018-03-08 14:03:53.000000','none','300','Paul','Prochaska','42 West Fork Drive','7896665450','pending',NULL),
(13,1500.00,'Jackson',NULL,'2018-03-08 14:03:54.000000','none','150','Susan','Dekker','66 Lena Lane','6541258888','pending',NULL),
(14,2000.00,'Huntington',NULL,'2018-03-08 14:03:57.000000','none','200','Ginger','Lowe','602 Columbia Mine Road','3214589650','pending',NULL),
(15,4000.00,'Salina',NULL,'2018-03-08 15:03:00.000000','none','450','James','Wolff','69 Sherman Street','1458545000','pending',NULL),
(16,1200.00,'Cambridge',NULL,'2018-03-08 15:03:01.000000','none','100','Linda','Gordon','27 Gerald L. Bates Drive','1478545450','pending',NULL),
(17,7000.00,'Edgemont',NULL,'2018-03-08 15:03:02.000000','none','510','Mary','Guerrero','66 Denver Avenue','9547854780','pending',NULL),
(18,3000.00,'Schaumburg',NULL,'2018-03-08 01:03:31.000000','none','200','David','Wells','82 Millbrook Road','8545454750','confirm',NULL),
(19,2500.00,'Lancaster',NULL,'2018-03-08 01:03:34.000000','none','350','Donnie','Hernandez','66 Stout Street','3214589650','pending',NULL),
(20,2000.00,'Pennsauken',NULL,'2018-03-08 01:03:42.000000','none','170','Betty','Vassar','73 Metz Lane','2547850000','pending',NULL),
(21,2500.00,'Kenney',NULL,'2018-03-08 01:03:46.000000','none','300','Cheryl','Lapine','95 Little Acres Lane','4589650014','cancel',NULL),
(22,6500.00,'Lecompte',NULL,'2018-03-08 01:03:48.000000','none','480','Carol','Casey','52 Emerson Road','2458954500','pending',NULL),
(23,4500.00,'Phoenix',NULL,'2018-03-09 02:03:01.000000','none','260','Angelo','Clark','98 Hillside Street','3245785540','pending',NULL),
(24,6000.00,'Baltimore',NULL,'2018-03-09 02:03:44.000000','none','320','Peggy','Buck','93 Columbia Boulevard','6547778540','pending',NULL),
(25,1200.00,'Chicago',NULL,'2022-04-08 06:19:21.000000','Demo Text','210','Test','Account','115 Test Street','7777777777','confirm',NULL),
(26,0.00,'',NULL,'2022-04-12 06:19:11.000000','','','Troy','Burril','','7854125650','pending',NULL),
(30,23000.00,'Iron Mountain',NULL,'2022-04-12 19:19:53.000000','This is a demo test','180','Andrew','Copeland','450 Lewis Street','7412220000','confirm',NULL),
(35,16000.00,'TestCity',NULL,'2022-04-13 02:19:38.000000','This is a demo description for demo testing purpose!','250','Steven','Grant','Demo Location One','7774441470','confirm',NULL),
(36,16000.00,'TestCity',NULL,'2022-04-13 02:19:38.000000','This is a demo description for demo testing purpose!','250','Aman','Tripathi','Demo Location One','+91 7878787878','confirm',NULL),
(37,NULL,NULL,NULL,NULL,NULL,NULL,'Peter ','Parker',NULL,'787878778788','pending',NULL),
(38,NULL,NULL,NULL,NULL,NULL,NULL,'ABC','XYZ',NULL,'90990999099',NULL,NULL),
(39,NULL,NULL,NULL,NULL,NULL,NULL,'demo','test ',NULL,'78673283',NULL,NULL);

/*Table structure for table `tblgallery` */

DROP TABLE IF EXISTS `tblgallery`;

CREATE TABLE `tblgallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alternateText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `relateId` int NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfb3ndxjt3s7vuyf5q4bf94cqq` (`booking_id`),
  CONSTRAINT `FKfb3ndxjt3s7vuyf5q4bf94cqq` FOREIGN KEY (`booking_id`) REFERENCES `tblweddingbook` (`booking_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblgallery` */

insert  into `tblgallery`(`id`,`alternateText`,`caption`,`description`,`filename`,`relateId`,`size`,`title`,`type`,`booking_id`) values 
(5,'sampleImage1','Caption for Image 1','Description for Image 1','daniel-suarez-photography-107973-unsplash.jpg',1,'500KB','Sample Image 1','image',1),
(7,'sampleImage2','Caption for Image 2','Description for Image 2','zelle-duda-365988-unsplash.jpg',2,'750KB','Sample Image 2','image',1),
(8,'sampleImage1','Caption for Image 1','Description for Image 1','daniel-suarez-photography-107973-unsplash.jpg',1,'500KB','Sample Image 1','image',2),
(9,'sampleImage2','Caption for Image 2','Description for Image 2','zelle-duda-365988-unsplash.jpg',2,'750KB','Sample Image 2','image',3),
(10,'sampleImage1','Caption for Image 1','Description for Image 1','1.jpg',1,'500KB','Sample Image 1','image',3),
(11,'sampleImage2','Caption for Image 2','Description for Image 2','2.jpg',2,'750KB','Sample Image 2','image',4),
(12,'sampleImage3','Caption for Image 3','Description for Image 3','3.jpg',3,'1MB','Sample Image 3','image',2),
(13,'sampleImage4','Caption for Image 4','Description for Image 4','4.jpg',4,'250KB','Sample Image 4','image',1),
(14,'sampleImage4','Caption for Image 4','Description for Image 4','6.jpg',4,'250KB','Sample Image 4','image',3),
(15,'sampleImage4','Caption for Image 4','Description for Image 4','7.jpg',4,'250KB','Sample Image 4','image',4),
(16,'sampleImage4','Caption for Image 4','Description for Image 4','7.jpg',4,'250KB','Sample Image 4','image',2),
(17,'sampleImage5','Caption for Image 5','Description for Image 5','5.jpg',5,'1.2MB','Sample Image 5','image',4);

/*Table structure for table `tblguest` */

DROP TABLE IF EXISTS `tblguest`;

CREATE TABLE `tblguest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `guestname` varchar(255) DEFAULT NULL,
  `outOfTown` enum('NO','YES') DEFAULT NULL,
  `priority` enum('A','B','C','D','E') DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `tracksAndGifts` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgpewodhkxmal5nbswsloylvv8` (`booking_id`),
  CONSTRAINT `FKgpewodhkxmal5nbswsloylvv8` FOREIGN KEY (`booking_id`) REFERENCES `tblweddingbook` (`booking_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblguest` */

/*Table structure for table `tblorganizer` */

DROP TABLE IF EXISTS `tblorganizer`;

CREATE TABLE `tblorganizer` (
  `organizer_Id` int NOT NULL AUTO_INCREMENT,
  `datetimeCreated` datetime(6) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`organizer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblorganizer` */

/*Table structure for table `tblpostwedding` */

DROP TABLE IF EXISTS `tblpostwedding`;

CREATE TABLE `tblpostwedding` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateCreated` varchar(255) DEFAULT NULL,
  `datePublished` varchar(255) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `previewImage` varchar(255) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `weddingDate` varchar(255) DEFAULT NULL,
  `wedding_type` varchar(255) DEFAULT NULL,
  `weddingType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtajgmn2xrih6fq5atyuqbyi6a` (`wedding_type`),
  CONSTRAINT `FKtajgmn2xrih6fq5atyuqbyi6a` FOREIGN KEY (`wedding_type`) REFERENCES `tblweddingcategories` (`wedding_type`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblpostwedding` */

insert  into `tblpostwedding`(`id`,`dateCreated`,`datePublished`,`description`,`location`,`previewImage`,`status`,`title`,`weddingDate`,`wedding_type`,`weddingType`) values 
(1,'March 8, 2022, 11:23 am','April 13, 2022, 6:16 pm','92-acre Tuscan-inspired estate offering indoor and outdoor event spaces, as well as a Four Diamond inn and renowned restaurant.','Vintners Resort','wdbnt.jpg',NULL,'MR. &amp; MRS. Atwood','03/24/2022',NULL,'Elite'),
(2,'March 8, 2022, 11:29 am','','Charming hilltop chapel with a rustic stone interior and graceful arched windows that offer unobstructed views of the Blue Ridge Mountains. Receptions are held at the nearby clubhouse where you can continue the celebration in the ballroom, or beneath a tent on the sprawling lawn.','The Cliffs at Glassy','wdnf8.JPG',NULL,'MR. &amp; MRS. Levy','04/01/2022',NULL,'Premier'),
(3,'March 4, 2022, 11:44 am','April 13, 2022, 6:10 pm','Mountain beauty meets warm sophistication at this resort, which boasts a luxury lodge, chic hotel, two country clubs, and plenty of indoor and outdoor wedding venues from refined ballrooms to lush gardens to shabby-chic wood pavilions.','Crystal Springs Resort','wdnf8.JPG',NULL,'MR. MRS Redmond','03/16/2022',NULL,'Elite'),
(4,'March 4, 2022, 11:44 am','April 13, 2022, 6:17 pm','Lush, tropical garden setting with an open-air chapel and stunning views of the Ko\'olau Mountains.','Haiku Gardens','wdnf3.JPG',NULL,'MR. &amp; MRS. Collins','02/20/2022',NULL,'Elite'),
(5,'March 4, 2022, 11:44 am','April 13, 2022, 6:09 pm','Faithful replica of a classic medieval castle, complete with turrets, a drawbridge, a vast collection of Medieval and Renaissance artifacts, and a romantic garden overlooking the Atlantic.','Hammond Castle Museum','wdnf7.JPG',NULL,'MR. MRS  Graham','02/20/2022',NULL,'Gold'),
(6,'March 4, 2022, 11:44 am','April 13, 2022, 6:13 pm','Fairy-tale Tudor Revival mansion and lakeside chapel surrounded by 100 acres of formal gardens and 900 acres of natural woodlands.','The Skylands Manor','wdnf9.JPG',NULL,'MR. MRS. Yorke','03/23/2022',NULL,'Elite'),
(7,'March 8, 2022, 11:29 am','April 13, 2022, 6:17 pm','Beautifully restored historic home with elegant indoor event spaces, a Parterre Garden, and a lovely courtyard strung with market lights that\'s perfect for intimate celebrations.','Beauregard-Keyes House','wdnf4.JPG',NULL,'MR. &amp; MRS. Pearson','04/30/2018',NULL,'Elite'),
(8,'March 4, 2022, 11:44 am','April 13, 2022, 6:18 pm','Relaxed and refined private complex on 24 acres along the Carmel River where you can wed, dine, and stay.','Gardener Ranch','wdnf.JPG',NULL,'MR. &amp; MRS. Raftery','02/20/2022',NULL,'Elite'),
(9,'March 8, 2022, 11:29 am','April 13, 2022, 6:17 pm','Exchange vows in a natural woodland &ldquo;cathedral&rdquo; surrounded by towering pines, followed by cocktails served from a charming tipi and a delightful tented reception in the heart of the woods.','Blue Moon Rising','wdnf5.JPG',NULL,'MR. &amp; MRS. Brower','04/18/2022',NULL,'Gold'),
(10,'March 4, 2022, 11:44 am','April 13, 2022, 6:06 pm','Romantic 1929 Art Deco, blufftop mansion with indoor and outdoor event venues that offer fantastic ocean and shoreline views.','Yankee Clipper Inn','wdnf6.JPG',NULL,'MR. &amp; MRS. Reid','02/20/2022',NULL,'Elite'),
(11,'March 8, 2022, 11:29 am','April 13, 2022, 7:31 pm','Magnificent 102-acre coastal resort on a bluff overlooking the stunning Palos Verdes Peninsula, boasting landscaped grounds, verdant lawns, and warm, elegant ballrooms with terraces&mdash;all with jaw-dropping views.','Terranea Resort','wdnf12.JPG',NULL,'MR. &amp; MRS. Squires','04/03/2022',NULL,'Premier'),
(12,'March 4, 2022, 11:44 am','April 13, 2022, 6:14 pm','Relaxed, full-service resort presents an alluring choices of indoor and outdoor venues, from al fresco ceremonies with sweeping Pacific vistas to luxe reception ballrooms with classic columns and hand-blown glass chandeliers.','Hyatt Regency Huntington Beach Resort and Spa','wdnf10.JPG',NULL,'MR. &amp; MRS. Jones','04/05/2022',NULL,'Elite'),
(13,'March 8, 2022, 11:29 am','April 13, 2022, 6:18 pm','This Rockies hideaway boasts incredible mountain vistas and streamside paths, with multiple venue options for al fresco events, from the Shaker, an open-air platform tented with sailcloth, to the Highbanker Beach, a creekside lounge area perfect for cocktails and bonfires.','Blackstone Rivers Ranch','wdnf2.JPG',NULL,'MR. &amp; MRS. Russell','03/31/2022',NULL,'Elegant'),
(14,'March 8, 2022, 11:50 am','April 13, 2022, 6:16 pm','This rustic farmstead getaway offers picture-perfect event spaces, including a hilltop pergola and the Chimney Pond Meadow, surrounded by neat rows of Christmas trees, and a stylishly rustic reception barn highlighted by Tuscan lights and globe chandeliers.','Sawyer Family Farmstead','wdnf6.JPG',NULL,'MR. &amp; MRS. Smith','03/29/2018',NULL,'Elite'),
(16,'March 8, 2022, 11:23 am','April 13, 2022, 6:16 pm','92-acre Tuscan-inspired estate offering indoor and outdoor event spaces, as well as a Four Diamond inn and renowned restaurant.','Vintners Resort','wdbnt.jpg',NULL,'MR. &amp; MRS. Atwood','03/24/2022',NULL,'Elite');

/*Table structure for table `tblusers` */

DROP TABLE IF EXISTS `tblusers`;

CREATE TABLE `tblusers` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `accessLevel` enum('LEVEL_0','LEVEL_1','LEVEL_2') DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dateCreated` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` enum('FEMALE','MALE') DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profilePicture` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblusers` */

insert  into `tblusers`(`user_id`,`accessLevel`,`address`,`dateCreated`,`designation`,`email`,`firstname`,`gender`,`lastname`,`password`,`profilePicture`,`username`) values 
(1,'LEVEL_1','Grand Meadows','March 6, 2021, 5:15 pm','0','admin@gmail.com','admin',NULL,'Moore','root','user-icn-p-min.png','adminliam'),
(8,NULL,'115 Test Street','April 13, 2022, 8:01 pm','1','pharell@mail.com','Pharell',NULL,'Colin','Root','gr4.png','pcolin'),
(11,NULL,'dddd',NULL,'0','np@gmail.com','NIlesh','MALE','pandey','root','uploads\\','np1212');

/*Table structure for table `tblweddingbook` */

DROP TABLE IF EXISTS `tblweddingbook`;

CREATE TABLE `tblweddingbook` (
  `booking_Id` int NOT NULL AUTO_INCREMENT,
  `bride` varchar(255) DEFAULT NULL,
  `groom` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `weddingDate` varchar(255) DEFAULT NULL,
  `wedding_type` varchar(255) DEFAULT NULL,
  `organizer_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_Id`),
  KEY `FKre2go6vvomeaoqtu669c92pjv` (`organizer_id`),
  KEY `FKtof4n9fqq3xonpdxta7gdvicj` (`user_id`),
  KEY `FK6fo5kdnhrlylcpn7kcvycpvhi` (`wedding_type`),
  CONSTRAINT `FK6fo5kdnhrlylcpn7kcvycpvhi` FOREIGN KEY (`wedding_type`) REFERENCES `tblweddingcategories` (`wedding_type`),
  CONSTRAINT `FKre2go6vvomeaoqtu669c92pjv` FOREIGN KEY (`organizer_id`) REFERENCES `tblorganizer` (`organizer_Id`),
  CONSTRAINT `FKtof4n9fqq3xonpdxta7gdvicj` FOREIGN KEY (`user_id`) REFERENCES `tblusers` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblweddingbook` */

insert  into `tblweddingbook`(`booking_Id`,`bride`,`groom`,`userEmail`,`weddingDate`,`wedding_type`,`organizer_id`,`user_id`) values 
(1,NULL,NULL,'np2723683@gmail.com','08/22/2024',NULL,NULL,NULL),
(2,NULL,NULL,'sampleuser1@example.com','2024-09-15',NULL,NULL,NULL),
(3,NULL,NULL,'sampleuser2@example.com','2024-10-10',NULL,NULL,NULL),
(4,NULL,NULL,'sampleuser3@example.com','2024-11-05',NULL,NULL,NULL),
(5,NULL,NULL,'sampleuser4@example.com','2024-12-01',NULL,NULL,NULL),
(6,NULL,NULL,'np2723683@gmail.com','2024-08-22',NULL,NULL,NULL),
(7,NULL,NULL,'vicrroyo@mail.com','2022-03-30',NULL,NULL,NULL),
(8,NULL,NULL,'danielwbk@mail.com','2022-03-30',NULL,NULL,NULL),
(9,NULL,NULL,'sharoncn@mail.com','2022-03-30',NULL,NULL,NULL),
(10,NULL,NULL,'michaelcomb@mail.com','2022-03-30',NULL,NULL,NULL),
(11,NULL,NULL,'peggykhoury@mail.com','2022-03-30',NULL,NULL,NULL),
(12,NULL,NULL,'paulproc@mail.com','2022-03-08',NULL,NULL,NULL),
(13,NULL,NULL,'dekkersus@mail.com','2022-03-31',NULL,NULL,NULL),
(14,NULL,NULL,'gingerlw@mail.com','2022-04-02',NULL,NULL,NULL),
(15,NULL,NULL,'jameswf@mail.com','2022-04-28',NULL,NULL,NULL),
(16,NULL,NULL,'lindagd@mail.com','2022-05-18',NULL,NULL,NULL),
(17,NULL,NULL,'guemary@mail.com','2022-05-24',NULL,NULL,NULL),
(18,'Nora Westley','David Wells','davidwls@mail.com','2022-04-27',NULL,NULL,NULL),
(19,NULL,NULL,'donniehr@mail.com','2022-05-25',NULL,NULL,NULL),
(20,NULL,NULL,'bettyvass@mail.com','2022-03-27',NULL,NULL,NULL),
(21,NULL,NULL,'asdasdasdsad@gmail.com','2022-06-08',NULL,NULL,NULL),
(22,NULL,NULL,'carolcass@mail.com','2022-06-23',NULL,NULL,NULL),
(23,NULL,NULL,'angelocl@mail.com','2022-06-15',NULL,NULL,NULL),
(24,NULL,NULL,'peggybkk@mail.com','2022-07-07',NULL,NULL,NULL),
(25,NULL,NULL,'test@mail.com','2022-04-19',NULL,NULL,NULL),
(26,NULL,NULL,'troybrl@mail.com','2022-04-27',NULL,NULL,NULL),
(30,'Stella','Andrew Copeland','andrewc@mail.com','2022-05-01',NULL,NULL,NULL),
(31,'Eliza Williams','Aaron Turner','aaront@mail.com','2022-05-09',NULL,NULL,NULL),
(32,'Christine Walmer','Bruce Wright','bruce@mail.com','2022-04-26',NULL,NULL,NULL),
(33,'Test','Test','amy@mail.co','2022-05-18',NULL,NULL,NULL),
(34,'Ellen Moore','Steven Grant','stevenn@mail.com','2022-05-04',NULL,NULL,NULL),
(35,'Jane Doe','John Dee','jason@mail.com','2022-03-30',NULL,NULL,NULL),
(36,'Elizabeth Brown','Pedro Afonso','anniel@mail.com','2022-03-30',NULL,NULL,NULL),
(37,NULL,NULL,'rosieing@mail.com','2022-03-30',NULL,NULL,NULL),
(38,NULL,NULL,'marklw@mail.com','2022-03-30',NULL,NULL,NULL),
(39,NULL,NULL,'deweyv@mail.com','2022-03-30',NULL,NULL,NULL),
(40,NULL,NULL,'berrynich@mail.com','2022-03-30',NULL,NULL,NULL),
(41,'Jane Doe','John Dee','amantripathi@gmail.com','09/24/2024',NULL,NULL,NULL),
(42,NULL,NULL,'parkerpeter1@gmail.com','09/23/2024',NULL,NULL,NULL),
(43,NULL,NULL,'abcxyz@gmail.com','09/24/2024',NULL,NULL,NULL),
(44,NULL,NULL,'test@gmail.com','07/30/2025',NULL,NULL,NULL);

/*Table structure for table `tblweddingcategories` */

DROP TABLE IF EXISTS `tblweddingcategories`;

CREATE TABLE `tblweddingcategories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `previewImage` varchar(255) DEFAULT NULL,
  `preview_Image` tinyblob,
  `price` double NOT NULL,
  `wedding_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `idx_wedding_type` (`wedding_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tblweddingcategories` */

insert  into `tblweddingcategories`(`category_id`,`previewImage`,`preview_Image`,`price`,`wedding_type`) values 
(1,'classic.jpg','',16500,'Classic'),
(2,'elegnant.jpg','',20000,'Elegant'),
(3,'premier.jpg','',24000,'Premier'),
(4,'timeless gold.jpg','',39500,'Gold'),
(5,'elite.jpg','',52000,'Elite');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `gender` tinyint NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `profilePicture` varchar(255) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users` */

/*Table structure for table `vendors` */

DROP TABLE IF EXISTS `vendors`;

CREATE TABLE `vendors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_available` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `price_range` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `vendorType` varchar(255) NOT NULL,
  `zipCode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `vendors` */

/*Table structure for table `venues` */

DROP TABLE IF EXISTS `venues`;

CREATE TABLE `venues` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `capacity` int NOT NULL,
  `city` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_available` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `pricePerDay` decimal(38,2) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipCode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `venues` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
