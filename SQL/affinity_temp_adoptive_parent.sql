-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: affinity
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `temp_adoptive_parent`
--

DROP TABLE IF EXISTS `temp_adoptive_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_adoptive_parent` (
  `ap_ID` int NOT NULL,
  `ap1_first_name` varchar(50) NOT NULL,
  `ap1_last_name` varchar(50) DEFAULT NULL,
  `ap2_first_name` varchar(50) NOT NULL,
  `ap2_last_name` varchar(50) DEFAULT NULL,
  `ap1_dob` date NOT NULL,
  `ap2_dob` date NOT NULL,
  `house_no` varchar(100) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `pin_code` int NOT NULL,
  `state` varchar(40) NOT NULL,
  `contact_details` varchar(15) NOT NULL,
  `income_per_annum` int DEFAULT NULL,
  `preference` enum('none','mentally challenged','physically challenged','both') NOT NULL,
  PRIMARY KEY (`ap_ID`),
  UNIQUE KEY `contact_details` (`contact_details`),
  CONSTRAINT `temp_adoptive_parent_ibfk_1` FOREIGN KEY (`ap_ID`) REFERENCES `visitor` (`visitor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `temp_adoptive_parent_chk_1` CHECK ((`pin_code` > 0)),
  CONSTRAINT `temp_adoptive_parent_chk_2` CHECK ((`income_per_annum` >= 100000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_adoptive_parent`
--

LOCK TABLES `temp_adoptive_parent` WRITE;
/*!40000 ALTER TABLE `temp_adoptive_parent` DISABLE KEYS */;
INSERT INTO `temp_adoptive_parent` VALUES (700057,'e','e','e','e','1977-02-03','1978-02-03','e','e',110011,'e','1111111111',1234321,'none');
/*!40000 ALTER TABLE `temp_adoptive_parent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19  2:42:19
