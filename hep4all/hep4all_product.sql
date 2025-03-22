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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) DEFAULT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_desc` text,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `product_image` varchar(50) DEFAULT 'noimage.jpg',
  `product_link` text,
  `creatged_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_category` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`product_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (5,1,'BOSU® Pro Balance Trainer','The Pro Balance Trainer has a bladder weight of 8 lbs. and a dually over-molded platform for extra strength. Smooth, non-skid, non-marking base. Blue dome with logo detailing, light gray clamp, and platform. Includes foot pump, BOSU Integrated Balance Training Manual, and DVD.\r\n',189.00,'5866-FQ10850P.jpg','http://www.dynatronics.com/CatalogResults/PartDetails/tabid/63/partid/FQ10850P/Default.aspx','2015-07-05 17:52:36'),(10,1,'HOME RANGER 93 PULLEY','The PrePak Home Ranger® 93 Shoulder Pulley with Assisted Grip handles and web strap door anchor. The Home Ranger was the first web-strap over-the-door pulley and was developed by a practicing physical therapist in 1985. It helps increase and maintain range of motion in all planes of shoulder motion. Used in the home, it allows patients to increase gains made in the clinic and helps speed recovery. It comes with rubber coated web strap door anchor, ergonomic handles, marked rope to help gauge progress, Sure Track Pulley® and full-color exercise book.',19.75,'5696-PP270.jpg','http://www.dynatronics.com/CatalogResults/PartDetails/tabid/63/partid/PP270/Default.aspx','2015-07-07 03:08:48'),(11,1,'Thera-Band® Resistance Tubing','Each natural rubber tube supplied in yellow, red, and green resistance levels is 48 in (l), while those supplied in blue, black, and silver resistance levels are 50 in (l). The tubes are provided with soft cushioned foam handles for a comfortable grip during use.',22.75,'7984-TB21731.jpg','http://www.dynatronics.com/CatalogResults/PartDetails/tabid/63/partid/TB21731/Default.aspx','2015-07-07 03:11:37'),(12,1,'Sport Handle, Pair','Patented handle for use with any band or tubing. Made of ABS plastic, these handles are strong enough to stand on while doing exercises. Band or tubing easily locks into the handle for a secured exercise. Sold in pairs.',6.00,'4141-EH1.jpg','http://www.dynatronics.com/CatalogResults/PartDetails/tabid/63/partid/EH1/Default.aspx','2015-07-08 06:35:14'),(13,2,'Bosu® Balance Trainer','Targets the core muscles around your abs and back area - helping you to not only gain strength, trim, and tone, but to help coordinate your entire body. Virtually any exercise you can perform on the ground can be performed on the BOSU™ making that exercise more challenging, fun and effective. The BOSU™ Balance Trainer comes with an instruction video, an air pump and exercise manual.',100.00,'4885-FQ10850P.jpg','http://www.dynatronics.com/CatalogResults/PartDetails/tabid/63/partid/FQ1DFM/Default.aspx','2015-07-08 06:47:02');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:26
