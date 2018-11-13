-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: flight_schedule
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bay_constraints`
--

DROP TABLE IF EXISTS `bay_constraints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bay_constraints` (
  `Bays` varchar(10) NOT NULL,
  `Class_E` tinyint(1) NOT NULL,
  `Class_D` tinyint(1) NOT NULL,
  `Class_C` tinyint(1) NOT NULL,
  `Class_B` tinyint(1) NOT NULL,
  `Bay_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Bay_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bay_constraints`
--

LOCK TABLES `bay_constraints` WRITE;
/*!40000 ALTER TABLE `bay_constraints` DISABLE KEYS */;
INSERT INTO `bay_constraints` VALUES ('B1',0,1,1,1,1),('B2',0,1,1,1,2),('B3',1,1,1,1,3),('B4',1,1,1,1,4),('B5',1,1,1,1,5),('B6',1,1,1,1,6),('B6A',0,0,1,1,7),('B6B',0,0,1,1,8),('B7',1,1,1,1,9),('B8',1,1,1,1,10),('B9',1,1,1,1,11),('B10',1,1,1,1,12),('B11',0,1,1,1,13),('B12-20',0,0,1,1,14),('RMT A',1,1,1,1,15),('RMT B',0,0,1,1,16),('RMT C-N',1,1,1,1,17),('PVN 1-4',0,0,1,1,18),('G14-18',0,0,1,1,19),('F1-2',1,1,1,1,20),('F3-4',0,0,1,1,21),('F5-9',1,1,1,1,22);
/*!40000 ALTER TABLE `bay_constraints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `flights` (
  `i_fl_no` smallint(5) unsigned NOT NULL,
  `o_fl_no` smallint(5) unsigned NOT NULL,
  `origin` char(3) NOT NULL,
  `dest` char(3) NOT NULL,
  `ista` time NOT NULL,
  `ostd` time NOT NULL,
  `night_stay` tinyint(1) DEFAULT '0',
  `longstay` tinyint(1) DEFAULT '0',
  `flight_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`flight_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (20,8534,'20X','LOS','00:00:00','09:55:00',1,1,1),(521,111,'ABJ','NBO','03:05:00','16:00:00',1,1,2),(702,532,'LUN','LOS','09:20:00','05:05:00',1,1,3),(452,410,'DZA','EBB','10:00:00','04:55:00',1,1,4),(584,724,'22X','LUN','10:30:00','04:45:00',1,1,5),(355,660,'JUB','EDL','12:30:00','04:00:00',1,1,6),(341,700,'KRT','EBB','12:40:00','06:00:00',1,1,7),(619,526,'MBA','NSI','14:40:00','04:45:00',1,1,8),(444,600,'BJM','MBA','15:00:00','03:00:00',1,1,9),(415,350,'EBB','JUB','15:00:00','04:40:00',1,1,10),(659,416,'KIS','EBB','16:15:00','19:35:00',1,0,11),(355,466,'JUB','BJM','16:15:00','20:50:00',1,1,12),(120,710,'12X','ZNZ','21:00:00','05:10:00',1,1,13),(11,760,'2XX','JNB','21:00:00','03:35:00',1,1,14),(30,650,'3XX','KIS','21:00:00','04:00:00',1,1,15),(130,722,'13X','JRO','21:00:00','05:30:00',1,1,16),(446,448,'BJM','KGL','02:20:00','05:35:00',0,0,17),(509,450,'ACC','SEZ','02:45:00','06:05:00',0,0,18),(765,220,'JNB','DEL','02:50:00','06:30:00',0,1,19),(717,756,'GBE','TNR','03:00:00','05:35:00',0,0,20),(887,116,'BKK','AMS','03:05:00','05:15:00',0,0,21),(417,2,'EBB','XX2','03:12:00','23:59:00',0,1,22),(720,444,'HRE','KGL','03:15:00','12:30:00',0,1,23),(117,112,'AMS','CDG','03:25:00','19:45:00',0,1,24),(101,202,'LHR','BOM','03:30:00','14:35:00',0,1,25),(625,602,'MBA','MBA','03:32:00','05:30:00',0,0,26),(489,482,'DAR','DAR','03:35:00','08:05:00',0,1,27),(203,102,'BOM','LHR','03:35:00','20:50:00',0,1,28),(321,762,'KRT','JNB','03:45:00','06:05:00',0,0,29),(542,452,'COO','DZA','03:50:00','05:40:00',0,0,30),(311,554,'DXB','FIH','03:50:00','05:15:00',0,0,31),(621,14,'MBA','X14','04:55:00','23:59:00',0,1,32),(671,402,'KIS','ADD','05:05:00','06:50:00',0,0,33),(419,352,'EBB','JUB','06:00:00','09:50:00',0,1,34),(601,604,'MBA','MBA','06:10:00','07:00:00',0,0,35),(651,654,'KIS','KIS','06:25:00','07:05:00',0,0,36),(661,640,'EDL','MYD','06:45:00','10:25:00',0,1,37),(623,606,'MBA','MBA','07:02:00','11:00:00',0,1,38),(411,15,'EBB','X15','08:25:00','23:59:00',0,1,39),(603,610,'MBA','MBA','08:40:00','11:30:00',0,0,40),(205,764,'BOM','JNB','08:40:00','17:35:00',0,1,41),(483,484,'DAR','DAR','08:50:00','09:40:00',0,0,42),(351,658,'JUB','KIS','09:00:00','13:50:00',0,1,43),(655,656,'KIS','KIS','09:30:00','10:30:00',0,0,44),(605,622,'MBA','MBA','10:10:00','17:00:00',0,1,45),(448,354,'BJM','JUB','11:00:00','11:55:00',0,0,46),(607,612,'MBA','MBA','12:10:00','13:00:00',0,0,47),(701,620,'HRE','MBA','12:55:00','14:50:00',0,0,48),(657,418,'KIS','EBB','12:55:00','15:40:00',0,0,49),(727,726,'JRO','JRO','13:10:00','15:00:00',0,0,50),(413,412,'EBB','EBB','13:10:00','23:59:00',0,1,51),(757,414,'TNR','EBB','13:15:00','14:45:00',0,0,52),(485,488,'DAR','DAR','13:25:00','19:30:00',0,1,53),(724,310,'LLW','DXB','13:25:00','16:20:00',0,0,54),(641,670,'MYD','KIS','13:30:00','15:00:00',0,0,55),(555,886,'FIH','BKK','13:30:00','20:35:00',0,1,56),(527,486,'NSI','DAR','13:35:00','15:00:00',0,0,57),(353,732,'JUB','LLW','14:10:00','18:30:00',0,1,58),(611,618,'MBA','MBA','14:40:00','15:30:00',0,0,59),(613,624,'MBA','MBA','16:10:00','18:45:00',0,0,60),(715,9,'ZNZ','XX9','18:10:00','23:59:00',0,1,61);
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13 20:03:57
