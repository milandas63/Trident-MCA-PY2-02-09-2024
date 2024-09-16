-- MySQL dump 10.13  Distrib 5.5.35, for Win64 (x86)
--
-- Host: localhost    Database: ihub
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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) NOT NULL,
  `DOB` date DEFAULT NULL,
  `gender` enum('F','M','o') NOT NULL,
  `Salary` int(30) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `Profession` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (7,'Payel','2000-07-03','F',500000,23,'Developer'),(8,'Twinkle','2002-10-05','F',400000,22,'Softwaer engineer'),(9,'Asha','2009-02-10','F',350000,21,'Data analyst'),(10,'Manab','2004-02-11','M',300000,20,'System analyst'),(11,'Swati','2002-05-11','F',400000,23,'Developer'),(12,'priya','2001-03-10','F',420000,21,'Designer');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `DOB` date DEFAULT NULL,
  `gender` enum('F','M','O') NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (16,'MILAN','1960-07-09','M','milan23@gmail',91678329),(17,'Gopinath Ojha','2002-06-07','M','gopi73@gmail',91674239),(18,'Abinash Patra','2002-07-05','M','abhi73@gmail',81674529),(19,'Priyadarshini Mohapatra','2002-01-25','F','pree73@gmail',8146789),(20,'Harapriya Panda','2002-10-13','F','hara73@gmail',8189234),(21,'Ipsita Nayak','2002-01-07','F','ipsita73@gmail',8167934),(22,'Bijay Kumar Behera','2003-04-06','M','bijay73@gmail',8187342),(23,'Srikant Behera','2002-02-09','M','srikant91@gmail',8145821),(24,'Dibyaranjan Sethi','2003-11-05','M','dibya41@gmail',8123761);
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `English` int(20) DEFAULT NULL,
  `MATHS` int(20) DEFAULT NULL,
  `SCIENCE` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (89,78,91),(78,71,78),(90,78,68),(89,76,89),(90,67,67),(67,78,76),(89,88,56),(67,78,67),(89,56,63);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student6`
--

DROP TABLE IF EXISTS `student6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student6` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `DOB` date DEFAULT NULL,
  `gender` enum('F','M','O') NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student6`
--

LOCK TABLES `student6` WRITE;
/*!40000 ALTER TABLE `student6` DISABLE KEYS */;
INSERT INTO `student6` VALUES (1,'RAM','2009-03-20','M','ram113@gmail',983456),(2,'Sita','2012-01-20','F','sita23@gmail',34893),(3,'shyam','2009-03-20','M','ram113@gmail',983456);
/*!40000 ALTER TABLE `student6` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 15:48:04
