-- MySQL dump 10.13  Distrib 5.7.41, for Linux (i686)
--
-- Host: localhost    Database: new.Web_Account
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
-- Table structure for table `GameTail`
--

DROP TABLE IF EXISTS `GameTail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GameTail` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL DEFAULT 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL DEFAULT '',
  `GiftIdIdx` int(11) unsigned NOT NULL DEFAULT '0',
  `IdIdx` int(11) unsigned NOT NULL DEFAULT '0',
  `nKey` int(11) NOT NULL AUTO_INCREMENT,
  `ItemIdx` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Opt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `OptLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Qty` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ServerID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flag` enum('NEW','LOCK','SPEND','BACK') NOT NULL DEFAULT 'NEW',
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ReceiptDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CartID` varchar(25) NOT NULL DEFAULT '',
  `uKey` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nKey`),
  KEY `game_idx` (`IdIdx`,`ServerID`,`GiftPlayerID`,`ItemIdx`),
  KEY `CartID` (`CartID`)
) ENGINE=MyISAM AUTO_INCREMENT=1172 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GameTail`
--

LOCK TABLES `GameTail` WRITE;
/*!40000 ALTER TABLE `GameTail` DISABLE KEYS */;
INSERT INTO `GameTail` VALUES ('ITEM','77pb',5930,5930,1168,145,0,0,1,0,'SPEND','2011-11-08 09:20:00','2011-11-10 00:22:54','0/2011211735_843785581',0),('ITEM','77pb',5930,5930,1171,8167,0,0,1,0,'NEW','2011-11-14 15:46:00','2011-11-14 15:46:00','0/2011211735_843785581',0),('ITEM','77pb',5930,5930,1170,4678,0,0,1,0,'SPEND','2011-11-08 09:21:00','2011-11-08 23:24:56','0/2011211735_843785581',0),('ITEM','77pb',5930,5930,1169,3407,0,0,1,0,'SPEND','2011-11-08 09:21:00','2011-11-08 11:22:41','0/2011211735_843785581',0),('ITEM','77pb',5930,5930,1167,144,0,0,1,0,'SPEND','2011-10-16 16:16:41','2011-11-10 00:21:26','0/2011211735_843785581',0);
/*!40000 ALTER TABLE `GameTail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GameTail_Event`
--

DROP TABLE IF EXISTS `GameTail_Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GameTail_Event` (
  `num` int(11) NOT NULL DEFAULT '0',
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL DEFAULT 'ITEM',
  `PlayerID` varchar(16) NOT NULL DEFAULT '',
  `IdIdx` int(11) unsigned NOT NULL DEFAULT '0',
  `nKey` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectIdx` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Qty` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ServerFlag` enum('define','undefine') NOT NULL DEFAULT 'define',
  `ServerID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flag` enum('NEW','LOCK','SPEND','TIME_OVER') NOT NULL DEFAULT 'NEW',
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ReceiptDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Info` varchar(255) NOT NULL DEFAULT '',
  `GroupTxt` varchar(20) NOT NULL DEFAULT '',
  `StartDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EndDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`nKey`),
  KEY `IdIdx` (`IdIdx`),
  KEY `PlayerID` (`PlayerID`),
  KEY `index_group` (`GroupTxt`)
) ENGINE=MyISAM AUTO_INCREMENT=395660 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GameTail_Event`
--

LOCK TABLES `GameTail_Event` WRITE;
/*!40000 ALTER TABLE `GameTail_Event` DISABLE KEYS */;
/*!40000 ALTER TABLE `GameTail_Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Count`
--

DROP TABLE IF EXISTS `User_Count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Count` (
  `SEQ` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `LGS` int(10) DEFAULT NULL,
  `GMS` int(10) DEFAULT NULL,
  `zone1` int(10) DEFAULT NULL,
  `zone2` int(10) DEFAULT NULL,
  `Server_total` int(10) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  PRIMARY KEY (`SEQ`),
  KEY `checkTime` (`checkTime`)
) ENGINE=MyISAM AUTO_INCREMENT=58873 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Count`
--

LOCK TABLES `User_Count` WRITE;
/*!40000 ALTER TABLE `User_Count` DISABLE KEYS */;
INSERT INTO `User_Count` VALUES (58105,2,0,69,57,128,'2011-10-30 17:30:00');
/*!40000 ALTER TABLE `User_Count` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14  4:04:39
