-- MySQL dump 10.13  Distrib 5.5.35, for Win64 (x86)
--
-- Host: localhost    Database: trident
-- ------------------------------------------------------
-- Server version	5.5.35

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
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `math` int(5) NOT NULL,
  `science` int(5) NOT NULL,
  `chemistry` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,78,89,90),(2,65,99,91),(3,93,61,81),(4,54,72,80),(5,45,78,90),(6,98,79,56),(7,87,65,75),(8,58,79,67),(9,96,70,74),(10,99,91,92),(11,38,54,71),(12,68,94,61);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papers`
--

DROP TABLE IF EXISTS `papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papers` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `paper_1` varchar(20) DEFAULT NULL,
  `paper_2` varchar(20) DEFAULT NULL,
  `paper_3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papers`
--

LOCK TABLES `papers` WRITE;
/*!40000 ALTER TABLE `papers` DISABLE KEYS */;
INSERT INTO `papers` VALUES (1,'math','physics','chemistry'),(2,'biology','it','chemistry'),(3,'physics','math','science'),(4,'physics','odia','chemistry'),(5,'biology','odia','english'),(6,'it','physics','math'),(7,'chemistry','english','biology'),(8,'physics','math','odia'),(9,'physics','math','odia'),(10,'math','physics','chemistry'),(11,'physics','odia','chemistry'),(12,'odia','science','it');
/*!40000 ALTER TABLE `papers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `mobileno` int(10) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Bijay Behera','2002-12-26','M',72053675,'mca'),(2,'Sanjay Behera','2003-02-26','M',72058755,'mba'),(3,'Sanjukta Behera','2006-09-26','F',72052345,'msc'),(4,'Ramesh Sahoo','2016-09-26','M',79144055,'bsc'),(5,'Gopinath Ojha','2002-08-23','M',9123407,'mca'),(6,'Monalisha Sahoo','2003-07-19','F',91783407,'mba'),(7,'Mitali Jena','2003-03-12','F',91729807,'mba'),(8,'Ramakanta Panda','2001-02-08','M',91567807,'msc'),(9,'Tushar Nayak','2002-05-27','M',91567347,'msc'),(10,'Milan Sahoo','2002-04-10','M',91569047,'bsc'),(11,'Chandan Sahoo','2001-11-17','M',74569047,'mca'),(12,'Purnima Jena','2003-12-28','F',9245673,'bsc');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_other`
--

DROP TABLE IF EXISTS `student_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_other` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `hobby` varchar(50) DEFAULT NULL,
  `sports` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_other`
--

LOCK TABLES `student_other` WRITE;
/*!40000 ALTER TABLE `student_other` DISABLE KEYS */;
INSERT INTO `student_other` VALUES (1,'read','cricket'),(2,'swim','chess'),(3,'walk','volly'),(4,'play','carrom'),(5,'dance','cricket'),(6,'play','football'),(7,'read','chess'),(8,'sleep','carrom'),(9,'swim','volly'),(10,'play','cricket'),(11,'read','football'),(12,'dance','chess');
/*!40000 ALTER TABLE `student_other` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 15:55:20
