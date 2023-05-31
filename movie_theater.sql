-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: movie_theater
-- ------------------------------------------------------
-- Server version	10.10.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `complex`
--

DROP TABLE IF EXISTS `complex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complex`
--

LOCK TABLES `complex` WRITE;
/*!40000 ALTER TABLE `complex` DISABLE KEYS */;
INSERT INTO `complex` VALUES
(1,'Menomonie','91 Monica Lane'),
(2,'Loomis','5 Hanson Lane'),
(3,'Village','588 International Place');
/*!40000 ALTER TABLE `complex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES
(1,'Les Chevaliers du Zodiaque','Seiya, un adolescent au caractère bien trempé, a l\'habitude de participer à des combats pour gagner de quoi survivre dans la rue, tout en recherchant sa soeur qui a été enlevée. Durant un combat, il puise involontairement dans des pouvoirs mystiques insoupçonnés et se retrouve propulsé dans un monde où il rencontrera des chevaliers en armure, tirant leur puissance d\'un entraînement magique ancestral et Athéna, une déesse réincarnée qui a besoin de sa protection.S\'il veut survivre, il devra affronter son destin et tout sacrifier pour prendre la place qui lui revient parmi les Chevaliers du Zodiaque.'),
(2,'Les Gardiens de la Galaxie 3','Notre bande de marginaux favorite a quelque peu changé. Peter Quill, qui pleure toujours la perte de Gamora, doit rassembler son équipe pour défendre l\'univers et protéger l\'un des siens. En cas d\'échec, cette mission pourrait bien marquer la fin des Gardiens tels que nous les connaissons.'),
(3,'Evil Dead Rise','Alors que Beth n\'a pas vu sa grande sœur Ellie depuis longtemps, elle vient lui rendre visite à Los Angeles où elle élève, seule, ses trois enfants. Mais leurs retrouvailles tournent au cauchemar, quand elles découvrent un mystérieux livre dans le sous-sol de l\'immeuble, dont la lecture libère des démons qui prennent possession des vivants...'),
(4,'Donjons et Dragons : l\'Honneur des voleurs','Un voleur beau gosse et une bande d\'aventuriers improbables entreprennent un casse épique pour récupérer une relique perdue. Les choses tournent mal lorsqu\'ils s\'attirent les foudres des mauvaises personnes. Donjons & Dragons : L\'honneur des voleurs transpose sur grand écran l\'univers riche et l\'esprit ludique du légendaire jeu de rôle à travers une aventure hilarante et pleine d\'action.'),
(5,'Super Mario Bros, le film','Alors qu\'ils tentent de réparer une canalisation souterraine, Mario et son frère Luigi, tous deux plombiers, se retrouvent plongés dans un nouvel univers féerique à travers un mystérieux conduit. Mais lorsque les deux frères sont séparés, Mario s\'engage dans une aventure trépidante pour retrouver Luigi.Dans sa quête, il peut compter sur l\'aide du champignon Toad, habitant du Royaume Champignon, et les conseils avisés, en matière de techniques de combat, de la Princesse Peach, guerrière déterminée à la tête du Royaume. C\'est ainsi que Mario réussit à mobiliser ses propres forces pour aller au bout de sa mission.');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_room`
--

DROP TABLE IF EXISTS `movie_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacity` int(11) NOT NULL,
  `id_complex` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_complex` (`id_complex`),
  CONSTRAINT `movie_room_ibfk_1` FOREIGN KEY (`id_complex`) REFERENCES `complex` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_room`
--

LOCK TABLES `movie_room` WRITE;
/*!40000 ALTER TABLE `movie_room` DISABLE KEYS */;
INSERT INTO `movie_room` VALUES
(1,100,1),
(2,150,1),
(3,200,1),
(4,100,2),
(5,150,2),
(6,200,2),
(7,200,3),
(8,250,3),
(9,300,3);
/*!40000 ALTER TABLE `movie_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_session`
--

DROP TABLE IF EXISTS `movie_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hour` time NOT NULL,
  `id_movie_room` int(11) NOT NULL,
  `id_movie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_movie_room` (`id_movie_room`),
  KEY `id_movie` (`id_movie`),
  CONSTRAINT `movie_session_ibfk_1` FOREIGN KEY (`id_movie_room`) REFERENCES `movie_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movie_session_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_session`
--

LOCK TABLES `movie_session` WRITE;
/*!40000 ALTER TABLE `movie_session` DISABLE KEYS */;
INSERT INTO `movie_session` VALUES
(1,'2023-06-03','09:00:00',1,1),
(2,'2023-06-03','13:00:00',1,2),
(3,'2023-06-03','09:00:00',2,3),
(4,'2023-06-03','13:00:00',2,4),
(5,'2023-06-03','17:00:00',2,5),
(6,'2023-06-03','09:00:00',3,3),
(7,'2023-06-03','13:00:00',3,4),
(8,'2023-06-03','17:00:00',3,5),
(9,'2023-06-03','09:00:00',4,1),
(10,'2023-06-03','13:00:00',4,2),
(11,'2023-06-03','17:00:00',4,2),
(12,'2023-06-03','09:00:00',5,3),
(13,'2023-06-03','13:00:00',5,3),
(14,'2023-06-03','17:00:00',5,4),
(15,'2023-06-03','09:00:00',6,1),
(16,'2023-06-03','13:00:00',6,3),
(17,'2023-06-03','17:00:00',6,5),
(18,'2023-06-03','09:00:00',7,1),
(19,'2023-06-03','13:00:00',7,3),
(20,'2023-06-03','17:00:00',7,5),
(21,'2023-06-03','09:00:00',8,1),
(22,'2023-06-03','13:00:00',8,1),
(23,'2023-06-03','09:00:00',9,3),
(24,'2023-06-03','13:00:00',9,5);
/*!40000 ALTER TABLE `movie_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` VALUES
(1,'Plein tarif',9.20),
(2,'Etudiant',7.60),
(3,'Moins de 14 ans',5.90);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_movie_session` int(11) NOT NULL,
  `id_rate` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_movie_session` (`id_movie_session`),
  KEY `id_rate` (`id_rate`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_movie_session`) REFERENCES `movie_session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_rate`) REFERENCES `rate` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES
(1,5,1,3),
(2,12,2,4),
(3,22,2,4),
(4,10,1,NULL),
(5,18,2,NULL);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,'Jean','Munroe','jean_munroe@mail.fr','$2y$10$KjltBF17jcSEkNXEioNVieslQ9IyoZfdwPzTagtG62kAUNtdVGh1m'),
(2,'Dolly','Parton','dolly_parton@mail.fr','$2y$10$k4rPHxuKq8/Dgc/oRcAxLul20bjQi8NRuv3I6gk36dMnST1aig8Ce'),
(3,'Sam','Gamgee','sam_gamgee@mail.fr','$2y$10$51XwkOoXwUPottzmwYlKlekyQsG1db8qz52TJQqgcdL.XXEUWCidi'),
(4,'Jane','Doe','jane_doe@mail.fr','$2y$10$6hNdT2cUjsijetkvnLDPCOhYgN.hheBfVogaG7mznE7ZBny/38s6W');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 18:11:18
