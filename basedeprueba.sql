-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: hbnb_dev_db
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amenities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES ('c3b6f26a-11e5-4007-90e3-94ae79e5a750','2020-09-10 15:53:12','2020-09-10 15:53:12','Pornhub premium');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  `state_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('0d9d4f7c-a497-4e72-a15b-489ee22bade2','2020-09-10 14:51:49','2020-09-10 14:51:49','Bossier City','ea338ee1-d78e-44c6-9f84-c6d7ff30ac14'),('521a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Akron','421a55f4-7d82-47d9-b54c-a76916479545'),('521a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','Douglas','421a55f4-7d82-47d9-b54c-a76916479546'),('521a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','San Francisco','421a55f4-7d82-47d9-b54c-a76916479547'),('521a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:42:41','2017-03-25 19:42:41','Denver','421a55f4-7d82-47d9-b54c-a76916479548'),('521a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:42:41','2017-03-25 19:42:41','Miami','421a55f4-7d82-47d9-b54c-a76916479549'),('521a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','Honolulu','421a55f4-7d82-47d9-b54c-a76916479551'),('521a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Chicago','421a55f4-7d82-47d9-b54c-a76916479552'),('521a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','New Orleans','421a55f4-7d82-47d9-b54c-a76916479554'),('521a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:42:41','2017-03-25 19:42:41','Saint Paul','421a55f4-7d82-47d9-b54c-a76916479555'),('521a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','Jackson','421a55f4-7d82-47d9-b54c-a76916479556'),('521a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:42:41','2017-03-25 19:42:41','Portland','421a55f4-7d82-47d9-b54c-a76916479557'),('531a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Babbie','421a55f4-7d82-47d9-b54c-a76916479545'),('531a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','Kearny','421a55f4-7d82-47d9-b54c-a76916479546'),('531a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','San Jose','421a55f4-7d82-47d9-b54c-a76916479547'),('531a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:42:41','2017-03-25 19:42:41','Orlando','421a55f4-7d82-47d9-b54c-a76916479549'),('531a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','Kailua','421a55f4-7d82-47d9-b54c-a76916479551'),('531a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Peoria','421a55f4-7d82-47d9-b54c-a76916479552'),('531a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','Bossier City','421a55f4-7d82-47d9-b54c-a76916479554'),('531a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','Tupelo','421a55f4-7d82-47d9-b54c-a76916479556'),('531a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:42:41','2017-03-25 19:42:41','Eugene','421a55f4-7d82-47d9-b54c-a76916479557'),('541a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Calera','421a55f4-7d82-47d9-b54c-a76916479545'),('541a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','Tempe','421a55f4-7d82-47d9-b54c-a76916479546'),('541a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','Fremont','421a55f4-7d82-47d9-b54c-a76916479547'),('541a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','Pearl city','421a55f4-7d82-47d9-b54c-a76916479551'),('541a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Naperville','421a55f4-7d82-47d9-b54c-a76916479552'),('541a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','Lafayette','421a55f4-7d82-47d9-b54c-a76916479554'),('541a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','Meridian','421a55f4-7d82-47d9-b54c-a76916479556'),('551a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Fairfield','421a55f4-7d82-47d9-b54c-a76916479545'),('551a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','Napa','421a55f4-7d82-47d9-b54c-a76916479547'),('551a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Urbana','421a55f4-7d82-47d9-b54c-a76916479552'),('561a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','Sonoma','421a55f4-7d82-47d9-b54c-a76916479547'),('561a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','Joliet','421a55f4-7d82-47d9-b54c-a76916479552'),('d2b990c0-d614-4490-8d2d-f0c987fa6ade','2020-09-10 12:34:03','2020-09-10 12:34:03','Alexandria','421a55f4-7d82-47d9-b54c-a76916479554');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_amenity`
--

DROP TABLE IF EXISTS `place_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `place_amenity_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `place_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_amenity`
--

LOCK TABLES `place_amenity` WRITE;
/*!40000 ALTER TABLE `place_amenity` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `number_rooms` int(11) NOT NULL,
  `number_bathrooms` int(11) NOT NULL,
  `max_guest` int(11) NOT NULL,
  `price_by_night` int(11) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('aea5619a-67a2-4169-ada0-92ffe5397013','2020-09-10 17:51:18','2020-09-10 17:51:18','0d9d4f7c-a497-4e72-a15b-489ee22bade2','4028eb8e-dc59-4e2d-a037-b079d3fd9598','plazoleta',NULL,0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('e2c88d53-4b8d-4c70-bcf5-2caeb746a9c1','2020-09-10 17:57:53','2020-09-10 17:57:53','aea5619a-67a2-4169-ada0-92ffe5397013','4028eb8e-dc59-4e2d-a037-b079d3fd9598','Epa Colombia, Epa Epa Epa');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('421a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Alabama'),('421a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','Arizona'),('421a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','California'),('421a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:42:40','2017-03-25 19:42:40','Colorado'),('421a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:42:40','2017-03-25 19:42:40','Florida'),('421a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:40','2017-03-25 19:42:40','Hawaii'),('421a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:40','2017-03-25 19:42:40','Illinois'),('421a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:40','2017-03-25 19:42:40','Louisiana'),('421a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:42:40','2017-03-25 19:42:40','Minnesota'),('421a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:40','2017-03-25 19:42:40','Mississippi'),('421a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:42:40','2017-03-25 19:42:40','Oregon'),('ea338ee1-d78e-44c6-9f84-c6d7ff30ac14','2020-09-09 19:24:44','2020-09-09 19:24:44','Indiana cool');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('4028eb8e-dc59-4e2d-a037-b079d3fd9598','2020-09-10 16:48:07','2020-09-10 16:48:07','Diego','123456789',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-10 18:22:26
