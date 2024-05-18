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
-- Table structure for table `damage`
--

DROP TABLE IF EXISTS `damage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `damage` (
  `dtype` varchar(31) NOT NULL,
  `damage_id` bigint NOT NULL AUTO_INCREMENT,
  `created_date_time` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `modified_date_time` datetime(6) DEFAULT NULL,
  `damage_address` varchar(255) NOT NULL,
  `damage_count` bigint DEFAULT NULL,
  `damage_dir_x` double NOT NULL,
  `damage_dir_y` double NOT NULL,
  `damage_severity` int DEFAULT NULL,
  `damage_status` enum('작업전','작업중','작업완료') NOT NULL,
  `damage_width` double NOT NULL,
  `area_id` bigint DEFAULT NULL,
  `hexagon_id` bigint DEFAULT NULL,
  `location_id` bigint DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`damage_id`),
  KEY `idx_damage_address` (`damage_address`),
  KEY `idx_damage_status` (`damage_status`),
  KEY `idx_damage_area_id` (`area_id`),
  KEY `idx_damage_location_id` (`location_id`),
  KEY `FK8cwhxjxdkxa2eawx4ttoihb9a` (`hexagon_id`),
  KEY `FK9qpelrwdxn2hyyk5lps72e6os` (`member_id`),
  CONSTRAINT `FK3v72kuyv1yywej1e2qv1ptwid` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `FK8cwhxjxdkxa2eawx4ttoihb9a` FOREIGN KEY (`hexagon_id`) REFERENCES `hexagon` (`hexagon_id`),
  CONSTRAINT `FK9qpelrwdxn2hyyk5lps72e6os` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FKlvmb0c0b7k9yd3a4bbi6r00gr` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `damage`
--

LOCK TABLES `damage` WRITE;
/*!40000 ALTER TABLE `damage` DISABLE KEYS */;
INSERT INTO `damage` VALUES ('POTHOLE',1,'2024-05-16 00:14:40.170690',_binary '\0','2024-05-16 16:34:20.380717','대전 대덕구 송촌동 523',0,127.43979357554765,36.36301073425273,1,'작업중',148.1300048828125,1,4612036,12,5),('POTHOLE',2,'2024-05-16 00:23:40.058376',_binary '\0','2024-05-18 08:08:48.241714','대전 유성구 탑립동 948',0,127.41063961503293,36.414725030664925,1,'작업중',148.1300048828125,4,14587410,163,5),('POTHOLE',4,'2024-05-16 00:41:24.892080',_binary '\0','2024-05-16 09:33:26.003708','대전 유성구 어은동 316',0,127.35645133749746,36.36323437083212,3,'작업중',0,4,NULL,153,5),('POTHOLE',7,'2024-05-16 00:43:24.820964',_binary '\0','2024-05-18 08:12:33.889279','대전 유성구 궁동 43-22',0,127.34751818071194,36.36137723363103,2,'작업중',0,4,NULL,169,5),('POTHOLE',9,'2024-05-16 01:13:03.391912',_binary '\0','2024-05-16 01:13:03.391912','대전 서구 탄방동 85-14',0,127.39366245590502,36.34048067745031,1,'작업전',175.88999938964844,5,5225330,119,4),('POTHOLE',15,'2024-05-16 01:23:39.842191',_binary '\0','2024-05-16 01:23:39.842191','대전 중구 중촌동 413-19',0,127.41245937668138,36.34338439670876,1,'작업전',148.1300048828125,3,3940680,47,4),('POTHOLE',16,'2024-05-16 01:25:47.503894',_binary '\0','2024-05-16 01:25:47.503894','대전 동구 삼성동 283-58',0,127.42401959113008,36.33674479436921,2,'작업전',0,2,NULL,63,4),('POTHOLE',24,'2024-05-16 01:36:36.306647',_binary '\0','2024-05-16 10:16:45.355878','대전 유성구 구암동 692',0,127.310455,36.3588929,1,'작업전',90.31999969482422,4,14994655,130,7),('POTHOLE',29,'2024-05-16 01:48:09.574520',_binary '\0','2024-05-16 09:06:19.406285','대전 유성구 구암동 541',0,127.3106239,36.3589682,1,'작업중',73.16000366210938,4,13990994,130,7),('POTHOLE',30,'2024-05-16 01:48:15.230817',_binary '\0','2024-05-18 21:09:57.298741','대전 유성구 구암동 541',0,127.3106239,36.3589682,1,'작업완료',83.36000061035156,4,13990994,130,7),('POTHOLE',31,'2024-05-16 01:48:17.837759',_binary '\0','2024-05-16 09:04:43.438642','대전 유성구 구암동 541',0,127.3106135,36.3589586,3,'작업중',184.11000061035156,4,14709213,130,7),('POTHOLE',33,'2024-05-16 01:48:31.544710',_binary '\0','2024-05-18 21:08:15.195601','대전 유성구 구암동 541',0,127.3106135,36.3589586,1,'작업완료',78.9000015258789,4,14709213,130,7),('POTHOLE',38,'2024-05-16 09:34:10.655898',_binary '\0','2024-05-16 09:35:40.694413','대전 유성구 덕명동 132-4',0,127.30075083428723,36.35438481384114,3,'작업중',0,4,NULL,135,8),('POTHOLE',39,'2024-05-16 09:35:56.373290',_binary '\0','2024-05-16 09:39:29.721939','대전 유성구 덕명동 150-6',0,127.29963125855903,36.3529547554681,3,'작업중',0,4,NULL,135,8),('POTHOLE',47,'2024-05-16 12:25:20.786625',_binary '\0','2024-05-16 12:25:25.008266','대전 유성구 어은동 52-11',0,127.35856342618575,36.36458882318653,3,'작업중',0,4,NULL,153,8),('POTHOLE',68,'2024-05-16 14:04:51.361528',_binary '\0','2024-05-17 14:29:44.452713','대전 유성구 구암동 541',0,127.31188851530925,36.35915051831106,3,'작업중',0,4,NULL,130,8),('POTHOLE',69,'2024-05-16 14:05:32.852011',_binary '\0','2024-05-17 14:23:22.216481','대전 유성구 덕명동 569',0,127.30226193817694,36.35621489498592,3,'작업중',0,4,NULL,135,8),('POTHOLE',81,'2024-05-16 16:53:20.257598',_binary '\0','2024-05-16 16:53:20.257598','대전 대덕구 비래동 산 37-26',0,127.45685882907887,36.35411162269236,1,'작업전',175.88999938964844,1,4326184,8,7),('POTHOLE',82,'2024-05-16 17:21:13.068294',_binary '\0','2024-05-16 17:21:13.068294','대전 대덕구 비래동 377',0,127.45067430389541,36.3649112336077,1,'작업전',175.88999938964844,1,5789945,8,7),('POTHOLE',83,'2024-05-17 03:42:01.384155',_binary '\0','2024-05-17 03:42:01.384155','대전 동구 용전동 232',0,127.43615420142623,36.35400214437161,1,'작업전',9.789999961853027,2,15203387,73,7),('POTHOLE',84,'2024-05-17 09:30:39.068152',_binary '\0','2024-05-17 09:30:39.068152','대전 동구 용전동 222',0,127.43085666530166,36.3550058443664,1,'작업전',14.8100004196167,2,4867370,73,7),('POTHOLE',85,'2024-05-17 09:35:12.938496',_binary '\0','2024-05-17 09:35:12.938496','대전 중구 유천동 295-31',0,127.39534478786287,36.31375953132742,1,'작업전',14.8100004196167,3,6445367,44,7),('POTHOLE',86,'2024-05-17 09:38:56.932896',_binary '\0','2024-05-17 09:38:56.932896','대전 중구 유천동 170-21',0,127.40092378261384,36.31479694204479,1,'작업전',14.8100004196167,3,7520548,44,7),('POTHOLE',89,'2024-05-17 12:38:21.034067',NULL,'2024-05-17 12:38:21.034067','대전 중구 태평동 531',0,127.39478127024131,36.3258773038529,1,'작업전',148.1300048828125,3,6143273,49,1),('POTHOLE',94,'2024-05-17 15:31:42.502908',NULL,'2024-05-18 08:12:24.636486','대전 유성구 구암동 514',0,127.3055548,36.3606683,1,'작업중',13.170000076293945,4,9036072,130,7),('POTHOLE',96,'2024-05-17 15:41:36.180610',NULL,'2024-05-18 08:08:41.083000','대전 유성구 지족동 941',0,127.3249544,36.3766486,1,'작업중',20.1299991607666,4,3148366,161,7),('POTHOLE',97,'2024-05-17 16:50:51.707637',_binary '\0','2024-05-17 16:50:51.707637','대전 유성구 덕명동 569',0,127.30257655728629,36.35690349851844,3,'작업전',0,4,NULL,135,8),('POTHOLE',98,'2024-05-17 18:19:53.458945',_binary '\0','2024-05-18 08:08:41.082848','대전 유성구 덕명동 525',0,127.30274189550362,36.35644347986289,3,'작업중',0,4,NULL,135,8),('POTHOLE',99,'2024-05-17 18:21:56.346669',_binary '\0','2024-05-17 18:21:56.346669','대전 유성구 덕명동 569',0,127.30319905315898,36.357974320103644,3,'작업전',0,4,NULL,135,8),('POTHOLE',100,'2024-05-17 20:45:35.172043',NULL,'2024-05-17 20:45:35.172043','대전 유성구 덕명동 569',0,127.30224623689222,36.356476275818885,1,'작업전',25.190000534057617,4,11799555,135,1),('POTHOLE',101,'2024-05-18 06:46:14.008545',_binary '\0','2024-05-18 08:08:11.874412','대전 유성구 어은동 109',0,127.35621824343967,36.362207727830075,2,'작업중',0,4,NULL,153,8),('POTHOLE',102,'2024-05-18 08:09:32.794672',_binary '\0','2024-05-18 08:09:32.794672','대전 유성구 봉명동 496-1',0,127.35625050401246,36.36072970624234,2,'작업전',0,4,NULL,143,8),('POTHOLE',103,'2024-05-18 12:57:14.614396',_binary '\0','2024-05-18 12:57:14.614396','대전 서구 월평동 29-1',0,127.36105668549642,36.353163436657056,3,'작업전',0,5,NULL,116,8),('POTHOLE',104,'2024-05-18 13:04:07.340176',_binary '\0','2024-05-18 13:04:07.340176','대전 서구 월평동 194',0,127.35999832818348,36.35316662986913,3,'작업전',0,5,NULL,116,8),('POTHOLE',105,'2024-05-18 13:05:20.588306',_binary '\0','2024-05-18 13:05:20.588306','대전 서구 월평동 1528-1',0,127.36536205213044,36.354240771794196,3,'작업전',0,5,NULL,116,8),('POTHOLE',106,'2024-05-18 13:05:50.976579',_binary '\0','2024-05-18 13:05:50.976579','대전 서구 월평동 1528',0,127.36330055232509,36.35414792808509,3,'작업전',0,5,NULL,116,8),('POTHOLE',107,'2024-05-18 13:09:53.439478',_binary '\0','2024-05-18 13:09:53.439478','대전 서구 월평동 1528-2',0,127.35686670713093,36.35293270617838,3,'작업전',0,5,NULL,116,8),('POTHOLE',108,'2024-05-18 13:11:02.747772',_binary '\0','2024-05-18 13:11:02.747772','대전 서구 월평동 1528-2',0,127.35686670713093,36.35293270617838,3,'작업전',0,5,NULL,116,8),('POTHOLE',109,'2024-05-18 14:00:50.069080',_binary '\0','2024-05-18 14:00:50.069080','대전 유성구 어은동 316',0,127.35738797773308,36.36216818774277,3,'작업전',0,4,NULL,153,8),('POTHOLE',110,'2024-05-18 15:35:57.182754',_binary '\0','2024-05-18 15:35:57.182754','대전 유성구 궁동 33-6',0,127.3482245601652,36.36112284822032,2,'작업전',0,4,NULL,169,8),('POTHOLE',111,'2024-05-18 15:44:24.312061',_binary '\0','2024-05-18 15:44:24.312061','대전 유성구 구암동 634',0,127.33164963358377,36.35259757384931,3,'작업전',0,4,NULL,130,8),('POTHOLE',112,'2024-05-18 15:44:36.448687',_binary '\0','2024-05-18 15:44:36.448687','대전 유성구 장대동 333',0,127.33613544586095,36.362058644054294,1,'작업전',0,4,NULL,159,8),('POTHOLE',113,'2024-05-18 15:44:52.588807',_binary '\0','2024-05-18 15:44:52.588807','대전 유성구 구암동 559',0,127.32732202509288,36.35638768645317,2,'작업전',0,4,NULL,130,8),('POTHOLE',120,'2024-05-18 16:29:37.966531',NULL,'2024-05-18 16:29:37.966531','대전 서구 월평동 17-3',0,127.3601151,36.3530644,1,'작업전',8.970000267028809,5,9865201,116,4),('POTHOLE',121,'2024-05-18 16:33:28.511666',NULL,'2024-05-18 16:33:28.511666','대전 서구 월평동 195-3',0,127.3605761,36.3530447,1,'작업전',6.889999866485596,5,10830361,116,4),('POTHOLE',123,'2024-05-18 17:40:11.018008',NULL,'2024-05-18 17:40:11.018008','대전 서구 가수원동 471',0,127.35337611995004,36.303245778683845,1,'작업전',26.3799991607666,5,9922802,123,5),('POTHOLE',128,'2024-05-18 23:44:30.920628',NULL,'2024-05-18 23:44:30.920628','대전 서구 도안동 1767',0,127.35155940083902,36.30637238382357,1,'작업전',29.1299991607666,5,10150523,104,4);
/*!40000 ALTER TABLE `damage` ENABLE KEYS */;
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
