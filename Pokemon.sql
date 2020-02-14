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
  `EVOLUTION_LEVEL` int DEFAULT NULL,
  PRIMARY KEY (`EVOLUTION_FROM`),
  UNIQUE KEY `EVOLUTION_FROM_UNIQUE` (`EVOLUTION_FROM`),
  UNIQUE KEY `EVOLUTION_TO_UNIQUE` (`EVOLUTION_TO`),
  KEY `FK_evolution_to_idx` (`EVOLUTION_TO`),
  CONSTRAINT `FK_evolution` FOREIGN KEY (`EVOLUTION_FROM`) REFERENCES `pkmon` (`PKMON_ID`),
  CONSTRAINT `FK_evolution_to` FOREIGN KEY (`EVOLUTION_TO`) REFERENCES `pkmon` (`PKMON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolution`
--

LOCK TABLES `evolution` WRITE;
/*!40000 ALTER TABLE `evolution` DISABLE KEYS */;
INSERT INTO `evolution` VALUES (1,2,16),(2,3,32),(4,5,16),(5,6,36),(7,8,16),(8,9,36),(10,11,7),(11,12,10),(13,14,7),(14,15,10),(25,26,NULL);
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
  `MOVE_POWER` int DEFAULT NULL,
  `MOVE_ACCURACY` decimal(3,2) DEFAULT NULL,
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
INSERT INTO `move` VALUES ('Acupressure',30,NULL,NULL,'Normal','Status'),('After You',15,NULL,NULL,'Normal','Status'),('Assist',20,NULL,NULL,'Normal','Status'),('Attract',15,NULL,1.00,'Normal','Status'),('Barrage',20,15,0.85,'Normal','Physical'),('Baton Pass',40,NULL,NULL,'Normal','Status'),('Belly Drum',10,NULL,NULL,'Normal','Status'),('Bestow',15,NULL,NULL,'Normal','Status'),('Bide',10,NULL,NULL,'Normal','Physical'),('Bind',20,15,0.85,'Normal','Physical'),('Block',5,NULL,NULL,'Normal','Status'),('Body Slam',15,85,1.00,'Normal','Physical'),('Boomburst',10,140,1.00,'Normal','Special'),('Breakneck Blitz',1,NULL,NULL,'Normal','Physical'),('Camouflage',20,NULL,NULL,'Normal','Status'),('Captivate',20,NULL,1.00,'Normal','Status'),('Celebrate',40,NULL,NULL,'Normal','Status'),('Chip Away',20,70,1.00,'Normal','Physical'),('Comet Punch',15,18,0.85,'Normal','Physical'),('Confide',20,NULL,NULL,'Normal','Status'),('Constrict',35,10,1.00,'Normal','Physical'),('Conversion',30,NULL,NULL,'Normal','Status'),('Conversion 2',30,NULL,NULL,'Normal','Status'),('Copycat',20,NULL,NULL,'Normal','Status'),('Court Change',10,NULL,1.00,'Normal','Status'),('Covet',25,60,1.00,'Normal','Physical'),('Crush Claw',10,75,0.95,'Normal','Physical'),('Crush Grip',5,NULL,1.00,'Normal','Physical'),('Cut',30,50,0.95,'Normal','Physical'),('Defense Curl',40,NULL,NULL,'Normal','Status'),('Disable',20,NULL,1.00,'Normal','Status'),('Dizzy Punch',10,70,1.00,'Normal','Physical'),('Double Hit',10,35,0.90,'Normal','Physical'),('Double Slap',10,15,0.85,'Normal','Physical'),('Double Team',15,NULL,NULL,'Normal','Status'),('Double-Edge',15,120,1.00,'Normal','Physical'),('Earthquake',10,90,1.00,'Ground','Special'),('Echoed Voice',15,40,1.00,'Normal','Special'),('Egg Bomb',10,100,0.75,'Normal','Physical'),('Encore',5,NULL,1.00,'Normal','Status'),('Endeavor',5,NULL,1.00,'Normal','Physical'),('Endure',10,NULL,NULL,'Normal','Status'),('Entrainment',15,NULL,1.00,'Normal','Status'),('Explosion',5,250,1.00,'Normal','Physical'),('Extreme Evoboost',1,NULL,NULL,'Normal','Status'),('Extreme Speed',5,80,1.00,'Normal','Physical'),('Facade',20,70,1.00,'Normal','Physical'),('Fake Out',10,40,1.00,'Normal','Physical'),('False Swipe',40,40,1.00,'Normal','Physical'),('Feint',10,30,1.00,'Normal','Physical'),('Flail',15,NULL,1.00,'Normal','Physical'),('Flash',20,NULL,1.00,'Normal','Status'),('Focus Energy',30,NULL,NULL,'Normal','Status'),('Follow Me',20,NULL,NULL,'Normal','Status'),('Foresight',40,NULL,NULL,'Normal','Status'),('Frustration',20,NULL,1.00,'Normal','Physical'),('Fury Attack',20,15,0.85,'Normal','Physical'),('Fury Swipes',15,18,0.80,'Normal','Physical'),('G-Max Cuddle',3,NULL,NULL,'Normal','Physical'),('G-Max Gold Rush',3,NULL,NULL,'Normal','Physical'),('G-Max Replenish',3,NULL,NULL,'Normal','Physical'),('Giga Impact',5,150,0.90,'Normal','Physical'),('Glare',30,NULL,1.00,'Normal','Status'),('Growl',40,NULL,1.00,'Normal','Status'),('Growth',20,NULL,NULL,'Normal','Status'),('Guillotine',5,NULL,0.30,'Normal','Physical'),('Happy Hour',30,NULL,NULL,'Normal','Status'),('Harden',30,NULL,NULL,'Normal','Status'),('Head Charge',15,120,1.00,'Normal','Physical'),('Headbutt',15,70,1.00,'Normal','Physical'),('Heal Bell',5,NULL,NULL,'Normal','Status'),('Helping Hand',20,NULL,NULL,'Normal','Status'),('Hidden Power',15,60,1.00,'Normal','Special'),('Hold Back',40,40,1.00,'Normal','Physical'),('Hold Hands',40,NULL,NULL,'Normal','Status'),('Horn Attack',25,65,1.00,'Normal','Physical'),('Horn Drill',5,NULL,0.30,'Normal','Physical'),('Howl',40,NULL,NULL,'Normal','Status'),('Hyper Beam',5,150,0.90,'Normal','Special'),('Hyper Fang',15,80,0.90,'Normal','Physical'),('Hyper Voice',10,90,1.00,'Normal','Special'),('Judgment',10,100,1.00,'Normal','Special'),('Laser Focus',30,NULL,NULL,'Normal','Status'),('Last Resort',5,140,1.00,'Normal','Physical'),('Leer',30,NULL,1.00,'Normal','Status'),('Lock-On',5,NULL,NULL,'Normal','Status'),('Lovely Kiss',10,NULL,0.75,'Normal','Status'),('Lucky Chant',30,NULL,NULL,'Normal','Status'),('Max Guard',3,NULL,NULL,'Normal','Status'),('Max Strike',3,NULL,NULL,'Normal','Physical'),('Me First',20,NULL,NULL,'Normal','Status'),('Mean Look',5,NULL,NULL,'Normal','Status'),('Mega Kick',5,120,0.75,'Normal','Physical'),('Mega Punch',20,80,0.85,'Normal','Physical'),('Metronome',10,NULL,NULL,'Normal','Status'),('Milk Drink',10,NULL,NULL,'Normal','Status'),('Mimic',10,NULL,NULL,'Normal','Status'),('Mind Reader',5,NULL,NULL,'Normal','Status'),('Minimize',10,NULL,NULL,'Normal','Status'),('Morning Sun',5,NULL,NULL,'Normal','Status'),('Multi-Attack',10,90,1.00,'Normal','Physical'),('Natural Gift',15,NULL,1.00,'Normal','Physical'),('Nature Power',20,NULL,NULL,'Normal','Status'),('Noble Roar',30,NULL,1.00,'Normal','Status'),('Odor Sleuth',40,NULL,NULL,'Normal','Status'),('Pain Split',20,NULL,NULL,'Normal','Status'),('Pay Day',20,40,1.00,'Normal','Physical'),('Perish Song',5,NULL,NULL,'Normal','Status'),('Play Nice',20,NULL,NULL,'Normal','Status'),('Pound',35,40,1.00,'Normal','Physical'),('Present',15,NULL,0.90,'Normal','Physical'),('Protect',10,NULL,NULL,'Normal','Status'),('Psych Up',10,NULL,NULL,'Normal','Status'),('Pulverizing Pancake',1,210,NULL,'Normal','Physical'),('Quick Attack',30,40,1.00,'Normal','Physical'),('Rage',20,20,1.00,'Normal','Physical'),('Rapid Spin',40,20,1.00,'Normal','Physical'),('Razor Wind',10,80,1.00,'Normal','Special'),('Recover',10,NULL,NULL,'Normal','Status'),('Recycle',10,NULL,NULL,'Normal','Status'),('Reflect Type',15,NULL,NULL,'Normal','Status'),('Refresh',20,NULL,NULL,'Normal','Status'),('Relic Song',10,75,1.00,'Normal','Special'),('Retaliate',5,70,1.00,'Normal','Physical'),('Return',20,NULL,1.00,'Normal','Physical'),('Revelation Dance',15,90,1.00,'Normal','Special'),('Roar',20,NULL,NULL,'Normal','Status'),('Rock Climb',20,90,0.85,'Normal','Physical'),('Round',15,60,1.00,'Normal','Special'),('Safeguard',25,NULL,NULL,'Normal','Status'),('Scary Face',10,NULL,1.00,'Normal','Status'),('Scratch',35,40,1.00,'Normal','Physical'),('Screech',40,NULL,0.85,'Normal','Status'),('Secret Power',20,70,1.00,'Normal','Physical'),('Self-Destruct',5,200,1.00,'Normal','Physical'),('Sharpen',30,NULL,NULL,'Normal','Status'),('Shell Smash',15,NULL,NULL,'Normal','Status'),('Simple Beam',15,NULL,1.00,'Normal','Status'),('Sing',15,NULL,0.55,'Normal','Status'),('Sketch',1,NULL,NULL,'Normal','Status'),('Skull Bash',10,130,1.00,'Normal','Physical'),('Slack Off',10,NULL,NULL,'Normal','Status'),('Slam',20,80,0.75,'Normal','Physical'),('Slash',20,70,1.00,'Normal','Physical'),('Sleep Talk',10,NULL,NULL,'Normal','Status'),('Smelling Salts',10,70,1.00,'Normal','Physical'),('Smokescreen',20,NULL,1.00,'Normal','Status'),('Snore',15,50,1.00,'Normal','Special'),('Soft-Boiled',10,NULL,NULL,'Normal','Status'),('Solar Beam',10,120,1.00,'Grass','Special'),('Sonic Boom',20,NULL,0.90,'Normal','Special'),('Spike Cannon',15,20,1.00,'Normal','Physical'),('Spit Up',10,NULL,1.00,'Normal','Special'),('Splash',40,NULL,NULL,'Normal','Status'),('Spotlight',15,NULL,NULL,'Normal','Status'),('Stockpile',20,NULL,NULL,'Normal','Status'),('Stomp',20,65,1.00,'Normal','Physical'),('Strength',15,80,1.00,'Normal','Physical'),('Struggle',1,50,NULL,'Normal','Physical'),('Stuff Cheeks',10,NULL,NULL,'Normal','Status'),('Substitute',10,NULL,NULL,'Normal','Status'),('Super Fang',10,NULL,0.90,'Normal','Physical'),('Supersonic',20,NULL,0.55,'Normal','Status'),('Swagger',15,NULL,0.85,'Normal','Status'),('Swallow',10,NULL,NULL,'Normal','Status'),('Sweet Scent',20,NULL,1.00,'Normal','Status'),('Swift',20,60,NULL,'Normal','Special'),('Swords Dance',20,NULL,NULL,'Normal','Status'),('Tackle',35,40,1.00,'Normal','Physical'),('Tail Slap',10,25,0.85,'Normal','Physical'),('Tail Whip',30,NULL,1.00,'Normal','Status'),('Take Down',20,90,0.85,'Normal','Physical'),('Tearful Look',20,NULL,NULL,'Normal','Status'),('Teatime',10,NULL,NULL,'Normal','Status'),('Techno Blast',5,120,1.00,'Normal','Special'),('Teeter Dance',20,NULL,1.00,'Normal','Status'),('Thrash',10,120,1.00,'Normal','Physical'),('Thunder Shock',30,40,1.00,'Electric','Special'),('Thunder Wave',20,NULL,0.90,'Electric','Status'),('Thunderbolt',15,90,1.00,'Electric','Physical'),('Tickle',20,NULL,1.00,'Normal','Status'),('Transform',10,NULL,NULL,'Normal','Status'),('Tri Attack',10,80,1.00,'Normal','Special'),('Trump Card',5,NULL,NULL,'Normal','Special'),('Uproar',10,90,1.00,'Normal','Special'),('Veevee Volley',1,NULL,NULL,'Normal','Physical'),('Vise Grip',30,55,1.00,'Normal','Physical'),('Weather Ball',10,50,1.00,'Normal','Special'),('Whirlwind',20,NULL,NULL,'Normal','Status'),('Wish',10,NULL,NULL,'Normal','Status'),('Work Up',30,NULL,NULL,'Normal','Status'),('Wrap',20,15,0.90,'Normal','Physical'),('Wring Out',5,NULL,1.00,'Normal','Special'),('Yawn',10,NULL,NULL,'Normal','Status');
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
  CONSTRAINT `fk_pkmon` FOREIGN KEY (`MOVESET_PKMON`) REFERENCES `pkmon` (`PKMON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moveset`
--

LOCK TABLES `moveset` WRITE;
/*!40000 ALTER TABLE `moveset` DISABLE KEYS */;
INSERT INTO `moveset` VALUES (1,'Solar Beam',36),(2,'Solar Beam',50),(3,'Solar Beam',58),(25,'Thunder Shock',1),(25,'Thunder Wave',4),(25,'Thunderbolt',36);
/*!40000 ALTER TABLE `moveset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkmon`
--

DROP TABLE IF EXISTS `pkmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pkmon` (
  `PKMON_ID` int NOT NULL,
  `PKMON_NAME` text NOT NULL,
  `PKMON_TYPE` char(8) NOT NULL,
  `PKMON_SECTYPE` char(8) DEFAULT NULL,
  PRIMARY KEY (`PKMON_ID`),
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
INSERT INTO `pkmon` VALUES (1,'Bulbasaur','Grass','Poison'),(2,'Ivysaur','Grass','Poison'),(3,'Venusaur','Grass','Poison'),(4,'Charmander','Fire',NULL),(5,'Charmeleon','Fire',NULL),(6,'Charizard','Fire','Flying'),(7,'Squirtle','Water',NULL),(8,'Wartortle','Water',NULL),(9,'Blastoise','Water',NULL),(10,'Caterpie','Bug',NULL),(11,'Metapod','Bug',NULL),(12,'Butterfree','Bug','Flying'),(13,'Weedle','Bug','Poison'),(14,'Kakuna','Bug','Poison'),(15,'Beedrill','Bug','Poison'),(16,'Pidgey','Normal','Flying'),(17,'Pidgeotto','Normal','Flying'),(18,'Pidgeot','Normal','Flying'),(19,'Rattata','Normal',NULL),(20,'Raticate','Normal',NULL),(21,'Spearow','Normal','Flying'),(22,'Fearow','Normal','Flying'),(23,'Ekans','Poison',NULL),(24,'Arbok','Poison',NULL),(25,'Pikachu','Electric',NULL),(26,'Raichu','Electric',NULL),(27,'Sandshrew','Ground',NULL),(28,'Sandslash','Ground',NULL),(29,'NidoranM','Poison',NULL),(30,'Nidorina','Poison',NULL),(31,'Nidoqueen','Poison','Ground'),(32,'NidoranF','Poison',NULL),(33,'Nidorino','Poison',NULL),(34,'Nidoking','Poison','Ground'),(35,'Clefairy','Fairy',NULL),(36,'Clefable','Fairy',NULL),(37,'Vulpix','Fire',NULL),(38,'Ninetales','Fire',NULL),(39,'Jigglypuff','Normal','Fairy'),(40,'Wigglytuff','Normal','Fairy'),(41,'Zubat','Poison','Flying'),(42,'Golbat','Poison','Flying'),(43,'Oddish','Grass','Poison'),(44,'Gloom','Grass','Poison'),(45,'Vileplume','Grass','Poison'),(46,'Paras','Bug','Grass'),(47,'Parasect','Bug','Grass'),(48,'Venonat','Bug','Poison'),(49,'Venomoth','Bug','Poison'),(50,'Diglett','Ground',NULL),(51,'Dugtrio','Ground',NULL),(52,'Meowth','Normal',NULL),(53,'Persian','Normal',NULL),(54,'Psyduck','Water',NULL),(55,'Golduck','Water',NULL),(56,'Mankey','Fighting',NULL),(57,'Primeape','Fighting',NULL),(58,'Growlithe','Fire',NULL),(59,'Arcanine','Fire',NULL),(60,'Poliwag','Water',NULL),(61,'Poliwhirl','Water',NULL),(62,'Poliwrath','Water','Fighting'),(63,'Abra','Psychic',NULL),(64,'Kadabra','Psychic',NULL),(65,'Alakazam','Psychic',NULL),(66,'Machop','Fighting',NULL),(67,'Machoke','Fighting',NULL),(68,'Machamp','Fighting',NULL),(69,'Bellsprout','Grass','Poison'),(70,'Weepinbell','Grass','Poison'),(71,'Victreebel','Grass','Poison'),(72,'Tentacool','Water','Poison'),(73,'Tentacruel','Water','Poison'),(74,'Geodude','Rock','Ground'),(75,'Graveler','Rock','Ground'),(76,'Golem','Rock','Ground'),(77,'Ponyta','Fire',NULL),(78,'Rapidash','Fire',NULL),(79,'Slowpoke','Water','Psychic'),(80,'Slowbro','Water','Psychic'),(81,'Magnemite','Electric','Steel'),(82,'Magneton','Electric','Steel'),(83,'Farfetch\'d','Normal','Flying'),(84,'Doduo','Normal','Flying'),(85,'Dodrio','Normal','Flying'),(86,'Seel','Water',NULL),(87,'Dewgong','Water','Ice'),(88,'Grimer','Poison',NULL),(89,'Muk','Poison',NULL),(90,'Shellder','Water',NULL),(91,'Cloyster','Water','Ice'),(92,'Gastly','Ghost','Poison'),(93,'Haunter','Ghost','Poison'),(94,'Gengar','Ghost','Poison'),(95,'Onix','Rock','Ground'),(96,'Drowzee','Psychic',NULL),(97,'Hypno','Psychic',NULL),(98,'Krabby','Water',NULL),(99,'Kingler','Water',NULL),(100,'Voltorb','Electric',NULL),(101,'Electrode','Electric',NULL),(102,'Exeggcute','Grass','Psychic'),(103,'Exeggutor','Grass','Psychic'),(104,'Cubone','Ground',NULL),(105,'Marowak','Ground',NULL),(106,'Hitmonlee','Fighting',NULL),(107,'Hitmonchan','Fighting',NULL),(108,'Lickitung','Normal',NULL),(109,'Koffing','Poison',NULL),(110,'Weezing','Poison',NULL),(111,'Rhyhorn','Ground','Rock'),(112,'Rhydon','Ground','Rock'),(113,'Chansey','Normal',NULL),(114,'Tangela','Grass',NULL),(115,'Kangaskhan','Normal',NULL),(116,'Horsea','Water',NULL),(117,'Seadra','Water',NULL),(118,'Goldeen','Water',NULL),(119,'Seaking','Water',NULL),(120,'Staryu','Water',NULL),(121,'Starmie','Water','Psychic'),(122,'Mr. Mime','Psychic','Fairy'),(123,'Scyther','Bug','Flying'),(124,'Jynx','Ice','Psychic'),(125,'Electabuzz','Electric',NULL),(126,'Magmar','Fire',NULL),(127,'Pinsir','Bug',NULL),(128,'Tauros','Normal',NULL),(129,'Magikarp','Water',NULL),(130,'Gyarados','Water','Flying'),(131,'Lapras','Water','Ice'),(132,'Ditto','Normal',NULL),(133,'Eevee','Normal',NULL),(134,'Vaporeon','Water',NULL),(135,'Jolteon','Electric',NULL),(136,'Flareon','Fire',NULL),(137,'Porygon','Normal',NULL),(138,'Omanyte','Rock','Water'),(139,'Omastar','Rock','Water'),(140,'Kabuto','Rock','Water'),(141,'Kabutops','Rock','Water'),(142,'Aerodactyl','Rock','Flying'),(143,'Snorlax','Normal',NULL),(144,'Articuno','Ice','Flying'),(145,'Zapdos','Electric','Flying'),(146,'Moltres','Fire','Flying'),(147,'Dratini','Dragon',NULL),(148,'Dragonair','Dragon',NULL),(149,'Dragonite','Dragon','Flying'),(150,'Mewtwo','Psychic',NULL),(151,'Mew','Psychic',NULL);
/*!40000 ALTER TABLE `pkmon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer` (
  `TRAINER_ID` int NOT NULL,
  `TRAINER_NAME` char(20) NOT NULL,
  `TRAINER_BADGES` int NOT NULL,
  PRIMARY KEY (`TRAINER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_pkmon`
--

DROP TABLE IF EXISTS `trainer_pkmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer_pkmon` (
  `TRAINER_ID` int NOT NULL,
  `TRAINER_PKMON1` int DEFAULT NULL,
  `TRAINER_PKMON2` int DEFAULT NULL,
  `TRAINER_PKMON3` int DEFAULT NULL,
  `TRAINER_PKMON4` int DEFAULT NULL,
  `TRAINER_PKMON5` int DEFAULT NULL,
  `TRAINER_PKMON6` int DEFAULT NULL,
  PRIMARY KEY (`TRAINER_ID`),
  KEY `fk_pkmon1` (`TRAINER_PKMON1`),
  KEY `fk_pkmon2` (`TRAINER_PKMON2`),
  KEY `fk_pkmon3` (`TRAINER_PKMON3`),
  KEY `fk_pkmon4` (`TRAINER_PKMON4`),
  KEY `fk_pkmon5` (`TRAINER_PKMON5`),
  KEY `fk_pkmon6` (`TRAINER_PKMON6`),
  CONSTRAINT `fk_pkmon1` FOREIGN KEY (`TRAINER_PKMON1`) REFERENCES `pkmon` (`PKMON_ID`),
  CONSTRAINT `fk_pkmon2` FOREIGN KEY (`TRAINER_PKMON2`) REFERENCES `pkmon` (`PKMON_ID`),
  CONSTRAINT `fk_pkmon3` FOREIGN KEY (`TRAINER_PKMON3`) REFERENCES `pkmon` (`PKMON_ID`),
  CONSTRAINT `fk_pkmon4` FOREIGN KEY (`TRAINER_PKMON4`) REFERENCES `pkmon` (`PKMON_ID`),
  CONSTRAINT `fk_pkmon5` FOREIGN KEY (`TRAINER_PKMON5`) REFERENCES `pkmon` (`PKMON_ID`),
  CONSTRAINT `fk_pkmon6` FOREIGN KEY (`TRAINER_PKMON6`) REFERENCES `pkmon` (`PKMON_ID`),
  CONSTRAINT `fk_trainid` FOREIGN KEY (`TRAINER_ID`) REFERENCES `trainer` (`TRAINER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_pkmon`
--

LOCK TABLES `trainer_pkmon` WRITE;
/*!40000 ALTER TABLE `trainer_pkmon` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainer_pkmon` ENABLE KEYS */;
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
INSERT INTO `type_effect` VALUES ('Bug','Bug',1.0),('Bug','Dark',2.0),('Bug','Dragon',1.0),('Bug','Electric',1.0),('Bug','Fairy',0.5),('Bug','Fighting',0.5),('Bug','Fire',0.5),('Bug','Flying',0.5),('Bug','Ghost',0.5),('Bug','Grass',2.0),('Bug','Ground',1.0),('Bug','Ice',1.0),('Bug','Normal',1.0),('Bug','Poison',0.5),('Bug','Psychic',2.0),('Bug','Rock',1.0),('Bug','Steel',0.5),('Bug','Water',1.0),('Dark','Bug',1.0),('Dark','Dark',0.5),('Dark','Dragon',1.0),('Dark','Electric',1.0),('Dark','Fairy',0.5),('Dark','Fighting',0.5),('Dark','Fire',1.0),('Dark','Flying',1.0),('Dark','Ghost',2.0),('Dark','Grass',1.0),('Dark','Ground',1.0),('Dark','Ice',1.0),('Dark','Normal',1.0),('Dark','Poison',1.0),('Dark','Psychic',2.0),('Dark','Rock',1.0),('Dark','Steel',1.0),('Dark','Water',1.0),('Dragon','Bug',1.0),('Dragon','Dark',1.0),('Dragon','Dragon',2.0),('Dragon','Electric',1.0),('Dragon','Fairy',0.5),('Dragon','Fighting',1.0),('Dragon','Fire',1.0),('Dragon','Flying',1.0),('Dragon','Ghost',1.0),('Dragon','Grass',1.0),('Dragon','Ground',1.0),('Dragon','Ice',1.0),('Dragon','Normal',1.0),('Dragon','Poison',1.0),('Dragon','Psychic',1.0),('Dragon','Rock',1.0),('Dragon','Steel',0.5),('Dragon','Water',1.0),('Electric','Bug',1.0),('Electric','Dark',1.0),('Electric','Dragon',0.5),('Electric','Electric',0.5),('Electric','Fairy',1.0),('Electric','Fighting',1.0),('Electric','Fire',1.0),('Electric','Flying',2.0),('Electric','Ghost',1.0),('Electric','Grass',0.5),('Electric','Ground',0.0),('Electric','Ice',1.0),('Electric','Normal',1.0),('Electric','Poison',1.0),('Electric','Psychic',1.0),('Electric','Rock',1.0),('Electric','Steel',1.0),('Electric','Water',2.0),('Fairy','Bug',1.0),('Fairy','Dark',2.0),('Fairy','Dragon',2.0),('Fairy','Electric',1.0),('Fairy','Fairy',1.0),('Fairy','Fighting',2.0),('Fairy','Fire',0.5),('Fairy','Flying',1.0),('Fairy','Ghost',1.0),('Fairy','Grass',1.0),('Fairy','Ground',1.0),('Fairy','Ice',1.0),('Fairy','Normal',1.0),('Fairy','Poison',0.5),('Fairy','Psychic',1.0),('Fairy','Rock',1.0),('Fairy','Steel',0.5),('Fairy','Water',1.0),('Fighting','Bug',0.5),('Fighting','Dark',2.0),('Fighting','Dragon',1.0),('Fighting','Electric',1.0),('Fighting','Fairy',0.5),('Fighting','Fighting',1.0),('Fighting','Fire',1.0),('Fighting','Flying',0.5),('Fighting','Ghost',0.0),('Fighting','Grass',1.0),('Fighting','Ground',1.0),('Fighting','Ice',2.0),('Fighting','Normal',2.0),('Fighting','Poison',0.5),('Fighting','Psychic',0.5),('Fighting','Rock',2.0),('Fighting','Steel',2.0),('Fighting','Water',1.0),('Fire','Bug',2.0),('Fire','Dark',1.0),('Fire','Dragon',0.5),('Fire','Electric',1.0),('Fire','Fairy',1.0),('Fire','Fighting',1.0),('Fire','Fire',0.5),('Fire','Flying',1.0),('Fire','Ghost',1.0),('Fire','Grass',2.0),('Fire','Ground',1.0),('Fire','Ice',2.0),('Fire','Normal',1.0),('Fire','Poison',1.0),('Fire','Psychic',1.0),('Fire','Rock',0.5),('Fire','Steel',2.0),('Fire','Water',0.5),('Flying','Bug',2.0),('Flying','Dark',1.0),('Flying','Dragon',1.0),('Flying','Electric',0.5),('Flying','Fairy',1.0),('Flying','Fighting',2.0),('Flying','Fire',1.0),('Flying','Flying',1.0),('Flying','Ghost',1.0),('Flying','Grass',2.0),('Flying','Ground',1.0),('Flying','Ice',1.0),('Flying','Normal',1.0),('Flying','Poison',1.0),('Flying','Psychic',1.0),('Flying','Rock',0.5),('Flying','Steel',0.5),('Flying','Water',1.0),('Ghost','Bug',1.0),('Ghost','Dark',0.5),('Ghost','Dragon',1.0),('Ghost','Electric',1.0),('Ghost','Fairy',1.0),('Ghost','Fighting',1.0),('Ghost','Fire',1.0),('Ghost','Flying',1.0),('Ghost','Ghost',2.0),('Ghost','Grass',1.0),('Ghost','Ground',1.0),('Ghost','Ice',1.0),('Ghost','Normal',0.0),('Ghost','Poison',1.0),('Ghost','Psychic',2.0),('Ghost','Rock',1.0),('Ghost','Steel',1.0),('Ghost','Water',1.0),('Grass','Bug',0.5),('Grass','Dark',1.0),('Grass','Dragon',0.5),('Grass','Electric',1.0),('Grass','Fairy',1.0),('Grass','Fighting',1.0),('Grass','Fire',0.5),('Grass','Flying',0.5),('Grass','Ghost',1.0),('Grass','Grass',0.5),('Grass','Ground',2.0),('Grass','Normal',1.0),('Grass','Poison',0.5),('Grass','Psychic',1.0),('Grass','Rock',2.0),('Grass','Steel',0.5),('Grass','Water',2.0),('Ground','Bug',0.5),('Ground','Dark',1.0),('Ground','Dragon',1.0),('Ground','Electric',2.0),('Ground','Fairy',1.0),('Ground','Fighting',1.0),('Ground','Fire',2.0),('Ground','Flying',0.5),('Ground','Ghost',1.0),('Ground','Grass',0.5),('Ground','Ground',1.0),('Ground','Ice',1.0),('Ground','Normal',1.0),('Ground','Poison',2.0),('Ground','Psychic',1.0),('Ground','Rock',2.0),('Ground','Steel',2.0),('Ground','Water',1.0),('Ice','Bug',1.0),('Ice','Dark',1.0),('Ice','Dragon',2.0),('Ice','Electric',1.0),('Ice','Fairy',1.0),('Ice','Fighting',1.0),('Ice','Fire',0.5),('Ice','Flying',2.0),('Ice','Ghost',1.0),('Ice','Grass',2.0),('Ice','Ground',2.0),('Ice','Ice',0.5),('Ice','Normal',1.0),('Ice','Poison',1.0),('Ice','Psychic',1.0),('Ice','Rock',1.0),('Ice','Steel',0.5),('Ice','Water',0.5),('Normal','Bug',1.0),('Normal','Dark',1.0),('Normal','Dragon',1.0),('Normal','Electric',1.0),('Normal','Fairy',1.0),('Normal','Fighting',1.0),('Normal','Fire',1.0),('Normal','Flying',1.0),('Normal','Ghost',0.0),('Normal','Grass',1.0),('Normal','Ground',1.0),('Normal','Ice',1.0),('Normal','Normal',1.0),('Normal','Poison',1.0),('Normal','Psychic',1.0),('Normal','Rock',0.5),('Normal','Steel',0.5),('Normal','Water',1.0),('Poison','Bug',1.0),('Poison','Dark',1.0),('Poison','Dragon',1.0),('Poison','Electric',1.0),('Poison','Fairy',2.0),('Poison','Fighting',1.0),('Poison','Fire',1.0),('Poison','Flying',1.0),('Poison','Ghost',0.5),('Poison','Grass',2.0),('Poison','Ground',0.5),('Poison','Ice',1.0),('Poison','Normal',1.0),('Poison','Poison',0.5),('Poison','Psychic',1.0),('Poison','Rock',0.5),('Poison','Steel',0.5),('Poison','Water',1.0),('Psychic','Bug',1.0),('Psychic','Dark',0.5),('Psychic','Dragon',1.0),('Psychic','Electric',1.0),('Psychic','Fairy',1.0),('Psychic','Fighting',2.0),('Psychic','Fire',1.0),('Psychic','Flying',1.0),('Psychic','Ghost',1.0),('Psychic','Grass',1.0),('Psychic','Ground',1.0),('Psychic','Ice',1.0),('Psychic','Normal',1.0),('Psychic','Poison',2.0),('Psychic','Psychic',0.5),('Psychic','Rock',1.0),('Psychic','Steel',0.5),('Psychic','Water',1.0),('Rock','Bug',2.0),('Rock','Dark',1.0),('Rock','Dragon',1.0),('Rock','Electric',1.0),('Rock','Fairy',1.0),('Rock','Fighting',0.5),('Rock','Fire',2.0),('Rock','Flying',2.0),('Rock','Ghost',1.0),('Rock','Grass',1.0),('Rock','Ground',0.5),('Rock','Ice',2.0),('Rock','Normal',1.0),('Rock','Poison',1.0),('Rock','Psychic',1.0),('Rock','Rock',1.0),('Rock','Steel',0.5),('Rock','Water',1.0),('Steel','Bug',1.0),('Steel','Dark',1.0),('Steel','Dragon',1.0),('Steel','Electric',0.5),('Steel','Fairy',2.0),('Steel','Fighting',1.0),('Steel','Fire',0.5),('Steel','Flying',1.0),('Steel','Ghost',1.0),('Steel','Grass',1.0),('Steel','Ground',1.0),('Steel','Ice',2.0),('Steel','Normal',1.0),('Steel','Poison',1.0),('Steel','Psychic',1.0),('Steel','Rock',2.0),('Steel','Steel',0.5),('Steel','Water',0.5),('Water','Bug',1.0),('Water','Dark',1.0),('Water','Dragon',0.5),('Water','Electric',1.0),('Water','Fairy',1.0),('Water','Fighting',1.0),('Water','Fire',2.0),('Water','Flying',1.0),('Water','Ghost',1.0),('Water','Grass',0.5),('Water','Ground',2.0),('Water','Ice',1.0),('Water','Normal',1.0),('Water','Poison',1.0),('Water','Psychic',1.0),('Water','Rock',2.0),('Water','Steel',1.0),('Water','Water',0.5);
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

-- Dump completed on 2020-02-14 13:36:51
