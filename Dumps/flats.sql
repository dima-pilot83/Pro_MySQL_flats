CREATE DATABASE  IF NOT EXISTS `flats` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `flats`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: flats
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `flat_table`
--

DROP TABLE IF EXISTS `flat_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat_table` (
  `flat_id` int(11) NOT NULL AUTO_INCREMENT,
  `flat_region` varchar(45) NOT NULL,
  `flat_adress` varchar(45) NOT NULL,
  `flat_area` double NOT NULL,
  `flat_rooms` int(11) NOT NULL,
  `flat_price` double NOT NULL,
  PRIMARY KEY (`flat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_table`
--

LOCK TABLES `flat_table` WRITE;
/*!40000 ALTER TABLE `flat_table` DISABLE KEYS */;
INSERT INTO `flat_table` VALUES (1,'Sviatoshin','Pobedy 90',100,3,95000),(2,'Shevchenko','Kreshatik 12',67,2,120000),(3,'Darnica','Ulica 22',75,3,68000),(4,'Sviatoshin','Vernadskogo 2',122,4,95000);
/*!40000 ALTER TABLE `flat_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'flats'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-02 14:48:15
