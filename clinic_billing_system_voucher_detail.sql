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
-- Table structure for table `voucher_detail`
--

DROP TABLE IF EXISTS `voucher_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher_detail` (
  `voucherdetailId` int NOT NULL AUTO_INCREMENT,
  `serviceId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `voucherId` int DEFAULT NULL,
  PRIMARY KEY (`voucherdetailId`),
  KEY `serviceId` (`serviceId`),
  KEY `voucherId` (`voucherId`),
  CONSTRAINT `voucher_detail_ibfk_1` FOREIGN KEY (`serviceId`) REFERENCES `service` (`serviceId`),
  CONSTRAINT `voucher_detail_ibfk_2` FOREIGN KEY (`voucherId`) REFERENCES `voucher` (`voucherId`)
) ENGINE=InnoDB AUTO_INCREMENT=605 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_detail`
--

LOCK TABLES `voucher_detail` WRITE;
/*!40000 ALTER TABLE `voucher_detail` DISABLE KEYS */;
INSERT INTO `voucher_detail` VALUES (572,4,1,105),(573,21,10,105),(574,29,3,105),(575,25,1,106),(576,38,2,106),(577,18,1,107),(578,25,2,108),(579,8,1,108),(580,4,1,109),(581,29,2,109),(582,38,3,109),(583,23,2,109),(584,38,1,110),(585,24,2,110),(586,30,3,110),(587,4,1,112),(588,28,1,112),(589,29,1,112),(590,38,1,112),(591,21,1,112),(592,14,1,113),(593,1,1,113),(594,27,4,113),(595,20,1,113),(596,41,1,113),(597,14,1,114),(598,1,1,114),(599,20,1,114),(600,45,9,114),(601,43,1,114),(602,50,5,115),(603,20,1,115),(604,41,1,115);
/*!40000 ALTER TABLE `voucher_detail` ENABLE KEYS */;
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
