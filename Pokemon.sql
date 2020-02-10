CREATE DATABASE  IF NOT EXISTS `pokemon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pokemon`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: pokemon
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `evolution`
--

DROP TABLE IF EXISTS `evolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evolution` (
  `EVOLUTION_FROM` int NOT NULL,
  `EVOLUTION_TO` int NOT NULL,
  PRIMARY KEY (`EVOLUTION_FROM`),
  UNIQUE KEY `EVOLUTION_FROM_UNIQUE` (`EVOLUTION_FROM`),
  UNIQUE KEY `EVOLUTION_TO_UNIQUE` (`EVOLUTION_TO`),
  KEY `FK_evolution_to_idx` (`EVOLUTION_TO`),
  CONSTRAINT `FK_evolution` FOREIGN KEY (`EVOLUTION_FROM`) REFERENCES `pkmon` (`PKMON_DEX`),
  CONSTRAINT `FK_evolution_to` FOREIGN KEY (`EVOLUTION_TO`) REFERENCES `pkmon` (`PKMON_DEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolution`
--

LOCK TABLES `evolution` WRITE;
/*!40000 ALTER TABLE `evolution` DISABLE KEYS */;
INSERT INTO `evolution` VALUES (1,2),(2,3);
/*!40000 ALTER TABLE `evolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `move`
--

DROP TABLE IF EXISTS `move`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `move` (
  `MOVE_NAME` char(20) NOT NULL,
  `MOVE_PP` int NOT NULL,
  `MOVE_POWER` int NOT NULL,
  `MOVE_ACCURACY` decimal(3,2) NOT NULL,
  `MOVE_TYPE` char(8) NOT NULL,
  `MOVE_CAT` char(10) NOT NULL,
  PRIMARY KEY (`MOVE_NAME`),
  UNIQUE KEY `MOVE_NAME` (`MOVE_NAME`),
  KEY `FK_Move_type` (`MOVE_TYPE`),
  CONSTRAINT `FK_Move_type` FOREIGN KEY (`MOVE_TYPE`) REFERENCES `type` (`TYPE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `move`
--

LOCK TABLES `move` WRITE;
/*!40000 ALTER TABLE `move` DISABLE KEYS */;
INSERT INTO `move` VALUES ('Earthquake',10,90,1.00,'Ground','Special'),('Solar Beam',10,120,1.00,'Grass','Special'),('Tackle',35,40,1.00,'Normal','Physical'),('Thunder Shock',30,40,1.00,'Electric','Special');
/*!40000 ALTER TABLE `move` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moveset`
--

DROP TABLE IF EXISTS `moveset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moveset` (
  `MOVESET_PKMON` int NOT NULL,
  `MOVESET_MOVE` char(20) NOT NULL,
  `MOVESET_LEVEL` int NOT NULL,
  PRIMARY KEY (`MOVESET_PKMON`,`MOVESET_MOVE`),
  KEY `fk_move` (`MOVESET_MOVE`),
  CONSTRAINT `fk_move` FOREIGN KEY (`MOVESET_MOVE`) REFERENCES `move` (`MOVE_NAME`),
  CONSTRAINT `fk_pkmon` FOREIGN KEY (`MOVESET_PKMON`) REFERENCES `pkmon` (`PKMON_DEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moveset`
--

LOCK TABLES `moveset` WRITE;
/*!40000 ALTER TABLE `moveset` DISABLE KEYS */;
INSERT INTO `moveset` VALUES (25,'Thunder Shock',1);
/*!40000 ALTER TABLE `moveset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkmon`
--

DROP TABLE IF EXISTS `pkmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkmon` (
  `PKMON_DEX` int NOT NULL,
  `PKMON_NAME` text NOT NULL,
  `PKMON_TYPE` char(8) NOT NULL,
  `PKMON_SECTYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`PKMON_DEX`),
  KEY `pkmon_type_TYPE_TYPE_fk` (`PKMON_TYPE`),
  KEY `pkmon_type_TYPE_TYPE_fk_2` (`PKMON_SECTYPE`),
  CONSTRAINT `pkmon_type_TYPE_TYPE_fk` FOREIGN KEY (`PKMON_TYPE`) REFERENCES `type` (`TYPE_TYPE`),
  CONSTRAINT `pkmon_type_TYPE_TYPE_fk_2` FOREIGN KEY (`PKMON_SECTYPE`) REFERENCES `type` (`TYPE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkmon`
--

LOCK TABLES `pkmon` WRITE;
/*!40000 ALTER TABLE `pkmon` DISABLE KEYS */;
INSERT INTO `pkmon` VALUES (1,'Bulbasaur','Grass','Poison'),(2,'Ivysaur','Grass','Poison'),(3,'Venusaur','Grass','Poison'),(4,'Charmander','Fire',NULL),(5,'Charmeleon','Fire',NULL),(6,'Charizard','Fire','Flying'),(25,'Pikachu','Electric',NULL),(26,'Raichu','Electric',NULL);
/*!40000 ALTER TABLE `pkmon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `TYPE_TYPE` char(8) NOT NULL,
  PRIMARY KEY (`TYPE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES ('Bug'),('Dark'),('Dragon'),('Electric'),('Fairy'),('Fighting'),('Fire'),('Flying'),('Ghost'),('Grass'),('Ground'),('Ice'),('Normal'),('Poison'),('Psychic'),('Rock'),('Steel'),('Water');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_effect`
--

DROP TABLE IF EXISTS `type_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_effect` (
  `TYPE_EFFECT_ATK` char(8) NOT NULL,
  `TYPE_EFFECT_DEF` char(8) NOT NULL,
  `TYPE_EFFECT_DAMAGE` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`TYPE_EFFECT_ATK`,`TYPE_EFFECT_DEF`),
  KEY `fk_def_idx` (`TYPE_EFFECT_DEF`),
  CONSTRAINT `fk_atk` FOREIGN KEY (`TYPE_EFFECT_ATK`) REFERENCES `type` (`TYPE_TYPE`),
  CONSTRAINT `fk_def` FOREIGN KEY (`TYPE_EFFECT_DEF`) REFERENCES `type` (`TYPE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_effect`
--

LOCK TABLES `type_effect` WRITE;
/*!40000 ALTER TABLE `type_effect` DISABLE KEYS */;
INSERT INTO `type_effect` VALUES ('Normal','Bug',1.0),('Normal','Dark',1.0),('Normal','Dragon',1.0),('Normal','Electric',1.0),('Normal','Fairy',1.0),('Normal','Fighting',1.0),('Normal','Fire',1.0),('Normal','Flying',1.0),('Normal','Ghost',0.0),('Normal','Grass',1.0),('Normal','Ground',1.0),('Normal','Ice',1.0),('Normal','Normal',1.0),('Normal','Poison',1.0),('Normal','Psychic',1.0),('Normal','Rock',0.5),('Normal','Steel',0.5),('Normal','Water',1.0);
/*!40000 ALTER TABLE `type_effect` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-09 22:14:02
