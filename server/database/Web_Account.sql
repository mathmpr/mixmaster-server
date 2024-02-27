-- MySQL dump 10.13  Distrib 5.7.41, for Linux (i686)
--
-- Host: localhost    Database: pb.Web_Account
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
  `ServerID` tinyint(3) unsigned NOT NULL DEFAULT '21',
  `Flag` enum('NEW','LOCK','SPEND','BACK') NOT NULL DEFAULT 'NEW',
  `RegDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ReceiptDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CartID` varchar(25) NOT NULL DEFAULT '',
  `uKey` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`nKey`),
  KEY `game_idx` (`IdIdx`,`ServerID`,`GiftPlayerID`,`ItemIdx`) USING BTREE,
  KEY `CartID` (`CartID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GameTail`
--

LOCK TABLES `GameTail` WRITE;
/*!40000 ALTER TABLE `GameTail` DISABLE KEYS */;
INSERT INTO `GameTail` VALUES ('ITEM','andre',1,1,1172,9609,0,0,1,21,'SPEND','2018-11-23 12:16:46','2017-07-16 22:24:15','',0),('ITEM','andre',1,1,1173,8657,0,0,2,21,'SPEND','2018-11-23 12:16:46','2017-07-16 22:24:15','',0),('ITEM','andre',1,1,1174,8037,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-16 22:24:15','',0),('ITEM','andre',1,1,1175,9606,0,0,1,21,'SPEND','2018-11-23 12:16:46','2017-07-16 22:24:15','',0),('ITEM','andre',1,1,1176,9483,0,0,1,21,'SPEND','2018-11-23 12:16:46','2017-07-16 22:24:15','',0),('ITEM','andre',1,1,1177,8180,0,0,999,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1178,8180,0,0,999,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1179,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1180,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1181,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1182,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1183,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1184,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1185,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1186,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1187,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1188,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1189,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1190,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1191,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1192,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1193,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1194,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1195,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1196,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1197,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1198,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1199,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0),('ITEM','andre',1,1,1200,3745,0,0,10,21,'SPEND','2018-11-23 12:16:46','2017-07-18 19:19:21','',0);
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
  KEY `IdIdx` (`IdIdx`) USING BTREE,
  KEY `PlayerID` (`PlayerID`) USING BTREE,
  KEY `index_group` (`GroupTxt`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=403582 DEFAULT CHARSET=latin1;
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
  KEY `checkTime` (`checkTime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=58873 DEFAULT CHARSET=euckr;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Count`
--

LOCK TABLES `User_Count` WRITE;
/*!40000 ALTER TABLE `User_Count` DISABLE KEYS */;
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

-- Dump completed on 2023-04-14  4:08:12
