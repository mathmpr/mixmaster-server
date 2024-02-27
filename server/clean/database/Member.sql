/*
Navicat MySQL Data Transfer
Source Database       : Member

Target Server Type    : MYSQL
Target Server Version : 50077
File Encoding         : 65001

Date: 2011-11-17 15:38:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ChangePassword`
-- ----------------------------
DROP TABLE IF EXISTS `ChangePassword`;
CREATE TABLE `ChangePassword` (
  `AdminID` varchar(12) NOT NULL default '',
  `id_idx` int(11) default NULL,
  `PlayerID` varchar(12) NOT NULL default '',
  `Passwd` varchar(30) NOT NULL default '',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`PlayerID`,`AdminID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `Distraint`
-- ----------------------------
DROP TABLE IF EXISTS `Distraint`;
CREATE TABLE `Distraint` (
  `Num` int(10) unsigned NOT NULL auto_increment,
  `id_idx` int(10) unsigned NOT NULL default '0',
  `PlayerID` varchar(12) NOT NULL default '',
  `CPPlayerID` varchar(20) NOT NULL default '',
  `CPCode` tinyint(3) unsigned NOT NULL default '0',
  `AdminID` varchar(20) NOT NULL default '',
  `BlockType` enum('WEB','GAME','SUM') NOT NULL default 'GAME',
  `Access` enum('ALLOW','DENY') NOT NULL default 'ALLOW',
  `CharName` varchar(20) default NULL,
  `ServerName` varchar(50) default NULL,
  `Subject` varchar(255) NOT NULL default '',
  `Content` text NOT NULL,
  `StartDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `EndDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `B_Flag` enum('Y','N') NOT NULL default 'Y',
  `BlockTypeNum` int(11) default '0',
  PRIMARY KEY  (`Num`),
  KEY `id_idx` (`id_idx`),
  KEY `PlayerID` (`PlayerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `Management`
-- ----------------------------
DROP TABLE IF EXISTS `Management`;
CREATE TABLE `Management` (
  `Num` int(10) unsigned NOT NULL auto_increment,
  `AdminID` varchar(20) NOT NULL default '',
  `Passwd` varchar(30) NOT NULL default '',
  `Name` varchar(30) NOT NULL default '',
  `Team` varchar(30) NOT NULL default '',
  `Jigham` varchar(30) NOT NULL default '',
  `Email` varchar(30) NOT NULL default '',
  `ZipCode` varchar(7) NOT NULL default '',
  `Address` varchar(255) NOT NULL default '',
  `Tphone` varchar(20) NOT NULL default '',
  `Cphone` varchar(20) NOT NULL default '',
  `StartDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `EndDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `Access` tinyint(4) NOT NULL default '10',
  `Flag` enum('Y','N') NOT NULL default 'Y',
  `nCount` int(10) unsigned NOT NULL default '0',
  `LoginIP` varchar(15) default NULL,
  `LastLoginDate` datetime default NULL,
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Num`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=euckr;

-- ----------------------------
-- Records of Management
-- ----------------------------
INSERT INTO `Management` VALUES ('109', 'admin00', 'aurora2@', 'admin', 'admin', '', 'admin@admin.com', '680-190', '&#65533;??? ³²±¸ &#65533;?&#65533;??&#65533;   111', '111-1111-1111', '111-1111-1111', '1111-11-11', CURRENT_TIMESTAMP, '90', 'Y', '522', '220.117.218.190', '2011-10-13 17:26:05', '2009-08-14 17:02:40');

-- ----------------------------
-- Table structure for `Player`
-- ----------------------------
DROP TABLE IF EXISTS `Player`;
CREATE TABLE `Player` (
  `id_idx` int(10) unsigned NOT NULL auto_increment,
  `PlayerID` varchar(20) NOT NULL default '',
  `Passwd` varchar(30) NOT NULL default '',
  `Passwd_Q` char(2) default NULL,
  `Passwd_A` varchar(64) default NULL,
  `Name` varchar(20) NOT NULL default '',
  `JuminNo` varchar(20) NOT NULL default '',
  `nYear` varchar(4) NOT NULL default '',
  `nMonth` char(2) NOT NULL default '',
  `nDay` char(2) default NULL,
  `Sex` enum('1','2') NOT NULL default '1',
  `TelePhone1` varchar(13) default NULL,
  `TelePhone2` varchar(4) NOT NULL default '',
  `TelePhone3` varchar(4) NOT NULL default '',
  `CPhone1` varchar(13) default NULL,
  `CPhone2` varchar(4) NOT NULL default '',
  `CPhone3` varchar(4) NOT NULL default '',
  `ZipCode` varchar(10) NOT NULL default '',
  `AddressDo` varchar(20) default NULL,
  `AddressSi` varchar(30) default NULL,
  `AddressDong` varchar(50) default NULL,
  `AddressEtc` varchar(100) default NULL,
  `Address` varchar(255) default NULL,
  `Email` varchar(30) default NULL,
  `JobType` char(2) default NULL,
  `SchoolName` varchar(100) default NULL,
  `Access` tinyint(4) unsigned NOT NULL default '21',
  `Block` enum('ALLOW','GAME','WEB','SUM','SECEDER','WAIT') default 'ALLOW',
  `LoginIP` varchar(15) default NULL,
  `NewsLetter` enum('0','1') default '1',
  `ParentName` varchar(20) default NULL,
  `ParentJuminNo` varchar(20) default NULL,
  `ParentPhone1` varchar(13) default NULL,
  `ParentPhone2` varchar(4) NOT NULL default '',
  `ParentPhone3` varchar(4) NOT NULL default '',
  `LastLoginDate` datetime default NULL,
  `SecederDate` datetime default NULL,
  `PayPlayDate` datetime default NULL,
  `PayPlayHours` int(11) unsigned default '0',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `OldBlock` enum('ALLOW','GAME','WEB','SUM','SECEDER','WAIT') NOT NULL default 'ALLOW',
  `ssoChk` char(1) default NULL,
  `AuthCheck` enum('AUTH_OK','AUTH_WAIT','AUTH_CHECK') NOT NULL default 'AUTH_OK',
  `AuthTimeLimit` datetime NOT NULL default CURRENT_TIMESTAMP,
  `LoginState` tinyint(1) unsigned NOT NULL default '0',
  `personal_auth` char(1) default 'N',
  `Accesschecktype` int(11) default '0',
  `PlayerNickName` varchar(30) default NULL,
  `PlayerGameServer` varchar(15) default NULL,
  PRIMARY KEY  (`id_idx`,`RegDate`),
  UNIQUE KEY `PlayerID` (`PlayerID`),
  KEY `p_index1` (`PlayerID`,`JuminNo`,`Block`,`RegDate`),
  KEY `RegDate` (`RegDate`),
  KEY `g_JuminNo` (`JuminNo`,`Block`,`id_idx`),
  KEY `SchoolName` (`SchoolName`),
  KEY `Name` (`Name`)
) ENGINE=MyISAM AUTO_INCREMENT=8861 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Player
-- ----------------------------
INSERT INTO `Player` VALUES ('1', 'test01', '565491d704013245', '00', '1', 'test01', '1111111111111', '1988', '07', '12', '2', null, '', '', null, '', '', '11', '0', '1', null, '1', '1', '1', null, null, '21', 'ALLOW', '221.148.118.190', '0', '', '', null, '', '', '2011-11-16 14:26:31', null, null, null, '2002-09-14 18:33:00', 'ALLOW', null, 'AUTH_OK', CURRENT_TIMESTAMP, '0', 'E', '0', '', '');
-- ----------------------------
-- Table structure for `player_wait`
-- ----------------------------
DROP TABLE IF EXISTS `player_wait`;
CREATE TABLE `player_wait` (
  `PlayerID` varchar(12) NOT NULL default '',
  `id_idx` int(10) NOT NULL default '0',
  `Block` enum('ALLOW','GAME','WEB','SUM','SECEDER','WAIT') NOT NULL default 'ALLOW',
  `SecederDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `HandlingDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `OldBlock` enum('ALLOW','GAME','WEB','SUM','SECEDER','WAIT') NOT NULL default 'ALLOW',
  PRIMARY KEY  (`PlayerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Å»Åð´ë±âÀÚ';

-- ----------------------------
-- Records of player_wait
-- ----------------------------
