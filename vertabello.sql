-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (x86_64)
--
-- Host: localhost    Database: vertabello
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adaptation`
--

DROP TABLE IF EXISTS `adaptation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adaptation` (
  `book_id` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `release_year` int NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  KEY `book_id` (`book_id`),
  CONSTRAINT `adaptation_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adaptation`
--

LOCK TABLES `adaptation` WRITE;
/*!40000 ALTER TABLE `adaptation` DISABLE KEYS */;
INSERT INTO `adaptation` VALUES (1,'movie','Gone With The Wolves: The Beginning',2008,3.0),(3,'movie','Companions Of Tomorrow',2001,4.2),(5,'movie','Homeless Warrior',2008,4.0),(2,'movie','Blacksmith With Silver',2014,4.3),(4,'movie','Patrons And earers',2004,3.2),(3,'game','Companions Of Tomorrow',2009,4.4),(6,'movie','Defenders Of Fire',1960,4.6),(6,'game','Defenders Of Fire: Fire Awakening',2003,3.9),(9,'musical','Music At The Lake',2007,4.3),(9,'game',' Music At The Lake',2008,3.6),(2,'game','Silver Blacksmith',1988,3.4),(10,'musical','Lighting Faith',1947,4.2),(11,'musical','Companions And Officers',1934,4.1);
/*!40000 ALTER TABLE `adaptation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `birth_year` int NOT NULL,
  `death_year` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Marcella Cole',1983,NULL),(2,'Lisa Mullins',1891,1950),(3,'Dennis Stokes',1935,1994),(4,'Randolph Vasquez',1957,2004),(5,'Daniel Branson',1965,1990),(6,'Michael Rostkovsky',1987,NULL),(7,'Brendan Hayes',1985,NULL),(8,'Claudia Johnson',1974,2010),(9,'Ray Henry',1974,NULL),(10,'Darlene Lyons',1978,NULL),(11,'Ed Mason',1960,2013),(12,'Dominic Arnold',1980,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `publish_year` int NOT NULL,
  `publishing_house` varchar(255) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,NULL,'Soulless girl',2008,'Golden Albatros',4.3),(2,NULL,'Weak Heart',1980,'Diarmud Inc.',3.8),(3,4,'Faith Of Light',1995,'White Cloud Press',4.3),(4,NULL,'Memory Of Hope',2000,'Rutis Enterprises',2.7),(5,6,'Warrior Of Wind',2005,'Maverick',4.6),(6,11,'Defenders Of Fire',1920,'White Cloud Press',4.9),(7,11,'Patrons And Bearers',1925,'Golden Albatros',5.0),(8,9,'Beast In The Mist',2000,'Rutis Enterprises',4.2),(9,9,'Music At The Lake',2004,'White Cloud Press',3.6),(10,12,'Companion Of Tomorrow',1949,'Golden Albatros',3.4),(11,2,'Companions And Officers',1930,'Helix',4.5),(12,12,'Spirits Of Dreams',1946,'Helix',4.4),(13,8,'Mistresses And Gods',2000,'Golden Albatros',4.1),(14,8,'Accident Of Freedom',1993,'White Cloud Press',2.8),(15,10,'Whispers Of Eternity',2004,'Vanguard Publications',3.3),(16,1,'Gone With The Wolves',2005,'Helix',4.5),(17,3,'Blacksmith With Silver',1984,'Diarmud Inc.',3.6),(18,10,'Warrior Without A Home',2002,'Vanguard Publications',3.7),(19,10,'Tempations In Nature',2007,'Maverick',3.9),(20,9,'Guarding The Emperor',1988,'Flying Pen Media',4.1),(21,NULL,'Crossbow Of Wind',2006,'Flying Pen Media',4.0),(22,NULL,'Weep Of The West',2001,'Flying Pen Media',4.9);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_review`
--

DROP TABLE IF EXISTS `book_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_review` (
  `book_id` int DEFAULT NULL,
  `review` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  KEY `book_id` (`book_id`),
  CONSTRAINT `book_review_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_review`
--

LOCK TABLES `book_review` WRITE;
/*!40000 ALTER TABLE `book_review` DISABLE KEYS */;
INSERT INTO `book_review` VALUES (1,'An incredible book','Sylvia Jones'),(1,'Greate, although it has some flaws','Jessica Parker'),(2,'Dennis Stokes takes the reader for a ride full of emotions','Thomas Green'),(3,'Incredible craftmanship of the author','Martin Freeman'),(4,'Not the best book by this author','Jude Falth'),(5,'Claudia Johnson at her best!','Joe Marqiz'),(6,'I cannot recall more captivating plot','Alexander Durham');
/*!40000 ALTER TABLE `book_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vertabello'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17 13:38:33
