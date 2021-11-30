-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: article
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `article_author`
--

DROP TABLE IF EXISTS `article_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_author_ibfk_1` (`article_id`),
  KEY `article_author_ibfk_2` (`author_id`),
  CONSTRAINT `article_author_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_author`
--

LOCK TABLES `article_author` WRITE;
/*!40000 ALTER TABLE `article_author` DISABLE KEYS */;
INSERT INTO `article_author` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,4),(6,5,5),(7,5,6),(8,6,5),(9,7,6),(10,8,7),(11,9,8),(12,10,9),(13,10,10),(14,11,6);
/*!40000 ALTER TABLE `article_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `article` text NOT NULL,
  `status_id` int NOT NULL,
  `date_of_publication` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_ibfk_1` (`status_id`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status_for_article` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Left you dead',1,'2010-04-24'),(2,'A gambling man',1,'2018-10-20'),(3,'Sunset swing',1,'2012-12-12'),(4,'Riccardino',1,'2020-02-20'),(5,'Stardust',1,'2018-03-15'),(6,'Jade city',1,'2018-04-04'),(7,'The last unicorn',1,'2016-05-05'),(8,'The top twenty',2,'2021-05-15'),(9,'2The thousand autumns of jacob de zoet',1,'2020-02-02'),(10,'The buddha in the attic',1,'2017-04-12'),(11,'The tigers wife',3,'2016-02-12');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `status_id` int NOT NULL,
  `date_of_registration` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `authors_ibfk_1` (`status_id`),
  CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status_for_author` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Peter James',1,'2008-11-14'),(2,'David Baldacci',1,'2015-12-09'),(3,'Ray Celestin',1,'2010-03-03'),(4,'Neil Gaiman',1,'2009-08-18'),(5,'Fonda Lee',1,'2013-01-01'),(6,'Peter Beagle',1,'2015-10-10'),(7,'Jennifer Egan',1,'2009-03-13'),(8,'David Mitchell',1,'2014-10-01'),(9,'Julie Otsuka',1,'2011-09-08'),(10,'Train Dreams',1,'2013-09-13'),(11,'Diana Voronovich',3,'2017-07-17'),(12,'Pavel Davidovich',2,'2016-06-06');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_of_category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Name_of_category` (`name_of_category`),
  UNIQUE KEY `name_of_category_2` (`name_of_category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Detective'),(2,'Fantasy'),(3,'Novel');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_article`
--

DROP TABLE IF EXISTS `category_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `article_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_article_ibfk_2` (`category_id`),
  KEY `article_author_ibfk_1` (`article_id`),
  CONSTRAINT `category_article_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_article_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_article`
--

LOCK TABLES `category_article` WRITE;
/*!40000 ALTER TABLE `category_article` DISABLE KEYS */;
INSERT INTO `category_article` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,5),(6,2,6),(7,2,7),(8,3,8),(9,3,9),(10,3,10),(11,3,11);
/*!40000 ALTER TABLE `category_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_for_article`
--

DROP TABLE IF EXISTS `status_for_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_for_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_for_article`
--

LOCK TABLES `status_for_article` WRITE;
/*!40000 ALTER TABLE `status_for_article` DISABLE KEYS */;
INSERT INTO `status_for_article` VALUES (1,'Approved'),(3,'In progress'),(2,'Not approved');
/*!40000 ALTER TABLE `status_for_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_for_author`
--

DROP TABLE IF EXISTS `status_for_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_for_author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_for_author`
--

LOCK TABLES `status_for_author` WRITE;
/*!40000 ALTER TABLE `status_for_author` DISABLE KEYS */;
INSERT INTO `status_for_author` VALUES (1,'Approved'),(2,'Not approved'),(3,'In progress');
/*!40000 ALTER TABLE `status_for_author` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 13:18:18
