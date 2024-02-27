-- MySQL dump 10.13  Distrib 5.7.41, for Linux (i686)
--
-- Host: localhost    Database: pb.Member
-- ------------------------------------------------------
-- Server version	5.7.41-0ubuntu0.18.04.1

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
-- Table structure for table `ChangePassword`
--

DROP TABLE IF EXISTS `ChangePassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChangePassword` (
  `AdminID` varchar(12) NOT NULL DEFAULT '',
  `id_idx` int(11) DEFAULT NULL,
  `PlayerID` varchar(12) NOT NULL DEFAULT '',
  `Passwd` varchar(30) NOT NULL DEFAULT '',
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PlayerID`,`AdminID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangePassword`
--

LOCK TABLES `ChangePassword` WRITE;
/*!40000 ALTER TABLE `ChangePassword` DISABLE KEYS */;
INSERT INTO `ChangePassword` VALUES ('admin00',5122,'McRafael','7414c362200e4955','2011-10-13 17:26:43');
/*!40000 ALTER TABLE `ChangePassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Distraint`
--

DROP TABLE IF EXISTS `Distraint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Distraint` (
  `Num` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_idx` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerID` varchar(12) NOT NULL DEFAULT '',
  `CPPlayerID` varchar(20) NOT NULL DEFAULT '',
  `CPCode` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AdminID` varchar(20) NOT NULL DEFAULT '',
  `BlockType` enum('WEB','GAME','SUM') NOT NULL DEFAULT 'GAME',
  `Access` enum('ALLOW','DENY') NOT NULL DEFAULT 'ALLOW',
  `CharName` varchar(20) DEFAULT NULL,
  `ServerName` varchar(50) DEFAULT NULL,
  `Subject` varchar(255) NOT NULL DEFAULT '',
  `Content` text NOT NULL,
  `StartDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EndDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `B_Flag` enum('Y','N') NOT NULL DEFAULT 'Y',
  `BlockTypeNum` int(11) DEFAULT '0',
  PRIMARY KEY (`Num`),
  KEY `id_idx` (`id_idx`) USING BTREE,
  KEY `PlayerID` (`PlayerID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Distraint`
--

LOCK TABLES `Distraint` WRITE;
/*!40000 ALTER TABLE `Distraint` DISABLE KEYS */;
/*!40000 ALTER TABLE `Distraint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Management`
--

DROP TABLE IF EXISTS `Management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Management` (
  `Num` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AdminID` varchar(20) NOT NULL DEFAULT '',
  `Passwd` varchar(30) NOT NULL DEFAULT '',
  `Name` varchar(30) NOT NULL DEFAULT '',
  `Team` varchar(30) NOT NULL DEFAULT '',
  `Jigham` varchar(30) NOT NULL DEFAULT '',
  `Email` varchar(30) NOT NULL DEFAULT '',
  `ZipCode` varchar(7) NOT NULL DEFAULT '',
  `Address` varchar(255) NOT NULL DEFAULT '',
  `Tphone` varchar(20) NOT NULL DEFAULT '',
  `Cphone` varchar(20) NOT NULL DEFAULT '',
  `StartDate` date NOT NULL DEFAULT '2018-11-23',
  `EndDate` date NOT NULL DEFAULT '2018-11-23',
  `Access` tinyint(4) NOT NULL DEFAULT '10',
  `Flag` enum('Y','N') NOT NULL DEFAULT 'Y',
  `nCount` int(10) unsigned NOT NULL DEFAULT '0',
  `LoginIP` varchar(15) DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Num`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Management`
--

LOCK TABLES `Management` WRITE;
/*!40000 ALTER TABLE `Management` DISABLE KEYS */;
/*!40000 ALTER TABLE `Management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Player`
--

DROP TABLE IF EXISTS `Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Player` (
  `id_idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerID` varchar(20) NOT NULL DEFAULT '',
  `Passwd` varchar(255) NOT NULL DEFAULT '',
  `Passwd_Q` char(2) DEFAULT NULL,
  `Passwd_A` varchar(64) DEFAULT NULL,
  `Name` varchar(20) NOT NULL DEFAULT '',
  `JuminNo` varchar(20) NOT NULL DEFAULT '',
  `nYear` varchar(4) NOT NULL DEFAULT '',
  `nMonth` char(2) NOT NULL DEFAULT '',
  `nDay` char(2) DEFAULT NULL,
  `Sex` enum('1','2') NOT NULL DEFAULT '1',
  `TelePhone1` varchar(13) DEFAULT NULL,
  `TelePhone2` varchar(4) NOT NULL DEFAULT '',
  `TelePhone3` varchar(4) NOT NULL DEFAULT '',
  `CPhone1` varchar(13) DEFAULT NULL,
  `CPhone2` varchar(4) NOT NULL DEFAULT '',
  `CPhone3` varchar(4) NOT NULL DEFAULT '',
  `ZipCode` varchar(10) NOT NULL DEFAULT '',
  `AddressDo` varchar(20) DEFAULT NULL,
  `AddressSi` varchar(30) DEFAULT NULL,
  `AddressDong` varchar(50) DEFAULT NULL,
  `AddressEtc` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `JobType` char(2) DEFAULT NULL,
  `SchoolName` varchar(100) DEFAULT NULL,
  `Access` tinyint(4) unsigned NOT NULL DEFAULT '21',
  `Block` enum('ALLOW','GAME','WEB','SUM','SECEDER','WAIT') DEFAULT 'ALLOW',
  `LoginIP` varchar(15) DEFAULT NULL,
  `NewsLetter` enum('0','1') DEFAULT '1',
  `ParentName` varchar(20) DEFAULT NULL,
  `ParentJuminNo` varchar(20) DEFAULT NULL,
  `ParentPhone1` varchar(13) DEFAULT NULL,
  `ParentPhone2` varchar(4) NOT NULL DEFAULT '',
  `ParentPhone3` varchar(4) NOT NULL DEFAULT '',
  `LastLoginDate` datetime DEFAULT NULL,
  `SecederDate` datetime DEFAULT NULL,
  `PayPlayDate` datetime DEFAULT NULL,
  `PayPlayHours` int(11) unsigned DEFAULT '0',
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OldBlock` enum('ALLOW','GAME','WEB','SUM','SECEDER','WAIT') NOT NULL DEFAULT 'ALLOW',
  `ssoChk` char(1) DEFAULT NULL,
  `AuthCheck` enum('AUTH_OK','AUTH_WAIT','AUTH_CHECK') NOT NULL DEFAULT 'AUTH_OK',
  `AuthTimeLimit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LoginState` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `personal_auth` char(1) DEFAULT 'N',
  `Accesschecktype` int(11) DEFAULT '0',
  `PlayerNickName` varchar(30) DEFAULT NULL,
  `PlayerGameServer` varchar(15) DEFAULT NULL,
  `uc` int(10) NOT NULL DEFAULT '0',
  `IsAdmin` varchar(255) DEFAULT '0',
  `CashPoint` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id_idx`,`RegDate`),
  UNIQUE KEY `PlayerID` (`PlayerID`) USING BTREE,
  KEY `p_index1` (`PlayerID`,`JuminNo`,`Block`,`RegDate`) USING BTREE,
  KEY `RegDate` (`RegDate`) USING BTREE,
  KEY `g_JuminNo` (`JuminNo`,`Block`,`id_idx`) USING BTREE,
  KEY `SchoolName` (`SchoolName`) USING BTREE,
  KEY `Name` (`Name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Player`
--

LOCK TABLES `Player` WRITE;
/*!40000 ALTER TABLE `Player` DISABLE KEYS */;
INSERT INTO `Player` VALUES (1,'rojeta','*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9','','','rojeta','','','',NULL,'1',NULL,'','',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,'ALLOW',NULL,'1',NULL,NULL,NULL,'','',NULL,NULL,NULL,0,'2018-11-23 15:28:44','ALLOW',NULL,'AUTH_OK','2018-11-23 15:28:44',0,'N',0,NULL,NULL,0,'0','0'),(2,'diego','*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9',NULL,NULL,'','','','',NULL,'1',NULL,'','',NULL,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,'ALLOW',NULL,'1',NULL,NULL,NULL,'','',NULL,NULL,NULL,0,'2018-11-27 10:51:21','ALLOW',NULL,'AUTH_OK','2018-11-27 10:51:21',0,'N',0,NULL,NULL,0,'0','0');
/*!40000 ALTER TABLE `Player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall`
--

DROP TABLE IF EXISTS `mall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall` (
  `mall` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall`
--

LOCK TABLES `mall` WRITE;
/*!40000 ALTER TABLE `mall` DISABLE KEYS */;
/*!40000 ALTER TABLE `mall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixmall`
--

DROP TABLE IF EXISTS `mixmall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mixmall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) NOT NULL DEFAULT '',
  `descricao` varchar(300) NOT NULL DEFAULT '',
  `quantidade` int(2) NOT NULL DEFAULT '1',
  `ItemID` int(5) NOT NULL DEFAULT '0',
  `ServerID` varchar(20) NOT NULL DEFAULT '21',
  `preco` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `imagem` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixmall`
--

LOCK TABLES `mixmall` WRITE;
/*!40000 ALTER TABLE `mixmall` DISABLE KEYS */;
INSERT INTO `mixmall` VALUES (1,'Book Especial Mix','Book Especial : 100% Em Suas Mix',1,9483,'21',3500,2,'G070628001');
/*!40000 ALTER TABLE `mixmall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_wait`
--

DROP TABLE IF EXISTS `player_wait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_wait` (
  `PlayerID` varchar(12) NOT NULL DEFAULT '',
  `id_idx` int(10) NOT NULL DEFAULT '0',
  `Block` enum('ALLOW','GAME','WEB','SUM','SECEDER','WAIT') NOT NULL DEFAULT 'ALLOW',
  `SecederDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `HandlingDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OldBlock` enum('ALLOW','GAME','WEB','SUM','SECEDER','WAIT') NOT NULL DEFAULT 'ALLOW',
  PRIMARY KEY (`PlayerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Å»Åð´ë±âÀÚ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_wait`
--

LOCK TABLES `player_wait` WRITE;
/*!40000 ALTER TABLE `player_wait` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_wait` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14  4:09:06
