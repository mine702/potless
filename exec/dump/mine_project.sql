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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `modified_date_time` datetime(6) DEFAULT NULL,
  `project_date` date NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_size` int NOT NULL,
  `project_status` tinyint NOT NULL,
  `area_id` bigint DEFAULT NULL,
  `manager_id` bigint NOT NULL,
  `team_id` bigint DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `FK4twiqdo5v88xi37tmmghv558i` (`area_id`),
  KEY `FKmc41im0glyrn8n6u6yfyuy38s` (`manager_id`),
  KEY `FK99hcloicqmg95ty11qht49n8x` (`team_id`),
  CONSTRAINT `FK4twiqdo5v88xi37tmmghv558i` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `FK99hcloicqmg95ty11qht49n8x` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  CONSTRAINT `FKmc41im0glyrn8n6u6yfyuy38s` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'2024-05-16 01:38:46.464248',_binary '\0','2024-05-16 10:16:45.356066','2024-05-13','도로 부속 작업 지시서',2,0,4,4,7),(2,'2024-05-16 09:04:43.400068',_binary '\0','2024-05-16 14:55:10.438563','2024-05-13','도로 부속 작업 지시서',2,0,4,4,7),(3,'2024-05-16 09:33:18.556811',_binary '\0','2024-05-18 21:45:05.521421','2024-05-13','도로 부속 작업 지시서',0,2,4,4,7),(4,'2024-05-16 09:33:22.319485',_binary '\0','2024-05-18 21:34:19.581459','2024-05-13','도로 부속 작업 지시서',0,2,4,4,7),(5,'2024-05-16 09:33:25.977988',_binary '\0','2024-05-17 14:29:44.451843','2024-05-13','도로 부속 작업 지시서',5,0,4,4,7),(6,'2024-05-16 09:33:51.299923',_binary '\0','2024-05-17 13:26:52.029879','2024-05-13','도로 부속 작업 지시서',2,2,4,4,7),(7,'2024-05-16 15:47:59.126475',_binary '\0','2024-05-17 13:26:00.231282','2024-05-13','도로 부속 작업 지시서',1,2,4,4,7),(8,'2024-05-16 16:34:20.321538',_binary '\0','2024-05-16 16:34:20.321538','2024-05-13','도로 부속 작업 지시서',1,0,1,1,NULL),(9,'2024-05-17 10:20:16.531917',_binary '\0','2024-05-17 13:18:10.581237','2024-05-13','도로 부속 작업 지시서',1,2,4,4,7),(10,'2024-05-17 15:46:33.669334',_binary '\0','2024-05-17 21:16:18.013562','2024-05-13','도로 부속 작업 지시서',2,2,4,4,7),(11,'2024-05-18 08:08:11.671344',_binary '\0','2024-05-18 08:08:11.671344','2024-05-13','도로 부속 작업 지시서',1,0,4,4,NULL),(14,'2024-05-18 08:08:40.992971',_binary '\0','2024-05-18 08:08:40.992971','2024-05-13','도로 부속 작업 지시서',2,0,4,4,NULL),(15,'2024-05-18 08:08:48.212544',_binary '\0','2024-05-18 08:08:48.212544','2024-05-13','도로 부속 작업 지시서',1,0,4,4,NULL),(16,'2024-05-18 08:12:24.611522',_binary '\0','2024-05-18 08:12:24.611522','2024-05-13','도로 부속 작업 지시서',1,0,4,4,NULL),(17,'2024-05-18 08:12:33.866791',_binary '\0','2024-05-18 08:12:33.866791','2024-05-13','도로 부속 작업 지시서',1,0,4,4,NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
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

-- Dump completed on 2024-05-19  0:13:45
