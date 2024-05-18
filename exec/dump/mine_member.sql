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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `deleted_date_time` datetime(6) DEFAULT NULL,
  `modified_date_time` datetime(6) DEFAULT NULL,
  `member_email` varchar(255) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_password` varchar(255) NOT NULL,
  `member_phone` varchar(255) NOT NULL,
  `member_profile_url` varchar(255) DEFAULT NULL,
  `member_role` int NOT NULL,
  `area_id` bigint DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `FKojb59oh1airw81umx9ihmil34` (`area_id`),
  CONSTRAINT `FKojb59oh1airw81umx9ihmil34` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'2024-05-15 23:57:41.501767',_binary '\0',NULL,'2024-05-15 23:57:41.501767','manager1@test.com','첫째관리자','$2a$10$uaP.1sK0jA5cOUsR1fAPqu2.R2e2CtJIUEd8M4p632DQgJdVVsJn.','010-2222-1111',NULL,0,1),(2,'2024-05-15 23:57:52.004500',_binary '\0',NULL,'2024-05-15 23:57:52.004500','manager2@test.com','둘째관리자','$2a$10$GDZJdPpKPqoOSW4c8LwrJe5l1t18DTQ.BAq065IXtza2eMNA4mBsK','010-2222-1111',NULL,0,2),(3,'2024-05-15 23:57:59.613245',_binary '\0',NULL,'2024-05-15 23:57:59.613245','manager3@test.com','셋째관리자','$2a$10$mQLaEdU1X6jB5eRbK/p6beVaIE4e0DyapJbymsV8VGykUsgw3fU0e','010-2222-1111',NULL,0,3),(4,'2024-05-15 23:58:14.978642',_binary '\0',NULL,'2024-05-15 23:58:14.978642','worker1@test.com','첫째작업자','$2a$10$EaO9VOVLrh4ojh9D2v7l..WQKgCktQkP6P0YblVS5bZEU8L3IvGoO','010-2222-1111',NULL,1,1),(5,'2024-05-15 23:58:21.760405',_binary '\0',NULL,'2024-05-15 23:58:21.760405','worker2@test.com','둘째작업자','$2a$10$kqitZ/ayoHThqZyUq8BpG.A3qBrSmR2een1z5Q6lZ13FBTW1ual8u','010-2222-1111',NULL,1,2),(6,'2024-05-15 23:58:27.727720',_binary '\0',NULL,'2024-05-15 23:58:27.727720','worker3@test.com','셋째작업자','$2a$10$1nf71TIhq2qjdpQU96JkKOQQG16ncIHNYSJm6J9K6SYnyZbWI3zMy','010-2222-1111',NULL,1,3),(7,'2024-05-15 23:58:33.927950',_binary '\0',NULL,'2024-05-15 23:58:33.927950','worker4@test.com','넷째작업자','$2a$10$rruDsPuJCmKV.YfCVZqDD.TmWwnAaYxgkL1AP8Bx/wPyqcFBWQzMS','010-2222-1111',NULL,1,4),(8,'2024-05-15 23:59:43.535518',_binary '\0',NULL,'2024-05-15 23:59:43.535518','manager4@test.com','넷째관리자','$2a$10$DJhthaayN1W6CSZSrHc6yu1C1/N8.N298/G6IF8Z4FQGRXGe1drh2','010-2222-1111',NULL,0,4),(9,'2024-05-16 12:31:40.372655',_binary '\0',NULL,'2024-05-16 12:31:40.372655','wonnyboi@test.com','정휘원','$2a$10$pqSqz3EQj7W.ZKb/8Efyp.hIJ45XalcO24qe1PNG9uk9UsjQa4Yna','010-0202-2020',NULL,3,6),(13,'2024-05-16 13:18:21.121676',_binary '\0',NULL,'2024-05-16 13:18:21.121676','test14@test.com','테스트트흐','$2a$10$rxNxJz1d2QdmjdbC46Ql2u7Tak7/Ue3YJsn82Bm9uqjFBBjjZIDPy','010-8542-6007',NULL,3,6),(14,'2024-05-17 15:51:23.630497',_binary '\0',NULL,'2024-05-17 15:51:23.630497','user1@test.com','사용자','$2a$10$a4y/g35d9JS1Jg.Ny/uD8uzpqMXqMlFiLnvi4x0i9DqkldU4zwd7.','010-1111-1111',NULL,3,6),(15,'2024-05-18 14:08:34.587646',_binary '\0',NULL,'2024-05-18 14:08:34.587646','manager5@test.com','매니저','$2a$10$nB/RAOcwFtbaB3tnf0L5Qelfy2sgbGZjRfaYLGLpYC0tzOQ9Z9.kS','010-8777-3150',NULL,0,5);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
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

-- Dump completed on 2024-05-19  0:14:30
