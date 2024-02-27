/*
Navicat MySQL Data Transfer

Source Database       : LogDB

Target Server Type    : MYSQL
Target Server Version : 50077
File Encoding         : 65001

Date: 2011-11-17 15:31:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `LogHistory`
-- ----------------------------
DROP TABLE IF EXISTS `LogHistory`;
CREATE TABLE `LogHistory` (
  `IP` varchar(15) NOT NULL default '',
  `Port` smallint(5) unsigned NOT NULL default '0',
  `Filename` varchar(255) NOT NULL default '',
  `Type` tinyint(3) unsigned default NULL,
  `Status` tinyint(3) default NULL,
  `StartTime` datetime default NULL,
  `EndTime` datetime default NULL,
  `LoadTime` datetime default NULL,
  PRIMARY KEY  (`IP`,`Port`,`Filename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `LoginLog`
-- ----------------------------
DROP TABLE IF EXISTS `LoginLog`;
CREATE TABLE `LoginLog` (
  `LogSerial` bigint(20) unsigned default NULL,
  `HeroSerial` bigint(20) unsigned default NULL,
  `HeroIdx` int(10) unsigned default NULL,
  `HeroOrder` tinyint(3) default NULL,
  `HeroName` varchar(13) default NULL,
  `IP` varchar(20) default NULL,
  `LoginTime` int(10) unsigned default NULL,
  `LogoutTime` int(10) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=20000000 AVG_ROW_LENGTH=58;

-- ----------------------------
-- Table structure for `MovementDetailLog`
-- ----------------------------
DROP TABLE IF EXISTS `MovementDetailLog`;
CREATE TABLE `MovementDetailLog` (
  `LogSerial` bigint(20) unsigned default NULL,
  `ObjSerial` bigint(20) unsigned default NULL,
  `ValueType` tinyint(3) unsigned default NULL,
  `Before` int(10) unsigned default NULL,
  `after` int(10) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=400000 AVG_ROW_LENGTH=26;


-- ----------------------------
-- Table structure for `MovementLog`
-- ----------------------------
DROP TABLE IF EXISTS `MovementLog`;
CREATE TABLE `MovementLog` (
  `LogSerial` bigint(20) unsigned default NULL,
  `HeroSerial` bigint(20) unsigned default NULL,
  `HeroIdx` int(10) unsigned default NULL,
  `HeroOrder` tinyint(3) default NULL,
  `HeroName` varchar(13) default NULL,
  `IP` varchar(20) default NULL,
  `LogType` tinyint(3) unsigned default NULL,
  `LogSubType` tinyint(3) unsigned default NULL,
  `Value` int(10) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=500000 AVG_ROW_LENGTH=55;


-- ----------------------------
-- Table structure for `ObjDetailLog`
-- ----------------------------
DROP TABLE IF EXISTS `ObjDetailLog`;
CREATE TABLE `ObjDetailLog` (
  `LogSerial` bigint(20) unsigned default NULL,
  `ObjSerial` bigint(20) unsigned default NULL,
  `ValueType` tinyint(3) unsigned default NULL,
  `Before` int(10) unsigned default NULL,
  `after` int(10) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=50000000 AVG_ROW_LENGTH=26;

-- ----------------------------
-- Table structure for `ObjLog`
-- ----------------------------
DROP TABLE IF EXISTS `ObjLog`;
CREATE TABLE `ObjLog` (
  `LogSerial` bigint(20) unsigned default NULL,
  `HeroSerial` bigint(20) unsigned default NULL,
  `HeroIdx` int(10) unsigned default NULL,
  `HeroOrder` tinyint(3) default NULL,
  `HeroName` varchar(13) default NULL,
  `IP` varchar(20) default NULL,
  `LogType` tinyint(3) unsigned default NULL,
  `LogSubType` tinyint(3) unsigned default NULL,
  `DataType` tinyint(3) unsigned default NULL,
  `ObjSerial` bigint(20) unsigned default NULL,
  `ObjIdx` smallint(5) unsigned default NULL,
  `ObjCount` int(10) unsigned default NULL,
  `opt` tinyint(3) default '0',
  `opt_level` tinyint(3) default '0',
  `synergy` tinyint(3) default '0',
  `synergy_level` tinyint(3) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 MAX_ROWS=1000000000 AVG_ROW_LENGTH=61;

-- ----------------------------
-- Table structure for `TradeDetailLog`
-- ----------------------------
DROP TABLE IF EXISTS `TradeDetailLog`;
CREATE TABLE `TradeDetailLog` (
  `LogSerial` bigint(20) unsigned default NULL,
  `ObjSerial` bigint(20) unsigned default NULL,
  `ValueType` tinyint(3) unsigned default NULL,
  `Ahead` int(10) unsigned default NULL,
  `After` int(10) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of TradeDetailLog
-- ----------------------------

-- ----------------------------
-- Table structure for `TradeLog`
-- ----------------------------
DROP TABLE IF EXISTS `TradeLog`;
CREATE TABLE `TradeLog` (
  `LogSerial` bigint(20) unsigned default NULL,
  `HeroSerial` bigint(20) unsigned default NULL,
  `HeroIdx` int(10) unsigned default NULL,
  `HeroOrder` tinyint(3) unsigned default NULL,
  `HeroName` varchar(13) default NULL,
  `IP` varchar(20) default NULL,
  `LogType` tinyint(3) unsigned default NULL,
  `LogSubType` tinyint(3) unsigned default NULL,
  `DataType` tinyint(3) unsigned default NULL,
  `ObjSerial` bigint(20) unsigned default NULL,
  `ObjIdx` smallint(5) unsigned default NULL,
  `ObjCount` int(10) unsigned default NULL,
  `opt` tinyint(3) default '0',
  `opt_level` tinyint(3) default '0',
  `synergy` tinyint(3) default '0',
  `synergy_level` tinyint(3) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of TradeLog
-- ----------------------------
