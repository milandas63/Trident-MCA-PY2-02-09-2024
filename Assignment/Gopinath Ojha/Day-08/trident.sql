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
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendence` (
  `attendence_id` int(5) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`attendence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` VALUES (1,'2024-09-01','Present'),(2,'2024-09-02','Absent'),(3,'2024-09-03','Present'),(4,'2024-09-04','Late'),(5,'2024-09-05','Present'),(6,'2024-09-06','Absent'),(7,'2024-09-07','Present'),(8,'2024-09-08','Late'),(9,'2024-09-09','Present'),(10,'2024-09-10','Absent');
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `course_id` int(5) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(10) NOT NULL,
  `credit` int(5) NOT NULL,
  `instructor` varchar(10) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (11,'Math',3,'Dr.Sharma'),(12,'CS',4,'Prof.Patel'),(13,'Bio',3,'Dr.Kumar'),(14,'Chem',4,'Dr.Gupta'),(15,'Phys',3,'Prof.Reddy'),(16,'Hist',3,'Dr.Iyer'),(17,'Eng',3,'Prof.Desai'),(18,'Econ',4,'Dr.Mehta'),(19,'Art',2,'Prof.Das'),(20,'Music',2,'Dr.Naidu');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Java` int(5) NOT NULL,
  `C` int(5) NOT NULL,
  `CSA` int(5) NOT NULL,
  `Python` int(5) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,85,90,88,92),(2,78,85,82,80),(3,91,89,84,87),(4,72,80,79,85),(5,88,92,90,94),(6,76,81,77,82),(7,95,93,88,90),(8,82,87,85,86),(9,89,94,91,92),(10,77,84,79,83);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Email_Id` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (20,'Gopinath','2002-06-18','7751847636','gopin5427@gmail.com','bbsr'),(21,'Bijay','2001-04-19','5874632115','bijay456@gmail.com','blsr'),(22,'Abhi','2003-10-26','7751639545','abhi756@gmail.com','konark'),(23,'Sahil','2002-03-05','7896325412','sahil785@gmail.com','Bbsr'),(24,'Dibya','2003-12-07','5698742361','dibya75@gmail.com','ktk'),(25,'Shaswat','2001-10-10','7896325412','shaswat75@gmail.com','bpda'),(26,'Debasish','2002-07-09','7563241259','deb42@gmail.com','bbsr'),(27,'Jagan','2002-09-10','9335684279','jagan965@gmail.com','puri'),(28,'Asish','2003-11-17','9345397779','asish5@gmail.com','Delhi'),(29,'Jagdish','2001-05-27','9337754569','jagdish45@gmail.com','ktk');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 15:57:08
