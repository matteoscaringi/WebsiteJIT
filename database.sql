-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: black_cocks
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `aanmelden`
--

DROP TABLE IF EXISTS `aanmelden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aanmelden` (
  `idAanmelden` int NOT NULL AUTO_INCREMENT,
  `Naam` varchar(45) NOT NULL,
  `TelNr` varchar(45) NOT NULL,
  `Adres` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Wachtwoord` varchar(45) NOT NULL,
  `Rol` varchar(45) NOT NULL,
  PRIMARY KEY (`idAanmelden`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aanmelden`
--

LOCK TABLES `aanmelden` WRITE;
/*!40000 ALTER TABLE `aanmelden` DISABLE KEYS */;
INSERT INTO `aanmelden` VALUES (1,'Mato Scar','588 15 48 01 ','Laan 1 8400 Oostende','me@matteoscaringi.be','1','werknemer'),(2,'Kees Van Voorthuizen','588 15 48 01 ','Laan 1 8400 Oostende','me@keesvv.nl','1','klant');
/*!40000 ALTER TABLE `aanmelden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inschrijving`
--

DROP TABLE IF EXISTS `inschrijving`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inschrijving` (
  `idInschrijving` int NOT NULL AUTO_INCREMENT,
  `Datum` datetime NOT NULL,
  `Voorbereiding_ID` int NOT NULL,
  `Aanmeld_ID` int NOT NULL,
  PRIMARY KEY (`idInschrijving`),
  KEY `fk_Inschrijving_aanmeldid_idx` (`Aanmeld_ID`),
  CONSTRAINT `fk_Inschrijving_aanmeldid` FOREIGN KEY (`Aanmeld_ID`) REFERENCES `aanmelden` (`idAanmelden`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inschrijving`
--

LOCK TABLES `inschrijving` WRITE;
/*!40000 ALTER TABLE `inschrijving` DISABLE KEYS */;
INSERT INTO `inschrijving` VALUES (7,'2006-01-31 00:00:00',1,1),(8,'2007-01-06 00:00:00',2,1),(9,'2008-01-06 00:00:00',3,1),(10,'2009-01-06 00:00:00',4,1);
/*!40000 ALTER TABLE `inschrijving` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_aanmelden_inschrijving`
--

DROP TABLE IF EXISTS `view_aanmelden_inschrijving`;
/*!50001 DROP VIEW IF EXISTS `view_aanmelden_inschrijving`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_aanmelden_inschrijving` AS SELECT 
 1 AS `idAanmelden`,
 1 AS `Naam`,
 1 AS `TelNr`,
 1 AS `Adres`,
 1 AS `Email`,
 1 AS `Wachtwoord`,
 1 AS `Rol`,
 1 AS `Datum`,
 1 AS `Voorbereiding_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_aanmelden_voorbereiding`
--

DROP TABLE IF EXISTS `view_aanmelden_voorbereiding`;
/*!50001 DROP VIEW IF EXISTS `view_aanmelden_voorbereiding`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_aanmelden_voorbereiding` AS SELECT 
 1 AS `idAanmelden`,
 1 AS `Naam`,
 1 AS `TelNr`,
 1 AS `Adres`,
 1 AS `Email`,
 1 AS `Wachtwoord`,
 1 AS `Rol`,
 1 AS `Indhoud`,
 1 AS `Duur`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_inschrijving_voorbereiding`
--

DROP TABLE IF EXISTS `view_inschrijving_voorbereiding`;
/*!50001 DROP VIEW IF EXISTS `view_inschrijving_voorbereiding`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_inschrijving_voorbereiding` AS SELECT 
 1 AS `idInschrijving`,
 1 AS `Datum`,
 1 AS `Voorbereiding_ID`,
 1 AS `Aanmeld_ID`,
 1 AS `Indhoud`,
 1 AS `Duur`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_medewerker_inschrijving_count`
--

DROP TABLE IF EXISTS `view_medewerker_inschrijving_count`;
/*!50001 DROP VIEW IF EXISTS `view_medewerker_inschrijving_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_medewerker_inschrijving_count` AS SELECT 
 1 AS `Medewerker_ID`,
 1 AS `Medewerker_Naam`,
 1 AS `Inschrijving_Count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_voorbereiding_total_duration`
--

DROP TABLE IF EXISTS `view_voorbereiding_total_duration`;
/*!50001 DROP VIEW IF EXISTS `view_voorbereiding_total_duration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_voorbereiding_total_duration` AS SELECT 
 1 AS `idVoorbereiding`,
 1 AS `Indhoud`,
 1 AS `Total_Duration`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `voorbereiding`
--

DROP TABLE IF EXISTS `voorbereiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voorbereiding` (
  `idVoorbereiding` int NOT NULL AUTO_INCREMENT,
  `Medewerker_ID` int NOT NULL,
  `Indhoud` varchar(45) NOT NULL,
  `Duur` double NOT NULL,
  PRIMARY KEY (`idVoorbereiding`),
  KEY `fk_Inschrijving_aanmeldid_idx` (`Medewerker_ID`),
  CONSTRAINT `fk_voorbereiding_aanmeldid` FOREIGN KEY (`Medewerker_ID`) REFERENCES `aanmelden` (`idAanmelden`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voorbereiding`
--

LOCK TABLES `voorbereiding` WRITE;
/*!40000 ALTER TABLE `voorbereiding` DISABLE KEYS */;
INSERT INTO `voorbereiding` VALUES (1,1,'Internet Veiligheid',2),(2,1,'blocky',1),(3,1,'Internet Veiligheid',2),(4,1,'Scratch',2);
/*!40000 ALTER TABLE `voorbereiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'black_cocks'
--

--
-- Dumping routines for database 'black_cocks'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetMedewerkerDetailsWithVoorbereiding` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMedewerkerDetailsWithVoorbereiding`(
    IN p_MedewerkerID INT
)
BEGIN
    SELECT 
        a.*,
        v.Indhoud,
        v.Duur
    FROM aanmelden a
    JOIN voorbereiding v ON a.idAanmelden = v.Medewerker_ID
    WHERE a.idAanmelden = p_MedewerkerID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertAanmeldenAndInschrijving` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertAanmeldenAndInschrijving`(
    IN p_Naam VARCHAR(45),
    IN p_TelNr VARCHAR(45),
    IN p_Adres VARCHAR(45),
    IN p_Email VARCHAR(45),
    IN p_Wachtwoord VARCHAR(45),
    IN p_Rol TINYINT,
    IN p_Datum DATETIME,
    IN p_Indhoud VARCHAR(45),
    IN p_Duur DOUBLE
)
BEGIN
    DECLARE lastAanmeldenID INT;

    -- Insert into aanmelden
    INSERT INTO aanmelden (Naam, TelNr, Adres, Email, Wachtwoord, Rol)
    VALUES (p_Naam, p_TelNr, p_Adres, p_Email, p_Wachtwoord, p_Rol);
    
        -- Get the last inserted ID in aanmelden
    SET lastAanmeldenID = LAST_INSERT_ID();
    
    INSERT INTO voorbereiding (Medewerker_ID, Indhoud, Duur)
    VALUES (lastAanmeldenID, p_Indhoud, p_Duur);

    -- Insert into inschrijving
    INSERT INTO inschrijving (Datum, Voorbereiding_ID, Aanmeld_ID)
    VALUES (p_Datum, (SELECT idVoorbereiding FROM voorbereiding WHERE Indhoud = p_Indhoud AND Duur = p_Duur), lastAanmeldenID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_aanmelden_inschrijving`
--

/*!50001 DROP VIEW IF EXISTS `view_aanmelden_inschrijving`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_aanmelden_inschrijving` AS select `a`.`idAanmelden` AS `idAanmelden`,`a`.`Naam` AS `Naam`,`a`.`TelNr` AS `TelNr`,`a`.`Adres` AS `Adres`,`a`.`Email` AS `Email`,`a`.`Wachtwoord` AS `Wachtwoord`,`a`.`Rol` AS `Rol`,`i`.`Datum` AS `Datum`,`i`.`Voorbereiding_ID` AS `Voorbereiding_ID` from (`aanmelden` `a` join `inschrijving` `i` on((`a`.`idAanmelden` = `i`.`Aanmeld_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_aanmelden_voorbereiding`
--

/*!50001 DROP VIEW IF EXISTS `view_aanmelden_voorbereiding`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_aanmelden_voorbereiding` AS select `a`.`idAanmelden` AS `idAanmelden`,`a`.`Naam` AS `Naam`,`a`.`TelNr` AS `TelNr`,`a`.`Adres` AS `Adres`,`a`.`Email` AS `Email`,`a`.`Wachtwoord` AS `Wachtwoord`,`a`.`Rol` AS `Rol`,`v`.`Indhoud` AS `Indhoud`,`v`.`Duur` AS `Duur` from (`aanmelden` `a` join `voorbereiding` `v` on((`a`.`idAanmelden` = `v`.`Medewerker_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_inschrijving_voorbereiding`
--

/*!50001 DROP VIEW IF EXISTS `view_inschrijving_voorbereiding`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_inschrijving_voorbereiding` AS select `i`.`idInschrijving` AS `idInschrijving`,`i`.`Datum` AS `Datum`,`i`.`Voorbereiding_ID` AS `Voorbereiding_ID`,`i`.`Aanmeld_ID` AS `Aanmeld_ID`,`v`.`Indhoud` AS `Indhoud`,`v`.`Duur` AS `Duur` from (`inschrijving` `i` join `voorbereiding` `v` on((`i`.`Voorbereiding_ID` = `v`.`idVoorbereiding`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_medewerker_inschrijving_count`
--

/*!50001 DROP VIEW IF EXISTS `view_medewerker_inschrijving_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_medewerker_inschrijving_count` AS select `a`.`idAanmelden` AS `Medewerker_ID`,`a`.`Naam` AS `Medewerker_Naam`,count(`i`.`idInschrijving`) AS `Inschrijving_Count` from (`aanmelden` `a` left join `inschrijving` `i` on((`a`.`idAanmelden` = `i`.`Aanmeld_ID`))) group by `Medewerker_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_voorbereiding_total_duration`
--

/*!50001 DROP VIEW IF EXISTS `view_voorbereiding_total_duration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_voorbereiding_total_duration` AS select `v`.`idVoorbereiding` AS `idVoorbereiding`,`v`.`Indhoud` AS `Indhoud`,sum(`v`.`Duur`) AS `Total_Duration` from (`voorbereiding` `v` join `inschrijving` `i` on((`v`.`idVoorbereiding` = `i`.`Voorbereiding_ID`))) group by `v`.`idVoorbereiding` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-07 11:25:18
