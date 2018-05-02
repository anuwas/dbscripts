-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: hep4all
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `email` varchar(155) NOT NULL,
  `pass_word` varchar(155) NOT NULL,
  `active_inactive` int(1) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `years_of_exp` varchar(155) DEFAULT NULL,
  `occupation` int(10) NOT NULL DEFAULT '0',
  `work_setting` int(10) NOT NULL DEFAULT '0',
  `city` varchar(155) DEFAULT NULL,
  `state` varchar(155) DEFAULT NULL,
  `country` int(10) NOT NULL DEFAULT '0',
  `profile_picture` varchar(155) DEFAULT NULL,
  `customer_logo` varchar(155) DEFAULT NULL,
  `emailcode` varchar(155) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `f1` (`occupation`),
  KEY `f2` (`work_setting`),
  KEY `f3` (`country`),
  CONSTRAINT `f1` FOREIGN KEY (`occupation`) REFERENCES `occupation_master` (`occupation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `f2` FOREIGN KEY (`work_setting`) REFERENCES `work_setting` (`work_setting_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `f3` FOREIGN KEY (`country`) REFERENCES `country_master` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

