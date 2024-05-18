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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `image_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `modified_date_time` datetime(6) DEFAULT NULL,
  `image_order` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `damage_id` bigint DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FKfgrre3yo4gkkb8j3e45jnlkdi` (`damage_id`),
  CONSTRAINT `FKfgrre3yo4gkkb8j3e45jnlkdi` FOREIGN KEY (`damage_id`) REFERENCES `damage` (`damage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'2024-05-16 00:14:40.270381',_binary '\0','2024-05-16 00:14:40.270381',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715786036158_AM_rainny_CI03_20211021_104445_254_2.jpg',1),(2,'2024-05-16 00:23:40.118376',_binary '\0','2024-05-16 00:23:40.118376',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715786583552_AM_rainny_CI03_20211021_104445_254_2.jpg',2),(4,'2024-05-16 00:41:24.933402',_binary '\0','2024-05-16 00:41:24.933402',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',4),(7,'2024-05-16 00:43:24.872621',_binary '\0','2024-05-16 00:43:24.872621',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',7),(9,'2024-05-16 01:13:03.446908',_binary '\0','2024-05-16 01:13:03.446908',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715789582647_AM_rainny_CI03_20211021_104445_257_2.jpg',9),(15,'2024-05-16 01:23:39.898191',_binary '\0','2024-05-16 01:23:39.898191',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715790219063_AM_rainny_CI03_20211021_104445_254_2.jpg',15),(16,'2024-05-16 01:25:47.538886',_binary '\0','2024-05-16 01:25:47.538886',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715790347077_AM_sunny_CI01_20210916_121714_1_212_2.jpg',16),(24,'2024-05-16 01:36:36.322757',_binary '\0','2024-05-16 01:36:36.322757',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715790996099_1715790993922.jpg',24),(29,'2024-05-16 01:48:09.920123',_binary '\0','2024-05-16 01:48:09.920123',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715791687106_1715791679047.jpg',29),(30,'2024-05-16 01:48:15.241315',_binary '\0','2024-05-16 01:48:15.241315',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715791694835_1715791680374.jpg',30),(31,'2024-05-16 01:48:17.841314',_binary '\0','2024-05-16 01:48:17.841314',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715791697568_1715791688247.jpg',31),(33,'2024-05-16 01:48:31.548005',_binary '\0','2024-05-16 01:48:31.548005',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715791711380_1715791689221.jpg',33),(38,'2024-05-16 09:34:10.659692',_binary '\0','2024-05-16 09:34:10.659692',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',38),(39,'2024-05-16 09:35:56.376526',_binary '\0','2024-05-16 09:35:56.376526',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',39),(47,'2024-05-16 12:25:20.791136',_binary '\0','2024-05-16 12:25:20.791136',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',47),(68,'2024-05-16 14:04:51.516445',_binary '\0','2024-05-16 14:04:51.516445',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',68),(69,'2024-05-16 14:05:32.855308',_binary '\0','2024-05-16 14:05:32.855308',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',69),(82,'2024-05-16 17:21:13.081317',_binary '\0','2024-05-16 17:21:13.081317',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715847672496_AM_rainny_CI03_20211021_104445_257_2.jpg',82),(83,'2024-05-17 03:42:01.424164',_binary '\0','2024-05-17 03:42:01.424164',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715884920791_img4.jpg',83),(84,'2024-05-17 09:30:39.105144',_binary '\0','2024-05-17 09:30:39.105144',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715905838188_423FD9A7-7272-4EC9-A0BF-65F359812ACD.jpg',84),(85,'2024-05-17 09:35:12.949494',_binary '\0','2024-05-17 09:35:12.949494',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715906112265_423FD9A7-7272-4EC9-A0BF-65F359812ACD.jpg',85),(86,'2024-05-17 09:38:56.965939',_binary '\0','2024-05-17 09:38:56.965939',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715906336124_423FD9A7-7272-4EC9-A0BF-65F359812ACD.jpg',86),(88,'2024-05-17 14:39:10.564555',_binary '\0','2024-05-17 14:39:10.564555',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/DuringWork/1715924348717_Screenshot_20240514_143913.jpg',30),(93,'2024-05-17 15:31:42.524938',_binary '\0','2024-05-17 15:31:42.524938',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715927502330_1715927495095.jpg',94),(96,'2024-05-17 15:41:36.194534',_binary '\0','2024-05-17 15:41:36.194534',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715928096049_1715928085538.jpg',96),(98,'2024-05-17 16:00:33.369704',_binary '\0','2024-05-17 16:00:33.369704',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715929233237_1715599671926_1715599668056.jpg',7),(108,'2024-05-17 16:20:44.673596',_binary '\0','2024-05-17 16:20:44.673596',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715930444205_AM_rainny_CI03_20211021_104445_254_2.jpg',81),(113,'2024-05-17 16:51:24.647550',_binary '\0','2024-05-17 16:51:24.647550',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715932284568_1715599671926_1715599668056.jpg',97),(114,'2024-05-17 18:19:53.473796',_binary '\0','2024-05-17 18:19:53.473796',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',98),(115,'2024-05-17 18:21:56.350211',_binary '\0','2024-05-17 18:21:56.350211',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',99),(116,'2024-05-17 20:45:35.212869',_binary '\0','2024-05-17 20:45:35.212869',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1715946334969_AM_rainny_CI03_20211021_104445_254_2.jpg',100),(117,'2024-05-18 06:46:14.070602',_binary '\0','2024-05-18 06:46:14.070602',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',101),(118,'2024-05-18 08:09:32.805861',_binary '\0','2024-05-18 08:09:32.805861',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',102),(119,'2024-05-18 12:57:14.623555',_binary '\0','2024-05-18 12:57:14.623555',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',103),(120,'2024-05-18 13:04:07.342958',_binary '\0','2024-05-18 13:04:07.342958',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',104),(121,'2024-05-18 13:05:20.591224',_binary '\0','2024-05-18 13:05:20.591224',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',105),(122,'2024-05-18 13:05:50.979939',_binary '\0','2024-05-18 13:05:50.979939',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',106),(123,'2024-05-18 13:09:53.459224',_binary '\0','2024-05-18 13:09:53.459224',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1716005392303_1715599671926_1715599668056.jpg',107),(124,'2024-05-18 13:11:02.754712',_binary '\0','2024-05-18 13:11:02.754712',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',108),(125,'2024-05-18 14:00:50.071911',_binary '\0','2024-05-18 14:00:50.071911',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',109),(126,'2024-05-18 15:35:57.291587',_binary '\0','2024-05-18 15:35:57.291587',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',110),(127,'2024-05-18 15:44:24.329219',_binary '\0','2024-05-18 15:44:24.329219',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',111),(128,'2024-05-18 15:44:36.483784',_binary '\0','2024-05-18 15:44:36.483784',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',112),(129,'2024-05-18 15:44:52.593860',_binary '\0','2024-05-18 15:44:52.593860',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/Default/default.jpg',113),(136,'2024-05-18 16:29:37.987365',_binary '\0','2024-05-18 16:29:37.987365',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1716017377772_1716017373993.jpg',120),(137,'2024-05-18 16:33:28.544441',_binary '\0','2024-05-18 16:33:28.544441',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/BeforeWork/1716017608283_1716017605105.jpg',121),(138,'2024-05-18 17:40:11.076391',_binary '\0','2024-05-18 17:40:11.076391',1,'https://mine702-amazon-s3.s3.amazonaws.com/AfterVerification/BeforeWork/20240518_174006.jpg',123),(139,'2024-05-18 21:08:12.372296',_binary '\0','2024-05-18 21:08:12.372296',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/DuringWork/1716034091019_Screenshot_20240514_143913.jpg',33),(140,'2024-05-18 21:08:14.575446',_binary '\0','2024-05-18 21:08:14.575446',1,'https://mine702-amazon-s3.s3.ap-northeast-2.amazonaws.com/AfterVerification/AfterWork/1716034094399_2024-04-29_PM0413.jpg',33),(141,'2024-05-18 23:44:30.945300',_binary '\0','2024-05-18 23:44:30.945300',1,'https://mine702-amazon-s3.s3.amazonaws.com/AfterVerification/BeforeWork/20240518_144427.jpg',128);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
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

-- Dump completed on 2024-05-19  0:14:29
