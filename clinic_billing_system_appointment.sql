CREATE DATABASE  IF NOT EXISTS `clinic_billing_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinic_billing_system`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clinic_billing_system
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointmentId` int NOT NULL AUTO_INCREMENT,
  `appointmentDate` date NOT NULL,
  `patientID` int NOT NULL,
  `consultantId` int NOT NULL,
  `tokenId` int DEFAULT NULL,
  PRIMARY KEY (`appointmentId`),
  KEY `consultantId_idx` (`consultantId`),
  KEY `patientID_idx` (`patientID`),
  KEY `tokenId_idx` (`tokenId`),
  CONSTRAINT `consultantId` FOREIGN KEY (`consultantId`) REFERENCES `consultant` (`consultantId`),
  CONSTRAINT `patientID` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`),
  CONSTRAINT `tokenId` FOREIGN KEY (`tokenId`) REFERENCES `token` (`tokenId`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (28,'2023-07-21',3,10,4),(29,'2023-07-23',4,17,6),(33,'2023-07-23',6,17,10),(36,'2023-07-23',9,17,13),(42,'2023-07-19',22,10,19),(52,'2023-07-19',24,10,26),(53,'2023-07-31',4,10,27),(54,'2023-08-12',9,17,28),(55,'2023-08-12',16,10,29),(56,'2023-08-12',16,17,30),(57,'2023-08-13',16,10,31),(58,'2023-08-13',22,10,32),(59,'2023-08-13',3,10,33),(60,'2023-08-14',23,10,34),(61,'2023-08-14',9,10,35),(62,'2023-08-14',16,10,36),(63,'2023-08-14',22,10,37),(64,'2023-08-15',16,10,38),(65,'2023-08-15',23,10,39),(66,'2023-08-15',31,10,40),(67,'2023-08-15',4,10,41),(68,'2023-08-15',9,10,42),(69,'2023-08-15',32,10,43),(70,'2023-08-16',31,10,44),(71,'2023-08-19',33,17,45),(72,'2023-08-19',35,17,46),(73,'2023-08-19',36,17,47),(74,'2023-08-20',37,17,48);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 13:10:07
