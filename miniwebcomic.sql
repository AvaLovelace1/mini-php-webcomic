/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.2-MariaDB, for osx10.20 (arm64)
--
-- Host: localhost    Database: miniwebcomic
-- ------------------------------------------------------
-- Server version	11.8.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `comics`
--

DROP TABLE IF EXISTS `comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comics` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `episode_id` smallint(5) unsigned NOT NULL,
  `page_number` smallint(5) unsigned NOT NULL DEFAULT 1,
  `publish_date` date NOT NULL,
  `featured_characters` text DEFAULT NULL,
  `hover` text DEFAULT NULL,
  `transcript` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comics_episodes_id_fk` (`episode_id`),
  CONSTRAINT `comics_episodes_id_fk` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics`
--

LOCK TABLES `comics` WRITE;
/*!40000 ALTER TABLE `comics` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `comics` VALUES
(1,1,1,'2023-12-01','Character 1, Character 2','Add your hover text here.','<p>Write your comic description or transcript here.</p>'),
(2,1,2,'2023-12-01','Character 1, Character 2','Add your hover text here.','<p>Write your comic description or transcript here.</p>'),
(3,1,3,'2023-12-01','Character 1, Character 2','Add your hover text here.','<p>Write your comic description or transcript here.</p>'),
(4,2,1,'2023-12-02','Character 1, Character 2','Add your hover text here.','<p>Write your comic description or transcript here.</p>'),
(5,3,1,'2023-12-03','Character 1, Character 2','Add your hover text here.','<p>Write your comic description or transcript here.</p>'),
(6,3,2,'2023-12-03','Character 1, Character 2','Add your hover text here.','<p>Write your comic description or transcript here.</p>'),
(7,3,3,'2023-12-03','Character 1, Character 2','Add your hover text here.','<p>Write your comic description or transcript here.</p>');
/*!40000 ALTER TABLE `comics` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodes` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `filename` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `episodes_filename_uindex` (`filename`),
  UNIQUE KEY `episodes_title_uindex` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodes`
--

LOCK TABLES `episodes` WRITE;
/*!40000 ALTER TABLE `episodes` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `episodes` VALUES
(1,'Hydrogen for President','hydrogen-for-president.jpg'),
(2,'Study Time','study-time.jpg'),
(3,'Carbon Copies','carbon-copies.jpg');
/*!40000 ALTER TABLE `episodes` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-07-26 15:36:29
