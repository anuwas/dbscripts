-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: erarepair_newera
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
-- Table structure for table `ts_pro_calendars`
--

DROP TABLE IF EXISTS `ts_pro_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_pro_calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `options` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_pro_calendars`
--

LOCK TABLES `ts_pro_calendars` WRITE;
/*!40000 ALTER TABLE `ts_pro_calendars` DISABLE KEYS */;
INSERT INTO `ts_pro_calendars` VALUES (1,'calendar1','a:81:{s:17:\"NotificationEmail\";s:34:\"MyAppointment@NewEraRemodeling.com\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"150\";s:8:\"startDay\";s:1:\"1\";s:15:\"monthYearFormat\";s:1:\"1\";s:10:\"dateFormat\";s:1:\"5\";s:10:\"timeFormat\";s:2:\"12\";s:8:\"timeSlot\";s:2:\"60\";s:9:\"startTime\";s:5:\"10:00\";s:7:\"endTime\";s:5:\"19:00\";s:11:\"maxTimeSlot\";N;s:13:\"acceptBooking\";s:4:\"true\";s:13:\"bookingLenght\";s:1:\"4\";s:11:\"allowPaypal\";s:5:\"false\";s:14:\"depositPayment\";s:1:\"0\";s:13:\"paypalAddress\";s:27:\"paypal@neweraremodeling.com\";s:8:\"currency\";s:1:\"0\";s:5:\"price\";s:0:\"\";s:10:\"weekMonday\";s:1:\"1\";s:11:\"weekTuesday\";s:1:\"1\";s:13:\"weekWednesday\";s:1:\"1\";s:12:\"weekThursday\";s:1:\"1\";s:10:\"weekFriday\";s:1:\"1\";s:12:\"weekSaturday\";s:1:\"1\";s:10:\"weekSunday\";s:1:\"0\";s:17:\"reservationStatus\";s:9:\"Confirmed\";s:12:\"emailMessage\";s:292:\"Dear <Name>,\r\n	\r\nyour reservation with ID <ReservationID> has been received.\r\n\r\nArrival date: <StartDate>\r\nDeparture date: <EndDate>\r\nPrice: <Price>\r\n\r\nIf your contact details below are incorrect please get in touch with us.\r\n\r\nName: <Name>\r\nAddress: <Address>\r\nEmail: <Email>\r\nPhone: <Phone>\";s:12:\"monthBGColor\";s:6:\"CC3300\";s:15:\"weekdaysBGColor\";s:6:\"000000\";s:17:\"bookedDaysBGColor\";s:6:\"33CC33\";s:21:\"fullBookedDaysBGColor\";s:6:\"FFFF33\";s:20:\"availableDaysBGColor\";s:6:\"000000\";s:22:\"unAvailableDaysBGColor\";s:6:\"33CC33\";s:15:\"emptyCellsColor\";s:6:\"FFFFFF\";s:5:\"fonts\";s:1:\"1\";s:14:\"monthFontColor\";s:6:\"FFFFFF\";s:13:\"monthFontSize\";s:1:\"6\";s:14:\"monthFontStyle\";s:4:\"Bold\";s:17:\"weekdaysFontColor\";s:6:\"FFFFFF\";s:16:\"weekdaysFontSize\";s:1:\"1\";s:17:\"weekdaysFontStyle\";s:6:\"Normal\";s:19:\"bookedDaysFontColor\";s:6:\"FFFFFF\";s:18:\"bookedDaysFontSize\";s:1:\"1\";s:19:\"bookedDaysFontStyle\";s:4:\"Bold\";s:22:\"availableDaysFontColor\";s:6:\"FFFFFF\";s:21:\"availableDaysFontSize\";s:1:\"1\";s:22:\"availableDaysFontStyle\";s:6:\"Normal\";s:24:\"unAvailableDaysFontColor\";s:0:\"\";s:23:\"unAvailableDaysFontSize\";s:1:\"1\";s:24:\"unAvailableDaysFontStyle\";s:6:\"Normal\";s:20:\"pendingDaysFontColor\";s:0:\"\";s:19:\"pendingDaysFontSize\";s:1:\"1\";s:20:\"pendingDaysFontStyle\";s:6:\"Normal\";s:11:\"borderColor\";s:6:\"000000\";s:10:\"borderSize\";s:1:\"2\";s:16:\"innerBorderColor\";s:6:\"FFFFFF\";s:15:\"innerBorderSize\";s:1:\"1\";s:14:\"tooltipBGColor\";s:6:\"CCCCFF\";s:16:\"tooltipFontColor\";s:6:\"000000\";s:15:\"tooltipFontSize\";s:1:\"1\";s:9:\"leftArrow\";s:1:\"<\";s:10:\"rightArrow\";s:1:\">\";s:3:\"Mon\";s:1:\"M\";s:3:\"Tue\";s:1:\"T\";s:3:\"Wed\";s:1:\"W\";s:3:\"Thu\";s:1:\"T\";s:3:\"Fri\";s:1:\"F\";s:3:\"Sat\";s:1:\"S\";s:3:\"Sun\";s:1:\"S\";s:6:\"Month1\";s:7:\"January\";s:6:\"Month2\";s:8:\"February\";s:6:\"Month3\";s:5:\"March\";s:6:\"Month4\";s:5:\"April\";s:6:\"Month5\";s:3:\"May\";s:6:\"Month6\";s:4:\"June\";s:6:\"Month7\";s:4:\"July\";s:6:\"Month8\";s:6:\"August\";s:6:\"Month9\";s:9:\"September\";s:7:\"Month10\";s:7:\"October\";s:7:\"Month11\";s:8:\"November\";s:7:\"Month12\";s:8:\"December\";}');
/*!40000 ALTER TABLE `ts_pro_calendars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:00:23
