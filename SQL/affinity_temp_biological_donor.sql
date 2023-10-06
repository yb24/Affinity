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
-- Table structure for table `temp_biological_donor`
--

DROP TABLE IF EXISTS `temp_biological_donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_biological_donor` (
  `cr_ID` int NOT NULL,
  `bd1_first_name` varchar(50) NOT NULL,
  `bd1_last_name` varchar(50) DEFAULT NULL,
  `bd2_first_name` varchar(50) NOT NULL,
  `bd2_last_name` varchar(50) DEFAULT NULL,
  `bd1_dob` date NOT NULL,
  `bd2_dob` date NOT NULL,
  `house_no` varchar(100) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `pin_code` int NOT NULL,
  `state` varchar(40) NOT NULL,
  `contact_details` varchar(15) NOT NULL,
  PRIMARY KEY (`cr_ID`),
  UNIQUE KEY `contact_details` (`contact_details`),
  CONSTRAINT `temp_biological_donor_ibfk_1` FOREIGN KEY (`cr_ID`) REFERENCES `visitor` (`visitor_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `temp_biological_donor_chk_1` CHECK ((`pin_code` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_biological_donor`
--

LOCK TABLES `temp_biological_donor` WRITE;
/*!40000 ALTER TABLE `temp_biological_donor` DISABLE KEYS */;
INSERT INTO `temp_biological_donor` VALUES (700051,'y','y','y','y','1987-02-02','1988-03-03','y','y',110000,'z','9879879879'),(700059,'g','g','g','g','1974-03-02','1979-03-02','g','g',110011,'g','3333333333'),(700061,'h','h','h','h','1988-02-03','1985-04-06','h','h',110000,'h','54545454444'),(700062,'i','i','i','i','1984-03-05','1983-05-06','i','i',110000,'i','6666666666'),(700063,'j','j','j','j','1981-07-07','1982-08-08','j','j',110000,'j','7777777777');
/*!40000 ALTER TABLE `temp_biological_donor` ENABLE KEYS */;
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
