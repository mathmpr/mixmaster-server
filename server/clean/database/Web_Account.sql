/*
Navicat MySQL Data Transfer

Source Database       : Web_Account

Target Server Type    : MYSQL
Target Server Version : 50077
File Encoding         : 65001

Date: 2011-11-17 15:45:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `GameTail`
-- ----------------------------
DROP TABLE IF EXISTS `GameTail`;
CREATE TABLE `GameTail` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) unsigned NOT NULL default '0',
  `IdIdx` int(11) unsigned NOT NULL default '0',
  `nKey` int(11) NOT NULL auto_increment,
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) unsigned NOT NULL default '0',
  `OptLevel` tinyint(3) unsigned NOT NULL default '0',
  `Qty` smallint(5) unsigned NOT NULL default '0',
  `ServerID` tinyint(3) unsigned NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','BACK') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `ReceiptDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `CartID` varchar(25) NOT NULL default '',
  `uKey` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nKey`),
  KEY `game_idx` (`IdIdx`,`ServerID`,`GiftPlayerID`,`ItemIdx`),
  KEY `CartID` (`CartID`)
) ENGINE=MyISAM AUTO_INCREMENT=1172 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `GameTail_Event`
-- ----------------------------
DROP TABLE IF EXISTS `GameTail_Event`;
CREATE TABLE `GameTail_Event` (
  `num` int(11) NOT NULL default '0',
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `PlayerID` varchar(16) NOT NULL default '',
  `IdIdx` int(11) unsigned NOT NULL default '0',
  `nKey` int(11) NOT NULL auto_increment,
  `ObjectIdx` smallint(5) unsigned NOT NULL default '0',
  `Qty` smallint(5) unsigned NOT NULL default '0',
  `ServerFlag` enum('define','undefine') NOT NULL default 'define',
  `ServerID` tinyint(3) unsigned NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','TIME_OVER') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `ReceiptDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `Info` varchar(255) NOT NULL default '',
  `GroupTxt` varchar(20) NOT NULL default '',
  `StartDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `EndDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`nKey`),
  KEY `IdIdx` (`IdIdx`),
  KEY `PlayerID` (`PlayerID`),
  KEY `index_group` (`GroupTxt`)
) ENGINE=MyISAM AUTO_INCREMENT=395660 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `User_Count`
-- ----------------------------
DROP TABLE IF EXISTS `User_Count`;
CREATE TABLE `User_Count` (
  `SEQ` int(30) unsigned NOT NULL auto_increment,
  `LGS` int(10) default NULL,
  `GMS` int(10) default NULL,
  `zone1` int(10) default NULL,
  `zone2` int(10) default NULL,
  `Server_total` int(10) default NULL,
  `checkTime` datetime default NULL,
  PRIMARY KEY  (`SEQ`),
  KEY `checkTime` (`checkTime`)
) ENGINE=MyISAM AUTO_INCREMENT=58873 DEFAULT CHARSET=euckr;

