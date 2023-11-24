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
-- Table structure for table `instruction_detail`
--

DROP TABLE IF EXISTS `instruction_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instruction_detail` (
  `instructionDetailId` int NOT NULL AUTO_INCREMENT,
  `instructionId` int NOT NULL,
  `serviceId` int NOT NULL,
  PRIMARY KEY (`instructionDetailId`),
  KEY `instructionId_idx` (`instructionId`),
  KEY `serviceId_idx` (`serviceId`),
  CONSTRAINT `instructionId` FOREIGN KEY (`instructionId`) REFERENCES `instruction` (`instructionId`),
  CONSTRAINT `serviceId` FOREIGN KEY (`serviceId`) REFERENCES `service` (`serviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instruction_detail`
--

LOCK TABLES `instruction_detail` WRITE;
/*!40000 ALTER TABLE `instruction_detail` DISABLE KEYS */;
INSERT INTO `instruction_detail` VALUES (125,21,8),(126,24,4),(127,24,38),(128,24,23),(129,26,18),(130,26,24),(131,29,4),(132,29,28),(133,29,29),(134,29,38),(135,29,21),(136,31,4),(137,31,21),(138,31,29),(139,32,25),(140,32,38),(141,33,18),(142,34,25),(143,34,8),(144,35,4),(145,35,29),(146,35,38),(147,35,23),(148,36,38),(149,36,24),(151,36,30),(152,37,14),(153,37,1),(154,37,27),(155,37,20),(156,37,41),(157,38,14),(158,38,1),(159,38,20),(160,38,45),(161,38,43),(162,39,50),(163,39,20),(164,39,41);
/*!40000 ALTER TABLE `instruction_detail` ENABLE KEYS */;
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
