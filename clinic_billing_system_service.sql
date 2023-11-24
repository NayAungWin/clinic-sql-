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
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `serviceId` int NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(45) NOT NULL,
  `serviceTypeId` int NOT NULL,
  `servicePrice` varchar(20) NOT NULL,
  PRIMARY KEY (`serviceId`),
  KEY `serviceTypeId_idx` (`serviceTypeId`),
  CONSTRAINT `serviceTypeId` FOREIGN KEY (`serviceTypeId`) REFERENCES `service_type` (`serviceTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Registration Fee',3,'1000'),(4,'Ultrasound',2,'20000'),(8,'X-Ray',2,'15000'),(14,'Consultant Fee',1,'5000'),(18,'ECG',2,'6000'),(20,'Injection Fee',1,'2000'),(21,'Paracacetamol',3,'100'),(22,'Royal D',3,'400'),(23,'Amoxil',3,'150'),(24,'Metpure XL50 50mg',3,'5000'),(25,'Muclear 600mg Effervescent 10 tube',3,'7500'),(26,'Furosan Strip Furosemide 40 mg Tube',3,'370'),(27,'Orofer Cap',3,'160'),(28,'Nocid Tab',3,'730'),(29,'Panzo D 40/30mg Tab',3,'335'),(30,'Livon 500mg Tab',3,'270'),(34,'Enervon C',3,'500'),(38,'3cc Syring',3,'400'),(39,'5cc Syring',3,'600'),(41,'Drip Set',3,'1000'),(42,'Cannula Fee',1,'1000'),(43,'Solmux 250ml',3,'2500'),(44,'Wood',3,'3500'),(45,'Biogesic Tab',3,'80'),(46,'Cetrizine',3,'150'),(47,'Cevit',3,'50'),(48,'Kimose',3,'300'),(49,'Omeprazole',3,'500'),(50,'Burmeton',3,'90'),(51,'Azithromycin',3,'400'),(52,'Cough Tab',3,'350');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 13:10:06
