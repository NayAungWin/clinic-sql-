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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patientID` int NOT NULL AUTO_INCREMENT,
  `patientName` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `phoneNumber` varchar(45) NOT NULL,
  `blood` varchar(45) NOT NULL,
  `diabete` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (3,'Daw Mya Mya','Female','80','+959784100200','AB','Yes','No.56, Yankin Street, Yankin Township, Yangon'),(4,'U Myint Aung','Male','39','09784915700','AB','No','No.33, Bo Min Yaung Street, North Dagon,  Yangon'),(6,'U Aung Naing','Male','56','09973456812','B','Yes','No.36, Yankin Street, Yankin Township, Yangon'),(9,'U Kyaw Kyaw','Male','57','09457891635','B','No','No.25, Linsataung Street, Botahtaung Township, Yangon'),(16,'Daw Thida','Female','60','09785698123','AB','No','No,.23, Thuka Street, Hlaing, Yangon '),(22,'Aung Aung','Male','52','091213313216','AB','No','Yankin'),(23,'Marry','Female','36','09785698123','A','Yes','Hlaing'),(24,'Daw Thida','Female','23','09132135123','A','Yes','No.13, Yadanar Street, South Okkalarpa, Yangon'),(31,'U Aung Ko','Male','36','+959145369256','AB','No','No.12, Moe Kaung Street, Yankin Township, Yangon'),(32,'U Hla','Male','36','+959123456145','AB','No','Yangon'),(33,'U Mya','Male','56','+959125456369','A','No','No.13, Bahan 4 Street, Bahan Township, Yangon'),(35,'U Myo Aung','Male','56','+959145964256','A','No','No.88, Thanlwin Street, Thanlwin, Yangon'),(36,'Daw Kay Kay','Female','36','+959693564235','B','No','No.24, Kan Thar Yar Street, North Dagon, Yangon'),(37,'U Maung','Male','70','+959456912345','A','No','Yangon');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
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
