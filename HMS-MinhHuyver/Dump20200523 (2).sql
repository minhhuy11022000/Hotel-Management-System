CREATE DATABASE  IF NOT EXISTS `hotel_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel_system`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_system
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customerinfo`
--

DROP TABLE IF EXISTS `customerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerinfo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerinfo`
--

LOCK TABLES `customerinfo` WRITE;
/*!40000 ALTER TABLE `customerinfo` DISABLE KEYS */;
INSERT INTO `customerinfo` VALUES (3,'huy','123123','Male','561561',NULL,'huyhuy','123'),(4,'My','Tran','Female','2131566',NULL,'my','123'),(5,'huyyy','hkhk','Male','123545','','nubh','123'),(7,'toannn','toannnnn','Male','123213213','ititiu@gmail.com','toann','123');
/*!40000 ALTER TABLE `customerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('tientai','123');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerId` int DEFAULT NULL,
  `RoomNo` int DEFAULT NULL,
  `Date_in` date DEFAULT NULL,
  `Date_out` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Customer_Id_idx` (`CustomerId`),
  KEY `FK_Room_number_idx` (`RoomNo`),
  CONSTRAINT `FK_Customer_id` FOREIGN KEY (`CustomerId`) REFERENCES `customerinfo` (`ID`),
  CONSTRAINT `FK_Room_number` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`Room`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,3,1,'2015-01-02','2015-01-05'),(2,4,2,'2015-02-11','2015-02-14'),(3,5,3,'2015-02-20','2015-02-23'),(4,7,4,'2015-06-02','2015-06-05'),(5,3,5,'2015-08-02','2015-08-05'),(6,4,6,'2015-12-14','2015-12-17'),(7,5,7,'2015-04-05','2015-04-08'),(8,7,8,'2015-02-18','2015-02-21'),(9,4,9,'2015-04-10','2015-04-13'),(10,4,10,'2015-03-12','2015-03-15'),(11,5,11,'2015-07-27','2015-07-30'),(12,7,12,'2015-03-21','2015-03-24'),(13,3,13,'2015-06-19','2015-06-22'),(14,4,14,'2015-04-23','2015-04-26'),(15,5,15,'2015-12-27','2015-12-30'),(16,7,16,'2015-08-03','2015-08-06'),(17,3,17,'2015-08-13','2015-08-16'),(18,4,18,'2015-06-06','2015-06-09'),(19,5,19,'2015-11-27','2015-11-30'),(20,7,20,'2015-02-14','2015-02-17'),(21,3,21,'2015-08-22','2015-08-25'),(22,4,22,'2015-01-06','2015-01-09'),(23,5,23,'2015-12-21','2015-12-24'),(24,7,24,'2015-11-26','2015-11-29'),(25,3,25,'2015-06-05','2015-06-08'),(26,4,26,'2015-12-17','2015-12-20'),(27,5,27,'2015-06-22','2015-06-25'),(28,7,28,'2015-03-25','2015-03-28'),(29,4,29,'2015-05-24','2015-05-27'),(30,3,30,'2015-04-02','2015-04-05'),(35,3,1,'2020-05-22','2020-05-23'),(37,4,1,'2020-06-10','2020-06-18'),(39,5,28,'2020-05-23','2020-05-23');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `Room` int NOT NULL,
  `TypeId` int DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Reserved` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Room`),
  KEY `FK_Type_idx` (`TypeId`),
  CONSTRAINT `FK_Type` FOREIGN KEY (`TypeId`) REFERENCES `type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,'','Yes'),(2,1,' ','No'),(3,2,' ','No'),(4,2,' 3333','No'),(5,3,' 2','No'),(6,3,'1 ','No'),(7,4,' ','No'),(8,4,' ','No'),(9,5,' ','No'),(10,5,'12','No'),(11,1,'  ','No'),(12,1,' ','No'),(13,2,' ','No'),(14,2,' ','No'),(15,3,' ','No'),(16,3,' ','No'),(17,4,' ','No'),(18,4,' ','No'),(19,5,' ','No'),(20,5,' ','No'),(21,1,' ','No'),(22,1,' ','No'),(23,2,' ','No'),(24,2,' ','No'),(25,3,' ','No'),(26,3,' ','No'),(27,4,' ','No'),(28,4,' ','Yes'),(29,5,' ','No'),(30,5,' ','No'),(31,1,'','No'),(32,1,'','No'),(33,2,'','No'),(34,2,'11111','No');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Category` text NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Single',100),(2,'Double',200),(3,'Triple',300),(4,'Family',400),(5,'Suite',500);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-23  2:16:16
