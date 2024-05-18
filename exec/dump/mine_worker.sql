-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: mine702-db.cj6oog44srac.ap-northeast-2.rds.amazonaws.com    Database: mine
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `worker_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `modified_date_time` datetime(6) DEFAULT NULL,
  `worker_name` varchar(255) NOT NULL,
  `area_id` bigint DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  `team_id` bigint DEFAULT NULL,
  PRIMARY KEY (`worker_id`),
  KEY `FKgih88rr648ct9tuhmqoa4bmmq` (`area_id`),
  KEY `FKok1oq447a01sm8nup4ke8f5i5` (`member_id`),
  KEY `FK48sdtbr1sgio2fecjs7lipm10` (`team_id`),
  CONSTRAINT `FK48sdtbr1sgio2fecjs7lipm10` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `FKgih88rr648ct9tuhmqoa4bmmq` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `FKok1oq447a01sm8nup4ke8f5i5` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,'2024-05-16 00:01:29.000000',_binary '\0','2024-05-17 21:14:17.903676','첫째작업자',1,4,80),(2,'2024-05-16 00:01:30.000000',_binary '\0','2024-05-16 00:01:34.000000','둘째작업자',2,5,NULL),(3,'2024-05-16 00:01:31.000000',_binary '\0','2024-05-16 00:01:35.000000','셋째작업자',3,6,NULL),(4,'2024-05-16 00:01:31.000000',_binary '\0','2024-05-16 08:59:20.631798','넷째작업자',4,7,7),(5,'2024-05-16 08:59:20.543109',_binary '\0','2024-05-16 08:59:20.543109','정휘원',4,NULL,7),(6,'2024-05-16 08:59:20.579751',_binary '\0','2024-05-16 08:59:20.579751','차준석',4,NULL,7),(7,'2024-05-16 08:59:20.594475',_binary '\0','2024-05-16 08:59:20.594475','이채은',4,NULL,7),(8,'2024-05-16 08:59:20.596268',_binary '\0','2024-05-16 08:59:20.596268','권준구',4,NULL,7),(9,'2024-05-16 11:51:02.042213',_binary '\0','2024-05-16 12:37:19.227768','',1,NULL,NULL),(11,'2024-05-17 21:14:17.857020',_binary '\0','2024-05-17 21:14:17.857020','',1,NULL,80),(12,'2024-05-17 21:14:17.888190',_binary '\0','2024-05-17 21:14:17.888190','',1,NULL,80);
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-19  0:13:46
