/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.13-log : Database - ems
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ems` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `citymaster` */

DROP TABLE IF EXISTS `citymaster`;

CREATE TABLE `citymaster` (
  `city_id` int(10) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `citymaster` */

insert  into `citymaster`(`city_id`,`city_name`) values (1,'Kolkata'),(2,'Dellhi');

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `countryName` varchar(45) DEFAULT NULL,
  `population` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `country` */

/*Table structure for table `countrymaster` */

DROP TABLE IF EXISTS `countrymaster`;

CREATE TABLE `countrymaster` (
  `country_id` int(10) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `countrymaster` */

insert  into `countrymaster`(`country_id`,`country_name`) values (1,'India'),(2,'Australia'),(3,'USA');

/*Table structure for table `employeemaster` */

DROP TABLE IF EXISTS `employeemaster`;

CREATE TABLE `employeemaster` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(40) DEFAULT NULL,
  `emp_phone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `employeemaster` */

insert  into `employeemaster`(`emp_id`,`emp_name`,`emp_phone`) values (2,'Anupam','900');

/*Table structure for table `itemsmaster` */

DROP TABLE IF EXISTS `itemsmaster`;

CREATE TABLE `itemsmaster` (
  `item_code` int(10) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `createdOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `itemsmaster` */

insert  into `itemsmaster`(`item_code`,`item_name`,`price`,`qty`,`createdOn`) values (14,'AA',12.00,1,NULL),(15,'bb',12.00,2,NULL),(17,'CC',12.00,3,NULL),(24,'BBB',12.00,2,NULL),(26,'DD',12.00,2,NULL);

/*Table structure for table `usermaster` */

DROP TABLE IF EXISTS `usermaster`;

CREATE TABLE `usermaster` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` text,
  `phone_number` varchar(20) DEFAULT NULL,
  `country_id` int(20) DEFAULT NULL,
  `city_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `usermaster` */

insert  into `usermaster`(`user_id`,`first_name`,`last_name`,`username`,`email`,`password`,`address`,`phone_number`,`country_id`,`city_id`) values (18,'Admin','Admin','admin','admin@mail.com','1234','e','',1,1),(39,'Anupam','Biswas','anupam','anupam@mail.com','1234','aaa',NULL,1,1),(40,'Biswasss','anupam','biswas','biswas@mail.com','1234','address',NULL,1,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
