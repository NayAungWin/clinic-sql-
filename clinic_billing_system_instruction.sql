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
-- Table structure for table `instruction`
--

DROP TABLE IF EXISTS `instruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instruction` (
  `instructionId` int NOT NULL AUTO_INCREMENT,
  `appointmentId` int NOT NULL,
  `instructionStatus` varchar(100) NOT NULL,
  `instructionDate` varchar(45) NOT NULL,
  PRIMARY KEY (`instructionId`),
  KEY `appointmentId_idx` (`appointmentId`),
  CONSTRAINT `appointmentId` FOREIGN KEY (`appointmentId`) REFERENCES `appointment` (`appointmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instruction`
--

LOCK TABLES `instruction` WRITE;
/*!40000 ALTER TABLE `instruction` DISABLE KEYS */;
INSERT INTO `instruction` VALUES (21,54,'Fever','2023-08-12'),(22,55,'heart','2023-08-12'),(23,57,'Typhoid fever','2023-08-13'),(24,58,'High blood pressure','2023-08-13'),(25,59,'Typhoid fever','2023-08-13'),(26,60,'High blood pressure','2023-08-14'),(27,61,'Fever','2023-08-14'),(28,62,'Coronary artery disease','2023-08-14'),(29,64,'Coronary artery disease','2023-08-15'),(30,65,'Typhoid fever','2023-08-15'),(31,66,'Fever','2023-08-15'),(32,67,'High blood pressure','2023-08-15'),(33,68,'Coronary artery disease','2023-08-15'),(34,69,'High blood pressure','2023-08-15'),(35,70,'High blood pressure','2023-08-16'),(36,71,'High blood pressure','2023-08-19'),(37,72,'Pneumonia','2023-08-19'),(38,73,'Fever','2023-08-19'),(39,74,'High blood pressure','2023-08-20');
/*!40000 ALTER TABLE `instruction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 13:10:09
