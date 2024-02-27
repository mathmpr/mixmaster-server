SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `rank_target_idx`;
CREATE TABLE `rank_target_idx` (
  `idx` int(32) unsigned default NULL,
  UNIQUE KEY `idx` (`idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_BillItem_0`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_0`;
CREATE TABLE `u_BillItem_0` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_0
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_1`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_1`;
CREATE TABLE `u_BillItem_1` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_1
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_2`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_2`;
CREATE TABLE `u_BillItem_2` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_2
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_3`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_3`;
CREATE TABLE `u_BillItem_3` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_3
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_4`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_4`;
CREATE TABLE `u_BillItem_4` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_4
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_5`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_5`;
CREATE TABLE `u_BillItem_5` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_5
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_6`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_6`;
CREATE TABLE `u_BillItem_6` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_6
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_7`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_7`;
CREATE TABLE `u_BillItem_7` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_7
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_8`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_8`;
CREATE TABLE `u_BillItem_8` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_8
-- ----------------------------

-- ----------------------------
-- Table structure for `u_BillItem_9`
-- ----------------------------
DROP TABLE IF EXISTS `u_BillItem_9`;
CREATE TABLE `u_BillItem_9` (
  `SubType` enum('TNULL','HENCH','ITEM') NOT NULL default 'ITEM',
  `GiftPlayerID` varchar(20) NOT NULL default '',
  `GiftIdIdx` int(11) NOT NULL default '0',
  `IdIdx` int(11) NOT NULL default '0',
  `nKey` int(11) unsigned NOT NULL default '0',
  `ItemIdx` smallint(5) unsigned NOT NULL default '0',
  `Opt` tinyint(3) NOT NULL default '0',
  `OptLevel` tinyint(3) NOT NULL default '0',
  `Qty` tinyint(3) NOT NULL default '0',
  `ServerID` tinyint(3) NOT NULL default '0',
  `Flag` enum('NEW','LOCK','SPEND','RESPEND') NOT NULL default 'NEW',
  `RegDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `TakeType` tinyint(3) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_BillItem_9
-- ----------------------------

-- ----------------------------
-- Table structure for `u_CastleWarInfo`
-- ----------------------------
DROP TABLE IF EXISTS `u_CastleWarInfo`;
CREATE TABLE `u_CastleWarInfo` (
  `zone_idx` smallint(5) unsigned NOT NULL default '0',
  `entry_type` tinyint(3) unsigned NOT NULL default '0',
  `guild_idx` smallint(5) unsigned NOT NULL default '0',
  `guild_name` varchar(12) default NULL,
  PRIMARY KEY  (`entry_type`,`zone_idx`,`guild_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_CastleWarInfo
-- ----------------------------
INSERT INTO `u_CastleWarInfo` VALUES ('101', '0', '10', '10');
INSERT INTO `u_CastleWarInfo` VALUES ('102', '0', '10', '10');

-- ----------------------------
-- Table structure for `u_guild`
-- ----------------------------
DROP TABLE IF EXISTS `u_guild`;
CREATE TABLE `u_guild` (
  `GuildIdx` smallint(2) unsigned NOT NULL auto_increment,
  `Name` varchar(12) character set latin1 collate latin1_bin default NULL,
  `Info` varchar(200) default '0',
  `Cert` varchar(100) default '0',
  `EstablishDate` datetime default NULL,
  `LimitCount` smallint(5) unsigned default '0',
  `Status` tinyint(3) unsigned NOT NULL default '0',
  `MarkRegDate` datetime default NULL,
  `MarkRegCnt` tinyint(3) unsigned default '0',
  `Dissolution` datetime default NULL,
  `gold` int(10) unsigned default NULL,
  `HiringIdx` smallint(5) unsigned default NULL,
  `CertDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `InfoDate` datetime NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`GuildIdx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_guild
-- ----------------------------

-- ----------------------------
-- Table structure for `u_guild_hench`
-- ----------------------------
DROP TABLE IF EXISTS `u_guild_hench`;
CREATE TABLE `u_guild_hench` (
  `guild_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  KEY `guild_idx` (`guild_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_guild_item`
-- ----------------------------
DROP TABLE IF EXISTS `u_guild_item`;
CREATE TABLE `u_guild_item` (
  `guild_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `item_idx` int(10) unsigned NOT NULL default '0',
  `socket_num` tinyint(3) unsigned NOT NULL default '0',
  `count` smallint(5) unsigned NOT NULL default '0',
  `opt` tinyint(3) unsigned NOT NULL default '0',
  `opt_level` tinyint(3) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default NULL,
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  `synergy` tinyint(3) unsigned default '0',
  `synergy_level` tinyint(3) unsigned default '0',
  KEY `guild_idx` (`guild_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_guildmember`
-- ----------------------------
DROP TABLE IF EXISTS `u_guildmember`;
CREATE TABLE `u_guildmember` (
  `HeroIdx` int(10) unsigned NOT NULL default '0',
  `HeroOrder` tinyint(3) unsigned NOT NULL default '0',
  `GuildIdx` smallint(5) unsigned NOT NULL default '0',
  `MemberID` smallint(5) unsigned NOT NULL default '0',
  `Grade` tinyint(4) unsigned default '0',
  `Authority` int(10) unsigned default '0',
  `UpgradeDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Memo` varchar(31) NOT NULL default '',
  PRIMARY KEY  (`HeroIdx`,`HeroOrder`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_guildmember
-- ----------------------------

-- ----------------------------
-- Table structure for `u_GuildZone`
-- ----------------------------
DROP TABLE IF EXISTS `u_GuildZone`;
CREATE TABLE `u_GuildZone` (
  `zone_idx` smallint(5) unsigned NOT NULL default '0',
  `guild_idx` smallint(5) unsigned NOT NULL default '0',
  `tax_rate` tinyint(3) unsigned NOT NULL default '100',
  `tax_change_count` tinyint(3) unsigned NOT NULL default '0',
  `tax_check_time` datetime default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`zone_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_hench_0`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_0`;
CREATE TABLE `u_hench_0` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_hench_0
-- ----------------------------

-- ----------------------------
-- Table structure for `u_hench_1`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_1`;
CREATE TABLE `u_hench_1` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_hench_2`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_2`;
CREATE TABLE `u_hench_2` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_hench_2
-- ----------------------------

-- ----------------------------
-- Table structure for `u_hench_3`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_3`;
CREATE TABLE `u_hench_3` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_hench_3
-- ----------------------------

-- ----------------------------
-- Table structure for `u_hench_4`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_4`;
CREATE TABLE `u_hench_4` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of u_hench_4
-- ----------------------------

-- ----------------------------
-- Table structure for `u_hench_5`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_5`;
CREATE TABLE `u_hench_5` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_hench_6`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_6`;
CREATE TABLE `u_hench_6` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_hench_7`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_7`;
CREATE TABLE `u_hench_7` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_hench_8`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_8`;
CREATE TABLE `u_hench_8` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_hench_9`
-- ----------------------------
DROP TABLE IF EXISTS `u_hench_9`;
CREATE TABLE `u_hench_9` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `position` tinyint(3) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` smallint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_hero`
-- ----------------------------
DROP TABLE IF EXISTS `u_hero`;
CREATE TABLE `u_hero` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(12) NOT NULL default '',
  `hero_type` tinyint(3) unsigned NOT NULL default '0',
  `now_zone_idx` smallint(5) unsigned NOT NULL default '0',
  `now_zone_x` tinyint(3) unsigned NOT NULL default '0',
  `now_zone_y` tinyint(3) unsigned NOT NULL default '0',
  `init_pos_layer` smallint(5) unsigned NOT NULL default '0',
  `revive_zone_idx` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '1',
  `gold` int(10) unsigned NOT NULL default '0',
  `attr` int(10) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_skill` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(6) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `abil_freepoint` smallint(5) unsigned NOT NULL default '0',
  `res_fire` smallint(5) unsigned NOT NULL default '0',
  `res_water` smallint(5) unsigned NOT NULL default '0',
  `res_earth` smallint(5) unsigned NOT NULL default '0',
  `res_wind` smallint(5) unsigned NOT NULL default '0',
  `res_devil` smallint(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned default '0',
  `regdate` datetime NOT NULL default CURRENT_TIMESTAMP,
  `avatar_head` smallint(5) unsigned default '0',
  `avatar_body` smallint(5) unsigned default '0',
  `avatar_foot` smallint(5) unsigned default '0',
  `return_time` int(10) unsigned default '0',
  `status` tinyint(3) unsigned default '0',
  `status_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  `nickname` smallint(5) unsigned NOT NULL default '0',
  `last_logout_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  `skill_point` smallint(5) unsigned NOT NULL default '0',
  `login` tinyint(1) unsigned NOT NULL default '0',
  `limit_zone_idx` smallint(5) unsigned NOT NULL default '0',
  `requestname` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_idx`,`hero_order`),
  KEY `g_index1` (`id_idx`,`hero_order`),
  KEY `u_hero_name_idx` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_hero_event`
-- ----------------------------
DROP TABLE IF EXISTS `u_hero_event`;
CREATE TABLE `u_hero_event` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `event_no` int(10) unsigned default NULL,
  PRIMARY KEY  (`id_idx`,`hero_order`),
  KEY `hero_event_idx` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_hero_quest`
-- ----------------------------
DROP TABLE IF EXISTS `u_hero_quest`;
CREATE TABLE `u_hero_quest` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `switch_number` smallint(5) unsigned NOT NULL default '0',
  `success_count` smallint(5) unsigned default NULL,
  `success_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_HeroSkill`
-- ----------------------------
DROP TABLE IF EXISTS `u_HeroSkill`;
CREATE TABLE `u_HeroSkill` (
  `heroIndex` int(10) unsigned NOT NULL default '0',
  `heroSocketNum` tinyint(3) unsigned NOT NULL default '0',
  `skillIndex` tinyint(3) unsigned NOT NULL default '0',
  `skillLevel` tinyint(3) unsigned NOT NULL default '0',
  `skillPoint` smallint(5) unsigned NOT NULL default '0',
  `learningDate` datetime NOT NULL default CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_item`
-- ----------------------------
DROP TABLE IF EXISTS `u_item`;
CREATE TABLE `u_item` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `item_idx` int(10) unsigned NOT NULL default '0',
  `socket_type` tinyint(3) unsigned NOT NULL default '0',
  `socket_num` tinyint(3) unsigned NOT NULL default '0',
  `count` smallint(5) unsigned NOT NULL default '0',
  `opt` tinyint(3) unsigned NOT NULL default '0',
  `opt_level` tinyint(3) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  `synergy` tinyint(3) unsigned default '0',
  `synergy_level` tinyint(3) unsigned default '0',
  KEY `g_index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_messenger`
-- ----------------------------
DROP TABLE IF EXISTS `u_messenger`;
CREATE TABLE `u_messenger` (
  `HeroIdx` int(10) unsigned NOT NULL default '0',
  `HeroOrder` tinyint(3) unsigned NOT NULL default '0',
  `TargetHeroIdx` int(10) unsigned NOT NULL default '0',
  `TargetHeroOrder` tinyint(3) unsigned NOT NULL default '0',
  `Status` tinyint(3) unsigned NOT NULL default '0',
  `MyState` tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (`HeroIdx`,`HeroOrder`,`TargetHeroIdx`,`TargetHeroOrder`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_MixLog`
-- ----------------------------
DROP TABLE IF EXISTS `u_MixLog`;
CREATE TABLE `u_MixLog` (
  `HeroIdx` int(10) unsigned NOT NULL default '0',
  `HeroOrder` tinyint(3) unsigned NOT NULL default '0',
  `type` smallint(5) unsigned default NULL,
  `SuccessCount` smallint(5) unsigned default NULL,
  `FirstSuccessTime` datetime default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_MixSkill`
-- ----------------------------
DROP TABLE IF EXISTS `u_MixSkill`;
CREATE TABLE `u_MixSkill` (
  `HeroIdx` int(10) unsigned NOT NULL default '0',
  `HeroOrder` tinyint(3) unsigned NOT NULL default '0',
  `MixSkill1` smallint(5) unsigned NOT NULL default '0',
  `MixSkill2` smallint(5) unsigned NOT NULL default '0',
  `MixSkill3` smallint(5) unsigned NOT NULL default '0',
  `MixSkill4` smallint(5) unsigned NOT NULL default '0',
  `MixSkill5` smallint(5) unsigned NOT NULL default '0',
  `MixSkill6` smallint(5) unsigned NOT NULL default '0',
  `MixSkill7` smallint(5) unsigned NOT NULL default '0',
  `MixSkill8` smallint(5) unsigned NOT NULL default '0',
  `MixSkill9` smallint(5) unsigned NOT NULL default '0',
  `MixSkill10` smallint(5) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_QuestLog`
-- ----------------------------
DROP TABLE IF EXISTS `u_QuestLog`;
CREATE TABLE `u_QuestLog` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `hero_order` tinyint(3) unsigned NOT NULL default '0',
  `quest_index` smallint(5) unsigned NOT NULL default '0',
  `quest_state` tinyint(3) unsigned NOT NULL default '0',
  `start_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  `end_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  `end_count` smallint(5) unsigned NOT NULL default '0',
  KEY `index1` (`id_idx`,`hero_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_skillstate`
-- ----------------------------
DROP TABLE IF EXISTS `u_skillstate`;
CREATE TABLE `u_skillstate` (
  `id_idx` int(10) NOT NULL default '0',
  `hero_order` tinyint(4) NOT NULL default '0',
  `effect_idx` tinyint(4) NOT NULL default '0',
  `SkillIdx` tinyint(4) NOT NULL default '0',
  `EffectSkillTime` int(10) NOT NULL default '0',
  `EffectValue` float NOT NULL default '0',
  `EffectLevel` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store`
-- ----------------------------
DROP TABLE IF EXISTS `u_store`;
CREATE TABLE `u_store` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `store_gold` int(10) unsigned NOT NULL default '0',
  `store_state` tinyint(3) unsigned NOT NULL default '0',
  `last_store_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `u_store_hench_0`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_0`;
CREATE TABLE `u_store_hench_0` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store_hench_1`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_1`;
CREATE TABLE `u_store_hench_1` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store_hench_2`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_2`;
CREATE TABLE `u_store_hench_2` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store_hench_3`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_3`;
CREATE TABLE `u_store_hench_3` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store_hench_4`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_4`;
CREATE TABLE `u_store_hench_4` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store_hench_5`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_5`;
CREATE TABLE `u_store_hench_5` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store_hench_6`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_6`;
CREATE TABLE `u_store_hench_6` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `u_store_hench_7`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_7`;
CREATE TABLE `u_store_hench_7` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store_hench_8`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_8`;
CREATE TABLE `u_store_hench_8` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- ----------------------------
-- Table structure for `u_store_hench_9`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_hench_9`;
CREATE TABLE `u_store_hench_9` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `hench_order` tinyint(3) unsigned NOT NULL default '0',
  `monster_type` smallint(5) unsigned NOT NULL default '0',
  `name` char(12) NOT NULL default '0',
  `sex` tinyint(3) unsigned NOT NULL default '0',
  `state` tinyint(3) unsigned NOT NULL default '0',
  `mixnum` smallint(5) unsigned NOT NULL default '0',
  `baselevel` smallint(5) unsigned NOT NULL default '0',
  `max_baselevel` tinyint(3) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `speed_move` tinyint(3) unsigned NOT NULL default '0',
  `speed_attack` smallint(5) unsigned NOT NULL default '0',
  `speed_spell` smallint(5) unsigned NOT NULL default '0',
  `str` smallint(5) unsigned NOT NULL default '0',
  `dex` smallint(5) unsigned NOT NULL default '0',
  `aim` smallint(5) unsigned NOT NULL default '0',
  `luck` smallint(5) unsigned NOT NULL default '0',
  `ap` smallint(5) unsigned NOT NULL default '0',
  `dp` smallint(5) unsigned NOT NULL default '0',
  `hc` smallint(5) unsigned NOT NULL default '0',
  `hd` smallint(5) unsigned NOT NULL default '0',
  `hp` smallint(5) unsigned NOT NULL default '0',
  `mp` smallint(5) unsigned NOT NULL default '0',
  `maxhp` smallint(5) unsigned NOT NULL default '0',
  `maxmp` smallint(5) unsigned NOT NULL default '0',
  `item0` int(10) unsigned NOT NULL default '0',
  `item1` int(10) unsigned NOT NULL default '0',
  `item2` int(10) unsigned NOT NULL default '0',
  `growthtype` tinyint(3) unsigned NOT NULL default '0',
  `race_val` int(5) unsigned NOT NULL default '0',
  `ign_att_cnt` tinyint(3) unsigned NOT NULL default '0',
  `add_defense_cnt` tinyint(3) unsigned NOT NULL default '0',
  `enchant_grade` tinyint(3) default '0',
  `item_slot_total` tinyint(3) unsigned NOT NULL default '0',
  `item_idx_0` smallint(5) unsigned NOT NULL default '0',
  `item_serial_0` bigint(20) unsigned NOT NULL default '0',
  `item_duration_0` int(10) unsigned NOT NULL default '0',
  `item_idx_1` smallint(5) unsigned NOT NULL default '0',
  `item_serial_1` bigint(20) unsigned NOT NULL default '0',
  `item_duration_1` int(10) unsigned NOT NULL default '0',
  `item_idx_2` smallint(5) unsigned NOT NULL default '0',
  `item_serial_2` bigint(20) unsigned NOT NULL default '0',
  `item_duration_2` int(10) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



-- ----------------------------
-- Table structure for `u_store_item`
-- ----------------------------
DROP TABLE IF EXISTS `u_store_item`;
CREATE TABLE `u_store_item` (
  `id_idx` int(10) unsigned NOT NULL default '0',
  `serial` bigint(20) unsigned NOT NULL default '0',
  `item_idx` int(10) unsigned NOT NULL default '0',
  `socket_num` tinyint(3) unsigned NOT NULL default '0',
  `count` smallint(5) unsigned NOT NULL default '0',
  `opt` tinyint(3) unsigned NOT NULL default '0',
  `opt_level` tinyint(3) unsigned NOT NULL default '0',
  `duration` int(10) unsigned default '0',
  `last_check_time` datetime NOT NULL default CURRENT_TIMESTAMP,
  `synergy` tinyint(3) unsigned default '0',
  `synergy_level` tinyint(3) unsigned default '0',
  KEY `id_idx` (`id_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

