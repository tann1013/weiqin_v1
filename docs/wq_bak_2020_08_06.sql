-- MySQL dump 10.16  Distrib 10.1.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: wq
-- ------------------------------------------------------
-- Server version	10.1.8-MariaDB

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
-- Table structure for table `ims_account`
--

DROP TABLE IF EXISTS `ims_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `send_account_expire_status` tinyint(1) NOT NULL,
  `send_api_expire_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account`
--

LOCK TABLES `ims_account` WRITE;
/*!40000 ALTER TABLE `ims_account` DISABLE KEYS */;
INSERT INTO `ims_account` VALUES (1,1,'uRr8qvQV',1,0,0,0,0,0);
/*!40000 ALTER TABLE `ims_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_aliapp`
--

DROP TABLE IF EXISTS `ims_account_aliapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_aliapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `key` varchar(16) NOT NULL,
  PRIMARY KEY (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_aliapp`
--

LOCK TABLES `ims_account_aliapp` WRITE;
/*!40000 ALTER TABLE `ims_account_aliapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_aliapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_baiduapp`
--

DROP TABLE IF EXISTS `ims_account_baiduapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_baiduapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appid` varchar(32) NOT NULL,
  `key` varchar(32) NOT NULL,
  `secret` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_baiduapp`
--

LOCK TABLES `ims_account_baiduapp` WRITE;
/*!40000 ALTER TABLE `ims_account_baiduapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_baiduapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_phoneapp`
--

DROP TABLE IF EXISTS `ims_account_phoneapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_phoneapp`
--

LOCK TABLES `ims_account_phoneapp` WRITE;
/*!40000 ALTER TABLE `ims_account_phoneapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_phoneapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_toutiaoapp`
--

DROP TABLE IF EXISTS `ims_account_toutiaoapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_toutiaoapp` (
  `acid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appid` varchar(32) NOT NULL,
  `key` varchar(32) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_toutiaoapp`
--

LOCK TABLES `ims_account_toutiaoapp` WRITE;
/*!40000 ALTER TABLE `ims_account_toutiaoapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_toutiaoapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_webapp`
--

DROP TABLE IF EXISTS `ims_account_webapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_webapp`
--

LOCK TABLES `ims_account_webapp` WRITE;
/*!40000 ALTER TABLE `ims_account_webapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_webapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_wechats`
--

DROP TABLE IF EXISTS `ims_account_wechats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_wechats`
--

LOCK TABLES `ims_account_wechats` WRITE;
/*!40000 ALTER TABLE `ims_account_wechats` DISABLE KEYS */;
INSERT INTO `ims_account_wechats` VALUES (1,1,'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP','',1,'we7team','','','','','','','','',0,'','',1,'','');
/*!40000 ALTER TABLE `ims_account_wechats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_wxapp`
--

DROP TABLE IF EXISTS `ims_account_wxapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  `auth_refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_wxapp`
--

LOCK TABLES `ims_account_wxapp` WRITE;
/*!40000 ALTER TABLE `ims_account_wxapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_wxapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_xzapp`
--

DROP TABLE IF EXISTS `ims_account_xzapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_xzapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `original` varchar(50) NOT NULL,
  `lastupdate` int(10) NOT NULL,
  `styleid` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `xzapp_id` varchar(30) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `key` varchar(80) NOT NULL,
  `secret` varchar(80) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_xzapp`
--

LOCK TABLES `ims_account_xzapp` WRITE;
/*!40000 ALTER TABLE `ims_account_xzapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_xzapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_activity_clerk_menu`
--

DROP TABLE IF EXISTS `ims_activity_clerk_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_activity_clerk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `displayorder` int(4) NOT NULL,
  `pid` int(6) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `system` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_activity_clerk_menu`
--

LOCK TABLES `ims_activity_clerk_menu` WRITE;
/*!40000 ALTER TABLE `ims_activity_clerk_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_activity_clerk_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_activity_clerks`
--

DROP TABLE IF EXISTS `ims_activity_clerks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_activity_clerks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `password` (`password`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_activity_clerks`
--

LOCK TABLES `ims_activity_clerks` WRITE;
/*!40000 ALTER TABLE `ims_activity_clerks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_activity_clerks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_category`
--

DROP TABLE IF EXISTS `ims_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_category`
--

LOCK TABLES `ims_article_category` WRITE;
/*!40000 ALTER TABLE `ims_article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_comment`
--

DROP TABLE IF EXISTS `ims_article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `is_like` tinyint(1) NOT NULL,
  `is_reply` tinyint(1) NOT NULL,
  `like_num` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_comment`
--

LOCK TABLES `ims_article_comment` WRITE;
/*!40000 ALTER TABLE `ims_article_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_news`
--

DROP TABLE IF EXISTS `ims_article_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_news`
--

LOCK TABLES `ims_article_news` WRITE;
/*!40000 ALTER TABLE `ims_article_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_notice`
--

DROP TABLE IF EXISTS `ims_article_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_notice`
--

LOCK TABLES `ims_article_notice` WRITE;
/*!40000 ALTER TABLE `ims_article_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_unread_notice`
--

DROP TABLE IF EXISTS `ims_article_unread_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_unread_notice`
--

LOCK TABLES `ims_article_unread_notice` WRITE;
/*!40000 ALTER TABLE `ims_article_unread_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_unread_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_attachment_group`
--

DROP TABLE IF EXISTS `ims_attachment_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_attachment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_attachment_group`
--

LOCK TABLES `ims_attachment_group` WRITE;
/*!40000 ALTER TABLE `ims_attachment_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_attachment_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_basic_reply`
--

DROP TABLE IF EXISTS `ims_basic_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_basic_reply`
--

LOCK TABLES `ims_basic_reply` WRITE;
/*!40000 ALTER TABLE `ims_basic_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_basic_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_business`
--

DROP TABLE IF EXISTS `ims_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_business`
--

LOCK TABLES `ims_business` WRITE;
/*!40000 ALTER TABLE `ims_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_attachment`
--

DROP TABLE IF EXISTS `ims_core_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `displayorder` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_attachment`
--

LOCK TABLES `ims_core_attachment` WRITE;
/*!40000 ALTER TABLE `ims_core_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cache`
--

DROP TABLE IF EXISTS `ims_core_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cache` (
  `key` varchar(100) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cache`
--

LOCK TABLES `ims_core_cache` WRITE;
/*!40000 ALTER TABLE `ims_core_cache` DISABLE KEYS */;
INSERT INTO `ims_core_cache` VALUES ('we7:setting','a:7:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";a:8:{s:3:\"key\";i:233507;s:5:\"token\";s:32:\"283650b83c4b3cd04733d653c7569eaa\";s:3:\"url\";s:20:\"http://119.29.118.84\";s:7:\"version\";s:5:\"2.6.4\";s:7:\"release\";s:12:\"202007230001\";s:4:\"name\";s:29:\"http://119.29.118.84的站点\";s:6:\"family\";s:1:\"v\";s:15:\"profile_perfect\";b:0;}s:7:\"cloudip\";a:2:{s:2:\"ip\";s:14:\"182.254.52.213\";s:6:\"expire\";i:1596684649;}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"vAac3an1qXMvDqPqYXaaPpz5g3Dz1fYN\";s:14:\"encodingaeskey\";s:43:\"upzN3ONpPFPNMD7PuX1kfTCtPZynFuJYtuJtuFUcho7\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}}'),('we7:cloud_api:0a39b6acb3900f2b0c15dc1f84808f87','a:2:{s:6:\"expire\";i:1596681130;s:4:\"data\";a:1:{s:4:\"data\";s:7:\"success\";}}'),('we7:random','a:2:{s:6:\"expire\";i:1596681944;s:4:\"data\";s:4:\"LwWI\";}'),('we7:cloud_api:ba13a74d6d22572ace06ba9c185896df','a:2:{s:6:\"expire\";i:1596681944;s:4:\"data\";a:1:{s:5:\"token\";s:32:\"f40627762585437df5569ed9877f0b92\";}}'),('we7:cloud_transtoken','s:82:\"32b2WSD/ms6k3dXaX8yb2uV2O3TSyFd6cO8LF21kIfWmZAx/8KFzXpxv8SOVrB5oUcZFNPbkCtuEe9zgIg\";'),('we7:cloud_api:5314f5c0e24596eb71143a5e59ecd684','a:2:{s:6:\"expire\";i:1596681990;s:4:\"data\";a:16:{s:6:\"bbsuid\";i:423386;s:8:\"username\";s:11:\"wxIdentical\";s:8:\"services\";s:0:\"\";s:3:\"key\";i:233507;s:3:\"url\";s:20:\"http://119.29.118.84\";s:6:\"family\";s:1:\"v\";s:8:\"sitename\";s:29:\"http://119.29.118.84的站点\";s:2:\"ip\";s:13:\"119.29.118.84\";s:5:\"token\";s:15:\"28365*****69eaa\";s:5:\"label\";a:0:{}s:9:\"blacklist\";i:0;s:10:\"dis_member\";N;s:7:\"inviter\";i:0;s:19:\"service_inviter_uid\";i:0;s:8:\"quantity\";i:9999;s:10:\"createtime\";i:1596680753;}}'),('we7:system_frame:0','a:20:{s:7:\"welcome\";a:7:{s:5:\"title\";s:6:\"首页\";s:4:\"icon\";s:10:\"wi wi-home\";s:3:\"url\";s:48:\"./index.php?c=home&a=welcome&do=system&page=home\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:2;}s:14:\"account_manage\";a:8:{s:5:\"title\";s:12:\"平台管理\";s:4:\"icon\";s:21:\"wi wi-platform-manage\";s:9:\"dimension\";i:2;s:3:\"url\";s:31:\"./index.php?c=account&a=manage&\";s:7:\"section\";a:1:{s:14:\"account_manage\";a:2:{s:5:\"title\";s:12:\"平台管理\";s:4:\"menu\";a:4:{s:22:\"account_manage_display\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"平台列表\";s:3:\"url\";s:31:\"./index.php?c=account&a=manage&\";s:15:\"permission_name\";s:22:\"account_manage_display\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:12:\"帐号停用\";s:15:\"permission_name\";s:19:\"account_manage_stop\";}}}s:22:\"account_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:32:\"./index.php?c=account&a=recycle&\";s:15:\"permission_name\";s:22:\"account_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"帐号删除\";s:15:\"permission_name\";s:21:\"account_manage_delete\";}i:1;a:2:{s:5:\"title\";s:12:\"帐号恢复\";s:15:\"permission_name\";s:22:\"account_manage_recover\";}}}s:30:\"account_manage_system_platform\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:30:\"account_manage_system_platform\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:30:\"account_manage_expired_message\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\" 自定义到期提示\";s:3:\"url\";s:40:\"./index.php?c=account&a=expired-message&\";s:15:\"permission_name\";s:30:\"account_manage_expired_message\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:3;}s:13:\"module_manage\";a:8:{s:5:\"title\";s:12:\"应用管理\";s:4:\"icon\";s:19:\"wi wi-module-manage\";s:9:\"dimension\";i:2;s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=installed&\";s:7:\"section\";a:1:{s:13:\"module_manage\";a:2:{s:5:\"title\";s:12:\"应用管理\";s:4:\"menu\";a:6:{s:23:\"module_manage_installed\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"已安装列表\";s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=installed&\";s:15:\"permission_name\";s:23:\"module_manage_installed\";s:4:\"icon\";N;s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"module_manage_stoped\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"已停用列表\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=recycle&type=1\";s:15:\"permission_name\";s:20:\"module_manage_stoped\";s:4:\"icon\";N;s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:27:\"module_manage_not_installed\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"未安装列表\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=not_installed&\";s:15:\"permission_name\";s:27:\"module_manage_not_installed\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:21:\"module_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=recycle&type=2\";s:15:\"permission_name\";s:21:\"module_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:23:\"module_manage_subscribe\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"订阅管理\";s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=subscribe&\";s:15:\"permission_name\";s:23:\"module_manage_subscribe\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"module_manage_expire\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"应用停用提醒\";s:3:\"url\";s:30:\"./index.php?c=module&a=expire&\";s:15:\"permission_name\";s:20:\"module_manage_expire\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:4;}s:11:\"user_manage\";a:8:{s:5:\"title\";s:12:\"用户管理\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:7:\"section\";a:1:{s:11:\"user_manage\";a:2:{s:5:\"title\";s:12:\"用户管理\";s:4:\"menu\";a:5:{s:19:\"user_manage_display\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"普通用户\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:19:\"user_manage_display\";s:4:\"icon\";N;s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"user_manage_clerk\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"店员管理\";s:3:\"url\";s:39:\"./index.php?c=user&a=display&type=clerk\";s:15:\"permission_name\";s:17:\"user_manage_clerk\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"user_manage_check\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"审核用户\";s:3:\"url\";s:39:\"./index.php?c=user&a=display&type=check\";s:15:\"permission_name\";s:17:\"user_manage_check\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"user_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:41:\"./index.php?c=user&a=display&type=recycle\";s:15:\"permission_name\";s:19:\"user_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"user_manage_fields\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"用户属性设置\";s:3:\"url\";s:39:\"./index.php?c=user&a=fields&do=display&\";s:15:\"permission_name\";s:18:\"user_manage_fields\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:5;}s:10:\"permission\";a:8:{s:5:\"title\";s:9:\"权限组\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:7:\"section\";a:1:{s:10:\"permission\";a:2:{s:5:\"title\";s:9:\"权限组\";s:4:\"menu\";a:3:{s:23:\"permission_module_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:23:\"permission_module_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:31:\"permission_create_account_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"账号权限组\";s:3:\"url\";s:34:\"./index.php?c=user&a=create-group&\";s:15:\"permission_name\";s:31:\"permission_create_account_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:21:\"permission_user_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"用户权限组合\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:21:\"permission_user_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:6;}s:6:\"system\";a:8:{s:5:\"title\";s:12:\"系统功能\";s:4:\"icon\";s:13:\"wi wi-setting\";s:9:\"dimension\";i:3;s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:7:\"section\";a:2:{s:7:\"article\";a:3:{s:5:\"title\";s:12:\"站内公告\";s:4:\"menu\";a:1:{s:14:\"system_article\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站内公告\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:14:\"system_article\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"公告列表\";s:15:\"permission_name\";s:26:\"system_article_notice_list\";}i:1;a:2:{s:5:\"title\";s:12:\"公告分类\";s:15:\"permission_name\";s:30:\"system_article_notice_category\";}}}}s:7:\"founder\";b:1;}s:3:\"sms\";a:3:{s:5:\"title\";s:12:\"系统短信\";s:4:\"menu\";a:5:{s:21:\"system_cloud_sms_sign\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"签名管理\";s:3:\"url\";s:31:\"./index.php?c=cloud&a=sms-sign&\";s:15:\"permission_name\";s:21:\"system_cloud_sms_sign\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:24:\"system_cloud_sms_package\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"购买短信包\";s:3:\"url\";s:34:\"./index.php?c=cloud&a=sms-package&\";s:15:\"permission_name\";s:24:\"system_cloud_sms_package\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:27:\"system_cloud_sms_statistics\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"发送统计\";s:3:\"url\";s:37:\"./index.php?c=cloud&a=sms-statistics&\";s:15:\"permission_name\";s:27:\"system_cloud_sms_statistics\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_cloud_sms_template\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"短信模板\";s:3:\"url\";s:35:\"./index.php?c=cloud&a=sms-template&\";s:15:\"permission_name\";s:25:\"system_cloud_sms_template\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"system_cloud_sms_share\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"分配短信\";s:3:\"url\";s:32:\"./index.php?c=cloud&a=sms-share&\";s:15:\"permission_name\";s:22:\"system_cloud_sms_share\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:7;}s:4:\"site\";a:9:{s:5:\"title\";s:12:\"站点设置\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:9:\"dimension\";i:3;s:3:\"url\";s:30:\"./index.php?c=cloud&a=upgrade&\";s:7:\"section\";a:4:{s:5:\"cloud\";a:2:{s:5:\"title\";s:9:\"云服务\";s:4:\"menu\";a:3:{s:14:\"system_profile\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统升级\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=upgrade&\";s:15:\"permission_name\";s:20:\"system_cloud_upgrade\";s:4:\"icon\";s:11:\"wi wi-cache\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_register\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"注册站点\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=profile&\";s:15:\"permission_name\";s:21:\"system_cloud_register\";s:4:\"icon\";s:18:\"wi wi-registersite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_diagnose\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"云服务诊断\";s:3:\"url\";s:31:\"./index.php?c=cloud&a=diagnose&\";s:15:\"permission_name\";s:21:\"system_cloud_diagnose\";s:4:\"icon\";s:14:\"wi wi-diagnose\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"全局借用权限\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:6:{s:24:\"system_utility_filecheck\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_utility_check\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统常规检测\";s:3:\"url\";s:29:\"./index.php?c=system&a=check&\";s:15:\"permission_name\";s:20:\"system_utility_check\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:8;}s:6:\"myself\";a:8:{s:5:\"title\";s:12:\"我的账户\";s:4:\"icon\";s:10:\"wi wi-bell\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:9;}s:7:\"message\";a:8:{s:5:\"title\";s:12:\"消息管理\";s:4:\"icon\";s:12:\"wi wi-xiaoxi\";s:9:\"dimension\";i:2;s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:7:\"section\";a:1:{s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息管理\";s:4:\"menu\";a:3:{s:14:\"message_notice\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:14:\"message_notice\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"message_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息设置\";s:3:\"url\";s:42:\"./index.php?c=message&a=notice&do=setting&\";s:15:\"permission_name\";s:15:\"message_setting\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"message_wechat_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"微信提醒设置\";s:3:\"url\";s:49:\"./index.php?c=message&a=notice&do=wechat_setting&\";s:15:\"permission_name\";s:22:\"message_wechat_setting\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:10;}s:7:\"account\";a:8:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:9:\"dimension\";i:3;s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:4:{s:8:\"platform\";a:4:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{s:22:\"platform_reply_keyword\";a:4:{s:5:\"title\";s:21:\"关键字自动回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=keyword\";s:15:\"permission_name\";s:22:\"platform_reply_keyword\";s:6:\"active\";s:7:\"keyword\";}s:22:\"platform_reply_special\";a:4:{s:5:\"title\";s:24:\"非关键字自动回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=special\";s:15:\"permission_name\";s:22:\"platform_reply_special\";s:6:\"active\";s:7:\"special\";}s:22:\"platform_reply_welcome\";a:4:{s:5:\"title\";s:24:\"首次访问自动回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=welcome\";s:15:\"permission_name\";s:22:\"platform_reply_welcome\";s:6:\"active\";s:7:\"welcome\";}s:22:\"platform_reply_default\";a:4:{s:5:\"title\";s:12:\"默认回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=default\";s:15:\"permission_name\";s:22:\"platform_reply_default\";s:6:\"active\";s:7:\"default\";}s:22:\"platform_reply_service\";a:4:{s:5:\"title\";s:12:\"常用服务\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=service\";s:15:\"permission_name\";s:22:\"platform_reply_service\";s:6:\"active\";s:7:\"service\";}s:22:\"platform_reply_userapi\";a:5:{s:5:\"title\";s:21:\"自定义接口回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=userapi\";s:15:\"permission_name\";s:22:\"platform_reply_userapi\";s:6:\"active\";s:7:\"userapi\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:22:\"platform_reply_setting\";a:4:{s:5:\"title\";s:12:\"回复设置\";s:3:\"url\";s:38:\"./index.php?c=profile&a=reply-setting&\";s:15:\"permission_name\";s:22:\"platform_reply_setting\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:13:\"platform_menu\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:21:\"platform_menu_default\";a:4:{s:5:\"title\";s:12:\"默认菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:21:\"platform_menu_default\";s:6:\"active\";s:4:\"post\";}s:25:\"platform_menu_conditional\";a:5:{s:5:\"title\";s:15:\"个性化菜单\";s:3:\"url\";s:47:\"./index.php?c=platform&a=menu&do=display&type=3\";s:15:\"permission_name\";s:25:\"platform_menu_conditional\";s:6:\"active\";s:7:\"display\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:11:\"platform_qr\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:14:\"platform_qr_qr\";a:4:{s:5:\"title\";s:9:\"二维码\";s:3:\"url\";s:36:\"./index.php?c=platform&a=qr&do=list&\";s:15:\"permission_name\";s:14:\"platform_qr_qr\";s:6:\"active\";s:4:\"list\";}s:22:\"platform_qr_statistics\";a:4:{s:5:\"title\";s:21:\"二维码扫描统计\";s:3:\"url\";s:39:\"./index.php?c=platform&a=qr&do=display&\";s:15:\"permission_name\";s:22:\"platform_qr_statistics\";s:6:\"active\";s:7:\"display\";}}}s:17:\"platform_masstask\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:17:\"platform_masstask\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:22:\"platform_masstask_post\";a:4:{s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:38:\"./index.php?c=platform&a=mass&do=post&\";s:15:\"permission_name\";s:22:\"platform_masstask_post\";s:6:\"active\";s:4:\"post\";}s:22:\"platform_masstask_send\";a:4:{s:5:\"title\";s:12:\"群发记录\";s:3:\"url\";s:38:\"./index.php?c=platform&a=mass&do=send&\";s:15:\"permission_name\";s:22:\"platform_masstask_send\";s:6:\"active\";s:4:\"send\";}}}s:17:\"platform_material\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:5:{s:22:\"platform_material_news\";a:4:{s:5:\"title\";s:6:\"图文\";s:3:\"url\";s:43:\"./index.php?c=platform&a=material&type=news\";s:15:\"permission_name\";s:22:\"platform_material_news\";s:6:\"active\";s:4:\"news\";}s:23:\"platform_material_image\";a:4:{s:5:\"title\";s:6:\"图片\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=image\";s:15:\"permission_name\";s:23:\"platform_material_image\";s:6:\"active\";s:5:\"image\";}s:23:\"platform_material_voice\";a:4:{s:5:\"title\";s:6:\"语音\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=voice\";s:15:\"permission_name\";s:23:\"platform_material_voice\";s:6:\"active\";s:5:\"voice\";}s:23:\"platform_material_video\";a:5:{s:5:\"title\";s:6:\"视频\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=video\";s:15:\"permission_name\";s:23:\"platform_material_video\";s:6:\"active\";s:5:\"video\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:24:\"platform_material_delete\";a:3:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";s:10:\"is_display\";i:0;}}}s:13:\"platform_site\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:27:\"./index.php?c=site&a=multi&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:4:{s:19:\"platform_site_multi\";a:4:{s:5:\"title\";s:9:\"微官网\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:19:\"platform_site_multi\";s:6:\"active\";s:5:\"multi\";}s:19:\"platform_site_style\";a:4:{s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:39:\"./index.php?c=site&a=style&do=template&\";s:15:\"permission_name\";s:19:\"platform_site_style\";s:6:\"active\";s:5:\"style\";}s:21:\"platform_site_article\";a:4:{s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:40:\"./index.php?c=site&a=article&do=display&\";s:15:\"permission_name\";s:21:\"platform_site_article\";s:6:\"active\";s:7:\"article\";}s:22:\"platform_site_category\";a:4:{s:5:\"title\";s:18:\"文章分类管理\";s:3:\"url\";s:41:\"./index.php?c=site&a=category&do=display&\";s:15:\"permission_name\";s:22:\"platform_site_category\";s:6:\"active\";s:8:\"category\";}}}}s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:2:\"mc\";a:4:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:3:{s:7:\"mc_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:15:\"mc_fans_display\";a:4:{s:5:\"title\";s:12:\"全部粉丝\";s:3:\"url\";s:35:\"./index.php?c=mc&a=fans&do=display&\";s:15:\"permission_name\";s:15:\"mc_fans_display\";s:6:\"active\";s:7:\"display\";}s:21:\"mc_fans_fans_sync_set\";a:4:{s:5:\"title\";s:18:\"粉丝同步设置\";s:3:\"url\";s:41:\"./index.php?c=mc&a=fans&do=fans_sync_set&\";s:15:\"permission_name\";s:21:\"mc_fans_fans_sync_set\";s:6:\"active\";s:13:\"fans_sync_set\";}}}s:9:\"mc_member\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{s:17:\"mc_member_diaplsy\";a:4:{s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:37:\"./index.php?c=mc&a=member&do=display&\";s:15:\"permission_name\";s:17:\"mc_member_diaplsy\";s:6:\"active\";s:7:\"display\";}s:15:\"mc_member_group\";a:4:{s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:36:\"./index.php?c=mc&a=group&do=display&\";s:15:\"permission_name\";s:15:\"mc_member_group\";s:6:\"active\";s:7:\"display\";}s:12:\"mc_member_uc\";a:5:{s:5:\"title\";s:12:\"会员中心\";s:3:\"url\";s:34:\"./index.php?c=site&a=editor&do=uc&\";s:15:\"permission_name\";s:12:\"mc_member_uc\";s:6:\"active\";s:2:\"uc\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:19:\"mc_member_quickmenu\";a:5:{s:5:\"title\";s:12:\"快捷菜单\";s:3:\"url\";s:41:\"./index.php?c=site&a=editor&do=quickmenu&\";s:15:\"permission_name\";s:19:\"mc_member_quickmenu\";s:6:\"active\";s:9:\"quickmenu\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:25:\"mc_member_register_seting\";a:5:{s:5:\"title\";s:12:\"注册设置\";s:3:\"url\";s:46:\"./index.php?c=mc&a=member&do=register_setting&\";s:15:\"permission_name\";s:25:\"mc_member_register_seting\";s:6:\"active\";s:16:\"register_setting\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:24:\"mc_member_credit_setting\";a:4:{s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:44:\"./index.php?c=mc&a=member&do=credit_setting&\";s:15:\"permission_name\";s:24:\"mc_member_credit_setting\";s:6:\"active\";s:14:\"credit_setting\";}s:16:\"mc_member_fields\";a:4:{s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:34:\"./index.php?c=mc&a=fields&do=list&\";s:15:\"permission_name\";s:16:\"mc_member_fields\";s:6:\"active\";s:4:\"list\";}}}s:10:\"mc_message\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"留言管理\";s:3:\"url\";s:27:\"./index.php?c=mc&a=message&\";s:15:\"permission_name\";s:10:\"mc_message\";s:4:\"icon\";s:13:\"wi wi-message\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:0;}s:7:\"profile\";a:4:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:15:\"profile_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:5:{s:22:\"profile_setting_remote\";a:4:{s:5:\"title\";s:12:\"远程附件\";s:3:\"url\";s:42:\"./index.php?c=profile&a=remote&do=display&\";s:15:\"permission_name\";s:22:\"profile_setting_remote\";s:6:\"active\";s:7:\"display\";}s:24:\"profile_setting_passport\";a:5:{s:5:\"title\";s:12:\"借用权限\";s:3:\"url\";s:42:\"./index.php?c=profile&a=passport&do=oauth&\";s:15:\"permission_name\";s:24:\"profile_setting_passport\";s:6:\"active\";s:5:\"oauth\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:25:\"profile_setting_tplnotice\";a:5:{s:5:\"title\";s:18:\"微信通知设置\";s:3:\"url\";s:42:\"./index.php?c=profile&a=tplnotice&do=list&\";s:15:\"permission_name\";s:25:\"profile_setting_tplnotice\";s:6:\"active\";s:4:\"list\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:22:\"profile_setting_notify\";a:5:{s:5:\"title\";s:18:\"邮件通知参数\";s:3:\"url\";s:39:\"./index.php?c=profile&a=notify&do=mail&\";s:15:\"permission_name\";s:22:\"profile_setting_notify\";s:6:\"active\";s:4:\"mail\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:27:\"profile_setting_upload_file\";a:5:{s:5:\"title\";s:20:\"上传JS接口文件\";s:3:\"url\";s:46:\"./index.php?c=profile&a=common&do=upload_file&\";s:15:\"permission_name\";s:27:\"profile_setting_upload_file\";s:6:\"active\";s:11:\"upload_file\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:15:\"profile_payment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:15:\"profile_payment\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:19:\"profile_payment_pay\";a:4:{s:5:\"title\";s:12:\"支付配置\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_payment_pay\";s:6:\"active\";s:7:\"payment\";}s:22:\"profile_payment_refund\";a:4:{s:5:\"title\";s:12:\"退款配置\";s:3:\"url\";s:42:\"./index.php?c=profile&a=refund&do=display&\";s:15:\"permission_name\";s:22:\"profile_payment_refund\";s:6:\"active\";s:6:\"refund\";}}}s:23:\"profile_app_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:18:\"webapp_module_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:0;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:11;}s:5:\"wxapp\";a:8:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:9:\"dimension\";i:3;s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:4:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:2:\"mc\";a:4:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:15:\"mc_wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:4:{s:17:\"mc_member_diaplsy\";a:4:{s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:37:\"./index.php?c=mc&a=member&do=display&\";s:15:\"permission_name\";s:17:\"mc_member_diaplsy\";s:6:\"active\";s:7:\"display\";}s:15:\"mc_member_group\";a:4:{s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:36:\"./index.php?c=mc&a=group&do=display&\";s:15:\"permission_name\";s:15:\"mc_member_group\";s:6:\"active\";s:7:\"display\";}s:24:\"mc_member_credit_setting\";a:4:{s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:44:\"./index.php?c=mc&a=member&do=credit_setting&\";s:15:\"permission_name\";s:24:\"mc_member_credit_setting\";s:6:\"active\";s:14:\"credit_setting\";}s:16:\"mc_member_fields\";a:4:{s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:34:\"./index.php?c=mc&a=fields&do=list&\";s:15:\"permission_name\";s:16:\"mc_member_fields\";s:6:\"active\";s:4:\"list\";}}}}s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:33:\"wxapp_profile_module_link_uniacid\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:33:\"wxapp_profile_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"wxapp_profile_payment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:21:\"wxapp_profile_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:17:\"wxapp_payment_pay\";a:4:{s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:41:\"./index.php?c=wxapp&a=payment&do=display&\";s:15:\"permission_name\";s:17:\"wxapp_payment_pay\";s:6:\"active\";s:7:\"payment\";}s:20:\"wxapp_payment_refund\";a:4:{s:5:\"title\";s:12:\"退款配置\";s:3:\"url\";s:40:\"./index.php?c=wxapp&a=refund&do=display&\";s:15:\"permission_name\";s:20:\"wxapp_payment_refund\";s:6:\"active\";s:6:\"refund\";}}}s:28:\"wxapp_profile_front_download\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"下载程序包\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:28:\"wxapp_profile_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_profile_domainset\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名设置\";s:3:\"url\";s:32:\"./index.php?c=wxapp&a=domainset&\";s:15:\"permission_name\";s:23:\"wxapp_profile_domainset\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"profile_setting_remote\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:22:\"profile_setting_remote\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}}s:10:\"statistics\";a:4:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:21:\"statistics_fans_wxapp\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:12;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:13;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:16:\"phoneapp_profile\";a:4:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:2:{s:28:\"profile_phoneapp_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:6;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:28:\"profile_phoneapp_module_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:1;s:18:\"permission_display\";a:1:{i:0;i:6;}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:14;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:15;}s:8:\"baiduapp\";a:7:{s:5:\"title\";s:15:\"百度小程序\";s:4:\"icon\";s:14:\"wi wi-baiduapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:16;}s:10:\"toutiaoapp\";a:7:{s:5:\"title\";s:21:\"字节跳动小程序\";s:4:\"icon\";s:16:\"wi wi-toutiaoapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:17;}s:9:\"appmarket\";a:9:{s:5:\"title\";s:6:\"市场\";s:4:\"icon\";s:14:\"wi wi-shichang\";s:3:\"url\";s:14:\"http://s.w7.cc\";s:7:\"section\";a:0:{}s:5:\"blank\";b:1;s:7:\"founder\";b:1;s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:18;}s:9:\"workorder\";a:9:{s:5:\"title\";s:6:\"工单\";s:4:\"icon\";s:13:\"wi wi-gongdan\";s:9:\"dimension\";i:2;s:3:\"url\";s:44:\"./index.php?c=system&a=workorder&do=display&\";s:7:\"section\";a:1:{s:9:\"workorder\";a:2:{s:5:\"title\";s:12:\"工单系统\";s:4:\"menu\";a:1:{s:16:\"system_workorder\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"工单系统\";s:3:\"url\";s:44:\"./index.php?c=system&a=workorder&do=display&\";s:15:\"permission_name\";s:16:\"system_workorder\";s:4:\"icon\";s:17:\"wi wi-system-work\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:19;}s:4:\"help\";a:7:{s:5:\"title\";s:6:\"帮助\";s:4:\"icon\";s:13:\"wi wi-bangzhu\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:20;}s:11:\"custom_help\";a:7:{s:5:\"title\";s:12:\"本站帮助\";s:4:\"icon\";s:13:\"wi wi-bangzhu\";s:3:\"url\";s:39:\"./index.php?c=help&a=display&do=custom&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:21;}}'),('we7:userbasefields','a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('we7:usersfields','a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('we7:module_receive_enable','a:0:{}'),('we7:module_info:store','a:37:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:58:\"http://119.29.118.84/addons/store/preview.jpg?v=1596680894\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:cloud_ad_store_notice','a:1:{s:6:\"expire\";i:1596687767;}'),('we7:uniaccount:1','a:21:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";}'),('we7:unisetting:1','a:30:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"1\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"1\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";s:14:\"default_module\";s:0:\"\";s:16:\"attachment_limit\";s:1:\"0\";s:15:\"attachment_size\";s:0:\"\";s:11:\"sync_member\";s:1:\"0\";s:6:\"remote\";s:0:\"\";}'),('we7:user_accounts:account:1','a:1:{i:1;a:8:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:4:\"type\";s:1:\"1\";s:5:\"level\";s:1:\"1\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";}}'),('we7:user_accounts:wxapp:1','a:0:{}'),('we7:user_accounts:webapp:1','a:0:{}'),('we7:user_accounts:phoneapp:1','a:0:{}'),('we7:user_accounts:aliapp:1','a:0:{}'),('we7:user_accounts:baiduapp:1','a:0:{}'),('we7:user_accounts:toutiaoapp:1','a:0:{}'),('we7:back_days','a:2:{s:6:\"expire\";i:1596724505;s:4:\"data\";i:-1;}'),('we7:user_modules:1','a:0:{}'),('we7:cloud_api:f60f01ac4ae342d3d74258ac3239ebb5','a:2:{s:6:\"expire\";i:1596681533;s:4:\"data\";a:2:{s:16:\"not_handle_count\";i:0;s:13:\"un_read_count\";i:0;}}'),('we7:cloud_api:3fed6aa8cfeb3373c5e872940412f39a','a:2:{s:6:\"expire\";i:1596681944;s:4:\"data\";a:3:{s:4:\"data\";a:1:{s:10:\"transtoken\";s:32:\"f40627762585437df5569ed9877f0b92\";}s:5:\"total\";i:0;s:4:\"page\";d:0;}}'),('we7:cloud_api:b16ced0ab71fffa536272f326bc7523f','a:2:{s:6:\"expire\";i:1596681533;s:4:\"data\";a:7:{s:7:\"version\";s:0:\"\";s:7:\"release\";s:12:\"202007230001\";s:6:\"family\";s:1:\"v\";s:5:\"files\";a:2281:{i:0;a:2:{s:4:\"path\";s:20:\"/api/accesstoken.php\";s:8:\"checksum\";s:32:\"d8dd761542a32a4791f2e57e396ad8ae\";}i:1;a:2:{s:4:\"path\";s:8:\"/api.php\";s:8:\"checksum\";s:32:\"4fc25280c59487b8bf6605bc9a2b7598\";}i:2;a:2:{s:4:\"path\";s:33:\"/app/common/bootstrap.app.inc.php\";s:8:\"checksum\";s:32:\"b591b824f2533f2d7d05b3592504f3f8\";}i:3;a:2:{s:4:\"path\";s:27:\"/app/common/common.func.php\";s:8:\"checksum\";s:32:\"ea9ea000f8cef46b418683c09c5a0d68\";}i:4;a:2:{s:4:\"path\";s:29:\"/app/common/template.func.php\";s:8:\"checksum\";s:32:\"c58cd21ff37fb1fa95421b6de33ba881\";}i:5;a:2:{s:4:\"path\";s:24:\"/app/common/tpl.func.php\";s:8:\"checksum\";s:32:\"2d15721629b4747155255fdb49d2661f\";}i:6;a:2:{s:4:\"path\";s:14:\"/app/index.php\";s:8:\"checksum\";s:32:\"d01c23b2615ccd20701bd1a2772d95c5\";}i:7;a:2:{s:4:\"path\";s:56:\"/app/resource/components/clockpicker/clockpicker.min.css\";s:8:\"checksum\";s:32:\"76b83ed5042f73def3a505a2f4972a63\";}i:8;a:2:{s:4:\"path\";s:55:\"/app/resource/components/clockpicker/clockpicker.min.js\";s:8:\"checksum\";s:32:\"63b29c3dfefe7810658fecd4cb7890b6\";}i:9;a:2:{s:4:\"path\";s:48:\"/app/resource/components/cropper/cropper.min.css\";s:8:\"checksum\";s:32:\"8d7b5c93bd5df1aa52ab99d736f05111\";}i:10;a:2:{s:4:\"path\";s:47:\"/app/resource/components/cropper/cropper.min.js\";s:8:\"checksum\";s:32:\"f0a48b2cb6b0d916d0ad16a51014a26e\";}i:11;a:2:{s:4:\"path\";s:54:\"/app/resource/components/datepicker/mui.picker.all.css\";s:8:\"checksum\";s:32:\"361c702dd47d9f9b558c199d9444ac7c\";}i:12;a:2:{s:4:\"path\";s:53:\"/app/resource/components/datepicker/mui.picker.all.js\";s:8:\"checksum\";s:32:\"fc5540c7abf69c8c02d98e02c9ba7a3c\";}i:13;a:2:{s:4:\"path\";s:58:\"/app/resource/components/districtpicker/mui.city.data-3.js\";s:8:\"checksum\";s:32:\"5a3c76b677f0cb5f1e264197e90c2b70\";}i:14;a:2:{s:4:\"path\";s:54:\"/app/resource/components/previewer/mui.previewimage.js\";s:8:\"checksum\";s:32:\"9b505d138babc82b33ff674b9b7d6254\";}i:15;a:2:{s:4:\"path\";s:46:\"/app/resource/components/previewer/mui.zoom.js\";s:8:\"checksum\";s:32:\"2db5f5372b39db633ac5345552283497\";}i:16;a:2:{s:4:\"path\";s:57:\"/app/resource/components/pullrefresh/mui.pullToRefresh.js\";s:8:\"checksum\";s:32:\"7cfeafbd0af4baf97715edb63d2bcb0a\";}i:17;a:2:{s:4:\"path\";s:66:\"/app/resource/components/pullrefresh/mui.pullToRefresh.material.js\";s:8:\"checksum\";s:32:\"178f15e23e710e2f05734ad5bf0a079b\";}i:18;a:2:{s:4:\"path\";s:46:\"/app/resource/components/swiper/swiper.min.css\";s:8:\"checksum\";s:32:\"58b08950d03530761f04a912ad4cb8e5\";}i:19;a:2:{s:4:\"path\";s:45:\"/app/resource/components/swiper/swiper.min.js\";s:8:\"checksum\";s:32:\"241a4ffc7f303e2786832b112eb2782c\";}i:20;a:2:{s:4:\"path\";s:35:\"/app/resource/css/bootstrap.min.css\";s:8:\"checksum\";s:32:\"183cbc932a71b9db5f4f40314cd69816\";}i:21;a:2:{s:4:\"path\";s:32:\"/app/resource/css/common.min.css\";s:8:\"checksum\";s:32:\"4855f8ccedd66ee159109d0557d33bbe\";}i:22;a:2:{s:4:\"path\";s:32:\"/app/resource/css/swiper.min.css\";s:8:\"checksum\";s:32:\"b95795b471477459bc1b8644c50ad8de\";}i:23;a:2:{s:4:\"path\";s:35:\"/app/resource/fonts/FontAwesome.otf\";s:8:\"checksum\";s:32:\"87d8ca3ddc57e7d2da6226e480f90457\";}i:24;a:2:{s:4:\"path\";s:43:\"/app/resource/fonts/fontawesome-webfont.eot\";s:8:\"checksum\";s:32:\"32400f4e08932a94d8bfd2422702c446\";}i:25;a:2:{s:4:\"path\";s:43:\"/app/resource/fonts/fontawesome-webfont.svg\";s:8:\"checksum\";s:32:\"65e8f7dd6a65aa5812afa9050bfc720e\";}i:26;a:2:{s:4:\"path\";s:43:\"/app/resource/fonts/fontawesome-webfont.ttf\";s:8:\"checksum\";s:32:\"a3de2170e4e9df77161ea5d3f31b2668\";}i:27;a:2:{s:4:\"path\";s:44:\"/app/resource/fonts/fontawesome-webfont.woff\";s:8:\"checksum\";s:32:\"a35720c2fed2c7f043bc7e4ffb45e073\";}i:28;a:2:{s:4:\"path\";s:45:\"/app/resource/fonts/fontawesome-webfont.woff2\";s:8:\"checksum\";s:32:\"db812d8a70a4e88e888744c1c9a27e89\";}i:29;a:2:{s:4:\"path\";s:52:\"/app/resource/fonts/glyphicons-halflings-regular.eot\";s:8:\"checksum\";s:32:\"7ad17c6085dee9a33787bac28fb23d46\";}i:30;a:2:{s:4:\"path\";s:52:\"/app/resource/fonts/glyphicons-halflings-regular.svg\";s:8:\"checksum\";s:32:\"a0f6fe8cea771f29666c3b374be1339a\";}i:31;a:2:{s:4:\"path\";s:52:\"/app/resource/fonts/glyphicons-halflings-regular.ttf\";s:8:\"checksum\";s:32:\"e49d52e74b7689a0727def99da31f3eb\";}i:32;a:2:{s:4:\"path\";s:53:\"/app/resource/fonts/glyphicons-halflings-regular.woff\";s:8:\"checksum\";s:32:\"68ed1dac06bf0409c18ae7bc62889170\";}i:33;a:2:{s:4:\"path\";s:27:\"/app/resource/fonts/mui.ttf\";s:8:\"checksum\";s:32:\"8820b7f6582a3c45b7527ae6b183dd2f\";}i:34;a:2:{s:4:\"path\";s:36:\"/app/resource/images/MicroEngine.ico\";s:8:\"checksum\";s:32:\"f8bf8eae4364dd456fa62b39b9e239c7\";}i:35;a:2:{s:4:\"path\";s:31:\"/app/resource/images/app/01.png\";s:8:\"checksum\";s:32:\"820a50657160cba28899d9d92e6bf6f0\";}i:36;a:2:{s:4:\"path\";s:34:\"/app/resource/images/app/01_on.png\";s:8:\"checksum\";s:32:\"25a8c33656d9b85d5c9061ed5a1ea27e\";}i:37;a:2:{s:4:\"path\";s:31:\"/app/resource/images/app/02.png\";s:8:\"checksum\";s:32:\"b5b7b2345a0461a6687841961d014ce0\";}i:38;a:2:{s:4:\"path\";s:34:\"/app/resource/images/app/02_on.png\";s:8:\"checksum\";s:32:\"514a95387618e41fa27c6ad285eae719\";}i:39;a:2:{s:4:\"path\";s:31:\"/app/resource/images/app/03.png\";s:8:\"checksum\";s:32:\"c148dceede71ee11cf56ee7fbae1ec91\";}i:40;a:2:{s:4:\"path\";s:34:\"/app/resource/images/app/03_on.png\";s:8:\"checksum\";s:32:\"c869c6084b785f168e8bcac29a64ed3f\";}i:41;a:2:{s:4:\"path\";s:37:\"/app/resource/images/app/adImg-lg.jpg\";s:8:\"checksum\";s:32:\"b32ee55345516871840a8b944dc9eddd\";}i:42;a:2:{s:4:\"path\";s:43:\"/app/resource/images/app/adImg-separate.jpg\";s:8:\"checksum\";s:32:\"7f335f6ba7779be13cbd8dd5095222b3\";}i:43;a:2:{s:4:\"path\";s:38:\"/app/resource/images/app/centerbtn.png\";s:8:\"checksum\";s:32:\"9f28e2db74cf0d82c86efa51f89760a1\";}i:44;a:2:{s:4:\"path\";s:37:\"/app/resource/images/app/goods-lg.jpg\";s:8:\"checksum\";s:32:\"765d40fc01de45c17b68f32bb63bc600\";}i:45;a:2:{s:4:\"path\";s:41:\"/app/resource/images/app/green_player.gif\";s:8:\"checksum\";s:32:\"f933875fdc046d3fa8503d2cc5e435ca\";}i:46;a:2:{s:4:\"path\";s:47:\"/app/resource/images/app/homepage-header-bg.jpg\";s:8:\"checksum\";s:32:\"fdf6228f982f35204bf2cf6e5d04631b\";}i:47;a:2:{s:4:\"path\";s:40:\"/app/resource/images/app/iphone_head.png\";s:8:\"checksum\";s:32:\"2bad4c2f26897056ee9c7a74e672d838\";}i:48;a:2:{s:4:\"path\";s:34:\"/app/resource/images/app/level.jpg\";s:8:\"checksum\";s:32:\"2677fc0bc5d2b3f44cd76bec76293308\";}i:49;a:2:{s:4:\"path\";s:37:\"/app/resource/images/app/nav5back.png\";s:8:\"checksum\";s:32:\"62b123639ef80f8aa97b9e16b2caeee0\";}i:50;a:2:{s:4:\"path\";s:35:\"/app/resource/images/app/player.gif\";s:8:\"checksum\";s:32:\"b8dece1f38c5f833db15b734819444df\";}i:51;a:2:{s:4:\"path\";s:38:\"/app/resource/images/app/shop-logo.jpg\";s:8:\"checksum\";s:32:\"a24a73293b3b610ce7a6f9a3af8ac6e1\";}i:52;a:2:{s:4:\"path\";s:43:\"/app/resource/images/app/shop.png!80x80.jpg\";s:8:\"checksum\";s:32:\"05a76bff1d8a8a121000575dcddb9081\";}i:53;a:2:{s:4:\"path\";s:40:\"/app/resource/images/app/shopNavCart.png\";s:8:\"checksum\";s:32:\"3bc7729e6a9aee9aa4baceac4e998e93\";}i:54;a:2:{s:4:\"path\";s:40:\"/app/resource/images/app/shopNavPath.png\";s:8:\"checksum\";s:32:\"c9b9aea98029d2de1d28217c5964e0b1\";}i:55;a:2:{s:4:\"path\";s:41:\"/app/resource/images/app/shopNavSides.png\";s:8:\"checksum\";s:32:\"282298a45866ea416913140065f6ef7d\";}i:56;a:2:{s:4:\"path\";s:38:\"/app/resource/images/app/shopNavWx.png\";s:8:\"checksum\";s:32:\"eb61f622af2182b00c66ade40284689a\";}i:57;a:2:{s:4:\"path\";s:37:\"/app/resource/images/app/showcase.png\";s:8:\"checksum\";s:32:\"9b15ab8bd087f14c252230baace0d0eb\";}i:58;a:2:{s:4:\"path\";s:39:\"/app/resource/images/app/slider-bar.png\";s:8:\"checksum\";s:32:\"d8ee8dd8482e0006233e93cbc5ff08ee\";}i:59;a:2:{s:4:\"path\";s:38:\"/app/resource/images/app/sprite_v5.png\";s:8:\"checksum\";s:32:\"9a4f6cd77c2869dc074b98375a911f1f\";}i:60;a:2:{s:4:\"path\";s:37:\"/app/resource/images/app/titlebar.png\";s:8:\"checksum\";s:32:\"fa17619ebed57aa307379519e122eacf\";}i:61;a:2:{s:4:\"path\";s:31:\"/app/resource/images/avatar.png\";s:8:\"checksum\";s:32:\"1f17b33f5b5c0240724d5d6ca4c2aacb\";}i:62;a:2:{s:4:\"path\";s:34:\"/app/resource/images/baidu-pay.png\";s:8:\"checksum\";s:32:\"feda7a38282316f516c1cf57356eec1d\";}i:63;a:2:{s:4:\"path\";s:37:\"/app/resource/images/bg-card-logo.png\";s:8:\"checksum\";s:32:\"eafd29641163f52cfa6b98b136502dd1\";}i:64;a:2:{s:4:\"path\";s:32:\"/app/resource/images/bg-card.png\";s:8:\"checksum\";s:32:\"e0bab5c21407c56923a7b4223537e85f\";}i:65;a:2:{s:4:\"path\";s:44:\"/app/resource/images/bg-paycenter-banner.png\";s:8:\"checksum\";s:32:\"49011cdfffe498754b9c7e55028b5498\";}i:66;a:2:{s:4:\"path\";s:35:\"/app/resource/images/bonded-tel.png\";s:8:\"checksum\";s:32:\"423f0f79ecea3b2c7cc6dea99aa0aa35\";}i:67;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/1.png\";s:8:\"checksum\";s:32:\"74b84f38d3c4919b8d1c19376467ce63\";}i:68;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/10.png\";s:8:\"checksum\";s:32:\"8feccdb63b3c35c2650e18b50d996bff\";}i:69;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/11.png\";s:8:\"checksum\";s:32:\"769cecf39fe8459779b9056698b34297\";}i:70;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/12.png\";s:8:\"checksum\";s:32:\"8e1fd8c0c375bb7723a3585bf5321af4\";}i:71;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/13.png\";s:8:\"checksum\";s:32:\"898a45e96f4e67744c5b22d836f891ea\";}i:72;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/14.png\";s:8:\"checksum\";s:32:\"5fbe1c1cc37a9ee9b66ef5f23cc4f5e5\";}i:73;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/15.png\";s:8:\"checksum\";s:32:\"8c99f129918ba50f32df02836a8d406a\";}i:74;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/16.png\";s:8:\"checksum\";s:32:\"c78625c5cdcf6f462119617141edbb0e\";}i:75;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/17.png\";s:8:\"checksum\";s:32:\"19cb4e861f7ae493f7c0ee08b18f7948\";}i:76;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/18.png\";s:8:\"checksum\";s:32:\"ff970e7030aff80f712f4ec83d25c706\";}i:77;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/19.png\";s:8:\"checksum\";s:32:\"10f9802110793e2fda70e645a2f71879\";}i:78;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/2.png\";s:8:\"checksum\";s:32:\"fdabf9de1906a1c5983f82178f34942e\";}i:79;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/20.png\";s:8:\"checksum\";s:32:\"58f0f9d8451d671c7d90607f6220017a\";}i:80;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/21.png\";s:8:\"checksum\";s:32:\"559ec62e9d28710592c76ce2b8d86826\";}i:81;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/22.png\";s:8:\"checksum\";s:32:\"46660e29f31bf7195f163c82d403f7ee\";}i:82;a:2:{s:4:\"path\";s:32:\"/app/resource/images/card/23.png\";s:8:\"checksum\";s:32:\"0e1b257dc7bf8e0ac7e64ac1f3e23116\";}i:83;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/3.png\";s:8:\"checksum\";s:32:\"1b3770fbcdd3c85d0979691933c52941\";}i:84;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/4.png\";s:8:\"checksum\";s:32:\"4f9d11b6a52dab688aef736229bf8905\";}i:85;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/5.png\";s:8:\"checksum\";s:32:\"72e4bf79209c123ea1b3b673f376a1fa\";}i:86;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/6.png\";s:8:\"checksum\";s:32:\"e2841b9d98577ba10d41b2cce2598f89\";}i:87;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/7.png\";s:8:\"checksum\";s:32:\"478f81dbf2ec250daff1535ca8c89834\";}i:88;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/8.png\";s:8:\"checksum\";s:32:\"66cebb905e8b68f564402cabd7148acd\";}i:89;a:2:{s:4:\"path\";s:31:\"/app/resource/images/card/9.png\";s:8:\"checksum\";s:32:\"2c0c223005bc526273b7306569ef68df\";}i:90;a:2:{s:4:\"path\";s:36:\"/app/resource/images/card-img-bg.png\";s:8:\"checksum\";s:32:\"d4fe86ddb6f5a1a88f923131dce13bdc\";}i:91;a:2:{s:4:\"path\";s:36:\"/app/resource/images/card-img-fg.png\";s:8:\"checksum\";s:32:\"d78912a44e82ccf7e92f68a4f5d84ded\";}i:92;a:2:{s:4:\"path\";s:34:\"/app/resource/images/card_bg09.png\";s:8:\"checksum\";s:32:\"2c0c223005bc526273b7306569ef68df\";}i:93;a:2:{s:4:\"path\";s:33:\"/app/resource/images/card_tpl.png\";s:8:\"checksum\";s:32:\"2d75705962257cd4925ad71a4991c81b\";}i:94;a:2:{s:4:\"path\";s:37:\"/app/resource/images/coupon-ft-bg.png\";s:8:\"checksum\";s:32:\"975a95dd73b319048f26bb27a2f699f5\";}i:95;a:2:{s:4:\"path\";s:37:\"/app/resource/images/coupon-hd-bg.png\";s:8:\"checksum\";s:32:\"fb4a5a75caac46134adfa8ba057746d8\";}i:96;a:2:{s:4:\"path\";s:36:\"/app/resource/images/coupon-icon.png\";s:8:\"checksum\";s:32:\"414da63954f406481f8b1a0bbb7083f3\";}i:97;a:2:{s:4:\"path\";s:43:\"/app/resource/images/coupon-line-danger.png\";s:8:\"checksum\";s:32:\"c2f93afd0aecd9938388effeb03475d4\";}i:98;a:2:{s:4:\"path\";s:41:\"/app/resource/images/coupon-line-info.png\";s:8:\"checksum\";s:32:\"e7b42cced78e79561c2cae456404238b\";}i:99;a:2:{s:4:\"path\";s:36:\"/app/resource/images/coupon-past.png\";s:8:\"checksum\";s:32:\"92e7ef80192309b63867d475b6a78db5\";}i:100;a:2:{s:4:\"path\";s:36:\"/app/resource/images/coupon-used.png\";s:8:\"checksum\";s:32:\"e1fa06ecbcd248b9613bb01f13575bd5\";}i:101;a:2:{s:4:\"path\";s:31:\"/app/resource/images/coupon.jpg\";s:8:\"checksum\";s:32:\"56d38948ff45d42144ca268bc1cbba52\";}i:102;a:2:{s:4:\"path\";s:31:\"/app/resource/images/coupon.png\";s:8:\"checksum\";s:32:\"c0deedf2bad05d9dd14e895c61804c0f\";}i:103;a:2:{s:4:\"path\";s:33:\"/app/resource/images/coupon01.png\";s:8:\"checksum\";s:32:\"ceb1d251dc68923cbcb5f20bd39a480e\";}i:104;a:2:{s:4:\"path\";s:33:\"/app/resource/images/coupon02.png\";s:8:\"checksum\";s:32:\"ceb1d251dc68923cbcb5f20bd39a480e\";}i:105;a:2:{s:4:\"path\";s:33:\"/app/resource/images/exchange.png\";s:8:\"checksum\";s:32:\"5fab7f2888f9ec191c9e9f35ddaa2a11\";}i:106;a:2:{s:4:\"path\";s:30:\"/app/resource/images/ft-bg.png\";s:8:\"checksum\";s:32:\"70eca6b65200c19513d52b30d0fd9a64\";}i:107;a:2:{s:4:\"path\";s:39:\"/app/resource/images/general_coupon.png\";s:8:\"checksum\";s:32:\"01ad7d7928d7beeab98cf60194fe6b89\";}i:108;a:2:{s:4:\"path\";s:29:\"/app/resource/images/gift.png\";s:8:\"checksum\";s:32:\"dbf5671f40d4685c651cf5bf4b37d165\";}i:109;a:2:{s:4:\"path\";s:30:\"/app/resource/images/group.png\";s:8:\"checksum\";s:32:\"7d08d544aedbc6f86b2e32cea5e52814\";}i:110;a:2:{s:4:\"path\";s:32:\"/app/resource/images/groupon.png\";s:8:\"checksum\";s:32:\"25bc443da936c5c6d343cbe8d9945512\";}i:111;a:2:{s:4:\"path\";s:30:\"/app/resource/images/guide.png\";s:8:\"checksum\";s:32:\"4f389a229e935cb0d25e83a8c7562e41\";}i:112;a:2:{s:4:\"path\";s:32:\"/app/resource/images/head-bg.png\";s:8:\"checksum\";s:32:\"2c05852c40065f86e177670f71b9fda6\";}i:113;a:2:{s:4:\"path\";s:34:\"/app/resource/images/headimg_1.jpg\";s:8:\"checksum\";s:32:\"113ec744eef92db136f4b0fe25ce8f31\";}i:114;a:2:{s:4:\"path\";s:32:\"/app/resource/images/heading.jpg\";s:8:\"checksum\";s:32:\"4f83d5d221a9e791d75caa281e9450c4\";}i:115;a:2:{s:4:\"path\";s:32:\"/app/resource/images/home-bg.jpg\";s:8:\"checksum\";s:32:\"cbf57fd9be8c687dceb476c694584448\";}i:116;a:2:{s:4:\"path\";s:43:\"/app/resource/images/icon-cancel-active.png\";s:8:\"checksum\";s:32:\"ea00ba6134581d0d95713b043565e663\";}i:117;a:2:{s:4:\"path\";s:36:\"/app/resource/images/icon-cancel.png\";s:8:\"checksum\";s:32:\"5e388dded0641ff01b8b6dbf2c676b96\";}i:118;a:2:{s:4:\"path\";s:35:\"/app/resource/images/icon-chart.png\";s:8:\"checksum\";s:32:\"f1a02d9e46fd2f7ef866e4f8c841d4d5\";}i:119;a:2:{s:4:\"path\";s:41:\"/app/resource/images/icon-credit-card.png\";s:8:\"checksum\";s:32:\"8c566212934a395ea848375c22481582\";}i:120;a:2:{s:4:\"path\";s:41:\"/app/resource/images/icon-home-active.png\";s:8:\"checksum\";s:32:\"8c5197ba3978381fcaa42e6c5c2c4546\";}i:121;a:2:{s:4:\"path\";s:34:\"/app/resource/images/icon-home.png\";s:8:\"checksum\";s:32:\"10533bab23948a3140300622de658985\";}i:122;a:2:{s:4:\"path\";s:47:\"/app/resource/images/icon-integral-strategy.png\";s:8:\"checksum\";s:32:\"8fc4f25474b741cb45649e8a4d64190a\";}i:123;a:2:{s:4:\"path\";s:42:\"/app/resource/images/icon-money-active.png\";s:8:\"checksum\";s:32:\"efbfcdba16d62e7ca1d6598d2743cbc0\";}i:124;a:2:{s:4:\"path\";s:35:\"/app/resource/images/icon-money.png\";s:8:\"checksum\";s:32:\"88eeb4f6a92cfc40be51649b9078cf73\";}i:125;a:2:{s:4:\"path\";s:41:\"/app/resource/images/icon-more-active.png\";s:8:\"checksum\";s:32:\"de50238c5aaa2d39a582e46e14256e37\";}i:126;a:2:{s:4:\"path\";s:34:\"/app/resource/images/icon-more.png\";s:8:\"checksum\";s:32:\"c097a40a2b3f4afb551a7174010c3206\";}i:127;a:2:{s:4:\"path\";s:33:\"/app/resource/images/icon-pay.png\";s:8:\"checksum\";s:32:\"eda4e987d0ded4f64b569456d6e4836d\";}i:128;a:2:{s:4:\"path\";s:36:\"/app/resource/images/icon-qrcode.png\";s:8:\"checksum\";s:32:\"0e205cbdbe6e427ace80ea01865b0b08\";}i:129;a:2:{s:4:\"path\";s:34:\"/app/resource/images/icon-sign.png\";s:8:\"checksum\";s:32:\"5944f500812327ec4a7ca3ba488bb1f1\";}i:130;a:2:{s:4:\"path\";s:38:\"/app/resource/images/icon-signed-5.png\";s:8:\"checksum\";s:32:\"3a0cb14391f5a83c770b2aa274a6521e\";}i:131;a:2:{s:4:\"path\";s:36:\"/app/resource/images/icon-signed.png\";s:8:\"checksum\";s:32:\"c5e7be3e19142281a5ce5d034668722c\";}i:132;a:2:{s:4:\"path\";s:42:\"/app/resource/images/icon-verification.png\";s:8:\"checksum\";s:32:\"ffbab896f1bc9a783b65e7c9ca3446f0\";}i:133;a:2:{s:4:\"path\";s:33:\"/app/resource/images/icon-vip.png\";s:8:\"checksum\";s:32:\"8e06f41ff09772d514ccdb45bd7ce3db\";}i:134;a:2:{s:4:\"path\";s:33:\"/app/resource/images/integral.png\";s:8:\"checksum\";s:32:\"c97ad94d2b7e1d97fdf9cd39a68116d3\";}i:135;a:2:{s:4:\"path\";s:32:\"/app/resource/images/mc-card.png\";s:8:\"checksum\";s:32:\"1c9ba94533cb5744cdcd129a920610f2\";}i:136;a:2:{s:4:\"path\";s:32:\"/app/resource/images/mc-home.png\";s:8:\"checksum\";s:32:\"62339806c22ed43954bad7925be14ccd\";}i:137;a:2:{s:4:\"path\";s:38:\"/app/resource/images/member-header.png\";s:8:\"checksum\";s:32:\"08d0dd6b80f80e5c68639cff677e8487\";}i:138;a:2:{s:4:\"path\";s:40:\"/app/resource/images/membership-card.png\";s:8:\"checksum\";s:32:\"ad83057c0fccbe373aa755ebc26f3c6f\";}i:139;a:2:{s:4:\"path\";s:39:\"/app/resource/images/money-disabled.png\";s:8:\"checksum\";s:32:\"0928bfc640aa9bbaf7451f9733846dd7\";}i:140;a:2:{s:4:\"path\";s:30:\"/app/resource/images/money.png\";s:8:\"checksum\";s:32:\"484c002ed6254fb68d30e88c2a737b28\";}i:141;a:2:{s:4:\"path\";s:34:\"/app/resource/images/msg-error.png\";s:8:\"checksum\";s:32:\"b62e85cca7184c9f4aab85c3ae3d6320\";}i:142;a:2:{s:4:\"path\";s:33:\"/app/resource/images/msg-info.png\";s:8:\"checksum\";s:32:\"fae9ee95e958a234a149daa35f0c59dc\";}i:143;a:2:{s:4:\"path\";s:36:\"/app/resource/images/msg-success.png\";s:8:\"checksum\";s:32:\"7ef66a57aa146e52009d09bbefb196bd\";}i:144;a:2:{s:4:\"path\";s:36:\"/app/resource/images/msg-warning.png\";s:8:\"checksum\";s:32:\"2d54773c8167447bc3afe77dd0c22f48\";}i:145;a:2:{s:4:\"path\";s:36:\"/app/resource/images/nopic-small.jpg\";s:8:\"checksum\";s:32:\"fc526e92f23ab1bda19c3695852330f8\";}i:146;a:2:{s:4:\"path\";s:30:\"/app/resource/images/nopic.jpg\";s:8:\"checksum\";s:32:\"745f11368bf1e9af7eac78ace00a331e\";}i:147;a:2:{s:4:\"path\";s:32:\"/app/resource/images/payment.png\";s:8:\"checksum\";s:32:\"5a10e9b8bd340cfb254ce55cbb58b2ae\";}i:148;a:2:{s:4:\"path\";s:31:\"/app/resource/images/qrcode.png\";s:8:\"checksum\";s:32:\"c9b7a63bf49762d5cc3db83873048286\";}i:149;a:2:{s:4:\"path\";s:33:\"/app/resource/images/recharge.png\";s:8:\"checksum\";s:32:\"5d9cdc82ea703bc1478fa2b3e9042d42\";}i:150;a:2:{s:4:\"path\";s:33:\"/app/resource/images/scan-pay.png\";s:8:\"checksum\";s:32:\"63baf7485f158af947f2e5055ff86c3b\";}i:151;a:2:{s:4:\"path\";s:41:\"/app/resource/images/selected-success.png\";s:8:\"checksum\";s:32:\"2847ddc2e944d256eb309542c4a79cd2\";}i:152;a:2:{s:4:\"path\";s:32:\"/app/resource/images/setting.png\";s:8:\"checksum\";s:32:\"1b94222aef6ec0f59dec04c2f54c3741\";}i:153;a:2:{s:4:\"path\";s:30:\"/app/resource/images/share.png\";s:8:\"checksum\";s:32:\"ebf70eb6338025ec4b9dda94c7e3f9b2\";}i:154;a:2:{s:4:\"path\";s:37:\"/app/resource/images/sum-recharge.png\";s:8:\"checksum\";s:32:\"515df97959f9c3620ab561cc9e8e36f9\";}i:155;a:2:{s:4:\"path\";s:32:\"/app/resource/images/voucher.png\";s:8:\"checksum\";s:32:\"b951c11928ca566c1947bf7daa9aafb8\";}i:156;a:2:{s:4:\"path\";s:34:\"/app/resource/images/voucher01.png\";s:8:\"checksum\";s:32:\"ab6f6d07ee962798d907add2ad8aa00b\";}i:157;a:2:{s:4:\"path\";s:34:\"/app/resource/images/voucher02.png\";s:8:\"checksum\";s:32:\"928064553d4be4312481bf08198df74f\";}i:158;a:2:{s:4:\"path\";s:37:\"/app/resource/images/wechat_share.jpg\";s:8:\"checksum\";s:32:\"568954346b583711d1a19eb16d3fab57\";}i:159;a:2:{s:4:\"path\";s:32:\"/app/resource/images/wx-icon.png\";s:8:\"checksum\";s:32:\"4c544b5ea53157752766b27f95de3104\";}i:160;a:2:{s:4:\"path\";s:32:\"/app/resource/images/wx_gift.png\";s:8:\"checksum\";s:32:\"417b8fac1da8b03b7c5b193dbdb77959\";}i:161;a:2:{s:4:\"path\";s:33:\"/app/resource/images/zfb-icon.png\";s:8:\"checksum\";s:32:\"9c5da974823b97b91064bfe77b33af56\";}i:162;a:2:{s:4:\"path\";s:24:\"/app/resource/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:163;a:2:{s:4:\"path\";s:30:\"/app/resource/js/app/common.js\";s:8:\"checksum\";s:32:\"dfe3f18ca2cb50cd76fd1c784b953a30\";}i:164;a:2:{s:4:\"path\";s:28:\"/app/resource/js/app/util.js\";s:8:\"checksum\";s:32:\"c1c67f032b41dd86788df5930855f92f\";}i:165;a:2:{s:4:\"path\";s:34:\"/app/resource/js/lib/hammer.min.js\";s:8:\"checksum\";s:32:\"f699a1e56189259aabbfe4c258ff9cbd\";}i:166;a:2:{s:4:\"path\";s:41:\"/app/resource/js/lib/jquery-1.11.1.min.js\";s:8:\"checksum\";s:32:\"439b16301fd7737850f1d5e183339091\";}i:167;a:2:{s:4:\"path\";s:31:\"/app/resource/js/lib/mui.min.js\";s:8:\"checksum\";s:32:\"6afb6b32d2c09c249c572180649c4454\";}i:168;a:2:{s:4:\"path\";s:38:\"/app/resource/js/lib/underscore.min.js\";s:8:\"checksum\";s:32:\"49488d6717cf784a5a3f3564ed04cf91\";}i:169;a:2:{s:4:\"path\";s:27:\"/app/resource/js/require.js\";s:8:\"checksum\";s:32:\"e28b7cd91e40a4795001fbe9b042370d\";}i:170;a:2:{s:4:\"path\";s:32:\"/app/source/auth/forget.ctrl.php\";s:8:\"checksum\";s:32:\"9bcb6413261dac49938e3d3283964934\";}i:171;a:2:{s:4:\"path\";s:33:\"/app/source/auth/forward.ctrl.php\";s:8:\"checksum\";s:32:\"b1acd38dd65624b7bcbc411653e92a3b\";}i:172;a:2:{s:4:\"path\";s:31:\"/app/source/auth/login.ctrl.php\";s:8:\"checksum\";s:32:\"c3b3a3d4e865b481c70eb720aed7caf5\";}i:173;a:2:{s:4:\"path\";s:31:\"/app/source/auth/oauth.ctrl.php\";s:8:\"checksum\";s:32:\"4eab4ea7222847b8506bf541820827ed\";}i:174;a:2:{s:4:\"path\";s:34:\"/app/source/auth/register.ctrl.php\";s:8:\"checksum\";s:32:\"d27a8cafc1ae099a6a8dd43d6c7927ae\";}i:175;a:2:{s:4:\"path\";s:33:\"/app/source/auth/session.ctrl.php\";s:8:\"checksum\";s:32:\"e36fb4e3fe5ea60cff13fe4f5e93df32\";}i:176;a:2:{s:4:\"path\";s:36:\"/app/source/channel/channel.ctrl.php\";s:8:\"checksum\";s:32:\"e277651d9d3c89219bc91d7257917660\";}i:177;a:2:{s:4:\"path\";s:28:\"/app/source/entry/__init.php\";s:8:\"checksum\";s:32:\"dc4428900a1d41136e5351db9f21b8d9\";}i:178;a:2:{s:4:\"path\";s:33:\"/app/source/entry/aliapp.ctrl.php\";s:8:\"checksum\";s:32:\"a6bb8dbbd558ee0339bf04a208ae5b99\";}i:179;a:2:{s:4:\"path\";s:35:\"/app/source/entry/baiduapp.ctrl.php\";s:8:\"checksum\";s:32:\"96fff4250ad9b692e6794ba6033fd546\";}i:180;a:2:{s:4:\"path\";s:35:\"/app/source/entry/phoneapp.ctrl.php\";s:8:\"checksum\";s:32:\"653eca577e8517421288eadec0b641f4\";}i:181;a:2:{s:4:\"path\";s:31:\"/app/source/entry/site.ctrl.php\";s:8:\"checksum\";s:32:\"b67769053c37808a65d5215e3850be0e\";}i:182;a:2:{s:4:\"path\";s:37:\"/app/source/entry/toutiaoapp.ctrl.php\";s:8:\"checksum\";s:32:\"72425e74966754a1a9acf4ff9efa927c\";}i:183;a:2:{s:4:\"path\";s:33:\"/app/source/entry/webapp.ctrl.php\";s:8:\"checksum\";s:32:\"d5d6a663203e106a00379bee352d3c4b\";}i:184;a:2:{s:4:\"path\";s:32:\"/app/source/entry/wxapp.ctrl.php\";s:8:\"checksum\";s:32:\"43aa5e62817549502a4d25fa931b0b81\";}i:185;a:2:{s:4:\"path\";s:32:\"/app/source/entry/xzapp.ctrl.php\";s:8:\"checksum\";s:32:\"9cf7fd8f6dc382cdd09558aa2b67d307\";}i:186;a:2:{s:4:\"path\";s:30:\"/app/source/home/home.ctrl.php\";s:8:\"checksum\";s:32:\"dab391248cecb58592e4072c89a017e2\";}i:187;a:2:{s:4:\"path\";s:30:\"/app/source/home/page.ctrl.php\";s:8:\"checksum\";s:32:\"c91f0a2fbcd26cbdc62d8cf778ec27d1\";}i:188;a:2:{s:4:\"path\";s:25:\"/app/source/mc/__init.php\";s:8:\"checksum\";s:32:\"4cde01c4143f7350f8186886d4c855c1\";}i:189;a:2:{s:4:\"path\";s:28:\"/app/source/mc/bond.ctrl.php\";s:8:\"checksum\";s:32:\"b350ca5d62b9210218c61dd9fd408e40\";}i:190;a:2:{s:4:\"path\";s:28:\"/app/source/mc/cash.ctrl.php\";s:8:\"checksum\";s:32:\"5b0df321b7255b2d32412ac7484cedc1\";}i:191;a:2:{s:4:\"path\";s:28:\"/app/source/mc/home.ctrl.php\";s:8:\"checksum\";s:32:\"1a1278770ab0361b404ef06a8d1e93f1\";}i:192;a:2:{s:4:\"path\";s:31:\"/app/source/mc/profile.ctrl.php\";s:8:\"checksum\";s:32:\"3d0c936bfe34e04b93878a141824d63d\";}i:193;a:2:{s:4:\"path\";s:29:\"/app/source/mc/store.ctrl.php\";s:8:\"checksum\";s:32:\"f86dde5ae588daed4b32280aba379275\";}i:194;a:2:{s:4:\"path\";s:30:\"/app/source/site/site.ctrl.php\";s:8:\"checksum\";s:32:\"0da30dce3e40524ca9842f555d1af1df\";}i:195;a:2:{s:4:\"path\";s:33:\"/app/source/utility/card.ctrl.php\";s:8:\"checksum\";s:32:\"39a64fa807c920968c2ba5b20972c8db\";}i:196;a:2:{s:4:\"path\";s:41:\"/app/source/utility/checkupgrade.ctrl.php\";s:8:\"checksum\";s:32:\"0b7be06c5b2a64b2d82a525483151fb7\";}i:197;a:2:{s:4:\"path\";s:34:\"/app/source/utility/click.ctrl.php\";s:8:\"checksum\";s:32:\"d0a7583af98d8b5f8942b57723e66f04\";}i:198;a:2:{s:4:\"path\";s:33:\"/app/source/utility/file.ctrl.php\";s:8:\"checksum\";s:32:\"c215333c2984c687d3399f2f7f00553a\";}i:199;a:2:{s:4:\"path\";s:36:\"/app/source/utility/preview.ctrl.php\";s:8:\"checksum\";s:32:\"fc718932908aa44ada7203184e13f228\";}i:200;a:2:{s:4:\"path\";s:34:\"/app/source/utility/share.ctrl.php\";s:8:\"checksum\";s:32:\"14cb393c6591453f0921c6ca5a8c2bd2\";}i:201;a:2:{s:4:\"path\";s:34:\"/app/source/utility/style.ctrl.php\";s:8:\"checksum\";s:32:\"c66ab6c85f8a6113b2b1a79994877a65\";}i:202;a:2:{s:4:\"path\";s:34:\"/app/source/utility/visit.ctrl.php\";s:8:\"checksum\";s:32:\"58e108b2c222186d7420631e0325e40c\";}i:203;a:2:{s:4:\"path\";s:35:\"/app/source/utility/wxcode.ctrl.php\";s:8:\"checksum\";s:32:\"6ed866e00809c4a0a18f8a564405490a\";}i:204;a:2:{s:4:\"path\";s:31:\"/app/source/wxapp/home.ctrl.php\";s:8:\"checksum\";s:32:\"e77a45ea15bf1b09952e7c80ea18b803\";}i:205;a:2:{s:4:\"path\";s:36:\"/app/themes/default/auth/forget.html\";s:8:\"checksum\";s:32:\"36e4aeff226aaf57444f02d7a4fc774b\";}i:206;a:2:{s:4:\"path\";s:35:\"/app/themes/default/auth/login.html\";s:8:\"checksum\";s:32:\"f524c56d2c1b9f25c4a05e6a522b6a01\";}i:207;a:2:{s:4:\"path\";s:38:\"/app/themes/default/auth/register.html\";s:8:\"checksum\";s:32:\"99eb15eb07f95635b09790ffc2cbb0b1\";}i:208;a:2:{s:4:\"path\";s:38:\"/app/themes/default/common/footer.html\";s:8:\"checksum\";s:32:\"f5ca9688056337bfc857e33d38d02610\";}i:209;a:2:{s:4:\"path\";s:38:\"/app/themes/default/common/header.html\";s:8:\"checksum\";s:32:\"ec6aa5f2b5e3ff329a5b93f159ee8811\";}i:210;a:2:{s:4:\"path\";s:39:\"/app/themes/default/common/message.html\";s:8:\"checksum\";s:32:\"24e10a2209d62dc7e4507826775f6562\";}i:211;a:2:{s:4:\"path\";s:41:\"/app/themes/default/common/paycenter.html\";s:8:\"checksum\";s:32:\"713eef5fa1dd24e675f5992342c70512\";}i:212;a:2:{s:4:\"path\";s:37:\"/app/themes/default/common/slide.html\";s:8:\"checksum\";s:32:\"4db016f54109a55e3c382e46a5f9f96b\";}i:213;a:2:{s:4:\"path\";s:39:\"/app/themes/default/common/toolbar.html\";s:8:\"checksum\";s:32:\"38e78dc49e754770e023774faaa2e7b9\";}i:214;a:2:{s:4:\"path\";s:34:\"/app/themes/default/home/home.html\";s:8:\"checksum\";s:32:\"c7ebf849b29143c3b1549da50caaf5f9\";}i:215;a:2:{s:4:\"path\";s:39:\"/app/themes/default/images/bg_index.jpg\";s:8:\"checksum\";s:32:\"e9e48f5b9913e2d8e4672df49f941ea2\";}i:216;a:2:{s:4:\"path\";s:32:\"/app/themes/default/manifest.xml\";s:8:\"checksum\";s:32:\"01df6884e1bfa46d4adf4c36b6177521\";}i:217;a:2:{s:4:\"path\";s:32:\"/app/themes/default/mc/bond.html\";s:8:\"checksum\";s:32:\"2e69389247841e2ee3d055ce61b72136\";}i:218;a:2:{s:4:\"path\";s:32:\"/app/themes/default/mc/home.html\";s:8:\"checksum\";s:32:\"71b39bfa7e5bdab91c4228a230c78d0b\";}i:219;a:2:{s:4:\"path\";s:35:\"/app/themes/default/mc/iswxapp.html\";s:8:\"checksum\";s:32:\"c14426a217ab7255ee9a97d40e0fba68\";}i:220;a:2:{s:4:\"path\";s:35:\"/app/themes/default/mc/profile.html\";s:8:\"checksum\";s:32:\"d3bcd254b2ae30c87c07ee73a6f7c37b\";}i:221;a:2:{s:4:\"path\";s:35:\"/app/themes/default/mc/require.html\";s:8:\"checksum\";s:32:\"1ac0a50fce7eaf19cc130e6680528999\";}i:222;a:2:{s:4:\"path\";s:31:\"/app/themes/default/preview.jpg\";s:8:\"checksum\";s:32:\"98d8d19e3f3f3c3acfdb5844b67cc910\";}i:223;a:2:{s:4:\"path\";s:36:\"/app/themes/default/preview_site.jpg\";s:8:\"checksum\";s:32:\"1147b083800e626a105ee73043abf750\";}i:224;a:2:{s:4:\"path\";s:37:\"/app/themes/default/site/comment.html\";s:8:\"checksum\";s:32:\"bc71be557606b0304a750ebaedb8e8f9\";}i:225;a:2:{s:4:\"path\";s:36:\"/app/themes/default/site/detail.html\";s:8:\"checksum\";s:32:\"622311bf64222c9ff77b5121e10c1b17\";}i:226;a:2:{s:4:\"path\";s:34:\"/app/themes/default/site/list.html\";s:8:\"checksum\";s:32:\"1bb2c3c37eb2519742046e764e5968b2\";}i:227;a:2:{s:4:\"path\";s:45:\"/app/themes/default/utility/file-browser.html\";s:8:\"checksum\";s:32:\"3ade0afd97d171001a17a329d0fe05c1\";}i:228;a:2:{s:4:\"path\";s:36:\"/app/themes/default/wxapp/wxapp.html\";s:8:\"checksum\";s:32:\"3699c0ae8c2b46e09cfacac6b63cfdaf\";}i:229;a:2:{s:4:\"path\";s:30:\"/app/themes/quick/default.html\";s:8:\"checksum\";s:32:\"f3aaf6b279ab4d5142fd61f8d3a148cb\";}i:230;a:2:{s:4:\"path\";s:35:\"/app/themes/quick/images/quick2.png\";s:8:\"checksum\";s:32:\"17869d96d8fa77a187d07c8a54ad6a1c\";}i:231;a:2:{s:4:\"path\";s:35:\"/app/themes/quick/images/quick5.png\";s:8:\"checksum\";s:32:\"a2bdf169841cbd9beb87613ab2ff7299\";}i:232;a:2:{s:4:\"path\";s:28:\"/app/themes/quick/quick.html\";s:8:\"checksum\";s:32:\"31ed99e3df81709dbf56ab7e8a9c4776\";}i:233;a:2:{s:4:\"path\";s:29:\"/app/themes/quick/quick1.html\";s:8:\"checksum\";s:32:\"21de3580020f34d21d6571485fd472f0\";}i:234;a:2:{s:4:\"path\";s:29:\"/app/themes/quick/quick2.html\";s:8:\"checksum\";s:32:\"6584abb30478f049b36c3fd75d964eb0\";}i:235;a:2:{s:4:\"path\";s:29:\"/app/themes/quick/quick3.html\";s:8:\"checksum\";s:32:\"2ec4a26d8bc641201c54b697114a52be\";}i:236;a:2:{s:4:\"path\";s:29:\"/app/themes/quick/quick4.html\";s:8:\"checksum\";s:32:\"43fa08ffa5381888ba7018bbbfe835e8\";}i:237;a:2:{s:4:\"path\";s:29:\"/app/themes/quick/quick5.html\";s:8:\"checksum\";s:32:\"c521d1c163d876de49a040771ddb6676\";}i:238;a:2:{s:4:\"path\";s:29:\"/attachment/audios/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:239;a:2:{s:4:\"path\";s:41:\"/attachment/images/global/MicroEngine.ico\";s:8:\"checksum\";s:32:\"f8bf8eae4364dd456fa62b39b9e239c7\";}i:240;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_1.jpg\";s:8:\"checksum\";s:32:\"110a3f06b193692450e915777ddab6e4\";}i:241;a:2:{s:4:\"path\";s:47:\"/attachment/images/global/avatars/avatar_10.jpg\";s:8:\"checksum\";s:32:\"c2acffd313b4b599b1d7820bc490f265\";}i:242;a:2:{s:4:\"path\";s:47:\"/attachment/images/global/avatars/avatar_11.jpg\";s:8:\"checksum\";s:32:\"5f88fca4e3b96cdb60374f93fe1e92c7\";}i:243;a:2:{s:4:\"path\";s:47:\"/attachment/images/global/avatars/avatar_12.jpg\";s:8:\"checksum\";s:32:\"4adca778f1d156518726b84febf7ecd7\";}i:244;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_2.jpg\";s:8:\"checksum\";s:32:\"7fbc705b24229a427f645a546ccee9af\";}i:245;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_3.jpg\";s:8:\"checksum\";s:32:\"e57c397b6386105b0a11473c1f6fd0fc\";}i:246;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_4.jpg\";s:8:\"checksum\";s:32:\"e6567aba6287a3a493d118e00693a0b3\";}i:247;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_5.jpg\";s:8:\"checksum\";s:32:\"9fc6348d47b6c632bd81ee493f754f58\";}i:248;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_6.jpg\";s:8:\"checksum\";s:32:\"ddb9d06e18552b9b8d4060d07474821c\";}i:249;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_7.jpg\";s:8:\"checksum\";s:32:\"94eaf33ecc52914d2e359c56be95131b\";}i:250;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_8.jpg\";s:8:\"checksum\";s:32:\"2d25d1ff7a165e846f5eb47fda2c54e7\";}i:251;a:2:{s:4:\"path\";s:46:\"/attachment/images/global/avatars/avatar_9.jpg\";s:8:\"checksum\";s:32:\"8b9bfc8cf87b68345e3c4a1c85be4e49\";}i:252;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/1.png\";s:8:\"checksum\";s:32:\"74b84f38d3c4919b8d1c19376467ce63\";}i:253;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/10.png\";s:8:\"checksum\";s:32:\"8feccdb63b3c35c2650e18b50d996bff\";}i:254;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/11.png\";s:8:\"checksum\";s:32:\"769cecf39fe8459779b9056698b34297\";}i:255;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/12.png\";s:8:\"checksum\";s:32:\"8e1fd8c0c375bb7723a3585bf5321af4\";}i:256;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/13.png\";s:8:\"checksum\";s:32:\"898a45e96f4e67744c5b22d836f891ea\";}i:257;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/14.png\";s:8:\"checksum\";s:32:\"5fbe1c1cc37a9ee9b66ef5f23cc4f5e5\";}i:258;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/15.png\";s:8:\"checksum\";s:32:\"8c99f129918ba50f32df02836a8d406a\";}i:259;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/16.png\";s:8:\"checksum\";s:32:\"c78625c5cdcf6f462119617141edbb0e\";}i:260;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/17.png\";s:8:\"checksum\";s:32:\"19cb4e861f7ae493f7c0ee08b18f7948\";}i:261;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/18.png\";s:8:\"checksum\";s:32:\"ff970e7030aff80f712f4ec83d25c706\";}i:262;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/19.png\";s:8:\"checksum\";s:32:\"10f9802110793e2fda70e645a2f71879\";}i:263;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/2.png\";s:8:\"checksum\";s:32:\"fdabf9de1906a1c5983f82178f34942e\";}i:264;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/20.png\";s:8:\"checksum\";s:32:\"58f0f9d8451d671c7d90607f6220017a\";}i:265;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/21.png\";s:8:\"checksum\";s:32:\"559ec62e9d28710592c76ce2b8d86826\";}i:266;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/22.png\";s:8:\"checksum\";s:32:\"46660e29f31bf7195f163c82d403f7ee\";}i:267;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/card/23.png\";s:8:\"checksum\";s:32:\"0e1b257dc7bf8e0ac7e64ac1f3e23116\";}i:268;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/3.png\";s:8:\"checksum\";s:32:\"1b3770fbcdd3c85d0979691933c52941\";}i:269;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/4.png\";s:8:\"checksum\";s:32:\"4f9d11b6a52dab688aef736229bf8905\";}i:270;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/5.png\";s:8:\"checksum\";s:32:\"72e4bf79209c123ea1b3b673f376a1fa\";}i:271;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/6.png\";s:8:\"checksum\";s:32:\"e2841b9d98577ba10d41b2cce2598f89\";}i:272;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/7.png\";s:8:\"checksum\";s:32:\"478f81dbf2ec250daff1535ca8c89834\";}i:273;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/8.png\";s:8:\"checksum\";s:32:\"66cebb905e8b68f564402cabd7148acd\";}i:274;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/card/9.png\";s:8:\"checksum\";s:32:\"2c0c223005bc526273b7306569ef68df\";}i:275;a:2:{s:4:\"path\";s:36:\"/attachment/images/global/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:276;a:2:{s:4:\"path\";s:37:\"/attachment/images/global/loading.gif\";s:8:\"checksum\";s:32:\"fb04fd7f4f9400126963923828c1c035\";}i:277;a:2:{s:4:\"path\";s:35:\"/attachment/images/global/media.jpg\";s:8:\"checksum\";s:32:\"4327590be734541495d1e7be0561e576\";}i:278;a:2:{s:4:\"path\";s:45:\"/attachment/images/global/noavatar_middle.gif\";s:8:\"checksum\";s:32:\"46ccf85e52575062c319633f5c0fc058\";}i:279;a:2:{s:4:\"path\";s:41:\"/attachment/images/global/nopic-small.jpg\";s:8:\"checksum\";s:32:\"fc526e92f23ab1bda19c3695852330f8\";}i:280;a:2:{s:4:\"path\";s:35:\"/attachment/images/global/nopic.jpg\";s:8:\"checksum\";s:32:\"745f11368bf1e9af7eac78ace00a331e\";}i:281;a:2:{s:4:\"path\";s:29:\"/attachment/images/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:282;a:2:{s:4:\"path\";s:28:\"/framework/bootstrap.inc.php\";s:8:\"checksum\";s:32:\"feb68ed0e51176ce48bf0f198667b6e3\";}i:283;a:2:{s:4:\"path\";s:33:\"/framework/builtin/basic/icon.jpg\";s:8:\"checksum\";s:32:\"83dce8790b862f36d58aaca21f0a7cc7\";}i:284;a:2:{s:4:\"path\";s:35:\"/framework/builtin/basic/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:285;a:2:{s:4:\"path\";s:36:\"/framework/builtin/basic/preview.jpg\";s:8:\"checksum\";s:32:\"1ed38020dc41a1e64b3a3a788d5f2e33\";}i:286;a:2:{s:4:\"path\";s:38:\"/framework/builtin/basic/processor.php\";s:8:\"checksum\";s:32:\"9ac72effd5e2b4e8300434b2515155c1\";}i:287;a:2:{s:4:\"path\";s:33:\"/framework/builtin/chats/icon.jpg\";s:8:\"checksum\";s:32:\"83dce8790b862f36d58aaca21f0a7cc7\";}i:288;a:2:{s:4:\"path\";s:35:\"/framework/builtin/chats/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:289;a:2:{s:4:\"path\";s:35:\"/framework/builtin/chats/module.php\";s:8:\"checksum\";s:32:\"ff48458d758561ef087e9a427bac5834\";}i:290;a:2:{s:4:\"path\";s:36:\"/framework/builtin/chats/preview.jpg\";s:8:\"checksum\";s:32:\"1ed38020dc41a1e64b3a3a788d5f2e33\";}i:291;a:2:{s:4:\"path\";s:38:\"/framework/builtin/chats/processor.php\";s:8:\"checksum\";s:32:\"58fa8c5dc1582a744de327068538f8db\";}i:292;a:2:{s:4:\"path\";s:34:\"/framework/builtin/core/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:293;a:2:{s:4:\"path\";s:34:\"/framework/builtin/core/module.php\";s:8:\"checksum\";s:32:\"b97ac75fdaa919962c84fcfd5176bb8a\";}i:294;a:2:{s:4:\"path\";s:37:\"/framework/builtin/core/processor.php\";s:8:\"checksum\";s:32:\"14e740dbbe8a21dd0c43cf0a4dc0b65d\";}i:295;a:2:{s:4:\"path\";s:36:\"/framework/builtin/core/receiver.php\";s:8:\"checksum\";s:32:\"739b493aff5610eaa737463757e88d95\";}i:296;a:2:{s:4:\"path\";s:32:\"/framework/builtin/core/site.php\";s:8:\"checksum\";s:32:\"2711c147283a698c913ed1682e566ed7\";}i:297;a:2:{s:4:\"path\";s:45:\"/framework/builtin/core/template/display.html\";s:8:\"checksum\";s:32:\"49884957716d51ba5132d3c5091a7862\";}i:298;a:2:{s:4:\"path\";s:51:\"/framework/builtin/core/template/mobile/detail.html\";s:8:\"checksum\";s:32:\"ee80c742d247bf02a8d0bff6ba100a57\";}i:299;a:2:{s:4:\"path\";s:48:\"/framework/builtin/core/template/mobile/pay.html\";s:8:\"checksum\";s:32:\"47bb4807e63f069823be80ab196face4\";}i:300;a:2:{s:4:\"path\";s:33:\"/framework/builtin/core/wxapp.php\";s:8:\"checksum\";s:32:\"bef5b6b9cf1181397bc9992a050cf192\";}i:301;a:2:{s:4:\"path\";s:38:\"/framework/builtin/cover/processor.php\";s:8:\"checksum\";s:32:\"eaa6d3acb8940fb94bfa117bbc12e85c\";}i:302;a:2:{s:4:\"path\";s:34:\"/framework/builtin/custom/icon.jpg\";s:8:\"checksum\";s:32:\"83dce8790b862f36d58aaca21f0a7cc7\";}i:303;a:2:{s:4:\"path\";s:36:\"/framework/builtin/custom/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:304;a:2:{s:4:\"path\";s:37:\"/framework/builtin/custom/preview.jpg\";s:8:\"checksum\";s:32:\"1ed38020dc41a1e64b3a3a788d5f2e33\";}i:305;a:2:{s:4:\"path\";s:39:\"/framework/builtin/custom/processor.php\";s:8:\"checksum\";s:32:\"daecb415cc43dd77f9b94d545b2f0dda\";}i:306;a:2:{s:4:\"path\";s:34:\"/framework/builtin/custom/site.php\";s:8:\"checksum\";s:32:\"0839d2ed6b10ff3e118f3fefb6513f93\";}i:307;a:2:{s:4:\"path\";s:47:\"/framework/builtin/custom/template/chatlog.html\";s:8:\"checksum\";s:32:\"dceaf65328c600b7c7151c4dea1f0d5a\";}i:308;a:2:{s:4:\"path\";s:40:\"/framework/builtin/default/processor.php\";s:8:\"checksum\";s:32:\"b0e5b4a3125c9d814e8df3d1e16b9a6a\";}i:309;a:2:{s:4:\"path\";s:34:\"/framework/builtin/images/icon.jpg\";s:8:\"checksum\";s:32:\"ac91a45187de478b5b7e97df412cfa55\";}i:310;a:2:{s:4:\"path\";s:37:\"/framework/builtin/images/preview.jpg\";s:8:\"checksum\";s:32:\"dc4546918a372deea49f98da1fd65e24\";}i:311;a:2:{s:4:\"path\";s:39:\"/framework/builtin/images/processor.php\";s:8:\"checksum\";s:32:\"66a00c9a0d2dedb8812f026c5f20f054\";}i:312;a:2:{s:4:\"path\";s:28:\"/framework/builtin/model.php\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:313;a:2:{s:4:\"path\";s:33:\"/framework/builtin/music/icon.jpg\";s:8:\"checksum\";s:32:\"ac91a45187de478b5b7e97df412cfa55\";}i:314;a:2:{s:4:\"path\";s:36:\"/framework/builtin/music/preview.jpg\";s:8:\"checksum\";s:32:\"dc4546918a372deea49f98da1fd65e24\";}i:315;a:2:{s:4:\"path\";s:38:\"/framework/builtin/music/processor.php\";s:8:\"checksum\";s:32:\"272117748c8184221b14a280ed6423f8\";}i:316;a:2:{s:4:\"path\";s:32:\"/framework/builtin/news/icon.jpg\";s:8:\"checksum\";s:32:\"9520518b76fe3f9077848fc8ec6c5286\";}i:317;a:2:{s:4:\"path\";s:35:\"/framework/builtin/news/preview.jpg\";s:8:\"checksum\";s:32:\"849a4a4adb4751b4c97c2248edcfaa6d\";}i:318;a:2:{s:4:\"path\";s:37:\"/framework/builtin/news/processor.php\";s:8:\"checksum\";s:32:\"e830d590fb71a23c58be9335426c3cfb\";}i:319;a:2:{s:4:\"path\";s:32:\"/framework/builtin/news/site.php\";s:8:\"checksum\";s:32:\"ab8b5ebd4844717fb101cb8c3a97ab58\";}i:320;a:2:{s:4:\"path\";s:51:\"/framework/builtin/news/template/mobile/detail.html\";s:8:\"checksum\";s:32:\"ee80c742d247bf02a8d0bff6ba100a57\";}i:321;a:2:{s:4:\"path\";s:37:\"/framework/builtin/paycenter/icon.jpg\";s:8:\"checksum\";s:32:\"9520518b76fe3f9077848fc8ec6c5286\";}i:322;a:2:{s:4:\"path\";s:59:\"/framework/builtin/paycenter/inc/mobile/cardconsume.inc.php\";s:8:\"checksum\";s:32:\"2e68fb0efed73455e703350ad9a7083b\";}i:323;a:2:{s:4:\"path\";s:52:\"/framework/builtin/paycenter/inc/mobile/more.inc.php\";s:8:\"checksum\";s:32:\"ad8bebedc93dd59f867bd0365b7fc0dd\";}i:324;a:2:{s:4:\"path\";s:55:\"/framework/builtin/paycenter/inc/mobile/scanpay.inc.php\";s:8:\"checksum\";s:32:\"d86f4468cb81fbfaaf1fc810c74a912f\";}i:325;a:2:{s:4:\"path\";s:42:\"/framework/builtin/paycenter/inc/model.php\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:326;a:2:{s:4:\"path\";s:39:\"/framework/builtin/paycenter/module.php\";s:8:\"checksum\";s:32:\"11c74718b8d2dc77f7c1fe34e072eef9\";}i:327;a:2:{s:4:\"path\";s:40:\"/framework/builtin/paycenter/preview.jpg\";s:8:\"checksum\";s:32:\"849a4a4adb4751b4c97c2248edcfaa6d\";}i:328;a:2:{s:4:\"path\";s:42:\"/framework/builtin/paycenter/processor.php\";s:8:\"checksum\";s:32:\"668c712c70eb326850442ae7de2989e1\";}i:329;a:2:{s:4:\"path\";s:37:\"/framework/builtin/paycenter/site.php\";s:8:\"checksum\";s:32:\"2f217f8dc7285397e3dc16c82849c09b\";}i:330;a:2:{s:4:\"path\";s:50:\"/framework/builtin/paycenter/template/display.html\";s:8:\"checksum\";s:32:\"dba73ea2c8b2ee0861605700e9403c7f\";}i:331;a:2:{s:4:\"path\";s:61:\"/framework/builtin/paycenter/template/mobile/cardconsume.html\";s:8:\"checksum\";s:32:\"e4f710eb47af1b3d9bd90bf0dea397d3\";}i:332;a:2:{s:4:\"path\";s:57:\"/framework/builtin/paycenter/template/mobile/consume.html\";s:8:\"checksum\";s:32:\"344d72be48951aff8f7ea0fd332097d8\";}i:333;a:2:{s:4:\"path\";s:54:\"/framework/builtin/paycenter/template/mobile/home.html\";s:8:\"checksum\";s:32:\"4c8c432b84d06952418c43f556f9ab3f\";}i:334;a:2:{s:4:\"path\";s:55:\"/framework/builtin/paycenter/template/mobile/login.html\";s:8:\"checksum\";s:32:\"0b7ecb347b1ac3210e788053e41a9cd3\";}i:335;a:2:{s:4:\"path\";s:54:\"/framework/builtin/paycenter/template/mobile/more.html\";s:8:\"checksum\";s:32:\"67a65a248fc36d3777e5dd7a852bbe6c\";}i:336;a:2:{s:4:\"path\";s:53:\"/framework/builtin/paycenter/template/mobile/nav.html\";s:8:\"checksum\";s:32:\"0ea9f3c2d7fb4f32d7b1d441d6224ed7\";}i:337;a:2:{s:4:\"path\";s:55:\"/framework/builtin/paycenter/template/mobile/order.html\";s:8:\"checksum\";s:32:\"abbedbd64deaef992ae2120dd47b623b\";}i:338;a:2:{s:4:\"path\";s:59:\"/framework/builtin/paycenter/template/mobile/paydetail.html\";s:8:\"checksum\";s:32:\"051bd3ecaa1e20eebbccc2776f6aba20\";}i:339;a:2:{s:4:\"path\";s:57:\"/framework/builtin/paycenter/template/mobile/scanpay.html\";s:8:\"checksum\";s:32:\"c7b8d1882bab15aabf24904557e49445\";}i:340;a:2:{s:4:\"path\";s:57:\"/framework/builtin/paycenter/template/mobile/selfpay.html\";s:8:\"checksum\";s:32:\"9babaa6417f4b87f247035ce654f6b22\";}i:341;a:2:{s:4:\"path\";s:36:\"/framework/builtin/recharge/site.php\";s:8:\"checksum\";s:32:\"c271af887cc5ee125cf1d5411f4b6206\";}i:342;a:2:{s:4:\"path\";s:57:\"/framework/builtin/recharge/template/mobile/recharge.html\";s:8:\"checksum\";s:32:\"61785226dcd391ea9aafaa892f24d89e\";}i:343;a:2:{s:4:\"path\";s:41:\"/framework/builtin/task/cron/mass.inc.php\";s:8:\"checksum\";s:32:\"5a7124714e41bbaa0ce347445b5cc68f\";}i:344;a:2:{s:4:\"path\";s:32:\"/framework/builtin/task/cron.php\";s:8:\"checksum\";s:32:\"6e9f03565ab039d90ad308d8ef8c8f46\";}i:345;a:2:{s:4:\"path\";s:40:\"/framework/builtin/userapi/api/baike.php\";s:8:\"checksum\";s:32:\"68f0da4412e76d9c20378092da04ffcb\";}i:346;a:2:{s:4:\"path\";s:43:\"/framework/builtin/userapi/api/calendar.php\";s:8:\"checksum\";s:32:\"bc6ca1b3b0a39d38c1eb682370048b43\";}i:347;a:2:{s:4:\"path\";s:39:\"/framework/builtin/userapi/api/demo.php\";s:8:\"checksum\";s:32:\"a23d8c63c5374adccffefe648d34842c\";}i:348;a:2:{s:4:\"path\";s:42:\"/framework/builtin/userapi/api/express.php\";s:8:\"checksum\";s:32:\"eae881a7ed84411a354fb276317dba30\";}i:349;a:2:{s:4:\"path\";s:39:\"/framework/builtin/userapi/api/news.php\";s:8:\"checksum\";s:32:\"ba2903c3f897be581964764e1f6fe3ac\";}i:350;a:2:{s:4:\"path\";s:44:\"/framework/builtin/userapi/api/translate.php\";s:8:\"checksum\";s:32:\"1e6ec2053d2dae80166dcf01322d338c\";}i:351;a:2:{s:4:\"path\";s:42:\"/framework/builtin/userapi/api/weather.php\";s:8:\"checksum\";s:32:\"f2b8e83448744386ff2269bed1f4ed73\";}i:352;a:2:{s:4:\"path\";s:35:\"/framework/builtin/userapi/icon.jpg\";s:8:\"checksum\";s:32:\"fee6517c44c32db53483b5d13d873904\";}i:353;a:2:{s:4:\"path\";s:41:\"/framework/builtin/userapi/images/ems.png\";s:8:\"checksum\";s:32:\"977b69be4a268c2a2c8e0f9ecfa84b5a\";}i:354;a:2:{s:4:\"path\";s:51:\"/framework/builtin/userapi/images/huitongkuaidi.png\";s:8:\"checksum\";s:32:\"b5a918277e70b5d4b4ee4046209eff15\";}i:355;a:2:{s:4:\"path\";s:46:\"/framework/builtin/userapi/images/shentong.png\";s:8:\"checksum\";s:32:\"ec2fc0fe033cb78620ba61454adf46a4\";}i:356;a:2:{s:4:\"path\";s:46:\"/framework/builtin/userapi/images/shunfeng.png\";s:8:\"checksum\";s:32:\"12f495aae2366c29f2cba56817b8d1d0\";}i:357;a:2:{s:4:\"path\";s:46:\"/framework/builtin/userapi/images/yuantong.png\";s:8:\"checksum\";s:32:\"4e60950386938a7ceaedbbd0dc45ced3\";}i:358;a:2:{s:4:\"path\";s:43:\"/framework/builtin/userapi/images/yunda.png\";s:8:\"checksum\";s:32:\"67939acdd18f20dc97ccdfbc33d4ab2b\";}i:359;a:2:{s:4:\"path\";s:47:\"/framework/builtin/userapi/images/zhongtong.png\";s:8:\"checksum\";s:32:\"eee1af78e8180058a5311a862b35bc52\";}i:360;a:2:{s:4:\"path\";s:37:\"/framework/builtin/userapi/module.php\";s:8:\"checksum\";s:32:\"68b641cd7283a7686c974a338ce3114d\";}i:361;a:2:{s:4:\"path\";s:38:\"/framework/builtin/userapi/preview.jpg\";s:8:\"checksum\";s:32:\"4cc762bfaf128870405e8471595a7f32\";}i:362;a:2:{s:4:\"path\";s:40:\"/framework/builtin/userapi/processor.php\";s:8:\"checksum\";s:32:\"111b3a721a085d75020ab095b4f343be\";}i:363;a:2:{s:4:\"path\";s:35:\"/framework/builtin/userapi/site.php\";s:8:\"checksum\";s:32:\"9e0da5eab65c1cf405108043034eb224\";}i:364;a:2:{s:4:\"path\";s:45:\"/framework/builtin/userapi/template/form.html\";s:8:\"checksum\";s:32:\"a88437895056ef66e4fc5457d53684df\";}i:365;a:2:{s:4:\"path\";s:47:\"/framework/builtin/userapi/template/newfile.php\";s:8:\"checksum\";s:32:\"8331de5333e63100552a7e254ae36db8\";}i:366;a:2:{s:4:\"path\";s:33:\"/framework/builtin/video/icon.jpg\";s:8:\"checksum\";s:32:\"ac91a45187de478b5b7e97df412cfa55\";}i:367;a:2:{s:4:\"path\";s:36:\"/framework/builtin/video/preview.jpg\";s:8:\"checksum\";s:32:\"dc4546918a372deea49f98da1fd65e24\";}i:368;a:2:{s:4:\"path\";s:38:\"/framework/builtin/video/processor.php\";s:8:\"checksum\";s:32:\"5f505db0e9a71846562034573461402f\";}i:369;a:2:{s:4:\"path\";s:33:\"/framework/builtin/voice/icon.jpg\";s:8:\"checksum\";s:32:\"ac91a45187de478b5b7e97df412cfa55\";}i:370;a:2:{s:4:\"path\";s:36:\"/framework/builtin/voice/preview.jpg\";s:8:\"checksum\";s:32:\"dc4546918a372deea49f98da1fd65e24\";}i:371;a:2:{s:4:\"path\";s:38:\"/framework/builtin/voice/processor.php\";s:8:\"checksum\";s:32:\"b831050df7366ada5244175729dcbae0\";}i:372;a:2:{s:4:\"path\";s:34:\"/framework/builtin/wxcard/icon.jpg\";s:8:\"checksum\";s:32:\"9520518b76fe3f9077848fc8ec6c5286\";}i:373;a:2:{s:4:\"path\";s:36:\"/framework/builtin/wxcard/module.php\";s:8:\"checksum\";s:32:\"c97ac6f2a8232ca88169423ec0059a42\";}i:374;a:2:{s:4:\"path\";s:37:\"/framework/builtin/wxcard/preview.jpg\";s:8:\"checksum\";s:32:\"849a4a4adb4751b4c97c2248edcfaa6d\";}i:375;a:2:{s:4:\"path\";s:39:\"/framework/builtin/wxcard/processor.php\";s:8:\"checksum\";s:32:\"f49c27bc034aa51d554bcc772f9fc471\";}i:376;a:2:{s:4:\"path\";s:34:\"/framework/builtin/wxcard/site.php\";s:8:\"checksum\";s:32:\"d07323bd02f6fedfb215957809f61c4a\";}i:377;a:2:{s:4:\"path\";s:47:\"/framework/builtin/wxcard/template/display.html\";s:8:\"checksum\";s:32:\"dcfb0288b4be1e411165b216fb94c5ab\";}i:378;a:2:{s:4:\"path\";s:53:\"/framework/builtin/wxcard/template/mobile/detail.html\";s:8:\"checksum\";s:32:\"ee80c742d247bf02a8d0bff6ba100a57\";}i:379;a:2:{s:4:\"path\";s:42:\"/framework/class/account/account.class.php\";s:8:\"checksum\";s:32:\"d01cb1727b3d7479baa14a9c633ca21a\";}i:380;a:2:{s:4:\"path\";s:49:\"/framework/class/account/aliapp.account.class.php\";s:8:\"checksum\";s:32:\"6c0879b135d44bf0cedf9bfea83425b4\";}i:381;a:2:{s:4:\"path\";s:51:\"/framework/class/account/baiduapp.account.class.php\";s:8:\"checksum\";s:32:\"6c0f8e8c28bfc1e1540e9d7323038dab\";}i:382;a:2:{s:4:\"path\";s:51:\"/framework/class/account/phoneapp.account.class.php\";s:8:\"checksum\";s:32:\"7aa6dc45b3943a511c4bada9d8c849ee\";}i:383;a:2:{s:4:\"path\";s:53:\"/framework/class/account/toutiaoapp.account.class.php\";s:8:\"checksum\";s:32:\"c36b289f4210f02885b0d5a2655c3208\";}i:384;a:2:{s:4:\"path\";s:49:\"/framework/class/account/webapp.account.class.php\";s:8:\"checksum\";s:32:\"f595b7cb6a740d8e00aaa6ca1f13d8dc\";}i:385;a:2:{s:4:\"path\";s:49:\"/framework/class/account/weixin.account.class.php\";s:8:\"checksum\";s:32:\"97d38199400523cffdd6a1775141cf9e\";}i:386;a:2:{s:4:\"path\";s:50:\"/framework/class/account/weixin.platform.class.php\";s:8:\"checksum\";s:32:\"1264e16e5b25a19491bdd32f88e1a615\";}i:387;a:2:{s:4:\"path\";s:48:\"/framework/class/account/wxapp.account.class.php\";s:8:\"checksum\";s:32:\"7a869c64c81dcc1c3775a4fcca40bf5a\";}i:388;a:2:{s:4:\"path\";s:49:\"/framework/class/account/wxapp.platform.class.php\";s:8:\"checksum\";s:32:\"16574ea20416e93bc5b0f5b66ef7c953\";}i:389;a:2:{s:4:\"path\";s:45:\"/framework/class/account/wxapp.work.class.php\";s:8:\"checksum\";s:32:\"b48a247d60e324f0a930d5f156b36244\";}i:390;a:2:{s:4:\"path\";s:48:\"/framework/class/account/xzapp.account.class.php\";s:8:\"checksum\";s:32:\"72d7a6c977b675112333f91ee4e6d0a3\";}i:391;a:2:{s:4:\"path\";s:49:\"/framework/class/account/xzapp.platform.class.php\";s:8:\"checksum\";s:32:\"3bc0cc023216b9863417fb8777a23aa3\";}i:392;a:2:{s:4:\"path\";s:34:\"/framework/class/captcha.class.php\";s:8:\"checksum\";s:32:\"e3a4505c2faaa50a1033384c900f2d6d\";}i:393;a:2:{s:4:\"path\";s:35:\"/framework/class/cloudapi.class.php\";s:8:\"checksum\";s:32:\"a4e1bb23bb58b4fc47d55bb2a190bfc5\";}i:394;a:2:{s:4:\"path\";s:33:\"/framework/class/coupon.class.php\";s:8:\"checksum\";s:32:\"946684e696bd5942f34f5414b009e9dc\";}i:395;a:2:{s:4:\"path\";s:29:\"/framework/class/db.class.php\";s:8:\"checksum\";s:32:\"8d1ce9d0a4fbfdb957f0aa4a539722f7\";}i:396;a:2:{s:4:\"path\";s:32:\"/framework/class/image.class.php\";s:8:\"checksum\";s:32:\"bed6fa15d5b0efe6f99ba258e03e21b2\";}i:397;a:2:{s:4:\"path\";s:33:\"/framework/class/loader.class.php\";s:8:\"checksum\";s:32:\"e390e258f0324bc86ebda6ab6ec4234d\";}i:398;a:2:{s:4:\"path\";s:40:\"/framework/class/oauth2/mobile.class.php\";s:8:\"checksum\";s:32:\"e0d9b35fa0f86bd697c3edde55f88e4d\";}i:399;a:2:{s:4:\"path\";s:46:\"/framework/class/oauth2/oauth2client.class.php\";s:8:\"checksum\";s:32:\"7f95a368dfbdd1478e9abb270960c66e\";}i:400;a:2:{s:4:\"path\";s:36:\"/framework/class/oauth2/qq.class.php\";s:8:\"checksum\";s:32:\"a6c6d0d94bd71ad17053236d1abfc635\";}i:401;a:2:{s:4:\"path\";s:40:\"/framework/class/oauth2/system.class.php\";s:8:\"checksum\";s:32:\"6f3ee948b20b4569ed63212e845de86f\";}i:402;a:2:{s:4:\"path\";s:40:\"/framework/class/oauth2/wechat.class.php\";s:8:\"checksum\";s:32:\"52ffc8addc24e13e9c2f069096119834\";}i:403;a:2:{s:4:\"path\";s:38:\"/framework/class/pay/ali.pay.class.php\";s:8:\"checksum\";s:32:\"b1dcd10e5956a56ac27b0056a236949a\";}i:404;a:2:{s:4:\"path\";s:34:\"/framework/class/pay/pay.class.php\";s:8:\"checksum\";s:32:\"527be0f98c66045a8c8408ad6282550d\";}i:405;a:2:{s:4:\"path\";s:41:\"/framework/class/pay/weixin.nativepay.php\";s:8:\"checksum\";s:32:\"c47405ca6d1000532fc989967873b99a\";}i:406;a:2:{s:4:\"path\";s:41:\"/framework/class/pay/weixin.pay.class.php\";s:8:\"checksum\";s:32:\"e825d509a750c7f5ddd0b705087d6ff3\";}i:407;a:2:{s:4:\"path\";s:32:\"/framework/class/query.class.php\";s:8:\"checksum\";s:32:\"78be9d053553926bb98ac611b172de54\";}i:408;a:2:{s:4:\"path\";s:35:\"/framework/class/slave.db.class.php\";s:8:\"checksum\";s:32:\"4e28fa4529097456e4b36ec25a05c129\";}i:409;a:2:{s:4:\"path\";s:32:\"/framework/class/table.class.php\";s:8:\"checksum\";s:32:\"cc60966664e7dfa71b2ed7326f462a58\";}i:410;a:2:{s:4:\"path\";s:39:\"/framework/class/uploadedfile.class.php\";s:8:\"checksum\";s:32:\"a4b68f63fb517e9671da90035c20b242\";}i:411;a:2:{s:4:\"path\";s:36:\"/framework/class/validator.class.php\";s:8:\"checksum\";s:32:\"29703363e47f5d15df70264ce66b794f\";}i:412;a:2:{s:4:\"path\";s:36:\"/framework/class/wesession.class.php\";s:8:\"checksum\";s:32:\"cef4122e8b2ae9dcbbb7ff1873068324\";}i:413;a:2:{s:4:\"path\";s:24:\"/framework/const.inc.php\";s:8:\"checksum\";s:32:\"3cb4e5b8aff3a55ccecbc954d3c92715\";}i:414;a:2:{s:4:\"path\";s:39:\"/framework/function/cache.file.func.php\";s:8:\"checksum\";s:32:\"cf3f115f0ff5bf05dfddcb048d66fa6a\";}i:415;a:2:{s:4:\"path\";s:34:\"/framework/function/cache.func.php\";s:8:\"checksum\";s:32:\"66eee4c5ea7c6e2644ce681f2976c16e\";}i:416;a:2:{s:4:\"path\";s:43:\"/framework/function/cache.memcache.func.php\";s:8:\"checksum\";s:32:\"c6bdd8328580d0ad80601d10bbd01f6b\";}i:417;a:2:{s:4:\"path\";s:40:\"/framework/function/cache.mysql.func.php\";s:8:\"checksum\";s:32:\"9d9af984aa50294d4f5d3b079024cb71\";}i:418;a:2:{s:4:\"path\";s:40:\"/framework/function/cache.redis.func.php\";s:8:\"checksum\";s:32:\"9c8b8a5d9c9962953e1d7b71e09a5acd\";}i:419;a:2:{s:4:\"path\";s:42:\"/framework/function/communication.func.php\";s:8:\"checksum\";s:32:\"3c1d0804f779558c9a8003311f7bad5b\";}i:420;a:2:{s:4:\"path\";s:39:\"/framework/function/compat.biz.func.php\";s:8:\"checksum\";s:32:\"404b630c86ef43e5223d7894dc560675\";}i:421;a:2:{s:4:\"path\";s:35:\"/framework/function/compat.func.php\";s:8:\"checksum\";s:32:\"fac40dd233a82c33e5d3c406ca9125e3\";}i:422;a:2:{s:4:\"path\";s:33:\"/framework/function/cron.func.php\";s:8:\"checksum\";s:32:\"1fa072f40a6290491dbf03cb6acb2cbb\";}i:423;a:2:{s:4:\"path\";s:31:\"/framework/function/db.func.php\";s:8:\"checksum\";s:32:\"c68daf56cf64311218f866f5a4ce27a6\";}i:424;a:2:{s:4:\"path\";s:33:\"/framework/function/file.func.php\";s:8:\"checksum\";s:32:\"e72aa89ffa6d2d9d0e6a37384fd9f87a\";}i:425;a:2:{s:4:\"path\";s:35:\"/framework/function/global.func.php\";s:8:\"checksum\";s:32:\"2d9925629d644ce63461bd4bb4f60f2b\";}i:426;a:2:{s:4:\"path\";s:36:\"/framework/function/logging.func.php\";s:8:\"checksum\";s:32:\"b0f8be56ea56556ba94b31777dd4a417\";}i:427;a:2:{s:4:\"path\";s:32:\"/framework/function/pdo.func.php\";s:8:\"checksum\";s:32:\"ce0f5fb689d5d886315a6da9ab8931cd\";}i:428;a:2:{s:4:\"path\";s:33:\"/framework/function/safe.func.php\";s:8:\"checksum\";s:32:\"97e7d4415dc67a945e8dc05642b4f572\";}i:429;a:2:{s:4:\"path\";s:35:\"/framework/function/system.func.php\";s:8:\"checksum\";s:32:\"face11aece5707b856fedb01287daa87\";}i:430;a:2:{s:4:\"path\";s:32:\"/framework/function/tpl.func.php\";s:8:\"checksum\";s:32:\"110bfaea8884947b4541c30eceb596c7\";}i:431;a:2:{s:4:\"path\";s:40:\"/framework/library/agent/agent.class.php\";s:8:\"checksum\";s:32:\"8d1300f80d64dd483c13433d4e0d41dc\";}i:432;a:2:{s:4:\"path\";s:38:\"/framework/library/alioss/CHANGELOG.md\";s:8:\"checksum\";s:32:\"9530235dfcd7998fabf0e7880b73b3f9\";}i:433;a:2:{s:4:\"path\";s:36:\"/framework/library/alioss/LICENSE.md\";s:8:\"checksum\";s:32:\"b45fe93b5618540d22252e4ff5d2d399\";}i:434;a:2:{s:4:\"path\";s:35:\"/framework/library/alioss/README.md\";s:8:\"checksum\";s:32:\"854208f7c32f8a308f7dd6376633197f\";}i:435;a:2:{s:4:\"path\";s:38:\"/framework/library/alioss/autoload.php\";s:8:\"checksum\";s:32:\"c2314609fe81e1cc09b4755fe033e8f8\";}i:436;a:2:{s:4:\"path\";s:35:\"/framework/library/alioss/index.php\";s:8:\"checksum\";s:32:\"1d2fc1266241fbe290a4e6b6807d4f03\";}i:437;a:2:{s:4:\"path\";s:52:\"/framework/library/alioss/src/OSS/Core/MimeTypes.php\";s:8:\"checksum\";s:32:\"50366ca51e95b5a69af991c65dbbb703\";}i:438;a:2:{s:4:\"path\";s:55:\"/framework/library/alioss/src/OSS/Core/OssException.php\";s:8:\"checksum\";s:32:\"e7b277634d5ce5124ef42540c3f3ab0e\";}i:439;a:2:{s:4:\"path\";s:50:\"/framework/library/alioss/src/OSS/Core/OssUtil.php\";s:8:\"checksum\";s:32:\"fc8ddbf37612d3ed77389fb50131d020\";}i:440;a:2:{s:4:\"path\";s:46:\"/framework/library/alioss/src/OSS/Http/LICENSE\";s:8:\"checksum\";s:32:\"70f142181074f83b33d258164c008cd9\";}i:441;a:2:{s:4:\"path\";s:54:\"/framework/library/alioss/src/OSS/Http/RequestCore.php\";s:8:\"checksum\";s:32:\"de74899cda232623f09795221dc17cff\";}i:442;a:2:{s:4:\"path\";s:64:\"/framework/library/alioss/src/OSS/Http/RequestCore_Exception.php\";s:8:\"checksum\";s:32:\"e1c531714cb51444cc5c949a6ae97926\";}i:443;a:2:{s:4:\"path\";s:55:\"/framework/library/alioss/src/OSS/Http/ResponseCore.php\";s:8:\"checksum\";s:32:\"dd8df3eec9882542dc6bbcb967d9abf6\";}i:444;a:2:{s:4:\"path\";s:54:\"/framework/library/alioss/src/OSS/Model/BucketInfo.php\";s:8:\"checksum\";s:32:\"83600a9a595d83154e8b2aec213cf2ce\";}i:445;a:2:{s:4:\"path\";s:58:\"/framework/library/alioss/src/OSS/Model/BucketListInfo.php\";s:8:\"checksum\";s:32:\"9b8b49ae00bafbc30c9c3ccb427fc450\";}i:446;a:2:{s:4:\"path\";s:55:\"/framework/library/alioss/src/OSS/Model/CnameConfig.php\";s:8:\"checksum\";s:32:\"a69ee641a20c08d1bc499e2cccb96935\";}i:447;a:2:{s:4:\"path\";s:54:\"/framework/library/alioss/src/OSS/Model/CorsConfig.php\";s:8:\"checksum\";s:32:\"fd39c4b55d7a101e5b7b1b1a8724089d\";}i:448;a:2:{s:4:\"path\";s:52:\"/framework/library/alioss/src/OSS/Model/CorsRule.php\";s:8:\"checksum\";s:32:\"92be565a56e1e788d9e2fe52449e5bb8\";}i:449;a:2:{s:4:\"path\";s:59:\"/framework/library/alioss/src/OSS/Model/LifecycleAction.php\";s:8:\"checksum\";s:32:\"14edf5ae98c6062a4ee594037b304adc\";}i:450;a:2:{s:4:\"path\";s:59:\"/framework/library/alioss/src/OSS/Model/LifecycleConfig.php\";s:8:\"checksum\";s:32:\"b37628f4538962484661d77507d3f8a7\";}i:451;a:2:{s:4:\"path\";s:57:\"/framework/library/alioss/src/OSS/Model/LifecycleRule.php\";s:8:\"checksum\";s:32:\"386d10cee1f9c6947a2d177780207ec1\";}i:452;a:2:{s:4:\"path\";s:67:\"/framework/library/alioss/src/OSS/Model/ListMultipartUploadInfo.php\";s:8:\"checksum\";s:32:\"f9cfada64cb79d6710d4e5638c076aa1\";}i:453;a:2:{s:4:\"path\";s:57:\"/framework/library/alioss/src/OSS/Model/ListPartsInfo.php\";s:8:\"checksum\";s:32:\"05444142b8d619ec88c9e5f4ba390abc\";}i:454;a:2:{s:4:\"path\";s:57:\"/framework/library/alioss/src/OSS/Model/LoggingConfig.php\";s:8:\"checksum\";s:32:\"f7dc87b7d58a78e30b8cfbaf5b7647a5\";}i:455;a:2:{s:4:\"path\";s:54:\"/framework/library/alioss/src/OSS/Model/ObjectInfo.php\";s:8:\"checksum\";s:32:\"dd18a1e84f364842d70790455d22e1f6\";}i:456;a:2:{s:4:\"path\";s:58:\"/framework/library/alioss/src/OSS/Model/ObjectListInfo.php\";s:8:\"checksum\";s:32:\"0fc58fa513e509d212766d97edf2c5bc\";}i:457;a:2:{s:4:\"path\";s:52:\"/framework/library/alioss/src/OSS/Model/PartInfo.php\";s:8:\"checksum\";s:32:\"315aa144ff86698455e14796b68483f5\";}i:458;a:2:{s:4:\"path\";s:54:\"/framework/library/alioss/src/OSS/Model/PrefixInfo.php\";s:8:\"checksum\";s:32:\"ca5c04feb45049a59884dad51644be05\";}i:459;a:2:{s:4:\"path\";s:57:\"/framework/library/alioss/src/OSS/Model/RefererConfig.php\";s:8:\"checksum\";s:32:\"56c81cc84d75e0ed5d25eb502c90f08c\";}i:460;a:2:{s:4:\"path\";s:54:\"/framework/library/alioss/src/OSS/Model/UploadInfo.php\";s:8:\"checksum\";s:32:\"e33c7f27f9e29fd4f8690ce61ced33a1\";}i:461;a:2:{s:4:\"path\";s:57:\"/framework/library/alioss/src/OSS/Model/WebsiteConfig.php\";s:8:\"checksum\";s:32:\"3786e4729fe1f777a95fea935bb90939\";}i:462;a:2:{s:4:\"path\";s:53:\"/framework/library/alioss/src/OSS/Model/XmlConfig.php\";s:8:\"checksum\";s:32:\"2dd1007f254523987f90d31df9b40b89\";}i:463;a:2:{s:4:\"path\";s:47:\"/framework/library/alioss/src/OSS/OssClient.php\";s:8:\"checksum\";s:32:\"edc52ae913ecaf662f9af0a91c698314\";}i:464;a:2:{s:4:\"path\";s:54:\"/framework/library/alioss/src/OSS/Result/AclResult.php\";s:8:\"checksum\";s:32:\"4cfd40a9495fc3ea7378fe9d22709493\";}i:465;a:2:{s:4:\"path\";s:57:\"/framework/library/alioss/src/OSS/Result/AppendResult.php\";s:8:\"checksum\";s:32:\"88f5029e6361d75c8c3dcf29f3b727da\";}i:466;a:2:{s:4:\"path\";s:55:\"/framework/library/alioss/src/OSS/Result/BodyResult.php\";s:8:\"checksum\";s:32:\"efd509b861260a7d5c0122afe4a8514b\";}i:467;a:2:{s:4:\"path\";s:56:\"/framework/library/alioss/src/OSS/Result/ExistResult.php\";s:8:\"checksum\";s:32:\"9a46dadc20ba309be60698570bda05ce\";}i:468;a:2:{s:4:\"path\";s:59:\"/framework/library/alioss/src/OSS/Result/GetCnameResult.php\";s:8:\"checksum\";s:32:\"783e61e8690a7c62d7723aee3d501831\";}i:469;a:2:{s:4:\"path\";s:58:\"/framework/library/alioss/src/OSS/Result/GetCorsResult.php\";s:8:\"checksum\";s:32:\"ae17d6a822a6f93b11b587742360d9e1\";}i:470;a:2:{s:4:\"path\";s:63:\"/framework/library/alioss/src/OSS/Result/GetLifecycleResult.php\";s:8:\"checksum\";s:32:\"d08ff61d458e25e14e079249a357b587\";}i:471;a:2:{s:4:\"path\";s:61:\"/framework/library/alioss/src/OSS/Result/GetLoggingResult.php\";s:8:\"checksum\";s:32:\"16bde2c407695dfa34b62a4e61455163\";}i:472;a:2:{s:4:\"path\";s:61:\"/framework/library/alioss/src/OSS/Result/GetRefererResult.php\";s:8:\"checksum\";s:32:\"1123f077ca1919e27e19d2c4674d5340\";}i:473;a:2:{s:4:\"path\";s:61:\"/framework/library/alioss/src/OSS/Result/GetWebsiteResult.php\";s:8:\"checksum\";s:32:\"032c1f38dd781d6ca1f72e30a38ccee4\";}i:474;a:2:{s:4:\"path\";s:57:\"/framework/library/alioss/src/OSS/Result/HeaderResult.php\";s:8:\"checksum\";s:32:\"239ece9a6f3944632b5f1a2bd91b037e\";}i:475;a:2:{s:4:\"path\";s:74:\"/framework/library/alioss/src/OSS/Result/InitiateMultipartUploadResult.php\";s:8:\"checksum\";s:32:\"5ed1b75e020f875332e26356e1ad364b\";}i:476;a:2:{s:4:\"path\";s:62:\"/framework/library/alioss/src/OSS/Result/ListBucketsResult.php\";s:8:\"checksum\";s:32:\"8c24e7656cd4eae938901074f61923bb\";}i:477;a:2:{s:4:\"path\";s:70:\"/framework/library/alioss/src/OSS/Result/ListMultipartUploadResult.php\";s:8:\"checksum\";s:32:\"92f01472147db9e3c65736cb4956db66\";}i:478;a:2:{s:4:\"path\";s:62:\"/framework/library/alioss/src/OSS/Result/ListObjectsResult.php\";s:8:\"checksum\";s:32:\"9f4779abe5f6a97bef6efe1661276a26\";}i:479;a:2:{s:4:\"path\";s:60:\"/framework/library/alioss/src/OSS/Result/ListPartsResult.php\";s:8:\"checksum\";s:32:\"e1c4d67855da9599485ae49f6ae77a98\";}i:480;a:2:{s:4:\"path\";s:63:\"/framework/library/alioss/src/OSS/Result/PutSetDeleteResult.php\";s:8:\"checksum\";s:32:\"459e44611ba372f9dedf9d530c6661db\";}i:481;a:2:{s:4:\"path\";s:51:\"/framework/library/alioss/src/OSS/Result/Result.php\";s:8:\"checksum\";s:32:\"93420f4e0b93476ae882e2c1278f17f3\";}i:482;a:2:{s:4:\"path\";s:61:\"/framework/library/alioss/src/OSS/Result/UploadPartResult.php\";s:8:\"checksum\";s:32:\"cb89bbf7810602208d4c3f6acd8d1ab4\";}i:483;a:2:{s:4:\"path\";s:40:\"/framework/library/barcode/README_1D.txt\";s:8:\"checksum\";s:32:\"20e2b2e28139590627a3d6996f8277ef\";}i:484;a:2:{s:4:\"path\";s:37:\"/framework/library/barcode/VERSION_1D\";s:8:\"checksum\";s:32:\"b36c924f375a45d8d31b7ae91beaae42\";}i:485;a:2:{s:4:\"path\";s:57:\"/framework/library/barcode/class/BCGArgumentException.php\";s:8:\"checksum\";s:32:\"47d6c7e8ef6f1966258f9ae0fefd9211\";}i:486;a:2:{s:4:\"path\";s:47:\"/framework/library/barcode/class/BCGBarcode.php\";s:8:\"checksum\";s:32:\"4b5c8952a6577f8fd12f697a7122ba0a\";}i:487;a:2:{s:4:\"path\";s:49:\"/framework/library/barcode/class/BCGBarcode1D.php\";s:8:\"checksum\";s:32:\"91f692f567d6201d1b3f5ce5b2f6a2e7\";}i:488;a:2:{s:4:\"path\";s:45:\"/framework/library/barcode/class/BCGColor.php\";s:8:\"checksum\";s:32:\"cd442bdd6656d25ab5761cd50c8c1425\";}i:489;a:2:{s:4:\"path\";s:53:\"/framework/library/barcode/class/BCGDrawException.php\";s:8:\"checksum\";s:32:\"f6ab1c1686031636435a5d7fee12030d\";}i:490;a:2:{s:4:\"path\";s:47:\"/framework/library/barcode/class/BCGDrawing.php\";s:8:\"checksum\";s:32:\"4e9921b570d13826bf508bf0c938deef\";}i:491;a:2:{s:4:\"path\";s:44:\"/framework/library/barcode/class/BCGFont.php\";s:8:\"checksum\";s:32:\"925438962c9a1b52293d6020d65229e9\";}i:492;a:2:{s:4:\"path\";s:48:\"/framework/library/barcode/class/BCGFontFile.php\";s:8:\"checksum\";s:32:\"65a905beab9c977124d5281bd95d9677\";}i:493;a:2:{s:4:\"path\";s:47:\"/framework/library/barcode/class/BCGFontPhp.php\";s:8:\"checksum\";s:32:\"311edbdaa78f9b0b4f32acaa0c10bac9\";}i:494;a:2:{s:4:\"path\";s:45:\"/framework/library/barcode/class/BCGLabel.php\";s:8:\"checksum\";s:32:\"c7b59c37e6db8a4d636a7b544b726759\";}i:495;a:2:{s:4:\"path\";s:54:\"/framework/library/barcode/class/BCGParseException.php\";s:8:\"checksum\";s:32:\"2f6dd5c5b052d0014f258a1813b24983\";}i:496;a:2:{s:4:\"path\";s:55:\"/framework/library/barcode/class/BCGcodabar.barcode.php\";s:8:\"checksum\";s:32:\"5d6bd1c20a6b96eb3c6d157ad60a85a1\";}i:497;a:2:{s:4:\"path\";s:54:\"/framework/library/barcode/class/BCGcode11.barcode.php\";s:8:\"checksum\";s:32:\"bc39794bc02f02425247eaade72581b0\";}i:498;a:2:{s:4:\"path\";s:55:\"/framework/library/barcode/class/BCGcode128.barcode.php\";s:8:\"checksum\";s:32:\"79a87df31dfa0f245563d268a1fb34d6\";}i:499;a:2:{s:4:\"path\";s:54:\"/framework/library/barcode/class/BCGcode39.barcode.php\";s:8:\"checksum\";s:32:\"7c3c4bf237ede850d3724bfeb215a689\";}i:500;a:2:{s:4:\"path\";s:62:\"/framework/library/barcode/class/BCGcode39extended.barcode.php\";s:8:\"checksum\";s:32:\"77b38fe7396bd1619bb08348d8510d28\";}i:501;a:2:{s:4:\"path\";s:54:\"/framework/library/barcode/class/BCGcode93.barcode.php\";s:8:\"checksum\";s:32:\"cd05ab39615286d3f463e01c53bbd5f1\";}i:502;a:2:{s:4:\"path\";s:53:\"/framework/library/barcode/class/BCGean13.barcode.php\";s:8:\"checksum\";s:32:\"522e7ed6375323ad7f0e50eeffa2fbf8\";}i:503;a:2:{s:4:\"path\";s:52:\"/framework/library/barcode/class/BCGean8.barcode.php\";s:8:\"checksum\";s:32:\"f79fa491d2a46b2cd8a2495a2f054690\";}i:504;a:2:{s:4:\"path\";s:54:\"/framework/library/barcode/class/BCGgs1128.barcode.php\";s:8:\"checksum\";s:32:\"7e70824e107bc18f9039af970365e7a5\";}i:505;a:2:{s:4:\"path\";s:51:\"/framework/library/barcode/class/BCGi25.barcode.php\";s:8:\"checksum\";s:32:\"0af21e6f9e415781604834b529ff3a3d\";}i:506;a:2:{s:4:\"path\";s:63:\"/framework/library/barcode/class/BCGintelligentmail.barcode.php\";s:8:\"checksum\";s:32:\"6c57953fdb8b1754f78cdc583b0eff10\";}i:507;a:2:{s:4:\"path\";s:52:\"/framework/library/barcode/class/BCGisbn.barcode.php\";s:8:\"checksum\";s:32:\"bb6e226092e4b79b4a69bd50f2c74482\";}i:508;a:2:{s:4:\"path\";s:51:\"/framework/library/barcode/class/BCGmsi.barcode.php\";s:8:\"checksum\";s:32:\"3e24588166de72260a49efeb317e54e6\";}i:509;a:2:{s:4:\"path\";s:57:\"/framework/library/barcode/class/BCGothercode.barcode.php\";s:8:\"checksum\";s:32:\"2ce738544c801ef0f956b2184b94f86c\";}i:510;a:2:{s:4:\"path\";s:55:\"/framework/library/barcode/class/BCGpostnet.barcode.php\";s:8:\"checksum\";s:32:\"0f7035caa6a9c9e107aceb5b45245134\";}i:511;a:2:{s:4:\"path\";s:51:\"/framework/library/barcode/class/BCGs25.barcode.php\";s:8:\"checksum\";s:32:\"58ce16f809f80085d12a635c97ef9f93\";}i:512;a:2:{s:4:\"path\";s:52:\"/framework/library/barcode/class/BCGupca.barcode.php\";s:8:\"checksum\";s:32:\"98da93545c1336b629ec4c6f86dc2a83\";}i:513;a:2:{s:4:\"path\";s:52:\"/framework/library/barcode/class/BCGupce.barcode.php\";s:8:\"checksum\";s:32:\"3ddf160430fbe7c6997519ab48e44514\";}i:514;a:2:{s:4:\"path\";s:55:\"/framework/library/barcode/class/BCGupcext2.barcode.php\";s:8:\"checksum\";s:32:\"5546e81c093362b007a551e103cc7836\";}i:515;a:2:{s:4:\"path\";s:55:\"/framework/library/barcode/class/BCGupcext5.barcode.php\";s:8:\"checksum\";s:32:\"1c0047d1316714f4cc869d6e64a59d72\";}i:516;a:2:{s:4:\"path\";s:45:\"/framework/library/barcode/class/JoinDraw.php\";s:8:\"checksum\";s:32:\"014feab5167ce3fc4f91aae0473f58be\";}i:517;a:2:{s:4:\"path\";s:51:\"/framework/library/barcode/class/drawer/BCGDraw.php\";s:8:\"checksum\";s:32:\"244eb22f92ac100e422c7045725c8d10\";}i:518;a:2:{s:4:\"path\";s:54:\"/framework/library/barcode/class/drawer/BCGDrawJPG.php\";s:8:\"checksum\";s:32:\"02544c71d56131d02452a4717445e2dd\";}i:519;a:2:{s:4:\"path\";s:54:\"/framework/library/barcode/class/drawer/BCGDrawPNG.php\";s:8:\"checksum\";s:32:\"4d43f1d6f8a455e8d4723ab6fa513db5\";}i:520;a:2:{s:4:\"path\";s:41:\"/framework/library/barcode/font/Arial.ttf\";s:8:\"checksum\";s:32:\"6e7385fb7d6ceddf07b5a41e0bc2712d\";}i:521;a:2:{s:4:\"path\";s:30:\"/framework/library/cos/LICENSE\";s:8:\"checksum\";s:32:\"71a52831f2bbba1383d42d9390458df8\";}i:522;a:2:{s:4:\"path\";s:42:\"/framework/library/cos/Qcloud_cos/Auth.php\";s:8:\"checksum\";s:32:\"cb6f43bdf6e695c69db282bb223dc799\";}i:523;a:2:{s:4:\"path\";s:42:\"/framework/library/cos/Qcloud_cos/Conf.php\";s:8:\"checksum\";s:32:\"34f27d10e990e02b0c56306a62046abf\";}i:524;a:2:{s:4:\"path\";s:44:\"/framework/library/cos/Qcloud_cos/Cosapi.php\";s:8:\"checksum\";s:32:\"1a2f5f5a83041dd433c522f31a86838e\";}i:525;a:2:{s:4:\"path\";s:42:\"/framework/library/cos/Qcloud_cos/Http.php\";s:8:\"checksum\";s:32:\"a193ba94ee85432a4d881f1426ba2d1d\";}i:526;a:2:{s:4:\"path\";s:32:\"/framework/library/cos/README.md\";s:8:\"checksum\";s:32:\"fc13137b42ffb2ee24f6b8961e397eb6\";}i:527;a:2:{s:4:\"path\";s:36:\"/framework/library/cos/composer.json\";s:8:\"checksum\";s:32:\"2fe862d9fa6779ff4b6d042a7102e7b7\";}i:528;a:2:{s:4:\"path\";s:34:\"/framework/library/cos/include.php\";s:8:\"checksum\";s:32:\"9ced4b8c5a1c26d8f092f3bd5bf8d589\";}i:529;a:2:{s:4:\"path\";s:33:\"/framework/library/cos/sample.php\";s:8:\"checksum\";s:32:\"5fbebb662edba6c386ab961015303b73\";}i:530;a:2:{s:4:\"path\";s:36:\"/framework/library/cosv4.2/README.md\";s:8:\"checksum\";s:32:\"0986ae39b25410c6a14d6fcbd4e286e0\";}i:531;a:2:{s:4:\"path\";s:38:\"/framework/library/cosv4.2/include.php\";s:8:\"checksum\";s:32:\"5ce1934a8dbd396f958c9eabe1717056\";}i:532;a:2:{s:4:\"path\";s:45:\"/framework/library/cosv4.2/qcloudcos/auth.php\";s:8:\"checksum\";s:32:\"95587a37aa6e0015fc963d3c02a05743\";}i:533;a:2:{s:4:\"path\";s:49:\"/framework/library/cosv4.2/qcloudcos/conf.bak.php\";s:8:\"checksum\";s:32:\"ed2c7925894554e379d85145f32826b0\";}i:534;a:2:{s:4:\"path\";s:47:\"/framework/library/cosv4.2/qcloudcos/cosapi.php\";s:8:\"checksum\";s:32:\"ec3192ce5c9a29452fdba13ff9813a80\";}i:535;a:2:{s:4:\"path\";s:51:\"/framework/library/cosv4.2/qcloudcos/error_code.php\";s:8:\"checksum\";s:32:\"1a14b9e7a36ec568002b2d33e813b3d8\";}i:536;a:2:{s:4:\"path\";s:52:\"/framework/library/cosv4.2/qcloudcos/http_client.php\";s:8:\"checksum\";s:32:\"ff7bddd7fd3f87a8f5392e4128b07f12\";}i:537;a:2:{s:4:\"path\";s:55:\"/framework/library/cosv4.2/qcloudcos/libcurl_helper.php\";s:8:\"checksum\";s:32:\"5f3697cda15f574d8f0e2bd7325fb690\";}i:538;a:2:{s:4:\"path\";s:56:\"/framework/library/cosv4.2/qcloudcos/libcurl_wrapper.php\";s:8:\"checksum\";s:32:\"747e848df72957b92c9a4068a7bb72ef\";}i:539;a:2:{s:4:\"path\";s:56:\"/framework/library/cosv4.2/qcloudcos/slice_uploading.php\";s:8:\"checksum\";s:32:\"e67d7bd07694982f2af43082a2f2177d\";}i:540;a:2:{s:4:\"path\";s:37:\"/framework/library/cosv4.2/sample.php\";s:8:\"checksum\";s:32:\"8bcd827a4164c1dd28ea8f963f8a73e1\";}i:541;a:2:{s:4:\"path\";s:34:\"/framework/library/cosv5/index.php\";s:8:\"checksum\";s:32:\"252cee6988e0a081c1a58008a2e9ea27\";}i:542;a:2:{s:4:\"path\";s:50:\"/framework/library/cosv5/src/Qcloud/Cos/Client.php\";s:8:\"checksum\";s:32:\"4bb059915a5524a63d70479d4d5fab7d\";}i:543;a:2:{s:4:\"path\";s:71:\"/framework/library/cosv5/src/Qcloud/Cos/CommandToRequestTransformer.php\";s:8:\"checksum\";s:32:\"f14ade05001e18783e40b376b5a50ad4\";}i:544;a:2:{s:4:\"path\";s:50:\"/framework/library/cosv5/src/Qcloud/Cos/Common.php\";s:8:\"checksum\";s:32:\"9fa9aff597ace487f92a46eed4407d37\";}i:545;a:2:{s:4:\"path\";s:48:\"/framework/library/cosv5/src/Qcloud/Cos/Copy.php\";s:8:\"checksum\";s:32:\"22d1b6c47a7e6b2118b88bb8ff448a3b\";}i:546;a:2:{s:4:\"path\";s:58:\"/framework/library/cosv5/src/Qcloud/Cos/CosTransformer.php\";s:8:\"checksum\";s:32:\"58615ec5ec4a29664586646b4f8ce14e\";}i:547;a:2:{s:4:\"path\";s:66:\"/framework/library/cosv5/src/Qcloud/Cos/Exception/CosException.php\";s:8:\"checksum\";s:32:\"974606e0218230c48536889bd6875ce1\";}i:548;a:2:{s:4:\"path\";s:78:\"/framework/library/cosv5/src/Qcloud/Cos/Exception/ServiceResponseException.php\";s:8:\"checksum\";s:32:\"3dab9a831c03e75d8828442b3575d769\";}i:549;a:2:{s:4:\"path\";s:63:\"/framework/library/cosv5/src/Qcloud/Cos/ExceptionMiddleware.php\";s:8:\"checksum\";s:32:\"3c89f7ad4c321fa8aff3a31a0015d44d\";}i:550;a:2:{s:4:\"path\";s:59:\"/framework/library/cosv5/src/Qcloud/Cos/ExceptionParser.php\";s:8:\"checksum\";s:32:\"6ffa0f29075c286e004fae528fc28fc5\";}i:551;a:2:{s:4:\"path\";s:59:\"/framework/library/cosv5/src/Qcloud/Cos/MultipartUpload.php\";s:8:\"checksum\";s:32:\"8a4260271f3b51297e28f77a1778f613\";}i:552;a:2:{s:4:\"path\";s:64:\"/framework/library/cosv5/src/Qcloud/Cos/Request/BodyLocation.php\";s:8:\"checksum\";s:32:\"7a40a16320cb5a3c35b4f79012ad43ec\";}i:553;a:2:{s:4:\"path\";s:61:\"/framework/library/cosv5/src/Qcloud/Cos/ResultTransformer.php\";s:8:\"checksum\";s:32:\"95be0e35bc39fa103e2479fadbed5693\";}i:554;a:2:{s:4:\"path\";s:54:\"/framework/library/cosv5/src/Qcloud/Cos/Serializer.php\";s:8:\"checksum\";s:32:\"87665154c18342fca7b25d9f07d744dc\";}i:555;a:2:{s:4:\"path\";s:51:\"/framework/library/cosv5/src/Qcloud/Cos/Service.php\";s:8:\"checksum\";s:32:\"87c5fe0dc1aadbeb4f93179016abbc5f\";}i:556;a:2:{s:4:\"path\";s:53:\"/framework/library/cosv5/src/Qcloud/Cos/Signature.php\";s:8:\"checksum\";s:32:\"22c15f2f83bc1deaa6b0a0b19e11beac\";}i:557;a:2:{s:4:\"path\";s:63:\"/framework/library/cosv5/src/Qcloud/Cos/SignatureMiddleware.php\";s:8:\"checksum\";s:32:\"104df38afeaee53f260f5cafad0b40c2\";}i:558;a:2:{s:4:\"path\";s:54:\"/framework/library/cosv5/src/Qcloud/Cos/Tests/Test.php\";s:8:\"checksum\";s:32:\"6371ff4cc46277729a9f8092331f5e36\";}i:559;a:2:{s:4:\"path\";s:60:\"/framework/library/cosv5/src/Qcloud/Cos/Tests/TestHelper.php\";s:8:\"checksum\";s:32:\"893fa5e8dc1eaf0f5a57f492e11aa16f\";}i:560;a:2:{s:4:\"path\";s:44:\"/framework/library/cosv5/vendor/autoload.php\";s:8:\"checksum\";s:32:\"dffe0405a79ce6721b040e257011942b\";}i:561;a:2:{s:4:\"path\";s:56:\"/framework/library/cosv5/vendor/composer/ClassLoader.php\";s:8:\"checksum\";s:32:\"07d04cb24c7e1031081a1259b10da19d\";}i:562;a:2:{s:4:\"path\";s:62:\"/framework/library/cosv5/vendor/composer/autoload_classmap.php\";s:8:\"checksum\";s:32:\"2251150c642619bae5ae83cabcc28323\";}i:563;a:2:{s:4:\"path\";s:59:\"/framework/library/cosv5/vendor/composer/autoload_files.php\";s:8:\"checksum\";s:32:\"b4a6f0a28be2d97dac1b97d5eedc2b64\";}i:564;a:2:{s:4:\"path\";s:64:\"/framework/library/cosv5/vendor/composer/autoload_namespaces.php\";s:8:\"checksum\";s:32:\"6f00571a6be1070fe78b1fb9446ae624\";}i:565;a:2:{s:4:\"path\";s:58:\"/framework/library/cosv5/vendor/composer/autoload_psr4.php\";s:8:\"checksum\";s:32:\"9e917660c1859dc4fddf6931bec34164\";}i:566;a:2:{s:4:\"path\";s:58:\"/framework/library/cosv5/vendor/composer/autoload_real.php\";s:8:\"checksum\";s:32:\"0aa1e820a260f85cd2796c4eb7378c48\";}i:567;a:2:{s:4:\"path\";s:60:\"/framework/library/cosv5/vendor/composer/autoload_static.php\";s:8:\"checksum\";s:32:\"40709437dbaeb865731ab8bf04f9ed37\";}i:568;a:2:{s:4:\"path\";s:55:\"/framework/library/cosv5/vendor/composer/installed.json\";s:8:\"checksum\";s:32:\"9e03b058e7dd99f7ca446121a31e2c40\";}i:569;a:2:{s:4:\"path\";s:60:\"/framework/library/cosv5/vendor/guzzlehttp/command/README.md\";s:8:\"checksum\";s:32:\"2e0a9b8f45e4260d9bd075e230979f52\";}i:570;a:2:{s:4:\"path\";s:64:\"/framework/library/cosv5/vendor/guzzlehttp/command/composer.json\";s:8:\"checksum\";s:32:\"dfef562922fd678aee28c0400fe953e1\";}i:571;a:2:{s:4:\"path\";s:66:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/Command.php\";s:8:\"checksum\";s:32:\"8917bc41ee2cb8849f7dc55ab0ee455a\";}i:572;a:2:{s:4:\"path\";s:75:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/CommandInterface.php\";s:8:\"checksum\";s:32:\"b697f5514070820342f593cc24769bca\";}i:573;a:2:{s:4:\"path\";s:91:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/Exception/CommandClientException.php\";s:8:\"checksum\";s:32:\"5f26ca6d02996b577e0a92dad88baff4\";}i:574;a:2:{s:4:\"path\";s:85:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/Exception/CommandException.php\";s:8:\"checksum\";s:32:\"f626edbc79e70838133f4ba54d1333e1\";}i:575;a:2:{s:4:\"path\";s:91:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/Exception/CommandServerException.php\";s:8:\"checksum\";s:32:\"0196c8c3c8d824efc74a66785c7aba80\";}i:576;a:2:{s:4:\"path\";s:71:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/HasDataTrait.php\";s:8:\"checksum\";s:32:\"b1934e8bc7fb84b7ec724c3e1783695c\";}i:577;a:2:{s:4:\"path\";s:65:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/Result.php\";s:8:\"checksum\";s:32:\"7f2bcb9950fdafe2dad02f1ec06f893b\";}i:578;a:2:{s:4:\"path\";s:74:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/ResultInterface.php\";s:8:\"checksum\";s:32:\"ff015d98730f576d60e211c9e185e22a\";}i:579;a:2:{s:4:\"path\";s:72:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/ServiceClient.php\";s:8:\"checksum\";s:32:\"ed85d8560e9fc5c68a5972494778ab66\";}i:580;a:2:{s:4:\"path\";s:81:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/ServiceClientInterface.php\";s:8:\"checksum\";s:32:\"40aaf000377fb0239f1df8dd5e746227\";}i:581;a:2:{s:4:\"path\";s:75:\"/framework/library/cosv5/vendor/guzzlehttp/command/src/ToArrayInterface.php\";s:8:\"checksum\";s:32:\"b5ce53c6839bc86296b4e78fa27b51fb\";}i:582;a:2:{s:4:\"path\";s:62:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/CHANGELOG.md\";s:8:\"checksum\";s:32:\"8fed6fc1357102d65e1b9470c6da4737\";}i:583;a:2:{s:4:\"path\";s:60:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/Dockerfile\";s:8:\"checksum\";s:32:\"953a222016d92cfa4d5f04362482462c\";}i:584;a:2:{s:4:\"path\";s:59:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/README.md\";s:8:\"checksum\";s:32:\"a3d5accd0a29a723cfff2362f8463c8c\";}i:585;a:2:{s:4:\"path\";s:62:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/UPGRADING.md\";s:8:\"checksum\";s:32:\"886cbdabef1fa423d9c2ad3568b57b96\";}i:586;a:2:{s:4:\"path\";s:63:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/composer.json\";s:8:\"checksum\";s:32:\"3d66b0506386deb01654c3b1fcf59fe3\";}i:587;a:2:{s:4:\"path\";s:64:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Client.php\";s:8:\"checksum\";s:32:\"82e1496ff5105a6cb9d02adc53ff5716\";}i:588;a:2:{s:4:\"path\";s:73:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/ClientInterface.php\";s:8:\"checksum\";s:32:\"c538628b9031c22f2c103bcdb7d1cb5a\";}i:589;a:2:{s:4:\"path\";s:74:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Cookie/CookieJar.php\";s:8:\"checksum\";s:32:\"6bd76777ce0404d66c5986c313fa3da0\";}i:590;a:2:{s:4:\"path\";s:83:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Cookie/CookieJarInterface.php\";s:8:\"checksum\";s:32:\"614de137911f7047527d389746de7806\";}i:591;a:2:{s:4:\"path\";s:78:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Cookie/FileCookieJar.php\";s:8:\"checksum\";s:32:\"ab78fd90acb1ffe6ede3e940f104fece\";}i:592;a:2:{s:4:\"path\";s:81:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Cookie/SessionCookieJar.php\";s:8:\"checksum\";s:32:\"98b49e8bf342bf09d5d5b4cdc7070ecb\";}i:593;a:2:{s:4:\"path\";s:74:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Cookie/SetCookie.php\";s:8:\"checksum\";s:32:\"24f661c63dec976ce7be211dd67934d6\";}i:594;a:2:{s:4:\"path\";s:88:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/BadResponseException.php\";s:8:\"checksum\";s:32:\"575dba131bafb3c045fc7e88147d336b\";}i:595;a:2:{s:4:\"path\";s:83:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/ClientException.php\";s:8:\"checksum\";s:32:\"0a6ac3bc30da18345c60f64f50ac7c50\";}i:596;a:2:{s:4:\"path\";s:84:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/ConnectException.php\";s:8:\"checksum\";s:32:\"54815ba34ef119d791bb65ae5eeffefa\";}i:597;a:2:{s:4:\"path\";s:83:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/GuzzleException.php\";s:8:\"checksum\";s:32:\"d75f2049a3af7e14543175920b88f94d\";}i:598;a:2:{s:4:\"path\";s:92:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/InvalidArgumentException.php\";s:8:\"checksum\";s:32:\"3aa551bbaf64bae48f83b6feae687d9c\";}i:599;a:2:{s:4:\"path\";s:84:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/RequestException.php\";s:8:\"checksum\";s:32:\"1505b036ee007f4fb5aa94312b77edf9\";}i:600;a:2:{s:4:\"path\";s:81:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/SeekException.php\";s:8:\"checksum\";s:32:\"529e6a51da288f0906d489e001a53bd8\";}i:601;a:2:{s:4:\"path\";s:83:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/ServerException.php\";s:8:\"checksum\";s:32:\"0595da67b020824025566ff57ecea5d5\";}i:602;a:2:{s:4:\"path\";s:93:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/TooManyRedirectsException.php\";s:8:\"checksum\";s:32:\"9795298c3952abea044167dcd0d334b6\";}i:603;a:2:{s:4:\"path\";s:85:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Exception/TransferException.php\";s:8:\"checksum\";s:32:\"a90ea5b4e2e35b820b458e9f208db267\";}i:604;a:2:{s:4:\"path\";s:77:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php\";s:8:\"checksum\";s:32:\"db1c6fee5a9c3fb3c5cbaf27e224154e\";}i:605;a:2:{s:4:\"path\";s:86:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Handler/CurlFactoryInterface.php\";s:8:\"checksum\";s:32:\"e88c8aa60d9b9db82b3cf0067a65997a\";}i:606;a:2:{s:4:\"path\";s:77:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Handler/CurlHandler.php\";s:8:\"checksum\";s:32:\"bcc5c24b612c1b57184cf799b0282c8a\";}i:607;a:2:{s:4:\"path\";s:82:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Handler/CurlMultiHandler.php\";s:8:\"checksum\";s:32:\"c2531eabfb44d4d846f8140f0777272f\";}i:608;a:2:{s:4:\"path\";s:76:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Handler/EasyHandle.php\";s:8:\"checksum\";s:32:\"4368a4d5883d0453538ce2608514b4c0\";}i:609;a:2:{s:4:\"path\";s:77:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Handler/MockHandler.php\";s:8:\"checksum\";s:32:\"4356622985040d5c859f30acdf216dee\";}i:610;a:2:{s:4:\"path\";s:71:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Handler/Proxy.php\";s:8:\"checksum\";s:32:\"33a106d100ca4b864e25a14753f1f707\";}i:611;a:2:{s:4:\"path\";s:79:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Handler/StreamHandler.php\";s:8:\"checksum\";s:32:\"f106a6e6872f6c760a94b3eae3889b72\";}i:612;a:2:{s:4:\"path\";s:70:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/HandlerStack.php\";s:8:\"checksum\";s:32:\"b43ef4c0e2d5f636d2ca8be337c40460\";}i:613;a:2:{s:4:\"path\";s:74:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/MessageFormatter.php\";s:8:\"checksum\";s:32:\"073696ebac01aa0fbd4c3284ebbf5025\";}i:614;a:2:{s:4:\"path\";s:68:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Middleware.php\";s:8:\"checksum\";s:32:\"40606f24a4182998ec4e0b76924b8fc3\";}i:615;a:2:{s:4:\"path\";s:62:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/Pool.php\";s:8:\"checksum\";s:32:\"f9d1c0c3e1084070d60fa9f445d75245\";}i:616;a:2:{s:4:\"path\";s:79:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/PrepareBodyMiddleware.php\";s:8:\"checksum\";s:32:\"3453ac6efdf9cbb46b6bdd2a2aef9c57\";}i:617;a:2:{s:4:\"path\";s:76:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/RedirectMiddleware.php\";s:8:\"checksum\";s:32:\"db2be25d6131e8a8f173884b571e1c85\";}i:618;a:2:{s:4:\"path\";s:72:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/RequestOptions.php\";s:8:\"checksum\";s:32:\"f966eda03eb3c27b6e76ee6bf2ba8104\";}i:619;a:2:{s:4:\"path\";s:73:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/RetryMiddleware.php\";s:8:\"checksum\";s:32:\"d0c53abdd49ec8766d720e33a93e6f7f\";}i:620;a:2:{s:4:\"path\";s:71:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/TransferStats.php\";s:8:\"checksum\";s:32:\"e65b6f24015cb0710478020f9c49ef00\";}i:621;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/UriTemplate.php\";s:8:\"checksum\";s:32:\"5880896a511299a8ce952d6c7c6ea937\";}i:622;a:2:{s:4:\"path\";s:67:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/functions.php\";s:8:\"checksum\";s:32:\"1de0b820f6d6c48bb3dbae6820e5fcfd\";}i:623;a:2:{s:4:\"path\";s:75:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle/src/functions_include.php\";s:8:\"checksum\";s:32:\"15ce8cd42f7781c9e0aa5ffa47049d3c\";}i:624;a:2:{s:4:\"path\";s:71:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/CHANGELOG.md\";s:8:\"checksum\";s:32:\"81ad7f89a6afafe599f986f3e5cbabbb\";}i:625;a:2:{s:4:\"path\";s:67:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/Makefile\";s:8:\"checksum\";s:32:\"0d3cd5751f89cd207e4bdb4b95c66f23\";}i:626;a:2:{s:4:\"path\";s:68:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/README.md\";s:8:\"checksum\";s:32:\"d7c4ed0f5f730964b8b823438f0b1259\";}i:627;a:2:{s:4:\"path\";s:72:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/composer.json\";s:8:\"checksum\";s:32:\"c53fff56487e2aa749f8cf793225535b\";}i:628;a:2:{s:4:\"path\";s:75:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/phpunit.xml.dist\";s:8:\"checksum\";s:32:\"d520c42a162b851fdfc47620f520ec32\";}i:629;a:2:{s:4:\"path\";s:78:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/Description.php\";s:8:\"checksum\";s:32:\"166673b7127f539760a4360d9d54ff31\";}i:630;a:2:{s:4:\"path\";s:87:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/DescriptionInterface.php\";s:8:\"checksum\";s:32:\"a1de9ccf6f3dd417bfc8ab736d13f720\";}i:631;a:2:{s:4:\"path\";s:79:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/Deserializer.php\";s:8:\"checksum\";s:32:\"cdb8e3428c3208f7a9db675f0919d7d4\";}i:632;a:2:{s:4:\"path\";s:79:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/GuzzleClient.php\";s:8:\"checksum\";s:32:\"3e51c1aa6a4f33427052c5da0610b645\";}i:633;a:2:{s:4:\"path\";s:102:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/Handler/ValidatedDescriptionHandler.php\";s:8:\"checksum\";s:32:\"f7f25163d7c0dd32efa3d5b00974f94f\";}i:634;a:2:{s:4:\"path\";s:76:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/Operation.php\";s:8:\"checksum\";s:32:\"fa41645c5a54023b8b98f5b06821a06e\";}i:635;a:2:{s:4:\"path\";s:76:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/Parameter.php\";s:8:\"checksum\";s:32:\"d7d7a283e483ac4c07ba204f87f4d23f\";}i:636;a:2:{s:4:\"path\";s:107:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/QuerySerializer/QuerySerializerInterface.php\";s:8:\"checksum\";s:32:\"44d626eb129d26e073686a2086192304\";}i:637;a:2:{s:4:\"path\";s:100:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/QuerySerializer/Rfc3986Serializer.php\";s:8:\"checksum\";s:32:\"247713e3e6606a2dc5c5b71b25d73fe8\";}i:638;a:2:{s:4:\"path\";s:99:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/AbstractLocation.php\";s:8:\"checksum\";s:32:\"3335fcbf94a15f22c2b933bb8babef95\";}i:639;a:2:{s:4:\"path\";s:95:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/BodyLocation.php\";s:8:\"checksum\";s:32:\"6bf00dd9648709cb7098d6ce31ae9e0b\";}i:640;a:2:{s:4:\"path\";s:100:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/FormParamLocation.php\";s:8:\"checksum\";s:32:\"7d9dc4989dd038ab28c71ea5974f1e4e\";}i:641;a:2:{s:4:\"path\";s:97:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/HeaderLocation.php\";s:8:\"checksum\";s:32:\"e6892f568153850422a39c90025bfcbb\";}i:642;a:2:{s:4:\"path\";s:95:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/JsonLocation.php\";s:8:\"checksum\";s:32:\"95f58301fd489b3147e208b7e2bebd80\";}i:643;a:2:{s:4:\"path\";s:100:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/MultiPartLocation.php\";s:8:\"checksum\";s:32:\"a7078714b0f8db918a1c1a70aeae3a72\";}i:644;a:2:{s:4:\"path\";s:96:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/QueryLocation.php\";s:8:\"checksum\";s:32:\"4110fd49d11279c173454b5f43d3441d\";}i:645;a:2:{s:4:\"path\";s:107:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/RequestLocationInterface.php\";s:8:\"checksum\";s:32:\"a13cdb0db74bc5a4b9c08aa6b71bc1a9\";}i:646;a:2:{s:4:\"path\";s:94:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/RequestLocation/XmlLocation.php\";s:8:\"checksum\";s:32:\"0bd061e770a97a833ff2abade04990ea\";}i:647;a:2:{s:4:\"path\";s:100:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/ResponseLocation/AbstractLocation.php\";s:8:\"checksum\";s:32:\"c7331283af788dc7662972925200a111\";}i:648;a:2:{s:4:\"path\";s:96:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/ResponseLocation/BodyLocation.php\";s:8:\"checksum\";s:32:\"9828534c96838b06db2ab964c4d2c09b\";}i:649;a:2:{s:4:\"path\";s:98:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/ResponseLocation/HeaderLocation.php\";s:8:\"checksum\";s:32:\"3f53a102e5320a2a59a061832ce1efe7\";}i:650;a:2:{s:4:\"path\";s:96:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/ResponseLocation/JsonLocation.php\";s:8:\"checksum\";s:32:\"0cd5f43a780354176a1632f8e07f0b46\";}i:651;a:2:{s:4:\"path\";s:104:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/ResponseLocation/ReasonPhraseLocation.php\";s:8:\"checksum\";s:32:\"2449693b1b86e2c4ef7ca0efef0ee183\";}i:652;a:2:{s:4:\"path\";s:109:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/ResponseLocation/ResponseLocationInterface.php\";s:8:\"checksum\";s:32:\"665d6688bd0f25632099556442b10aea\";}i:653;a:2:{s:4:\"path\";s:102:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/ResponseLocation/StatusCodeLocation.php\";s:8:\"checksum\";s:32:\"c0304dcc474259eed56db072b74c25d2\";}i:654;a:2:{s:4:\"path\";s:95:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/ResponseLocation/XmlLocation.php\";s:8:\"checksum\";s:32:\"ff059e96d8615a10540e6adfb7f55d36\";}i:655;a:2:{s:4:\"path\";s:82:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/SchemaFormatter.php\";s:8:\"checksum\";s:32:\"231de954acb62efdc6302dd68aa1d117\";}i:656;a:2:{s:4:\"path\";s:82:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/SchemaValidator.php\";s:8:\"checksum\";s:32:\"d37434bf70850884f06d594fc7470933\";}i:657;a:2:{s:4:\"path\";s:77:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/src/Serializer.php\";s:8:\"checksum\";s:32:\"7fd46ad6d53a8cf1e3373ec6e5a15aa3\";}i:658;a:2:{s:4:\"path\";s:107:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/Asset/Exception/CustomCommandException.php\";s:8:\"checksum\";s:32:\"08daf7f3c80076ce0c85c02baa95f349\";}i:659;a:2:{s:4:\"path\";s:112:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/Asset/Exception/OtherCustomCommandException.php\";s:8:\"checksum\";s:32:\"c8aee522422d3d30caccbaeccd8f70a9\";}i:660;a:2:{s:4:\"path\";s:80:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/Asset/test.html\";s:8:\"checksum\";s:32:\"e3048c5f84f2109862d2500eafa7978a\";}i:661;a:2:{s:4:\"path\";s:84:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/DescriptionTest.php\";s:8:\"checksum\";s:32:\"b32189dbed7d1f0f061ba9f534872a17\";}i:662;a:2:{s:4:\"path\";s:85:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/DeserializerTest.php\";s:8:\"checksum\";s:32:\"a5c0a043409d1010338185cb1d8f33cb\";}i:663;a:2:{s:4:\"path\";s:85:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/GuzzleClientTest.php\";s:8:\"checksum\";s:32:\"173972c9eb857a7f989ad42334847e93\";}i:664;a:2:{s:4:\"path\";s:108:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/Handler/ValidatedDescriptionHandlerTest.php\";s:8:\"checksum\";s:32:\"ef7dce739a6e1af9407167c28212a2dd\";}i:665;a:2:{s:4:\"path\";s:82:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/OperationTest.php\";s:8:\"checksum\";s:32:\"bbdf032514489f586a2ff9832383d57d\";}i:666;a:2:{s:4:\"path\";s:82:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/ParameterTest.php\";s:8:\"checksum\";s:32:\"a768583a73af6d2736b6e6b3b58f2a9d\";}i:667;a:2:{s:4:\"path\";s:106:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/QuerySerializer/Rfc3986SerializerTest.php\";s:8:\"checksum\";s:32:\"e8101aef558cfd14f5dfc6d87cb0b3b3\";}i:668;a:2:{s:4:\"path\";s:101:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/RequestLocation/BodyLocationTest.php\";s:8:\"checksum\";s:32:\"da44907f6153e2e88b098ddb002a8a65\";}i:669;a:2:{s:4:\"path\";s:106:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/RequestLocation/FormParamLocationTest.php\";s:8:\"checksum\";s:32:\"b43067432823aec2f9e862815d0c30d9\";}i:670;a:2:{s:4:\"path\";s:103:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/RequestLocation/HeaderLocationTest.php\";s:8:\"checksum\";s:32:\"53b46ccdd68ff6fd5eeea9336c78d976\";}i:671;a:2:{s:4:\"path\";s:101:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/RequestLocation/JsonLocationTest.php\";s:8:\"checksum\";s:32:\"76103deb18b715e9aae0445656356d0e\";}i:672;a:2:{s:4:\"path\";s:106:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/RequestLocation/MultiPartLocationTest.php\";s:8:\"checksum\";s:32:\"af794e415834284eae2898d6b1994085\";}i:673;a:2:{s:4:\"path\";s:102:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/RequestLocation/QueryLocationTest.php\";s:8:\"checksum\";s:32:\"abc5ce782daf296fcf8783e2e2bad029\";}i:674;a:2:{s:4:\"path\";s:100:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/RequestLocation/XmlLocationTest.php\";s:8:\"checksum\";s:32:\"79781aeed4881f7be3a152b206116202\";}i:675;a:2:{s:4:\"path\";s:102:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/ResponseLocation/BodyLocationTest.php\";s:8:\"checksum\";s:32:\"090df1e7511fb83533cadb5f28612879\";}i:676;a:2:{s:4:\"path\";s:104:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/ResponseLocation/HeaderLocationTest.php\";s:8:\"checksum\";s:32:\"f08d4aa10c5c36ceba69930ce0d1b3e3\";}i:677;a:2:{s:4:\"path\";s:102:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/ResponseLocation/JsonLocationTest.php\";s:8:\"checksum\";s:32:\"c4284468ae896ca64db49a48474b5682\";}i:678;a:2:{s:4:\"path\";s:110:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/ResponseLocation/ReasonPhraseLocationTest.php\";s:8:\"checksum\";s:32:\"edc90218c72072ae3e5bf59c9b7e8a2f\";}i:679;a:2:{s:4:\"path\";s:108:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/ResponseLocation/StatusCodeLocationTest.php\";s:8:\"checksum\";s:32:\"e87dcc6c38437450c759de39bcaeaea5\";}i:680;a:2:{s:4:\"path\";s:101:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/ResponseLocation/XmlLocationTest.php\";s:8:\"checksum\";s:32:\"0c3733e4c3e4504655ce8dcc03296aa7\";}i:681;a:2:{s:4:\"path\";s:88:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/SchemaFormatterTest.php\";s:8:\"checksum\";s:32:\"b3d544c0640ba187aaf2d8c03755d427\";}i:682;a:2:{s:4:\"path\";s:88:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/SchemaValidatorTest.php\";s:8:\"checksum\";s:32:\"5020145f0a9578338b0ba8983b8a527d\";}i:683;a:2:{s:4:\"path\";s:83:\"/framework/library/cosv5/vendor/guzzlehttp/guzzle-services/tests/SerializerTest.php\";s:8:\"checksum\";s:32:\"3f50c67394aeb194cf43d6b959b91c0c\";}i:684;a:2:{s:4:\"path\";s:64:\"/framework/library/cosv5/vendor/guzzlehttp/promises/CHANGELOG.md\";s:8:\"checksum\";s:32:\"3d936a7543b81b5dadd5762ba449f767\";}i:685;a:2:{s:4:\"path\";s:60:\"/framework/library/cosv5/vendor/guzzlehttp/promises/Makefile\";s:8:\"checksum\";s:32:\"71352d6599bbbfe581c9a4de29229076\";}i:686;a:2:{s:4:\"path\";s:61:\"/framework/library/cosv5/vendor/guzzlehttp/promises/README.md\";s:8:\"checksum\";s:32:\"0a2d6e0ec79e17d22966ab9c54fc9e64\";}i:687;a:2:{s:4:\"path\";s:65:\"/framework/library/cosv5/vendor/guzzlehttp/promises/composer.json\";s:8:\"checksum\";s:32:\"7893c601944ba1874e5149706d3e33b1\";}i:688;a:2:{s:4:\"path\";s:78:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/AggregateException.php\";s:8:\"checksum\";s:32:\"e4757cde59835961a20271fb55af706c\";}i:689;a:2:{s:4:\"path\";s:81:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/CancellationException.php\";s:8:\"checksum\";s:32:\"ce883914886cae99eb27d3188e8bd2b7\";}i:690;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/Coroutine.php\";s:8:\"checksum\";s:32:\"bc81665e3afd06a30f7acb12bdf4838c\";}i:691;a:2:{s:4:\"path\";s:71:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/EachPromise.php\";s:8:\"checksum\";s:32:\"67bd80d7a4e60ea2f2f149380f938588\";}i:692;a:2:{s:4:\"path\";s:76:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/FulfilledPromise.php\";s:8:\"checksum\";s:32:\"d5b0156d932a2631ea93b9a2d32384ea\";}i:693;a:2:{s:4:\"path\";s:67:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/Promise.php\";s:8:\"checksum\";s:32:\"eb4fff9f2406e8c110624079c3443e38\";}i:694;a:2:{s:4:\"path\";s:76:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/PromiseInterface.php\";s:8:\"checksum\";s:32:\"d0bdb9d2c5e7e0432310f3b593fdf2e2\";}i:695;a:2:{s:4:\"path\";s:77:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/PromisorInterface.php\";s:8:\"checksum\";s:32:\"f78484dca12d9977b0a6387ec42b5d47\";}i:696;a:2:{s:4:\"path\";s:75:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/RejectedPromise.php\";s:8:\"checksum\";s:32:\"ca0ce9427cc91f6387bdae198ffa79f2\";}i:697;a:2:{s:4:\"path\";s:78:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/RejectionException.php\";s:8:\"checksum\";s:32:\"01989a33a42755b37d6a257da5a6f6a7\";}i:698;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/TaskQueue.php\";s:8:\"checksum\";s:32:\"90bada83ac2022181b2d139feba724e8\";}i:699;a:2:{s:4:\"path\";s:78:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/TaskQueueInterface.php\";s:8:\"checksum\";s:32:\"4e13f4440808be66af7f1ed3abfb2737\";}i:700;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/functions.php\";s:8:\"checksum\";s:32:\"5f78ed60ae47d8f12c9cdc20affb17fa\";}i:701;a:2:{s:4:\"path\";s:77:\"/framework/library/cosv5/vendor/guzzlehttp/promises/src/functions_include.php\";s:8:\"checksum\";s:32:\"9b1da1ab19c36d490a428c778ffaf97f\";}i:702;a:2:{s:4:\"path\";s:60:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/CHANGELOG.md\";s:8:\"checksum\";s:32:\"b460adaf2e797b4879ed205f90587356\";}i:703;a:2:{s:4:\"path\";s:57:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/README.md\";s:8:\"checksum\";s:32:\"6e754dc967b66c8641f1f22da70fc06f\";}i:704;a:2:{s:4:\"path\";s:61:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/composer.json\";s:8:\"checksum\";s:32:\"d5567a5f5fa801e28f5346ebb16f02cb\";}i:705;a:2:{s:4:\"path\";s:68:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/AppendStream.php\";s:8:\"checksum\";s:32:\"fe4492d304f82ae021eff7580566ae27\";}i:706;a:2:{s:4:\"path\";s:68:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/BufferStream.php\";s:8:\"checksum\";s:32:\"7edbcac21d28387fa834a8e822e451fd\";}i:707;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/CachingStream.php\";s:8:\"checksum\";s:32:\"459dd9d634b292a2fadc914c2468b1e7\";}i:708;a:2:{s:4:\"path\";s:70:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/DroppingStream.php\";s:8:\"checksum\";s:32:\"9c0966ea87a6f2a31bb22b349ccb2627\";}i:709;a:2:{s:4:\"path\";s:64:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/FnStream.php\";s:8:\"checksum\";s:32:\"8ad9ae4878b5dfca21f8db6a2a45a535\";}i:710;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/InflateStream.php\";s:8:\"checksum\";s:32:\"30089939fe70bdf3b7677dce75ec091b\";}i:711;a:2:{s:4:\"path\";s:70:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/LazyOpenStream.php\";s:8:\"checksum\";s:32:\"ac1a123c34c2e8f48a1cdf76fb92a897\";}i:712;a:2:{s:4:\"path\";s:67:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/LimitStream.php\";s:8:\"checksum\";s:32:\"b4b1ffbfa2ac76b6657d223a3695c305\";}i:713;a:2:{s:4:\"path\";s:68:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/MessageTrait.php\";s:8:\"checksum\";s:32:\"9ae4c8393507fd4567741f8a4a756f76\";}i:714;a:2:{s:4:\"path\";s:71:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/MultipartStream.php\";s:8:\"checksum\";s:32:\"9acda08d27ebbf510bbf610341343e4c\";}i:715;a:2:{s:4:\"path\";s:68:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/NoSeekStream.php\";s:8:\"checksum\";s:32:\"ade2cf646a3ad241689c650942bef782\";}i:716;a:2:{s:4:\"path\";s:66:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/PumpStream.php\";s:8:\"checksum\";s:32:\"144b464ccf50bf3a3798aeeae2ed6787\";}i:717;a:2:{s:4:\"path\";s:63:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/Request.php\";s:8:\"checksum\";s:32:\"4b5c792d0156f060b684889b2eb2d3b5\";}i:718;a:2:{s:4:\"path\";s:64:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/Response.php\";s:8:\"checksum\";s:32:\"ed5373d83aba5df396b90a73c5383eb7\";}i:719;a:2:{s:4:\"path\";s:63:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/Rfc7230.php\";s:8:\"checksum\";s:32:\"4dd03cddde00b5db99a094efa446e790\";}i:720;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/ServerRequest.php\";s:8:\"checksum\";s:32:\"a0f7f5116228f80968a1758186ff03ed\";}i:721;a:2:{s:4:\"path\";s:62:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/Stream.php\";s:8:\"checksum\";s:32:\"c0231c6f3c855a50cf2a8d4799320d42\";}i:722;a:2:{s:4:\"path\";s:76:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/StreamDecoratorTrait.php\";s:8:\"checksum\";s:32:\"557968faed8ca2684cfb8fbeef325f83\";}i:723;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/StreamWrapper.php\";s:8:\"checksum\";s:32:\"19631c057f6cec74253ea4289b253d8e\";}i:724;a:2:{s:4:\"path\";s:68:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/UploadedFile.php\";s:8:\"checksum\";s:32:\"a7d9851bbe7e4962d522a69453243a25\";}i:725;a:2:{s:4:\"path\";s:59:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/Uri.php\";s:8:\"checksum\";s:32:\"ad4e48d54f054f3bc5fba0d711cc9a1a\";}i:726;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/UriNormalizer.php\";s:8:\"checksum\";s:32:\"f3b5a2404ae415fe8621f2efc7e4c96e\";}i:727;a:2:{s:4:\"path\";s:67:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/UriResolver.php\";s:8:\"checksum\";s:32:\"4e7ac8b87d29bf32cdaee1ab3d5b93bc\";}i:728;a:2:{s:4:\"path\";s:65:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/functions.php\";s:8:\"checksum\";s:32:\"72a1d64e8f4ddc2f1d8f530bc0015169\";}i:729;a:2:{s:4:\"path\";s:73:\"/framework/library/cosv5/vendor/guzzlehttp/psr7/src/functions_include.php\";s:8:\"checksum\";s:32:\"27d028cd23030b836fa0f0167518b114\";}i:730;a:2:{s:4:\"path\";s:61:\"/framework/library/cosv5/vendor/psr/http-message/CHANGELOG.md\";s:8:\"checksum\";s:32:\"b9960896c46673e4aaac6289724f0aee\";}i:731;a:2:{s:4:\"path\";s:58:\"/framework/library/cosv5/vendor/psr/http-message/README.md\";s:8:\"checksum\";s:32:\"836f418ae1af1672ff92df48a2bbbf69\";}i:732;a:2:{s:4:\"path\";s:62:\"/framework/library/cosv5/vendor/psr/http-message/composer.json\";s:8:\"checksum\";s:32:\"dada234f476772490eaca17f915bab70\";}i:733;a:2:{s:4:\"path\";s:73:\"/framework/library/cosv5/vendor/psr/http-message/src/MessageInterface.php\";s:8:\"checksum\";s:32:\"b00e25366717ba0a1aca78410b278ce1\";}i:734;a:2:{s:4:\"path\";s:73:\"/framework/library/cosv5/vendor/psr/http-message/src/RequestInterface.php\";s:8:\"checksum\";s:32:\"b4d1c376e0043074a96ed901c3a2978c\";}i:735;a:2:{s:4:\"path\";s:74:\"/framework/library/cosv5/vendor/psr/http-message/src/ResponseInterface.php\";s:8:\"checksum\";s:32:\"19deb87362aae606027fad7a50d856d9\";}i:736;a:2:{s:4:\"path\";s:79:\"/framework/library/cosv5/vendor/psr/http-message/src/ServerRequestInterface.php\";s:8:\"checksum\";s:32:\"e3264ea8da8f6031d6740dba63fe88d6\";}i:737;a:2:{s:4:\"path\";s:72:\"/framework/library/cosv5/vendor/psr/http-message/src/StreamInterface.php\";s:8:\"checksum\";s:32:\"54591eaca96dcaa906fbd7a7a31396fc\";}i:738;a:2:{s:4:\"path\";s:78:\"/framework/library/cosv5/vendor/psr/http-message/src/UploadedFileInterface.php\";s:8:\"checksum\";s:32:\"f38d82c3ea96fe1b782781d432a87531\";}i:739;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/psr/http-message/src/UriInterface.php\";s:8:\"checksum\";s:32:\"9b0106c0b9f494cd5865106f32b10fa2\";}i:740;a:2:{s:4:\"path\";s:65:\"/framework/library/cosv5/vendor/ralouphie/getallheaders/README.md\";s:8:\"checksum\";s:32:\"1e63ba0b1f006d781530080e5bcfad63\";}i:741;a:2:{s:4:\"path\";s:69:\"/framework/library/cosv5/vendor/ralouphie/getallheaders/composer.json\";s:8:\"checksum\";s:32:\"e5fd0724185d7f9b633c7831a6830b99\";}i:742;a:2:{s:4:\"path\";s:77:\"/framework/library/cosv5/vendor/ralouphie/getallheaders/src/getallheaders.php\";s:8:\"checksum\";s:32:\"e4aff3379b0af94800c55ea5c373f35a\";}i:743;a:2:{s:4:\"path\";s:34:\"/framework/library/emoji/emoji.php\";s:8:\"checksum\";s:32:\"51faf986ef2a71fbb0929d64b33e046a\";}i:744;a:2:{s:4:\"path\";s:30:\"/framework/library/ftp/ftp.php\";s:8:\"checksum\";s:32:\"5fc40ebf5d9ad235eb965e30b553d9e2\";}i:745;a:2:{s:4:\"path\";s:32:\"/framework/library/json/JSON.php\";s:8:\"checksum\";s:32:\"af289d83d53247f52b37b14d73193754\";}i:746;a:2:{s:4:\"path\";s:36:\"/framework/library/pdo/PDO.class.php\";s:8:\"checksum\";s:32:\"9cc9de71e197215c5d4624805a6a7772\";}i:747;a:2:{s:4:\"path\";s:51:\"/framework/library/pdo/PDOStatement_mysql.class.php\";s:8:\"checksum\";s:32:\"b6197d63be259e66f97a5faac898cee5\";}i:748;a:2:{s:4:\"path\";s:42:\"/framework/library/pdo/PDO_mysql.class.php\";s:8:\"checksum\";s:32:\"e71426d56f43697c295edaf827db8dc0\";}i:749;a:2:{s:4:\"path\";s:51:\"/framework/library/phpexcel/PHPExcel/Autoloader.php\";s:8:\"checksum\";s:32:\"7d3bfe2c8303c01b55bc4a79d061ac19\";}i:750;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/APC.php\";s:8:\"checksum\";s:32:\"0570480b39ac344e25e8ce55540e4d3d\";}i:751;a:2:{s:4:\"path\";s:70:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/CacheBase.php\";s:8:\"checksum\";s:32:\"fb2b5149438eb3c245c9ac3d6ed65795\";}i:752;a:2:{s:4:\"path\";s:69:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/DiscISAM.php\";s:8:\"checksum\";s:32:\"1244a34df99def3b0e7db614696f2944\";}i:753;a:2:{s:4:\"path\";s:67:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/ICache.php\";s:8:\"checksum\";s:32:\"d61c54ac3873186e9f267b46a6fcfd83\";}i:754;a:2:{s:4:\"path\";s:69:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/Igbinary.php\";s:8:\"checksum\";s:32:\"ae80111c85d0029b184e53417473ab5d\";}i:755;a:2:{s:4:\"path\";s:69:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/Memcache.php\";s:8:\"checksum\";s:32:\"056f04b8a26c12cc8caf34aac8d74db9\";}i:756;a:2:{s:4:\"path\";s:67:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/Memory.php\";s:8:\"checksum\";s:32:\"b36a7cfaae8e485a1e4005432e4a5f5b\";}i:757;a:2:{s:4:\"path\";s:71:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/MemoryGZip.php\";s:8:\"checksum\";s:32:\"bc0a2cbcd35defe29aaccf96dafd55db\";}i:758;a:2:{s:4:\"path\";s:77:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/MemorySerialized.php\";s:8:\"checksum\";s:32:\"81731067ec4b5a1cc18e3d7202fb53ed\";}i:759;a:2:{s:4:\"path\";s:68:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/PHPTemp.php\";s:8:\"checksum\";s:32:\"1d64953a6ca995750e289ae8ff304d99\";}i:760;a:2:{s:4:\"path\";s:67:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/SQLite.php\";s:8:\"checksum\";s:32:\"f374e84b9f377b409c004ea8170c65c6\";}i:761;a:2:{s:4:\"path\";s:68:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/SQLite3.php\";s:8:\"checksum\";s:32:\"29b084101a1492819978714ada32ca51\";}i:762;a:2:{s:4:\"path\";s:69:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorage/Wincache.php\";s:8:\"checksum\";s:32:\"b77724cf69d6e569efd1961d82bf827b\";}i:763;a:2:{s:4:\"path\";s:67:\"/framework/library/phpexcel/PHPExcel/CachedObjectStorageFactory.php\";s:8:\"checksum\";s:32:\"c5d3318cdbc536675ce5c331030e678a\";}i:764;a:2:{s:4:\"path\";s:72:\"/framework/library/phpexcel/PHPExcel/CalcEngine/CyclicReferenceStack.php\";s:8:\"checksum\";s:32:\"4bf321990f1aa1a7eec554a81e108213\";}i:765;a:2:{s:4:\"path\";s:58:\"/framework/library/phpexcel/PHPExcel/CalcEngine/Logger.php\";s:8:\"checksum\";s:32:\"5f208951cb623ca548d0a9a078a5ba56\";}i:766;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Calculation/Database.php\";s:8:\"checksum\";s:32:\"ae95101220844037de6e354f5ab16280\";}i:767;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Calculation/DateTime.php\";s:8:\"checksum\";s:32:\"0d39ec39dd5c4aca32983afc98c588d0\";}i:768;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Calculation/Engineering.php\";s:8:\"checksum\";s:32:\"65f1a39ff29f9d82cb5042ce0a400e57\";}i:769;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Calculation/Exception.php\";s:8:\"checksum\";s:32:\"93f683f7fc6e1014c357f2fb3bea88ba\";}i:770;a:2:{s:4:\"path\";s:69:\"/framework/library/phpexcel/PHPExcel/Calculation/ExceptionHandler.php\";s:8:\"checksum\";s:32:\"c17bcbc34b536512afe973a6ed471756\";}i:771;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Calculation/Financial.php\";s:8:\"checksum\";s:32:\"95b98df1ee85641735c781c0f194d30a\";}i:772;a:2:{s:4:\"path\";s:66:\"/framework/library/phpexcel/PHPExcel/Calculation/FormulaParser.php\";s:8:\"checksum\";s:32:\"05735644750fbdcbd4c0c432d39c5985\";}i:773;a:2:{s:4:\"path\";s:65:\"/framework/library/phpexcel/PHPExcel/Calculation/FormulaToken.php\";s:8:\"checksum\";s:32:\"21208486da6dab08dcb1208898b8c122\";}i:774;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Calculation/Function.php\";s:8:\"checksum\";s:32:\"8a0f60ddda8ab1a2253f2ec0ca4eab0f\";}i:775;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Calculation/Functions.php\";s:8:\"checksum\";s:32:\"fbdc90c6f1d020c688586b935da602fa\";}i:776;a:2:{s:4:\"path\";s:60:\"/framework/library/phpexcel/PHPExcel/Calculation/Logical.php\";s:8:\"checksum\";s:32:\"e9b960c3c1b14f6af0ec5cc3db8d2071\";}i:777;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Calculation/LookupRef.php\";s:8:\"checksum\";s:32:\"14ca59af93c95335b9160957f6e1e70a\";}i:778;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Calculation/MathTrig.php\";s:8:\"checksum\";s:32:\"9c355c21189423124bee12f852b51a60\";}i:779;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Calculation/Statistical.php\";s:8:\"checksum\";s:32:\"62977f4a8d436b19d227e7c64d882b5a\";}i:780;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Calculation/TextData.php\";s:8:\"checksum\";s:32:\"e61e0cac9ac45d1e48ffd29650a3619d\";}i:781;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Calculation/Token/Stack.php\";s:8:\"checksum\";s:32:\"40ecf9d0b0a77fc275378f90e06351c0\";}i:782;a:2:{s:4:\"path\";s:65:\"/framework/library/phpexcel/PHPExcel/Calculation/functionlist.txt\";s:8:\"checksum\";s:32:\"a44608185f9bc21f28dd0173739f023b\";}i:783;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Calculation.php\";s:8:\"checksum\";s:32:\"f42191a6099d02f779df9765600716a3\";}i:784;a:2:{s:4:\"path\";s:65:\"/framework/library/phpexcel/PHPExcel/Cell/AdvancedValueBinder.php\";s:8:\"checksum\";s:32:\"8b9b9fc1329b12eac4abb46ea252ae77\";}i:785;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Cell/DataType.php\";s:8:\"checksum\";s:32:\"1fb66322253793842c948eb8ebfa6f9a\";}i:786;a:2:{s:4:\"path\";s:60:\"/framework/library/phpexcel/PHPExcel/Cell/DataValidation.php\";s:8:\"checksum\";s:32:\"97421829839451c991b519fd754bcebe\";}i:787;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Cell/DefaultValueBinder.php\";s:8:\"checksum\";s:32:\"4ce67cfe96856261c422bcb17aad5e77\";}i:788;a:2:{s:4:\"path\";s:55:\"/framework/library/phpexcel/PHPExcel/Cell/Hyperlink.php\";s:8:\"checksum\";s:32:\"e0c89eef8776ed7c170622144754f375\";}i:789;a:2:{s:4:\"path\";s:58:\"/framework/library/phpexcel/PHPExcel/Cell/IValueBinder.php\";s:8:\"checksum\";s:32:\"c644ceafb41ff2ad3da4287e58ba145d\";}i:790;a:2:{s:4:\"path\";s:45:\"/framework/library/phpexcel/PHPExcel/Cell.php\";s:8:\"checksum\";s:32:\"e8f19c01982a814e788753341bcc9d9c\";}i:791;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Chart/DataSeries.php\";s:8:\"checksum\";s:32:\"a0da08e54c69f3780ef5e755da49c639\";}i:792;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Chart/DataSeriesValues.php\";s:8:\"checksum\";s:32:\"9071a1fd50f84307ccaf3caf166746d8\";}i:793;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Chart/Exception.php\";s:8:\"checksum\";s:32:\"37d709616846bd8819a8b1ce9ba14896\";}i:794;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/Chart/Layout.php\";s:8:\"checksum\";s:32:\"67e2818c8e1ba0588a9f80433eb3b777\";}i:795;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/Chart/Legend.php\";s:8:\"checksum\";s:32:\"7a889a07f74d30c2c9605ad34e09a82c\";}i:796;a:2:{s:4:\"path\";s:55:\"/framework/library/phpexcel/PHPExcel/Chart/PlotArea.php\";s:8:\"checksum\";s:32:\"afed87e7b784a18766aaef1ccc630c0d\";}i:797;a:2:{s:4:\"path\";s:78:\"/framework/library/phpexcel/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt\";s:8:\"checksum\";s:32:\"017b142931152739a1267fa2e9e7c2d8\";}i:798;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Chart/Renderer/jpgraph.php\";s:8:\"checksum\";s:32:\"5e3a4c0dc4a473016df2a7cd3529827a\";}i:799;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Chart/Title.php\";s:8:\"checksum\";s:32:\"ab99416ff44a9caf2ca48e77b7e42473\";}i:800;a:2:{s:4:\"path\";s:46:\"/framework/library/phpexcel/PHPExcel/Chart.php\";s:8:\"checksum\";s:32:\"718aba67048e3f1af7854c617a8df637\";}i:801;a:2:{s:4:\"path\";s:48:\"/framework/library/phpexcel/PHPExcel/Comment.php\";s:8:\"checksum\";s:32:\"c521a24faff8d42042ad861285d2ecf1\";}i:802;a:2:{s:4:\"path\";s:59:\"/framework/library/phpexcel/PHPExcel/DocumentProperties.php\";s:8:\"checksum\";s:32:\"b29e7bd045859844c893b332020f2fe6\";}i:803;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/DocumentSecurity.php\";s:8:\"checksum\";s:32:\"03560d897e904405aa989a6a9e9d816e\";}i:804;a:2:{s:4:\"path\";s:50:\"/framework/library/phpexcel/PHPExcel/Exception.php\";s:8:\"checksum\";s:32:\"21a68d07b448b6c66c09207377a3bf13\";}i:805;a:2:{s:4:\"path\";s:50:\"/framework/library/phpexcel/PHPExcel/HashTable.php\";s:8:\"checksum\";s:32:\"6596dcafa45c31cc490ff173cefc923c\";}i:806;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/IComparable.php\";s:8:\"checksum\";s:32:\"b8ef19ffcb356f986e976be47685921a\";}i:807;a:2:{s:4:\"path\";s:50:\"/framework/library/phpexcel/PHPExcel/IOFactory.php\";s:8:\"checksum\";s:32:\"aabbdafc05056e21011850d8ad2c1bd4\";}i:808;a:2:{s:4:\"path\";s:51:\"/framework/library/phpexcel/PHPExcel/NamedRange.php\";s:8:\"checksum\";s:32:\"526da8225946044ab18671f4cd3384de\";}i:809;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Reader/Abstract.php\";s:8:\"checksum\";s:32:\"654f31df4875960e7add69ae199f2d25\";}i:810;a:2:{s:4:\"path\";s:51:\"/framework/library/phpexcel/PHPExcel/Reader/CSV.php\";s:8:\"checksum\";s:32:\"cc43a9debd9995bec074af10ed5ac0fb\";}i:811;a:2:{s:4:\"path\";s:65:\"/framework/library/phpexcel/PHPExcel/Reader/DefaultReadFilter.php\";s:8:\"checksum\";s:32:\"f21c8a039aa33a8f96cf614e589e5a28\";}i:812;a:2:{s:4:\"path\";s:60:\"/framework/library/phpexcel/PHPExcel/Reader/Excel2003XML.php\";s:8:\"checksum\";s:32:\"7bbbdcd00b214059ddca39df44ff4967\";}i:813;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Reader/Excel2007/Chart.php\";s:8:\"checksum\";s:32:\"3795234168b477767767d8dd4f5cb013\";}i:814;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Reader/Excel2007/Theme.php\";s:8:\"checksum\";s:32:\"0cef62e1409f0c3d71c0601fbaeb9596\";}i:815;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Reader/Excel2007.php\";s:8:\"checksum\";s:32:\"26ce18aef6054dd18d5425a65bbcbea7\";}i:816;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Reader/Excel5/Escher.php\";s:8:\"checksum\";s:32:\"bb207eddcd54380ed1228c0ceef80b46\";}i:817;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Reader/Excel5.php\";s:8:\"checksum\";s:32:\"4f41bb19ccc22d0a82049178a8650c20\";}i:818;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Reader/Exception.php\";s:8:\"checksum\";s:32:\"5ed33c3d73493a726b41ca66581390b9\";}i:819;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Reader/Gnumeric.php\";s:8:\"checksum\";s:32:\"ddbafb28693070ac0505bcf97993c54b\";}i:820;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Reader/HTML.php\";s:8:\"checksum\";s:32:\"5e0ffb5a14037d42e7912a65738baf56\";}i:821;a:2:{s:4:\"path\";s:59:\"/framework/library/phpexcel/PHPExcel/Reader/IReadFilter.php\";s:8:\"checksum\";s:32:\"2127a5312ee5416bf61ad10920aca208\";}i:822;a:2:{s:4:\"path\";s:55:\"/framework/library/phpexcel/PHPExcel/Reader/IReader.php\";s:8:\"checksum\";s:32:\"ee59cf15411413613b438013d1fa21c4\";}i:823;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Reader/OOCalc.php\";s:8:\"checksum\";s:32:\"bafc66d5bb3d5bd8b0908ef8d50aa346\";}i:824;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Reader/SYLK.php\";s:8:\"checksum\";s:32:\"d9b7226a485c86282edb10aac65d3143\";}i:825;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/ReferenceHelper.php\";s:8:\"checksum\";s:32:\"04209611259e35724d6c22640eaadadb\";}i:826;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/RichText/ITextElement.php\";s:8:\"checksum\";s:32:\"864fe087e35f7f9be6d14712995bb1c1\";}i:827;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/RichText/Run.php\";s:8:\"checksum\";s:32:\"39d705ab8fc626d2f772c49e251d28a5\";}i:828;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/RichText/TextElement.php\";s:8:\"checksum\";s:32:\"e6577a776a302787a0bc131d8c32d4e5\";}i:829;a:2:{s:4:\"path\";s:49:\"/framework/library/phpexcel/PHPExcel/RichText.php\";s:8:\"checksum\";s:32:\"9232f2f57515b182d6d430709c0ebeb8\";}i:830;a:2:{s:4:\"path\";s:49:\"/framework/library/phpexcel/PHPExcel/Settings.php\";s:8:\"checksum\";s:32:\"8b0a6612a64b81f0a741e1d671e8e60e\";}i:831;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Shared/CodePage.php\";s:8:\"checksum\";s:32:\"21b958f648692c8eba282867b52df740\";}i:832;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Shared/Date.php\";s:8:\"checksum\";s:32:\"0ffefabfa11a4b350c14a3f4c682be8a\";}i:833;a:2:{s:4:\"path\";s:55:\"/framework/library/phpexcel/PHPExcel/Shared/Drawing.php\";s:8:\"checksum\";s:32:\"1e24553249a976c408befe19a77217c0\";}i:834;a:2:{s:4:\"path\";s:92:\"/framework/library/phpexcel/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php\";s:8:\"checksum\";s:32:\"4106667d0fcc5fcd4c378e39b040f329\";}i:835;a:2:{s:4:\"path\";s:80:\"/framework/library/phpexcel/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php\";s:8:\"checksum\";s:32:\"30c5695b29b2d02cfeb8b16432ad1317\";}i:836;a:2:{s:4:\"path\";s:66:\"/framework/library/phpexcel/PHPExcel/Shared/Escher/DgContainer.php\";s:8:\"checksum\";s:32:\"2cfc181eddc736f6f7ab5ec8debb89ba\";}i:837;a:2:{s:4:\"path\";s:92:\"/framework/library/phpexcel/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php\";s:8:\"checksum\";s:32:\"2b599656ac941d3a4a79e42bc1d86a4c\";}i:838;a:2:{s:4:\"path\";s:87:\"/framework/library/phpexcel/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php\";s:8:\"checksum\";s:32:\"157852c6b8127fe5df6b6ef7d09dc4cc\";}i:839;a:2:{s:4:\"path\";s:83:\"/framework/library/phpexcel/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php\";s:8:\"checksum\";s:32:\"ddce6bdb17016a0f005e2a8a95c6e62a\";}i:840;a:2:{s:4:\"path\";s:67:\"/framework/library/phpexcel/PHPExcel/Shared/Escher/DggContainer.php\";s:8:\"checksum\";s:32:\"84daf9582560879fc2a6f9685438c403\";}i:841;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Shared/Escher.php\";s:8:\"checksum\";s:32:\"6294304e958fda4f751e21b1e2c8b545\";}i:842;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Shared/Excel5.php\";s:8:\"checksum\";s:32:\"8dbee689fad75fd4b93c7f327f404f30\";}i:843;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Shared/File.php\";s:8:\"checksum\";s:32:\"5d7a245a4b1a2cdf43eb8d8900195adf\";}i:844;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Shared/Font.php\";s:8:\"checksum\";s:32:\"4d50954011625785479b745477bc15e2\";}i:845;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/CHANGELOG.TXT\";s:8:\"checksum\";s:32:\"bb25fb4dcf5c745c711643f1578944df\";}i:846;a:2:{s:4:\"path\";s:74:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/CholeskyDecomposition.php\";s:8:\"checksum\";s:32:\"4cd066bfbbf816d406d4343970f029b4\";}i:847;a:2:{s:4:\"path\";s:76:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php\";s:8:\"checksum\";s:32:\"932bdce69cd84691658ee4ebde954d1b\";}i:848;a:2:{s:4:\"path\";s:68:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/LUDecomposition.php\";s:8:\"checksum\";s:32:\"0b7c9cb30c4f266489e94e39de7bc8eb\";}i:849;a:2:{s:4:\"path\";s:59:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/Matrix.php\";s:8:\"checksum\";s:32:\"7df53375d2ba071872f4f0d78eb08b50\";}i:850;a:2:{s:4:\"path\";s:68:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/QRDecomposition.php\";s:8:\"checksum\";s:32:\"b66080d9f6ee6863cdb2a90e90d0dff4\";}i:851;a:2:{s:4:\"path\";s:79:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/SingularValueDecomposition.php\";s:8:\"checksum\";s:32:\"b0e3e59ac4a59d120775fd038d8bc693\";}i:852;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/utils/Error.php\";s:8:\"checksum\";s:32:\"eb649938f2a91662ca060d49414ce4cb\";}i:853;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Shared/JAMA/utils/Maths.php\";s:8:\"checksum\";s:32:\"0497fc1a8fa4467c01aaaffc4eb7ae61\";}i:854;a:2:{s:4:\"path\";s:70:\"/framework/library/phpexcel/PHPExcel/Shared/OLE/ChainedBlockStream.php\";s:8:\"checksum\";s:32:\"3bdfe43c34fd9ff872b2306c49b1b6a6\";}i:855;a:2:{s:4:\"path\";s:60:\"/framework/library/phpexcel/PHPExcel/Shared/OLE/PPS/File.php\";s:8:\"checksum\";s:32:\"7f90ecb330695a1f3d6e3b7212bfd804\";}i:856;a:2:{s:4:\"path\";s:60:\"/framework/library/phpexcel/PHPExcel/Shared/OLE/PPS/Root.php\";s:8:\"checksum\";s:32:\"c852953f1a43c07d64966072fcd914bd\";}i:857;a:2:{s:4:\"path\";s:55:\"/framework/library/phpexcel/PHPExcel/Shared/OLE/PPS.php\";s:8:\"checksum\";s:32:\"7ecb0c1313a804acf7cca3bfc2af5371\";}i:858;a:2:{s:4:\"path\";s:51:\"/framework/library/phpexcel/PHPExcel/Shared/OLE.php\";s:8:\"checksum\";s:32:\"e9042b477814247c6860233246c57163\";}i:859;a:2:{s:4:\"path\";s:55:\"/framework/library/phpexcel/PHPExcel/Shared/OLERead.php\";s:8:\"checksum\";s:32:\"35dc3a5c3932ad1e3a5fe5176498e9bc\";}i:860;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Shared/PCLZip/gnu-lgpl.txt\";s:8:\"checksum\";s:32:\"7fbc338309ac38fefcd64b04bb903e34\";}i:861;a:2:{s:4:\"path\";s:65:\"/framework/library/phpexcel/PHPExcel/Shared/PCLZip/pclzip.lib.php\";s:8:\"checksum\";s:32:\"3ee0a4d8a06cedc0a56f29e8f351ef72\";}i:862;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Shared/PCLZip/readme.txt\";s:8:\"checksum\";s:32:\"3fe6bc98241bb5021b0f0379a78e92f7\";}i:863;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Shared/PasswordHasher.php\";s:8:\"checksum\";s:32:\"c5de36900cb64e844aa3eaa147973f98\";}i:864;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Shared/String.php\";s:8:\"checksum\";s:32:\"bc9112b2659b4816917227b7e89962cb\";}i:865;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Shared/TimeZone.php\";s:8:\"checksum\";s:32:\"fe78ea26290f9c1abb17c82272856e2e\";}i:866;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Shared/XMLWriter.php\";s:8:\"checksum\";s:32:\"8b55975d7e967a1316eba4fe2f0c909c\";}i:867;a:2:{s:4:\"path\";s:58:\"/framework/library/phpexcel/PHPExcel/Shared/ZipArchive.php\";s:8:\"checksum\";s:32:\"2a815b640eafebf1254ce3fdfb22d9d8\";}i:868;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Shared/ZipStreamWrapper.php\";s:8:\"checksum\";s:32:\"808ab74d3d6c8ead892376ba0a237227\";}i:869;a:2:{s:4:\"path\";s:66:\"/framework/library/phpexcel/PHPExcel/Shared/trend/bestFitClass.php\";s:8:\"checksum\";s:32:\"29f61607635f41921e8f81b02e9b863c\";}i:870;a:2:{s:4:\"path\";s:77:\"/framework/library/phpexcel/PHPExcel/Shared/trend/exponentialBestFitClass.php\";s:8:\"checksum\";s:32:\"a60885dedd4651333eb82b1ca5eb7c05\";}i:871;a:2:{s:4:\"path\";s:72:\"/framework/library/phpexcel/PHPExcel/Shared/trend/linearBestFitClass.php\";s:8:\"checksum\";s:32:\"b0b835ba422f0c3b0f721ebc7a2b8cd5\";}i:872;a:2:{s:4:\"path\";s:77:\"/framework/library/phpexcel/PHPExcel/Shared/trend/logarithmicBestFitClass.php\";s:8:\"checksum\";s:32:\"22a355995d304bbda3545416d7dd42d4\";}i:873;a:2:{s:4:\"path\";s:76:\"/framework/library/phpexcel/PHPExcel/Shared/trend/polynomialBestFitClass.php\";s:8:\"checksum\";s:32:\"12f4a663082502bab4d7c7cb0b5cd943\";}i:874;a:2:{s:4:\"path\";s:71:\"/framework/library/phpexcel/PHPExcel/Shared/trend/powerBestFitClass.php\";s:8:\"checksum\";s:32:\"96e752b3368823d35d894f4e1b503669\";}i:875;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Shared/trend/trendClass.php\";s:8:\"checksum\";s:32:\"78d650b8e2bd39c2d901e779f5f44c60\";}i:876;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Style/Alignment.php\";s:8:\"checksum\";s:32:\"d56b4b321b6e24807240f957e961693e\";}i:877;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/Style/Border.php\";s:8:\"checksum\";s:32:\"afc86856159464979f7de6052582b561\";}i:878;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Style/Borders.php\";s:8:\"checksum\";s:32:\"f78d8f4eedd8dc5db915ad36a696551b\";}i:879;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Style/Color.php\";s:8:\"checksum\";s:32:\"d800b0b1c80431e9df230a6cee63499c\";}i:880;a:2:{s:4:\"path\";s:58:\"/framework/library/phpexcel/PHPExcel/Style/Conditional.php\";s:8:\"checksum\";s:32:\"a4e9e05b141dc9f040789c59da1435f2\";}i:881;a:2:{s:4:\"path\";s:51:\"/framework/library/phpexcel/PHPExcel/Style/Fill.php\";s:8:\"checksum\";s:32:\"b40f3ef9a43e42ae57784d1780f30a0f\";}i:882;a:2:{s:4:\"path\";s:51:\"/framework/library/phpexcel/PHPExcel/Style/Font.php\";s:8:\"checksum\";s:32:\"158b7c270efcf2481b52776dbe400592\";}i:883;a:2:{s:4:\"path\";s:59:\"/framework/library/phpexcel/PHPExcel/Style/NumberFormat.php\";s:8:\"checksum\";s:32:\"6f48fb51b1eb84a35f668b9a8968b815\";}i:884;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Style/Protection.php\";s:8:\"checksum\";s:32:\"0b2db14fa98db2d4a3437bde4c0d8225\";}i:885;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Style/Supervisor.php\";s:8:\"checksum\";s:32:\"a265480749e31b85bc6c7db4215182be\";}i:886;a:2:{s:4:\"path\";s:46:\"/framework/library/phpexcel/PHPExcel/Style.php\";s:8:\"checksum\";s:32:\"da0ec0c82aa769415b2ef1c7f625cddf\";}i:887;a:2:{s:4:\"path\";s:73:\"/framework/library/phpexcel/PHPExcel/Worksheet/AutoFilter/Column/Rule.php\";s:8:\"checksum\";s:32:\"688509bd4634989db9f8da3da0c09d2e\";}i:888;a:2:{s:4:\"path\";s:68:\"/framework/library/phpexcel/PHPExcel/Worksheet/AutoFilter/Column.php\";s:8:\"checksum\";s:32:\"bede1a16eef1fd11a346ef0eb4883d9b\";}i:889;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Worksheet/AutoFilter.php\";s:8:\"checksum\";s:32:\"08ac56ad3193e5f34abb473d802657eb\";}i:890;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Worksheet/BaseDrawing.php\";s:8:\"checksum\";s:32:\"865191de7d216ad94feb3aaf011c40e5\";}i:891;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Worksheet/CellIterator.php\";s:8:\"checksum\";s:32:\"5800ac250cbd4c29cd6809720d29d757\";}i:892;a:2:{s:4:\"path\";s:66:\"/framework/library/phpexcel/PHPExcel/Worksheet/ColumnDimension.php\";s:8:\"checksum\";s:32:\"d32b92851de88eabc0da3b807c9e9ee6\";}i:893;a:2:{s:4:\"path\";s:65:\"/framework/library/phpexcel/PHPExcel/Worksheet/Drawing/Shadow.php\";s:8:\"checksum\";s:32:\"3adcdd7f6ac220d2bec80719de7ac0e9\";}i:894;a:2:{s:4:\"path\";s:58:\"/framework/library/phpexcel/PHPExcel/Worksheet/Drawing.php\";s:8:\"checksum\";s:32:\"550d64a6cc34e97cdea85022e114aaaf\";}i:895;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Worksheet/HeaderFooter.php\";s:8:\"checksum\";s:32:\"38dbf43c5c9eed71d21e23a2a3d7b415\";}i:896;a:2:{s:4:\"path\";s:70:\"/framework/library/phpexcel/PHPExcel/Worksheet/HeaderFooterDrawing.php\";s:8:\"checksum\";s:32:\"179a582b406361f4cafa1adb29ec5587\";}i:897;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Worksheet/MemoryDrawing.php\";s:8:\"checksum\";s:32:\"4050bc710498ad642ad80bb4a1adc094\";}i:898;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Worksheet/PageMargins.php\";s:8:\"checksum\";s:32:\"4f3bc03d3e737931ba02c38d015cdc88\";}i:899;a:2:{s:4:\"path\";s:60:\"/framework/library/phpexcel/PHPExcel/Worksheet/PageSetup.php\";s:8:\"checksum\";s:32:\"ee75b3d231b5cc301bf885af3011d825\";}i:900;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Worksheet/Protection.php\";s:8:\"checksum\";s:32:\"7cf252d7f5cfb92416e459072e30b868\";}i:901;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Worksheet/Row.php\";s:8:\"checksum\";s:32:\"e408b5a80926e0465b2ae2201fb4c145\";}i:902;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Worksheet/RowDimension.php\";s:8:\"checksum\";s:32:\"a769fd6c6192691bdbd0e283ce8ad4d4\";}i:903;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Worksheet/RowIterator.php\";s:8:\"checksum\";s:32:\"235586e34dee53eff00dafffc5564d66\";}i:904;a:2:{s:4:\"path\";s:60:\"/framework/library/phpexcel/PHPExcel/Worksheet/SheetView.php\";s:8:\"checksum\";s:32:\"c7708f8c0b6db1f03b33b3c073733f20\";}i:905;a:2:{s:4:\"path\";s:50:\"/framework/library/phpexcel/PHPExcel/Worksheet.php\";s:8:\"checksum\";s:32:\"5e1e8b5fe01a9bb888f2c163eaf8f53c\";}i:906;a:2:{s:4:\"path\";s:58:\"/framework/library/phpexcel/PHPExcel/WorksheetIterator.php\";s:8:\"checksum\";s:32:\"275a21975ee6b16740b3708d824c0438\";}i:907;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Writer/Abstract.php\";s:8:\"checksum\";s:32:\"c4111bf3f92f3538deaeeb03e6458262\";}i:908;a:2:{s:4:\"path\";s:51:\"/framework/library/phpexcel/PHPExcel/Writer/CSV.php\";s:8:\"checksum\";s:32:\"bc03378ec4b05728a87f5f99657bf523\";}i:909;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/Chart.php\";s:8:\"checksum\";s:32:\"521f1948ec800e03f33c822a45cf4e9f\";}i:910;a:2:{s:4:\"path\";s:66:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/Comments.php\";s:8:\"checksum\";s:32:\"7f7e86e1a4a81d4e2945b43db10384e4\";}i:911;a:2:{s:4:\"path\";s:70:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/ContentTypes.php\";s:8:\"checksum\";s:32:\"ea3e28c005b620ee3676d8a141f08665\";}i:912;a:2:{s:4:\"path\";s:66:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/DocProps.php\";s:8:\"checksum\";s:32:\"b29298350df6d78bccfa789b0c16c568\";}i:913;a:2:{s:4:\"path\";s:65:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/Drawing.php\";s:8:\"checksum\";s:32:\"044f3fb11dbd926b7bf6be645048c7c3\";}i:914;a:2:{s:4:\"path\";s:62:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/Rels.php\";s:8:\"checksum\";s:32:\"d67eea9c0002c50dd725f52d4934d3f4\";}i:915;a:2:{s:4:\"path\";s:69:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/StringTable.php\";s:8:\"checksum\";s:32:\"17bba5d7a0a43876b5b5caae946d16d9\";}i:916;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/Style.php\";s:8:\"checksum\";s:32:\"f095a4a40930c45b08a816c14a964cb5\";}i:917;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/Theme.php\";s:8:\"checksum\";s:32:\"b867c0610c0969bd9b4515d6fa6e2a5e\";}i:918;a:2:{s:4:\"path\";s:66:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/Workbook.php\";s:8:\"checksum\";s:32:\"decb0ee223a34d25bdefe3326dc0aba3\";}i:919;a:2:{s:4:\"path\";s:67:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/Worksheet.php\";s:8:\"checksum\";s:32:\"ffd90591835780fa5407613d044dbd60\";}i:920;a:2:{s:4:\"path\";s:68:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007/WriterPart.php\";s:8:\"checksum\";s:32:\"20167f0d86f28c03b443c19bdd4f912e\";}i:921;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Writer/Excel2007.php\";s:8:\"checksum\";s:32:\"f6cd8a8acd794781ebc92052fbce0218\";}i:922;a:2:{s:4:\"path\";s:65:\"/framework/library/phpexcel/PHPExcel/Writer/Excel5/BIFFwriter.php\";s:8:\"checksum\";s:32:\"4df1220b57ce90e267dad9c099681a8a\";}i:923;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Writer/Excel5/Escher.php\";s:8:\"checksum\";s:32:\"c8924754818dde3caf5028b22021d944\";}i:924;a:2:{s:4:\"path\";s:59:\"/framework/library/phpexcel/PHPExcel/Writer/Excel5/Font.php\";s:8:\"checksum\";s:32:\"d8e9ad85af55e2b766bd2593e6111f8f\";}i:925;a:2:{s:4:\"path\";s:61:\"/framework/library/phpexcel/PHPExcel/Writer/Excel5/Parser.php\";s:8:\"checksum\";s:32:\"94c7b7a1c7d2f0f795cfbbcae262f4b4\";}i:926;a:2:{s:4:\"path\";s:63:\"/framework/library/phpexcel/PHPExcel/Writer/Excel5/Workbook.php\";s:8:\"checksum\";s:32:\"eb39008e0672f7687b74b764359aea7c\";}i:927;a:2:{s:4:\"path\";s:64:\"/framework/library/phpexcel/PHPExcel/Writer/Excel5/Worksheet.php\";s:8:\"checksum\";s:32:\"9246f9723b561b8ce3918e0f5d7aefaf\";}i:928;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Writer/Excel5/Xf.php\";s:8:\"checksum\";s:32:\"66caa8c22e2a65a69140c0780de9201a\";}i:929;a:2:{s:4:\"path\";s:54:\"/framework/library/phpexcel/PHPExcel/Writer/Excel5.php\";s:8:\"checksum\";s:32:\"84c59dd05f9f4aebc2157bdc80015478\";}i:930;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Writer/Exception.php\";s:8:\"checksum\";s:32:\"66acd482466c9757ebf53483f6f2662e\";}i:931;a:2:{s:4:\"path\";s:52:\"/framework/library/phpexcel/PHPExcel/Writer/HTML.php\";s:8:\"checksum\";s:32:\"93008161c52e11e3657d5608ad5afe3d\";}i:932;a:2:{s:4:\"path\";s:55:\"/framework/library/phpexcel/PHPExcel/Writer/IWriter.php\";s:8:\"checksum\";s:32:\"0e930624d25036aa3adbaaccfe0f6896\";}i:933;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Writer/PDF/Core.php\";s:8:\"checksum\";s:32:\"53c4d37b36782484983f810e926fb318\";}i:934;a:2:{s:4:\"path\";s:58:\"/framework/library/phpexcel/PHPExcel/Writer/PDF/DomPDF.php\";s:8:\"checksum\";s:32:\"8746aa33e6fdd7f17832baa92c873f99\";}i:935;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/Writer/PDF/mPDF.php\";s:8:\"checksum\";s:32:\"440865de9fa2a2157c7d13c44218ea76\";}i:936;a:2:{s:4:\"path\";s:57:\"/framework/library/phpexcel/PHPExcel/Writer/PDF/tcPDF.php\";s:8:\"checksum\";s:32:\"18b34f068c354c228f6e98763dab64e0\";}i:937;a:2:{s:4:\"path\";s:51:\"/framework/library/phpexcel/PHPExcel/Writer/PDF.php\";s:8:\"checksum\";s:32:\"8bf1c45d45a497757b12d775ed108c2b\";}i:938;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/cs/config\";s:8:\"checksum\";s:32:\"9a1a3903c3f4b4d02e2362a4ec79dedc\";}i:939;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/cs/functions\";s:8:\"checksum\";s:32:\"1b2675240f7c8380d3a63be08252a942\";}i:940;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/da/config\";s:8:\"checksum\";s:32:\"ad3bed22c2bc7f732f753737cd02f39f\";}i:941;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/da/functions\";s:8:\"checksum\";s:32:\"0f908d1d7a66b79063404ad622307278\";}i:942;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/de/config\";s:8:\"checksum\";s:32:\"b3f48508c83167b7ff34e9e25bf0b657\";}i:943;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/de/functions\";s:8:\"checksum\";s:32:\"1d80890dc8518e70e3beaf808c4c4f9b\";}i:944;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/en/uk/config\";s:8:\"checksum\";s:32:\"58fa80f97104e4905e6426f46d61a9ef\";}i:945;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/es/config\";s:8:\"checksum\";s:32:\"c53bf3b7a01f9b6cbcca8d9a2a7896df\";}i:946;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/es/functions\";s:8:\"checksum\";s:32:\"5fe1110967a4375f69b110af53a7d530\";}i:947;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/fi/config\";s:8:\"checksum\";s:32:\"7009e7f64af18303eeffb67188927076\";}i:948;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/fi/functions\";s:8:\"checksum\";s:32:\"429b091860970599de6b8ef7b6209411\";}i:949;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/fr/config\";s:8:\"checksum\";s:32:\"e05c851d7a4892acc2246ea657f264b6\";}i:950;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/fr/functions\";s:8:\"checksum\";s:32:\"eb95035a49d46409f223ca2fa3c29fbc\";}i:951;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/hu/config\";s:8:\"checksum\";s:32:\"8fc423751a8b86476f1e792232a6cc75\";}i:952;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/hu/functions\";s:8:\"checksum\";s:32:\"cc9a1ebee84750bf0ca0e063e5d82aa2\";}i:953;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/it/config\";s:8:\"checksum\";s:32:\"6610a8e42e8a8674f0339ea51df2b285\";}i:954;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/it/functions\";s:8:\"checksum\";s:32:\"5f672bff5b6340affb68c35d80f50983\";}i:955;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/nl/config\";s:8:\"checksum\";s:32:\"d4e4d94661c511ba1b41f7f2118d76d0\";}i:956;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/nl/functions\";s:8:\"checksum\";s:32:\"197239b2684562e301c3c8e562439fca\";}i:957;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/no/config\";s:8:\"checksum\";s:32:\"dd1cb199bc932873fea38ed8b1009c66\";}i:958;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/no/functions\";s:8:\"checksum\";s:32:\"b2d5edc7145252c5907f36ffc40183f7\";}i:959;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/pl/config\";s:8:\"checksum\";s:32:\"08873fd480207d607b0c971c95ec2435\";}i:960;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/pl/functions\";s:8:\"checksum\";s:32:\"edf115646cd4ed08cf106e035b7c5f89\";}i:961;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/pt/br/config\";s:8:\"checksum\";s:32:\"1ec726e6d68ac150658ed92c55732ead\";}i:962;a:2:{s:4:\"path\";s:59:\"/framework/library/phpexcel/PHPExcel/locale/pt/br/functions\";s:8:\"checksum\";s:32:\"c4790f115b3abc4a12c66b943c1902a9\";}i:963;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/pt/config\";s:8:\"checksum\";s:32:\"51a1180c680f3ccea08e7919c3895f05\";}i:964;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/pt/functions\";s:8:\"checksum\";s:32:\"d7cd17cfee5fddc681e19f9e59ddd133\";}i:965;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/ru/config\";s:8:\"checksum\";s:32:\"81ff05bd78c67f32f04acaadec075896\";}i:966;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/ru/functions\";s:8:\"checksum\";s:32:\"48a8a8bdf17cfb0887a23c1888e40a6b\";}i:967;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/sv/config\";s:8:\"checksum\";s:32:\"bf422a52c48bcd9c3e23c7dba93e707b\";}i:968;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/sv/functions\";s:8:\"checksum\";s:32:\"c61ab2dbccc729b8587a118debbce06b\";}i:969;a:2:{s:4:\"path\";s:53:\"/framework/library/phpexcel/PHPExcel/locale/tr/config\";s:8:\"checksum\";s:32:\"a5bb40e8ab432d52a0a8057e0b7fb6b1\";}i:970;a:2:{s:4:\"path\";s:56:\"/framework/library/phpexcel/PHPExcel/locale/tr/functions\";s:8:\"checksum\";s:32:\"ccb92789362f8034dce2d13a35cc3950\";}i:971;a:2:{s:4:\"path\";s:40:\"/framework/library/phpexcel/PHPExcel.php\";s:8:\"checksum\";s:32:\"2d890bebea044061a3d73ee6e16424a4\";}i:972;a:2:{s:4:\"path\";s:36:\"/framework/library/phpmailer/LICENSE\";s:8:\"checksum\";s:32:\"1e22b70bead0fa0848a119546e610da5\";}i:973;a:2:{s:4:\"path\";s:50:\"/framework/library/phpmailer/PHPMailerAutoload.php\";s:8:\"checksum\";s:32:\"654df63a97ce332f13674671af94748c\";}i:974;a:2:{s:4:\"path\";s:48:\"/framework/library/phpmailer/class.phpmailer.php\";s:8:\"checksum\";s:32:\"02460b8f16721a9e922ad19fe276bc55\";}i:975;a:2:{s:4:\"path\";s:43:\"/framework/library/phpmailer/class.pop3.php\";s:8:\"checksum\";s:32:\"29c8f715c8ec067e48d76ee4005ad568\";}i:976;a:2:{s:4:\"path\";s:43:\"/framework/library/phpmailer/class.smtp.php\";s:8:\"checksum\";s:32:\"741d36637d78105f2e1358f615a20668\";}i:977;a:2:{s:4:\"path\";s:48:\"/framework/library/pinyin/ChinesePinyinTable.php\";s:8:\"checksum\";s:32:\"4a2f809f9e1bea1f4715a4ad28a67891\";}i:978;a:2:{s:4:\"path\";s:36:\"/framework/library/pinyin/pinyin.php\";s:8:\"checksum\";s:32:\"87c72de9e9e302f971e29245d457cc5b\";}i:979;a:2:{s:4:\"path\";s:38:\"/framework/library/pkcs7/errorCode.php\";s:8:\"checksum\";s:32:\"d9f6a6b0d1e433ed9204c2af9a627414\";}i:980;a:2:{s:4:\"path\";s:41:\"/framework/library/pkcs7/pkcs7Encoder.php\";s:8:\"checksum\";s:32:\"64467dc30d704b7576f3a9cb5fdfb1d7\";}i:981;a:2:{s:4:\"path\";s:37:\"/framework/library/qiniu/autoload.php\";s:8:\"checksum\";s:32:\"795baad89dabfed67195d3c16737693d\";}i:982;a:2:{s:4:\"path\";s:43:\"/framework/library/qiniu/src/Qiniu/Auth.php\";s:8:\"checksum\";s:32:\"c3fbf1adb590f950f2459e90a05c6911\";}i:983;a:2:{s:4:\"path\";s:45:\"/framework/library/qiniu/src/Qiniu/Config.php\";s:8:\"checksum\";s:32:\"0b0eafefadb35240c8a48f11ec60657c\";}i:984;a:2:{s:4:\"path\";s:43:\"/framework/library/qiniu/src/Qiniu/Etag.php\";s:8:\"checksum\";s:32:\"ab33324e9ca43f76973959792052ff05\";}i:985;a:2:{s:4:\"path\";s:50:\"/framework/library/qiniu/src/Qiniu/Http/Client.php\";s:8:\"checksum\";s:32:\"a75b0d19cef5454dc2416279644ec9dd\";}i:986;a:2:{s:4:\"path\";s:49:\"/framework/library/qiniu/src/Qiniu/Http/Error.php\";s:8:\"checksum\";s:32:\"eba25d9ed220beca47ce8644948972e4\";}i:987;a:2:{s:4:\"path\";s:51:\"/framework/library/qiniu/src/Qiniu/Http/Request.php\";s:8:\"checksum\";s:32:\"a155dd3d810b3e6607109294d10ec1c4\";}i:988;a:2:{s:4:\"path\";s:52:\"/framework/library/qiniu/src/Qiniu/Http/Response.php\";s:8:\"checksum\";s:32:\"425b09e2731a115de1f946b3d92de73d\";}i:989;a:2:{s:4:\"path\";s:65:\"/framework/library/qiniu/src/Qiniu/Processing/ImageUrlBuilder.php\";s:8:\"checksum\";s:32:\"41c5ae7bfa328d76811364b1d93447b0\";}i:990;a:2:{s:4:\"path\";s:59:\"/framework/library/qiniu/src/Qiniu/Processing/Operation.php\";s:8:\"checksum\";s:32:\"e88cdcd7c65ddee564dbdd3014284b9d\";}i:991;a:2:{s:4:\"path\";s:63:\"/framework/library/qiniu/src/Qiniu/Processing/PersistentFop.php\";s:8:\"checksum\";s:32:\"5be6e38aba2a1e2d67f409538a60609e\";}i:992;a:2:{s:4:\"path\";s:60:\"/framework/library/qiniu/src/Qiniu/Storage/BucketManager.php\";s:8:\"checksum\";s:32:\"71edaabd2e55690c65290d395b6f4b3d\";}i:993;a:2:{s:4:\"path\";s:59:\"/framework/library/qiniu/src/Qiniu/Storage/FormUploader.php\";s:8:\"checksum\";s:32:\"1cde35b7823a0679e3dac99e621340b3\";}i:994;a:2:{s:4:\"path\";s:61:\"/framework/library/qiniu/src/Qiniu/Storage/ResumeUploader.php\";s:8:\"checksum\";s:32:\"d1c6e6496df5d0c295a5e6927edb4ecb\";}i:995;a:2:{s:4:\"path\";s:60:\"/framework/library/qiniu/src/Qiniu/Storage/UploadManager.php\";s:8:\"checksum\";s:32:\"8fbbd7b9619dc55f0b7d8f2b530d3e76\";}i:996;a:2:{s:4:\"path\";s:43:\"/framework/library/qiniu/src/Qiniu/Zone.php\";s:8:\"checksum\";s:32:\"2a067437cdb68c2c2fe6fb21aacefd4c\";}i:997;a:2:{s:4:\"path\";s:48:\"/framework/library/qiniu/src/Qiniu/functions.php\";s:8:\"checksum\";s:32:\"e28a36371db507aeb360bc15f4782d88\";}i:998;a:2:{s:4:\"path\";s:39:\"/framework/library/qrcode/phpqrcode.php\";s:8:\"checksum\";s:32:\"5d6fa18048ed122bc94aec4f88b173d0\";}i:999;a:2:{s:4:\"path\";s:46:\"/framework/library/sentry/Raven/Autoloader.php\";s:8:\"checksum\";s:32:\"2f4061fd46303a7b87b82aa99c4c90b8\";}i:1000;a:2:{s:4:\"path\";s:60:\"/framework/library/sentry/Raven/Breadcrumbs/ErrorHandler.php\";s:8:\"checksum\";s:32:\"255f6eeb4e42357d05a7dcf1b94fd6d3\";}i:1001;a:2:{s:4:\"path\";s:62:\"/framework/library/sentry/Raven/Breadcrumbs/MonologHandler.php\";s:8:\"checksum\";s:32:\"b12303febd3f0503f1f6fee9db956252\";}i:1002;a:2:{s:4:\"path\";s:47:\"/framework/library/sentry/Raven/Breadcrumbs.php\";s:8:\"checksum\";s:32:\"7cc9f1a7003b6e5a925957da7e0ffaae\";}i:1003;a:2:{s:4:\"path\";s:42:\"/framework/library/sentry/Raven/Client.php\";s:8:\"checksum\";s:32:\"71ca5aeb5fc1dd620671c942ead8c470\";}i:1004;a:2:{s:4:\"path\";s:42:\"/framework/library/sentry/Raven/Compat.php\";s:8:\"checksum\";s:32:\"790f3f55639affc702e2f2ac4999f561\";}i:1005;a:2:{s:4:\"path\";s:43:\"/framework/library/sentry/Raven/Context.php\";s:8:\"checksum\";s:32:\"9b069cbed28fd9b929718a906ac2740d\";}i:1006;a:2:{s:4:\"path\";s:47:\"/framework/library/sentry/Raven/CurlHandler.php\";s:8:\"checksum\";s:32:\"6823b8eccfffb735bf2e290369221570\";}i:1007;a:2:{s:4:\"path\";s:48:\"/framework/library/sentry/Raven/ErrorHandler.php\";s:8:\"checksum\";s:32:\"4ea40ada3a16d66d1816fa2d2b70648e\";}i:1008;a:2:{s:4:\"path\";s:45:\"/framework/library/sentry/Raven/Exception.php\";s:8:\"checksum\";s:32:\"1c8b91420164c5020964e578540bb948\";}i:1009;a:2:{s:4:\"path\";s:68:\"/framework/library/sentry/Raven/Processor/RemoveCookiesProcessor.php\";s:8:\"checksum\";s:32:\"d01b85b13a29881d7593bf503893c79e\";}i:1010;a:2:{s:4:\"path\";s:69:\"/framework/library/sentry/Raven/Processor/RemoveHttpBodyProcessor.php\";s:8:\"checksum\";s:32:\"f85e525843a378fbe60582f99a7fe16d\";}i:1011;a:2:{s:4:\"path\";s:67:\"/framework/library/sentry/Raven/Processor/SanitizeDataProcessor.php\";s:8:\"checksum\";s:32:\"1c308f1cb31aa08777ddf0cbd547a090\";}i:1012;a:2:{s:4:\"path\";s:74:\"/framework/library/sentry/Raven/Processor/SanitizeHttpHeadersProcessor.php\";s:8:\"checksum\";s:32:\"06069789564dbb78b578fb50f8a2398c\";}i:1013;a:2:{s:4:\"path\";s:73:\"/framework/library/sentry/Raven/Processor/SanitizeStacktraceProcessor.php\";s:8:\"checksum\";s:32:\"8df5b887e6d67e1baa8380afffa5d862\";}i:1014;a:2:{s:4:\"path\";s:45:\"/framework/library/sentry/Raven/Processor.php\";s:8:\"checksum\";s:32:\"e7244fe422f904e5a7abeb42a36a63be\";}i:1015;a:2:{s:4:\"path\";s:50:\"/framework/library/sentry/Raven/ReprSerializer.php\";s:8:\"checksum\";s:32:\"7c59ecfba4eebac258ecaf0b6e736137\";}i:1016;a:2:{s:4:\"path\";s:57:\"/framework/library/sentry/Raven/SanitizeDataProcessor.php\";s:8:\"checksum\";s:32:\"d9c6bd16c0cef4654bb17bfb1f2ea5ee\";}i:1017;a:2:{s:4:\"path\";s:46:\"/framework/library/sentry/Raven/Serializer.php\";s:8:\"checksum\";s:32:\"0314db4f3671f9671387c07c584901c4\";}i:1018;a:2:{s:4:\"path\";s:46:\"/framework/library/sentry/Raven/Stacktrace.php\";s:8:\"checksum\";s:32:\"1f59d01c0fed5ca34a39f4346eaa0e7e\";}i:1019;a:2:{s:4:\"path\";s:52:\"/framework/library/sentry/Raven/TransactionStack.php\";s:8:\"checksum\";s:32:\"3824c9d400d574a7b0cd12e0c16e0157\";}i:1020;a:2:{s:4:\"path\";s:40:\"/framework/library/sentry/Raven/Util.php\";s:8:\"checksum\";s:32:\"a01b87145b1f24166db0e45960b5ba0c\";}i:1021;a:2:{s:4:\"path\";s:47:\"/framework/library/sentry/Raven/data/cacert.pem\";s:8:\"checksum\";s:32:\"46d35440b30af4cefad0befaa95e1fab\";}i:1022;a:2:{s:4:\"path\";s:38:\"/framework/library/testify/Testify.php\";s:8:\"checksum\";s:32:\"42b2fd4fc379ac73d7eebfcc68bf1384\";}i:1023;a:2:{s:4:\"path\";s:38:\"/framework/library/testify/helpers.php\";s:8:\"checksum\";s:32:\"9541df81821be398beac827b00858fb8\";}i:1024;a:2:{s:4:\"path\";s:49:\"/framework/library/testify/testify.report.cli.php\";s:8:\"checksum\";s:32:\"41e2eefec4a019b2d4828269e9c39c36\";}i:1025;a:2:{s:4:\"path\";s:50:\"/framework/library/testify/testify.report.html.php\";s:8:\"checksum\";s:32:\"ab8c256897ded9a2a649a50867b885b0\";}i:1026;a:2:{s:4:\"path\";s:32:\"/framework/model/account.mod.php\";s:8:\"checksum\";s:32:\"1cf74527f12a675b1e2825c81bed40c2\";}i:1027;a:2:{s:4:\"path\";s:33:\"/framework/model/activity.mod.php\";s:8:\"checksum\";s:32:\"25e2a64067a94b724783bdfb6693194b\";}i:1028;a:2:{s:4:\"path\";s:28:\"/framework/model/app.mod.php\";s:8:\"checksum\";s:32:\"b19b97548fcae63686ecb0a146274de4\";}i:1029;a:2:{s:4:\"path\";s:32:\"/framework/model/article.mod.php\";s:8:\"checksum\";s:32:\"f9cd9fd10a2405df24805523c567866d\";}i:1030;a:2:{s:4:\"path\";s:35:\"/framework/model/attachment.mod.php\";s:8:\"checksum\";s:32:\"8d8637e41ddb047756a27dbd80f4665a\";}i:1031;a:2:{s:4:\"path\";s:30:\"/framework/model/cache.mod.php\";s:8:\"checksum\";s:32:\"082209f428f5e5f21b2d4df4ba5707f9\";}i:1032;a:2:{s:4:\"path\";s:29:\"/framework/model/card.mod.php\";s:8:\"checksum\";s:32:\"e12a2e9bfc22b5ca16939e6479d096fc\";}i:1033;a:2:{s:4:\"path\";s:30:\"/framework/model/clerk.mod.php\";s:8:\"checksum\";s:32:\"ec97039ccc06e6fc52383266ac998777\";}i:1034;a:2:{s:4:\"path\";s:30:\"/framework/model/cloud.mod.php\";s:8:\"checksum\";s:32:\"5ef7fdd5fda244f96f912afe8296c93e\";}i:1035;a:2:{s:4:\"path\";s:34:\"/framework/model/extension.mod.php\";s:8:\"checksum\";s:32:\"0813a771e7d8907c350aacbd1dd01108\";}i:1036;a:2:{s:4:\"path\";s:27:\"/framework/model/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:1037;a:2:{s:4:\"path\";s:28:\"/framework/model/job.mod.php\";s:8:\"checksum\";s:32:\"8f52edb9574150214f5e7a49bbd855e4\";}i:1038;a:2:{s:4:\"path\";s:33:\"/framework/model/material.mod.php\";s:8:\"checksum\";s:32:\"949fa88ed4189d7535b08093ff8bf37b\";}i:1039;a:2:{s:4:\"path\";s:27:\"/framework/model/mc.mod.php\";s:8:\"checksum\";s:32:\"26f00a0515b9eeff4e06b050c4ab6aa1\";}i:1040;a:2:{s:4:\"path\";s:29:\"/framework/model/menu.mod.php\";s:8:\"checksum\";s:32:\"d925de7a152fb83fc7cc5e402af9f4df\";}i:1041;a:2:{s:4:\"path\";s:32:\"/framework/model/message.mod.php\";s:8:\"checksum\";s:32:\"2ce700e82ff8df20813ccfdcc63c29b1\";}i:1042;a:2:{s:4:\"path\";s:32:\"/framework/model/miniapp.mod.php\";s:8:\"checksum\";s:32:\"132658fb5b306b05494e45f5aee9a695\";}i:1043;a:2:{s:4:\"path\";s:31:\"/framework/model/module.mod.php\";s:8:\"checksum\";s:32:\"ec98f04e768dc29c0445a8edfeeba3cc\";}i:1044;a:2:{s:4:\"path\";s:34:\"/framework/model/paycenter.mod.php\";s:8:\"checksum\";s:32:\"07cd235d969bc625b6d12afd2df4df63\";}i:1045;a:2:{s:4:\"path\";s:32:\"/framework/model/payment.mod.php\";s:8:\"checksum\";s:32:\"0ebbcf3339dbcc80c62e1d7107e1d8cf\";}i:1046;a:2:{s:4:\"path\";s:35:\"/framework/model/permission.mod.php\";s:8:\"checksum\";s:32:\"8a38dd1498d6a7d93d5f5c6a8cafe907\";}i:1047;a:2:{s:4:\"path\";s:33:\"/framework/model/phoneapp.mod.php\";s:8:\"checksum\";s:32:\"2bce5290c91120856399d81ca8bc7554\";}i:1048;a:2:{s:4:\"path\";s:31:\"/framework/model/refund.mod.php\";s:8:\"checksum\";s:32:\"ff72767dd164e9c8802aa6d875422eef\";}i:1049;a:2:{s:4:\"path\";s:30:\"/framework/model/reply.mod.php\";s:8:\"checksum\";s:32:\"72c6529d32cf8f6822b23d102bcfeec5\";}i:1050;a:2:{s:4:\"path\";s:32:\"/framework/model/setting.mod.php\";s:8:\"checksum\";s:32:\"dbfef3d61a81de4a42fd98d3c715c063\";}i:1051;a:2:{s:4:\"path\";s:29:\"/framework/model/site.mod.php\";s:8:\"checksum\";s:32:\"add823dab92d1fc21357704cf1e3c3c7\";}i:1052;a:2:{s:4:\"path\";s:35:\"/framework/model/statistics.mod.php\";s:8:\"checksum\";s:32:\"1c1c7e3949bad392e8d09dc24e984ae7\";}i:1053;a:2:{s:4:\"path\";s:30:\"/framework/model/store.mod.php\";s:8:\"checksum\";s:32:\"256475e3777d560f60dcd6ca40156889\";}i:1054;a:2:{s:4:\"path\";s:31:\"/framework/model/switch.mod.php\";s:8:\"checksum\";s:32:\"3ec5a5265cc3b80ef7e305f06de9ffe9\";}i:1055;a:2:{s:4:\"path\";s:31:\"/framework/model/system.mod.php\";s:8:\"checksum\";s:32:\"0b9fa85423bde8757d3d6a6439606f14\";}i:1056;a:2:{s:4:\"path\";s:29:\"/framework/model/user.mod.php\";s:8:\"checksum\";s:32:\"6f9616cfb5f405f40339a4e492dd8528\";}i:1057;a:2:{s:4:\"path\";s:32:\"/framework/model/utility.mod.php\";s:8:\"checksum\";s:32:\"61c6eb703c587d59bfbf9f67ef21a01e\";}i:1058;a:2:{s:4:\"path\";s:30:\"/framework/model/visit.mod.php\";s:8:\"checksum\";s:32:\"5580ab7d11488480c618b8e4cb3e880a\";}i:1059;a:2:{s:4:\"path\";s:32:\"/framework/model/welcome.mod.php\";s:8:\"checksum\";s:32:\"6facf76d4de32d7a5f82a76272c36b58\";}i:1060;a:2:{s:4:\"path\";s:36:\"/framework/table/Account/Account.php\";s:8:\"checksum\";s:32:\"4b25a1b9a8d0dca159df1d5cf1a27ed0\";}i:1061;a:2:{s:4:\"path\";s:35:\"/framework/table/Account/Aliapp.php\";s:8:\"checksum\";s:32:\"0afcb2d03bbe407cd250f30981bae2c5\";}i:1062;a:2:{s:4:\"path\";s:37:\"/framework/table/Account/Baiduapp.php\";s:8:\"checksum\";s:32:\"2ab55758ad424fb7d2a5751d5260d7c4\";}i:1063;a:2:{s:4:\"path\";s:37:\"/framework/table/Account/Phoneapp.php\";s:8:\"checksum\";s:32:\"f2fae3e5fc54d3a595c5ea8f16bbef29\";}i:1064;a:2:{s:4:\"path\";s:39:\"/framework/table/Account/Toutiaoapp.php\";s:8:\"checksum\";s:32:\"d04dd69e660cc8091b7e3ed6b64ef5c8\";}i:1065;a:2:{s:4:\"path\";s:35:\"/framework/table/Account/Webapp.php\";s:8:\"checksum\";s:32:\"59f50c3c0c31d9baa60d57392e07c76b\";}i:1066;a:2:{s:4:\"path\";s:36:\"/framework/table/Account/Wechats.php\";s:8:\"checksum\";s:32:\"f43589949c3472f825e9d6704a527e06\";}i:1067;a:2:{s:4:\"path\";s:34:\"/framework/table/Account/Wxapp.php\";s:8:\"checksum\";s:32:\"7f4de48eb5e53eb2354ebb6eef40e1dd\";}i:1068;a:2:{s:4:\"path\";s:34:\"/framework/table/Account/Xzapp.php\";s:8:\"checksum\";s:32:\"81e014de192f5b0a2b4d1cf2a65e281a\";}i:1069;a:2:{s:4:\"path\";s:36:\"/framework/table/Activity/Clerks.php\";s:8:\"checksum\";s:32:\"2ed4895cd3be79b1ade6e7e1622a3961\";}i:1070;a:2:{s:4:\"path\";s:44:\"/framework/table/Activity/ExchangeTrades.php\";s:8:\"checksum\";s:32:\"d07aa51f87837d2767de1eacde7c83d9\";}i:1071;a:2:{s:4:\"path\";s:52:\"/framework/table/Activity/ExchangeTradesShipping.php\";s:8:\"checksum\";s:32:\"a2fb3773e413308ebf05b4b674f1dd68\";}i:1072;a:2:{s:4:\"path\";s:36:\"/framework/table/Activity/Stores.php\";s:8:\"checksum\";s:32:\"a458b3c0e45135803bd851374ab3144e\";}i:1073;a:2:{s:4:\"path\";s:37:\"/framework/table/Article/Category.php\";s:8:\"checksum\";s:32:\"3d1e10151b8d59afb9484d13c21f1a5b\";}i:1074;a:2:{s:4:\"path\";s:36:\"/framework/table/Article/Comment.php\";s:8:\"checksum\";s:32:\"0959bc07024fdc79ca6de9f26b3ed54b\";}i:1075;a:2:{s:4:\"path\";s:33:\"/framework/table/Article/News.php\";s:8:\"checksum\";s:32:\"0a214e7795ea696397e82db1b00d0776\";}i:1076;a:2:{s:4:\"path\";s:35:\"/framework/table/Article/Notice.php\";s:8:\"checksum\";s:32:\"10fe336b22e82c7578e343a3b9551bdf\";}i:1077;a:2:{s:4:\"path\";s:32:\"/framework/table/Basic/Reply.php\";s:8:\"checksum\";s:32:\"bfc62cae9e38ab12b8faaef3b0118939\";}i:1078;a:2:{s:4:\"path\";s:36:\"/framework/table/Core/Attachment.php\";s:8:\"checksum\";s:32:\"72770c1169d985e7b2fbd9cdc73b9c4b\";}i:1079;a:2:{s:4:\"path\";s:41:\"/framework/table/Core/AttachmentGroup.php\";s:8:\"checksum\";s:32:\"f6e9cebd0ccfc7307e1d2cba409dfc55\";}i:1080;a:2:{s:4:\"path\";s:36:\"/framework/table/Core/CoverReply.php\";s:8:\"checksum\";s:32:\"0db7c612ead55c0fa9d1f7e5692df821\";}i:1081;a:2:{s:4:\"path\";s:30:\"/framework/table/Core/Cron.php\";s:8:\"checksum\";s:32:\"cc31c188d928da69ddb867ae2e8e70ae\";}i:1082;a:2:{s:4:\"path\";s:29:\"/framework/table/Core/Job.php\";s:8:\"checksum\";s:32:\"e9ce0cdd759f354e2f86dca7cc7e62eb\";}i:1083;a:2:{s:4:\"path\";s:30:\"/framework/table/Core/Menu.php\";s:8:\"checksum\";s:32:\"dadb5eaca3f7cba71fda2bc2a9e9f744\";}i:1084;a:2:{s:4:\"path\";s:38:\"/framework/table/Core/MenuShortcut.php\";s:8:\"checksum\";s:32:\"c785c78e48f7be2e96d52b18b8d6cb25\";}i:1085;a:2:{s:4:\"path\";s:42:\"/framework/table/Core/MessageNoticeLog.php\";s:8:\"checksum\";s:32:\"1361f7705352bc1f00f73781afb47c16\";}i:1086;a:2:{s:4:\"path\";s:32:\"/framework/table/Core/Paylog.php\";s:8:\"checksum\";s:32:\"9abfa86f8feea0cfdbee9d11a7321b8f\";}i:1087;a:2:{s:4:\"path\";s:37:\"/framework/table/Core/Performance.php\";s:8:\"checksum\";s:32:\"494d33b2f0696f6f74060e78f577e75a\";}i:1088;a:2:{s:4:\"path\";s:39:\"/framework/table/Core/ProfileFields.php\";s:8:\"checksum\";s:32:\"9d92cf1009d4290dda72c5e3f3c1dd17\";}i:1089;a:2:{s:4:\"path\";s:35:\"/framework/table/Core/Refundlog.php\";s:8:\"checksum\";s:32:\"c0a0db153098cfe35bd81441ff22978c\";}i:1090;a:2:{s:4:\"path\";s:36:\"/framework/table/Core/SendsmsLog.php\";s:8:\"checksum\";s:32:\"f9fa7127789e00ddfdabbd32c03a588c\";}i:1091;a:2:{s:4:\"path\";s:34:\"/framework/table/Core/Settings.php\";s:8:\"checksum\";s:32:\"3b881be312df10b2ddaa0d0c43cb0afe\";}i:1092;a:2:{s:4:\"path\";s:34:\"/framework/table/Coupon/Coupon.php\";s:8:\"checksum\";s:32:\"93565431c7ae4b1eb3a17156c4805a33\";}i:1093;a:2:{s:4:\"path\";s:34:\"/framework/table/Coupon/Record.php\";s:8:\"checksum\";s:32:\"e33bd00c58c944adfd577b9fe3f982bc\";}i:1094;a:2:{s:4:\"path\";s:32:\"/framework/table/Cover/Reply.php\";s:8:\"checksum\";s:32:\"7d872e661bc5997876291028dbce09f4\";}i:1095;a:2:{s:4:\"path\";s:33:\"/framework/table/Images/Reply.php\";s:8:\"checksum\";s:32:\"bf90cec2528d8c6d2e4e6674c2b760aa\";}i:1096;a:2:{s:4:\"path\";s:28:\"/framework/table/Mc/Card.php\";s:8:\"checksum\";s:32:\"5ad4d9cddfb2c6ff51324b0b56ccfe05\";}i:1097;a:2:{s:4:\"path\";s:35:\"/framework/table/Mc/CardMembers.php\";s:8:\"checksum\";s:32:\"a69073b20d63004ba095b651258acd7d\";}i:1098;a:2:{s:4:\"path\";s:35:\"/framework/table/Mc/CardNotices.php\";s:8:\"checksum\";s:32:\"2428c3c892dcfe1507023b3901f66740\";}i:1099;a:2:{s:4:\"path\";s:41:\"/framework/table/Mc/CardNoticesUnread.php\";s:8:\"checksum\";s:32:\"cdb0c08412d59ad5c01c0092e67a92c1\";}i:1100;a:2:{s:4:\"path\";s:34:\"/framework/table/Mc/CardRecord.php\";s:8:\"checksum\";s:32:\"d394cfe8a4914ccbede024fe6ef5d6f4\";}i:1101;a:2:{s:4:\"path\";s:38:\"/framework/table/Mc/CardSignRecord.php\";s:8:\"checksum\";s:32:\"f5edbbf9be987a23aec64c4c0131b999\";}i:1102;a:2:{s:4:\"path\";s:34:\"/framework/table/Mc/CashRecord.php\";s:8:\"checksum\";s:32:\"42615a5dfe6019143afd713021bffb96\";}i:1103;a:2:{s:4:\"path\";s:35:\"/framework/table/Mc/ChatsRecord.php\";s:8:\"checksum\";s:32:\"9c44f4f208ce92de6fc97c4783573807\";}i:1104;a:2:{s:4:\"path\";s:39:\"/framework/table/Mc/CreditsRecharge.php\";s:8:\"checksum\";s:32:\"28996d3a90ea8a06798f26ec188742fa\";}i:1105;a:2:{s:4:\"path\";s:37:\"/framework/table/Mc/CreditsRecord.php\";s:8:\"checksum\";s:32:\"b95f9b6fdf8343de055f72f921b86172\";}i:1106;a:2:{s:4:\"path\";s:34:\"/framework/table/Mc/FansGroups.php\";s:8:\"checksum\";s:32:\"b521b3257681b9c03a9d0760b442f8c8\";}i:1107;a:2:{s:4:\"path\";s:31:\"/framework/table/Mc/FansTag.php\";s:8:\"checksum\";s:32:\"6fc89ce7c1f1183f75d0ebea42888e8c\";}i:1108;a:2:{s:4:\"path\";s:38:\"/framework/table/Mc/FansTagMapping.php\";s:8:\"checksum\";s:32:\"14b0abcc0997866950b0561fdf00b73c\";}i:1109;a:2:{s:4:\"path\";s:30:\"/framework/table/Mc/Groups.php\";s:8:\"checksum\";s:32:\"d0c3d8385a545cbc5d383c122dde5dbf\";}i:1110;a:2:{s:4:\"path\";s:31:\"/framework/table/Mc/Handsel.php\";s:8:\"checksum\";s:32:\"c45728bf03935a55a110cc7ccd86d908\";}i:1111;a:2:{s:4:\"path\";s:35:\"/framework/table/Mc/MappingFans.php\";s:8:\"checksum\";s:32:\"3299c795e56f8eff0384631ad936946f\";}i:1112;a:2:{s:4:\"path\";s:38:\"/framework/table/Mc/MappingUcenter.php\";s:8:\"checksum\";s:32:\"28feb33b859a72982ff32c2aa355eb3d\";}i:1113;a:2:{s:4:\"path\";s:34:\"/framework/table/Mc/MassRecord.php\";s:8:\"checksum\";s:32:\"6e5b139963ca667bd36f9d137f3dbd4c\";}i:1114;a:2:{s:4:\"path\";s:37:\"/framework/table/Mc/MemberAddress.php\";s:8:\"checksum\";s:32:\"eb190240b52c80333c928d21c867be45\";}i:1115;a:2:{s:4:\"path\";s:36:\"/framework/table/Mc/MemberFields.php\";s:8:\"checksum\";s:32:\"0c2a2a6bced99b3a7198b9b977c9a520\";}i:1116;a:2:{s:4:\"path\";s:31:\"/framework/table/Mc/Members.php\";s:8:\"checksum\";s:32:\"c48cba90baa0643a6edc970cd3817b91\";}i:1117;a:2:{s:4:\"path\";s:33:\"/framework/table/Mc/OauthFans.php\";s:8:\"checksum\";s:32:\"1493e58d5ebe32059c6c9a8683509369\";}i:1118;a:2:{s:4:\"path\";s:37:\"/framework/table/Modules/Bindings.php\";s:8:\"checksum\";s:32:\"f71d2a139d2bd82d37833e7fdee2ba1d\";}i:1119;a:2:{s:4:\"path\";s:34:\"/framework/table/Modules/Cloud.php\";s:8:\"checksum\";s:32:\"6919f4f5f148b561bab15ea1dc77b97b\";}i:1120;a:2:{s:4:\"path\";s:35:\"/framework/table/Modules/Ignore.php\";s:8:\"checksum\";s:32:\"faad76f6db2ca75a465cca929cadb1f5\";}i:1121;a:2:{s:4:\"path\";s:36:\"/framework/table/Modules/Modules.php\";s:8:\"checksum\";s:32:\"3f60303780af870b2a4724e5d989903b\";}i:1122;a:2:{s:4:\"path\";s:35:\"/framework/table/Modules/Plugin.php\";s:8:\"checksum\";s:32:\"e81ad8459af313f4921c51a9097c343f\";}i:1123;a:2:{s:4:\"path\";s:39:\"/framework/table/Modules/PluginRank.php\";s:8:\"checksum\";s:32:\"cebab1e10efa8fc613eaa2c3a6da2837\";}i:1124;a:2:{s:4:\"path\";s:33:\"/framework/table/Modules/Rank.php\";s:8:\"checksum\";s:32:\"3ed937c7ff82cf8b415a52e10c1f73ac\";}i:1125;a:2:{s:4:\"path\";s:36:\"/framework/table/Modules/Recycle.php\";s:8:\"checksum\";s:32:\"e462a3b3b159998f5ad40bb7e369209c\";}i:1126;a:2:{s:4:\"path\";s:32:\"/framework/table/Music/Reply.php\";s:8:\"checksum\";s:32:\"96eddd13e974fc47ff0983bb23db3a9e\";}i:1127;a:2:{s:4:\"path\";s:31:\"/framework/table/News/Reply.php\";s:8:\"checksum\";s:32:\"6f00b31ec42f960de1b251edf4f12b1f\";}i:1128;a:2:{s:4:\"path\";s:36:\"/framework/table/Paycenter/Order.php\";s:8:\"checksum\";s:32:\"581a18299f4c4a3030fc455320c84f8c\";}i:1129;a:2:{s:4:\"path\";s:34:\"/framework/table/Qrcode/Qrcode.php\";s:8:\"checksum\";s:32:\"b0199b311739eed32a808ca13f342f9b\";}i:1130;a:2:{s:4:\"path\";s:32:\"/framework/table/Qrcode/Stat.php\";s:8:\"checksum\";s:32:\"4e87a3366ba6150de7d59fb3a0dcbca5\";}i:1131;a:2:{s:4:\"path\";s:33:\"/framework/table/Rule/Keyword.php\";s:8:\"checksum\";s:32:\"f16ebe0c941fbb88dad72a242db6d6e5\";}i:1132;a:2:{s:4:\"path\";s:30:\"/framework/table/Rule/Rule.php\";s:8:\"checksum\";s:32:\"a062bdd32a5b99bdaeed7274d8a8b434\";}i:1133;a:2:{s:4:\"path\";s:33:\"/framework/table/Site/Article.php\";s:8:\"checksum\";s:32:\"236f97d5354d8591155bc5ecfd2af28c\";}i:1134;a:2:{s:4:\"path\";s:40:\"/framework/table/Site/ArticleComment.php\";s:8:\"checksum\";s:32:\"2f75c12214649858e8dd6a9da485b7cc\";}i:1135;a:2:{s:4:\"path\";s:34:\"/framework/table/Site/Category.php\";s:8:\"checksum\";s:32:\"b4ca11fe8fd282e78d0144e869f3f92c\";}i:1136;a:2:{s:4:\"path\";s:31:\"/framework/table/Site/Multi.php\";s:8:\"checksum\";s:32:\"ebc3909ee5b5a52874dc488f7efe0a75\";}i:1137;a:2:{s:4:\"path\";s:29:\"/framework/table/Site/Nav.php\";s:8:\"checksum\";s:32:\"a5a73432808450ce27239ad9afaf4a19\";}i:1138;a:2:{s:4:\"path\";s:30:\"/framework/table/Site/Page.php\";s:8:\"checksum\";s:32:\"b5b215e8b15a192c70a03ebbc4448ab8\";}i:1139;a:2:{s:4:\"path\";s:31:\"/framework/table/Site/Slide.php\";s:8:\"checksum\";s:32:\"5712f3bed23f590a9fdb71b1ab1d48c0\";}i:1140;a:2:{s:4:\"path\";s:38:\"/framework/table/Site/StoreCashLog.php\";s:8:\"checksum\";s:32:\"6fd69acedb7392d5e1dcefb5c9acc971\";}i:1141;a:2:{s:4:\"path\";s:40:\"/framework/table/Site/StoreCashOrder.php\";s:8:\"checksum\";s:32:\"aeb0139283e4ba6845975d94bd8f6391\";}i:1142;a:2:{s:4:\"path\";s:44:\"/framework/table/Site/StoreCreateAccount.php\";s:8:\"checksum\";s:32:\"c16fa0d2f13d091f0fc7ce7aa0b652bd\";}i:1143;a:2:{s:4:\"path\";s:36:\"/framework/table/Site/StoreGoods.php\";s:8:\"checksum\";s:32:\"5145498ea719931e8009003609ca9c0b\";}i:1144;a:2:{s:4:\"path\";s:41:\"/framework/table/Site/StoreGoodsCloud.php\";s:8:\"checksum\";s:32:\"a9dc1671734427496e15d73d1e5ccbf7\";}i:1145;a:2:{s:4:\"path\";s:36:\"/framework/table/Site/StoreOrder.php\";s:8:\"checksum\";s:32:\"92aa683cd463e14ae021ee16b25dd916\";}i:1146;a:2:{s:4:\"path\";s:32:\"/framework/table/Site/Styles.php\";s:8:\"checksum\";s:32:\"13d3188b213fc0ee497762c88865292c\";}i:1147;a:2:{s:4:\"path\";s:36:\"/framework/table/Site/StylesVars.php\";s:8:\"checksum\";s:32:\"adee2057b339e41baa74957d41734b6f\";}i:1148;a:2:{s:4:\"path\";s:35:\"/framework/table/Site/Templates.php\";s:8:\"checksum\";s:32:\"e983a58e9aa512ca1607b17cd256c311\";}i:1149;a:2:{s:4:\"path\";s:31:\"/framework/table/Stat/Visit.php\";s:8:\"checksum\";s:32:\"e177a37cf55bd9a367f870868d75563d\";}i:1150;a:2:{s:4:\"path\";s:33:\"/framework/table/Stat/VisitIp.php\";s:8:\"checksum\";s:32:\"05716dca1190f00d5f01b8fa6918f135\";}i:1151;a:2:{s:4:\"path\";s:37:\"/framework/table/System/StatVisit.php\";s:8:\"checksum\";s:32:\"9cb4dbfe516057be90489c63db3177ad\";}i:1152;a:2:{s:4:\"path\";s:45:\"/framework/table/System/WelcomeBinddomain.php\";s:8:\"checksum\";s:32:\"79b021363bd95961746d9f45042b108a\";}i:1153;a:2:{s:4:\"path\";s:32:\"/framework/table/Uni/Account.php\";s:8:\"checksum\";s:32:\"204e55cd5a2418a6df0b1332bc80cb7d\";}i:1154;a:2:{s:4:\"path\";s:44:\"/framework/table/Uni/AccountExtraModules.php\";s:8:\"checksum\";s:32:\"ebf4036292c906b5c588a6d93ec676fe\";}i:1155;a:2:{s:4:\"path\";s:37:\"/framework/table/Uni/AccountMenus.php\";s:8:\"checksum\";s:32:\"a3a74f028d602f917ceda145376c08ea\";}i:1156;a:2:{s:4:\"path\";s:39:\"/framework/table/Uni/AccountModules.php\";s:8:\"checksum\";s:32:\"90e019422b6c54f3f15d8de4baca1306\";}i:1157;a:2:{s:4:\"path\";s:47:\"/framework/table/Uni/AccountModulesShortcut.php\";s:8:\"checksum\";s:32:\"b18d780566b7b6816c60a6f524a8e763\";}i:1158;a:2:{s:4:\"path\";s:37:\"/framework/table/Uni/AccountUsers.php\";s:8:\"checksum\";s:32:\"afe2aa6da31577362db6141f72f46908\";}i:1159;a:2:{s:4:\"path\";s:30:\"/framework/table/Uni/Group.php\";s:8:\"checksum\";s:32:\"2ba4f6f621dd02fd0176720bf0bcf279\";}i:1160;a:2:{s:4:\"path\";s:36:\"/framework/table/Uni/LinkUniacid.php\";s:8:\"checksum\";s:32:\"73063c9a14a5133f3139e1c356e46ad6\";}i:1161;a:2:{s:4:\"path\";s:32:\"/framework/table/Uni/Modules.php\";s:8:\"checksum\";s:32:\"3112c426e15a7dddaa39cb25932f32bf\";}i:1162;a:2:{s:4:\"path\";s:41:\"/framework/table/Uni/ModulesCommonUse.php\";s:8:\"checksum\";s:32:\"e6755f5b3917362681f7446e443cc0b0\";}i:1163;a:2:{s:4:\"path\";s:33:\"/framework/table/Uni/Settings.php\";s:8:\"checksum\";s:32:\"d5b74f4543bc55df555cd63198bc4b3c\";}i:1164;a:2:{s:4:\"path\";s:35:\"/framework/table/Uni/Verifycode.php\";s:8:\"checksum\";s:32:\"f38f21594d1bf0b567d2366f294d6e40\";}i:1165;a:2:{s:4:\"path\";s:34:\"/framework/table/Userapi/Cache.php\";s:8:\"checksum\";s:32:\"300c904e324b2e578a2f2b5ef47ecd57\";}i:1166;a:2:{s:4:\"path\";s:34:\"/framework/table/Userapi/Reply.php\";s:8:\"checksum\";s:32:\"5a925c1af1788d20404007eb2ef9d2ad\";}i:1167;a:2:{s:4:\"path\";s:31:\"/framework/table/Users/Bind.php\";s:8:\"checksum\";s:32:\"460f97a6c6387ae3e9e674f1cb1b5dd0\";}i:1168;a:2:{s:4:\"path\";s:38:\"/framework/table/Users/CreateGroup.php\";s:8:\"checksum\";s:32:\"b9250dea780244ec20df3ea81dccc505\";}i:1169;a:2:{s:4:\"path\";s:37:\"/framework/table/Users/ExtraGroup.php\";s:8:\"checksum\";s:32:\"0272ec8ce4b9c47201ac22157028da26\";}i:1170;a:2:{s:4:\"path\";s:37:\"/framework/table/Users/ExtraLimit.php\";s:8:\"checksum\";s:32:\"eec8c90561093348395970dcd872326e\";}i:1171;a:2:{s:4:\"path\";s:39:\"/framework/table/Users/ExtraModules.php\";s:8:\"checksum\";s:32:\"178e8faf9d519d2286395d6664e14084\";}i:1172;a:2:{s:4:\"path\";s:41:\"/framework/table/Users/ExtraTemplates.php\";s:8:\"checksum\";s:32:\"db6c53bb0f75569313764ffea232d8c5\";}i:1173;a:2:{s:4:\"path\";s:39:\"/framework/table/Users/FounderGroup.php\";s:8:\"checksum\";s:32:\"1913214a7dc8a2584e7e9c34d73910fe\";}i:1174;a:2:{s:4:\"path\";s:49:\"/framework/table/Users/FounderOwnCreateGroups.php\";s:8:\"checksum\";s:32:\"f717d5e3dbf95d707f19a89a5e80d232\";}i:1175;a:2:{s:4:\"path\";s:46:\"/framework/table/Users/FounderOwnUniGroups.php\";s:8:\"checksum\";s:32:\"d31f700824e503be5419ed330aeebf2c\";}i:1176;a:2:{s:4:\"path\";s:42:\"/framework/table/Users/FounderOwnUsers.php\";s:8:\"checksum\";s:32:\"a2d8ed3b5fff1ece5f6f70cf9b200616\";}i:1177;a:2:{s:4:\"path\";s:48:\"/framework/table/Users/FounderOwnUsersGroups.php\";s:8:\"checksum\";s:32:\"5b1e54a70aaaa25dc9704fad6ef47abf\";}i:1178;a:2:{s:4:\"path\";s:32:\"/framework/table/Users/Group.php\";s:8:\"checksum\";s:32:\"dd2ff3f7ea67825db3e3156948bc4e44\";}i:1179;a:2:{s:4:\"path\";s:34:\"/framework/table/Users/Lastuse.php\";s:8:\"checksum\";s:32:\"d4ad1a1d0bccc2786ebd870539986278\";}i:1180;a:2:{s:4:\"path\";s:36:\"/framework/table/Users/LoginLogs.php\";s:8:\"checksum\";s:32:\"af286f259ad5165a58f5fd08c26c83f9\";}i:1181;a:2:{s:4:\"path\";s:41:\"/framework/table/Users/OperateHistory.php\";s:8:\"checksum\";s:32:\"c2a7d3a29ebb1a5b3fb05cd16e7655aa\";}i:1182;a:2:{s:4:\"path\";s:38:\"/framework/table/Users/OperateStar.php\";s:8:\"checksum\";s:32:\"b286a123551fdbccdef981b07a40b088\";}i:1183;a:2:{s:4:\"path\";s:37:\"/framework/table/Users/Permission.php\";s:8:\"checksum\";s:32:\"87b65a5fcc0c11c8c8f34fd3231d4586\";}i:1184;a:2:{s:4:\"path\";s:34:\"/framework/table/Users/Profile.php\";s:8:\"checksum\";s:32:\"89bd41d3101428061ab4216b4c511383\";}i:1185;a:2:{s:4:\"path\";s:32:\"/framework/table/Users/Users.php\";s:8:\"checksum\";s:32:\"5f67bf1d4c1c3642aaa607c0071432a6\";}i:1186;a:2:{s:4:\"path\";s:32:\"/framework/table/Video/Reply.php\";s:8:\"checksum\";s:32:\"1ced9ef405250d536879485b05921684\";}i:1187;a:2:{s:4:\"path\";s:32:\"/framework/table/Voice/Reply.php\";s:8:\"checksum\";s:32:\"c13c3a7576f70d64bf645ad8540dd628\";}i:1188;a:2:{s:4:\"path\";s:38:\"/framework/table/Wechat/Attachment.php\";s:8:\"checksum\";s:32:\"4fef7f554e2e3588a2f32fff4474462f\";}i:1189;a:2:{s:4:\"path\";s:32:\"/framework/table/Wechat/News.php\";s:8:\"checksum\";s:32:\"afecb8a9e0e8926c82a799f38ffcf3d8\";}i:1190;a:2:{s:4:\"path\";s:42:\"/framework/table/Wxapp/GeneralAnalysis.php\";s:8:\"checksum\";s:32:\"74aeacbbb1fc705afc5478023aa32b1f\";}i:1191;a:2:{s:4:\"path\";s:35:\"/framework/table/Wxapp/Versions.php\";s:8:\"checksum\";s:32:\"5435b1594050d856beed5a439582bd69\";}i:1192;a:2:{s:4:\"path\";s:33:\"/framework/table/Wxcard/Reply.php\";s:8:\"checksum\";s:32:\"571c676ab23c6e896562a9f2fa38a382\";}i:1193;a:2:{s:4:\"path\";s:10:\"/index.php\";s:8:\"checksum\";s:32:\"bf79dce0747a087b507c9412b31b0fb4\";}i:1194;a:2:{s:4:\"path\";s:21:\"/payment/alipay/ap.js\";s:8:\"checksum\";s:32:\"42a070cef5a482e7bda93f4bb1724e84\";}i:1195;a:2:{s:4:\"path\";s:28:\"/payment/alipay/merchant.php\";s:8:\"checksum\";s:32:\"112521343ae40e5789472f9a493e1dcd\";}i:1196;a:2:{s:4:\"path\";s:26:\"/payment/alipay/notify.php\";s:8:\"checksum\";s:32:\"2cfccea0aedd480c2892aecfd64dd4b0\";}i:1197;a:2:{s:4:\"path\";s:23:\"/payment/alipay/pay.htm\";s:8:\"checksum\";s:32:\"63f23e26a4d4d94b15599b499626daca\";}i:1198;a:2:{s:4:\"path\";s:26:\"/payment/alipay/return.php\";s:8:\"checksum\";s:32:\"06616dce52f47b2c4867e504109c9718\";}i:1199;a:2:{s:4:\"path\";s:33:\"/payment/baifubao/bfb_pay.cfg.php\";s:8:\"checksum\";s:32:\"fb1bfba160e7ce328148136ad03216d5\";}i:1200;a:2:{s:4:\"path\";s:29:\"/payment/baifubao/bfb_sdk.php\";s:8:\"checksum\";s:32:\"f036f5290e877bbaddf45f09f32c3e23\";}i:1201;a:2:{s:4:\"path\";s:28:\"/payment/baifubao/notify.php\";s:8:\"checksum\";s:32:\"0ad34a4d83a4b6c28969b9f8b923d9ac\";}i:1202;a:2:{s:4:\"path\";s:25:\"/payment/baifubao/pay.php\";s:8:\"checksum\";s:32:\"38deedd5953911efc4087903b9f26ede\";}i:1203;a:2:{s:4:\"path\";s:28:\"/payment/jueqiymf/notify.php\";s:8:\"checksum\";s:32:\"f15631b1dde91f96497621687bddd0cf\";}i:1204;a:2:{s:4:\"path\";s:25:\"/payment/jueqiymf/pay.php\";s:8:\"checksum\";s:32:\"ef2d69c7837cca409755e5f04a5bd099\";}i:1205;a:2:{s:4:\"path\";s:28:\"/payment/unionpay/__init.php\";s:8:\"checksum\";s:32:\"eb452929b5e00c1488b7ee8755dfbafe\";}i:1206;a:2:{s:4:\"path\";s:28:\"/payment/unionpay/notify.php\";s:8:\"checksum\";s:32:\"a204c16aa98f4ea53016a82df576fdfe\";}i:1207;a:2:{s:4:\"path\";s:25:\"/payment/unionpay/pay.php\";s:8:\"checksum\";s:32:\"6da03d0dfc6376b9c8f628c3560853e8\";}i:1208;a:2:{s:4:\"path\";s:42:\"/payment/unionpay/upacp_sdk_php/ReadMe.txt\";s:8:\"checksum\";s:32:\"66fc4ccea6248f4020e32b0db9825725\";}i:1209;a:2:{s:4:\"path\";s:54:\"/payment/unionpay/upacp_sdk_php/utf8/func/PinBlock.php\";s:8:\"checksum\";s:32:\"604edaea6d55a467355cdfccb1d0064b\";}i:1210;a:2:{s:4:\"path\";s:60:\"/payment/unionpay/upacp_sdk_php/utf8/func/PublicEncrypte.php\";s:8:\"checksum\";s:32:\"170d8a1ed0c58842b88eebbbc82c0d01\";}i:1211;a:2:{s:4:\"path\";s:55:\"/payment/unionpay/upacp_sdk_php/utf8/func/SDKConfig.php\";s:8:\"checksum\";s:32:\"b79b5af2a7729f5473e2f081d3c4eae7\";}i:1212;a:2:{s:4:\"path\";s:52:\"/payment/unionpay/upacp_sdk_php/utf8/func/common.php\";s:8:\"checksum\";s:32:\"1d8d9e6e3bd73b5e3f6df4265cb9a7f8\";}i:1213;a:2:{s:4:\"path\";s:56:\"/payment/unionpay/upacp_sdk_php/utf8/func/httpClient.php\";s:8:\"checksum\";s:32:\"f0617a9e6f55225ab8272af017dd093e\";}i:1214;a:2:{s:4:\"path\";s:55:\"/payment/unionpay/upacp_sdk_php/utf8/func/log.class.php\";s:8:\"checksum\";s:32:\"e09a154b2440411eb7679c9bcbf2b590\";}i:1215;a:2:{s:4:\"path\";s:56:\"/payment/unionpay/upacp_sdk_php/utf8/func/secureUtil.php\";s:8:\"checksum\";s:32:\"862ad5e8e627cc4365e9f3ddce4782fb\";}i:1216;a:2:{s:4:\"path\";s:26:\"/payment/wechat/native.php\";s:8:\"checksum\";s:32:\"a431fb7e76ddaaaccf1628937b35b3f1\";}i:1217;a:2:{s:4:\"path\";s:26:\"/payment/wechat/notify.php\";s:8:\"checksum\";s:32:\"47e089b82a681a23d49221c82196b58c\";}i:1218;a:2:{s:4:\"path\";s:23:\"/payment/wechat/pay.php\";s:8:\"checksum\";s:32:\"5c23fcea75057f98a2e2fb1a83a365a0\";}i:1219;a:2:{s:4:\"path\";s:26:\"/payment/wechat/refund.php\";s:8:\"checksum\";s:32:\"edf89720b62322a73832d276e80387aa\";}i:1220;a:2:{s:4:\"path\";s:26:\"/payment/wechat/rights.php\";s:8:\"checksum\";s:32:\"7cb51e0afcd24f55f0cf1a0d2856227e\";}i:1221;a:2:{s:4:\"path\";s:27:\"/payment/wechat/warning.php\";s:8:\"checksum\";s:32:\"7d8664ca47e8848948b946a68d9c1b8e\";}i:1222;a:2:{s:4:\"path\";s:33:\"/web/common/bootstrap.sys.inc.php\";s:8:\"checksum\";s:32:\"50bf339801c582de6d874fea274fd313\";}i:1223;a:2:{s:4:\"path\";s:27:\"/web/common/common.func.php\";s:8:\"checksum\";s:32:\"f6fc4f3ec2ab95b25846f4f260a8ce9a\";}i:1224;a:2:{s:4:\"path\";s:26:\"/web/common/frames.inc.php\";s:8:\"checksum\";s:32:\"389ef9c0789c5bd8cf42ab7ca1401f60\";}i:1225;a:2:{s:4:\"path\";s:30:\"/web/common/permission.inc.php\";s:8:\"checksum\";s:32:\"217b366ca0911dfb0a325c1ded76453a\";}i:1226;a:2:{s:4:\"path\";s:29:\"/web/common/template.func.php\";s:8:\"checksum\";s:32:\"7c9c4468744c5247f61bdb021aa977f6\";}i:1227;a:2:{s:4:\"path\";s:24:\"/web/common/tpl.func.php\";s:8:\"checksum\";s:32:\"b7d82103943421d7eb681eb5dae4611a\";}i:1228;a:2:{s:4:\"path\";s:13:\"/web/home.php\";s:8:\"checksum\";s:32:\"3f3656805198e08cb309b08ab27b95d2\";}i:1229;a:2:{s:4:\"path\";s:14:\"/web/index.php\";s:8:\"checksum\";s:32:\"5a8593f72bd548489cba7732e8d446a1\";}i:1230;a:2:{s:4:\"path\";s:39:\"/web/resource/components/chart/Chart.js\";s:8:\"checksum\";s:32:\"82df9a2e1dc5fba434f4b58cd4add209\";}i:1231;a:2:{s:4:\"path\";s:47:\"/web/resource/components/chart/angular-chart.js\";s:8:\"checksum\";s:32:\"f5e3f6df8d2e07def08a504d709bccf7\";}i:1232;a:2:{s:4:\"path\";s:56:\"/web/resource/components/clockpicker/clockpicker.min.css\";s:8:\"checksum\";s:32:\"76b83ed5042f73def3a505a2f4972a63\";}i:1233;a:2:{s:4:\"path\";s:55:\"/web/resource/components/clockpicker/clockpicker.min.js\";s:8:\"checksum\";s:32:\"63b29c3dfefe7810658fecd4cb7890b6\";}i:1234;a:2:{s:4:\"path\";s:49:\"/web/resource/components/colorpicker/spectrum.css\";s:8:\"checksum\";s:32:\"d72473f22498e47b26b4da648a74b13c\";}i:1235;a:2:{s:4:\"path\";s:48:\"/web/resource/components/colorpicker/spectrum.js\";s:8:\"checksum\";s:32:\"b74dfe7ed6b63f427469eac7d47dab06\";}i:1236;a:2:{s:4:\"path\";s:60:\"/web/resource/components/daterangepicker/daterangepicker.css\";s:8:\"checksum\";s:32:\"1466f3907bc49472ea8c3f95dc1a4f89\";}i:1237;a:2:{s:4:\"path\";s:59:\"/web/resource/components/daterangepicker/daterangepicker.js\";s:8:\"checksum\";s:32:\"917f5b8d1d5597197e762963dce4ed53\";}i:1238;a:2:{s:4:\"path\";s:65:\"/web/resource/components/datetimepicker/jquery.datetimepicker.css\";s:8:\"checksum\";s:32:\"aa787587e603b059545ef3272e2d29bf\";}i:1239;a:2:{s:4:\"path\";s:64:\"/web/resource/components/datetimepicker/jquery.datetimepicker.js\";s:8:\"checksum\";s:32:\"735f03f14676912daf07d402d8c9cc7d\";}i:1240;a:2:{s:4:\"path\";s:46:\"/web/resource/components/driver/driver.min.css\";s:8:\"checksum\";s:32:\"010864f77b841228967f1b28bd20be4d\";}i:1241;a:2:{s:4:\"path\";s:45:\"/web/resource/components/driver/driver.min.js\";s:8:\"checksum\";s:32:\"21b6c957fb40ffc978c6ec79428cc7bb\";}i:1242;a:2:{s:4:\"path\";s:39:\"/web/resource/components/emoji/emoji.js\";s:8:\"checksum\";s:32:\"ed82afe806ccca678355d8586a4a5fd1\";}i:1243;a:2:{s:4:\"path\";s:40:\"/web/resource/components/emoji/emoji.png\";s:8:\"checksum\";s:32:\"2158b8f1a5eb94d6ce8b58ae377e2787\";}i:1244;a:2:{s:4:\"path\";s:43:\"/web/resource/components/emoji/emotions.css\";s:8:\"checksum\";s:32:\"36f7f0a5cceb73003bab84bfc36c0413\";}i:1245;a:2:{s:4:\"path\";s:57:\"/web/resource/components/fileuploader/fileuploader.min.js\";s:8:\"checksum\";s:32:\"738a055a916ac06870727fa2eb5c7027\";}i:1246;a:2:{s:4:\"path\";s:51:\"/web/resource/components/fontawesome/fontawesome.js\";s:8:\"checksum\";s:32:\"f5f3c9f7ec526086ecfb73a750ba48ed\";}i:1247;a:2:{s:4:\"path\";s:46:\"/web/resource/components/fontawesome/style.css\";s:8:\"checksum\";s:32:\"cd4a7d00bef81d67d7ff27d5d6f27ed9\";}i:1248;a:2:{s:4:\"path\";s:54:\"/web/resource/components/jplayer/jquery.jplayer.min.js\";s:8:\"checksum\";s:32:\"2726150a1fb5b9fd2208ba44fa16496c\";}i:1249;a:2:{s:4:\"path\";s:51:\"/web/resource/components/jplayer/jquery.jplayer.swf\";s:8:\"checksum\";s:32:\"afc3359503960bea5d3a476e21c72b42\";}i:1250;a:2:{s:4:\"path\";s:45:\"/web/resource/components/material/material.js\";s:8:\"checksum\";s:32:\"85a6548c1d3bcb9d9741927bac13e268\";}i:1251;a:2:{s:4:\"path\";s:46:\"/web/resource/components/swiper/swiper.min.css\";s:8:\"checksum\";s:32:\"cb8d3c07c60fd17436678750e6800c1f\";}i:1252;a:2:{s:4:\"path\";s:45:\"/web/resource/components/swiper/swiper.min.js\";s:8:\"checksum\";s:32:\"241a4ffc7f303e2786832b112eb2782c\";}i:1253;a:2:{s:4:\"path\";s:56:\"/web/resource/components/switch/bootstrap-switch.min.css\";s:8:\"checksum\";s:32:\"dd58c521cf9d5c863b02c6cc96b3f376\";}i:1254;a:2:{s:4:\"path\";s:55:\"/web/resource/components/switch/bootstrap-switch.min.js\";s:8:\"checksum\";s:32:\"de7964d128f6b6f9b7e150e5d5edd0f2\";}i:1255;a:2:{s:4:\"path\";s:45:\"/web/resource/components/toast/toastr.min.css\";s:8:\"checksum\";s:32:\"f284028c678041d687c6f1be6968f68a\";}i:1256;a:2:{s:4:\"path\";s:44:\"/web/resource/components/toast/toastr.min.js\";s:8:\"checksum\";s:32:\"288053556a8dbbba281cd771104eb77f\";}i:1257;a:2:{s:4:\"path\";s:39:\"/web/resource/components/trade/trade.js\";s:8:\"checksum\";s:32:\"24509dd4eac5171f5b3e48e5957c0278\";}i:1258;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/anchor/anchor.html\";s:8:\"checksum\";s:32:\"f76251acf9a314912f04f1623b902ffd\";}i:1259;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/attachment/attachment.css\";s:8:\"checksum\";s:32:\"d9e2ffae3e35df535399dbbd3ed3dd8a\";}i:1260;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/dialogs/attachment/attachment.html\";s:8:\"checksum\";s:32:\"702310fa9455af3bc20ff48129d5c6ef\";}i:1261;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/attachment/attachment.js\";s:8:\"checksum\";s:32:\"31c509bc32620452fb293f065dd80f1c\";}i:1262;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_chm.gif\";s:8:\"checksum\";s:32:\"a6bde967007a598c248c28e93135f8d2\";}i:1263;a:2:{s:4:\"path\";s:83:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_default.png\";s:8:\"checksum\";s:32:\"2c861195d4fe149d298fb89f59fb59db\";}i:1264;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif\";s:8:\"checksum\";s:32:\"62fedaf25e736ec0fc5dc9f484f8729f\";}i:1265;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_exe.gif\";s:8:\"checksum\";s:32:\"2a223aacd85e50241e09ee50208444cc\";}i:1266;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_jpg.gif\";s:8:\"checksum\";s:32:\"206ee8fa1eb6472dbf6680d1a234730e\";}i:1267;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_mp3.gif\";s:8:\"checksum\";s:32:\"20ca745781a4181242486fd6899b311e\";}i:1268;a:2:{s:4:\"path\";s:78:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_mv.gif\";s:8:\"checksum\";s:32:\"b89eb6e0820bca6cb13cc0471f9c6408\";}i:1269;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_pdf.gif\";s:8:\"checksum\";s:32:\"5ed2e815d975ef2f28415808c97aa825\";}i:1270;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_ppt.gif\";s:8:\"checksum\";s:32:\"8ca7522b42fd080284556579c9429fcb\";}i:1271;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_psd.gif\";s:8:\"checksum\";s:32:\"569ce65a6f5ef037358a8720d32acce5\";}i:1272;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_rar.gif\";s:8:\"checksum\";s:32:\"ec5c6a20543d04ed58473ddc0017aa06\";}i:1273;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_txt.gif\";s:8:\"checksum\";s:32:\"a41b31caae5723d931c6365ae180c0be\";}i:1274;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/dialogs/attachment/fileTypeImages/icon_xls.gif\";s:8:\"checksum\";s:32:\"43750beef8caa96f0e1ef476539f65f4\";}i:1275;a:2:{s:4:\"path\";s:72:\"/web/resource/components/ueditor/dialogs/attachment/images/alignicon.gif\";s:8:\"checksum\";s:32:\"d86d56edfe175c9aa300a8ef4c7f78c6\";}i:1276;a:2:{s:4:\"path\";s:72:\"/web/resource/components/ueditor/dialogs/attachment/images/alignicon.png\";s:8:\"checksum\";s:32:\"aef70d0a71f4b1da729a92dafd4cf4a9\";}i:1277;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/attachment/images/bg.png\";s:8:\"checksum\";s:32:\"ceea3f7e3d18fbefe125725c85a57aeb\";}i:1278;a:2:{s:4:\"path\";s:73:\"/web/resource/components/ueditor/dialogs/attachment/images/file-icons.gif\";s:8:\"checksum\";s:32:\"606b8e96894f15596c83333e923a3a62\";}i:1279;a:2:{s:4:\"path\";s:73:\"/web/resource/components/ueditor/dialogs/attachment/images/file-icons.png\";s:8:\"checksum\";s:32:\"f43725a2e01286fd452243252df94999\";}i:1280;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/dialogs/attachment/images/icons.gif\";s:8:\"checksum\";s:32:\"dc9038bc535e0f930306894cf24ccd4c\";}i:1281;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/dialogs/attachment/images/icons.png\";s:8:\"checksum\";s:32:\"c9ceb83c0a247ae47f54c3e1d3cb4bac\";}i:1282;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/dialogs/attachment/images/image.png\";s:8:\"checksum\";s:32:\"6b00566e6a7a54df0b83fe8a1d8b9427\";}i:1283;a:2:{s:4:\"path\";s:71:\"/web/resource/components/ueditor/dialogs/attachment/images/progress.png\";s:8:\"checksum\";s:32:\"46732e763f50c337fecabcc42150d842\";}i:1284;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/dialogs/attachment/images/success.gif\";s:8:\"checksum\";s:32:\"56879ca275183bef11a8972ffbea5a6b\";}i:1285;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/dialogs/attachment/images/success.png\";s:8:\"checksum\";s:32:\"b80425bbf53402d499d54c86ca365870\";}i:1286;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/background/background.css\";s:8:\"checksum\";s:32:\"0fbfa95bedd20bffb7661d539c39c410\";}i:1287;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/dialogs/background/background.html\";s:8:\"checksum\";s:32:\"04a7705279b7577e38e4c671a2f998ea\";}i:1288;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/background/background.js\";s:8:\"checksum\";s:32:\"4357eaff4d2f1cbc3af001a55601bbbf\";}i:1289;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/background/images/bg.png\";s:8:\"checksum\";s:32:\"ceea3f7e3d18fbefe125725c85a57aeb\";}i:1290;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/dialogs/background/images/success.png\";s:8:\"checksum\";s:32:\"b80425bbf53402d499d54c86ca365870\";}i:1291;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/charts/chart.config.js\";s:8:\"checksum\";s:32:\"79c87e363bcd7b9f5894fcb1252c6ca0\";}i:1292;a:2:{s:4:\"path\";s:58:\"/web/resource/components/ueditor/dialogs/charts/charts.css\";s:8:\"checksum\";s:32:\"9b8d8b7a4f3a16d1c800a7494ba73d9f\";}i:1293;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/charts/charts.html\";s:8:\"checksum\";s:32:\"3b4e81fee16532bfd41960ed2b59f658\";}i:1294;a:2:{s:4:\"path\";s:57:\"/web/resource/components/ueditor/dialogs/charts/charts.js\";s:8:\"checksum\";s:32:\"fb97ba65e808338d4cc778e8f913a332\";}i:1295;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/charts/images/charts0.png\";s:8:\"checksum\";s:32:\"c8c9cdb63b5c31aaa9d075e3d12d6772\";}i:1296;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/charts/images/charts1.png\";s:8:\"checksum\";s:32:\"4bebe6b730fe928031ee4f83594b300a\";}i:1297;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/charts/images/charts2.png\";s:8:\"checksum\";s:32:\"2042995205190212415b560e3a28ebad\";}i:1298;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/charts/images/charts3.png\";s:8:\"checksum\";s:32:\"fc1c24b56a589dcd17a6721c5d576f5b\";}i:1299;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/charts/images/charts4.png\";s:8:\"checksum\";s:32:\"43b400c4c8fbd5458d072fe177e633fd\";}i:1300;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/charts/images/charts5.png\";s:8:\"checksum\";s:32:\"9d215c9480ab1ec3660513ad82a048b2\";}i:1301;a:2:{s:4:\"path\";s:60:\"/web/resource/components/ueditor/dialogs/emotion/emotion.css\";s:8:\"checksum\";s:32:\"2f6617ecde65fc054f015b6ecb1b91e7\";}i:1302;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/dialogs/emotion/emotion.html\";s:8:\"checksum\";s:32:\"3e6bd6cad01273ba4b6257a3d9437c85\";}i:1303;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/emotion/emotion.js\";s:8:\"checksum\";s:32:\"eba67e20a9486696edc111ed49405d0e\";}i:1304;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/dialogs/emotion/images/0.gif\";s:8:\"checksum\";s:32:\"629ccc774aed95b2c6bec91151f7292d\";}i:1305;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/emotion/images/bface.gif\";s:8:\"checksum\";s:32:\"6ea3533c3b0adbe19467ebccd1a7afa1\";}i:1306;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/emotion/images/cface.gif\";s:8:\"checksum\";s:32:\"5d39be760e912b058a42fc59b3731bec\";}i:1307;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/emotion/images/fface.gif\";s:8:\"checksum\";s:32:\"a4fc234a5ca005ba8845b36a09004738\";}i:1308;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/dialogs/emotion/images/jxface2.gif\";s:8:\"checksum\";s:32:\"1085988d048e25ad630451eba57dc09d\";}i:1309;a:2:{s:4:\"path\";s:76:\"/web/resource/components/ueditor/dialogs/emotion/images/neweditor-tab-bg.png\";s:8:\"checksum\";s:32:\"4869b022d6ba52d8c4312e9f40564efd\";}i:1310;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/emotion/images/tface.gif\";s:8:\"checksum\";s:32:\"30e42f9792a388ea7b049ee8715ce8fa\";}i:1311;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/emotion/images/wface.gif\";s:8:\"checksum\";s:32:\"647a02b861c53e54d603db363aeec236\";}i:1312;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/emotion/images/yface.gif\";s:8:\"checksum\";s:32:\"43c43aada4dd1ec8bc352f092e39c7b0\";}i:1313;a:2:{s:4:\"path\";s:55:\"/web/resource/components/ueditor/dialogs/gmap/gmap.html\";s:8:\"checksum\";s:32:\"1e48d4c9c191394d592c23c8bb3efdcc\";}i:1314;a:2:{s:4:\"path\";s:54:\"/web/resource/components/ueditor/dialogs/help/help.css\";s:8:\"checksum\";s:32:\"e24ff152343d7ed407150b1978a2841b\";}i:1315;a:2:{s:4:\"path\";s:55:\"/web/resource/components/ueditor/dialogs/help/help.html\";s:8:\"checksum\";s:32:\"bdabd1bb2e82c4114fb940de466a1d8c\";}i:1316;a:2:{s:4:\"path\";s:53:\"/web/resource/components/ueditor/dialogs/help/help.js\";s:8:\"checksum\";s:32:\"46ab3200f2cee7a9be91c7ba91dc8863\";}i:1317;a:2:{s:4:\"path\";s:56:\"/web/resource/components/ueditor/dialogs/image/image.css\";s:8:\"checksum\";s:32:\"19f3b7ccfaea8630e564bea9047b5d51\";}i:1318;a:2:{s:4:\"path\";s:57:\"/web/resource/components/ueditor/dialogs/image/image.html\";s:8:\"checksum\";s:32:\"62599344cbf8c060562d25d2cb774db0\";}i:1319;a:2:{s:4:\"path\";s:55:\"/web/resource/components/ueditor/dialogs/image/image.js\";s:8:\"checksum\";s:32:\"2e9a5221905e05fed4e56f8ef6327013\";}i:1320;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/dialogs/image/images/alignicon.jpg\";s:8:\"checksum\";s:32:\"0bffaa2001fb64832c4b07f61c28067c\";}i:1321;a:2:{s:4:\"path\";s:60:\"/web/resource/components/ueditor/dialogs/image/images/bg.png\";s:8:\"checksum\";s:32:\"ceea3f7e3d18fbefe125725c85a57aeb\";}i:1322;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/image/images/icons.gif\";s:8:\"checksum\";s:32:\"dc9038bc535e0f930306894cf24ccd4c\";}i:1323;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/image/images/icons.png\";s:8:\"checksum\";s:32:\"c9ceb83c0a247ae47f54c3e1d3cb4bac\";}i:1324;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/image/images/image.png\";s:8:\"checksum\";s:32:\"6b00566e6a7a54df0b83fe8a1d8b9427\";}i:1325;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/image/images/progress.png\";s:8:\"checksum\";s:32:\"46732e763f50c337fecabcc42150d842\";}i:1326;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/image/images/success.gif\";s:8:\"checksum\";s:32:\"56879ca275183bef11a8972ffbea5a6b\";}i:1327;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/image/images/success.png\";s:8:\"checksum\";s:32:\"b80425bbf53402d499d54c86ca365870\";}i:1328;a:2:{s:4:\"path\";s:69:\"/web/resource/components/ueditor/dialogs/insertframe/insertframe.html\";s:8:\"checksum\";s:32:\"c13309902398eafe429866bd50842ba1\";}i:1329;a:2:{s:4:\"path\";s:52:\"/web/resource/components/ueditor/dialogs/internal.js\";s:8:\"checksum\";s:32:\"c0f9b684495ee74765c2b0959b71d9aa\";}i:1330;a:2:{s:4:\"path\";s:55:\"/web/resource/components/ueditor/dialogs/link/link.html\";s:8:\"checksum\";s:32:\"a6515e6b9aaf4741a39d4b522c9615cb\";}i:1331;a:2:{s:4:\"path\";s:51:\"/web/resource/components/ueditor/dialogs/map/api.js\";s:8:\"checksum\";s:32:\"a90d59bfca04987b2e84c268ac813e04\";}i:1332;a:2:{s:4:\"path\";s:57:\"/web/resource/components/ueditor/dialogs/map/getscript.js\";s:8:\"checksum\";s:32:\"23aa5e1f1c631995d5755c3d18112e1a\";}i:1333;a:2:{s:4:\"path\";s:53:\"/web/resource/components/ueditor/dialogs/map/map.html\";s:8:\"checksum\";s:32:\"17a8001a2e8211d8bfb2b7bf03eb3924\";}i:1334;a:2:{s:4:\"path\";s:54:\"/web/resource/components/ueditor/dialogs/map/show.html\";s:8:\"checksum\";s:32:\"527781b5748a4f3f5f2d231972b001b6\";}i:1335;a:2:{s:4:\"path\";s:56:\"/web/resource/components/ueditor/dialogs/music/music.css\";s:8:\"checksum\";s:32:\"59e49f99f5386b9903d835e686ffe81c\";}i:1336;a:2:{s:4:\"path\";s:57:\"/web/resource/components/ueditor/dialogs/music/music.html\";s:8:\"checksum\";s:32:\"0459af5c58f978d41fc485acfa47f58a\";}i:1337;a:2:{s:4:\"path\";s:55:\"/web/resource/components/ueditor/dialogs/music/music.js\";s:8:\"checksum\";s:32:\"71b802cd1809f338e68fc9fe64ed5108\";}i:1338;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/dialogs/preview/preview.html\";s:8:\"checksum\";s:32:\"47babc7dd590d05cbf2c56a11d6c5439\";}i:1339;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/scrawl/images/addimg.png\";s:8:\"checksum\";s:32:\"64d268d5749c701a9ef3af91efba1b88\";}i:1340;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/dialogs/scrawl/images/brush.png\";s:8:\"checksum\";s:32:\"f76286aaa7fbdc6046c3802d57a2a86a\";}i:1341;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/scrawl/images/delimg.png\";s:8:\"checksum\";s:32:\"2091e959cbafd08fb1eed9131b9fd44c\";}i:1342;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/scrawl/images/delimgH.png\";s:8:\"checksum\";s:32:\"54a5447ca3c56b999ab26a0705b4cdee\";}i:1343;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/dialogs/scrawl/images/empty.png\";s:8:\"checksum\";s:32:\"37ebb732ae836025a8fb73a633a7a899\";}i:1344;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/scrawl/images/emptyH.png\";s:8:\"checksum\";s:32:\"b05b8330ec204731c28191de7c30193c\";}i:1345;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/scrawl/images/eraser.png\";s:8:\"checksum\";s:32:\"5c7e4ef7709bcab2bad98dd69d074ce9\";}i:1346;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/scrawl/images/redo.png\";s:8:\"checksum\";s:32:\"f7c8eda36e253d931ed9396450690d70\";}i:1347;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/dialogs/scrawl/images/redoH.png\";s:8:\"checksum\";s:32:\"20190473ae3f1ef61695f94f5c2b6789\";}i:1348;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/dialogs/scrawl/images/scale.png\";s:8:\"checksum\";s:32:\"04cacdc1426b6158dfe537f959e0acf2\";}i:1349;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/scrawl/images/scaleH.png\";s:8:\"checksum\";s:32:\"be0eea27c8907255c8d241187f34e440\";}i:1350;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/scrawl/images/size.png\";s:8:\"checksum\";s:32:\"0b8509263ad87c33cee01dce5a6eaf13\";}i:1351;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/scrawl/images/undo.png\";s:8:\"checksum\";s:32:\"ed6b7fb70d0c207bebd94ad2c5f14630\";}i:1352;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/dialogs/scrawl/images/undoH.png\";s:8:\"checksum\";s:32:\"01014410b794e57dcb8b6163859083c7\";}i:1353;a:2:{s:4:\"path\";s:58:\"/web/resource/components/ueditor/dialogs/scrawl/scrawl.css\";s:8:\"checksum\";s:32:\"7607a9f57bc3de880e5c4fe55f5605d5\";}i:1354;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/scrawl/scrawl.html\";s:8:\"checksum\";s:32:\"45c7ed8b6dfdab35ffdafcbf7fc996b2\";}i:1355;a:2:{s:4:\"path\";s:57:\"/web/resource/components/ueditor/dialogs/scrawl/scrawl.js\";s:8:\"checksum\";s:32:\"62ebf8e2ee772b179bf6f60ada8a5e78\";}i:1356;a:2:{s:4:\"path\";s:73:\"/web/resource/components/ueditor/dialogs/searchreplace/searchreplace.html\";s:8:\"checksum\";s:32:\"6793ba63c50af16fb02d9c7d4969853d\";}i:1357;a:2:{s:4:\"path\";s:71:\"/web/resource/components/ueditor/dialogs/searchreplace/searchreplace.js\";s:8:\"checksum\";s:32:\"56deb06158f5e87f2919ecfcdc34596e\";}i:1358;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/dialogs/snapscreen/snapscreen.html\";s:8:\"checksum\";s:32:\"766cca4f94926568567368a679fe6745\";}i:1359;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/spechars/spechars.html\";s:8:\"checksum\";s:32:\"81b73b33c0dedec8c0c6d58d410c3af0\";}i:1360;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/dialogs/spechars/spechars.js\";s:8:\"checksum\";s:32:\"90cc2b707f28198d0594c6094dcb8d1d\";}i:1361;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/table/dragicon.png\";s:8:\"checksum\";s:32:\"c622f9eb6ec86c015aae5200e5d3beee\";}i:1362;a:2:{s:4:\"path\";s:60:\"/web/resource/components/ueditor/dialogs/table/edittable.css\";s:8:\"checksum\";s:32:\"0f55ff2036ad78c559041f0ae128b17e\";}i:1363;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/dialogs/table/edittable.html\";s:8:\"checksum\";s:32:\"3cded108bdc0dd264f669d6048f441a5\";}i:1364;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/table/edittable.js\";s:8:\"checksum\";s:32:\"0251efa24c416fed2507fee05b5d9755\";}i:1365;a:2:{s:4:\"path\";s:58:\"/web/resource/components/ueditor/dialogs/table/edittd.html\";s:8:\"checksum\";s:32:\"f2a07cbb7b0563a2283361cb521e6be4\";}i:1366;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/table/edittip.html\";s:8:\"checksum\";s:32:\"97ddbc3ed404d67c8169699faf89b14a\";}i:1367;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/template/config.js\";s:8:\"checksum\";s:32:\"b6e07e95f99ee3c4019647c04e50acd8\";}i:1368;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/template/images/bg.gif\";s:8:\"checksum\";s:32:\"9b0d87d61c649566e828ac1f4a0dd595\";}i:1369;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/template/images/pre0.png\";s:8:\"checksum\";s:32:\"fb91f0dc61c7fe6907ff3e1474d30d0a\";}i:1370;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/template/images/pre1.png\";s:8:\"checksum\";s:32:\"e73bee7da98c7f1f8f56c24dc1f25025\";}i:1371;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/template/images/pre2.png\";s:8:\"checksum\";s:32:\"dde76455a773b6f56b8fcd2548f03319\";}i:1372;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/template/images/pre3.png\";s:8:\"checksum\";s:32:\"f12f7bc32ff0b6992f57c01e9a64c6d1\";}i:1373;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/template/images/pre4.png\";s:8:\"checksum\";s:32:\"762f96c0b86af5f3f8f7bc6b0c3730dc\";}i:1374;a:2:{s:4:\"path\";s:62:\"/web/resource/components/ueditor/dialogs/template/template.css\";s:8:\"checksum\";s:32:\"b2c9b26662bdd4dd2f57401073d16796\";}i:1375;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/template/template.html\";s:8:\"checksum\";s:32:\"6d1b19496d7aef646b25489c6fccc229\";}i:1376;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/dialogs/template/template.js\";s:8:\"checksum\";s:32:\"05ca4321ceec26fadcfd9b607cbfa44f\";}i:1377;a:2:{s:4:\"path\";s:60:\"/web/resource/components/ueditor/dialogs/video/images/bg.png\";s:8:\"checksum\";s:32:\"ceea3f7e3d18fbefe125725c85a57aeb\";}i:1378;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/dialogs/video/images/center_focus.jpg\";s:8:\"checksum\";s:32:\"13813ba01bf8267721a8a9d9ea56bf90\";}i:1379;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/dialogs/video/images/file-icons.gif\";s:8:\"checksum\";s:32:\"606b8e96894f15596c83333e923a3a62\";}i:1380;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/dialogs/video/images/file-icons.png\";s:8:\"checksum\";s:32:\"f43725a2e01286fd452243252df94999\";}i:1381;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/video/images/icons.gif\";s:8:\"checksum\";s:32:\"dc9038bc535e0f930306894cf24ccd4c\";}i:1382;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/video/images/icons.png\";s:8:\"checksum\";s:32:\"c9ceb83c0a247ae47f54c3e1d3cb4bac\";}i:1383;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/video/images/image.png\";s:8:\"checksum\";s:32:\"6b00566e6a7a54df0b83fe8a1d8b9427\";}i:1384;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/dialogs/video/images/left_focus.jpg\";s:8:\"checksum\";s:32:\"e6f556abcbe48e0115995bcc106a8531\";}i:1385;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/dialogs/video/images/none_focus.jpg\";s:8:\"checksum\";s:32:\"85b08393f830bcc62c1376252b807f81\";}i:1386;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/dialogs/video/images/progress.png\";s:8:\"checksum\";s:32:\"46732e763f50c337fecabcc42150d842\";}i:1387;a:2:{s:4:\"path\";s:69:\"/web/resource/components/ueditor/dialogs/video/images/right_focus.jpg\";s:8:\"checksum\";s:32:\"17e1af76de01403df026af28cc4aecda\";}i:1388;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/video/images/success.gif\";s:8:\"checksum\";s:32:\"56879ca275183bef11a8972ffbea5a6b\";}i:1389;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/video/images/success.png\";s:8:\"checksum\";s:32:\"b80425bbf53402d499d54c86ca365870\";}i:1390;a:2:{s:4:\"path\";s:56:\"/web/resource/components/ueditor/dialogs/video/video.css\";s:8:\"checksum\";s:32:\"c2740b6bd9b78d7c36f5c2888cf88663\";}i:1391;a:2:{s:4:\"path\";s:57:\"/web/resource/components/ueditor/dialogs/video/video.html\";s:8:\"checksum\";s:32:\"d2d913c265a619e932db9f551d1bf99d\";}i:1392;a:2:{s:4:\"path\";s:55:\"/web/resource/components/ueditor/dialogs/video/video.js\";s:8:\"checksum\";s:32:\"aea0dbe54565174a5c580b9e239684cd\";}i:1393;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/dialogs/webapp/webapp.html\";s:8:\"checksum\";s:32:\"07717c17dad5dddeeb3b9cd46cf178b1\";}i:1394;a:2:{s:4:\"path\";s:73:\"/web/resource/components/ueditor/dialogs/wordimage/fClipboard_ueditor.swf\";s:8:\"checksum\";s:32:\"ee7d49d00de40b9b2e0f7179f90e7dc5\";}i:1395;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/dialogs/wordimage/imageUploader.swf\";s:8:\"checksum\";s:32:\"e9397358f963ab35bb8ad2a610395212\";}i:1396;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/dialogs/wordimage/tangram.js\";s:8:\"checksum\";s:32:\"06b3fb8716b2fd8c0485c0c06420101c\";}i:1397;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/dialogs/wordimage/wordimage.html\";s:8:\"checksum\";s:32:\"9ccc8955a6a802cfb15e29238a777122\";}i:1398;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/dialogs/wordimage/wordimage.js\";s:8:\"checksum\";s:32:\"65c21036d1e7160e992a5a8e26f21b1f\";}i:1399;a:2:{s:4:\"path\";s:59:\"/web/resource/components/ueditor/lang/zh-cn/images/copy.png\";s:8:\"checksum\";s:32:\"40644255bb10f102763cbce4a3a2f7d9\";}i:1400;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/lang/zh-cn/images/localimage.png\";s:8:\"checksum\";s:32:\"c754e6ca1921cd639739499d3cf45875\";}i:1401;a:2:{s:4:\"path\";s:60:\"/web/resource/components/ueditor/lang/zh-cn/images/music.png\";s:8:\"checksum\";s:32:\"6d299069db6f24cf2ba1a90a64b49db7\";}i:1402;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/lang/zh-cn/images/upload.png\";s:8:\"checksum\";s:32:\"e0a1a76441b4da770097e1af0a650b93\";}i:1403;a:2:{s:4:\"path\";s:52:\"/web/resource/components/ueditor/lang/zh-cn/zh-cn.js\";s:8:\"checksum\";s:32:\"324d921eed88618391328e94d34f0e2b\";}i:1404;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/themes/default/css/ueditor.css\";s:8:\"checksum\";s:32:\"722f30836aa06c4fdfb5cf82724a9040\";}i:1405;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/themes/default/css/ueditor.min.css\";s:8:\"checksum\";s:32:\"a2d68a70bb9784fa800103b9123f8c68\";}i:1406;a:2:{s:4:\"path\";s:62:\"/web/resource/components/ueditor/themes/default/dialogbase.css\";s:8:\"checksum\";s:32:\"b9aa9f4f14a2e0c31672b10702d0a51c\";}i:1407;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/themes/default/images/anchor.gif\";s:8:\"checksum\";s:32:\"60a2121d55f9238f529458ee5f2e6e4e\";}i:1408;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/themes/default/images/arrow.png\";s:8:\"checksum\";s:32:\"1c5b6a4191ae6122048d44e9a40d8974\";}i:1409;a:2:{s:4:\"path\";s:69:\"/web/resource/components/ueditor/themes/default/images/arrow_down.png\";s:8:\"checksum\";s:32:\"06a16826b506f5264e29cc3c84137455\";}i:1410;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/themes/default/images/arrow_up.png\";s:8:\"checksum\";s:32:\"888bff7ff3165632455621e1b899287d\";}i:1411;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/themes/default/images/button-bg.gif\";s:8:\"checksum\";s:32:\"087d3bd9f0f43aee0adb3f39a6e5ba17\";}i:1412;a:2:{s:4:\"path\";s:71:\"/web/resource/components/ueditor/themes/default/images/cancelbutton.gif\";s:8:\"checksum\";s:32:\"f8bcaa64071e4173b7cd8daa9613ff34\";}i:1413;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/themes/default/images/charts.png\";s:8:\"checksum\";s:32:\"6555bb1e761aba45078f600eee974a66\";}i:1414;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/themes/default/images/cursor_h.gif\";s:8:\"checksum\";s:32:\"0950cf5272ea8e30635e1c27954bf104\";}i:1415;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/themes/default/images/cursor_h.png\";s:8:\"checksum\";s:32:\"d25ebcb51beae52a5a3f8c658d1c00d9\";}i:1416;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/themes/default/images/cursor_v.gif\";s:8:\"checksum\";s:32:\"fe9d01cb9e8b0cc9a34ed668f8acfb6a\";}i:1417;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/themes/default/images/cursor_v.png\";s:8:\"checksum\";s:32:\"270f36fdf73544c528fe81d5494d5c6f\";}i:1418;a:2:{s:4:\"path\";s:74:\"/web/resource/components/ueditor/themes/default/images/dialog-title-bg.png\";s:8:\"checksum\";s:32:\"1c4486a78ac7758a7ab3bd84e1a38066\";}i:1419;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/themes/default/images/filescan.png\";s:8:\"checksum\";s:32:\"b5b96bbb19c82b712538d9eba562873a\";}i:1420;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/themes/default/images/highlighted.gif\";s:8:\"checksum\";s:32:\"940250e1b9b228f11916e9591417235e\";}i:1421;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/themes/default/images/icons-all.gif\";s:8:\"checksum\";s:32:\"885afa097b98821279ea8aa3c68cc293\";}i:1422;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/themes/default/images/icons.gif\";s:8:\"checksum\";s:32:\"d6ed19f7eb5d55fc824c588465cf2647\";}i:1423;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/themes/default/images/icons.png\";s:8:\"checksum\";s:32:\"daa0e6a8c5ac7acf79aa0872c7434948\";}i:1424;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/themes/default/images/loaderror.png\";s:8:\"checksum\";s:32:\"8dc0567ff9656e738b562e50db1e5b86\";}i:1425;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/themes/default/images/loading.gif\";s:8:\"checksum\";s:32:\"9c92dd524f2abd5edc87d2d46d4a10de\";}i:1426;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/themes/default/images/lock.gif\";s:8:\"checksum\";s:32:\"b2939e1b402cc732c078ec8fd3b10974\";}i:1427;a:2:{s:4:\"path\";s:75:\"/web/resource/components/ueditor/themes/default/images/neweditor-tab-bg.png\";s:8:\"checksum\";s:32:\"4869b022d6ba52d8c4312e9f40564efd\";}i:1428;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/themes/default/images/pagebreak.gif\";s:8:\"checksum\";s:32:\"59caae8ab95b2eeba9444ba219446c75\";}i:1429;a:2:{s:4:\"path\";s:64:\"/web/resource/components/ueditor/themes/default/images/scale.png\";s:8:\"checksum\";s:32:\"44274c1e95b775c004f110f84db1c058\";}i:1430;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/themes/default/images/sortable.png\";s:8:\"checksum\";s:32:\"297a921544f1f9518b1180bb74317c9a\";}i:1431;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/themes/default/images/spacer.gif\";s:8:\"checksum\";s:32:\"df3e567d6f16d040326c7a0ea29a4f41\";}i:1432;a:2:{s:4:\"path\";s:69:\"/web/resource/components/ueditor/themes/default/images/sparator_v.png\";s:8:\"checksum\";s:32:\"9d34b0cc46ae6d88e3c7183933be762f\";}i:1433;a:2:{s:4:\"path\";s:75:\"/web/resource/components/ueditor/themes/default/images/table-cell-align.png\";s:8:\"checksum\";s:32:\"676456b57740b2a325b23a54902d21a6\";}i:1434;a:2:{s:4:\"path\";s:78:\"/web/resource/components/ueditor/themes/default/images/tangram-colorpicker.png\";s:8:\"checksum\";s:32:\"c58df79dc817794353a65858035b71b6\";}i:1435;a:2:{s:4:\"path\";s:69:\"/web/resource/components/ueditor/themes/default/images/toolbar_bg.png\";s:8:\"checksum\";s:32:\"fc2b48359037a6f185634fbe31fcb1ae\";}i:1436;a:2:{s:4:\"path\";s:72:\"/web/resource/components/ueditor/themes/default/images/unhighlighted.gif\";s:8:\"checksum\";s:32:\"ccba56505949f6d112ff6127d9b7eef0\";}i:1437;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/themes/default/images/upload.png\";s:8:\"checksum\";s:32:\"e0a1a76441b4da770097e1af0a650b93\";}i:1438;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/themes/default/images/videologo.gif\";s:8:\"checksum\";s:32:\"f857581368e75fcada43649be5de483b\";}i:1439;a:2:{s:4:\"path\";s:63:\"/web/resource/components/ueditor/themes/default/images/word.gif\";s:8:\"checksum\";s:32:\"0bc553bf91fd21796d9444b4b444f899\";}i:1440;a:2:{s:4:\"path\";s:68:\"/web/resource/components/ueditor/themes/default/images/wordpaste.png\";s:8:\"checksum\";s:32:\"c78d50851eeb7922d57ef3281f676dd1\";}i:1441;a:2:{s:4:\"path\";s:50:\"/web/resource/components/ueditor/themes/iframe.css\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:1442;a:2:{s:4:\"path\";s:72:\"/web/resource/components/ueditor/third-party/SyntaxHighlighter/shCore.js\";s:8:\"checksum\";s:32:\"8e8a57ddff2ea083a32692baad1b9c48\";}i:1443;a:2:{s:4:\"path\";s:80:\"/web/resource/components/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css\";s:8:\"checksum\";s:32:\"382ffacecd8dc2b26565f4812dbd0c10\";}i:1444;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/third-party/codemirror/codemirror.css\";s:8:\"checksum\";s:32:\"0b2db9935ef4c8ba93d852d69008aa59\";}i:1445;a:2:{s:4:\"path\";s:69:\"/web/resource/components/ueditor/third-party/codemirror/codemirror.js\";s:8:\"checksum\";s:32:\"caadadf17ad7a5372a9cdfa6a1d61d58\";}i:1446;a:2:{s:4:\"path\";s:84:\"/web/resource/components/ueditor/third-party/highcharts/adapters/mootools-adapter.js\";s:8:\"checksum\";s:32:\"07a2c43fd7c15beece8d2caacce02c9b\";}i:1447;a:2:{s:4:\"path\";s:88:\"/web/resource/components/ueditor/third-party/highcharts/adapters/mootools-adapter.src.js\";s:8:\"checksum\";s:32:\"b8821728f1c46598bd137853247a7752\";}i:1448;a:2:{s:4:\"path\";s:85:\"/web/resource/components/ueditor/third-party/highcharts/adapters/prototype-adapter.js\";s:8:\"checksum\";s:32:\"4e3ae4a8b279691ce377cee62af32fac\";}i:1449;a:2:{s:4:\"path\";s:89:\"/web/resource/components/ueditor/third-party/highcharts/adapters/prototype-adapter.src.js\";s:8:\"checksum\";s:32:\"0808035c5bd2354d014947130aa7e995\";}i:1450;a:2:{s:4:\"path\";s:88:\"/web/resource/components/ueditor/third-party/highcharts/adapters/standalone-framework.js\";s:8:\"checksum\";s:32:\"6bd0069877571a6a6d8c87abdd9d36dd\";}i:1451;a:2:{s:4:\"path\";s:92:\"/web/resource/components/ueditor/third-party/highcharts/adapters/standalone-framework.src.js\";s:8:\"checksum\";s:32:\"ad1e86b33b70fa2ab4827dafc0de3c4c\";}i:1452;a:2:{s:4:\"path\";s:74:\"/web/resource/components/ueditor/third-party/highcharts/highcharts-more.js\";s:8:\"checksum\";s:32:\"46bb3a1bd2bbbf270f870ee0d284f3fe\";}i:1453;a:2:{s:4:\"path\";s:78:\"/web/resource/components/ueditor/third-party/highcharts/highcharts-more.src.js\";s:8:\"checksum\";s:32:\"f1a879efea50341d8a9f93219a7be609\";}i:1454;a:2:{s:4:\"path\";s:69:\"/web/resource/components/ueditor/third-party/highcharts/highcharts.js\";s:8:\"checksum\";s:32:\"0c74f44e4a70ac9fd6a4f580c3bbc06f\";}i:1455;a:2:{s:4:\"path\";s:73:\"/web/resource/components/ueditor/third-party/highcharts/highcharts.src.js\";s:8:\"checksum\";s:32:\"ec4ff4710098553b3842c1076f4a711a\";}i:1456;a:2:{s:4:\"path\";s:78:\"/web/resource/components/ueditor/third-party/highcharts/modules/annotations.js\";s:8:\"checksum\";s:32:\"5b7c4ccb68c29e127903b8435b9252a9\";}i:1457;a:2:{s:4:\"path\";s:82:\"/web/resource/components/ueditor/third-party/highcharts/modules/annotations.src.js\";s:8:\"checksum\";s:32:\"9fefe161a06f06d3725c3815d2f05c99\";}i:1458;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/third-party/highcharts/modules/canvas-tools.js\";s:8:\"checksum\";s:32:\"bc9f691a31b98b70169df4ae0d002541\";}i:1459;a:2:{s:4:\"path\";s:83:\"/web/resource/components/ueditor/third-party/highcharts/modules/canvas-tools.src.js\";s:8:\"checksum\";s:32:\"2ee61b6cd81d77700d7f7f4e30427b8b\";}i:1460;a:2:{s:4:\"path\";s:71:\"/web/resource/components/ueditor/third-party/highcharts/modules/data.js\";s:8:\"checksum\";s:32:\"cdec3110ca0af981f050699664a66486\";}i:1461;a:2:{s:4:\"path\";s:75:\"/web/resource/components/ueditor/third-party/highcharts/modules/data.src.js\";s:8:\"checksum\";s:32:\"493110508dcd7a02913ad61e8773ca4e\";}i:1462;a:2:{s:4:\"path\";s:76:\"/web/resource/components/ueditor/third-party/highcharts/modules/drilldown.js\";s:8:\"checksum\";s:32:\"f2d705a5f6a52cd065c4e8b1c5e2e3a2\";}i:1463;a:2:{s:4:\"path\";s:80:\"/web/resource/components/ueditor/third-party/highcharts/modules/drilldown.src.js\";s:8:\"checksum\";s:32:\"58a74721bd4b8ee3c79d6e38c712be61\";}i:1464;a:2:{s:4:\"path\";s:76:\"/web/resource/components/ueditor/third-party/highcharts/modules/exporting.js\";s:8:\"checksum\";s:32:\"8b2991d423f2923c708d53d90578f88a\";}i:1465;a:2:{s:4:\"path\";s:80:\"/web/resource/components/ueditor/third-party/highcharts/modules/exporting.src.js\";s:8:\"checksum\";s:32:\"cca7f6599a9c8c6014d54b442b43ef3d\";}i:1466;a:2:{s:4:\"path\";s:73:\"/web/resource/components/ueditor/third-party/highcharts/modules/funnel.js\";s:8:\"checksum\";s:32:\"2f356395e90c37e7eb6f6c34a61d1fff\";}i:1467;a:2:{s:4:\"path\";s:77:\"/web/resource/components/ueditor/third-party/highcharts/modules/funnel.src.js\";s:8:\"checksum\";s:32:\"7d359c5b9898996f2ad6da330860df69\";}i:1468;a:2:{s:4:\"path\";s:74:\"/web/resource/components/ueditor/third-party/highcharts/modules/heatmap.js\";s:8:\"checksum\";s:32:\"1a647de9c94de52d8368c672a97bd562\";}i:1469;a:2:{s:4:\"path\";s:78:\"/web/resource/components/ueditor/third-party/highcharts/modules/heatmap.src.js\";s:8:\"checksum\";s:32:\"95fbc93168f9b21942eed575c78475c9\";}i:1470;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/third-party/highcharts/modules/map.js\";s:8:\"checksum\";s:32:\"ea524019e6c1d7d974b0df745e6ba204\";}i:1471;a:2:{s:4:\"path\";s:74:\"/web/resource/components/ueditor/third-party/highcharts/modules/map.src.js\";s:8:\"checksum\";s:32:\"a78f0ecfc897a7348d4e96f319efec51\";}i:1472;a:2:{s:4:\"path\";s:85:\"/web/resource/components/ueditor/third-party/highcharts/modules/no-data-to-display.js\";s:8:\"checksum\";s:32:\"467cc4054d7d1cd827a35b063176aa42\";}i:1473;a:2:{s:4:\"path\";s:89:\"/web/resource/components/ueditor/third-party/highcharts/modules/no-data-to-display.src.js\";s:8:\"checksum\";s:32:\"b4ddf1216a751d6af3a1e5824f2e182d\";}i:1474;a:2:{s:4:\"path\";s:75:\"/web/resource/components/ueditor/third-party/highcharts/themes/dark-blue.js\";s:8:\"checksum\";s:32:\"5d3b15bcaba2f485d199b582f5a3193c\";}i:1475;a:2:{s:4:\"path\";s:76:\"/web/resource/components/ueditor/third-party/highcharts/themes/dark-green.js\";s:8:\"checksum\";s:32:\"734f6e4ead71b5178dea62eaf3db0bd1\";}i:1476;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/third-party/highcharts/themes/gray.js\";s:8:\"checksum\";s:32:\"21a76bfe5e3132fa553b95b8892a616b\";}i:1477;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/third-party/highcharts/themes/grid.js\";s:8:\"checksum\";s:32:\"cb24059c29008fdc66d64da8473455a3\";}i:1478;a:2:{s:4:\"path\";s:71:\"/web/resource/components/ueditor/third-party/highcharts/themes/skies.js\";s:8:\"checksum\";s:32:\"133590f6993355cc62e1226122d5a129\";}i:1479;a:2:{s:4:\"path\";s:61:\"/web/resource/components/ueditor/third-party/jquery-1.10.2.js\";s:8:\"checksum\";s:32:\"7b89c0e044ada39b40994cccce1a3c3a\";}i:1480;a:2:{s:4:\"path\";s:65:\"/web/resource/components/ueditor/third-party/jquery-1.10.2.min.js\";s:8:\"checksum\";s:32:\"11468602df014a21b203dc9bcd84d369\";}i:1481;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/third-party/jquery-1.10.2.min.map\";s:8:\"checksum\";s:32:\"6c3ccfc221d36777d383b6e04d0b8af9\";}i:1482;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/third-party/video-js/font/vjs.eot\";s:8:\"checksum\";s:32:\"f9c63739c4e5163ab00e257bd4e8a461\";}i:1483;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/third-party/video-js/font/vjs.svg\";s:8:\"checksum\";s:32:\"82e8150a6a79c2cbf803ff38782b2cd6\";}i:1484;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/third-party/video-js/font/vjs.ttf\";s:8:\"checksum\";s:32:\"600c44c3d87f2893277dd93bf02b3e50\";}i:1485;a:2:{s:4:\"path\";s:67:\"/web/resource/components/ueditor/third-party/video-js/font/vjs.woff\";s:8:\"checksum\";s:32:\"d2c9d1cc2171bd79a1bcf6ba14f01585\";}i:1486;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/third-party/video-js/video-js.css\";s:8:\"checksum\";s:32:\"2ee033c947d3c42c411fccee192b41c8\";}i:1487;a:2:{s:4:\"path\";s:70:\"/web/resource/components/ueditor/third-party/video-js/video-js.min.css\";s:8:\"checksum\";s:32:\"2ee033c947d3c42c411fccee192b41c8\";}i:1488;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/third-party/video-js/video-js.swf\";s:8:\"checksum\";s:32:\"968d0b018b12153f0f0f2a736273ef5e\";}i:1489;a:2:{s:4:\"path\";s:66:\"/web/resource/components/ueditor/third-party/video-js/video.dev.js\";s:8:\"checksum\";s:32:\"9699c739a305abd4f540d2bf39ac1638\";}i:1490;a:2:{s:4:\"path\";s:62:\"/web/resource/components/ueditor/third-party/video-js/video.js\";s:8:\"checksum\";s:32:\"be2ae951b32758939ea296e3331b512c\";}i:1491;a:2:{s:4:\"path\";s:69:\"/web/resource/components/ueditor/third-party/webuploader/Uploader.swf\";s:8:\"checksum\";s:32:\"501a397c5bac2b02206a4fc855875136\";}i:1492;a:2:{s:4:\"path\";s:72:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.css\";s:8:\"checksum\";s:32:\"08d9db42cc935a2fae0ffa79c40ff2bb\";}i:1493;a:2:{s:4:\"path\";s:78:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.custom.js\";s:8:\"checksum\";s:32:\"336a7e8012fc2235d0d2287ebccdf5bd\";}i:1494;a:2:{s:4:\"path\";s:82:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.custom.min.js\";s:8:\"checksum\";s:32:\"8a33b8442ca671c7e0c3d4af2ef489e3\";}i:1495;a:2:{s:4:\"path\";s:81:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.flashonly.js\";s:8:\"checksum\";s:32:\"ae716f602a5dff4435368da4f630a2d9\";}i:1496;a:2:{s:4:\"path\";s:85:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.flashonly.min.js\";s:8:\"checksum\";s:32:\"cd17266d4a119fb9df3d23eeb0a30651\";}i:1497;a:2:{s:4:\"path\";s:81:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.html5only.js\";s:8:\"checksum\";s:32:\"d656db92249c6b1d8978b98cf19607f9\";}i:1498;a:2:{s:4:\"path\";s:85:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.html5only.min.js\";s:8:\"checksum\";s:32:\"1c4df3b659bfc20cd8423d9280322880\";}i:1499;a:2:{s:4:\"path\";s:71:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.js\";s:8:\"checksum\";s:32:\"460dad632c58dfac9cb4e235668ae538\";}i:1500;a:2:{s:4:\"path\";s:75:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.min.js\";s:8:\"checksum\";s:32:\"70a64187b1a642c2ce4230b037467cac\";}i:1501;a:2:{s:4:\"path\";s:84:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.withoutimage.js\";s:8:\"checksum\";s:32:\"4acf5d138ee0b30a2bd81883ed90be3c\";}i:1502;a:2:{s:4:\"path\";s:88:\"/web/resource/components/ueditor/third-party/webuploader/webuploader.withoutimage.min.js\";s:8:\"checksum\";s:32:\"fd7bce1c63b7ca2070d3c6a8686551ee\";}i:1503;a:2:{s:4:\"path\";s:75:\"/web/resource/components/ueditor/third-party/zeroclipboard/ZeroClipboard.js\";s:8:\"checksum\";s:32:\"16f7eff9e7636ef20024e4d73c02dd9f\";}i:1504;a:2:{s:4:\"path\";s:79:\"/web/resource/components/ueditor/third-party/zeroclipboard/ZeroClipboard.min.js\";s:8:\"checksum\";s:32:\"8dd802b9b359ca06fc0fadf1bae0dbc8\";}i:1505;a:2:{s:4:\"path\";s:76:\"/web/resource/components/ueditor/third-party/zeroclipboard/ZeroClipboard.swf\";s:8:\"checksum\";s:32:\"cc114c6d12a97635096956aab117b4d4\";}i:1506;a:2:{s:4:\"path\";s:51:\"/web/resource/components/ueditor/ueditor.all.min.js\";s:8:\"checksum\";s:32:\"8add657e2620909c5defdc35be9eb6aa\";}i:1507;a:2:{s:4:\"path\";s:50:\"/web/resource/components/ueditor/ueditor.config.js\";s:8:\"checksum\";s:32:\"122aaebc38e28500b2c9947675f30184\";}i:1508;a:2:{s:4:\"path\";s:53:\"/web/resource/components/ueditor/ueditor.parse.min.js\";s:8:\"checksum\";s:32:\"1a763b68a1a7b74fe2212489eecb1480\";}i:1509;a:2:{s:4:\"path\";s:46:\"/web/resource/components/webuploader/README.md\";s:8:\"checksum\";s:32:\"e1a6650d6392b0d22df0fd8a15f761ba\";}i:1510;a:2:{s:4:\"path\";s:49:\"/web/resource/components/webuploader/Uploader.swf\";s:8:\"checksum\";s:32:\"10d57044c2894969e68235057ff812eb\";}i:1511;a:2:{s:4:\"path\";s:43:\"/web/resource/components/webuploader/bg.png\";s:8:\"checksum\";s:32:\"8ddad23ce6dcc70bf111b23ae022f10c\";}i:1512;a:2:{s:4:\"path\";s:46:\"/web/resource/components/webuploader/icons.png\";s:8:\"checksum\";s:32:\"c9ceb83c0a247ae47f54c3e1d3cb4bac\";}i:1513;a:2:{s:4:\"path\";s:46:\"/web/resource/components/webuploader/image.png\";s:8:\"checksum\";s:32:\"6b00566e6a7a54df0b83fe8a1d8b9427\";}i:1514;a:2:{s:4:\"path\";s:49:\"/web/resource/components/webuploader/progress.png\";s:8:\"checksum\";s:32:\"46732e763f50c337fecabcc42150d842\";}i:1515;a:2:{s:4:\"path\";s:46:\"/web/resource/components/webuploader/style.css\";s:8:\"checksum\";s:32:\"78aa236e0491de60d69963bba2d3fbe4\";}i:1516;a:2:{s:4:\"path\";s:48:\"/web/resource/components/webuploader/success.png\";s:8:\"checksum\";s:32:\"b80425bbf53402d499d54c86ca365870\";}i:1517;a:2:{s:4:\"path\";s:52:\"/web/resource/components/webuploader/webuploader.css\";s:8:\"checksum\";s:32:\"fe5fb30c6bad8339db888aebbe6c5618\";}i:1518;a:2:{s:4:\"path\";s:55:\"/web/resource/components/webuploader/webuploader.min.js\";s:8:\"checksum\";s:32:\"913d9b6693c1a5d521978ba909694577\";}i:1519;a:2:{s:4:\"path\";s:48:\"/web/resource/components/zclip/ZeroClipboard.swf\";s:8:\"checksum\";s:32:\"9f4401cdc4405d0730362256b4c04cc0\";}i:1520;a:2:{s:4:\"path\";s:50:\"/web/resource/components/zclip/jquery.zclip.min.js\";s:8:\"checksum\";s:32:\"ed3ba6e9aeed8aa665844e5ade17576e\";}i:1521;a:2:{s:4:\"path\";s:25:\"/web/resource/css/app.css\";s:8:\"checksum\";s:32:\"2651877a691ef23f88d58dff67f61518\";}i:1522;a:2:{s:4:\"path\";s:35:\"/web/resource/css/bootstrap.min.css\";s:8:\"checksum\";s:32:\"aa1b2c176f4704d64f4031a51806fb20\";}i:1523;a:2:{s:4:\"path\";s:28:\"/web/resource/css/common.css\";s:8:\"checksum\";s:32:\"22a31cc19c5aa348580356a9c248a8ad\";}i:1524;a:2:{s:4:\"path\";s:35:\"/web/resource/fonts/FontAwesome.otf\";s:8:\"checksum\";s:32:\"0b462f5cc07779cab3bef252c0271f2b\";}i:1525;a:2:{s:4:\"path\";s:31:\"/web/resource/fonts/captcha.ttf\";s:8:\"checksum\";s:32:\"0d4b2591249119aa691d112230ff337f\";}i:1526;a:2:{s:4:\"path\";s:43:\"/web/resource/fonts/fontawesome-webfont.eot\";s:8:\"checksum\";s:32:\"f7c2b4b747b1a225eb8dee034134a1b0\";}i:1527;a:2:{s:4:\"path\";s:43:\"/web/resource/fonts/fontawesome-webfont.svg\";s:8:\"checksum\";s:32:\"139e74e298bca37a25d2bd5868552e04\";}i:1528;a:2:{s:4:\"path\";s:43:\"/web/resource/fonts/fontawesome-webfont.ttf\";s:8:\"checksum\";s:32:\"706450d7bba6374ca02fe167d86685cb\";}i:1529;a:2:{s:4:\"path\";s:44:\"/web/resource/fonts/fontawesome-webfont.woff\";s:8:\"checksum\";s:32:\"d9ee23d59d0e0e727b51368b458a0bff\";}i:1530;a:2:{s:4:\"path\";s:45:\"/web/resource/fonts/fontawesome-webfont.woff2\";s:8:\"checksum\";s:32:\"97493d3f11c0a3bd5cbd959f5d19b699\";}i:1531;a:2:{s:4:\"path\";s:52:\"/web/resource/fonts/glyphicons-halflings-regular.eot\";s:8:\"checksum\";s:32:\"7ad17c6085dee9a33787bac28fb23d46\";}i:1532;a:2:{s:4:\"path\";s:52:\"/web/resource/fonts/glyphicons-halflings-regular.svg\";s:8:\"checksum\";s:32:\"ff423a4251cf2986555523dfe315c42b\";}i:1533;a:2:{s:4:\"path\";s:52:\"/web/resource/fonts/glyphicons-halflings-regular.ttf\";s:8:\"checksum\";s:32:\"e49d52e74b7689a0727def99da31f3eb\";}i:1534;a:2:{s:4:\"path\";s:53:\"/web/resource/fonts/glyphicons-halflings-regular.woff\";s:8:\"checksum\";s:32:\"68ed1dac06bf0409c18ae7bc62889170\";}i:1535;a:2:{s:4:\"path\";s:31:\"/web/resource/fonts/we7icon.eot\";s:8:\"checksum\";s:32:\"d4585e0510371df80d6dd813cbc8dbd8\";}i:1536;a:2:{s:4:\"path\";s:31:\"/web/resource/fonts/we7icon.svg\";s:8:\"checksum\";s:32:\"5cc49baaba8f932b26aec703847fd5a7\";}i:1537;a:2:{s:4:\"path\";s:31:\"/web/resource/fonts/we7icon.ttf\";s:8:\"checksum\";s:32:\"ba3e04ba42f52615bbb34a1440d93468\";}i:1538;a:2:{s:4:\"path\";s:32:\"/web/resource/fonts/we7icon.woff\";s:8:\"checksum\";s:32:\"118fbdbff7f6590143396015d15782f6\";}i:1539;a:2:{s:4:\"path\";s:33:\"/web/resource/fonts/we7icon.woff2\";s:8:\"checksum\";s:32:\"cc3b5064d71a3dbb913c9a5f641063a6\";}i:1540;a:2:{s:4:\"path\";s:29:\"/web/resource/fonts/wxapp.eot\";s:8:\"checksum\";s:32:\"8a1dd8f1c269833589123f687a2c804a\";}i:1541;a:2:{s:4:\"path\";s:29:\"/web/resource/fonts/wxapp.svg\";s:8:\"checksum\";s:32:\"55cbaa360a7894fc56bd97f216702a95\";}i:1542;a:2:{s:4:\"path\";s:29:\"/web/resource/fonts/wxapp.ttf\";s:8:\"checksum\";s:32:\"37c3a814dd74fc6978c496394bbc8daa\";}i:1543;a:2:{s:4:\"path\";s:30:\"/web/resource/fonts/wxapp.woff\";s:8:\"checksum\";s:32:\"5e24a5eaa35131d113d61bc747a02964\";}i:1544;a:2:{s:4:\"path\";s:41:\"/web/resource/home/css/chunk-17fcbe22.css\";s:8:\"checksum\";s:32:\"31ab0ec3b18319fecf57b2f233a0dc83\";}i:1545;a:2:{s:4:\"path\";s:41:\"/web/resource/home/css/chunk-225ab4a4.css\";s:8:\"checksum\";s:32:\"95e0e01028604f3e781ba3848eb9a4cf\";}i:1546;a:2:{s:4:\"path\";s:41:\"/web/resource/home/css/chunk-43bc671b.css\";s:8:\"checksum\";s:32:\"482a6466f081fcc06316c45c962357b0\";}i:1547;a:2:{s:4:\"path\";s:41:\"/web/resource/home/css/chunk-a7ffc2ce.css\";s:8:\"checksum\";s:32:\"0f3eeb666e359be06d7f6665b60de433\";}i:1548;a:2:{s:4:\"path\";s:31:\"/web/resource/home/css/star.css\";s:8:\"checksum\";s:32:\"cfdb8d2f2a6a8dbbafbddd51680c1669\";}i:1549;a:2:{s:4:\"path\";s:34:\"/web/resource/home/css/star.css.gz\";s:8:\"checksum\";s:32:\"aae5ee829db754e22655138410b82298\";}i:1550;a:2:{s:4:\"path\";s:42:\"/web/resource/home/fonts/element-icons.ttf\";s:8:\"checksum\";s:32:\"732389ded34cb9c52dd88271f1345af9\";}i:1551;a:2:{s:4:\"path\";s:45:\"/web/resource/home/fonts/element-icons.ttf.gz\";s:8:\"checksum\";s:32:\"d60321ec24b7b62ae9db703e34a276c7\";}i:1552;a:2:{s:4:\"path\";s:43:\"/web/resource/home/fonts/element-icons.woff\";s:8:\"checksum\";s:32:\"535877f50039c0cb49a6196a5b7517cd\";}i:1553;a:2:{s:4:\"path\";s:44:\"/web/resource/home/js/chunk-17fcbe22.star.js\";s:8:\"checksum\";s:32:\"ced7420914ac95942c15e716af8ef495\";}i:1554;a:2:{s:4:\"path\";s:44:\"/web/resource/home/js/chunk-225ab4a4.star.js\";s:8:\"checksum\";s:32:\"51b14717152550c9ed61800ef6623273\";}i:1555;a:2:{s:4:\"path\";s:47:\"/web/resource/home/js/chunk-225ab4a4.star.js.gz\";s:8:\"checksum\";s:32:\"ca288307247c638835941a7604f16f2a\";}i:1556;a:2:{s:4:\"path\";s:44:\"/web/resource/home/js/chunk-43bc671b.star.js\";s:8:\"checksum\";s:32:\"aacb5992db5f5b79ee26bf051a76c8c7\";}i:1557;a:2:{s:4:\"path\";s:47:\"/web/resource/home/js/chunk-43bc671b.star.js.gz\";s:8:\"checksum\";s:32:\"ee87be04935faf7667cc6b94d3bd3167\";}i:1558;a:2:{s:4:\"path\";s:44:\"/web/resource/home/js/chunk-a7ffc2ce.star.js\";s:8:\"checksum\";s:32:\"fab51e89fecc677f456545ba6c60edb4\";}i:1559;a:2:{s:4:\"path\";s:43:\"/web/resource/home/js/chunk-vendors.star.js\";s:8:\"checksum\";s:32:\"e83a716d72c686a96017e9800e47d9a2\";}i:1560;a:2:{s:4:\"path\";s:46:\"/web/resource/home/js/chunk-vendors.star.js.gz\";s:8:\"checksum\";s:32:\"b1afa518d526cb4cf6f2c9eb172b3193\";}i:1561;a:2:{s:4:\"path\";s:34:\"/web/resource/home/js/star.star.js\";s:8:\"checksum\";s:32:\"46ce87f68ccf756c9ff90fe369b276c8\";}i:1562;a:2:{s:4:\"path\";s:37:\"/web/resource/home/js/star.star.js.gz\";s:8:\"checksum\";s:32:\"148235972d481a86844254955760b7d8\";}i:1563;a:2:{s:4:\"path\";s:27:\"/web/resource/images/11.png\";s:8:\"checksum\";s:32:\"fd3b9c6c67863fe28cffddfdf4591e6a\";}i:1564;a:2:{s:4:\"path\";s:28:\"/web/resource/images/172.png\";s:8:\"checksum\";s:32:\"df5bfa5d06114e2d5df8c6c463d225e5\";}i:1565;a:2:{s:4:\"path\";s:28:\"/web/resource/images/173.png\";s:8:\"checksum\";s:32:\"fcb124f252e9ae0f4f64a8f856bb9699\";}i:1566;a:2:{s:4:\"path\";s:28:\"/web/resource/images/176.png\";s:8:\"checksum\";s:32:\"f4f97b1680afe9f567fd53898ac1d367\";}i:1567;a:2:{s:4:\"path\";s:28:\"/web/resource/images/189.png\";s:8:\"checksum\";s:32:\"4cc528e537064af3bf12ed46a0ed76a0\";}i:1568;a:2:{s:4:\"path\";s:26:\"/web/resource/images/9.png\";s:8:\"checksum\";s:32:\"0d2d6a74bec0f5e75cae65915812b620\";}i:1569;a:2:{s:4:\"path\";s:31:\"/web/resource/images/app/01.png\";s:8:\"checksum\";s:32:\"820a50657160cba28899d9d92e6bf6f0\";}i:1570;a:2:{s:4:\"path\";s:34:\"/web/resource/images/app/01_on.png\";s:8:\"checksum\";s:32:\"25a8c33656d9b85d5c9061ed5a1ea27e\";}i:1571;a:2:{s:4:\"path\";s:31:\"/web/resource/images/app/02.png\";s:8:\"checksum\";s:32:\"b5b7b2345a0461a6687841961d014ce0\";}i:1572;a:2:{s:4:\"path\";s:34:\"/web/resource/images/app/02_on.png\";s:8:\"checksum\";s:32:\"5443a733b1ee00fa216e8b5cf692d23a\";}i:1573;a:2:{s:4:\"path\";s:31:\"/web/resource/images/app/03.png\";s:8:\"checksum\";s:32:\"c148dceede71ee11cf56ee7fbae1ec91\";}i:1574;a:2:{s:4:\"path\";s:34:\"/web/resource/images/app/03_on.png\";s:8:\"checksum\";s:32:\"9987612a9024fe95d1ee24f10c3b35ce\";}i:1575;a:2:{s:4:\"path\";s:37:\"/web/resource/images/app/adImg-lg.jpg\";s:8:\"checksum\";s:32:\"15b96aa017f66319eff4e239e5bb77e1\";}i:1576;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/adImg-separate.jpg\";s:8:\"checksum\";s:32:\"3feaf9bda3255a780846cdbb939fae37\";}i:1577;a:2:{s:4:\"path\";s:49:\"/web/resource/images/app/animation-icons-gray.png\";s:8:\"checksum\";s:32:\"65aa15b3dcca35fbc88ae7351cba40da\";}i:1578;a:2:{s:4:\"path\";s:44:\"/web/resource/images/app/animation-icons.png\";s:8:\"checksum\";s:32:\"9abf9929db660bce73a7d13ba27f234b\";}i:1579;a:2:{s:4:\"path\";s:36:\"/web/resource/images/app/bar-1px.png\";s:8:\"checksum\";s:32:\"4999376c7fb0d15f412451a4c808fa29\";}i:1580;a:2:{s:4:\"path\";s:41:\"/web/resource/images/app/bg-card-logo.png\";s:8:\"checksum\";s:32:\"2532686089402dc31f91735550b7aa6e\";}i:1581;a:2:{s:4:\"path\";s:38:\"/web/resource/images/app/centerbtn.png\";s:8:\"checksum\";s:32:\"63062127f7913e511ea6b23aec469653\";}i:1582;a:2:{s:4:\"path\";s:37:\"/web/resource/images/app/goods-lg.jpg\";s:8:\"checksum\";s:32:\"93d97ec13c509e1f30ea01abe92cc840\";}i:1583;a:2:{s:4:\"path\";s:41:\"/web/resource/images/app/green_player.gif\";s:8:\"checksum\";s:32:\"f933875fdc046d3fa8503d2cc5e435ca\";}i:1584;a:2:{s:4:\"path\";s:36:\"/web/resource/images/app/head-bg.png\";s:8:\"checksum\";s:32:\"0bc859f45da9b3f3e7b1b2178883d408\";}i:1585;a:2:{s:4:\"path\";s:36:\"/web/resource/images/app/home-bg.jpg\";s:8:\"checksum\";s:32:\"5522f55c7e51658a4c4432d5782f3655\";}i:1586;a:2:{s:4:\"path\";s:47:\"/web/resource/images/app/homepage-header-bg.jpg\";s:8:\"checksum\";s:32:\"b910b4120e25444f8893af837abd5178\";}i:1587;a:2:{s:4:\"path\";s:40:\"/web/resource/images/app/iphone_head.png\";s:8:\"checksum\";s:32:\"2bad4c2f26897056ee9c7a74e672d838\";}i:1588;a:2:{s:4:\"path\";s:34:\"/web/resource/images/app/level.jpg\";s:8:\"checksum\";s:32:\"7cde8c82df16d88462515fbcaca23db9\";}i:1589;a:2:{s:4:\"path\";s:40:\"/web/resource/images/app/mouserotate.png\";s:8:\"checksum\";s:32:\"70a3d7fa5c299db2900620af50ae4dc8\";}i:1590;a:2:{s:4:\"path\";s:37:\"/web/resource/images/app/nav5back.png\";s:8:\"checksum\";s:32:\"1e3ec8cea5e91540bb6c84288b7f51f0\";}i:1591;a:2:{s:4:\"path\";s:35:\"/web/resource/images/app/player.gif\";s:8:\"checksum\";s:32:\"2b211b93dfb049ac4c4b2ee368b9bd85\";}i:1592;a:2:{s:4:\"path\";s:37:\"/web/resource/images/app/scan-pay.png\";s:8:\"checksum\";s:32:\"3eda7646495c793ec616cf15a20d5339\";}i:1593;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-00.svg\";s:8:\"checksum\";s:32:\"1461f58b10e1d49f04d9d014931e7c9f\";}i:1594;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-01.svg\";s:8:\"checksum\";s:32:\"07f4480f3080f115b144069052d7cda8\";}i:1595;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-02.svg\";s:8:\"checksum\";s:32:\"c1af5f003bf044e65454dc1ef2af484a\";}i:1596;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-03.svg\";s:8:\"checksum\";s:32:\"ff5c0305a85ed32d946531ea9260e0ee\";}i:1597;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-04.svg\";s:8:\"checksum\";s:32:\"d0530913f44d3d17b024dbe4cbc80a0a\";}i:1598;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-05.svg\";s:8:\"checksum\";s:32:\"7660aa4eba8b4ac7924b3dee862f1ad5\";}i:1599;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-06.svg\";s:8:\"checksum\";s:32:\"a6674986bc4c3bca11a06a268d62a94f\";}i:1600;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-07.svg\";s:8:\"checksum\";s:32:\"4b07f427094e3461536ff55db4765b8c\";}i:1601;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-08.svg\";s:8:\"checksum\";s:32:\"948c1130278aba2799cecfaf3c3af1d0\";}i:1602;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-09.svg\";s:8:\"checksum\";s:32:\"6a7bc366c43ee5c7e390fd89e7d125f4\";}i:1603;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-10.svg\";s:8:\"checksum\";s:32:\"bf55af6d295d89123d95980201dddb1f\";}i:1604;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-11.svg\";s:8:\"checksum\";s:32:\"7573a874297c365e1a74db8d4674b345\";}i:1605;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-12.svg\";s:8:\"checksum\";s:32:\"c0deb7032d6f5f8429abe5bf0f6517f0\";}i:1606;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-13.svg\";s:8:\"checksum\";s:32:\"292eb08428f5732dc71af1a3eed87375\";}i:1607;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-14.svg\";s:8:\"checksum\";s:32:\"0ce6242d447bfd45877959d3e3dca4ba\";}i:1608;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-15.svg\";s:8:\"checksum\";s:32:\"79603e873a4bfccc8fa479c137187333\";}i:1609;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-16.svg\";s:8:\"checksum\";s:32:\"4cdaa6cd85209eed779616f0969c38b1\";}i:1610;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-17.svg\";s:8:\"checksum\";s:32:\"e813767118b1810d75761b5e84c3b661\";}i:1611;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-18.svg\";s:8:\"checksum\";s:32:\"0819332c1b4829403055086b2e7e3cf4\";}i:1612;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-19.svg\";s:8:\"checksum\";s:32:\"991480054cf989c55f6580c0cb2dd6ca\";}i:1613;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-20.svg\";s:8:\"checksum\";s:32:\"9f29608cf33f9ce7a0f5e14de1cec853\";}i:1614;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-21.svg\";s:8:\"checksum\";s:32:\"c317e55f054e9027578e96fe729766b8\";}i:1615;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-22.svg\";s:8:\"checksum\";s:32:\"e2d8f4587c519ffcd2de2176ae1e9519\";}i:1616;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-23.svg\";s:8:\"checksum\";s:32:\"46ec35439cfe04f68c15ba56ac0ee9b6\";}i:1617;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-24.svg\";s:8:\"checksum\";s:32:\"3f99805775ee45c7eb567d7490b29ab7\";}i:1618;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-25.svg\";s:8:\"checksum\";s:32:\"c27a12df4eb0a7b2061da9dc7be18b43\";}i:1619;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-26.svg\";s:8:\"checksum\";s:32:\"90bbb9d67c2c06a13d8ccb23675e9ed3\";}i:1620;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-27.svg\";s:8:\"checksum\";s:32:\"3af9162fb14128162a196e362336cc22\";}i:1621;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-28.svg\";s:8:\"checksum\";s:32:\"b7120e96fa7f036e3390b8d60015f8ab\";}i:1622;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-29.svg\";s:8:\"checksum\";s:32:\"b367242c5ff4b2e03e4f5a09b4f96e5c\";}i:1623;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-30.svg\";s:8:\"checksum\";s:32:\"c48564051e8add90ec3ec595af9ca3ff\";}i:1624;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-31.svg\";s:8:\"checksum\";s:32:\"402f02fb7c4e182623a1e6d0790d37b1\";}i:1625;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-32.svg\";s:8:\"checksum\";s:32:\"16cc2f4f0ea9f61d9ddf4715d078197a\";}i:1626;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-33.svg\";s:8:\"checksum\";s:32:\"46f3407b1d0ff555f24cd92e60c07711\";}i:1627;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-34.svg\";s:8:\"checksum\";s:32:\"9fc7744d488363afe18c50f57f1db9d1\";}i:1628;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-35.svg\";s:8:\"checksum\";s:32:\"bf11ffbbb78fda72af32021dd29a1516\";}i:1629;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-36.svg\";s:8:\"checksum\";s:32:\"d237e8d9049249ffaa18ad1b2ba8abb9\";}i:1630;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-37.svg\";s:8:\"checksum\";s:32:\"4b08611712a7ec17be65e72e0e3c2e50\";}i:1631;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-38.svg\";s:8:\"checksum\";s:32:\"7142035a35f9cd82dd684ff5c3b6fd2f\";}i:1632;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-39.svg\";s:8:\"checksum\";s:32:\"6691b6705cb0347d28135c65220c08ca\";}i:1633;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-40.svg\";s:8:\"checksum\";s:32:\"a269424a6195532372c22b618cf50aca\";}i:1634;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-41.svg\";s:8:\"checksum\";s:32:\"6e30fb9ad90fa089a7927e74da3b72c3\";}i:1635;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-42.svg\";s:8:\"checksum\";s:32:\"103c5799a973cc22a2940eb1077e8cb6\";}i:1636;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-43.svg\";s:8:\"checksum\";s:32:\"587d90c2acdb89329cef2a699ae8aa0f\";}i:1637;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-44.svg\";s:8:\"checksum\";s:32:\"53a9ceb0d437631a6ff8ef6ba6945632\";}i:1638;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-45.svg\";s:8:\"checksum\";s:32:\"bee80a44551925b44203da198696147c\";}i:1639;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-46.svg\";s:8:\"checksum\";s:32:\"478b7fbdcc526380078fc580d6e3aa0e\";}i:1640;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-47.svg\";s:8:\"checksum\";s:32:\"a41bbaca1194a7b2931d33d2cc1324a8\";}i:1641;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-48.svg\";s:8:\"checksum\";s:32:\"ef835c5c365ae62c3366a831b301312d\";}i:1642;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-49.svg\";s:8:\"checksum\";s:32:\"dd198c76f30db0d3f32fc68d4d8fa97d\";}i:1643;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-50.svg\";s:8:\"checksum\";s:32:\"18f1b16aac2c2ec61f983a38451bd261\";}i:1644;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-51.svg\";s:8:\"checksum\";s:32:\"cfe6b96e2c0d0a9ba4e3a233dbcdfa0d\";}i:1645;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-52.svg\";s:8:\"checksum\";s:32:\"4cbcb1a13273cc9fa49f6627ebd96188\";}i:1646;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-53.svg\";s:8:\"checksum\";s:32:\"dfe45377df30abab7ffde8528286d875\";}i:1647;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-54.svg\";s:8:\"checksum\";s:32:\"8b2a0ccc248df34ff9a394d48e23374c\";}i:1648;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-55.svg\";s:8:\"checksum\";s:32:\"a6ac2d5c61ebfca20e728bf1690442c8\";}i:1649;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-56.svg\";s:8:\"checksum\";s:32:\"3c735fb5b762cec893773c1132025df3\";}i:1650;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-57.svg\";s:8:\"checksum\";s:32:\"580729e87cda68c92d634e1a0857fad0\";}i:1651;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-58.svg\";s:8:\"checksum\";s:32:\"e56775235fdabd016ab20f03353e928c\";}i:1652;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-59.svg\";s:8:\"checksum\";s:32:\"719c05eac754a03bacc98af2dbfb0f0c\";}i:1653;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-60.svg\";s:8:\"checksum\";s:32:\"458dd660fab7e0d658c57c984e0395c4\";}i:1654;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-61.svg\";s:8:\"checksum\";s:32:\"905c1c05ad25991f1d18f801e84a6cb8\";}i:1655;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-62.svg\";s:8:\"checksum\";s:32:\"81cd2e741e454524d3481fa8b5dcb7f5\";}i:1656;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-63.svg\";s:8:\"checksum\";s:32:\"42b67ccfbeae2b513541eafdbb370261\";}i:1657;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-64.svg\";s:8:\"checksum\";s:32:\"e2b729b6b28ac6f67e236c5eb4c4695b\";}i:1658;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-65.svg\";s:8:\"checksum\";s:32:\"adcfbb636e63fd81ebb57a6f9df21025\";}i:1659;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-66.svg\";s:8:\"checksum\";s:32:\"d65a2037ba26c12553abc0f1b50773bf\";}i:1660;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-67.svg\";s:8:\"checksum\";s:32:\"68c8264eb48f95c53cfc7301c3ec33b4\";}i:1661;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-68.svg\";s:8:\"checksum\";s:32:\"2070f0d533c5442f07efe396d78c41c4\";}i:1662;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-69.svg\";s:8:\"checksum\";s:32:\"1c884fa108c292a7c2dce854ff9241cf\";}i:1663;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-70.svg\";s:8:\"checksum\";s:32:\"970fbb8058eff125a890c10f30fa7f95\";}i:1664;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-71.svg\";s:8:\"checksum\";s:32:\"1fca7f1d1b40f12570438d0ff4c4c46d\";}i:1665;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-72.svg\";s:8:\"checksum\";s:32:\"c512fcc189086efd65a838f627667b48\";}i:1666;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-73.svg\";s:8:\"checksum\";s:32:\"4b3c222158dce01ae2f5807a85b4b37c\";}i:1667;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-74.svg\";s:8:\"checksum\";s:32:\"69de1235e8b5dda35855ea096c76fde9\";}i:1668;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-75.svg\";s:8:\"checksum\";s:32:\"fb730608f1b87ce7b8e21c8f62d8ffb3\";}i:1669;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-76.svg\";s:8:\"checksum\";s:32:\"0e1f69044b155a8baea08af0b0dce5ac\";}i:1670;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-77.svg\";s:8:\"checksum\";s:32:\"52f3ab34970284cf003d8b18e3abc6da\";}i:1671;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-78.svg\";s:8:\"checksum\";s:32:\"b8b4a05a562943c9415f8cb9bfbc963d\";}i:1672;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-79.svg\";s:8:\"checksum\";s:32:\"830ce74d4f5e7192a3d018195aa617c9\";}i:1673;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-80.svg\";s:8:\"checksum\";s:32:\"c4fa471ca9056dd4778172a259dd1a53\";}i:1674;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-81.svg\";s:8:\"checksum\";s:32:\"00444888956cc72cc29b5649a44a1006\";}i:1675;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shape/shape-82.svg\";s:8:\"checksum\";s:32:\"7fcfde8637ccc54e0a9da5de1ee85e57\";}i:1676;a:2:{s:4:\"path\";s:41:\"/web/resource/images/app/shape/shape.json\";s:8:\"checksum\";s:32:\"31beadefc4f486aa07d9be9afb690d23\";}i:1677;a:2:{s:4:\"path\";s:38:\"/web/resource/images/app/shop-logo.jpg\";s:8:\"checksum\";s:32:\"9a5570bbea525416fed5730dd4940df2\";}i:1678;a:2:{s:4:\"path\";s:43:\"/web/resource/images/app/shop.png!80x80.jpg\";s:8:\"checksum\";s:32:\"153c76cac68b888688e026ed8b91ac48\";}i:1679;a:2:{s:4:\"path\";s:40:\"/web/resource/images/app/shopNavCart.png\";s:8:\"checksum\";s:32:\"795f4978d8351c505413577f81a002c8\";}i:1680;a:2:{s:4:\"path\";s:40:\"/web/resource/images/app/shopNavPath.png\";s:8:\"checksum\";s:32:\"f8eae9a38df5f28842091cd9e38c10b3\";}i:1681;a:2:{s:4:\"path\";s:41:\"/web/resource/images/app/shopNavSides.png\";s:8:\"checksum\";s:32:\"e70c24eb6d5b61cd035fac1fc3f95890\";}i:1682;a:2:{s:4:\"path\";s:38:\"/web/resource/images/app/shopNavWx.png\";s:8:\"checksum\";s:32:\"0d2b44dc2c4adf51a281925d04fe1ed6\";}i:1683;a:2:{s:4:\"path\";s:37:\"/web/resource/images/app/showcase.png\";s:8:\"checksum\";s:32:\"57ca0be94dea7b3a7dbaaf701b1e048c\";}i:1684;a:2:{s:4:\"path\";s:39:\"/web/resource/images/app/slider-bar.png\";s:8:\"checksum\";s:32:\"df936ab64fba032fbb6e05f2a8b5573a\";}i:1685;a:2:{s:4:\"path\";s:38:\"/web/resource/images/app/sprite_v5.png\";s:8:\"checksum\";s:32:\"f8b227528a61820447e21937aa4ffc42\";}i:1686;a:2:{s:4:\"path\";s:41:\"/web/resource/images/app/sum-recharge.png\";s:8:\"checksum\";s:32:\"2345b01194b03e59fe5fb59a08ce0877\";}i:1687;a:2:{s:4:\"path\";s:37:\"/web/resource/images/app/titlebar.png\";s:8:\"checksum\";s:32:\"730d38c8d4118a5c737e124cb66aeb8c\";}i:1688;a:2:{s:4:\"path\";s:37:\"/web/resource/images/app/toobarbg.svg\";s:8:\"checksum\";s:32:\"a880b1fe154b2e9df0027c0696f25156\";}i:1689;a:2:{s:4:\"path\";s:35:\"/web/resource/images/audio-icon.png\";s:8:\"checksum\";s:32:\"52973f55c3988c044acf886d637ace0c\";}i:1690;a:2:{s:4:\"path\";s:34:\"/web/resource/images/banner-bg.png\";s:8:\"checksum\";s:32:\"4608c2229bfd72865a5f30721e6c171c\";}i:1691;a:2:{s:4:\"path\";s:38:\"/web/resource/images/bg-login-full.jpg\";s:8:\"checksum\";s:32:\"d4eaed1d4250f8c8873c02843c0a87e0\";}i:1692;a:2:{s:4:\"path\";s:33:\"/web/resource/images/bg-login.png\";s:8:\"checksum\";s:32:\"f7aaf311c06ffcac6fe5e8961f4d71ed\";}i:1693;a:2:{s:4:\"path\";s:53:\"/web/resource/images/bg-mobile-foot-default2968da.png\";s:8:\"checksum\";s:32:\"544fc30e6b6e9d334d81dac6a47cd65b\";}i:1694;a:2:{s:4:\"path\";s:53:\"/web/resource/images/bg-mobile-head-default2968da.png\";s:8:\"checksum\";s:32:\"1c93128220dc4933a1698b5101140b07\";}i:1695;a:2:{s:4:\"path\";s:40:\"/web/resource/images/bg-mobile21d289.png\";s:8:\"checksum\";s:32:\"3c5a504a62a2f5813feb31f7afedd184\";}i:1696;a:2:{s:4:\"path\";s:33:\"/web/resource/images/bg-repno.gif\";s:8:\"checksum\";s:32:\"9f1b28189e7b8c9c839fb93552db68a9\";}i:1697;a:2:{s:4:\"path\";s:39:\"/web/resource/images/bottom-default.png\";s:8:\"checksum\";s:32:\"7886aa0555fd81fe974adfcc1255d7db\";}i:1698;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/1.png\";s:8:\"checksum\";s:32:\"ea0bd1ef1fe14843d0d7f74cbe0ff5f5\";}i:1699;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/10.png\";s:8:\"checksum\";s:32:\"a6a7f543c9b9c32eea35c793175f0dc3\";}i:1700;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/11.png\";s:8:\"checksum\";s:32:\"769cecf39fe8459779b9056698b34297\";}i:1701;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/12.png\";s:8:\"checksum\";s:32:\"acb491120b162763c407db1a3117e472\";}i:1702;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/13.png\";s:8:\"checksum\";s:32:\"45a3cd8d43bfde14c6d6120ba4c785f4\";}i:1703;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/14.png\";s:8:\"checksum\";s:32:\"13246acfe56969a87cf61ef1e885e6bb\";}i:1704;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/15.png\";s:8:\"checksum\";s:32:\"26666fdf354e811efd8c8a40b1e2b4a2\";}i:1705;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/16.png\";s:8:\"checksum\";s:32:\"46416b900d9df966d241f49fed9ff465\";}i:1706;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/17.png\";s:8:\"checksum\";s:32:\"62e12665b07467083c28d4ca03aa94d6\";}i:1707;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/18.png\";s:8:\"checksum\";s:32:\"4840a87c59aeaf8323a25ba6039d204f\";}i:1708;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/19.png\";s:8:\"checksum\";s:32:\"785434c915afbf3e88d8fc5d20319760\";}i:1709;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/2.png\";s:8:\"checksum\";s:32:\"5b91ec25c9cf47c0ea5122119e25ab3c\";}i:1710;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/20.png\";s:8:\"checksum\";s:32:\"c175e1bb200f1d99b1d5f5c381360540\";}i:1711;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/21.png\";s:8:\"checksum\";s:32:\"0241891600c225b6b54fe38b30289b87\";}i:1712;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/22.png\";s:8:\"checksum\";s:32:\"bccb35d43a9b9fe37e06908ab6df48be\";}i:1713;a:2:{s:4:\"path\";s:32:\"/web/resource/images/card/23.png\";s:8:\"checksum\";s:32:\"166a892c42515c5d3f0176516c26296b\";}i:1714;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/3.png\";s:8:\"checksum\";s:32:\"c981c4436fc954526f6af74a027c105d\";}i:1715;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/4.png\";s:8:\"checksum\";s:32:\"5594d1bbc859acb5acf5937922657733\";}i:1716;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/5.png\";s:8:\"checksum\";s:32:\"71efda204a06ad704ab05a6654cb6603\";}i:1717;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/6.png\";s:8:\"checksum\";s:32:\"cba597ab06bfe9ed0a9408c2dbcc5da6\";}i:1718;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/7.png\";s:8:\"checksum\";s:32:\"0dcd62fdc20611f797c9553bc3b20067\";}i:1719;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/8.png\";s:8:\"checksum\";s:32:\"326edb8835df96edf842f77631118932\";}i:1720;a:2:{s:4:\"path\";s:31:\"/web/resource/images/card/9.png\";s:8:\"checksum\";s:32:\"2a43286a4b93a5e1523bcf754561b7e4\";}i:1721;a:2:{s:4:\"path\";s:29:\"/web/resource/images/card.png\";s:8:\"checksum\";s:32:\"7564d5d7e889b0ae2809bd25d440ad54\";}i:1722;a:2:{s:4:\"path\";s:33:\"/web/resource/images/card_tpl.png\";s:8:\"checksum\";s:32:\"2d75705962257cd4925ad71a4991c81b\";}i:1723;a:2:{s:4:\"path\";s:37:\"/web/resource/images/creat-step-1.png\";s:8:\"checksum\";s:32:\"6000e098bc5670816ee885c4cf00631e\";}i:1724;a:2:{s:4:\"path\";s:37:\"/web/resource/images/creat-step-2.png\";s:8:\"checksum\";s:32:\"8b4965e398945de4bbeb6601125ec5a6\";}i:1725;a:2:{s:4:\"path\";s:37:\"/web/resource/images/creat-step-3.png\";s:8:\"checksum\";s:32:\"b916f11b2dd8e66e6c81992982fb2ea0\";}i:1726;a:2:{s:4:\"path\";s:37:\"/web/resource/images/creat-step-4.png\";s:8:\"checksum\";s:32:\"7c38880dc8c5926d8b08632c588ce124\";}i:1727;a:2:{s:4:\"path\";s:43:\"/web/resource/images/electronic_license.png\";s:8:\"checksum\";s:32:\"f3b469a1a4fb1e39dc020e72197f6279\";}i:1728;a:2:{s:4:\"path\";s:30:\"/web/resource/images/emoji.png\";s:8:\"checksum\";s:32:\"2158b8f1a5eb94d6ce8b58ae377e2787\";}i:1729;a:2:{s:4:\"path\";s:32:\"/web/resource/images/favicon.ico\";s:8:\"checksum\";s:32:\"16774d9655a461762e646d94dfcc3a58\";}i:1730;a:2:{s:4:\"path\";s:33:\"/web/resource/images/guide-01.png\";s:8:\"checksum\";s:32:\"9832123d92fb21a28351f8662b0d09cd\";}i:1731;a:2:{s:4:\"path\";s:33:\"/web/resource/images/guide-02.png\";s:8:\"checksum\";s:32:\"81ce198b6d6254ec39c9185decafeb0b\";}i:1732;a:2:{s:4:\"path\";s:33:\"/web/resource/images/guide-03.png\";s:8:\"checksum\";s:32:\"7bc9c5a5d3d70211cfb4cf5838e513b1\";}i:1733;a:2:{s:4:\"path\";s:30:\"/web/resource/images/gw-wx.gif\";s:8:\"checksum\";s:32:\"e4a563aa6b3e7cce10d58d12a269b2e8\";}i:1734;a:2:{s:4:\"path\";s:35:\"/web/resource/images/icon-audio.png\";s:8:\"checksum\";s:32:\"1589ddcc6ee4853b48f35f9e81c96ce6\";}i:1735;a:2:{s:4:\"path\";s:41:\"/web/resource/images/icon-audio2767e5.gif\";s:8:\"checksum\";s:32:\"c92304fb15aa2a43bdc988906cc919cc\";}i:1736;a:2:{s:4:\"path\";s:34:\"/web/resource/images/icon-code.png\";s:8:\"checksum\";s:32:\"ab3186b03adf8c91ed60839145bd488e\";}i:1737;a:2:{s:4:\"path\";s:34:\"/web/resource/images/icon-pass.png\";s:8:\"checksum\";s:32:\"b2c157e03b5b3f640cb53a59ac1571d9\";}i:1738;a:2:{s:4:\"path\";s:36:\"/web/resource/images/icon-police.png\";s:8:\"checksum\";s:32:\"7296bdfd984af62fafa7ae0fda1d25ea\";}i:1739;a:2:{s:4:\"path\";s:34:\"/web/resource/images/icon-user.png\";s:8:\"checksum\";s:32:\"74f3d990fa20979674303f7708843b56\";}i:1740;a:2:{s:4:\"path\";s:35:\"/web/resource/images/icon-video.png\";s:8:\"checksum\";s:32:\"5fcf133fc129b09c36b4c2bc4979d216\";}i:1741;a:2:{s:4:\"path\";s:35:\"/web/resource/images/icon-voice.png\";s:8:\"checksum\";s:32:\"a83f6e149abb1c6f7a40fa811f7196fd\";}i:1742;a:2:{s:4:\"path\";s:38:\"/web/resource/images/index-z2a7519.png\";s:8:\"checksum\";s:32:\"993d2fdda8e32a49c8696549a42b8262\";}i:1743;a:2:{s:4:\"path\";s:41:\"/web/resource/images/init_module_logo.png\";s:8:\"checksum\";s:32:\"7c2dbbb11be3f4a16b689fdc85818f19\";}i:1744;a:2:{s:4:\"path\";s:38:\"/web/resource/images/iphone6-samll.png\";s:8:\"checksum\";s:32:\"926cd590662ac4f2a37660e61ec21313\";}i:1745;a:2:{s:4:\"path\";s:32:\"/web/resource/images/iphone6.png\";s:8:\"checksum\";s:32:\"56b90abb9517a4bc28cb3b50c3b03af3\";}i:1746;a:2:{s:4:\"path\";s:29:\"/web/resource/images/link.png\";s:8:\"checksum\";s:32:\"b1f755a23de16f07c4b871cae533cc9b\";}i:1747;a:2:{s:4:\"path\";s:32:\"/web/resource/images/loading.gif\";s:8:\"checksum\";s:32:\"fb04fd7f4f9400126963923828c1c035\";}i:1748;a:2:{s:4:\"path\";s:40:\"/web/resource/images/logo/login-logo.png\";s:8:\"checksum\";s:32:\"712f220845f590baab3127b1879e8658\";}i:1749;a:2:{s:4:\"path\";s:38:\"/web/resource/images/logo/logo-219.png\";s:8:\"checksum\";s:32:\"4da8339a9423ec7601670e7d27bde720\";}i:1750;a:2:{s:4:\"path\";s:37:\"/web/resource/images/logo/logo-lg.png\";s:8:\"checksum\";s:32:\"17f7bcbdeaa6b4657ee7509d96a0e44f\";}i:1751;a:2:{s:4:\"path\";s:34:\"/web/resource/images/logo/logo.png\";s:8:\"checksum\";s:32:\"a2774443c98df1c887e380af33c0ef4f\";}i:1752;a:2:{s:4:\"path\";s:38:\"/web/resource/images/media-z2f624f.png\";s:8:\"checksum\";s:32:\"6c1aadd9c60008c6c6601e35ebf42e27\";}i:1753;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/01.png\";s:8:\"checksum\";s:32:\"402da38a02c8a21c009f28b8954ffae6\";}i:1754;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/02.png\";s:8:\"checksum\";s:32:\"7539fe47b42aac3b73547c373b2f9486\";}i:1755;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/03.png\";s:8:\"checksum\";s:32:\"cf96eae48df716a8d9fd8d4390599e09\";}i:1756;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/04.png\";s:8:\"checksum\";s:32:\"e58840acfe2ab8cd9da645e7c9f83c6a\";}i:1757;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/05.png\";s:8:\"checksum\";s:32:\"728210fb17ee6e0d991690cbd8aa6654\";}i:1758;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/06.png\";s:8:\"checksum\";s:32:\"37546e6e3fbd7af13c86851054c6bdf6\";}i:1759;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/07.png\";s:8:\"checksum\";s:32:\"936a1e55ae26939da870ac9196201742\";}i:1760;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/08.png\";s:8:\"checksum\";s:32:\"0d04acde28c1f96e9d65cbe0addc2c93\";}i:1761;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/09.png\";s:8:\"checksum\";s:32:\"06acd33b7371927e2c604dd993c5c737\";}i:1762;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/10.png\";s:8:\"checksum\";s:32:\"c44106b23a51fd39e83ca6a2d5657f9b\";}i:1763;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/11.png\";s:8:\"checksum\";s:32:\"e9701341c43783d2ebf90e572bbb03a0\";}i:1764;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/12.png\";s:8:\"checksum\";s:32:\"e47b7740a43760915828bb7cd6b4daa9\";}i:1765;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/13.png\";s:8:\"checksum\";s:32:\"d0234eb2ce0834bb1f476d20daf26776\";}i:1766;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/14.png\";s:8:\"checksum\";s:32:\"9385e7438bf2641bf9790738929e3bd1\";}i:1767;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/15.png\";s:8:\"checksum\";s:32:\"8823bed75f5c17866bfe5f33ac9aa0ad\";}i:1768;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/16.png\";s:8:\"checksum\";s:32:\"e81eda828d407c0cd9a40983bd103244\";}i:1769;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/17.png\";s:8:\"checksum\";s:32:\"1c92c623833f8bda6fb0050d59e4b5b2\";}i:1770;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/18.png\";s:8:\"checksum\";s:32:\"8694c53c8d30dd52b860323c8f755471\";}i:1771;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/19.png\";s:8:\"checksum\";s:32:\"d2ae349cc8aaffbb0af5098847176946\";}i:1772;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/20.png\";s:8:\"checksum\";s:32:\"33402fc55056ca2dfdd1fe67a5138ae0\";}i:1773;a:2:{s:4:\"path\";s:34:\"/web/resource/images/module/21.png\";s:8:\"checksum\";s:32:\"2e5ab464eef1cf9534803e6c4f2e6734\";}i:1774;a:2:{s:4:\"path\";s:40:\"/web/resource/images/module/official.png\";s:8:\"checksum\";s:32:\"b9d86e603f5e063ff567e364603e241a\";}i:1775;a:2:{s:4:\"path\";s:36:\"/web/resource/images/mouserotate.ico\";s:8:\"checksum\";s:32:\"70a3d7fa5c299db2900620af50ae4dc8\";}i:1776;a:2:{s:4:\"path\";s:40:\"/web/resource/images/msg-tab-z25df2d.png\";s:8:\"checksum\";s:32:\"5eca8e8585fa1d530871f772486ab596\";}i:1777;a:2:{s:4:\"path\";s:42:\"/web/resource/images/new/iphone6-samll.png\";s:8:\"checksum\";s:32:\"926cd590662ac4f2a37660e61ec21313\";}i:1778;a:2:{s:4:\"path\";s:36:\"/web/resource/images/new/iphone6.png\";s:8:\"checksum\";s:32:\"56b90abb9517a4bc28cb3b50c3b03af3\";}i:1779;a:2:{s:4:\"path\";s:40:\"/web/resource/images/noavatar_middle.gif\";s:8:\"checksum\";s:32:\"30056529e8d2f5734463c3eeae2ec57e\";}i:1780;a:2:{s:4:\"path\";s:34:\"/web/resource/images/nopic-107.png\";s:8:\"checksum\";s:32:\"ce9849263b432f21ba5b904d1f571373\";}i:1781;a:2:{s:4:\"path\";s:34:\"/web/resource/images/nopic-203.png\";s:8:\"checksum\";s:32:\"61622032d77e75505bad3563ef4ea35c\";}i:1782;a:2:{s:4:\"path\";s:38:\"/web/resource/images/nopic-account.png\";s:8:\"checksum\";s:32:\"24a0f4c9338c52e3b6a78127f131dde2\";}i:1783;a:2:{s:4:\"path\";s:37:\"/web/resource/images/nopic-module.png\";s:8:\"checksum\";s:32:\"4b5e9155fa5b16ccbc8f729fa7965e94\";}i:1784;a:2:{s:4:\"path\";s:36:\"/web/resource/images/nopic-small.jpg\";s:8:\"checksum\";s:32:\"44e8d8157e3b24a28f04902929146ddf\";}i:1785;a:2:{s:4:\"path\";s:39:\"/web/resource/images/nopic-template.png\";s:8:\"checksum\";s:32:\"f80dd7e6ab9e25ecbc19ffa04fc73428\";}i:1786;a:2:{s:4:\"path\";s:35:\"/web/resource/images/nopic-user.png\";s:8:\"checksum\";s:32:\"08d0dd6b80f80e5c68639cff677e8487\";}i:1787;a:2:{s:4:\"path\";s:30:\"/web/resource/images/nopic.jpg\";s:8:\"checksum\";s:32:\"9cdfb0161ca96d362d057e4cc22da9b3\";}i:1788;a:2:{s:4:\"path\";s:31:\"/web/resource/images/nopic1.jpg\";s:8:\"checksum\";s:32:\"a94f081c7a7f8906fbefb86b66babbb2\";}i:1789;a:2:{s:4:\"path\";s:28:\"/web/resource/images/pen.png\";s:8:\"checksum\";s:32:\"dfd111ef71ccb625b08173190f1d46c2\";}i:1790;a:2:{s:4:\"path\";s:31:\"/web/resource/images/player.jpg\";s:8:\"checksum\";s:32:\"400b19f54cc812b0db6cf9880b1059f2\";}i:1791;a:2:{s:4:\"path\";s:32:\"/web/resource/images/qqlogin.png\";s:8:\"checksum\";s:32:\"12a0c47699dbf0fe8f6b590f33b56cde\";}i:1792;a:2:{s:4:\"path\";s:42:\"/web/resource/images/reply/appmsg-icon.png\";s:8:\"checksum\";s:32:\"e794fd35633f20acb4c311d3b8393b0e\";}i:1793;a:2:{s:4:\"path\";s:41:\"/web/resource/images/reply/image-card.png\";s:8:\"checksum\";s:32:\"1a02ec77f362fa18cd1da19f0e141cde\";}i:1794;a:2:{s:4:\"path\";s:41:\"/web/resource/images/reply/image-icon.png\";s:8:\"checksum\";s:32:\"a4ea29cd44102eaf462038ea7390909f\";}i:1795;a:2:{s:4:\"path\";s:43:\"/web/resource/images/reply/keyword-icon.png\";s:8:\"checksum\";s:32:\"a480d297884c76c7e607d690764a9a7a\";}i:1796;a:2:{s:4:\"path\";s:42:\"/web/resource/images/reply/module-icon.png\";s:8:\"checksum\";s:32:\"33f9cc17d4c800b9215cc697cb5ac3f6\";}i:1797;a:2:{s:4:\"path\";s:41:\"/web/resource/images/reply/music-icon.png\";s:8:\"checksum\";s:32:\"91578dd3e24f6bb2ff59f40710764558\";}i:1798;a:2:{s:4:\"path\";s:41:\"/web/resource/images/reply/radio-icon.png\";s:8:\"checksum\";s:32:\"af20a763cc3b48e136dd6cfec2fb36ad\";}i:1799;a:2:{s:4:\"path\";s:40:\"/web/resource/images/reply/text-icon.png\";s:8:\"checksum\";s:32:\"5b05cd96ec0eb93f3ef3c8bbd9e30f38\";}i:1800;a:2:{s:4:\"path\";s:41:\"/web/resource/images/reply/vedio-icon.png\";s:8:\"checksum\";s:32:\"b9c49fbe43cc2c35169d968b3c78535d\";}i:1801;a:2:{s:4:\"path\";s:30:\"/web/resource/images/reply.png\";s:8:\"checksum\";s:32:\"1a81463cef5f79f1ee30980884a3dbee\";}i:1802;a:2:{s:4:\"path\";s:37:\"/web/resource/images/select-arrow.png\";s:8:\"checksum\";s:32:\"59564310be53aad3ca7956c60adc7636\";}i:1803;a:2:{s:4:\"path\";s:38:\"/web/resource/images/success-small.png\";s:8:\"checksum\";s:32:\"ef0d55b79e50561f643efb9a95b52603\";}i:1804;a:2:{s:4:\"path\";s:28:\"/web/resource/images/tel.png\";s:8:\"checksum\";s:32:\"8d7babf767e81aedc463999965a4b40b\";}i:1805;a:2:{s:4:\"path\";s:33:\"/web/resource/images/test/173.png\";s:8:\"checksum\";s:32:\"fcb124f252e9ae0f4f64a8f856bb9699\";}i:1806;a:2:{s:4:\"path\";s:40:\"/web/resource/images/test/wechat-img.png\";s:8:\"checksum\";s:32:\"cc097e58c333e8e7f03ea510e676cc73\";}i:1807;a:2:{s:4:\"path\";s:37:\"/web/resource/images/test/weizhan.png\";s:8:\"checksum\";s:32:\"7308a72d28b685387c64993f77051c99\";}i:1808;a:2:{s:4:\"path\";s:32:\"/web/resource/images/upgrade.png\";s:8:\"checksum\";s:32:\"a1e52eee21bf950faf3be48724ed3675\";}i:1809;a:2:{s:4:\"path\";s:31:\"/web/resource/images/we7-qr.jpg\";s:8:\"checksum\";s:32:\"ee0ddd5853f8ac244652b6f718cd3b05\";}i:1810;a:2:{s:4:\"path\";s:37:\"/web/resource/images/website-logo.png\";s:8:\"checksum\";s:32:\"16415975526b1b48cabcf8a04bc3b9b2\";}i:1811;a:2:{s:4:\"path\";s:41:\"/web/resource/images/welcome/big-icon.png\";s:8:\"checksum\";s:32:\"e6d4a359748af91b9d4e66b1116a9d91\";}i:1812;a:2:{s:4:\"path\";s:42:\"/web/resource/images/welcome/down-icon.png\";s:8:\"checksum\";s:32:\"f20476e82a2b2401ee4ac6460b03331d\";}i:1813;a:2:{s:4:\"path\";s:49:\"/web/resource/images/welcome/environment-icon.png\";s:8:\"checksum\";s:32:\"65bd980e83a91886a90477e52a4a11a9\";}i:1814;a:2:{s:4:\"path\";s:41:\"/web/resource/images/welcome/hot-icon.png\";s:8:\"checksum\";s:32:\"d448b6ff8f5e9804587f899e1b3a7fee\";}i:1815;a:2:{s:4:\"path\";s:41:\"/web/resource/images/welcome/module/1.png\";s:8:\"checksum\";s:32:\"88231485088c1e3501091aefcac61399\";}i:1816;a:2:{s:4:\"path\";s:41:\"/web/resource/images/welcome/module/2.png\";s:8:\"checksum\";s:32:\"dee9550ccb303b0de5cac6a8baf246f8\";}i:1817;a:2:{s:4:\"path\";s:50:\"/web/resource/images/welcome/mysql-backup-icon.png\";s:8:\"checksum\";s:32:\"57bb8f3d9e12cbcf0ef73340c5b7f4ae\";}i:1818;a:2:{s:4:\"path\";s:41:\"/web/resource/images/welcome/new-icon.png\";s:8:\"checksum\";s:32:\"42dc34027d4b5856ef42efc055271f23\";}i:1819;a:2:{s:4:\"path\";s:38:\"/web/resource/images/welcome/top-1.png\";s:8:\"checksum\";s:32:\"4867e2b6e8000e08a79ac74b03b817fb\";}i:1820;a:2:{s:4:\"path\";s:38:\"/web/resource/images/welcome/top-2.png\";s:8:\"checksum\";s:32:\"3477c8591bc35d93366ccc941fa7f78f\";}i:1821;a:2:{s:4:\"path\";s:38:\"/web/resource/images/welcome/top-3.png\";s:8:\"checksum\";s:32:\"f92b85cad2a19579858341da53c98ec3\";}i:1822;a:2:{s:4:\"path\";s:44:\"/web/resource/images/welcome/update-icon.png\";s:8:\"checksum\";s:32:\"9f5c6a01ac079bf631aa120a998bbfe4\";}i:1823;a:2:{s:4:\"path\";s:32:\"/web/resource/images/wx-icon.png\";s:8:\"checksum\";s:32:\"61480131fb84968e93933a1adde6a179\";}i:1824;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/01.png\";s:8:\"checksum\";s:32:\"ac511c807a9aebc91b7c16ebf6b60dda\";}i:1825;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/02.png\";s:8:\"checksum\";s:32:\"75734aacf291e3fb44305237dd5c044e\";}i:1826;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/03.png\";s:8:\"checksum\";s:32:\"a91aafeef8260ff4f680963c4c79f847\";}i:1827;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/04.png\";s:8:\"checksum\";s:32:\"bb608d47277209af258507391824a743\";}i:1828;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/05.png\";s:8:\"checksum\";s:32:\"94b35c767ee1f31b57db90116bf2b932\";}i:1829;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/06.png\";s:8:\"checksum\";s:32:\"f895b6bd445e6f9040e1c0263b7b615f\";}i:1830;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/07.png\";s:8:\"checksum\";s:32:\"9d410ca09925501f8e771c01a5ececea\";}i:1831;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/08.png\";s:8:\"checksum\";s:32:\"95a1aa1ae35e3c5f6dee4761f9631e23\";}i:1832;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/09.png\";s:8:\"checksum\";s:32:\"490d03ac040b80add373c04706c91bce\";}i:1833;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/10.png\";s:8:\"checksum\";s:32:\"ac0cb326c7b8d0dbc9f989ce817f389d\";}i:1834;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/11.png\";s:8:\"checksum\";s:32:\"68da27416b5b4e78e418cbd05e878526\";}i:1835;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/12.png\";s:8:\"checksum\";s:32:\"f8e1c162c557df761030b783ca234e5e\";}i:1836;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/13.png\";s:8:\"checksum\";s:32:\"5f7b6c97449418a5d269e8fa7957811b\";}i:1837;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/14.png\";s:8:\"checksum\";s:32:\"d29b4fa20e001e679525c2d1d19079fd\";}i:1838;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/15.png\";s:8:\"checksum\";s:32:\"d87bc475d88e56b9d0b231b29fdcdb55\";}i:1839;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/16.png\";s:8:\"checksum\";s:32:\"ae31cc5ccb55bca73d0f144289c9059c\";}i:1840;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/17.png\";s:8:\"checksum\";s:32:\"0cb86e31392856ea0d1e84ca473fa46d\";}i:1841;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/18.png\";s:8:\"checksum\";s:32:\"9915799427ee8a64ed5c134db3198507\";}i:1842;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/19.png\";s:8:\"checksum\";s:32:\"a2ef5937eef94d7f9d3edf4d14390fc1\";}i:1843;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/20.png\";s:8:\"checksum\";s:32:\"7649666bc65cbd30941fd3f323f883f4\";}i:1844;a:2:{s:4:\"path\";s:33:\"/web/resource/images/wxapp/21.png\";s:8:\"checksum\";s:32:\"4b424084b5aca3e6a9373c0116b6d1cd\";}i:1845;a:2:{s:4:\"path\";s:41:\"/web/resource/images/wxapp/setting-01.png\";s:8:\"checksum\";s:32:\"91dd70af4b73f50d8d29dc76d5d6f73f\";}i:1846;a:2:{s:4:\"path\";s:41:\"/web/resource/images/wxapp/setting-02.png\";s:8:\"checksum\";s:32:\"23f146fe5f3e5d36d0d9c2be558d242e\";}i:1847;a:2:{s:4:\"path\";s:43:\"/web/resource/images/wxapp-default-tpl0.jpg\";s:8:\"checksum\";s:32:\"319922df16733e4105bf8d9b8ebd4e7a\";}i:1848;a:2:{s:4:\"path\";s:43:\"/web/resource/images/wxapp-default-tpl1.jpg\";s:8:\"checksum\";s:32:\"2f8f7481730d0e0d04a69f14659a14cf\";}i:1849;a:2:{s:4:\"path\";s:48:\"/web/resource/images/wxapp-procedure-diagram.png\";s:8:\"checksum\";s:32:\"8fd92a32c63d457182174602a1b4df75\";}i:1850;a:2:{s:4:\"path\";s:32:\"/web/resource/images/wxlogin.png\";s:8:\"checksum\";s:32:\"fde34e921be6826b2ebec6bb96d1f6fb\";}i:1851;a:2:{s:4:\"path\";s:36:\"/web/resource/images/xz-guide-01.png\";s:8:\"checksum\";s:32:\"4415476122c21381b7b442232cedddea\";}i:1852;a:2:{s:4:\"path\";s:36:\"/web/resource/images/xz-guide-02.png\";s:8:\"checksum\";s:32:\"6395f33cea8368be90a34a83769a3146\";}i:1853;a:2:{s:4:\"path\";s:24:\"/web/resource/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:1854;a:2:{s:4:\"path\";s:34:\"/web/resource/js/app/common.min.js\";s:8:\"checksum\";s:32:\"daae6aaba3eca92c770a74c7f4b24e1a\";}i:1855;a:2:{s:4:\"path\";s:30:\"/web/resource/js/app/config.js\";s:8:\"checksum\";s:32:\"7fe8dd6360e42b6bba2f34a3e35ee52a\";}i:1856;a:2:{s:4:\"path\";s:27:\"/web/resource/js/app/job.js\";s:8:\"checksum\";s:32:\"6862d2fafd05035f3fa7408bd9c8f6cc\";}i:1857;a:2:{s:4:\"path\";s:28:\"/web/resource/js/app/util.js\";s:8:\"checksum\";s:32:\"27f444227e0a27c8a1e48cad70079fde\";}i:1858;a:2:{s:4:\"path\";s:39:\"/web/resource/js/lib/angular-animate.js\";s:8:\"checksum\";s:32:\"07d80f48b192d10c77ddeaba44e4c3ce\";}i:1859;a:2:{s:4:\"path\";s:41:\"/web/resource/js/lib/angular-bootstrap.js\";s:8:\"checksum\";s:32:\"224e472abffa02772e4e764143b02e1e\";}i:1860;a:2:{s:4:\"path\";s:41:\"/web/resource/js/lib/angular-clipboard.js\";s:8:\"checksum\";s:32:\"db215e3af817a8b399912dade5cf93f9\";}i:1861;a:2:{s:4:\"path\";s:39:\"/web/resource/js/lib/angular-hotkeys.js\";s:8:\"checksum\";s:32:\"244f2b388edb0cdb98196aa6e9904389\";}i:1862;a:2:{s:4:\"path\";s:44:\"/web/resource/js/lib/angular-sanitize.min.js\";s:8:\"checksum\";s:32:\"2d36d6ee84d8cfcaecefa5a9b75454f1\";}i:1863;a:2:{s:4:\"path\";s:38:\"/web/resource/js/lib/angular-scroll.js\";s:8:\"checksum\";s:32:\"3ff1c3d391721c391360efba4fd8f475\";}i:1864;a:2:{s:4:\"path\";s:37:\"/web/resource/js/lib/angular-touch.js\";s:8:\"checksum\";s:32:\"b4da16295c1e66012533babc63d37d87\";}i:1865;a:2:{s:4:\"path\";s:35:\"/web/resource/js/lib/angular.min.js\";s:8:\"checksum\";s:32:\"193052866da3ca495458cefdf5c364d0\";}i:1866;a:2:{s:4:\"path\";s:27:\"/web/resource/js/lib/biz.js\";s:8:\"checksum\";s:32:\"d291e4fb147c447dcf7799d1aa90545e\";}i:1867;a:2:{s:4:\"path\";s:47:\"/web/resource/js/lib/bootstrap-filestyle.min.js\";s:8:\"checksum\";s:32:\"d5dc5df95da5857ade4f68a3e13f3046\";}i:1868;a:2:{s:4:\"path\";s:37:\"/web/resource/js/lib/bootstrap.min.js\";s:8:\"checksum\";s:32:\"99b8eb7d6676e05803f017dc70663486\";}i:1869;a:2:{s:4:\"path\";s:46:\"/web/resource/js/lib/bootstrapValidator.min.js\";s:8:\"checksum\";s:32:\"c41e9b1d80ef1e7a2ffca150ab37749c\";}i:1870;a:2:{s:4:\"path\";s:37:\"/web/resource/js/lib/clipboard.min.js\";s:8:\"checksum\";s:32:\"9f9b57ee0ab039cb12ec753491515b4c\";}i:1871;a:2:{s:4:\"path\";s:31:\"/web/resource/js/lib/css.min.js\";s:8:\"checksum\";s:32:\"bf0c9d8e4932194813767ef7c581d273\";}i:1872;a:2:{s:4:\"path\";s:39:\"/web/resource/js/lib/district-wechat.js\";s:8:\"checksum\";s:32:\"bf5df05d63a0a7407581be9520a5c667\";}i:1873;a:2:{s:4:\"path\";s:32:\"/web/resource/js/lib/district.js\";s:8:\"checksum\";s:32:\"d8472dcab604bc1ca8ed3a64cd8b2277\";}i:1874;a:2:{s:4:\"path\";s:35:\"/web/resource/js/lib/echarts.min.js\";s:8:\"checksum\";s:32:\"ace74b7af6e0f99692471ab08f40018c\";}i:1875;a:2:{s:4:\"path\";s:34:\"/web/resource/js/lib/hammer.min.js\";s:8:\"checksum\";s:32:\"6dc4f32dac39f606538f236bf879438f\";}i:1876;a:2:{s:4:\"path\";s:41:\"/web/resource/js/lib/jquery-1.11.1.min.js\";s:8:\"checksum\";s:32:\"4dc834d16a0d219d5c2b8a5b814569e4\";}i:1877;a:2:{s:4:\"path\";s:44:\"/web/resource/js/lib/jquery-ui-1.10.3.min.js\";s:8:\"checksum\";s:32:\"3103a1794ea4b6e5d7d81077a8f69337\";}i:1878;a:2:{s:4:\"path\";s:36:\"/web/resource/js/lib/jquery.caret.js\";s:8:\"checksum\";s:32:\"ce5e361261c045d22020974f47f3dfcc\";}i:1879;a:2:{s:4:\"path\";s:42:\"/web/resource/js/lib/jquery.nice-select.js\";s:8:\"checksum\";s:32:\"01e5b20d01f6644ca413dbf9658e9cdc\";}i:1880;a:2:{s:4:\"path\";s:41:\"/web/resource/js/lib/jquery.qrcode.min.js\";s:8:\"checksum\";s:32:\"c31ae1b9ebebb5ed4742e6b0f6aaa648\";}i:1881;a:2:{s:4:\"path\";s:45:\"/web/resource/js/lib/jquery.slimscroll.min.js\";s:8:\"checksum\";s:32:\"13672635828a7010898a49c71a99ffce\";}i:1882;a:2:{s:4:\"path\";s:43:\"/web/resource/js/lib/jquery.wookmark.min.js\";s:8:\"checksum\";s:32:\"8dcb780b1dad527fcdff69d2eeb9cf00\";}i:1883;a:2:{s:4:\"path\";s:35:\"/web/resource/js/lib/loadcss.min.js\";s:8:\"checksum\";s:32:\"bf0c9d8e4932194813767ef7c581d273\";}i:1884;a:2:{s:4:\"path\";s:30:\"/web/resource/js/lib/loadjs.js\";s:8:\"checksum\";s:32:\"2c85921f4d8352d1b4b82154f8d7c3e7\";}i:1885;a:2:{s:4:\"path\";s:30:\"/web/resource/js/lib/moment.js\";s:8:\"checksum\";s:32:\"7285f984050adbd652b9e8254835e93a\";}i:1886;a:2:{s:4:\"path\";s:35:\"/web/resource/js/lib/tastySelect.js\";s:8:\"checksum\";s:32:\"b8a4aa53509a174a20bb74fe5d90b2ed\";}i:1887;a:2:{s:4:\"path\";s:38:\"/web/resource/js/lib/underscore-min.js\";s:8:\"checksum\";s:32:\"e851cedeb55ee23d60ee09a4f70a24e1\";}i:1888;a:2:{s:4:\"path\";s:33:\"/web/resource/js/lib/we7.check.js\";s:8:\"checksum\";s:32:\"65393f352c7f70e032ee38a1ed690079\";}i:1889;a:2:{s:4:\"path\";s:27:\"/web/resource/js/require.js\";s:8:\"checksum\";s:32:\"657a67f96e72ed1737389d1560f6f517\";}i:1890;a:2:{s:4:\"path\";s:30:\"/web/source/account/__init.php\";s:8:\"checksum\";s:32:\"a67fa0f9c790b3956fe73bff7276b2d1\";}i:1891;a:2:{s:4:\"path\";s:33:\"/web/source/account/auth.ctrl.php\";s:8:\"checksum\";s:32:\"80817c085bcb06d8c3dc8e78dea3e96d\";}i:1892;a:2:{s:4:\"path\";s:40:\"/web/source/account/common-info.ctrl.php\";s:8:\"checksum\";s:32:\"2cced05992ec6eb1dcfb28ba2d91b3d5\";}i:1893;a:2:{s:4:\"path\";s:35:\"/web/source/account/create.ctrl.php\";s:8:\"checksum\";s:32:\"4556f4e9da7cab159e4763d69741fdad\";}i:1894;a:2:{s:4:\"path\";s:36:\"/web/source/account/display.ctrl.php\";s:8:\"checksum\";s:32:\"3d7174a86dd83d95fe14a9e6d2d2781e\";}i:1895;a:2:{s:4:\"path\";s:44:\"/web/source/account/expired-message.ctrl.php\";s:8:\"checksum\";s:32:\"2755001f43fd6d5305752210f740c167\";}i:1896;a:2:{s:4:\"path\";s:35:\"/web/source/account/manage.ctrl.php\";s:8:\"checksum\";s:32:\"c99f9845e86e020f7f39ee9ed0122396\";}i:1897;a:2:{s:4:\"path\";s:38:\"/web/source/account/post-step.ctrl.php\";s:8:\"checksum\";s:32:\"b00271def2f90902a31ed71dbaaff659\";}i:1898;a:2:{s:4:\"path\";s:38:\"/web/source/account/post-user.ctrl.php\";s:8:\"checksum\";s:32:\"b90bfff44b1acec66a8303f699085d5e\";}i:1899;a:2:{s:4:\"path\";s:33:\"/web/source/account/post.ctrl.php\";s:8:\"checksum\";s:32:\"84cf47ae654e3d8f3a6b0167535522f3\";}i:1900;a:2:{s:4:\"path\";s:36:\"/web/source/account/recycle.ctrl.php\";s:8:\"checksum\";s:32:\"e4adeba23fc84418453fa784999717e7\";}i:1901;a:2:{s:4:\"path\";s:36:\"/web/source/account/welcome.ctrl.php\";s:8:\"checksum\";s:32:\"d49fdefa9c34069356904c3dcbffb9df\";}i:1902;a:2:{s:4:\"path\";s:30:\"/web/source/article/__init.php\";s:8:\"checksum\";s:32:\"9c8fd66e30f3223ef6c6686bc8ef526f\";}i:1903;a:2:{s:4:\"path\";s:38:\"/web/source/article/news-show.ctrl.php\";s:8:\"checksum\";s:32:\"4edbcc2853b0436ccfb4eb82a0269f64\";}i:1904;a:2:{s:4:\"path\";s:33:\"/web/source/article/news.ctrl.php\";s:8:\"checksum\";s:32:\"542a9ad56f0472877acd2c9714a466c4\";}i:1905;a:2:{s:4:\"path\";s:40:\"/web/source/article/notice-news.ctrl.php\";s:8:\"checksum\";s:32:\"734a88516af4bc834bdf8a762594d979\";}i:1906;a:2:{s:4:\"path\";s:40:\"/web/source/article/notice-show.ctrl.php\";s:8:\"checksum\";s:32:\"9c1376f78bfab13caa430e80063f16c7\";}i:1907;a:2:{s:4:\"path\";s:35:\"/web/source/article/notice.ctrl.php\";s:8:\"checksum\";s:32:\"825037fd33bec143b8a6b111367773bf\";}i:1908;a:2:{s:4:\"path\";s:28:\"/web/source/cloud/__init.php\";s:8:\"checksum\";s:32:\"75380ee4baba4cf803eca1704321493b\";}i:1909;a:2:{s:4:\"path\";s:35:\"/web/source/cloud/diagnose.ctrl.php\";s:8:\"checksum\";s:32:\"e3aa2241942ca74a1696196af5801026\";}i:1910;a:2:{s:4:\"path\";s:31:\"/web/source/cloud/dock.ctrl.php\";s:8:\"checksum\";s:32:\"15c51f509f946e02e29570eca1bc2e13\";}i:1911;a:2:{s:4:\"path\";s:37:\"/web/source/cloud/newprocess.ctrl.php\";s:8:\"checksum\";s:32:\"a4bc9ba5d0083aabc01c86ee63bd59f2\";}i:1912;a:2:{s:4:\"path\";s:34:\"/web/source/cloud/process.ctrl.php\";s:8:\"checksum\";s:32:\"90747870c0ee4012dbabff2065a73df6\";}i:1913;a:2:{s:4:\"path\";s:34:\"/web/source/cloud/profile.ctrl.php\";s:8:\"checksum\";s:32:\"304dd9384ca1dbbb28c9b95912fdc063\";}i:1914;a:2:{s:4:\"path\";s:35:\"/web/source/cloud/redirect.ctrl.php\";s:8:\"checksum\";s:32:\"d51aa55a09d520f9c5bc3ecb232838b6\";}i:1915;a:2:{s:4:\"path\";s:38:\"/web/source/cloud/sms-package.ctrl.php\";s:8:\"checksum\";s:32:\"29ee89372bfa1c7e813b2ee0997028d8\";}i:1916;a:2:{s:4:\"path\";s:36:\"/web/source/cloud/sms-share.ctrl.php\";s:8:\"checksum\";s:32:\"147c19f1c020f954420fa5ee3439cbe6\";}i:1917;a:2:{s:4:\"path\";s:35:\"/web/source/cloud/sms-sign.ctrl.php\";s:8:\"checksum\";s:32:\"09c9d1514afb094e497fc2225752b600\";}i:1918;a:2:{s:4:\"path\";s:41:\"/web/source/cloud/sms-statistics.ctrl.php\";s:8:\"checksum\";s:32:\"4fc0e6c8338475511f6629a11b015b48\";}i:1919;a:2:{s:4:\"path\";s:39:\"/web/source/cloud/sms-template.ctrl.php\";s:8:\"checksum\";s:32:\"70321b465d51245d6825d43f042abdc9\";}i:1920;a:2:{s:4:\"path\";s:30:\"/web/source/cloud/sms.ctrl.php\";s:8:\"checksum\";s:32:\"cf09033366835236677330d5a41ddc35\";}i:1921;a:2:{s:4:\"path\";s:34:\"/web/source/cloud/upgrade.ctrl.php\";s:8:\"checksum\";s:32:\"c2698bb27f59a2514bcb7353dcdc1308\";}i:1922;a:2:{s:4:\"path\";s:31:\"/web/source/cron/entry.ctrl.php\";s:8:\"checksum\";s:32:\"5b3f08d2ecdd3fa79c9cb4758e8c2ca5\";}i:1923;a:2:{s:4:\"path\";s:33:\"/web/source/cron/manager.ctrl.php\";s:8:\"checksum\";s:32:\"76a3c62e4938f257a17c389b8d52351b\";}i:1924;a:2:{s:4:\"path\";s:27:\"/web/source/help/__init.php\";s:8:\"checksum\";s:32:\"23a26c0da873fc00a6da738aebd5c69e\";}i:1925;a:2:{s:4:\"path\";s:33:\"/web/source/help/display.ctrl.php\";s:8:\"checksum\";s:32:\"c2ac29d3ea436132908071de82238cd1\";}i:1926;a:2:{s:4:\"path\";s:27:\"/web/source/home/__init.php\";s:8:\"checksum\";s:32:\"7645963c98710f9b48f07d7ee6f4ee1e\";}i:1927;a:2:{s:4:\"path\";s:33:\"/web/source/home/welcome.ctrl.php\";s:8:\"checksum\";s:32:\"80f2e123021af9026aa13fa052801d2a\";}i:1928;a:2:{s:4:\"path\";s:25:\"/web/source/mc/__init.php\";s:8:\"checksum\";s:32:\"dc3334e30e1ab47730bf53bc4c39d88a\";}i:1929;a:2:{s:4:\"path\";s:29:\"/web/source/mc/chats.ctrl.php\";s:8:\"checksum\";s:32:\"9f25031ef05f948482f42e9a32b08ec3\";}i:1930;a:2:{s:4:\"path\";s:28:\"/web/source/mc/fans.ctrl.php\";s:8:\"checksum\";s:32:\"0282b6824c7b4a8ed3485e80efef6e4e\";}i:1931;a:2:{s:4:\"path\";s:30:\"/web/source/mc/fields.ctrl.php\";s:8:\"checksum\";s:32:\"770f2229ac744ec8206e46d0804bb359\";}i:1932;a:2:{s:4:\"path\";s:29:\"/web/source/mc/group.ctrl.php\";s:8:\"checksum\";s:32:\"8272d98f624692b79af6179d5c8f9d29\";}i:1933;a:2:{s:4:\"path\";s:30:\"/web/source/mc/member.ctrl.php\";s:8:\"checksum\";s:32:\"b852260266175f2faaab9abb5f0e3707\";}i:1934;a:2:{s:4:\"path\";s:31:\"/web/source/mc/message.ctrl.php\";s:8:\"checksum\";s:32:\"50cbe831aee30add250b3d5b89b6d2a4\";}i:1935;a:2:{s:4:\"path\";s:29:\"/web/source/mc/trade.ctrl.php\";s:8:\"checksum\";s:32:\"e70c39abe5bdd6a262dc2c579b002aa6\";}i:1936;a:2:{s:4:\"path\";s:30:\"/web/source/message/__init.php\";s:8:\"checksum\";s:32:\"a999e9cc6396b938f1798e579bf51cfe\";}i:1937;a:2:{s:4:\"path\";s:35:\"/web/source/message/notice.ctrl.php\";s:8:\"checksum\";s:32:\"ca94bf1188cc7385b44b4ab8094a747d\";}i:1938;a:2:{s:4:\"path\";s:30:\"/web/source/miniapp/__init.php\";s:8:\"checksum\";s:32:\"a47fea3c453935a882f1b3717f7363cf\";}i:1939;a:2:{s:4:\"path\";s:35:\"/web/source/miniapp/manage.ctrl.php\";s:8:\"checksum\";s:32:\"1e6b48e60f76c5c6759a57ae5fb44ffe\";}i:1940;a:2:{s:4:\"path\";s:33:\"/web/source/miniapp/post.ctrl.php\";s:8:\"checksum\";s:32:\"97fe669b2041cf219e2acbe61c29a3d5\";}i:1941;a:2:{s:4:\"path\";s:36:\"/web/source/miniapp/version.ctrl.php\";s:8:\"checksum\";s:32:\"6a03015c434252e17b57c32b5b8cbe6b\";}i:1942;a:2:{s:4:\"path\";s:29:\"/web/source/module/__init.php\";s:8:\"checksum\";s:32:\"8b512408a2d0358f7a51fe1fba144843\";}i:1943;a:2:{s:4:\"path\";s:35:\"/web/source/module/display.ctrl.php\";s:8:\"checksum\";s:32:\"2b98549aa60da5f95fa13cabd49406ef\";}i:1944;a:2:{s:4:\"path\";s:34:\"/web/source/module/expire.ctrl.php\";s:8:\"checksum\";s:32:\"ce26027bdb047ad4c9d2023c78cabff5\";}i:1945;a:2:{s:4:\"path\";s:33:\"/web/source/module/group.ctrl.php\";s:8:\"checksum\";s:32:\"4ec6ef562aa4dec88666c293cc3e0ccf\";}i:1946;a:2:{s:4:\"path\";s:40:\"/web/source/module/link-account.ctrl.php\";s:8:\"checksum\";s:32:\"2fcf2cfd3549b9f92c43e2114c287fbf\";}i:1947;a:2:{s:4:\"path\";s:32:\"/web/source/module/link.ctrl.php\";s:8:\"checksum\";s:32:\"cb0bc56e42daae09ec01756589082337\";}i:1948;a:2:{s:4:\"path\";s:42:\"/web/source/module/manage-account.ctrl.php\";s:8:\"checksum\";s:32:\"3672fb827e7174a57443caf1cae89a92\";}i:1949;a:2:{s:4:\"path\";s:41:\"/web/source/module/manage-system.ctrl.php\";s:8:\"checksum\";s:32:\"f2b50c0aebc385a9ab77a8c9fe7517bb\";}i:1950;a:2:{s:4:\"path\";s:38:\"/web/source/module/permission.ctrl.php\";s:8:\"checksum\";s:32:\"f1a946cb40cbd6313882f88bbb0bdde7\";}i:1951;a:2:{s:4:\"path\";s:34:\"/web/source/module/plugin.ctrl.php\";s:8:\"checksum\";s:32:\"06c24d7b2ec07c019b5879ae6cfd415a\";}i:1952;a:2:{s:4:\"path\";s:36:\"/web/source/module/shortcut.ctrl.php\";s:8:\"checksum\";s:32:\"3e6f3cb2d4743c852da55af1ef02a8fc\";}i:1953;a:2:{s:4:\"path\";s:35:\"/web/source/module/welcome.ctrl.php\";s:8:\"checksum\";s:32:\"74f6592b9c07d3a6d17350f29173b7d2\";}i:1954;a:2:{s:4:\"path\";s:31:\"/web/source/phoneapp/__init.php\";s:8:\"checksum\";s:32:\"74935779f56f62a4890c827def52269e\";}i:1955;a:2:{s:4:\"path\";s:41:\"/web/source/phoneapp/description.ctrl.php\";s:8:\"checksum\";s:32:\"a960b041a567c0b456779b0a3fa9732d\";}i:1956;a:2:{s:4:\"path\";s:44:\"/web/source/phoneapp/front-download.ctrl.php\";s:8:\"checksum\";s:32:\"3fe8f7fc1716caa624e8c49af2576b7c\";}i:1957;a:2:{s:4:\"path\";s:36:\"/web/source/phoneapp/manage.ctrl.php\";s:8:\"checksum\";s:32:\"eb26f673092c7bfc87d1504ec45260e8\";}i:1958;a:2:{s:4:\"path\";s:31:\"/web/source/platform/__init.php\";s:8:\"checksum\";s:32:\"aaaefc10c191d29624134d43f68ea357\";}i:1959;a:2:{s:4:\"path\";s:35:\"/web/source/platform/cover.ctrl.php\";s:8:\"checksum\";s:32:\"effe665ee225fadcc26f40b8b2324bb4\";}i:1960;a:2:{s:4:\"path\";s:34:\"/web/source/platform/mass.ctrl.php\";s:8:\"checksum\";s:32:\"f7de13095c10821cb1b626f268a71b8b\";}i:1961;a:2:{s:4:\"path\";s:43:\"/web/source/platform/material-post.ctrl.php\";s:8:\"checksum\";s:32:\"ba8c9fd1af38fa0b9686366f7aeb07ce\";}i:1962;a:2:{s:4:\"path\";s:38:\"/web/source/platform/material.ctrl.php\";s:8:\"checksum\";s:32:\"763fb747ccfb318e5271e6b3eb6e36ae\";}i:1963;a:2:{s:4:\"path\";s:34:\"/web/source/platform/menu.ctrl.php\";s:8:\"checksum\";s:32:\"7988a0b47f2abab412c9f8d319e439ce\";}i:1964;a:2:{s:4:\"path\";s:32:\"/web/source/platform/qr.ctrl.php\";s:8:\"checksum\";s:32:\"01e748774c2930712e6239c58b320f5f\";}i:1965;a:2:{s:4:\"path\";s:35:\"/web/source/platform/reply.ctrl.php\";s:8:\"checksum\";s:32:\"ab9901c7b024b603173d88f3e2ab0422\";}i:1966;a:2:{s:4:\"path\";s:37:\"/web/source/platform/service.ctrl.php\";s:8:\"checksum\";s:32:\"246c933961c0bbf6a694812f0207f62d\";}i:1967;a:2:{s:4:\"path\";s:36:\"/web/source/platform/url2qr.ctrl.php\";s:8:\"checksum\";s:32:\"e9a9ace569d43323cd4cb4cc479eb884\";}i:1968;a:2:{s:4:\"path\";s:30:\"/web/source/profile/__init.php\";s:8:\"checksum\";s:32:\"2d6a96a1096ffda9544fba2f1a6e0866\";}i:1969;a:2:{s:4:\"path\";s:35:\"/web/source/profile/common.ctrl.php\";s:8:\"checksum\";s:32:\"7c2cdb1ce452f46351ada46d89cef32a\";}i:1970;a:2:{s:4:\"path\";s:48:\"/web/source/profile/module-link-uniacid.ctrl.php\";s:8:\"checksum\";s:32:\"e18662927d7635b74c1621645cd57e78\";}i:1971;a:2:{s:4:\"path\";s:35:\"/web/source/profile/notify.ctrl.php\";s:8:\"checksum\";s:32:\"eda7590fd015b6d5c5713e5ea90a93b5\";}i:1972;a:2:{s:4:\"path\";s:37:\"/web/source/profile/passport.ctrl.php\";s:8:\"checksum\";s:32:\"d633a7a893b49117538b49e24ba7da06\";}i:1973;a:2:{s:4:\"path\";s:36:\"/web/source/profile/payment.ctrl.php\";s:8:\"checksum\";s:32:\"aa8cf59eba4b120d71cc07a0976ba85e\";}i:1974;a:2:{s:4:\"path\";s:35:\"/web/source/profile/refund.ctrl.php\";s:8:\"checksum\";s:32:\"c4f47f7a268faef19f0db4100d2bf446\";}i:1975;a:2:{s:4:\"path\";s:35:\"/web/source/profile/remote.ctrl.php\";s:8:\"checksum\";s:32:\"bbdd8089391270947b82b52e9f3fa2e5\";}i:1976;a:2:{s:4:\"path\";s:42:\"/web/source/profile/reply-setting.ctrl.php\";s:8:\"checksum\";s:32:\"a98b56fe82b8429a0cf9b88e08ed5f06\";}i:1977;a:2:{s:4:\"path\";s:38:\"/web/source/profile/tplnotice.ctrl.php\";s:8:\"checksum\";s:32:\"7f8a23dbfd1d8382be1cac212c93fc90\";}i:1978;a:2:{s:4:\"path\";s:27:\"/web/source/site/__init.php\";s:8:\"checksum\";s:32:\"27f6b322dfffe4ceb774331323a75236\";}i:1979;a:2:{s:4:\"path\";s:33:\"/web/source/site/article.ctrl.php\";s:8:\"checksum\";s:32:\"ca53c2ae029e59595a6c1683c662c84f\";}i:1980;a:2:{s:4:\"path\";s:34:\"/web/source/site/category.ctrl.php\";s:8:\"checksum\";s:32:\"3fbec0be674e231fbe92833d21e31ce6\";}i:1981;a:2:{s:4:\"path\";s:33:\"/web/source/site/comment.ctrl.php\";s:8:\"checksum\";s:32:\"18ecc8056f075e62acf609883bd0f9e4\";}i:1982;a:2:{s:4:\"path\";s:32:\"/web/source/site/editor.ctrl.php\";s:8:\"checksum\";s:32:\"e597457857c281a47686267818148a0e\";}i:1983;a:2:{s:4:\"path\";s:31:\"/web/source/site/entry.ctrl.php\";s:8:\"checksum\";s:32:\"bdbd57bd52106be133496de47507c81c\";}i:1984;a:2:{s:4:\"path\";s:31:\"/web/source/site/multi.ctrl.php\";s:8:\"checksum\";s:32:\"742b26100f97f8664789d92382967e12\";}i:1985;a:2:{s:4:\"path\";s:29:\"/web/source/site/nav.ctrl.php\";s:8:\"checksum\";s:32:\"0e9941cb71ffa8c338e84d67b4bec4fd\";}i:1986;a:2:{s:4:\"path\";s:31:\"/web/source/site/slide.ctrl.php\";s:8:\"checksum\";s:32:\"cfd93911c223329462672c784cc50cda\";}i:1987;a:2:{s:4:\"path\";s:31:\"/web/source/site/style.ctrl.php\";s:8:\"checksum\";s:32:\"6a3b77e413516c49e3250d3708b20d55\";}i:1988;a:2:{s:4:\"path\";s:33:\"/web/source/statistics/__init.php\";s:8:\"checksum\";s:32:\"832d2e587ef02fd6949e39ace53ae507\";}i:1989;a:2:{s:4:\"path\";s:39:\"/web/source/statistics/account.ctrl.php\";s:8:\"checksum\";s:32:\"fb5265abf8b4c1a052988e93e64bf389\";}i:1990;a:2:{s:4:\"path\";s:29:\"/web/source/system/__init.php\";s:8:\"checksum\";s:32:\"9aa5fd3da41c91c9198ba82809f2d6a0\";}i:1991;a:2:{s:4:\"path\";s:38:\"/web/source/system/attachment.ctrl.php\";s:8:\"checksum\";s:32:\"d486c6ec5c5a6976f6d575d9e34e82b4\";}i:1992;a:2:{s:4:\"path\";s:31:\"/web/source/system/bom.ctrl.php\";s:8:\"checksum\";s:32:\"d5defbe3ae2ccbbf614d4f08e498cbcb\";}i:1993;a:2:{s:4:\"path\";s:33:\"/web/source/system/check.ctrl.php\";s:8:\"checksum\";s:32:\"060b3f4af8dc0d7f995cb13c28924184\";}i:1994;a:2:{s:4:\"path\";s:36:\"/web/source/system/database.ctrl.php\";s:8:\"checksum\";s:32:\"2e0a114fef1f603e34270c7c29ef1645\";}i:1995;a:2:{s:4:\"path\";s:37:\"/web/source/system/filecheck.ctrl.php\";s:8:\"checksum\";s:32:\"59cba7f83615f1b1c2dd1b93e12918a7\";}i:1996;a:2:{s:4:\"path\";s:39:\"/web/source/system/ipwhitelist.ctrl.php\";s:8:\"checksum\";s:32:\"fb9e04609e7aa95e06904d26d95616d1\";}i:1997;a:2:{s:4:\"path\";s:31:\"/web/source/system/job.ctrl.php\";s:8:\"checksum\";s:32:\"46e06e960ad14114ed85a40b4207c14c\";}i:1998;a:2:{s:4:\"path\";s:32:\"/web/source/system/logs.ctrl.php\";s:8:\"checksum\";s:32:\"688e563a68a8b5b7bed7c320784da665\";}i:1999;a:2:{s:4:\"path\";s:32:\"/web/source/system/menu.ctrl.php\";s:8:\"checksum\";s:32:\"cd4d215c47a569b3abf52b860eeff7b6\";}i:2000;a:2:{s:4:\"path\";s:33:\"/web/source/system/oauth.ctrl.php\";s:8:\"checksum\";s:32:\"ef09b2d8a166ca2d8a13cf9c677fee52\";}i:2001;a:2:{s:4:\"path\";s:36:\"/web/source/system/optimize.ctrl.php\";s:8:\"checksum\";s:32:\"b310f887c3e680157d5c29159ebd78d1\";}i:2002;a:2:{s:4:\"path\";s:36:\"/web/source/system/platform.ctrl.php\";s:8:\"checksum\";s:32:\"9177c9d78bc5d41d8c8369ff1fe10bf8\";}i:2003;a:2:{s:4:\"path\";s:32:\"/web/source/system/scan.ctrl.php\";s:8:\"checksum\";s:32:\"9c9b750648359bc6d25c652406836463\";}i:2004;a:2:{s:4:\"path\";s:41:\"/web/source/system/sensitiveword.ctrl.php\";s:8:\"checksum\";s:32:\"610f4b04472d661231f7a6b90af61d94\";}i:2005;a:2:{s:4:\"path\";s:32:\"/web/source/system/site.ctrl.php\";s:8:\"checksum\";s:32:\"df93f93a3b82cd1bc441c41586bb30b5\";}i:2006;a:2:{s:4:\"path\";s:38:\"/web/source/system/systeminfo.ctrl.php\";s:8:\"checksum\";s:32:\"5120071b0299929f9e4134e418ba98b7\";}i:2007;a:2:{s:4:\"path\";s:36:\"/web/source/system/template.ctrl.php\";s:8:\"checksum\";s:32:\"a25bd0a7d44275b63de884fcdbefe2a9\";}i:2008;a:2:{s:4:\"path\";s:38:\"/web/source/system/thirdlogin.ctrl.php\";s:8:\"checksum\";s:32:\"128fb414b9efd706ad44e832d4cc1547\";}i:2009;a:2:{s:4:\"path\";s:39:\"/web/source/system/updatecache.ctrl.php\";s:8:\"checksum\";s:32:\"f69f9d74059591e2cb85093f9a47bb8c\";}i:2010;a:2:{s:4:\"path\";s:37:\"/web/source/system/workorder.ctrl.php\";s:8:\"checksum\";s:32:\"ec1b2ef494a22820866a1604da7bb307\";}i:2011;a:2:{s:4:\"path\";s:27:\"/web/source/user/__init.php\";s:8:\"checksum\";s:32:\"f061701f7e0a3f59091736635e96a9bf\";}i:2012;a:2:{s:4:\"path\";s:40:\"/web/source/user/agreement-show.ctrl.php\";s:8:\"checksum\";s:32:\"9c34ec2a613db169dc2a37bc0797e43c\";}i:2013;a:2:{s:4:\"path\";s:35:\"/web/source/user/agreement.ctrl.php\";s:8:\"checksum\";s:32:\"c14a877b589bd456ff6dc393626e73dd\";}i:2014;a:2:{s:4:\"path\";s:38:\"/web/source/user/create-group.ctrl.php\";s:8:\"checksum\";s:32:\"6a1451fe0bd6a703ab263f1140218472\";}i:2015;a:2:{s:4:\"path\";s:32:\"/web/source/user/create.ctrl.php\";s:8:\"checksum\";s:32:\"ca3080ad9e0b6ee424ca5b9e1018e533\";}i:2016;a:2:{s:4:\"path\";s:33:\"/web/source/user/display.ctrl.php\";s:8:\"checksum\";s:32:\"495e33910e35b4fc3525d4b0cb8bba3d\";}i:2017;a:2:{s:4:\"path\";s:30:\"/web/source/user/edit.ctrl.php\";s:8:\"checksum\";s:32:\"cb2b12e5ccbdff19fc47a4ca6c964af2\";}i:2018;a:2:{s:4:\"path\";s:32:\"/web/source/user/expire.ctrl.php\";s:8:\"checksum\";s:32:\"31814b0c74303dff98f5e0429abdfe0e\";}i:2019;a:2:{s:4:\"path\";s:32:\"/web/source/user/fields.ctrl.php\";s:8:\"checksum\";s:32:\"e491edbb1f28f41290f316813d81b447\";}i:2020;a:2:{s:4:\"path\";s:39:\"/web/source/user/find-password.ctrl.php\";s:8:\"checksum\";s:32:\"a7a255ea446dce9ac18eb7cf77e202b0\";}i:2021;a:2:{s:4:\"path\";s:31:\"/web/source/user/group.ctrl.php\";s:8:\"checksum\";s:32:\"988b27dbb2dd4632f8ef013c3d0c466d\";}i:2022;a:2:{s:4:\"path\";s:31:\"/web/source/user/login.ctrl.php\";s:8:\"checksum\";s:32:\"f908f519e2ac6179ba2644f8d9227df1\";}i:2023;a:2:{s:4:\"path\";s:32:\"/web/source/user/logout.ctrl.php\";s:8:\"checksum\";s:32:\"7f5d24e73029d778876bd730090c6b79\";}i:2024;a:2:{s:4:\"path\";s:33:\"/web/source/user/profile.ctrl.php\";s:8:\"checksum\";s:32:\"889941561d4328e390b05626a0514eda\";}i:2025;a:2:{s:4:\"path\";s:34:\"/web/source/user/register.ctrl.php\";s:8:\"checksum\";s:32:\"c9e13708bad6ce79f2b16803adce8d31\";}i:2026;a:2:{s:4:\"path\";s:37:\"/web/source/user/registerset.ctrl.php\";s:8:\"checksum\";s:32:\"47458a76f5b6d15da41c04084ea278ff\";}i:2027;a:2:{s:4:\"path\";s:36:\"/web/source/user/third-bind.ctrl.php\";s:8:\"checksum\";s:32:\"2d34606b0fec8302995e7fc478e83f1b\";}i:2028;a:2:{s:4:\"path\";s:30:\"/web/source/utility/__init.php\";s:8:\"checksum\";s:32:\"94f3d090f18c2e175cc7dd50c8f377f9\";}i:2029;a:2:{s:4:\"path\";s:37:\"/web/source/utility/bindcall.ctrl.php\";s:8:\"checksum\";s:32:\"419bd29f66f16283e99eecb456046b2d\";}i:2030;a:2:{s:4:\"path\";s:41:\"/web/source/utility/checkupgrade.ctrl.php\";s:8:\"checksum\";s:32:\"9b43d07765d60723512e41b1ff028e19\";}i:2031;a:2:{s:4:\"path\";s:33:\"/web/source/utility/code.ctrl.php\";s:8:\"checksum\";s:32:\"5cc256116892d0167ca141c01f69e9de\";}i:2032;a:2:{s:4:\"path\";s:37:\"/web/source/utility/emulator.ctrl.php\";s:8:\"checksum\";s:32:\"808512b20fcba307c14e8d3b087b7e4b\";}i:2033;a:2:{s:4:\"path\";s:33:\"/web/source/utility/file.ctrl.php\";s:8:\"checksum\";s:32:\"4048d5af052fd486579d170aa5c53226\";}i:2034;a:2:{s:4:\"path\";s:34:\"/web/source/utility/group.ctrl.php\";s:8:\"checksum\";s:32:\"68d05a5ddb3451352e404bf9b4f7a314\";}i:2035;a:2:{s:4:\"path\";s:36:\"/web/source/utility/keyword.ctrl.php\";s:8:\"checksum\";s:32:\"7e22e120856f0c735b90408d153a44a1\";}i:2036;a:2:{s:4:\"path\";s:33:\"/web/source/utility/link.ctrl.php\";s:8:\"checksum\";s:32:\"27a8d556371e2d9d67398257917a1766\";}i:2037;a:2:{s:4:\"path\";s:36:\"/web/source/utility/modules.ctrl.php\";s:8:\"checksum\";s:32:\"875abf2eb8e99aed235f795d5c04f2bb\";}i:2038;a:2:{s:4:\"path\";s:38:\"/web/source/utility/subscribe.ctrl.php\";s:8:\"checksum\";s:32:\"bb130209301bc5729db0532fc24394b0\";}i:2039;a:2:{s:4:\"path\";s:33:\"/web/source/utility/sync.ctrl.php\";s:8:\"checksum\";s:32:\"ab84a14177db907b85ffbfa340010203\";}i:2040;a:2:{s:4:\"path\";s:33:\"/web/source/utility/user.ctrl.php\";s:8:\"checksum\";s:32:\"119ac5e686c77fce9b6b3816174a87ac\";}i:2041;a:2:{s:4:\"path\";s:39:\"/web/source/utility/verifycode.ctrl.php\";s:8:\"checksum\";s:32:\"547594a76ee13cb25cdb5d3fb6e7d8c2\";}i:2042;a:2:{s:4:\"path\";s:34:\"/web/source/utility/visit.ctrl.php\";s:8:\"checksum\";s:32:\"4251b557a9ef871b707a893698555090\";}i:2043;a:2:{s:4:\"path\";s:35:\"/web/source/utility/wxcode.ctrl.php\";s:8:\"checksum\";s:32:\"c6369eb1b3bfc9c333178fbb80378499\";}i:2044;a:2:{s:4:\"path\";s:29:\"/web/source/webapp/__init.php\";s:8:\"checksum\";s:32:\"a4de80f26930f6982b47f062b54cafe7\";}i:2045;a:2:{s:4:\"path\";s:39:\"/web/source/webapp/bind-domain.ctrl.php\";s:8:\"checksum\";s:32:\"8c372e4d48ff6138265023a1d0933dc2\";}i:2046;a:2:{s:4:\"path\";s:32:\"/web/source/webapp/home.ctrl.php\";s:8:\"checksum\";s:32:\"063c1b8204cdc882078f5b104d09bc84\";}i:2047;a:2:{s:4:\"path\";s:35:\"/web/source/webapp/rewrite.ctrl.php\";s:8:\"checksum\";s:32:\"c29336899e6d6a274a897ab34907cd29\";}i:2048;a:2:{s:4:\"path\";s:28:\"/web/source/wxapp/__init.php\";s:8:\"checksum\";s:32:\"ee3d37ea7d7e44fcbd60c9438960508b\";}i:2049;a:2:{s:4:\"path\";s:31:\"/web/source/wxapp/auth.ctrl.php\";s:8:\"checksum\";s:32:\"8ef8b49dcf292c64477435a24de8deec\";}i:2050;a:2:{s:4:\"path\";s:36:\"/web/source/wxapp/domainset.ctrl.php\";s:8:\"checksum\";s:32:\"f3a53964f1e508af1bbfce28269fd4f9\";}i:2051;a:2:{s:4:\"path\";s:40:\"/web/source/wxapp/entrance-link.ctrl.php\";s:8:\"checksum\";s:32:\"ea1d0ed2ce209a4cfa1e1e9a508d179c\";}i:2052;a:2:{s:4:\"path\";s:41:\"/web/source/wxapp/front-download.ctrl.php\";s:8:\"checksum\";s:32:\"4aadf28012d583581cfcdd09a8630521\";}i:2053;a:2:{s:4:\"path\";s:46:\"/web/source/wxapp/module-link-uniacid.ctrl.php\";s:8:\"checksum\";s:32:\"db1b3e7af3d72c1f2b14cb998e09b49b\";}i:2054;a:2:{s:4:\"path\";s:34:\"/web/source/wxapp/payment.ctrl.php\";s:8:\"checksum\";s:32:\"91fd67d2f4e117bd8de2939ee29f2b81\";}i:2055;a:2:{s:4:\"path\";s:31:\"/web/source/wxapp/post.ctrl.php\";s:8:\"checksum\";s:32:\"fd66d19a541aeb4eef535f20196781f3\";}i:2056;a:2:{s:4:\"path\";s:33:\"/web/source/wxapp/refund.ctrl.php\";s:8:\"checksum\";s:32:\"87bb1396f42060b2857205cc05ee495e\";}i:2057;a:2:{s:4:\"path\";s:37:\"/web/source/wxapp/statistics.ctrl.php\";s:8:\"checksum\";s:32:\"1e824f06ba7785044dc9a49740bcf8e3\";}i:2058;a:2:{s:4:\"path\";s:28:\"/web/source/xzapp/__init.php\";s:8:\"checksum\";s:32:\"b69b8f6e67dab531db82e8739736b453\";}i:2059;a:2:{s:4:\"path\";s:36:\"/web/source/xzapp/post-step.ctrl.php\";s:8:\"checksum\";s:32:\"b6504e481418d3307071855aec73ac14\";}i:2060;a:2:{s:4:\"path\";s:34:\"/web/themes/2.0/common/footer.html\";s:8:\"checksum\";s:32:\"e77b0981a89e8a072852e46e7ea6eb7e\";}i:2061;a:2:{s:4:\"path\";s:42:\"/web/themes/2.0/common/header-account.html\";s:8:\"checksum\";s:32:\"4dc750a5a3aa9aaf4ca7e268dd932379\";}i:2062;a:2:{s:4:\"path\";s:48:\"/web/themes/2.0/common/header-advertisement.html\";s:8:\"checksum\";s:32:\"3fc1e1c9c7efec79fd7ea37b5ed55ed7\";}i:2063;a:2:{s:4:\"path\";s:41:\"/web/themes/2.0/common/header-module.html\";s:8:\"checksum\";s:32:\"a4e7b8e7d4af611f74cb64c3aacaf282\";}i:2064;a:2:{s:4:\"path\";s:39:\"/web/themes/2.0/common/header-site.html\";s:8:\"checksum\";s:32:\"aeb05ce38ef6131af14bc730900728e6\";}i:2065;a:2:{s:4:\"path\";s:41:\"/web/themes/2.0/common/header-system.html\";s:8:\"checksum\";s:32:\"3b342a83600ff39d9b232a4283aa2265\";}i:2066;a:2:{s:4:\"path\";s:40:\"/web/themes/2.0/common/header-wxapp.html\";s:8:\"checksum\";s:32:\"a364b0ce689ffce4f0eea9021b2a3625\";}i:2067;a:2:{s:4:\"path\";s:34:\"/web/themes/2.0/common/header.html\";s:8:\"checksum\";s:32:\"8cc05fe62b1bb99841713434d09ca334\";}i:2068;a:2:{s:4:\"path\";s:26:\"/web/themes/2.0/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:2069;a:2:{s:4:\"path\";s:47:\"/web/themes/default/account/account-header.html\";s:8:\"checksum\";s:32:\"0ffad9cb50003d01552354c216101a35\";}i:2070;a:2:{s:4:\"path\";s:39:\"/web/themes/default/account/create.html\";s:8:\"checksum\";s:32:\"4b9053125fe10db5bd354682cb5c2af1\";}i:2071;a:2:{s:4:\"path\";s:40:\"/web/themes/default/account/display.html\";s:8:\"checksum\";s:32:\"b40031147f1f0fcc548d25f4102049e3\";}i:2072;a:2:{s:4:\"path\";s:44:\"/web/themes/default/account/manage-base.html\";s:8:\"checksum\";s:32:\"f0f304bb752dc9b7f4d6113f063fdd35\";}i:2073;a:2:{s:4:\"path\";s:47:\"/web/themes/default/account/manage-display.html\";s:8:\"checksum\";s:32:\"5876d9bb9b6c03ae18fe992471bd0ac9\";}i:2074;a:2:{s:4:\"path\";s:55:\"/web/themes/default/account/manage-expired-message.html\";s:8:\"checksum\";s:32:\"18fe19d127681db8439e71d6b902b671\";}i:2075;a:2:{s:4:\"path\";s:51:\"/web/themes/default/account/manage-modules-tpl.html\";s:8:\"checksum\";s:32:\"60deabba1f2ecd7092074b08d1677525\";}i:2076;a:2:{s:4:\"path\";s:50:\"/web/themes/default/account/manage-operatoers.html\";s:8:\"checksum\";s:32:\"e2c47f8b588cecad2ea9d9d34912a641\";}i:2077;a:2:{s:4:\"path\";s:45:\"/web/themes/default/account/manage-users.html\";s:8:\"checksum\";s:32:\"a59d5349046156304f0e5765fa61d997\";}i:2078;a:2:{s:4:\"path\";s:42:\"/web/themes/default/account/post-step.html\";s:8:\"checksum\";s:32:\"d99b855ad3f76e332ff46c56679e52b1\";}i:2079;a:2:{s:4:\"path\";s:40:\"/web/themes/default/account/recycle.html\";s:8:\"checksum\";s:32:\"d1851f77f868bb4bfa5e878fb8fad954\";}i:2080;a:2:{s:4:\"path\";s:47:\"/web/themes/default/account/set-permission.html\";s:8:\"checksum\";s:32:\"aef97cf67f582e411ab281e08ac587f5\";}i:2081;a:2:{s:4:\"path\";s:40:\"/web/themes/default/account/welcome.html\";s:8:\"checksum\";s:32:\"71cdfd82ecf1205e1a1f6cd0b5c34732\";}i:2082;a:2:{s:4:\"path\";s:45:\"/web/themes/default/article/comment-list.html\";s:8:\"checksum\";s:32:\"2e51cf77a9641d2ce65d432bcdd670b8\";}i:2083;a:2:{s:4:\"path\";s:41:\"/web/themes/default/article/comments.html\";s:8:\"checksum\";s:32:\"1d97bf85b92768d9768de65baf7bfaad\";}i:2084;a:2:{s:4:\"path\";s:39:\"/web/themes/default/article/common.html\";s:8:\"checksum\";s:32:\"6dead86cbca4c8a0be37e3bc26ad045e\";}i:2085;a:2:{s:4:\"path\";s:51:\"/web/themes/default/article/news-category-post.html\";s:8:\"checksum\";s:32:\"12acef5f8c7b21e038a441f9f53cd512\";}i:2086;a:2:{s:4:\"path\";s:46:\"/web/themes/default/article/news-category.html\";s:8:\"checksum\";s:32:\"758fd2bd2f4bc29e6a3119eba3f02348\";}i:2087;a:2:{s:4:\"path\";s:42:\"/web/themes/default/article/news-post.html\";s:8:\"checksum\";s:32:\"778bc8319deeaa327487974a89c6c65f\";}i:2088;a:2:{s:4:\"path\";s:42:\"/web/themes/default/article/news-show.html\";s:8:\"checksum\";s:32:\"6688535cfbf681e105a7866c303761b6\";}i:2089;a:2:{s:4:\"path\";s:37:\"/web/themes/default/article/news.html\";s:8:\"checksum\";s:32:\"d66c861e64677eaf8643b150575a64fa\";}i:2090;a:2:{s:4:\"path\";s:53:\"/web/themes/default/article/notice-category-post.html\";s:8:\"checksum\";s:32:\"f9e3ee54bde2bdd8c1a765aad086fd30\";}i:2091;a:2:{s:4:\"path\";s:48:\"/web/themes/default/article/notice-category.html\";s:8:\"checksum\";s:32:\"0c7a016d88a65171f0d63d188500feda\";}i:2092;a:2:{s:4:\"path\";s:44:\"/web/themes/default/article/notice-news.html\";s:8:\"checksum\";s:32:\"203a8a01e18f9c771f43e2d3e556437f\";}i:2093;a:2:{s:4:\"path\";s:44:\"/web/themes/default/article/notice-post.html\";s:8:\"checksum\";s:32:\"842fac28dbbb95dfad18cebd3e55ea44\";}i:2094;a:2:{s:4:\"path\";s:44:\"/web/themes/default/article/notice-show.html\";s:8:\"checksum\";s:32:\"360269f22dae4fa287b23b290ca03dbd\";}i:2095;a:2:{s:4:\"path\";s:39:\"/web/themes/default/article/notice.html\";s:8:\"checksum\";s:32:\"a5dd70808e2678843c154670e2430e70\";}i:2096;a:2:{s:4:\"path\";s:39:\"/web/themes/default/cloud/diagnose.html\";s:8:\"checksum\";s:32:\"84ba3a91659937e26bad2b0cde200598\";}i:2097;a:2:{s:4:\"path\";s:36:\"/web/themes/default/cloud/frame.html\";s:8:\"checksum\";s:32:\"f610d6f713457c824f987cc336171aa6\";}i:2098;a:2:{s:4:\"path\";s:38:\"/web/themes/default/cloud/process.html\";s:8:\"checksum\";s:32:\"0ddbcb8794b3b1936d267e88029f6d8f\";}i:2099;a:2:{s:4:\"path\";s:35:\"/web/themes/default/cloud/site.html\";s:8:\"checksum\";s:32:\"f597b65f437178040d34152b997c0244\";}i:2100;a:2:{s:4:\"path\";s:39:\"/web/themes/default/cloud/sms-mass.html\";s:8:\"checksum\";s:32:\"3e9f74684facde90fd773e38e8462b02\";}i:2101;a:2:{s:4:\"path\";s:42:\"/web/themes/default/cloud/sms-package.html\";s:8:\"checksum\";s:32:\"ef136e4a9250172e551255c975a2563c\";}i:2102;a:2:{s:4:\"path\";s:40:\"/web/themes/default/cloud/sms-share.html\";s:8:\"checksum\";s:32:\"9947a8355f482eb58dd6d6332b02cbf3\";}i:2103;a:2:{s:4:\"path\";s:39:\"/web/themes/default/cloud/sms-sign.html\";s:8:\"checksum\";s:32:\"ff824bd53e50e0cb398c342bf0fdf58d\";}i:2104;a:2:{s:4:\"path\";s:45:\"/web/themes/default/cloud/sms-statistics.html\";s:8:\"checksum\";s:32:\"d4ad40232462e5ea6e99a2d9e08878ac\";}i:2105;a:2:{s:4:\"path\";s:43:\"/web/themes/default/cloud/sms-template.html\";s:8:\"checksum\";s:32:\"df3ca286c2a08a5ec62b9167a5e11049\";}i:2106;a:2:{s:4:\"path\";s:34:\"/web/themes/default/cloud/sms.html\";s:8:\"checksum\";s:32:\"ebafce89d10c1df295f37a77afec7d66\";}i:2107;a:2:{s:4:\"path\";s:38:\"/web/themes/default/cloud/upgrade.html\";s:8:\"checksum\";s:32:\"7d3d27079e835c2cacd22508f2cdc49b\";}i:2108;a:2:{s:4:\"path\";s:43:\"/web/themes/default/common/footer-base.html\";s:8:\"checksum\";s:32:\"07612b54450d22c5205f5fa09f8a305b\";}i:2109;a:2:{s:4:\"path\";s:38:\"/web/themes/default/common/footer.html\";s:8:\"checksum\";s:32:\"940b1bb1af6ddda727cc703e9b189116\";}i:2110;a:2:{s:4:\"path\";s:46:\"/web/themes/default/common/header-account.html\";s:8:\"checksum\";s:32:\"e14b23534d991679b5f98e4f42a63dca\";}i:2111;a:2:{s:4:\"path\";s:52:\"/web/themes/default/common/header-advertisement.html\";s:8:\"checksum\";s:32:\"802f9bc2dfcf1acffc94e8ffa9a986af\";}i:2112;a:2:{s:4:\"path\";s:43:\"/web/themes/default/common/header-base.html\";s:8:\"checksum\";s:32:\"28f8e2bfb7c2e1e47ebd5fa48c178433\";}i:2113;a:2:{s:4:\"path\";s:45:\"/web/themes/default/common/header-module.html\";s:8:\"checksum\";s:32:\"51d2a998e2d08136adb29260d92a9f7a\";}i:2114;a:2:{s:4:\"path\";s:45:\"/web/themes/default/common/header-notice.html\";s:8:\"checksum\";s:32:\"49705495f0e1475a910bf664a01846a5\";}i:2115;a:2:{s:4:\"path\";s:52:\"/web/themes/default/common/header-renew-account.html\";s:8:\"checksum\";s:32:\"1d16e78f076ccf78df4f9ffeb5f73688\";}i:2116;a:2:{s:4:\"path\";s:43:\"/web/themes/default/common/header-site.html\";s:8:\"checksum\";s:32:\"9f90de52907321d1e4eb04fdd62235e9\";}i:2117;a:2:{s:4:\"path\";s:44:\"/web/themes/default/common/header-store.html\";s:8:\"checksum\";s:32:\"56879d3c260c2eb54be2299eebfaab93\";}i:2118;a:2:{s:4:\"path\";s:45:\"/web/themes/default/common/header-system.html\";s:8:\"checksum\";s:32:\"755a3d714f0edd19f66f63ce46cab1d4\";}i:2119;a:2:{s:4:\"path\";s:45:\"/web/themes/default/common/header-topnav.html\";s:8:\"checksum\";s:32:\"18e3e31b4023409ab39449b392653080\";}i:2120;a:2:{s:4:\"path\";s:43:\"/web/themes/default/common/header-user.html\";s:8:\"checksum\";s:32:\"3b24a6a6bfbca7b72098e6d36e58b09b\";}i:2121;a:2:{s:4:\"path\";s:43:\"/web/themes/default/common/header-vice.html\";s:8:\"checksum\";s:32:\"da1e89c655715a2ec4c9249e660d4234\";}i:2122;a:2:{s:4:\"path\";s:44:\"/web/themes/default/common/header-wxapp.html\";s:8:\"checksum\";s:32:\"fb4ba12749990cdfa773cff1396f5608\";}i:2123;a:2:{s:4:\"path\";s:38:\"/web/themes/default/common/header.html\";s:8:\"checksum\";s:32:\"0251f0b4a5444830a79d25f9df129d06\";}i:2124;a:2:{s:4:\"path\";s:39:\"/web/themes/default/common/message.html\";s:8:\"checksum\";s:32:\"1f5f2d941269df8484c39e2cce2dc454\";}i:2125;a:2:{s:4:\"path\";s:37:\"/web/themes/default/help/display.html\";s:8:\"checksum\";s:32:\"d139f76a3cb47e4526f2606867c517ef\";}i:2126;a:2:{s:4:\"path\";s:34:\"/web/themes/default/home/home.html\";s:8:\"checksum\";s:32:\"88b7f6f8d3be612d0a8637db9f79cda4\";}i:2127;a:2:{s:4:\"path\";s:49:\"/web/themes/default/home/welcome-system-home.html\";s:8:\"checksum\";s:32:\"09dafe1af16228d91bd1f7203abdea52\";}i:2128;a:2:{s:4:\"path\";s:44:\"/web/themes/default/home/welcome-system.html\";s:8:\"checksum\";s:32:\"7a898ca0ebc5b617c486fe88e6290e14\";}i:2129;a:2:{s:4:\"path\";s:37:\"/web/themes/default/home/welcome.html\";s:8:\"checksum\";s:32:\"a155f01eca348f7a6795b3bfff116298\";}i:2130;a:2:{s:4:\"path\";s:30:\"/web/themes/default/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}i:2131;a:2:{s:4:\"path\";s:33:\"/web/themes/default/mc/chats.html\";s:8:\"checksum\";s:32:\"d138d07b8a634b065ab2274592d74ac6\";}i:2132;a:2:{s:4:\"path\";s:34:\"/web/themes/default/mc/common.html\";s:8:\"checksum\";s:32:\"eaff52ce6dd30aadbec9cbc920c656e2\";}i:2133;a:2:{s:4:\"path\";s:32:\"/web/themes/default/mc/fans.html\";s:8:\"checksum\";s:32:\"015ff2cd4a04d839f1ccca911ccd64ac\";}i:2134;a:2:{s:4:\"path\";s:34:\"/web/themes/default/mc/fields.html\";s:8:\"checksum\";s:32:\"d3377e2e3f4cb8f5e849682051df2321\";}i:2135;a:2:{s:4:\"path\";s:33:\"/web/themes/default/mc/group.html\";s:8:\"checksum\";s:32:\"50dab9bca34a128d2b909b3190a7092f\";}i:2136;a:2:{s:4:\"path\";s:38:\"/web/themes/default/mc/member-add.html\";s:8:\"checksum\";s:32:\"f420de5dba57ac80303e44eae95e8ea4\";}i:2137;a:2:{s:4:\"path\";s:46:\"/web/themes/default/mc/member-information.html\";s:8:\"checksum\";s:32:\"8644600c999199dda935bc05144c9ab8\";}i:2138;a:2:{s:4:\"path\";s:39:\"/web/themes/default/mc/member-post.html\";s:8:\"checksum\";s:32:\"8515fa9490cd885d7799b13c206a7477\";}i:2139;a:2:{s:4:\"path\";s:34:\"/web/themes/default/mc/member.html\";s:8:\"checksum\";s:32:\"9c54dd23b981cf263391ae9f4a2dbb7d\";}i:2140;a:2:{s:4:\"path\";s:40:\"/web/themes/default/mc/message_info.html\";s:8:\"checksum\";s:32:\"ccf53b08c095eabbefc66ba7bc9ed318\";}i:2141;a:2:{s:4:\"path\";s:40:\"/web/themes/default/mc/message_list.html\";s:8:\"checksum\";s:32:\"bd2e035937c45361b9acfc58497013fc\";}i:2142;a:2:{s:4:\"path\";s:39:\"/web/themes/default/message/notice.html\";s:8:\"checksum\";s:32:\"fbc4e52c52ee18b710edb10e00fae230\";}i:2143;a:2:{s:4:\"path\";s:39:\"/web/themes/default/miniapp/manage.html\";s:8:\"checksum\";s:32:\"24ac5066fd836c037edae671d4799d30\";}i:2144;a:2:{s:4:\"path\";s:37:\"/web/themes/default/miniapp/post.html\";s:8:\"checksum\";s:32:\"dbcad6562ca8e514f6f7857ae1b7445b\";}i:2145;a:2:{s:4:\"path\";s:48:\"/web/themes/default/miniapp/version-display.html\";s:8:\"checksum\";s:32:\"ab5a3883b530e8dcf597b536b7b5f114\";}i:2146;a:2:{s:4:\"path\";s:45:\"/web/themes/default/miniapp/version-home.html\";s:8:\"checksum\";s:32:\"fee5554f0c44bfd6d1937faada7223cf\";}i:2147;a:2:{s:4:\"path\";s:39:\"/web/themes/default/module/display.html\";s:8:\"checksum\";s:32:\"54eb506628515919170b88e6bfa947b0\";}i:2148;a:2:{s:4:\"path\";s:45:\"/web/themes/default/module/dropdown-menu.html\";s:8:\"checksum\";s:32:\"2fc73e77ef5be91af8c72e9d5c57a158\";}i:2149;a:2:{s:4:\"path\";s:38:\"/web/themes/default/module/expire.html\";s:8:\"checksum\";s:32:\"9317d809b2ff34a464ef5b42e0982b72\";}i:2150;a:2:{s:4:\"path\";s:42:\"/web/themes/default/module/expire_add.html\";s:8:\"checksum\";s:32:\"f3ca84118e51df6ea60d42f6042310fa\";}i:2151;a:2:{s:4:\"path\";s:37:\"/web/themes/default/module/group.html\";s:8:\"checksum\";s:32:\"fec628d4f2206e691c795927cea0f552\";}i:2152;a:2:{s:4:\"path\";s:44:\"/web/themes/default/module/link-account.html\";s:8:\"checksum\";s:32:\"6c9e9d4cb57c4a5136072830ef2f8539\";}i:2153;a:2:{s:4:\"path\";s:41:\"/web/themes/default/module/link-list.html\";s:8:\"checksum\";s:32:\"4549b9a8d448c184dda28a668706ec75\";}i:2154;a:2:{s:4:\"path\";s:36:\"/web/themes/default/module/link.html\";s:8:\"checksum\";s:32:\"91cf9a563c8c79c620a431e141ee4e85\";}i:2155;a:2:{s:4:\"path\";s:54:\"/web/themes/default/module/manage-account-setting.html\";s:8:\"checksum\";s:32:\"bfa0441d45f7760501cb465d3f25ae04\";}i:2156;a:2:{s:4:\"path\";s:46:\"/web/themes/default/module/manage-account.html\";s:8:\"checksum\";s:32:\"7ee1a50d6e81f3b6523ca57b617d1ff8\";}i:2157;a:2:{s:4:\"path\";s:45:\"/web/themes/default/module/manage-system.html\";s:8:\"checksum\";s:32:\"6aef2925792424173484caace13df574\";}i:2158;a:2:{s:4:\"path\";s:42:\"/web/themes/default/module/permission.html\";s:8:\"checksum\";s:32:\"bb0623d47229d5e647b5d422768c3cea\";}i:2159;a:2:{s:4:\"path\";s:38:\"/web/themes/default/module/plugin.html\";s:8:\"checksum\";s:32:\"4314be0fb4049cdea0fad00cde1ff3c7\";}i:2160;a:2:{s:4:\"path\";s:45:\"/web/themes/default/module/shortcut-post.html\";s:8:\"checksum\";s:32:\"39b14da92e17ebfac11e08a55015682d\";}i:2161;a:2:{s:4:\"path\";s:40:\"/web/themes/default/module/shortcut.html\";s:8:\"checksum\";s:32:\"c7b0e59ea1cf997e273ae66ea14b82fc\";}i:2162;a:2:{s:4:\"path\";s:39:\"/web/themes/default/module/welcome.html\";s:8:\"checksum\";s:32:\"483bb8f9edf53c3e1fd5fa06e3f4b225\";}i:2163;a:2:{s:4:\"path\";s:40:\"/web/themes/default/phoneapp/create.html\";s:8:\"checksum\";s:32:\"7c0258a5ff7d6ca09f538cfe76de4568\";}i:2164;a:2:{s:4:\"path\";s:45:\"/web/themes/default/phoneapp/description.html\";s:8:\"checksum\";s:32:\"2330f548e7a0302923ba37fbad9a88c9\";}i:2165;a:2:{s:4:\"path\";s:48:\"/web/themes/default/phoneapp/front-download.html\";s:8:\"checksum\";s:32:\"a1f6dcd2e01471b20feea09c27d8a453\";}i:2166;a:2:{s:4:\"path\";s:40:\"/web/themes/default/phoneapp/manage.html\";s:8:\"checksum\";s:32:\"690dec8df2320a1bc411e6ff2851bca8\";}i:2167;a:2:{s:4:\"path\";s:39:\"/web/themes/default/platform/cover.html\";s:8:\"checksum\";s:32:\"a7a0b8440ee0ef81e64a9804546d0913\";}i:2168;a:2:{s:4:\"path\";s:46:\"/web/themes/default/platform/mass-display.html\";s:8:\"checksum\";s:32:\"944d66160ba0c9769d61bd39e1e11c3a\";}i:2169;a:2:{s:4:\"path\";s:43:\"/web/themes/default/platform/mass-post.html\";s:8:\"checksum\";s:32:\"34cd72a584b9cde3d0df4ba22053aea5\";}i:2170;a:2:{s:4:\"path\";s:43:\"/web/themes/default/platform/mass-send.html\";s:8:\"checksum\";s:32:\"3ff723549432355d8f5530272bed98f0\";}i:2171;a:2:{s:4:\"path\";s:49:\"/web/themes/default/platform/material-detail.html\";s:8:\"checksum\";s:32:\"ae384dfd0e7cc72524fc2f8d523389c9\";}i:2172;a:2:{s:4:\"path\";s:47:\"/web/themes/default/platform/material-post.html\";s:8:\"checksum\";s:32:\"772723799721afc170a8d957923c270f\";}i:2173;a:2:{s:4:\"path\";s:42:\"/web/themes/default/platform/material.html\";s:8:\"checksum\";s:32:\"62f0edd4cf300c1eb39ac0e6ab2f675e\";}i:2174;a:2:{s:4:\"path\";s:38:\"/web/themes/default/platform/menu.html\";s:8:\"checksum\";s:32:\"0cb123bb884587cb19b01c7db173a0df\";}i:2175;a:2:{s:4:\"path\";s:44:\"/web/themes/default/platform/qr-display.html\";s:8:\"checksum\";s:32:\"6fa2bddf5018d7e353ff8970d8405881\";}i:2176;a:2:{s:4:\"path\";s:41:\"/web/themes/default/platform/qr-list.html\";s:8:\"checksum\";s:32:\"d4ff1093a608af5049818071a7b67344\";}i:2177;a:2:{s:4:\"path\";s:41:\"/web/themes/default/platform/qr-post.html\";s:8:\"checksum\";s:32:\"eb65c5046fef0e5326aefbf4f7ed4892\";}i:2178;a:2:{s:4:\"path\";s:44:\"/web/themes/default/platform/reply-post.html\";s:8:\"checksum\";s:32:\"46b8ccfe028ca5b8ae8a2686c6650125\";}i:2179;a:2:{s:4:\"path\";s:39:\"/web/themes/default/platform/reply.html\";s:8:\"checksum\";s:32:\"a1fde9729da94ebe7fd53a16c95ed398\";}i:2180;a:2:{s:4:\"path\";s:51:\"/web/themes/default/platform/specialreply-post.html\";s:8:\"checksum\";s:32:\"288440a4e772e10d5fd978bba1230837\";}i:2181;a:2:{s:4:\"path\";s:40:\"/web/themes/default/platform/url2qr.html\";s:8:\"checksum\";s:32:\"352ef86158fc2edec841cdfb00ac627b\";}i:2182;a:2:{s:4:\"path\";s:39:\"/web/themes/default/profile/common.html\";s:8:\"checksum\";s:32:\"f50ac7bb560de91b51a960b4b7e52e77\";}i:2183;a:2:{s:4:\"path\";s:52:\"/web/themes/default/profile/module-link-uniacid.html\";s:8:\"checksum\";s:32:\"f4392290d6ee989ffc4f55fc53287424\";}i:2184;a:2:{s:4:\"path\";s:39:\"/web/themes/default/profile/notify.html\";s:8:\"checksum\";s:32:\"2da85fbf19eff9a508f60c8eae654d66\";}i:2185;a:2:{s:4:\"path\";s:41:\"/web/themes/default/profile/passport.html\";s:8:\"checksum\";s:32:\"1c736818fd2a018e4d0f300ed50445e2\";}i:2186;a:2:{s:4:\"path\";s:40:\"/web/themes/default/profile/payment.html\";s:8:\"checksum\";s:32:\"66c6249f6cdb26d93ccd428d99bdc37f\";}i:2187;a:2:{s:4:\"path\";s:47:\"/web/themes/default/profile/payment_webapp.html\";s:8:\"checksum\";s:32:\"dddd4a8ae1e2e8cb66cdf9179990e00b\";}i:2188;a:2:{s:4:\"path\";s:39:\"/web/themes/default/profile/refund.html\";s:8:\"checksum\";s:32:\"e2fcfc29a835c7c9e3183e4a0aa31a48\";}i:2189;a:2:{s:4:\"path\";s:39:\"/web/themes/default/profile/remote.html\";s:8:\"checksum\";s:32:\"ee6bb7892a5a7a0ba54a516b4e21c753\";}i:2190;a:2:{s:4:\"path\";s:46:\"/web/themes/default/profile/reply-setting.html\";s:8:\"checksum\";s:32:\"a6b3fd5df86035af2c8d515879590748\";}i:2191;a:2:{s:4:\"path\";s:42:\"/web/themes/default/profile/tplnotice.html\";s:8:\"checksum\";s:32:\"86e3680b582ce9dfc0595965cbb41cc0\";}i:2192;a:2:{s:4:\"path\";s:44:\"/web/themes/default/profile/upload_file.html\";s:8:\"checksum\";s:32:\"1de3ee362486b8dec40a2aacf6dc7bfb\";}i:2193;a:2:{s:4:\"path\";s:45:\"/web/themes/default/site/article-display.html\";s:8:\"checksum\";s:32:\"d6a205cc3d7a7ea269cb66d1436b78cc\";}i:2194;a:2:{s:4:\"path\";s:42:\"/web/themes/default/site/article-post.html\";s:8:\"checksum\";s:32:\"629f0d98e529507bfb144643be1d529d\";}i:2195;a:2:{s:4:\"path\";s:46:\"/web/themes/default/site/category-display.html\";s:8:\"checksum\";s:32:\"8181b0308c091c04c258b81eb2d2653d\";}i:2196;a:2:{s:4:\"path\";s:43:\"/web/themes/default/site/category-post.html\";s:8:\"checksum\";s:32:\"9d7dcef213ec43d824bf4dacd233e608\";}i:2197;a:2:{s:4:\"path\";s:42:\"/web/themes/default/site/commont-list.html\";s:8:\"checksum\";s:32:\"4c4a50c4bd135f66d74958cf811d7657\";}i:2198;a:2:{s:4:\"path\";s:37:\"/web/themes/default/site/display.html\";s:8:\"checksum\";s:32:\"5ece4ce960f7daee84324d2de4852655\";}i:2199;a:2:{s:4:\"path\";s:36:\"/web/themes/default/site/editor.html\";s:8:\"checksum\";s:32:\"73d1988f5b633074330f13652383a70a\";}i:2200;a:2:{s:4:\"path\";s:33:\"/web/themes/default/site/nav.html\";s:8:\"checksum\";s:32:\"5e704be40b888087de3d77b5e3c9704a\";}i:2201;a:2:{s:4:\"path\";s:34:\"/web/themes/default/site/post.html\";s:8:\"checksum\";s:32:\"77fa73fa1d74f5d42cba17afa5fc986a\";}i:2202;a:2:{s:4:\"path\";s:41:\"/web/themes/default/site/tpl-display.html\";s:8:\"checksum\";s:32:\"c19602937a478d129dec24e7c69d201f\";}i:2203;a:2:{s:4:\"path\";s:38:\"/web/themes/default/site/tpl-post.html\";s:8:\"checksum\";s:32:\"40d632334313d80f43751106f0aa7891\";}i:2204;a:2:{s:4:\"path\";s:42:\"/web/themes/default/system/attachment.html\";s:8:\"checksum\";s:32:\"0cda79aaa59163a0e6f4fd2a4def8a2d\";}i:2205;a:2:{s:4:\"path\";s:35:\"/web/themes/default/system/bom.html\";s:8:\"checksum\";s:32:\"d3e72340289146f8b08e4fabd427d3cd\";}i:2206;a:2:{s:4:\"path\";s:37:\"/web/themes/default/system/check.html\";s:8:\"checksum\";s:32:\"45b3ee034056c835c1ce04c6f898549d\";}i:2207;a:2:{s:4:\"path\";s:38:\"/web/themes/default/system/common.html\";s:8:\"checksum\";s:32:\"66c46d015b68fb1c5f142b0660cee0a8\";}i:2208;a:2:{s:4:\"path\";s:48:\"/web/themes/default/system/content-provider.html\";s:8:\"checksum\";s:32:\"1777231d33851949bd7fdc100f4d2530\";}i:2209;a:2:{s:4:\"path\";s:40:\"/web/themes/default/system/database.html\";s:8:\"checksum\";s:32:\"8caf0723cf57bb11bb569e7cf259a9a6\";}i:2210;a:2:{s:4:\"path\";s:41:\"/web/themes/default/system/filecheck.html\";s:8:\"checksum\";s:32:\"eaedb917d2089d897f8d76c1b9033e18\";}i:2211;a:2:{s:4:\"path\";s:39:\"/web/themes/default/system/ip-list.html\";s:8:\"checksum\";s:32:\"bdf92f6b157fd0b440271e1c6c3b1574\";}i:2212;a:2:{s:4:\"path\";s:35:\"/web/themes/default/system/job.html\";s:8:\"checksum\";s:32:\"412af61541c970eb04267d6ff27c8f80\";}i:2213;a:2:{s:4:\"path\";s:36:\"/web/themes/default/system/logs.html\";s:8:\"checksum\";s:32:\"e330d6c143eb92a4882dcbf65d1a21aa\";}i:2214;a:2:{s:4:\"path\";s:36:\"/web/themes/default/system/menu.html\";s:8:\"checksum\";s:32:\"0fc7e28e4414b4a203f1ff500de9ddb9\";}i:2215;a:2:{s:4:\"path\";s:44:\"/web/themes/default/system/module-group.html\";s:8:\"checksum\";s:32:\"145808a6c40553f51ad8a72058edc79e\";}i:2216;a:2:{s:4:\"path\";s:37:\"/web/themes/default/system/oauth.html\";s:8:\"checksum\";s:32:\"7bc242aae78c7df0603eec5eee52a3bc\";}i:2217;a:2:{s:4:\"path\";s:40:\"/web/themes/default/system/optimize.html\";s:8:\"checksum\";s:32:\"4dbb226812c8f5d30dc2cbe2838781d9\";}i:2218;a:2:{s:4:\"path\";s:40:\"/web/themes/default/system/platform.html\";s:8:\"checksum\";s:32:\"293f91a85fe22f31fde007a20190ccbd\";}i:2219;a:2:{s:4:\"path\";s:36:\"/web/themes/default/system/scan.html\";s:8:\"checksum\";s:32:\"4729c693e63dcea9b1d52c63d60ff5f1\";}i:2220;a:2:{s:4:\"path\";s:46:\"/web/themes/default/system/sensitive-word.html\";s:8:\"checksum\";s:32:\"91442853af145512e1c52387b13e83bf\";}i:2221;a:2:{s:4:\"path\";s:36:\"/web/themes/default/system/site.html\";s:8:\"checksum\";s:32:\"9329a2dbc70d1879913eeb1a6b8d9ee1\";}i:2222;a:2:{s:4:\"path\";s:42:\"/web/themes/default/system/systeminfo.html\";s:8:\"checksum\";s:32:\"1201f25d62d8790eb8f59105a4d36699\";}i:2223;a:2:{s:4:\"path\";s:40:\"/web/themes/default/system/template.html\";s:8:\"checksum\";s:32:\"2347e28525289771f9326ec378be76a6\";}i:2224;a:2:{s:4:\"path\";s:42:\"/web/themes/default/system/thirdlogin.html\";s:8:\"checksum\";s:32:\"08fe18c2ef3cc5f0ef9d860e49fb3b7b\";}i:2225;a:2:{s:4:\"path\";s:51:\"/web/themes/default/system/user-setting-header.html\";s:8:\"checksum\";s:32:\"555c764af0408441b66b53823cbcae93\";}i:2226;a:2:{s:4:\"path\";s:41:\"/web/themes/default/system/workorder.html\";s:8:\"checksum\";s:32:\"01dc7f4d24ce0e669cc5261fda2cec22\";}i:2227;a:2:{s:4:\"path\";s:44:\"/web/themes/default/user/agreement-show.html\";s:8:\"checksum\";s:32:\"35e0f2ae499d1ed7fb6c169ba863ccdc\";}i:2228;a:2:{s:4:\"path\";s:39:\"/web/themes/default/user/agreement.html\";s:8:\"checksum\";s:32:\"8494a4b513eb7a6a75458d90ecf262b8\";}i:2229;a:2:{s:4:\"path\";s:40:\"/web/themes/default/user/bind-oauth.html\";s:8:\"checksum\";s:32:\"e5e328aecd6d7bc3bea6296c9677471d\";}i:2230;a:2:{s:4:\"path\";s:34:\"/web/themes/default/user/bind.html\";s:8:\"checksum\";s:32:\"3ed1830956dca1247ad7149a804ba047\";}i:2231;a:2:{s:4:\"path\";s:43:\"/web/themes/default/user/change-mobile.html\";s:8:\"checksum\";s:32:\"042a1e0687c85619deee52825f85f9ad\";}i:2232;a:2:{s:4:\"path\";s:50:\"/web/themes/default/user/create-group-display.html\";s:8:\"checksum\";s:32:\"43c5f1509ec60c5555865f6eff9677dd\";}i:2233;a:2:{s:4:\"path\";s:47:\"/web/themes/default/user/create-group-post.html\";s:8:\"checksum\";s:32:\"a17a41559d93d72cd189f8ff39478a33\";}i:2234;a:2:{s:4:\"path\";s:37:\"/web/themes/default/user/display.html\";s:8:\"checksum\";s:32:\"2e94cec85cf38e53fd7f9a6ed68d40da\";}i:2235;a:2:{s:4:\"path\";s:51:\"/web/themes/default/user/edit-account-dateline.html\";s:8:\"checksum\";s:32:\"70e12265f2db955add4b8689d3a64153\";}i:2236;a:2:{s:4:\"path\";s:42:\"/web/themes/default/user/edit-account.html\";s:8:\"checksum\";s:32:\"de3c39ee50f96cf6fe098799c12fddaf\";}i:2237;a:2:{s:4:\"path\";s:39:\"/web/themes/default/user/edit-base.html\";s:8:\"checksum\";s:32:\"c6fd32abc64a01da70f0130d98d124e4\";}i:2238;a:2:{s:4:\"path\";s:54:\"/web/themes/default/user/edit-create-account-list.html\";s:8:\"checksum\";s:32:\"3b63a1d68b401fadf9e085a6c262b885\";}i:2239;a:2:{s:4:\"path\";s:41:\"/web/themes/default/user/edit-header.html\";s:8:\"checksum\";s:32:\"874c09b4a999d422069efdcc1c7a2b72\";}i:2240;a:2:{s:4:\"path\";s:46:\"/web/themes/default/user/edit-modules-tpl.html\";s:8:\"checksum\";s:32:\"f1a9c29b7268dd56c44619059b6ee910\";}i:2241;a:2:{s:4:\"path\";s:45:\"/web/themes/default/user/edit-operatoers.html\";s:8:\"checksum\";s:32:\"0099ed08081d4b9641710df52b3caf8a\";}i:2242;a:2:{s:4:\"path\";s:36:\"/web/themes/default/user/expire.html\";s:8:\"checksum\";s:32:\"90800500ffeb2194880fcad9cb20d10c\";}i:2243;a:2:{s:4:\"path\";s:44:\"/web/themes/default/user/fields-display.html\";s:8:\"checksum\";s:32:\"e350bd4528ef64a2e227161d0e30fad0\";}i:2244;a:2:{s:4:\"path\";s:41:\"/web/themes/default/user/fields-post.html\";s:8:\"checksum\";s:32:\"9b6ad20922d732170665210148b53a65\";}i:2245;a:2:{s:4:\"path\";s:43:\"/web/themes/default/user/find-password.html\";s:8:\"checksum\";s:32:\"e9c1564af6bb74135e4ee53c8f734d53\";}i:2246;a:2:{s:4:\"path\";s:43:\"/web/themes/default/user/group-display.html\";s:8:\"checksum\";s:32:\"67e59f8a50cdffd4b6570009406cbe96\";}i:2247;a:2:{s:4:\"path\";s:40:\"/web/themes/default/user/group-post.html\";s:8:\"checksum\";s:32:\"e907dc8dfcfaf27df33cb974c0e38efb\";}i:2248;a:2:{s:4:\"path\";s:40:\"/web/themes/default/user/login-base.html\";s:8:\"checksum\";s:32:\"8a50b03e1a435b5a9adbe0dbf93aab3c\";}i:2249;a:2:{s:4:\"path\";s:39:\"/web/themes/default/user/login-big.html\";s:8:\"checksum\";s:32:\"1dd054c399d598af380f1bf35920221a\";}i:2250;a:2:{s:4:\"path\";s:45:\"/web/themes/default/user/login-half-auto.html\";s:8:\"checksum\";s:32:\"334a056372562c03f534bc5bd12559ab\";}i:2251;a:2:{s:4:\"path\";s:40:\"/web/themes/default/user/login-half.html\";s:8:\"checksum\";s:32:\"3d303ba0df79ecaf37c015cf2d527c19\";}i:2252;a:2:{s:4:\"path\";s:34:\"/web/themes/default/user/post.html\";s:8:\"checksum\";s:32:\"4ad5f6ef724c93108a0ce16be0950d20\";}i:2253;a:2:{s:4:\"path\";s:54:\"/web/themes/default/user/profile-account-dateline.html\";s:8:\"checksum\";s:32:\"617b26715479d2dd6deb8130f900566b\";}i:2254;a:2:{s:4:\"path\";s:57:\"/web/themes/default/user/profile-create-account-list.html\";s:8:\"checksum\";s:32:\"017d9bc704a34e443bfc01be29c70886\";}i:2255;a:2:{s:4:\"path\";s:49:\"/web/themes/default/user/profile-modules-tpl.html\";s:8:\"checksum\";s:32:\"1b16692b4d8afd5b6f7e96833745c76f\";}i:2256;a:2:{s:4:\"path\";s:37:\"/web/themes/default/user/profile.html\";s:8:\"checksum\";s:32:\"fe588ec43c26b85df7e0b3a1cc68933c\";}i:2257;a:2:{s:4:\"path\";s:38:\"/web/themes/default/user/register.html\";s:8:\"checksum\";s:32:\"3389549fbccf52431a4da62ccf7642de\";}i:2258;a:2:{s:4:\"path\";s:41:\"/web/themes/default/user/registerset.html\";s:8:\"checksum\";s:32:\"4d32dd323b9f3cec8ce9eca36dcf95fa\";}i:2259;a:2:{s:4:\"path\";s:40:\"/web/themes/default/user/third-bind.html\";s:8:\"checksum\";s:32:\"892f85acdf0c2337000e627a36d786b2\";}i:2260;a:2:{s:4:\"path\";s:41:\"/web/themes/default/user/user-header.html\";s:8:\"checksum\";s:32:\"751ac89586c84eb82838dbdbe616ee6c\";}i:2261;a:2:{s:4:\"path\";s:37:\"/web/themes/default/utility/link.html\";s:8:\"checksum\";s:32:\"484c722f6ae8b97f743b88a4cc78ee49\";}i:2262;a:2:{s:4:\"path\";s:45:\"/web/themes/default/utility/user-browser.html\";s:8:\"checksum\";s:32:\"3769446a05e71597efea79a0cc5b0574\";}i:2263;a:2:{s:4:\"path\";s:43:\"/web/themes/default/webapp/bind-domain.html\";s:8:\"checksum\";s:32:\"8f93d35f7517cdbb99de259859287cca\";}i:2264;a:2:{s:4:\"path\";s:36:\"/web/themes/default/webapp/home.html\";s:8:\"checksum\";s:32:\"10c9a82b5889e1ffabab59c615d819fb\";}i:2265;a:2:{s:4:\"path\";s:39:\"/web/themes/default/webapp/rewrite.html\";s:8:\"checksum\";s:32:\"97cec56336b11e80f312581d8b20203a\";}i:2266;a:2:{s:4:\"path\";s:42:\"/web/themes/default/wxapp/choose-type.html\";s:8:\"checksum\";s:32:\"b8493190dafb0cff43d20af8c83f63a7\";}i:2267;a:2:{s:4:\"path\";s:44:\"/web/themes/default/wxapp/design-method.html\";s:8:\"checksum\";s:32:\"569e6f36fd7b76a0b523b7edd9d7d125\";}i:2268;a:2:{s:4:\"path\";s:40:\"/web/themes/default/wxapp/domainset.html\";s:8:\"checksum\";s:32:\"fa66d53c13f33db036eb8a3af63f9b73\";}i:2269;a:2:{s:4:\"path\";s:37:\"/web/themes/default/wxapp/manage.html\";s:8:\"checksum\";s:32:\"86881b8f930962edb101d0b432b582a3\";}i:2270;a:2:{s:4:\"path\";s:38:\"/web/themes/default/wxapp/payment.html\";s:8:\"checksum\";s:32:\"5f4e1f02e4f629c34a1a43c1ec4cce74\";}i:2271;a:2:{s:4:\"path\";s:35:\"/web/themes/default/wxapp/post.html\";s:8:\"checksum\";s:32:\"799d3f20f82984335ba8ada298f46604\";}i:2272;a:2:{s:4:\"path\";s:37:\"/web/themes/default/wxapp/refund.html\";s:8:\"checksum\";s:32:\"8573f8c72b12acb99760985c0a4d817f\";}i:2273;a:2:{s:4:\"path\";s:41:\"/web/themes/default/wxapp/statistics.html\";s:8:\"checksum\";s:32:\"f859f6f2ec71e5f8a3b8d6319aa5c67c\";}i:2274;a:2:{s:4:\"path\";s:47:\"/web/themes/default/wxapp/version-entrance.html\";s:8:\"checksum\";s:32:\"2547c362c67513dbbeb81c5893a7d0e3\";}i:2275;a:2:{s:4:\"path\";s:53:\"/web/themes/default/wxapp/version-front-download.html\";s:8:\"checksum\";s:32:\"91047c0bf70f723f0cf5f8f668bc1107\";}i:2276;a:2:{s:4:\"path\";s:58:\"/web/themes/default/wxapp/version-module-link-uniacid.html\";s:8:\"checksum\";s:32:\"b9f0fa16a4e7ea55903c6019fa5354cb\";}i:2277;a:2:{s:4:\"path\";s:37:\"/web/themes/default/xzapp/create.html\";s:8:\"checksum\";s:32:\"835598c0ee70e94dbaa8053011c5d0f9\";}i:2278;a:2:{s:4:\"path\";s:35:\"/web/themes/default/xzapp/home.html\";s:8:\"checksum\";s:32:\"6f2dbc007ed35b8ec28dbc82c19abffc\";}i:2279;a:2:{s:4:\"path\";s:40:\"/web/themes/default/xzapp/post-step.html\";s:8:\"checksum\";s:32:\"a7c209f241fb701a93b0453598747a08\";}i:2280;a:2:{s:4:\"path\";s:22:\"/web/themes/index.html\";s:8:\"checksum\";s:32:\"7215ee9c7d9dc229d2921a40e899ec5f\";}}s:7:\"schemas\";a:139:{i:0;a:6:{s:9:\"tablename\";s:11:\"ims_account\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"hash\";a:6:{s:4:\"name\";s:4:\"hash\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"8\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:9:\"isconnect\";a:6:{s:4:\"name\";s:9:\"isconnect\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:9:\"isdeleted\";a:6:{s:4:\"name\";s:9:\"isdeleted\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:7:\"endtime\";a:6:{s:4:\"name\";s:7:\"endtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:26:\"send_account_expire_status\";a:6:{s:4:\"name\";s:26:\"send_account_expire_status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:22:\"send_api_expire_status\";a:6:{s:4:\"name\";s:22:\"send_api_expire_status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:11:\"idx_uniacid\";a:3:{s:4:\"name\";s:11:\"idx_uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:1;a:6:{s:9:\"tablename\";s:18:\"ims_account_aliapp\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"level\";a:6:{s:4:\"name\";s:5:\"level\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"4\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"16\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}}}i:2;a:6:{s:9:\"tablename\";s:20:\"ims_account_baiduapp\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:5:\"appid\";a:6:{s:4:\"name\";s:5:\"appid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:6:\"secret\";a:6:{s:4:\"name\";s:6:\"secret\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:3;a:6:{s:9:\"tablename\";s:20:\"ims_account_phoneapp\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:4;a:6:{s:9:\"tablename\";s:22:\"ims_account_toutiaoapp\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:5:\"appid\";a:6:{s:4:\"name\";s:5:\"appid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:6:\"secret\";a:6:{s:4:\"name\";s:6:\"secret\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:5;a:6:{s:9:\"tablename\";s:18:\"ims_account_webapp\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:6;a:6:{s:9:\"tablename\";s:19:\"ims_account_wechats\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:20:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"token\";a:6:{s:4:\"name\";s:5:\"token\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:14:\"encodingaeskey\";a:6:{s:4:\"name\";s:14:\"encodingaeskey\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:5:\"level\";a:6:{s:4:\"name\";s:5:\"level\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"4\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:7:\"account\";a:6:{s:4:\"name\";s:7:\"account\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:8:\"original\";a:6:{s:4:\"name\";s:8:\"original\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:9:\"signature\";a:6:{s:4:\"name\";s:9:\"signature\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"country\";a:6:{s:4:\"name\";s:7:\"country\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"province\";a:6:{s:4:\"name\";s:8:\"province\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:4:\"city\";a:6:{s:4:\"name\";s:4:\"city\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:8:\"username\";a:6:{s:4:\"name\";s:8:\"username\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:8:\"password\";a:6:{s:4:\"name\";s:8:\"password\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:10:\"lastupdate\";a:6:{s:4:\"name\";s:10:\"lastupdate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"secret\";a:6:{s:4:\"name\";s:6:\"secret\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"styleid\";a:6:{s:4:\"name\";s:7:\"styleid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:12:\"subscribeurl\";a:6:{s:4:\"name\";s:12:\"subscribeurl\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"120\";}s:18:\"auth_refresh_token\";a:6:{s:4:\"name\";s:18:\"auth_refresh_token\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:7:\"idx_key\";a:3:{s:4:\"name\";s:7:\"idx_key\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"key\";}}}}i:7;a:6:{s:9:\"tablename\";s:17:\"ims_account_wxapp\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:12:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"token\";a:6:{s:4:\"name\";s:5:\"token\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:14:\"encodingaeskey\";a:6:{s:4:\"name\";s:14:\"encodingaeskey\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"43\";}s:5:\"level\";a:6:{s:4:\"name\";s:5:\"level\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:7:\"account\";a:6:{s:4:\"name\";s:7:\"account\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:8:\"original\";a:6:{s:4:\"name\";s:8:\"original\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"secret\";a:6:{s:4:\"name\";s:6:\"secret\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:9:\"appdomain\";a:6:{s:4:\"name\";s:9:\"appdomain\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:18:\"auth_refresh_token\";a:6:{s:4:\"name\";s:18:\"auth_refresh_token\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:8;a:6:{s:9:\"tablename\";s:17:\"ims_account_xzapp\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:13:{s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:8:\"original\";a:6:{s:4:\"name\";s:8:\"original\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:10:\"lastupdate\";a:6:{s:4:\"name\";s:10:\"lastupdate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"styleid\";a:6:{s:4:\"name\";s:7:\"styleid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"token\";a:6:{s:4:\"name\";s:5:\"token\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:14:\"encodingaeskey\";a:6:{s:4:\"name\";s:14:\"encodingaeskey\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:8:\"xzapp_id\";a:6:{s:4:\"name\";s:8:\"xzapp_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:5:\"level\";a:6:{s:4:\"name\";s:5:\"level\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"4\";}s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"80\";}s:6:\"secret\";a:6:{s:4:\"name\";s:6:\"secret\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"80\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:9;a:6:{s:9:\"tablename\";s:23:\"ims_activity_clerk_menu\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:11:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:3:\"pid\";a:6:{s:4:\"name\";s:3:\"pid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"6\";}s:10:\"group_name\";a:6:{s:4:\"name\";s:10:\"group_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:4:\"icon\";a:6:{s:4:\"name\";s:4:\"icon\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:10:\"permission\";a:6:{s:4:\"name\";s:10:\"permission\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"system\";a:6:{s:4:\"name\";s:6:\"system\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"2\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:10;a:6:{s:9:\"tablename\";s:19:\"ims_activity_clerks\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"storeid\";a:6:{s:4:\"name\";s:7:\"storeid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:8:\"password\";a:6:{s:4:\"name\";s:8:\"password\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:6:\"mobile\";a:6:{s:4:\"name\";s:6:\"mobile\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:8:\"nickname\";a:6:{s:4:\"name\";s:8:\"nickname\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:8:\"password\";a:3:{s:4:\"name\";s:8:\"password\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:8:\"password\";}}s:6:\"openid\";a:3:{s:4:\"name\";s:6:\"openid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"openid\";}}}}i:11;a:6:{s:9:\"tablename\";s:20:\"ims_article_category\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:4:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:4:\"type\";a:3:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"type\";}}}}i:12;a:6:{s:9:\"tablename\";s:19:\"ims_article_comment\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"articleid\";a:6:{s:4:\"name\";s:9:\"articleid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"parentid\";a:6:{s:4:\"name\";s:8:\"parentid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:7:\"is_like\";a:6:{s:4:\"name\";s:7:\"is_like\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:8:\"is_reply\";a:6:{s:4:\"name\";s:8:\"is_reply\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:8:\"like_num\";a:6:{s:4:\"name\";s:8:\"like_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:9:\"articleid\";a:3:{s:4:\"name\";s:9:\"articleid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:9:\"articleid\";}}}}i:13;a:6:{s:9:\"tablename\";s:16:\"ims_article_news\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:12:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"cateid\";a:6:{s:4:\"name\";s:6:\"cateid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:10:\"mediumtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:5:\"thumb\";a:6:{s:4:\"name\";s:5:\"thumb\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:6:\"source\";a:6:{s:4:\"name\";s:6:\"source\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:6:\"author\";a:6:{s:4:\"name\";s:6:\"author\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"is_display\";a:6:{s:4:\"name\";s:10:\"is_display\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:12:\"is_show_home\";a:6:{s:4:\"name\";s:12:\"is_show_home\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"click\";a:6:{s:4:\"name\";s:5:\"click\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:5:\"title\";a:3:{s:4:\"name\";s:5:\"title\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"title\";}}s:6:\"cateid\";a:3:{s:4:\"name\";s:6:\"cateid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"cateid\";}}}}i:14;a:6:{s:9:\"tablename\";s:18:\"ims_article_notice\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:11:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"cateid\";a:6:{s:4:\"name\";s:6:\"cateid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:10:\"mediumtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"is_display\";a:6:{s:4:\"name\";s:10:\"is_display\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:12:\"is_show_home\";a:6:{s:4:\"name\";s:12:\"is_show_home\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"click\";a:6:{s:4:\"name\";s:5:\"click\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"style\";a:6:{s:4:\"name\";s:5:\"style\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:5:\"group\";a:6:{s:4:\"name\";s:5:\"group\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:5:\"title\";a:3:{s:4:\"name\";s:5:\"title\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"title\";}}s:6:\"cateid\";a:3:{s:4:\"name\";s:6:\"cateid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"cateid\";}}}}i:15;a:6:{s:9:\"tablename\";s:25:\"ims_article_unread_notice\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:4:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"notice_id\";a:6:{s:4:\"name\";s:9:\"notice_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"is_new\";a:6:{s:4:\"name\";s:6:\"is_new\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:9:\"notice_id\";a:3:{s:4:\"name\";s:9:\"notice_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:9:\"notice_id\";}}}}i:16;a:6:{s:9:\"tablename\";s:20:\"ims_attachment_group\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:3:\"pid\";a:6:{s:4:\"name\";s:3:\"pid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"25\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:17;a:6:{s:9:\"tablename\";s:15:\"ims_basic_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:18;a:6:{s:9:\"tablename\";s:12:\"ims_business\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:16:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"weid\";a:6:{s:4:\"name\";s:4:\"weid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:5:\"thumb\";a:6:{s:4:\"name\";s:5:\"thumb\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:5:\"phone\";a:6:{s:4:\"name\";s:5:\"phone\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:2:\"qq\";a:6:{s:4:\"name\";s:2:\"qq\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:8:\"province\";a:6:{s:4:\"name\";s:8:\"province\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"city\";a:6:{s:4:\"name\";s:4:\"city\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"dist\";a:6:{s:4:\"name\";s:4:\"dist\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"address\";a:6:{s:4:\"name\";s:7:\"address\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:3:\"lng\";a:6:{s:4:\"name\";s:3:\"lng\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"lat\";a:6:{s:4:\"name\";s:3:\"lat\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"industry1\";a:6:{s:4:\"name\";s:9:\"industry1\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"industry2\";a:6:{s:4:\"name\";s:9:\"industry2\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"idx_lat_lng\";a:3:{s:4:\"name\";s:11:\"idx_lat_lng\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:3:\"lng\";i:1;s:3:\"lat\";}}}}i:19;a:6:{s:9:\"tablename\";s:19:\"ims_core_attachment\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:10:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"filename\";a:6:{s:4:\"name\";s:8:\"filename\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:10:\"attachment\";a:6:{s:4:\"name\";s:10:\"attachment\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:17:\"module_upload_dir\";a:6:{s:4:\"name\";s:17:\"module_upload_dir\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:8:\"group_id\";a:6:{s:4:\"name\";s:8:\"group_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:20;a:6:{s:9:\"tablename\";s:14:\"ims_core_cache\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:2:{s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:5:\"value\";a:6:{s:4:\"name\";s:5:\"value\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"longtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"key\";}}}}i:21;a:6:{s:9:\"tablename\";s:13:\"ims_core_cron\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:16:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"cloudid\";a:6:{s:4:\"name\";s:7:\"cloudid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:8:\"filename\";a:6:{s:4:\"name\";s:8:\"filename\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"lastruntime\";a:6:{s:4:\"name\";s:11:\"lastruntime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:11:\"nextruntime\";a:6:{s:4:\"name\";s:11:\"nextruntime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"weekday\";a:6:{s:4:\"name\";s:7:\"weekday\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:3:\"day\";a:6:{s:4:\"name\";s:3:\"day\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:4:\"hour\";a:6:{s:4:\"name\";s:4:\"hour\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:6:\"minute\";a:6:{s:4:\"name\";s:6:\"minute\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:5:\"extra\";a:6:{s:4:\"name\";s:5:\"extra\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"5000\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:5:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:10:\"createtime\";a:3:{s:4:\"name\";s:10:\"createtime\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:10:\"createtime\";}}s:11:\"nextruntime\";a:3:{s:4:\"name\";s:11:\"nextruntime\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"nextruntime\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:7:\"cloudid\";a:3:{s:4:\"name\";s:7:\"cloudid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"cloudid\";}}}}i:22;a:6:{s:9:\"tablename\";s:20:\"ims_core_cron_record\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:8:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:3:\"tid\";a:6:{s:4:\"name\";s:3:\"tid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"note\";a:6:{s:4:\"name\";s:4:\"note\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:3:\"tag\";a:6:{s:4:\"name\";s:3:\"tag\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"5000\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:3:\"tid\";a:3:{s:4:\"name\";s:3:\"tid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"tid\";}}s:6:\"module\";a:3:{s:4:\"name\";s:6:\"module\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"module\";}}}}i:23;a:6:{s:9:\"tablename\";s:12:\"ims_core_job\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:13:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"payload\";a:6:{s:4:\"name\";s:7:\"payload\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"22\";}s:7:\"handled\";a:6:{s:4:\"name\";s:7:\"handled\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:5:\"total\";a:6:{s:4:\"name\";s:5:\"total\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:10:\"updatetime\";a:6:{s:4:\"name\";s:10:\"updatetime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"endtime\";a:6:{s:4:\"name\";s:7:\"endtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:9:\"isdeleted\";a:6:{s:4:\"name\";s:9:\"isdeleted\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:24;a:6:{s:9:\"tablename\";s:13:\"ims_core_menu\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:14:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"pid\";a:6:{s:4:\"name\";s:3:\"pid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:12:\"append_title\";a:6:{s:4:\"name\";s:12:\"append_title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:10:\"append_url\";a:6:{s:4:\"name\";s:10:\"append_url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:10:\"is_display\";a:6:{s:4:\"name\";s:10:\"is_display\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:9:\"is_system\";a:6:{s:4:\"name\";s:9:\"is_system\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:15:\"permission_name\";a:6:{s:4:\"name\";s:15:\"permission_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:10:\"group_name\";a:6:{s:4:\"name\";s:10:\"group_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:4:\"icon\";a:6:{s:4:\"name\";s:4:\"icon\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:25;a:6:{s:9:\"tablename\";s:22:\"ims_core_menu_shortcut\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"modulename\";a:6:{s:4:\"name\";s:10:\"modulename\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"position\";a:6:{s:4:\"name\";s:8:\"position\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:10:\"updatetime\";a:6:{s:4:\"name\";s:10:\"updatetime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:26;a:6:{s:9:\"tablename\";s:15:\"ims_core_paylog\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:17:{s:4:\"plid\";a:6:{s:4:\"name\";s:4:\"plid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:6:\"bigint\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"11\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"40\";}s:8:\"uniontid\";a:6:{s:4:\"name\";s:8:\"uniontid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:3:\"tid\";a:6:{s:4:\"name\";s:3:\"tid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"128\";}s:3:\"fee\";a:6:{s:4:\"name\";s:3:\"fee\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"10,2\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:3:\"tag\";a:6:{s:4:\"name\";s:3:\"tag\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2000\";}s:10:\"is_usecard\";a:6:{s:4:\"name\";s:10:\"is_usecard\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:9:\"card_type\";a:6:{s:4:\"name\";s:9:\"card_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:7:\"card_id\";a:6:{s:4:\"name\";s:7:\"card_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:8:\"card_fee\";a:6:{s:4:\"name\";s:8:\"card_fee\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:12:\"encrypt_code\";a:6:{s:4:\"name\";s:12:\"encrypt_code\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"is_wish\";a:6:{s:4:\"name\";s:7:\"is_wish\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:5:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:4:\"plid\";}}s:10:\"idx_openid\";a:3:{s:4:\"name\";s:10:\"idx_openid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"openid\";}}s:7:\"idx_tid\";a:3:{s:4:\"name\";s:7:\"idx_tid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"tid\";}}s:11:\"idx_uniacid\";a:3:{s:4:\"name\";s:11:\"idx_uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:8:\"uniontid\";a:3:{s:4:\"name\";s:8:\"uniontid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:8:\"uniontid\";}}}}i:27;a:6:{s:9:\"tablename\";s:20:\"ims_core_performance\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:7:\"runtime\";a:6:{s:4:\"name\";s:7:\"runtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"runurl\";a:6:{s:4:\"name\";s:6:\"runurl\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"512\";}s:6:\"runsql\";a:6:{s:4:\"name\";s:6:\"runsql\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"512\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:28;a:6:{s:9:\"tablename\";s:14:\"ims_core_queue\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:10:{s:3:\"qid\";a:6:{s:4:\"name\";s:3:\"qid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:6:\"bigint\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"20\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"message\";a:6:{s:4:\"name\";s:7:\"message\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2000\";}s:6:\"params\";a:6:{s:4:\"name\";s:6:\"params\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:7:\"keyword\";a:6:{s:4:\"name\";s:7:\"keyword\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:8:\"response\";a:6:{s:4:\"name\";s:8:\"response\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2000\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:8:\"dateline\";a:6:{s:4:\"name\";s:8:\"dateline\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"qid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:7:\"uniacid\";i:1;s:4:\"acid\";}}s:6:\"module\";a:3:{s:4:\"name\";s:6:\"module\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"module\";}}s:8:\"dateline\";a:3:{s:4:\"name\";s:8:\"dateline\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:8:\"dateline\";}}}}i:29;a:6:{s:9:\"tablename\";s:18:\"ims_core_refundlog\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:8:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:15:\"refund_uniontid\";a:6:{s:4:\"name\";s:15:\"refund_uniontid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:6:\"reason\";a:6:{s:4:\"name\";s:6:\"reason\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"80\";}s:8:\"uniontid\";a:6:{s:4:\"name\";s:8:\"uniontid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:3:\"fee\";a:6:{s:4:\"name\";s:3:\"fee\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"10,2\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"2\";}s:7:\"is_wish\";a:6:{s:4:\"name\";s:7:\"is_wish\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:15:\"refund_uniontid\";a:3:{s:4:\"name\";s:15:\"refund_uniontid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:15:\"refund_uniontid\";}}s:8:\"uniontid\";a:3:{s:4:\"name\";s:8:\"uniontid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:8:\"uniontid\";}}}}i:30;a:6:{s:9:\"tablename\";s:17:\"ims_core_resource\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:3:\"mid\";a:6:{s:4:\"name\";s:3:\"mid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"media_id\";a:6:{s:4:\"name\";s:8:\"media_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:5:\"trunk\";a:6:{s:4:\"name\";s:5:\"trunk\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"dateline\";a:6:{s:4:\"name\";s:8:\"dateline\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"mid\";}}s:4:\"acid\";a:3:{s:4:\"name\";s:4:\"acid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:4:\"type\";a:3:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"type\";}}}}i:31;a:6:{s:9:\"tablename\";s:20:\"ims_core_sendsms_log\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"mobile\";a:6:{s:4:\"name\";s:6:\"mobile\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:6:\"result\";a:6:{s:4:\"name\";s:6:\"result\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"11\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:32;a:6:{s:9:\"tablename\";s:17:\"ims_core_sessions\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:3:\"sid\";a:6:{s:4:\"name\";s:3:\"sid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"char\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"data\";a:6:{s:4:\"name\";s:4:\"data\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2000\";}s:10:\"expiretime\";a:6:{s:4:\"name\";s:10:\"expiretime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"sid\";}}s:3:\"sid\";a:3:{s:4:\"name\";s:3:\"sid\";s:4:\"type\";s:6:\"unique\";s:6:\"fields\";a:1:{i:0;s:3:\"sid\";}}}}i:33;a:6:{s:9:\"tablename\";s:17:\"ims_core_settings\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:2:{s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:5:\"value\";a:6:{s:4:\"name\";s:5:\"value\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:10:\"mediumtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"key\";}}}}i:34;a:6:{s:9:\"tablename\";s:19:\"ims_coupon_location\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:24:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"sid\";a:6:{s:4:\"name\";s:3:\"sid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:11:\"location_id\";a:6:{s:4:\"name\";s:11:\"location_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:13:\"business_name\";a:6:{s:4:\"name\";s:13:\"business_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"branch_name\";a:6:{s:4:\"name\";s:11:\"branch_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:8:\"category\";a:6:{s:4:\"name\";s:8:\"category\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:8:\"province\";a:6:{s:4:\"name\";s:8:\"province\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:4:\"city\";a:6:{s:4:\"name\";s:4:\"city\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:8:\"district\";a:6:{s:4:\"name\";s:8:\"district\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:7:\"address\";a:6:{s:4:\"name\";s:7:\"address\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:9:\"longitude\";a:6:{s:4:\"name\";s:9:\"longitude\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:8:\"latitude\";a:6:{s:4:\"name\";s:8:\"latitude\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:9:\"telephone\";a:6:{s:4:\"name\";s:9:\"telephone\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:10:\"photo_list\";a:6:{s:4:\"name\";s:10:\"photo_list\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:5:\"10000\";}s:9:\"avg_price\";a:6:{s:4:\"name\";s:9:\"avg_price\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"open_time\";a:6:{s:4:\"name\";s:9:\"open_time\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:9:\"recommend\";a:6:{s:4:\"name\";s:9:\"recommend\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"special\";a:6:{s:4:\"name\";s:7:\"special\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:12:\"introduction\";a:6:{s:4:\"name\";s:12:\"introduction\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:11:\"offset_type\";a:6:{s:4:\"name\";s:11:\"offset_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:7:\"message\";a:6:{s:4:\"name\";s:7:\"message\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:7:\"uniacid\";i:1;s:4:\"acid\";}}}}i:35;a:6:{s:9:\"tablename\";s:15:\"ims_cover_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:3;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:10:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"multiid\";a:6:{s:4:\"name\";s:7:\"multiid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:2:\"do\";a:6:{s:4:\"name\";s:2:\"do\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:5:\"thumb\";a:6:{s:4:\"name\";s:5:\"thumb\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:36;a:6:{s:9:\"tablename\";s:16:\"ims_custom_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"start1\";a:6:{s:4:\"name\";s:6:\"start1\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"end1\";a:6:{s:4:\"name\";s:4:\"end1\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"start2\";a:6:{s:4:\"name\";s:6:\"start2\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"end2\";a:6:{s:4:\"name\";s:4:\"end2\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:37;a:6:{s:9:\"tablename\";s:16:\"ims_images_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"mediaid\";a:6:{s:4:\"name\";s:7:\"mediaid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:38;a:6:{s:9:\"tablename\";s:18:\"ims_mc_cash_record\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:17:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"clerk_id\";a:6:{s:4:\"name\";s:8:\"clerk_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"store_id\";a:6:{s:4:\"name\";s:8:\"store_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"clerk_type\";a:6:{s:4:\"name\";s:10:\"clerk_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:3:\"fee\";a:6:{s:4:\"name\";s:3:\"fee\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:9:\"final_fee\";a:6:{s:4:\"name\";s:9:\"final_fee\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:7:\"credit1\";a:6:{s:4:\"name\";s:7:\"credit1\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:11:\"credit1_fee\";a:6:{s:4:\"name\";s:11:\"credit1_fee\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:7:\"credit2\";a:6:{s:4:\"name\";s:7:\"credit2\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:4:\"cash\";a:6:{s:4:\"name\";s:4:\"cash\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:11:\"return_cash\";a:6:{s:4:\"name\";s:11:\"return_cash\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:10:\"final_cash\";a:6:{s:4:\"name\";s:10:\"final_cash\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:6:\"remark\";a:6:{s:4:\"name\";s:6:\"remark\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"trade_type\";a:6:{s:4:\"name\";s:10:\"trade_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:39;a:6:{s:9:\"tablename\";s:19:\"ims_mc_chats_record\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:8:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"flag\";a:6:{s:4:\"name\";s:4:\"flag\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:7:\"msgtype\";a:6:{s:4:\"name\";s:7:\"msgtype\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:5:\"10000\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:7:\"uniacid\";i:1;s:4:\"acid\";}}s:6:\"openid\";a:3:{s:4:\"name\";s:6:\"openid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"openid\";}}s:10:\"createtime\";a:3:{s:4:\"name\";s:10:\"createtime\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:10:\"createtime\";}}}}i:40;a:6:{s:9:\"tablename\";s:23:\"ims_mc_credits_recharge\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:12:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:3:\"tid\";a:6:{s:4:\"name\";s:3:\"tid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:7:\"transid\";a:6:{s:4:\"name\";s:7:\"transid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:3:\"fee\";a:6:{s:4:\"name\";s:3:\"fee\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:3:\"tag\";a:6:{s:4:\"name\";s:3:\"tag\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"backtype\";a:6:{s:4:\"name\";s:8:\"backtype\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:15:\"idx_uniacid_uid\";a:3:{s:4:\"name\";s:15:\"idx_uniacid_uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:7:\"uniacid\";i:1;s:3:\"uid\";}}s:7:\"idx_tid\";a:3:{s:4:\"name\";s:7:\"idx_tid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"tid\";}}}}i:41;a:6:{s:9:\"tablename\";s:21:\"ims_mc_credits_record\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:13:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:10:\"credittype\";a:6:{s:4:\"name\";s:10:\"credittype\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"num\";a:6:{s:4:\"name\";s:3:\"num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"10,2\";}s:8:\"operator\";a:6:{s:4:\"name\";s:8:\"operator\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:8:\"clerk_id\";a:6:{s:4:\"name\";s:8:\"clerk_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"store_id\";a:6:{s:4:\"name\";s:8:\"store_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"clerk_type\";a:6:{s:4:\"name\";s:10:\"clerk_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"remark\";a:6:{s:4:\"name\";s:6:\"remark\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:12:\"real_uniacid\";a:6:{s:4:\"name\";s:12:\"real_uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:42;a:6:{s:9:\"tablename\";s:18:\"ims_mc_fans_groups\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:4:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"groups\";a:6:{s:4:\"name\";s:6:\"groups\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:5:\"10000\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:43;a:6:{s:9:\"tablename\";s:15:\"ims_mc_fans_tag\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:20:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"11\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:5:\"fanid\";a:6:{s:4:\"name\";s:5:\"fanid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:9:\"subscribe\";a:6:{s:4:\"name\";s:9:\"subscribe\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:8:\"nickname\";a:6:{s:4:\"name\";s:8:\"nickname\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:3:\"sex\";a:6:{s:4:\"name\";s:3:\"sex\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:8:\"language\";a:6:{s:4:\"name\";s:8:\"language\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"city\";a:6:{s:4:\"name\";s:4:\"city\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:8:\"province\";a:6:{s:4:\"name\";s:8:\"province\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"country\";a:6:{s:4:\"name\";s:7:\"country\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:10:\"headimgurl\";a:6:{s:4:\"name\";s:10:\"headimgurl\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"150\";}s:14:\"subscribe_time\";a:6:{s:4:\"name\";s:14:\"subscribe_time\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"unionid\";a:6:{s:4:\"name\";s:7:\"unionid\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:6:\"remark\";a:6:{s:4:\"name\";s:6:\"remark\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"250\";}s:7:\"groupid\";a:6:{s:4:\"name\";s:7:\"groupid\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:10:\"tagid_list\";a:6:{s:4:\"name\";s:10:\"tagid_list\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"250\";}s:15:\"subscribe_scene\";a:6:{s:4:\"name\";s:15:\"subscribe_scene\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:12:\"qr_scene_str\";a:6:{s:4:\"name\";s:12:\"qr_scene_str\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"250\";}s:8:\"qr_scene\";a:6:{s:4:\"name\";s:8:\"qr_scene\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"250\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:5:\"fanid\";a:3:{s:4:\"name\";s:5:\"fanid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"fanid\";}}s:6:\"openid\";a:3:{s:4:\"name\";s:6:\"openid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"openid\";}}}}i:44;a:6:{s:9:\"tablename\";s:23:\"ims_mc_fans_tag_mapping\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"11\";}s:5:\"fanid\";a:6:{s:4:\"name\";s:5:\"fanid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"11\";}s:5:\"tagid\";a:6:{s:4:\"name\";s:5:\"tagid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"mapping\";a:3:{s:4:\"name\";s:7:\"mapping\";s:4:\"type\";s:6:\"unique\";s:6:\"fields\";a:2:{i:0;s:5:\"fanid\";i:1;s:5:\"tagid\";}}s:11:\"fanid_index\";a:3:{s:4:\"name\";s:11:\"fanid_index\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"fanid\";}}s:11:\"tagid_index\";a:3:{s:4:\"name\";s:11:\"tagid_index\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"tagid\";}}}}i:45;a:6:{s:9:\"tablename\";s:13:\"ims_mc_groups\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:7:\"groupid\";a:6:{s:4:\"name\";s:7:\"groupid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:6:\"credit\";a:6:{s:4:\"name\";s:6:\"credit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"isdefault\";a:6:{s:4:\"name\";s:9:\"isdefault\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:7:\"groupid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:46;a:6:{s:9:\"tablename\";s:14:\"ims_mc_handsel\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"touid\";a:6:{s:4:\"name\";s:5:\"touid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"fromuid\";a:6:{s:4:\"name\";s:7:\"fromuid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:4:\"sign\";a:6:{s:4:\"name\";s:4:\"sign\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:6:\"action\";a:6:{s:4:\"name\";s:6:\"action\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:12:\"credit_value\";a:6:{s:4:\"name\";s:12:\"credit_value\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"touid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:47;a:6:{s:9:\"tablename\";s:19:\"ims_mc_mapping_fans\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:15:{s:5:\"fanid\";a:6:{s:4:\"name\";s:5:\"fanid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:8:\"nickname\";a:6:{s:4:\"name\";s:8:\"nickname\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"groupid\";a:6:{s:4:\"name\";s:7:\"groupid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"60\";}s:4:\"salt\";a:6:{s:4:\"name\";s:4:\"salt\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"char\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"8\";}s:6:\"follow\";a:6:{s:4:\"name\";s:6:\"follow\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:10:\"followtime\";a:6:{s:4:\"name\";s:10:\"followtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:12:\"unfollowtime\";a:6:{s:4:\"name\";s:12:\"unfollowtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"tag\";a:6:{s:4:\"name\";s:3:\"tag\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:10:\"updatetime\";a:6:{s:4:\"name\";s:10:\"updatetime\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"unionid\";a:6:{s:4:\"name\";s:7:\"unionid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:9:\"user_from\";a:6:{s:4:\"name\";s:9:\"user_from\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:7:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:5:\"fanid\";}}s:4:\"acid\";a:3:{s:4:\"name\";s:4:\"acid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:8:\"nickname\";a:3:{s:4:\"name\";s:8:\"nickname\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:8:\"nickname\";}}s:10:\"updatetime\";a:3:{s:4:\"name\";s:10:\"updatetime\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:10:\"updatetime\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:6:\"openid\";a:3:{s:4:\"name\";s:6:\"openid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"openid\";}}}}i:48;a:6:{s:9:\"tablename\";s:18:\"ims_mc_mass_record\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:18:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"groupname\";a:6:{s:4:\"name\";s:9:\"groupname\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"fansnum\";a:6:{s:4:\"name\";s:7:\"fansnum\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"msgtype\";a:6:{s:4:\"name\";s:7:\"msgtype\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:5:\"10000\";}s:5:\"group\";a:6:{s:4:\"name\";s:5:\"group\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"attach_id\";a:6:{s:4:\"name\";s:9:\"attach_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"media_id\";a:6:{s:4:\"name\";s:8:\"media_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:7:\"cron_id\";a:6:{s:4:\"name\";s:7:\"cron_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"sendtime\";a:6:{s:4:\"name\";s:8:\"sendtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:13:\"finalsendtime\";a:6:{s:4:\"name\";s:13:\"finalsendtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"msg_id\";a:6:{s:4:\"name\";s:6:\"msg_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"msg_data_id\";a:6:{s:4:\"name\";s:11:\"msg_data_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:7:\"uniacid\";i:1;s:4:\"acid\";}}}}i:49;a:6:{s:9:\"tablename\";s:21:\"ims_mc_member_address\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:11:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"50\";}s:8:\"username\";a:6:{s:4:\"name\";s:8:\"username\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:6:\"mobile\";a:6:{s:4:\"name\";s:6:\"mobile\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"zipcode\";a:6:{s:4:\"name\";s:7:\"zipcode\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"6\";}s:8:\"province\";a:6:{s:4:\"name\";s:8:\"province\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:4:\"city\";a:6:{s:4:\"name\";s:4:\"city\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:8:\"district\";a:6:{s:4:\"name\";s:8:\"district\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:7:\"address\";a:6:{s:4:\"name\";s:7:\"address\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"512\";}s:9:\"isdefault\";a:6:{s:4:\"name\";s:9:\"isdefault\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"idx_uinacid\";a:3:{s:4:\"name\";s:11:\"idx_uinacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:7:\"idx_uid\";a:3:{s:4:\"name\";s:7:\"idx_uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:50;a:6:{s:9:\"tablename\";s:20:\"ims_mc_member_fields\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"fieldid\";a:6:{s:4:\"name\";s:7:\"fieldid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:9:\"available\";a:6:{s:4:\"name\";s:9:\"available\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"smallint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"6\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"idx_uniacid\";a:3:{s:4:\"name\";s:11:\"idx_uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:11:\"idx_fieldid\";a:3:{s:4:\"name\";s:11:\"idx_fieldid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"fieldid\";}}}}i:51;a:6:{s:9:\"tablename\";s:22:\"ims_mc_member_property\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:8:\"property\";a:6:{s:4:\"name\";s:8:\"property\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:52;a:6:{s:9:\"tablename\";s:14:\"ims_mc_members\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:54:{s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"mobile\";a:6:{s:4:\"name\";s:6:\"mobile\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"18\";}s:5:\"email\";a:6:{s:4:\"name\";s:5:\"email\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:8:\"password\";a:6:{s:4:\"name\";s:8:\"password\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:4:\"salt\";a:6:{s:4:\"name\";s:4:\"salt\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"8\";}s:7:\"groupid\";a:6:{s:4:\"name\";s:7:\"groupid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"credit1\";a:6:{s:4:\"name\";s:7:\"credit1\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:7:\"credit2\";a:6:{s:4:\"name\";s:7:\"credit2\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:7:\"credit3\";a:6:{s:4:\"name\";s:7:\"credit3\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:7:\"credit4\";a:6:{s:4:\"name\";s:7:\"credit4\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:7:\"credit5\";a:6:{s:4:\"name\";s:7:\"credit5\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:0;s:6:\"length\";s:4:\"10,2\";}s:7:\"credit6\";a:6:{s:4:\"name\";s:7:\"credit6\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"10,2\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"realname\";a:6:{s:4:\"name\";s:8:\"realname\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"nickname\";a:6:{s:4:\"name\";s:8:\"nickname\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:6:\"avatar\";a:6:{s:4:\"name\";s:6:\"avatar\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:2:\"qq\";a:6:{s:4:\"name\";s:2:\"qq\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:3:\"vip\";a:6:{s:4:\"name\";s:3:\"vip\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:6:\"gender\";a:6:{s:4:\"name\";s:6:\"gender\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:9:\"birthyear\";a:6:{s:4:\"name\";s:9:\"birthyear\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"smallint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"6\";}s:10:\"birthmonth\";a:6:{s:4:\"name\";s:10:\"birthmonth\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:8:\"birthday\";a:6:{s:4:\"name\";s:8:\"birthday\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:13:\"constellation\";a:6:{s:4:\"name\";s:13:\"constellation\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"zodiac\";a:6:{s:4:\"name\";s:6:\"zodiac\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"5\";}s:9:\"telephone\";a:6:{s:4:\"name\";s:9:\"telephone\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:6:\"idcard\";a:6:{s:4:\"name\";s:6:\"idcard\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:9:\"studentid\";a:6:{s:4:\"name\";s:9:\"studentid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:5:\"grade\";a:6:{s:4:\"name\";s:5:\"grade\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"address\";a:6:{s:4:\"name\";s:7:\"address\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"zipcode\";a:6:{s:4:\"name\";s:7:\"zipcode\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"nationality\";a:6:{s:4:\"name\";s:11:\"nationality\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:14:\"resideprovince\";a:6:{s:4:\"name\";s:14:\"resideprovince\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:10:\"residecity\";a:6:{s:4:\"name\";s:10:\"residecity\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:10:\"residedist\";a:6:{s:4:\"name\";s:10:\"residedist\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:14:\"graduateschool\";a:6:{s:4:\"name\";s:14:\"graduateschool\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"company\";a:6:{s:4:\"name\";s:7:\"company\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:9:\"education\";a:6:{s:4:\"name\";s:9:\"education\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"occupation\";a:6:{s:4:\"name\";s:10:\"occupation\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:8:\"position\";a:6:{s:4:\"name\";s:8:\"position\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:7:\"revenue\";a:6:{s:4:\"name\";s:7:\"revenue\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:15:\"affectivestatus\";a:6:{s:4:\"name\";s:15:\"affectivestatus\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:10:\"lookingfor\";a:6:{s:4:\"name\";s:10:\"lookingfor\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:9:\"bloodtype\";a:6:{s:4:\"name\";s:9:\"bloodtype\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"5\";}s:6:\"height\";a:6:{s:4:\"name\";s:6:\"height\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"5\";}s:6:\"weight\";a:6:{s:4:\"name\";s:6:\"weight\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"5\";}s:6:\"alipay\";a:6:{s:4:\"name\";s:6:\"alipay\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:3:\"msn\";a:6:{s:4:\"name\";s:3:\"msn\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:6:\"taobao\";a:6:{s:4:\"name\";s:6:\"taobao\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:4:\"site\";a:6:{s:4:\"name\";s:4:\"site\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:3:\"bio\";a:6:{s:4:\"name\";s:3:\"bio\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:8:\"interest\";a:6:{s:4:\"name\";s:8:\"interest\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:12:\"pay_password\";a:6:{s:4:\"name\";s:12:\"pay_password\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:9:\"user_from\";a:6:{s:4:\"name\";s:9:\"user_from\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:5:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:7:\"groupid\";a:3:{s:4:\"name\";s:7:\"groupid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"groupid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"mobile\";}}}}i:53;a:6:{s:9:\"tablename\";s:17:\"ims_mc_oauth_fans\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:12:\"oauth_openid\";a:6:{s:4:\"name\";s:12:\"oauth_openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:20:\"idx_oauthopenid_acid\";a:3:{s:4:\"name\";s:20:\"idx_oauthopenid_acid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:12:\"oauth_openid\";i:1;s:4:\"acid\";}}}}i:54;a:6:{s:9:\"tablename\";s:14:\"ims_menu_event\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"keyword\";a:6:{s:4:\"name\";s:7:\"keyword\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:6:\"picmd5\";a:6:{s:4:\"name\";s:6:\"picmd5\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"128\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:6:\"picmd5\";a:3:{s:4:\"name\";s:6:\"picmd5\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"picmd5\";}}}}i:55;a:6:{s:9:\"tablename\";s:22:\"ims_message_notice_log\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:10:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"message\";a:6:{s:4:\"name\";s:7:\"message\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"is_read\";a:6:{s:4:\"name\";s:7:\"is_read\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"sign\";a:6:{s:4:\"name\";s:4:\"sign\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"22\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:11:\"create_time\";a:6:{s:4:\"name\";s:11:\"create_time\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:8:\"end_time\";a:6:{s:4:\"name\";s:8:\"end_time\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:56;a:6:{s:9:\"tablename\";s:16:\"ims_mobilenumber\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:4:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"enabled\";a:6:{s:4:\"name\";s:7:\"enabled\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:8:\"dateline\";a:6:{s:4:\"name\";s:8:\"dateline\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:57;a:6:{s:9:\"tablename\";s:11:\"ims_modules\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:13;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:33:{s:3:\"mid\";a:6:{s:4:\"name\";s:3:\"mid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:16:\"application_type\";a:6:{s:4:\"name\";s:16:\"application_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"version\";a:6:{s:4:\"name\";s:7:\"version\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:7:\"ability\";a:6:{s:4:\"name\";s:7:\"ability\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:6:\"author\";a:6:{s:4:\"name\";s:6:\"author\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:8:\"settings\";a:6:{s:4:\"name\";s:8:\"settings\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:10:\"subscribes\";a:6:{s:4:\"name\";s:10:\"subscribes\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:7:\"handles\";a:6:{s:4:\"name\";s:7:\"handles\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:12:\"isrulefields\";a:6:{s:4:\"name\";s:12:\"isrulefields\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:8:\"issystem\";a:6:{s:4:\"name\";s:8:\"issystem\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:6:\"target\";a:6:{s:4:\"name\";s:6:\"target\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"iscard\";a:6:{s:4:\"name\";s:6:\"iscard\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:11:\"permissions\";a:6:{s:4:\"name\";s:11:\"permissions\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"5000\";}s:13:\"title_initial\";a:6:{s:4:\"name\";s:13:\"title_initial\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:13:\"wxapp_support\";a:6:{s:4:\"name\";s:13:\"wxapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:15:\"welcome_support\";a:6:{s:4:\"name\";s:15:\"welcome_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"2\";}s:10:\"oauth_type\";a:6:{s:4:\"name\";s:10:\"oauth_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:14:\"webapp_support\";a:6:{s:4:\"name\";s:14:\"webapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:16:\"phoneapp_support\";a:6:{s:4:\"name\";s:16:\"phoneapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:15:\"account_support\";a:6:{s:4:\"name\";s:15:\"account_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:13:\"xzapp_support\";a:6:{s:4:\"name\";s:13:\"xzapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:14:\"aliapp_support\";a:6:{s:4:\"name\";s:14:\"aliapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"logo\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"250\";}s:16:\"baiduapp_support\";a:6:{s:4:\"name\";s:16:\"baiduapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:18:\"toutiaoapp_support\";a:6:{s:4:\"name\";s:18:\"toutiaoapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:4:\"from\";a:6:{s:4:\"name\";s:4:\"from\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"cloud_record\";a:6:{s:4:\"name\";s:12:\"cloud_record\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:8:\"sections\";a:6:{s:4:\"name\";s:8:\"sections\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"mid\";}}s:8:\"idx_name\";a:3:{s:4:\"name\";s:8:\"idx_name\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}}}}i:58;a:6:{s:9:\"tablename\";s:20:\"ims_modules_bindings\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:13:{s:3:\"eid\";a:6:{s:4:\"name\";s:3:\"eid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:5:\"entry\";a:6:{s:4:\"name\";s:5:\"entry\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:4:\"call\";a:6:{s:4:\"name\";s:4:\"call\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:2:\"do\";a:6:{s:4:\"name\";s:2:\"do\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:5:\"state\";a:6:{s:4:\"name\";s:5:\"state\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:6:\"direct\";a:6:{s:4:\"name\";s:6:\"direct\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:4:\"icon\";a:6:{s:4:\"name\";s:4:\"icon\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:3:\"255\";}s:10:\"multilevel\";a:6:{s:4:\"name\";s:10:\"multilevel\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:6:\"parent\";a:6:{s:4:\"name\";s:6:\"parent\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"eid\";}}s:10:\"idx_module\";a:3:{s:4:\"name\";s:10:\"idx_module\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"module\";}}}}i:59;a:6:{s:9:\"tablename\";s:17:\"ims_modules_cloud\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:26:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:16:\"application_type\";a:6:{s:4:\"name\";s:16:\"application_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:13:\"title_initial\";a:6:{s:4:\"name\";s:13:\"title_initial\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"logo\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"version\";a:6:{s:4:\"name\";s:7:\"version\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:14:\"install_status\";a:6:{s:4:\"name\";s:14:\"install_status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:15:\"account_support\";a:6:{s:4:\"name\";s:15:\"account_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:13:\"wxapp_support\";a:6:{s:4:\"name\";s:13:\"wxapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:14:\"webapp_support\";a:6:{s:4:\"name\";s:14:\"webapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:16:\"phoneapp_support\";a:6:{s:4:\"name\";s:16:\"phoneapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:15:\"welcome_support\";a:6:{s:4:\"name\";s:15:\"welcome_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:16:\"main_module_name\";a:6:{s:4:\"name\";s:16:\"main_module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:16:\"main_module_logo\";a:6:{s:4:\"name\";s:16:\"main_module_logo\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:15:\"has_new_version\";a:6:{s:4:\"name\";s:15:\"has_new_version\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:14:\"has_new_branch\";a:6:{s:4:\"name\";s:14:\"has_new_branch\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:6:\"is_ban\";a:6:{s:4:\"name\";s:6:\"is_ban\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:14:\"lastupdatetime\";a:6:{s:4:\"name\";s:14:\"lastupdatetime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:13:\"xzapp_support\";a:6:{s:4:\"name\";s:13:\"xzapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:8:\"cloud_id\";a:6:{s:4:\"name\";s:8:\"cloud_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:14:\"aliapp_support\";a:6:{s:4:\"name\";s:14:\"aliapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:16:\"baiduapp_support\";a:6:{s:4:\"name\";s:16:\"baiduapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:18:\"toutiaoapp_support\";a:6:{s:4:\"name\";s:18:\"toutiaoapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:7:\"buytime\";a:6:{s:4:\"name\";s:7:\"buytime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:13:\"module_status\";a:6:{s:4:\"name\";s:13:\"module_status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:4:\"name\";a:3:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}}s:14:\"lastupdatetime\";a:3:{s:4:\"name\";s:14:\"lastupdatetime\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:14:\"lastupdatetime\";}}}}i:60;a:6:{s:9:\"tablename\";s:18:\"ims_modules_ignore\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"version\";a:6:{s:4:\"name\";s:7:\"version\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:4:\"name\";a:3:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}}}}i:61;a:6:{s:9:\"tablename\";s:18:\"ims_modules_plugin\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:11:\"main_module\";a:6:{s:4:\"name\";s:11:\"main_module\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:4:\"name\";a:3:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}}s:11:\"main_module\";a:3:{s:4:\"name\";s:11:\"main_module\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"main_module\";}}}}i:62;a:6:{s:9:\"tablename\";s:23:\"ims_modules_plugin_rank\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"rank\";a:6:{s:4:\"name\";s:4:\"rank\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"plugin_name\";a:6:{s:4:\"name\";s:11:\"plugin_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:16:\"main_module_name\";a:6:{s:4:\"name\";s:16:\"main_module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:63;a:6:{s:9:\"tablename\";s:16:\"ims_modules_rank\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:11:\"module_name\";a:6:{s:4:\"name\";s:11:\"module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"rank\";a:6:{s:4:\"name\";s:4:\"rank\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"module_name\";a:3:{s:4:\"name\";s:11:\"module_name\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"module_name\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:64;a:6:{s:9:\"tablename\";s:19:\"ims_modules_recycle\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:12:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:15:\"account_support\";a:6:{s:4:\"name\";s:15:\"account_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:13:\"wxapp_support\";a:6:{s:4:\"name\";s:13:\"wxapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:15:\"welcome_support\";a:6:{s:4:\"name\";s:15:\"welcome_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:14:\"webapp_support\";a:6:{s:4:\"name\";s:14:\"webapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:16:\"phoneapp_support\";a:6:{s:4:\"name\";s:16:\"phoneapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:13:\"xzapp_support\";a:6:{s:4:\"name\";s:13:\"xzapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:14:\"aliapp_support\";a:6:{s:4:\"name\";s:14:\"aliapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:16:\"baiduapp_support\";a:6:{s:4:\"name\";s:16:\"baiduapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:18:\"toutiaoapp_support\";a:6:{s:4:\"name\";s:18:\"toutiaoapp_support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:65;a:6:{s:9:\"tablename\";s:15:\"ims_music_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"300\";}s:5:\"hqurl\";a:6:{s:4:\"name\";s:5:\"hqurl\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"300\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:66;a:6:{s:9:\"tablename\";s:14:\"ims_news_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:13:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"parent_id\";a:6:{s:4:\"name\";s:9:\"parent_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"author\";a:6:{s:4:\"name\";s:6:\"author\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:5:\"thumb\";a:6:{s:4:\"name\";s:5:\"thumb\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:10:\"mediumtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"incontent\";a:6:{s:4:\"name\";s:9:\"incontent\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"media_id\";a:6:{s:4:\"name\";s:8:\"media_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:67;a:6:{s:9:\"tablename\";s:21:\"ims_phoneapp_versions\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"version\";a:6:{s:4:\"name\";s:7:\"version\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"modules\";a:6:{s:4:\"name\";s:7:\"modules\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"version\";a:3:{s:4:\"name\";s:7:\"version\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"version\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:68;a:6:{s:9:\"tablename\";s:18:\"ims_profile_fields\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:37;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:10:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"field\";a:6:{s:4:\"name\";s:5:\"field\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:9:\"available\";a:6:{s:4:\"name\";s:9:\"available\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"smallint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"6\";}s:8:\"required\";a:6:{s:4:\"name\";s:8:\"required\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:12:\"unchangeable\";a:6:{s:4:\"name\";s:12:\"unchangeable\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:14:\"showinregister\";a:6:{s:4:\"name\";s:14:\"showinregister\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:12:\"field_length\";a:6:{s:4:\"name\";s:12:\"field_length\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:69;a:6:{s:9:\"tablename\";s:10:\"ims_qrcode\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:16:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"extra\";a:6:{s:4:\"name\";s:5:\"extra\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"qrcid\";a:6:{s:4:\"name\";s:5:\"qrcid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:6:\"bigint\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:9:\"scene_str\";a:6:{s:4:\"name\";s:9:\"scene_str\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"keyword\";a:6:{s:4:\"name\";s:7:\"keyword\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:5:\"model\";a:6:{s:4:\"name\";s:5:\"model\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:6:\"ticket\";a:6:{s:4:\"name\";s:6:\"ticket\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"250\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"256\";}s:6:\"expire\";a:6:{s:4:\"name\";s:6:\"expire\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"subnum\";a:6:{s:4:\"name\";s:6:\"subnum\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:9:\"idx_qrcid\";a:3:{s:4:\"name\";s:9:\"idx_qrcid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"qrcid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:6:\"ticket\";a:3:{s:4:\"name\";s:6:\"ticket\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"ticket\";}}}}i:70;a:6:{s:9:\"tablename\";s:15:\"ims_qrcode_stat\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:10:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"qid\";a:6:{s:4:\"name\";s:3:\"qid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:5:\"qrcid\";a:6:{s:4:\"name\";s:5:\"qrcid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:6:\"bigint\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"20\";}s:9:\"scene_str\";a:6:{s:4:\"name\";s:9:\"scene_str\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:71;a:6:{s:9:\"tablename\";s:8:\"ims_rule\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:9;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:11:\"containtype\";a:6:{s:4:\"name\";s:11:\"containtype\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:72;a:6:{s:9:\"tablename\";s:16:\"ims_rule_keyword\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:13;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:8:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"idx_content\";a:3:{s:4:\"name\";s:11:\"idx_content\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"content\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:73;a:6:{s:9:\"tablename\";s:16:\"ims_site_article\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:23:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"kid\";a:6:{s:4:\"name\";s:3:\"kid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"iscommend\";a:6:{s:4:\"name\";s:9:\"iscommend\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:5:\"ishot\";a:6:{s:4:\"name\";s:5:\"ishot\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:5:\"pcate\";a:6:{s:4:\"name\";s:5:\"pcate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"ccate\";a:6:{s:4:\"name\";s:5:\"ccate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"template\";a:6:{s:4:\"name\";s:8:\"template\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"300\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:10:\"mediumtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:5:\"thumb\";a:6:{s:4:\"name\";s:5:\"thumb\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:9:\"incontent\";a:6:{s:4:\"name\";s:9:\"incontent\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:6:\"source\";a:6:{s:4:\"name\";s:6:\"source\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:6:\"author\";a:6:{s:4:\"name\";s:6:\"author\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"linkurl\";a:6:{s:4:\"name\";s:7:\"linkurl\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"edittime\";a:6:{s:4:\"name\";s:8:\"edittime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"click\";a:6:{s:4:\"name\";s:5:\"click\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"credit\";a:6:{s:4:\"name\";s:6:\"credit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:13:\"idx_iscommend\";a:3:{s:4:\"name\";s:13:\"idx_iscommend\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:9:\"iscommend\";}}s:9:\"idx_ishot\";a:3:{s:4:\"name\";s:9:\"idx_ishot\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"ishot\";}}}}i:74;a:6:{s:9:\"tablename\";s:24:\"ims_site_article_comment\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:10:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"articleid\";a:6:{s:4:\"name\";s:9:\"articleid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"parentid\";a:6:{s:4:\"name\";s:8:\"parentid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:7:\"is_read\";a:6:{s:4:\"name\";s:7:\"is_read\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:9:\"iscomment\";a:6:{s:4:\"name\";s:9:\"iscomment\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:9:\"articleid\";a:3:{s:4:\"name\";s:9:\"articleid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:9:\"articleid\";}}}}i:75;a:6:{s:9:\"tablename\";s:17:\"ims_site_category\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:15:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"nid\";a:6:{s:4:\"name\";s:3:\"nid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:8:\"parentid\";a:6:{s:4:\"name\";s:8:\"parentid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:7:\"enabled\";a:6:{s:4:\"name\";s:7:\"enabled\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:4:\"icon\";a:6:{s:4:\"name\";s:4:\"icon\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"styleid\";a:6:{s:4:\"name\";s:7:\"styleid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"linkurl\";a:6:{s:4:\"name\";s:7:\"linkurl\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:10:\"ishomepage\";a:6:{s:4:\"name\";s:10:\"ishomepage\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:8:\"icontype\";a:6:{s:4:\"name\";s:8:\"icontype\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:3:\"css\";a:6:{s:4:\"name\";s:3:\"css\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:7:\"multiid\";a:6:{s:4:\"name\";s:7:\"multiid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:76;a:6:{s:9:\"tablename\";s:14:\"ims_site_multi\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:7:\"styleid\";a:6:{s:4:\"name\";s:7:\"styleid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"site_info\";a:6:{s:4:\"name\";s:9:\"site_info\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:8:\"bindhost\";a:6:{s:4:\"name\";s:8:\"bindhost\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:8:\"bindhost\";a:3:{s:4:\"name\";s:8:\"bindhost\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:8:\"bindhost\";}}}}i:77;a:6:{s:9:\"tablename\";s:12:\"ims_site_nav\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:14:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"multiid\";a:6:{s:4:\"name\";s:7:\"multiid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"section\";a:6:{s:4:\"name\";s:7:\"section\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"smallint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"5\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:8:\"position\";a:6:{s:4:\"name\";s:8:\"position\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:4:\"icon\";a:6:{s:4:\"name\";s:4:\"icon\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:3:\"css\";a:6:{s:4:\"name\";s:3:\"css\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:10:\"categoryid\";a:6:{s:4:\"name\";s:10:\"categoryid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:7:\"multiid\";a:3:{s:4:\"name\";s:7:\"multiid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"multiid\";}}}}i:78;a:6:{s:9:\"tablename\";s:13:\"ims_site_page\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:12:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"multiid\";a:6:{s:4:\"name\";s:7:\"multiid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:6:\"params\";a:6:{s:4:\"name\";s:6:\"params\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"longtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:4:\"html\";a:6:{s:4:\"name\";s:4:\"html\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"longtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:9:\"multipage\";a:6:{s:4:\"name\";s:9:\"multipage\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"longtext\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"goodnum\";a:6:{s:4:\"name\";s:7:\"goodnum\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:7:\"multiid\";a:3:{s:4:\"name\";s:7:\"multiid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"multiid\";}}}}i:79;a:6:{s:9:\"tablename\";s:14:\"ims_site_slide\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"multiid\";a:6:{s:4:\"name\";s:7:\"multiid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:5:\"thumb\";a:6:{s:4:\"name\";s:5:\"thumb\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:7:\"multiid\";a:3:{s:4:\"name\";s:7:\"multiid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"multiid\";}}}}i:80;a:6:{s:9:\"tablename\";s:23:\"ims_site_store_cash_log\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"founder_uid\";a:6:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"number\";a:6:{s:4:\"name\";s:6:\"number\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"char\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:6:\"amount\";a:6:{s:4:\"name\";s:6:\"amount\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"10,2\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:11:\"create_time\";a:6:{s:4:\"name\";s:11:\"create_time\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"founder_uid\";a:3:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"founder_uid\";}}}}i:81;a:6:{s:9:\"tablename\";s:25:\"ims_site_store_cash_order\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"number\";a:6:{s:4:\"name\";s:6:\"number\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"char\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:11:\"founder_uid\";a:6:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"order_id\";a:6:{s:4:\"name\";s:8:\"order_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"goods_id\";a:6:{s:4:\"name\";s:8:\"goods_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"order_amount\";a:6:{s:4:\"name\";s:12:\"order_amount\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"10,2\";}s:11:\"cash_log_id\";a:6:{s:4:\"name\";s:11:\"cash_log_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:11:\"create_time\";a:6:{s:4:\"name\";s:11:\"create_time\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"founder_uid\";a:3:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"founder_uid\";}}}}i:82;a:6:{s:9:\"tablename\";s:29:\"ims_site_store_create_account\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:7:\"endtime\";a:6:{s:4:\"name\";s:7:\"endtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"12\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:83;a:6:{s:9:\"tablename\";s:20:\"ims_site_store_goods\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:29:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"account_num\";a:6:{s:4:\"name\";s:11:\"account_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"wxapp_num\";a:6:{s:4:\"name\";s:9:\"wxapp_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"price\";a:6:{s:4:\"name\";s:5:\"price\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"10,2\";}s:4:\"unit\";a:6:{s:4:\"name\";s:4:\"unit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:5:\"slide\";a:6:{s:4:\"name\";s:5:\"slide\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:11:\"category_id\";a:6:{s:4:\"name\";s:11:\"category_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:13:\"title_initial\";a:6:{s:4:\"name\";s:13:\"title_initial\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"synopsis\";a:6:{s:4:\"name\";s:8:\"synopsis\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:12:\"module_group\";a:6:{s:4:\"name\";s:12:\"module_group\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"api_num\";a:6:{s:4:\"name\";s:7:\"api_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:16:\"user_group_price\";a:6:{s:4:\"name\";s:16:\"user_group_price\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:10:\"user_group\";a:6:{s:4:\"name\";s:10:\"user_group\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:13:\"account_group\";a:6:{s:4:\"name\";s:13:\"account_group\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"is_wish\";a:6:{s:4:\"name\";s:7:\"is_wish\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"logo\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"300\";}s:12:\"platform_num\";a:6:{s:4:\"name\";s:12:\"platform_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"aliapp_num\";a:6:{s:4:\"name\";s:10:\"aliapp_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"baiduapp_num\";a:6:{s:4:\"name\";s:12:\"baiduapp_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"phoneapp_num\";a:6:{s:4:\"name\";s:12:\"phoneapp_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:14:\"toutiaoapp_num\";a:6:{s:4:\"name\";s:14:\"toutiaoapp_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"webapp_num\";a:6:{s:4:\"name\";s:10:\"webapp_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"xzapp_num\";a:6:{s:4:\"name\";s:9:\"xzapp_num\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:6:\"module\";a:3:{s:4:\"name\";s:6:\"module\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"module\";}}s:11:\"category_id\";a:3:{s:4:\"name\";s:11:\"category_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"category_id\";}}s:5:\"price\";a:3:{s:4:\"name\";s:5:\"price\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:5:\"price\";}}}}i:84;a:6:{s:9:\"tablename\";s:26:\"ims_site_store_goods_cloud\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"cloud_id\";a:6:{s:4:\"name\";s:8:\"cloud_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"logo\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"300\";}s:11:\"wish_branch\";a:6:{s:4:\"name\";s:11:\"wish_branch\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"is_edited\";a:6:{s:4:\"name\";s:9:\"is_edited\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:9:\"isdeleted\";a:6:{s:4:\"name\";s:9:\"isdeleted\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:7:\"branchs\";a:6:{s:4:\"name\";s:7:\"branchs\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"6000\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:8:\"cloud_id\";a:3:{s:4:\"name\";s:8:\"cloud_id\";s:4:\"type\";s:6:\"unique\";s:6:\"fields\";a:1:{i:0;s:8:\"cloud_id\";}}}}i:85;a:6:{s:9:\"tablename\";s:20:\"ims_site_store_order\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:14:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"orderid\";a:6:{s:4:\"name\";s:7:\"orderid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"28\";}s:7:\"goodsid\";a:6:{s:4:\"name\";s:7:\"goodsid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"duration\";a:6:{s:4:\"name\";s:8:\"duration\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"buyer\";a:6:{s:4:\"name\";s:5:\"buyer\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"buyerid\";a:6:{s:4:\"name\";s:7:\"buyerid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"amount\";a:6:{s:4:\"name\";s:6:\"amount\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"decimal\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"10,2\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:11:\"changeprice\";a:6:{s:4:\"name\";s:11:\"changeprice\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"endtime\";a:6:{s:4:\"name\";s:7:\"endtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:5:\"wxapp\";a:6:{s:4:\"name\";s:5:\"wxapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:7:\"is_wish\";a:6:{s:4:\"name\";s:7:\"is_wish\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:6:\"goodid\";a:3:{s:4:\"name\";s:6:\"goodid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"goodsid\";}}s:7:\"buyerid\";a:3:{s:4:\"name\";s:7:\"buyerid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"buyerid\";}}}}i:86;a:6:{s:9:\"tablename\";s:15:\"ims_site_styles\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:4:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"templateid\";a:6:{s:4:\"name\";s:10:\"templateid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:87;a:6:{s:9:\"tablename\";s:20:\"ims_site_styles_vars\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"templateid\";a:6:{s:4:\"name\";s:10:\"templateid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"styleid\";a:6:{s:4:\"name\";s:7:\"styleid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"variable\";a:6:{s:4:\"name\";s:8:\"variable\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:88;a:6:{s:9:\"tablename\";s:18:\"ims_site_templates\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:7:\"version\";a:6:{s:4:\"name\";s:7:\"version\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:6:\"author\";a:6:{s:4:\"name\";s:6:\"author\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:8:\"sections\";a:6:{s:4:\"name\";s:8:\"sections\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:89;a:6:{s:9:\"tablename\";s:13:\"ims_stat_fans\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"new\";a:6:{s:4:\"name\";s:3:\"new\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"cancel\";a:6:{s:4:\"name\";s:6:\"cancel\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"cumulate\";a:6:{s:4:\"name\";s:8:\"cumulate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"date\";a:6:{s:4:\"name\";s:4:\"date\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"8\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:7:\"uniacid\";i:1;s:4:\"date\";}}}}i:90;a:6:{s:9:\"tablename\";s:16:\"ims_stat_keyword\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"kid\";a:6:{s:4:\"name\";s:3:\"kid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"hit\";a:6:{s:4:\"name\";s:3:\"hit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"lastupdate\";a:6:{s:4:\"name\";s:10:\"lastupdate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:14:\"idx_createtime\";a:3:{s:4:\"name\";s:14:\"idx_createtime\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:10:\"createtime\";}}}}i:91;a:6:{s:9:\"tablename\";s:20:\"ims_stat_msg_history\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"kid\";a:6:{s:4:\"name\";s:3:\"kid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"from_user\";a:6:{s:4:\"name\";s:9:\"from_user\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"message\";a:6:{s:4:\"name\";s:7:\"message\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:14:\"idx_createtime\";a:3:{s:4:\"name\";s:14:\"idx_createtime\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:10:\"createtime\";}}}}i:92;a:6:{s:9:\"tablename\";s:13:\"ims_stat_rule\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"hit\";a:6:{s:4:\"name\";s:3:\"hit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"lastupdate\";a:6:{s:4:\"name\";s:10:\"lastupdate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:14:\"idx_createtime\";a:3:{s:4:\"name\";s:14:\"idx_createtime\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:10:\"createtime\";}}}}i:93;a:6:{s:9:\"tablename\";s:14:\"ims_stat_visit\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:5:\"count\";a:6:{s:4:\"name\";s:5:\"count\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"date\";a:6:{s:4:\"name\";s:4:\"date\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"ip_count\";a:6:{s:4:\"name\";s:8:\"ip_count\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:4:\"date\";a:3:{s:4:\"name\";s:4:\"date\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"date\";}}s:6:\"module\";a:3:{s:4:\"name\";s:6:\"module\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"module\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:94;a:6:{s:9:\"tablename\";s:17:\"ims_stat_visit_ip\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:2:\"ip\";a:6:{s:4:\"name\";s:2:\"ip\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:6:\"bigint\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:4:\"date\";a:6:{s:4:\"name\";s:4:\"date\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:22:\"ip_date_module_uniacid\";a:3:{s:4:\"name\";s:22:\"ip_date_module_uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:4:{i:0;s:2:\"ip\";i:1;s:4:\"date\";i:2;s:6:\"module\";i:3;s:7:\"uniacid\";}}}}i:95;a:6:{s:9:\"tablename\";s:21:\"ims_system_stat_visit\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"modulename\";a:6:{s:4:\"name\";s:10:\"modulename\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"updatetime\";a:6:{s:4:\"name\";s:10:\"updatetime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:96;a:6:{s:9:\"tablename\";s:29:\"ims_system_welcome_binddomain\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"module_name\";a:6:{s:4:\"name\";s:11:\"module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"domain\";a:6:{s:4:\"name\";s:6:\"domain\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"module_name\";a:3:{s:4:\"name\";s:11:\"module_name\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"module_name\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:6:\"domain\";a:3:{s:4:\"name\";s:6:\"domain\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"domain\";}}}}i:97;a:6:{s:9:\"tablename\";s:15:\"ims_uni_account\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:11:{s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"groupid\";a:6:{s:4:\"name\";s:7:\"groupid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:12:\"default_acid\";a:6:{s:4:\"name\";s:12:\"default_acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"rank\";a:6:{s:4:\"name\";s:4:\"rank\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:13:\"title_initial\";a:6:{s:4:\"name\";s:13:\"title_initial\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"logo\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:6:\"qrcode\";a:6:{s:4:\"name\";s:6:\"qrcode\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:10:\"create_uid\";a:6:{s:4:\"name\";s:10:\"create_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:98;a:6:{s:9:\"tablename\";s:29:\"ims_uni_account_extra_modules\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"modules\";a:6:{s:4:\"name\";s:7:\"modules\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:99;a:6:{s:9:\"tablename\";s:21:\"ims_uni_account_group\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"groupid\";a:6:{s:4:\"name\";s:7:\"groupid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:100;a:6:{s:9:\"tablename\";s:21:\"ims_uni_account_menus\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:13:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"menuid\";a:6:{s:4:\"name\";s:6:\"menuid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:3:\"sex\";a:6:{s:4:\"name\";s:3:\"sex\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:8:\"group_id\";a:6:{s:4:\"name\";s:8:\"group_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:20:\"client_platform_type\";a:6:{s:4:\"name\";s:20:\"client_platform_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:4:\"area\";a:6:{s:4:\"name\";s:4:\"area\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:4:\"data\";a:6:{s:4:\"name\";s:4:\"data\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"isdeleted\";a:6:{s:4:\"name\";s:9:\"isdeleted\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:6:\"menuid\";a:3:{s:4:\"name\";s:6:\"menuid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"menuid\";}}}}i:101;a:6:{s:9:\"tablename\";s:23:\"ims_uni_account_modules\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:6;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"module\";a:6:{s:4:\"name\";s:6:\"module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"enabled\";a:6:{s:4:\"name\";s:7:\"enabled\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:8:\"settings\";a:6:{s:4:\"name\";s:8:\"settings\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:8:\"shortcut\";a:6:{s:4:\"name\";s:8:\"shortcut\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:10:\"idx_module\";a:3:{s:4:\"name\";s:10:\"idx_module\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:6:\"module\";}}s:11:\"idx_uniacid\";a:3:{s:4:\"name\";s:11:\"idx_uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:102;a:6:{s:9:\"tablename\";s:32:\"ims_uni_account_modules_shortcut\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"250\";}s:4:\"icon\";a:6:{s:4:\"name\";s:4:\"icon\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"version_id\";a:6:{s:4:\"name\";s:10:\"version_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"module_name\";a:6:{s:4:\"name\";s:11:\"module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:103;a:6:{s:9:\"tablename\";s:21:\"ims_uni_account_users\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"role\";a:6:{s:4:\"name\";s:4:\"role\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:4:\"rank\";a:6:{s:4:\"name\";s:4:\"rank\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:12:\"idx_memberid\";a:3:{s:4:\"name\";s:12:\"idx_memberid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:104;a:6:{s:9:\"tablename\";s:13:\"ims_uni_group\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"owner_uid\";a:6:{s:4:\"name\";s:9:\"owner_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"modules\";a:6:{s:4:\"name\";s:7:\"modules\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:9:\"templates\";a:6:{s:4:\"name\";s:9:\"templates\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"5000\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:105;a:6:{s:9:\"tablename\";s:20:\"ims_uni_link_uniacid\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"link_uniacid\";a:6:{s:4:\"name\";s:12:\"link_uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"version_id\";a:6:{s:4:\"name\";s:10:\"version_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"module_name\";a:6:{s:4:\"name\";s:11:\"module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:106;a:6:{s:9:\"tablename\";s:15:\"ims_uni_modules\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"module_name\";a:6:{s:4:\"name\";s:11:\"module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:107;a:6:{s:9:\"tablename\";s:16:\"ims_uni_settings\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";N;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:30:{s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"passport\";a:6:{s:4:\"name\";s:8:\"passport\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:5:\"oauth\";a:6:{s:4:\"name\";s:5:\"oauth\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:11:\"jsauth_acid\";a:6:{s:4:\"name\";s:11:\"jsauth_acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"notify\";a:6:{s:4:\"name\";s:6:\"notify\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2000\";}s:11:\"creditnames\";a:6:{s:4:\"name\";s:11:\"creditnames\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:15:\"creditbehaviors\";a:6:{s:4:\"name\";s:15:\"creditbehaviors\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:7:\"welcome\";a:6:{s:4:\"name\";s:7:\"welcome\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"60\";}s:7:\"default\";a:6:{s:4:\"name\";s:7:\"default\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"60\";}s:15:\"default_message\";a:6:{s:4:\"name\";s:15:\"default_message\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2000\";}s:7:\"payment\";a:6:{s:4:\"name\";s:7:\"payment\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:4:\"stat\";a:6:{s:4:\"name\";s:4:\"stat\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"300\";}s:12:\"default_site\";a:6:{s:4:\"name\";s:12:\"default_site\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"sync\";a:6:{s:4:\"name\";s:4:\"sync\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:8:\"recharge\";a:6:{s:4:\"name\";s:8:\"recharge\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:9:\"tplnotice\";a:6:{s:4:\"name\";s:9:\"tplnotice\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2000\";}s:10:\"grouplevel\";a:6:{s:4:\"name\";s:10:\"grouplevel\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:8:\"mcplugin\";a:6:{s:4:\"name\";s:8:\"mcplugin\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:15:\"exchange_enable\";a:6:{s:4:\"name\";s:15:\"exchange_enable\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:11:\"coupon_type\";a:6:{s:4:\"name\";s:11:\"coupon_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:7:\"menuset\";a:6:{s:4:\"name\";s:7:\"menuset\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:10:\"statistics\";a:6:{s:4:\"name\";s:10:\"statistics\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:11:\"bind_domain\";a:6:{s:4:\"name\";s:11:\"bind_domain\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:14:\"comment_status\";a:6:{s:4:\"name\";s:14:\"comment_status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:13:\"reply_setting\";a:6:{s:4:\"name\";s:13:\"reply_setting\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:14:\"default_module\";a:6:{s:4:\"name\";s:14:\"default_module\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:16:\"attachment_limit\";a:6:{s:4:\"name\";s:16:\"attachment_limit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:15:\"attachment_size\";a:6:{s:4:\"name\";s:15:\"attachment_size\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:11:\"sync_member\";a:6:{s:4:\"name\";s:11:\"sync_member\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:6:\"remote\";a:6:{s:4:\"name\";s:6:\"remote\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2000\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:108;a:6:{s:9:\"tablename\";s:18:\"ims_uni_verifycode\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"receiver\";a:6:{s:4:\"name\";s:8:\"receiver\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:10:\"verifycode\";a:6:{s:4:\"name\";s:10:\"verifycode\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"6\";}s:5:\"total\";a:6:{s:4:\"name\";s:5:\"total\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:12:\"failed_count\";a:6:{s:4:\"name\";s:12:\"failed_count\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:109;a:6:{s:9:\"tablename\";s:17:\"ims_userapi_cache\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:4:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"key\";a:6:{s:4:\"name\";s:3:\"key\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:10:\"lastupdate\";a:6:{s:4:\"name\";s:10:\"lastupdate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:110;a:6:{s:9:\"tablename\";s:17:\"ims_userapi_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:7;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"300\";}s:6:\"apiurl\";a:6:{s:4:\"name\";s:6:\"apiurl\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"300\";}s:5:\"token\";a:6:{s:4:\"name\";s:5:\"token\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:12:\"default_text\";a:6:{s:4:\"name\";s:12:\"default_text\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:9:\"cachetime\";a:6:{s:4:\"name\";s:9:\"cachetime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:111;a:6:{s:9:\"tablename\";s:9:\"ims_users\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:2;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:21:{s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"owner_uid\";a:6:{s:4:\"name\";s:9:\"owner_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"groupid\";a:6:{s:4:\"name\";s:7:\"groupid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:15:\"founder_groupid\";a:6:{s:4:\"name\";s:15:\"founder_groupid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:8:\"username\";a:6:{s:4:\"name\";s:8:\"username\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:8:\"password\";a:6:{s:4:\"name\";s:8:\"password\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:4:\"salt\";a:6:{s:4:\"name\";s:4:\"salt\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:6:\"status\";a:6:{s:4:\"name\";s:6:\"status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:8:\"joindate\";a:6:{s:4:\"name\";s:8:\"joindate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"joinip\";a:6:{s:4:\"name\";s:6:\"joinip\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:9:\"lastvisit\";a:6:{s:4:\"name\";s:9:\"lastvisit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"lastip\";a:6:{s:4:\"name\";s:6:\"lastip\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:6:\"remark\";a:6:{s:4:\"name\";s:6:\"remark\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"500\";}s:9:\"starttime\";a:6:{s:4:\"name\";s:9:\"starttime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"endtime\";a:6:{s:4:\"name\";s:7:\"endtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:13:\"register_type\";a:6:{s:4:\"name\";s:13:\"register_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:6:\"openid\";a:6:{s:4:\"name\";s:6:\"openid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:12:\"welcome_link\";a:6:{s:4:\"name\";s:12:\"welcome_link\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:14:\"notice_setting\";a:6:{s:4:\"name\";s:14:\"notice_setting\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"5000\";}s:7:\"is_bind\";a:6:{s:4:\"name\";s:7:\"is_bind\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:8:\"username\";a:3:{s:4:\"name\";s:8:\"username\";s:4:\"type\";s:6:\"unique\";s:6:\"fields\";a:1:{i:0;s:8:\"username\";}}}}i:112;a:6:{s:9:\"tablename\";s:14:\"ims_users_bind\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:9:\"bind_sign\";a:6:{s:4:\"name\";s:9:\"bind_sign\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:10:\"third_type\";a:6:{s:4:\"name\";s:10:\"third_type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"4\";}s:14:\"third_nickname\";a:6:{s:4:\"name\";s:14:\"third_nickname\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:9:\"bind_sign\";a:3:{s:4:\"name\";s:9:\"bind_sign\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:9:\"bind_sign\";}}}}i:113;a:6:{s:9:\"tablename\";s:22:\"ims_users_create_group\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:11:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"group_name\";a:6:{s:4:\"name\";s:10:\"group_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:10:\"maxaccount\";a:6:{s:4:\"name\";s:10:\"maxaccount\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"maxwxapp\";a:6:{s:4:\"name\";s:8:\"maxwxapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"maxwebapp\";a:6:{s:4:\"name\";s:9:\"maxwebapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"maxphoneapp\";a:6:{s:4:\"name\";s:11:\"maxphoneapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"maxxzapp\";a:6:{s:4:\"name\";s:8:\"maxxzapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"maxaliapp\";a:6:{s:4:\"name\";s:9:\"maxaliapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"maxbaiduapp\";a:6:{s:4:\"name\";s:11:\"maxbaiduapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:13:\"maxtoutiaoapp\";a:6:{s:4:\"name\";s:13:\"maxtoutiaoapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:114;a:6:{s:9:\"tablename\";s:21:\"ims_users_extra_group\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:4:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"uni_group_id\";a:6:{s:4:\"name\";s:12:\"uni_group_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:15:\"create_group_id\";a:6:{s:4:\"name\";s:15:\"create_group_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:12:\"uni_group_id\";a:3:{s:4:\"name\";s:12:\"uni_group_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:12:\"uni_group_id\";}}s:15:\"create_group_id\";a:3:{s:4:\"name\";s:15:\"create_group_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:15:\"create_group_id\";}}}}i:115;a:6:{s:9:\"tablename\";s:21:\"ims_users_extra_limit\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:11:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"maxaccount\";a:6:{s:4:\"name\";s:10:\"maxaccount\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"maxwxapp\";a:6:{s:4:\"name\";s:8:\"maxwxapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"maxwebapp\";a:6:{s:4:\"name\";s:9:\"maxwebapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"maxphoneapp\";a:6:{s:4:\"name\";s:11:\"maxphoneapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"maxxzapp\";a:6:{s:4:\"name\";s:8:\"maxxzapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"maxaliapp\";a:6:{s:4:\"name\";s:9:\"maxaliapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"timelimit\";a:6:{s:4:\"name\";s:9:\"timelimit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"maxbaiduapp\";a:6:{s:4:\"name\";s:11:\"maxbaiduapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:13:\"maxtoutiaoapp\";a:6:{s:4:\"name\";s:13:\"maxtoutiaoapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:116;a:6:{s:9:\"tablename\";s:23:\"ims_users_extra_modules\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:4:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"module_name\";a:6:{s:4:\"name\";s:11:\"module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:7:\"support\";a:6:{s:4:\"name\";s:7:\"support\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:11:\"module_name\";a:3:{s:4:\"name\";s:11:\"module_name\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"module_name\";}}}}i:117;a:6:{s:9:\"tablename\";s:25:\"ims_users_extra_templates\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"template_id\";a:6:{s:4:\"name\";s:11:\"template_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:11:\"template_id\";a:3:{s:4:\"name\";s:11:\"template_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"template_id\";}}}}i:118;a:6:{s:9:\"tablename\";s:22:\"ims_users_failed_login\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:2:\"ip\";a:6:{s:4:\"name\";s:2:\"ip\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:8:\"username\";a:6:{s:4:\"name\";s:8:\"username\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"32\";}s:5:\"count\";a:6:{s:4:\"name\";s:5:\"count\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:10:\"lastupdate\";a:6:{s:4:\"name\";s:10:\"lastupdate\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"ip_username\";a:3:{s:4:\"name\";s:11:\"ip_username\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:2:{i:0;s:2:\"ip\";i:1;s:8:\"username\";}}}}i:119;a:6:{s:9:\"tablename\";s:23:\"ims_users_founder_group\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:12:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"package\";a:6:{s:4:\"name\";s:7:\"package\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"5000\";}s:10:\"maxaccount\";a:6:{s:4:\"name\";s:10:\"maxaccount\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"timelimit\";a:6:{s:4:\"name\";s:9:\"timelimit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"maxwxapp\";a:6:{s:4:\"name\";s:8:\"maxwxapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"maxwebapp\";a:6:{s:4:\"name\";s:9:\"maxwebapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"maxphoneapp\";a:6:{s:4:\"name\";s:11:\"maxphoneapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"maxxzapp\";a:6:{s:4:\"name\";s:8:\"maxxzapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"maxaliapp\";a:6:{s:4:\"name\";s:9:\"maxaliapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"maxbaiduapp\";a:6:{s:4:\"name\";s:11:\"maxbaiduapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:13:\"maxtoutiaoapp\";a:6:{s:4:\"name\";s:13:\"maxtoutiaoapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:120;a:6:{s:9:\"tablename\";s:35:\"ims_users_founder_own_create_groups\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"founder_uid\";a:6:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:15:\"create_group_id\";a:6:{s:4:\"name\";s:15:\"create_group_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"founder_uid\";a:3:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"founder_uid\";}}s:15:\"create_group_id\";a:3:{s:4:\"name\";s:15:\"create_group_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:15:\"create_group_id\";}}}}i:121;a:6:{s:9:\"tablename\";s:32:\"ims_users_founder_own_uni_groups\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"founder_uid\";a:6:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"uni_group_id\";a:6:{s:4:\"name\";s:12:\"uni_group_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"founder_uid\";a:3:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"founder_uid\";}}s:12:\"uni_group_id\";a:3:{s:4:\"name\";s:12:\"uni_group_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:12:\"uni_group_id\";}}}}i:122;a:6:{s:9:\"tablename\";s:27:\"ims_users_founder_own_users\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"founder_uid\";a:6:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}s:11:\"founder_uid\";a:3:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"founder_uid\";}}}}i:123;a:6:{s:9:\"tablename\";s:34:\"ims_users_founder_own_users_groups\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:3:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"founder_uid\";a:6:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:14:\"users_group_id\";a:6:{s:4:\"name\";s:14:\"users_group_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:11:\"founder_uid\";a:3:{s:4:\"name\";s:11:\"founder_uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:11:\"founder_uid\";}}s:14:\"users_group_id\";a:3:{s:4:\"name\";s:14:\"users_group_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:14:\"users_group_id\";}}}}i:124;a:6:{s:9:\"tablename\";s:15:\"ims_users_group\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:4;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:13:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"owner_uid\";a:6:{s:4:\"name\";s:9:\"owner_uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"name\";a:6:{s:4:\"name\";s:4:\"name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"package\";a:6:{s:4:\"name\";s:7:\"package\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"5000\";}s:10:\"maxaccount\";a:6:{s:4:\"name\";s:10:\"maxaccount\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"timelimit\";a:6:{s:4:\"name\";s:9:\"timelimit\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"maxwxapp\";a:6:{s:4:\"name\";s:8:\"maxwxapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"maxwebapp\";a:6:{s:4:\"name\";s:9:\"maxwebapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"maxphoneapp\";a:6:{s:4:\"name\";s:11:\"maxphoneapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"maxxzapp\";a:6:{s:4:\"name\";s:8:\"maxxzapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"maxaliapp\";a:6:{s:4:\"name\";s:9:\"maxaliapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"maxbaiduapp\";a:6:{s:4:\"name\";s:11:\"maxbaiduapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:13:\"maxtoutiaoapp\";a:6:{s:4:\"name\";s:13:\"maxtoutiaoapp\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:125;a:6:{s:9:\"tablename\";s:20:\"ims_users_invitation\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"code\";a:6:{s:4:\"name\";s:4:\"code\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:7:\"fromuid\";a:6:{s:4:\"name\";s:7:\"fromuid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"inviteuid\";a:6:{s:4:\"name\";s:9:\"inviteuid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:8:\"idx_code\";a:3:{s:4:\"name\";s:8:\"idx_code\";s:4:\"type\";s:6:\"unique\";s:6:\"fields\";a:1:{i:0;s:4:\"code\";}}}}i:126;a:6:{s:9:\"tablename\";s:17:\"ims_users_lastuse\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"modulename\";a:6:{s:4:\"name\";s:10:\"modulename\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:127;a:6:{s:9:\"tablename\";s:20:\"ims_users_login_logs\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"11\";}s:2:\"ip\";a:6:{s:4:\"name\";s:2:\"ip\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:4:\"city\";a:6:{s:4:\"name\";s:4:\"city\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"256\";}s:8:\"login_at\";a:6:{s:4:\"name\";s:8:\"login_at\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:128;a:6:{s:9:\"tablename\";s:25:\"ims_users_operate_history\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:11:\"module_name\";a:6:{s:4:\"name\";s:11:\"module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:4:\"type\";a:3:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"type\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:129;a:6:{s:9:\"tablename\";s:22:\"ims_users_operate_star\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:7:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"1\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:11:\"module_name\";a:6:{s:4:\"name\";s:11:\"module_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:4:\"rank\";a:6:{s:4:\"name\";s:4:\"rank\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:4:\"type\";a:3:{s:4:\"name\";s:4:\"type\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"type\";}}s:3:\"uid\";a:3:{s:4:\"name\";s:3:\"uid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"uid\";}}}}i:130;a:6:{s:9:\"tablename\";s:20:\"ims_users_permission\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:8:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:10:\"permission\";a:6:{s:4:\"name\";s:10:\"permission\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:5:\"10000\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"modules\";a:6:{s:4:\"name\";s:7:\"modules\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:9:\"templates\";a:6:{s:4:\"name\";s:9:\"templates\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:131;a:6:{s:9:\"tablename\";s:17:\"ims_users_profile\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:48:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"edittime\";a:6:{s:4:\"name\";s:8:\"edittime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"realname\";a:6:{s:4:\"name\";s:8:\"realname\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"nickname\";a:6:{s:4:\"name\";s:8:\"nickname\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"20\";}s:6:\"avatar\";a:6:{s:4:\"name\";s:6:\"avatar\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:2:\"qq\";a:6:{s:4:\"name\";s:2:\"qq\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:6:\"mobile\";a:6:{s:4:\"name\";s:6:\"mobile\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:6:\"fakeid\";a:6:{s:4:\"name\";s:6:\"fakeid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:3:\"vip\";a:6:{s:4:\"name\";s:3:\"vip\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:6:\"gender\";a:6:{s:4:\"name\";s:6:\"gender\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:9:\"birthyear\";a:6:{s:4:\"name\";s:9:\"birthyear\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:8:\"smallint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"6\";}s:10:\"birthmonth\";a:6:{s:4:\"name\";s:10:\"birthmonth\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:8:\"birthday\";a:6:{s:4:\"name\";s:8:\"birthday\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:13:\"constellation\";a:6:{s:4:\"name\";s:13:\"constellation\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:6:\"zodiac\";a:6:{s:4:\"name\";s:6:\"zodiac\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"5\";}s:9:\"telephone\";a:6:{s:4:\"name\";s:9:\"telephone\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:6:\"idcard\";a:6:{s:4:\"name\";s:6:\"idcard\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:9:\"studentid\";a:6:{s:4:\"name\";s:9:\"studentid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:5:\"grade\";a:6:{s:4:\"name\";s:5:\"grade\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:7:\"address\";a:6:{s:4:\"name\";s:7:\"address\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"zipcode\";a:6:{s:4:\"name\";s:7:\"zipcode\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"nationality\";a:6:{s:4:\"name\";s:11:\"nationality\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:14:\"resideprovince\";a:6:{s:4:\"name\";s:14:\"resideprovince\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:10:\"residecity\";a:6:{s:4:\"name\";s:10:\"residecity\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:10:\"residedist\";a:6:{s:4:\"name\";s:10:\"residedist\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:14:\"graduateschool\";a:6:{s:4:\"name\";s:14:\"graduateschool\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"company\";a:6:{s:4:\"name\";s:7:\"company\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:9:\"education\";a:6:{s:4:\"name\";s:9:\"education\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:10:\"occupation\";a:6:{s:4:\"name\";s:10:\"occupation\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:8:\"position\";a:6:{s:4:\"name\";s:8:\"position\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:7:\"revenue\";a:6:{s:4:\"name\";s:7:\"revenue\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:15:\"affectivestatus\";a:6:{s:4:\"name\";s:15:\"affectivestatus\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:10:\"lookingfor\";a:6:{s:4:\"name\";s:10:\"lookingfor\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:9:\"bloodtype\";a:6:{s:4:\"name\";s:9:\"bloodtype\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"5\";}s:6:\"height\";a:6:{s:4:\"name\";s:6:\"height\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"5\";}s:6:\"weight\";a:6:{s:4:\"name\";s:6:\"weight\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"5\";}s:6:\"alipay\";a:6:{s:4:\"name\";s:6:\"alipay\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:3:\"msn\";a:6:{s:4:\"name\";s:3:\"msn\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:5:\"email\";a:6:{s:4:\"name\";s:5:\"email\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"taobao\";a:6:{s:4:\"name\";s:6:\"taobao\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:4:\"site\";a:6:{s:4:\"name\";s:4:\"site\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:3:\"bio\";a:6:{s:4:\"name\";s:3:\"bio\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:8:\"interest\";a:6:{s:4:\"name\";s:8:\"interest\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:8:\"workerid\";a:6:{s:4:\"name\";s:8:\"workerid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"64\";}s:21:\"is_send_mobile_status\";a:6:{s:4:\"name\";s:21:\"is_send_mobile_status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}s:18:\"send_expire_status\";a:6:{s:4:\"name\";s:18:\"send_expire_status\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"3\";}}s:7:\"indexes\";a:1:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}}}i:132;a:6:{s:9:\"tablename\";s:15:\"ims_video_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:6:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"mediaid\";a:6:{s:4:\"name\";s:7:\"mediaid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:133;a:6:{s:9:\"tablename\";s:15:\"ims_voice_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:5:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:7:\"mediaid\";a:6:{s:4:\"name\";s:7:\"mediaid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}i:134;a:6:{s:9:\"tablename\";s:21:\"ims_wechat_attachment\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:15:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"acid\";a:6:{s:4:\"name\";s:4:\"acid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"uid\";a:6:{s:4:\"name\";s:3:\"uid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:8:\"filename\";a:6:{s:4:\"name\";s:8:\"filename\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:10:\"attachment\";a:6:{s:4:\"name\";s:10:\"attachment\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:8:\"media_id\";a:6:{s:4:\"name\";s:8:\"media_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:5:\"width\";a:6:{s:4:\"name\";s:5:\"width\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:6:\"height\";a:6:{s:4:\"name\";s:6:\"height\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"15\";}s:5:\"model\";a:6:{s:4:\"name\";s:5:\"model\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"25\";}s:3:\"tag\";a:6:{s:4:\"name\";s:3:\"tag\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"5000\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:17:\"module_upload_dir\";a:6:{s:4:\"name\";s:17:\"module_upload_dir\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"100\";}s:8:\"group_id\";a:6:{s:4:\"name\";s:8:\"group_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}}s:7:\"indexes\";a:4:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:8:\"media_id\";a:3:{s:4:\"name\";s:8:\"media_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:8:\"media_id\";}}s:4:\"acid\";a:3:{s:4:\"name\";s:4:\"acid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:4:\"acid\";}}}}i:135;a:6:{s:9:\"tablename\";s:15:\"ims_wechat_news\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:15:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:9:\"attach_id\";a:6:{s:4:\"name\";s:9:\"attach_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:14:\"thumb_media_id\";a:6:{s:4:\"name\";s:14:\"thumb_media_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"60\";}s:9:\"thumb_url\";a:6:{s:4:\"name\";s:9:\"thumb_url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:6:\"author\";a:6:{s:4:\"name\";s:6:\"author\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:6:\"digest\";a:6:{s:4:\"name\";s:6:\"digest\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"content\";a:6:{s:4:\"name\";s:7:\"content\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:18:\"content_source_url\";a:6:{s:4:\"name\";s:18:\"content_source_url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:14:\"show_cover_pic\";a:6:{s:4:\"name\";s:14:\"show_cover_pic\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:0;s:6:\"length\";s:1:\"3\";}s:3:\"url\";a:6:{s:4:\"name\";s:3:\"url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"200\";}s:12:\"displayorder\";a:6:{s:4:\"name\";s:12:\"displayorder\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"2\";}s:17:\"need_open_comment\";a:6:{s:4:\"name\";s:17:\"need_open_comment\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:21:\"only_fans_can_comment\";a:6:{s:4:\"name\";s:21:\"only_fans_can_comment\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:9:\"attach_id\";a:3:{s:4:\"name\";s:9:\"attach_id\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:9:\"attach_id\";}}}}i:136;a:6:{s:9:\"tablename\";s:26:\"ims_wxapp_general_analysis\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:11:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"session_cnt\";a:6:{s:4:\"name\";s:11:\"session_cnt\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"visit_pv\";a:6:{s:4:\"name\";s:8:\"visit_pv\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"visit_uv\";a:6:{s:4:\"name\";s:8:\"visit_uv\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:12:\"visit_uv_new\";a:6:{s:4:\"name\";s:12:\"visit_uv_new\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"2\";}s:12:\"stay_time_uv\";a:6:{s:4:\"name\";s:12:\"stay_time_uv\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:17:\"stay_time_session\";a:6:{s:4:\"name\";s:17:\"stay_time_session\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"visit_depth\";a:6:{s:4:\"name\";s:11:\"visit_depth\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:8:\"ref_date\";a:6:{s:4:\"name\";s:8:\"ref_date\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"8\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}s:8:\"ref_date\";a:3:{s:4:\"name\";s:8:\"ref_date\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:8:\"ref_date\";}}}}i:137;a:6:{s:9:\"tablename\";s:18:\"ims_wxapp_versions\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:18:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"uniacid\";a:6:{s:4:\"name\";s:7:\"uniacid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"multiid\";a:6:{s:4:\"name\";s:7:\"multiid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:7:\"version\";a:6:{s:4:\"name\";s:7:\"version\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:11:\"description\";a:6:{s:4:\"name\";s:11:\"description\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"modules\";a:6:{s:4:\"name\";s:7:\"modules\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:13:\"design_method\";a:6:{s:4:\"name\";s:13:\"design_method\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:8:\"template\";a:6:{s:4:\"name\";s:8:\"template\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:9:\"quickmenu\";a:6:{s:4:\"name\";s:9:\"quickmenu\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"2500\";}s:10:\"createtime\";a:6:{s:4:\"name\";s:10:\"createtime\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}s:4:\"type\";a:6:{s:4:\"name\";s:4:\"type\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"2\";}s:8:\"entry_id\";a:6:{s:4:\"name\";s:8:\"entry_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"11\";}s:7:\"appjson\";a:6:{s:4:\"name\";s:7:\"appjson\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:15:\"default_appjson\";a:6:{s:4:\"name\";s:15:\"default_appjson\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:4:\"text\";s:6:\"signed\";b:1;s:6:\"length\";s:0:\"\";}s:11:\"use_default\";a:6:{s:4:\"name\";s:11:\"use_default\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"tinyint\";s:6:\"signed\";b:1;s:6:\"length\";s:1:\"1\";}s:12:\"last_modules\";a:6:{s:4:\"name\";s:12:\"last_modules\";s:4:\"null\";b:1;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:13:\"tominiprogram\";a:6:{s:4:\"name\";s:13:\"tominiprogram\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:4:\"1000\";}s:11:\"upload_time\";a:6:{s:4:\"name\";s:11:\"upload_time\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"10\";}}s:7:\"indexes\";a:3:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:7:\"version\";a:3:{s:4:\"name\";s:7:\"version\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"version\";}}s:7:\"uniacid\";a:3:{s:4:\"name\";s:7:\"uniacid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:7:\"uniacid\";}}}}i:138;a:6:{s:9:\"tablename\";s:16:\"ims_wxcard_reply\";s:7:\"charset\";s:15:\"utf8_general_ci\";s:9:\"increment\";i:1;s:6:\"engine\";s:6:\"MyISAM\";s:6:\"fields\";a:9:{s:2:\"id\";a:6:{s:4:\"name\";s:2:\"id\";s:4:\"null\";b:0;s:9:\"increment\";b:1;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:3:\"rid\";a:6:{s:4:\"name\";s:3:\"rid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:5:\"title\";a:6:{s:4:\"name\";s:5:\"title\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:7:\"card_id\";a:6:{s:4:\"name\";s:7:\"card_id\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"50\";}s:3:\"cid\";a:6:{s:4:\"name\";s:3:\"cid\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"signed\";b:0;s:6:\"length\";s:2:\"10\";}s:10:\"brand_name\";a:6:{s:4:\"name\";s:10:\"brand_name\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:2:\"30\";}s:8:\"logo_url\";a:6:{s:4:\"name\";s:8:\"logo_url\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:7:\"success\";a:6:{s:4:\"name\";s:7:\"success\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}s:5:\"error\";a:6:{s:4:\"name\";s:5:\"error\";s:4:\"null\";b:0;s:9:\"increment\";b:0;s:4:\"type\";s:7:\"varchar\";s:6:\"signed\";b:1;s:6:\"length\";s:3:\"255\";}}s:7:\"indexes\";a:2:{s:7:\"PRIMARY\";a:3:{s:4:\"name\";s:7:\"PRIMARY\";s:4:\"type\";s:7:\"primary\";s:6:\"fields\";a:1:{i:0;s:2:\"id\";}}s:3:\"rid\";a:3:{s:4:\"name\";s:3:\"rid\";s:4:\"type\";s:5:\"index\";s:6:\"fields\";a:1:{i:0;s:3:\"rid\";}}}}}s:7:\"scripts\";a:0:{}s:4:\"tips\";a:0:{}}}'),('we7:cloud_api:dada1481e4506f26b0e2c3d0e47acfff','a:2:{s:6:\"expire\";i:1596681944;s:4:\"data\";a:1:{s:10:\"transtoken\";s:32:\"f40627762585437df5569ed9877f0b92\";}}'),('we7:system_frame:1','a:20:{s:7:\"welcome\";a:7:{s:5:\"title\";s:6:\"首页\";s:4:\"icon\";s:10:\"wi wi-home\";s:3:\"url\";s:48:\"./index.php?c=home&a=welcome&do=system&page=home\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:2;}s:14:\"account_manage\";a:8:{s:5:\"title\";s:12:\"平台管理\";s:4:\"icon\";s:21:\"wi wi-platform-manage\";s:9:\"dimension\";i:2;s:3:\"url\";s:31:\"./index.php?c=account&a=manage&\";s:7:\"section\";a:1:{s:14:\"account_manage\";a:2:{s:5:\"title\";s:12:\"平台管理\";s:4:\"menu\";a:4:{s:22:\"account_manage_display\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"平台列表\";s:3:\"url\";s:31:\"./index.php?c=account&a=manage&\";s:15:\"permission_name\";s:22:\"account_manage_display\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:12:\"帐号停用\";s:15:\"permission_name\";s:19:\"account_manage_stop\";}}}s:22:\"account_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:32:\"./index.php?c=account&a=recycle&\";s:15:\"permission_name\";s:22:\"account_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"帐号删除\";s:15:\"permission_name\";s:21:\"account_manage_delete\";}i:1;a:2:{s:5:\"title\";s:12:\"帐号恢复\";s:15:\"permission_name\";s:22:\"account_manage_recover\";}}}s:30:\"account_manage_system_platform\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:30:\"account_manage_system_platform\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:30:\"account_manage_expired_message\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\" 自定义到期提示\";s:3:\"url\";s:40:\"./index.php?c=account&a=expired-message&\";s:15:\"permission_name\";s:30:\"account_manage_expired_message\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:3;}s:13:\"module_manage\";a:8:{s:5:\"title\";s:12:\"应用管理\";s:4:\"icon\";s:19:\"wi wi-module-manage\";s:9:\"dimension\";i:2;s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=installed&\";s:7:\"section\";a:1:{s:13:\"module_manage\";a:2:{s:5:\"title\";s:12:\"应用管理\";s:4:\"menu\";a:6:{s:23:\"module_manage_installed\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"已安装列表\";s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=installed&\";s:15:\"permission_name\";s:23:\"module_manage_installed\";s:4:\"icon\";N;s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"module_manage_stoped\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"已停用列表\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=recycle&type=1\";s:15:\"permission_name\";s:20:\"module_manage_stoped\";s:4:\"icon\";N;s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:27:\"module_manage_not_installed\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"未安装列表\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=not_installed&\";s:15:\"permission_name\";s:27:\"module_manage_not_installed\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:21:\"module_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:54:\"./index.php?c=module&a=manage-system&do=recycle&type=2\";s:15:\"permission_name\";s:21:\"module_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:23:\"module_manage_subscribe\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"订阅管理\";s:3:\"url\";s:50:\"./index.php?c=module&a=manage-system&do=subscribe&\";s:15:\"permission_name\";s:23:\"module_manage_subscribe\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"module_manage_expire\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"应用停用提醒\";s:3:\"url\";s:30:\"./index.php?c=module&a=expire&\";s:15:\"permission_name\";s:20:\"module_manage_expire\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:4;}s:11:\"user_manage\";a:8:{s:5:\"title\";s:12:\"用户管理\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:7:\"section\";a:1:{s:11:\"user_manage\";a:2:{s:5:\"title\";s:12:\"用户管理\";s:4:\"menu\";a:5:{s:19:\"user_manage_display\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"普通用户\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:19:\"user_manage_display\";s:4:\"icon\";N;s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"user_manage_clerk\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"店员管理\";s:3:\"url\";s:39:\"./index.php?c=user&a=display&type=clerk\";s:15:\"permission_name\";s:17:\"user_manage_clerk\";s:4:\"icon\";N;s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:17:\"user_manage_check\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"审核用户\";s:3:\"url\";s:39:\"./index.php?c=user&a=display&type=check\";s:15:\"permission_name\";s:17:\"user_manage_check\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"user_manage_recycle\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"回收站\";s:3:\"url\";s:41:\"./index.php?c=user&a=display&type=recycle\";s:15:\"permission_name\";s:19:\"user_manage_recycle\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"user_manage_fields\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"用户属性设置\";s:3:\"url\";s:39:\"./index.php?c=user&a=fields&do=display&\";s:15:\"permission_name\";s:18:\"user_manage_fields\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:5;}s:10:\"permission\";a:8:{s:5:\"title\";s:9:\"权限组\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:7:\"section\";a:1:{s:10:\"permission\";a:2:{s:5:\"title\";s:9:\"权限组\";s:4:\"menu\";a:3:{s:23:\"permission_module_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:23:\"permission_module_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:31:\"permission_create_account_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"账号权限组\";s:3:\"url\";s:34:\"./index.php?c=user&a=create-group&\";s:15:\"permission_name\";s:31:\"permission_create_account_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:21:\"permission_user_group\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"用户权限组合\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:21:\"permission_user_group\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:6;}s:6:\"system\";a:8:{s:5:\"title\";s:12:\"系统功能\";s:4:\"icon\";s:13:\"wi wi-setting\";s:9:\"dimension\";i:3;s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:7:\"section\";a:2:{s:7:\"article\";a:3:{s:5:\"title\";s:12:\"站内公告\";s:4:\"menu\";a:1:{s:14:\"system_article\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站内公告\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:14:\"system_article\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:2:{s:5:\"title\";s:12:\"公告列表\";s:15:\"permission_name\";s:26:\"system_article_notice_list\";}i:1;a:2:{s:5:\"title\";s:12:\"公告分类\";s:15:\"permission_name\";s:30:\"system_article_notice_category\";}}}}s:7:\"founder\";b:1;}s:3:\"sms\";a:3:{s:5:\"title\";s:12:\"系统短信\";s:4:\"menu\";a:5:{s:21:\"system_cloud_sms_sign\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"签名管理\";s:3:\"url\";s:31:\"./index.php?c=cloud&a=sms-sign&\";s:15:\"permission_name\";s:21:\"system_cloud_sms_sign\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:24:\"system_cloud_sms_package\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"购买短信包\";s:3:\"url\";s:34:\"./index.php?c=cloud&a=sms-package&\";s:15:\"permission_name\";s:24:\"system_cloud_sms_package\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:27:\"system_cloud_sms_statistics\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"发送统计\";s:3:\"url\";s:37:\"./index.php?c=cloud&a=sms-statistics&\";s:15:\"permission_name\";s:27:\"system_cloud_sms_statistics\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_cloud_sms_template\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"短信模板\";s:3:\"url\";s:35:\"./index.php?c=cloud&a=sms-template&\";s:15:\"permission_name\";s:25:\"system_cloud_sms_template\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"system_cloud_sms_share\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"分配短信\";s:3:\"url\";s:32:\"./index.php?c=cloud&a=sms-share&\";s:15:\"permission_name\";s:22:\"system_cloud_sms_share\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:7;}s:4:\"site\";a:9:{s:5:\"title\";s:12:\"站点设置\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:9:\"dimension\";i:3;s:3:\"url\";s:30:\"./index.php?c=cloud&a=upgrade&\";s:7:\"section\";a:4:{s:5:\"cloud\";a:2:{s:5:\"title\";s:9:\"云服务\";s:4:\"menu\";a:3:{s:14:\"system_profile\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统升级\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=upgrade&\";s:15:\"permission_name\";s:20:\"system_cloud_upgrade\";s:4:\"icon\";s:11:\"wi wi-cache\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_register\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"注册站点\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=profile&\";s:15:\"permission_name\";s:21:\"system_cloud_register\";s:4:\"icon\";s:18:\"wi wi-registersite\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_diagnose\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"云服务诊断\";s:3:\"url\";s:31:\"./index.php?c=cloud&a=diagnose&\";s:15:\"permission_name\";s:21:\"system_cloud_diagnose\";s:4:\"icon\";s:14:\"wi wi-diagnose\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:25:\"用户登录/注册设置\";s:3:\"url\";s:33:\"./index.php?c=user&a=registerset&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"全局借用权限\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:6:{s:24:\"system_utility_filecheck\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_utility_check\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统常规检测\";s:3:\"url\";s:29:\"./index.php?c=system&a=check&\";s:15:\"permission_name\";s:20:\"system_utility_check\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:8;}s:6:\"myself\";a:8:{s:5:\"title\";s:12:\"我的账户\";s:4:\"icon\";s:10:\"wi wi-bell\";s:9:\"dimension\";i:2;s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:9;}s:7:\"message\";a:8:{s:5:\"title\";s:12:\"消息管理\";s:4:\"icon\";s:12:\"wi wi-xiaoxi\";s:9:\"dimension\";i:2;s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:7:\"section\";a:1:{s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息管理\";s:4:\"menu\";a:3:{s:14:\"message_notice\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:14:\"message_notice\";s:4:\"icon\";N;s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"message_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息设置\";s:3:\"url\";s:42:\"./index.php?c=message&a=notice&do=setting&\";s:15:\"permission_name\";s:15:\"message_setting\";s:4:\"icon\";N;s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"message_wechat_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"微信提醒设置\";s:3:\"url\";s:49:\"./index.php?c=message&a=notice&do=wechat_setting&\";s:15:\"permission_name\";s:22:\"message_wechat_setting\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:10;}s:7:\"account\";a:8:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:9:\"dimension\";i:3;s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:4:{s:8:\"platform\";a:3:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{s:22:\"platform_reply_keyword\";a:4:{s:5:\"title\";s:21:\"关键字自动回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=keyword\";s:15:\"permission_name\";s:22:\"platform_reply_keyword\";s:6:\"active\";s:7:\"keyword\";}s:22:\"platform_reply_special\";a:4:{s:5:\"title\";s:24:\"非关键字自动回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=special\";s:15:\"permission_name\";s:22:\"platform_reply_special\";s:6:\"active\";s:7:\"special\";}s:22:\"platform_reply_welcome\";a:4:{s:5:\"title\";s:24:\"首次访问自动回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=welcome\";s:15:\"permission_name\";s:22:\"platform_reply_welcome\";s:6:\"active\";s:7:\"welcome\";}s:22:\"platform_reply_default\";a:4:{s:5:\"title\";s:12:\"默认回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=default\";s:15:\"permission_name\";s:22:\"platform_reply_default\";s:6:\"active\";s:7:\"default\";}s:22:\"platform_reply_service\";a:4:{s:5:\"title\";s:12:\"常用服务\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=service\";s:15:\"permission_name\";s:22:\"platform_reply_service\";s:6:\"active\";s:7:\"service\";}s:22:\"platform_reply_userapi\";a:5:{s:5:\"title\";s:21:\"自定义接口回复\";s:3:\"url\";s:50:\"./index.php?c=platform&a=reply&module_name=userapi\";s:15:\"permission_name\";s:22:\"platform_reply_userapi\";s:6:\"active\";s:7:\"userapi\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:22:\"platform_reply_setting\";a:4:{s:5:\"title\";s:12:\"回复设置\";s:3:\"url\";s:38:\"./index.php?c=profile&a=reply-setting&\";s:15:\"permission_name\";s:22:\"platform_reply_setting\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:13:\"platform_menu\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:21:\"platform_menu_default\";a:4:{s:5:\"title\";s:12:\"默认菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:21:\"platform_menu_default\";s:6:\"active\";s:4:\"post\";}s:25:\"platform_menu_conditional\";a:5:{s:5:\"title\";s:15:\"个性化菜单\";s:3:\"url\";s:47:\"./index.php?c=platform&a=menu&do=display&type=3\";s:15:\"permission_name\";s:25:\"platform_menu_conditional\";s:6:\"active\";s:7:\"display\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:11:\"platform_qr\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:14:\"platform_qr_qr\";a:4:{s:5:\"title\";s:9:\"二维码\";s:3:\"url\";s:36:\"./index.php?c=platform&a=qr&do=list&\";s:15:\"permission_name\";s:14:\"platform_qr_qr\";s:6:\"active\";s:4:\"list\";}s:22:\"platform_qr_statistics\";a:4:{s:5:\"title\";s:21:\"二维码扫描统计\";s:3:\"url\";s:39:\"./index.php?c=platform&a=qr&do=display&\";s:15:\"permission_name\";s:22:\"platform_qr_statistics\";s:6:\"active\";s:7:\"display\";}}}s:17:\"platform_masstask\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:17:\"platform_masstask\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:22:\"platform_masstask_post\";a:4:{s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:38:\"./index.php?c=platform&a=mass&do=post&\";s:15:\"permission_name\";s:22:\"platform_masstask_post\";s:6:\"active\";s:4:\"post\";}s:22:\"platform_masstask_send\";a:4:{s:5:\"title\";s:12:\"群发记录\";s:3:\"url\";s:38:\"./index.php?c=platform&a=mass&do=send&\";s:15:\"permission_name\";s:22:\"platform_masstask_send\";s:6:\"active\";s:4:\"send\";}}}s:17:\"platform_material\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:5:{s:22:\"platform_material_news\";a:4:{s:5:\"title\";s:6:\"图文\";s:3:\"url\";s:43:\"./index.php?c=platform&a=material&type=news\";s:15:\"permission_name\";s:22:\"platform_material_news\";s:6:\"active\";s:4:\"news\";}s:23:\"platform_material_image\";a:4:{s:5:\"title\";s:6:\"图片\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=image\";s:15:\"permission_name\";s:23:\"platform_material_image\";s:6:\"active\";s:5:\"image\";}s:23:\"platform_material_voice\";a:4:{s:5:\"title\";s:6:\"语音\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=voice\";s:15:\"permission_name\";s:23:\"platform_material_voice\";s:6:\"active\";s:5:\"voice\";}s:23:\"platform_material_video\";a:5:{s:5:\"title\";s:6:\"视频\";s:3:\"url\";s:44:\"./index.php?c=platform&a=material&type=video\";s:15:\"permission_name\";s:23:\"platform_material_video\";s:6:\"active\";s:5:\"video\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:24:\"platform_material_delete\";a:3:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";s:10:\"is_display\";i:0;}}}s:13:\"platform_site\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:27:\"./index.php?c=site&a=multi&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:4:{s:19:\"platform_site_multi\";a:4:{s:5:\"title\";s:9:\"微官网\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:19:\"platform_site_multi\";s:6:\"active\";s:5:\"multi\";}s:19:\"platform_site_style\";a:4:{s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:39:\"./index.php?c=site&a=style&do=template&\";s:15:\"permission_name\";s:19:\"platform_site_style\";s:6:\"active\";s:5:\"style\";}s:21:\"platform_site_article\";a:4:{s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:40:\"./index.php?c=site&a=article&do=display&\";s:15:\"permission_name\";s:21:\"platform_site_article\";s:6:\"active\";s:7:\"article\";}s:22:\"platform_site_category\";a:4:{s:5:\"title\";s:18:\"文章分类管理\";s:3:\"url\";s:41:\"./index.php?c=site&a=category&do=display&\";s:15:\"permission_name\";s:22:\"platform_site_category\";s:6:\"active\";s:8:\"category\";}}}}s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:2:\"mc\";a:3:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:3:{s:7:\"mc_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:15:\"mc_fans_display\";a:4:{s:5:\"title\";s:12:\"全部粉丝\";s:3:\"url\";s:35:\"./index.php?c=mc&a=fans&do=display&\";s:15:\"permission_name\";s:15:\"mc_fans_display\";s:6:\"active\";s:7:\"display\";}s:21:\"mc_fans_fans_sync_set\";a:4:{s:5:\"title\";s:18:\"粉丝同步设置\";s:3:\"url\";s:41:\"./index.php?c=mc&a=fans&do=fans_sync_set&\";s:15:\"permission_name\";s:21:\"mc_fans_fans_sync_set\";s:6:\"active\";s:13:\"fans_sync_set\";}}}s:9:\"mc_member\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{s:17:\"mc_member_diaplsy\";a:4:{s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:37:\"./index.php?c=mc&a=member&do=display&\";s:15:\"permission_name\";s:17:\"mc_member_diaplsy\";s:6:\"active\";s:7:\"display\";}s:15:\"mc_member_group\";a:4:{s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:36:\"./index.php?c=mc&a=group&do=display&\";s:15:\"permission_name\";s:15:\"mc_member_group\";s:6:\"active\";s:7:\"display\";}s:12:\"mc_member_uc\";a:5:{s:5:\"title\";s:12:\"会员中心\";s:3:\"url\";s:34:\"./index.php?c=site&a=editor&do=uc&\";s:15:\"permission_name\";s:12:\"mc_member_uc\";s:6:\"active\";s:2:\"uc\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:19:\"mc_member_quickmenu\";a:5:{s:5:\"title\";s:12:\"快捷菜单\";s:3:\"url\";s:41:\"./index.php?c=site&a=editor&do=quickmenu&\";s:15:\"permission_name\";s:19:\"mc_member_quickmenu\";s:6:\"active\";s:9:\"quickmenu\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:25:\"mc_member_register_seting\";a:5:{s:5:\"title\";s:12:\"注册设置\";s:3:\"url\";s:46:\"./index.php?c=mc&a=member&do=register_setting&\";s:15:\"permission_name\";s:25:\"mc_member_register_seting\";s:6:\"active\";s:16:\"register_setting\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:24:\"mc_member_credit_setting\";a:4:{s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:44:\"./index.php?c=mc&a=member&do=credit_setting&\";s:15:\"permission_name\";s:24:\"mc_member_credit_setting\";s:6:\"active\";s:14:\"credit_setting\";}s:16:\"mc_member_fields\";a:4:{s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:34:\"./index.php?c=mc&a=fields&do=list&\";s:15:\"permission_name\";s:16:\"mc_member_fields\";s:6:\"active\";s:4:\"list\";}}}s:10:\"mc_message\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"留言管理\";s:3:\"url\";s:27:\"./index.php?c=mc&a=message&\";s:15:\"permission_name\";s:10:\"mc_message\";s:4:\"icon\";s:13:\"wi wi-message\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}}s:7:\"profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:15:\"profile_setting\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:5:{s:22:\"profile_setting_remote\";a:4:{s:5:\"title\";s:12:\"远程附件\";s:3:\"url\";s:42:\"./index.php?c=profile&a=remote&do=display&\";s:15:\"permission_name\";s:22:\"profile_setting_remote\";s:6:\"active\";s:7:\"display\";}s:24:\"profile_setting_passport\";a:5:{s:5:\"title\";s:12:\"借用权限\";s:3:\"url\";s:42:\"./index.php?c=profile&a=passport&do=oauth&\";s:15:\"permission_name\";s:24:\"profile_setting_passport\";s:6:\"active\";s:5:\"oauth\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:25:\"profile_setting_tplnotice\";a:5:{s:5:\"title\";s:18:\"微信通知设置\";s:3:\"url\";s:42:\"./index.php?c=profile&a=tplnotice&do=list&\";s:15:\"permission_name\";s:25:\"profile_setting_tplnotice\";s:6:\"active\";s:4:\"list\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:22:\"profile_setting_notify\";a:5:{s:5:\"title\";s:18:\"邮件通知参数\";s:3:\"url\";s:39:\"./index.php?c=profile&a=notify&do=mail&\";s:15:\"permission_name\";s:22:\"profile_setting_notify\";s:6:\"active\";s:4:\"mail\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}s:27:\"profile_setting_upload_file\";a:5:{s:5:\"title\";s:20:\"上传JS接口文件\";s:3:\"url\";s:46:\"./index.php?c=profile&a=common&do=upload_file&\";s:15:\"permission_name\";s:27:\"profile_setting_upload_file\";s:6:\"active\";s:11:\"upload_file\";s:10:\"is_display\";a:2:{i:0;i:1;i:1;i:3;}}}}s:15:\"profile_payment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:15:\"profile_payment\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:19:\"profile_payment_pay\";a:4:{s:5:\"title\";s:12:\"支付配置\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_payment_pay\";s:6:\"active\";s:7:\"payment\";}s:22:\"profile_payment_refund\";a:4:{s:5:\"title\";s:12:\"退款配置\";s:3:\"url\";s:42:\"./index.php?c=profile&a=refund&do=display&\";s:15:\"permission_name\";s:22:\"profile_payment_refund\";s:6:\"active\";s:6:\"refund\";}}}s:23:\"profile_app_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:2:{i:0;i:1;i:1;i:3;}s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"webapp_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:18:\"webapp_module_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"webapp_rewrite\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:5;}s:10:\"is_display\";i:0;s:5:\"title\";s:9:\"伪静态\";s:3:\"url\";s:31:\"./index.php?c=webapp&a=rewrite&\";s:15:\"permission_name\";s:14:\"webapp_rewrite\";s:4:\"icon\";s:13:\"wi wi-rewrite\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:3:{i:0;i:1;i:1;i:3;i:2;i:5;}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:11;}s:5:\"wxapp\";a:8:{s:5:\"title\";s:15:\"微信小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:9:\"dimension\";i:3;s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:5:{s:14:\"wxapp_entrance\";a:4:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;}s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:2:\"mc\";a:4:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:15:\"mc_wxapp_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:4:{s:17:\"mc_member_diaplsy\";a:4:{s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:37:\"./index.php?c=mc&a=member&do=display&\";s:15:\"permission_name\";s:17:\"mc_member_diaplsy\";s:6:\"active\";s:7:\"display\";}s:15:\"mc_member_group\";a:4:{s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:36:\"./index.php?c=mc&a=group&do=display&\";s:15:\"permission_name\";s:15:\"mc_member_group\";s:6:\"active\";s:7:\"display\";}s:24:\"mc_member_credit_setting\";a:4:{s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:44:\"./index.php?c=mc&a=member&do=credit_setting&\";s:15:\"permission_name\";s:24:\"mc_member_credit_setting\";s:6:\"active\";s:14:\"credit_setting\";}s:16:\"mc_member_fields\";a:4:{s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:34:\"./index.php?c=mc&a=fields&do=list&\";s:15:\"permission_name\";s:16:\"mc_member_fields\";s:6:\"active\";s:4:\"list\";}}}}s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;}s:13:\"wxapp_profile\";a:3:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:5:{s:33:\"wxapp_profile_module_link_uniacid\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:33:\"wxapp_profile_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"wxapp_profile_payment\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:21:\"wxapp_profile_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{s:17:\"wxapp_payment_pay\";a:4:{s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:41:\"./index.php?c=wxapp&a=payment&do=display&\";s:15:\"permission_name\";s:17:\"wxapp_payment_pay\";s:6:\"active\";s:7:\"payment\";}s:20:\"wxapp_payment_refund\";a:4:{s:5:\"title\";s:12:\"退款配置\";s:3:\"url\";s:40:\"./index.php?c=wxapp&a=refund&do=display&\";s:15:\"permission_name\";s:20:\"wxapp_payment_refund\";s:6:\"active\";s:6:\"refund\";}}}s:28:\"wxapp_profile_front_download\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"下载程序包\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:28:\"wxapp_profile_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_profile_domainset\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"域名设置\";s:3:\"url\";s:32:\"./index.php?c=wxapp&a=domainset&\";s:15:\"permission_name\";s:23:\"wxapp_profile_domainset\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:22:\"profile_setting_remote\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:31:\"./index.php?c=profile&a=remote&\";s:15:\"permission_name\";s:22:\"profile_setting_remote\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}}s:10:\"statistics\";a:4:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:15:\"statistics_fans\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"用户统计\";s:3:\"url\";s:33:\"./index.php?c=wxapp&a=statistics&\";s:15:\"permission_name\";s:21:\"statistics_fans_wxapp\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:18:\"permission_display\";a:7:{i:0;i:4;i:1;i:7;i:2;i:8;i:3;i:6;i:4;i:11;i:5;i:12;i:6;i:13;}s:10:\"is_display\";i:0;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:12;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:13;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}s:16:\"phoneapp_profile\";a:4:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:2:{s:28:\"profile_phoneapp_module_link\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";a:1:{i:0;i:6;}s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:28:\"profile_phoneapp_module_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";i:1;s:18:\"permission_display\";a:1:{i:0;i:6;}}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:14;}s:6:\"aliapp\";a:7:{s:5:\"title\";s:18:\"支付宝小程序\";s:4:\"icon\";s:12:\"wi wi-aliapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:15;}s:8:\"baiduapp\";a:7:{s:5:\"title\";s:15:\"百度小程序\";s:4:\"icon\";s:14:\"wi wi-baiduapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:16;}s:10:\"toutiaoapp\";a:7:{s:5:\"title\";s:21:\"字节跳动小程序\";s:4:\"icon\";s:16:\"wi wi-toutiaoapp\";s:3:\"url\";s:40:\"./index.php?c=miniapp&a=display&do=home&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";i:1;}}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:17;}s:9:\"appmarket\";a:9:{s:5:\"title\";s:6:\"市场\";s:4:\"icon\";s:14:\"wi wi-shichang\";s:3:\"url\";s:14:\"http://s.w7.cc\";s:7:\"section\";a:0:{}s:5:\"blank\";b:1;s:7:\"founder\";b:1;s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:18;}s:9:\"workorder\";a:9:{s:5:\"title\";s:6:\"工单\";s:4:\"icon\";s:13:\"wi wi-gongdan\";s:9:\"dimension\";i:2;s:3:\"url\";s:44:\"./index.php?c=system&a=workorder&do=display&\";s:7:\"section\";a:1:{s:9:\"workorder\";a:2:{s:5:\"title\";s:12:\"工单系统\";s:4:\"menu\";a:1:{s:16:\"system_workorder\";a:10:{s:9:\"is_system\";i:1;s:18:\"permission_display\";N;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"工单系统\";s:3:\"url\";s:44:\"./index.php?c=system&a=workorder&do=display&\";s:15:\"permission_name\";s:16:\"system_workorder\";s:4:\"icon\";s:17:\"wi wi-system-work\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:19;}s:4:\"help\";a:7:{s:5:\"title\";s:6:\"帮助\";s:4:\"icon\";s:13:\"wi wi-bangzhu\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:20;}s:11:\"custom_help\";a:7:{s:5:\"title\";s:12:\"本站帮助\";s:4:\"icon\";s:13:\"wi wi-bangzhu\";s:3:\"url\";s:39:\"./index.php?c=help&a=display&do=custom&\";s:7:\"section\";a:0:{}s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:12:\"displayorder\";i:21;}}'),('we7:unimodules:1','a:0:{}'),('we7:module_info:basic','a:37:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:58:\"http://119.29.118.84/addons/basic/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:basic:1','a:1:{s:6:\"module\";s:5:\"basic\";}'),('we7:module_info:news','a:37:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:57:\"http://119.29.118.84/addons/news/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:news:1','a:1:{s:6:\"module\";s:4:\"news\";}'),('we7:module_info:music','a:37:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:58:\"http://119.29.118.84/addons/music/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:music:1','a:1:{s:6:\"module\";s:5:\"music\";}'),('we7:module_info:userapi','a:37:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:60:\"http://119.29.118.84/addons/userapi/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:userapi:1','a:1:{s:6:\"module\";s:7:\"userapi\";}'),('we7:module_info:recharge','a:37:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:61:\"http://119.29.118.84/addons/recharge/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:recharge:1','a:1:{s:6:\"module\";s:8:\"recharge\";}'),('we7:module_info:images','a:37:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:59:\"http://119.29.118.84/addons/images/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:images:1','a:1:{s:6:\"module\";s:6:\"images\";}'),('we7:module_info:video','a:37:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:58:\"http://119.29.118.84/addons/video/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:video:1','a:1:{s:6:\"module\";s:5:\"video\";}'),('we7:module_info:voice','a:37:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:58:\"http://119.29.118.84/addons/voice/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:voice:1','a:1:{s:6:\"module\";s:5:\"voice\";}'),('we7:module_info:wxcard','a:37:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:59:\"http://119.29.118.84/addons/wxcard/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:wxcard:1','a:1:{s:6:\"module\";s:6:\"wxcard\";}'),('we7:module_info:custom','a:37:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:59:\"http://119.29.118.84/addons/custom/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:custom:1','a:1:{s:6:\"module\";s:6:\"custom\";}'),('we7:module_info:chats','a:37:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:16:\"application_type\";s:1:\"0\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:15:\"account_support\";s:1:\"2\";s:13:\"xzapp_support\";s:1:\"1\";s:14:\"aliapp_support\";s:1:\"1\";s:4:\"logo\";s:0:\"\";s:16:\"baiduapp_support\";s:1:\"1\";s:18:\"toutiaoapp_support\";s:1:\"1\";s:4:\"from\";s:0:\"\";s:12:\"cloud_record\";s:1:\"0\";s:8:\"sections\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:7:\"preview\";s:58:\"http://119.29.118.84/addons/chats/preview.jpg?v=1596680917\";s:11:\"main_module\";b:0;s:12:\"recycle_info\";a:0:{}}'),('we7:module_setting:chats:1','a:1:{s:6:\"module\";s:5:\"chats\";}'),('we7:module_setting:store:1','a:1:{s:6:\"module\";s:5:\"store\";}'),('we7:stat_todaylock:1','a:1:{s:6:\"expire\";i:1596688140;}'),('we7:uniaccount:','a:1:{s:11:\"encrypt_key\";N;}'),('we7:cloud_api:b7b5582b51850ff06927d4edcf1774bb','a:2:{s:6:\"expire\";i:1596681391;s:4:\"data\";a:7:{s:12:\"current_page\";i:1;s:4:\"data\";a:0:{}s:4:\"from\";N;s:9:\"last_page\";i:1;s:8:\"per_page\";i:10;s:2:\"to\";N;s:5:\"total\";i:0;}}'),('we7:cloud_api:63687fe9b6f00a2111e479738d40dfa8','a:2:{s:6:\"expire\";i:1596681392;s:4:\"data\";a:7:{s:12:\"current_page\";i:1;s:4:\"data\";a:0:{}s:4:\"from\";N;s:9:\"last_page\";i:1;s:8:\"per_page\";i:10;s:2:\"to\";N;s:5:\"total\";i:0;}}'),('we7:cloud_api:e501555a8acfc909645dd25f8b16eeb2','a:2:{s:6:\"expire\";i:1596681392;s:4:\"data\";a:2:{s:9:\"sms_count\";i:0;s:8:\"sms_sign\";a:0:{}}}'),('we7:cloud_api:d5ff320ea5848d58153e43f202f895e6','a:2:{s:6:\"expire\";i:1596681393;s:4:\"data\";a:12:{s:12:\"current_page\";i:1;s:4:\"data\";a:0:{}s:14:\"first_page_url\";s:8:\"/?page=1\";s:4:\"from\";N;s:9:\"last_page\";i:1;s:13:\"last_page_url\";s:8:\"/?page=1\";s:13:\"next_page_url\";N;s:4:\"path\";s:1:\"/\";s:8:\"per_page\";s:2:\"10\";s:13:\"prev_page_url\";N;s:2:\"to\";N;s:5:\"total\";i:0;}}'),('we7:cloud_api:37b3812466354507d2062a84fac2e35b','a:2:{s:6:\"expire\";i:1596681395;s:4:\"data\";a:1:{s:24:\"cloud_sms_count_remained\";i:0;}}'),('we7:system_check','a:3:{s:11:\"check_items\";a:6:{s:8:\"mbstring\";a:6:{s:7:\"operate\";s:20:\"system_check_php_ext\";s:11:\"description\";s:15:\"mbstring 扩展\";s:13:\"error_message\";s:12:\"不支持库\";s:8:\"solution\";s:22:\"安装 mbstring 扩展\";s:6:\"handle\";s:28:\"http://s.w7.cc/wo/problem/46\";s:12:\"check_result\";b:1;}s:6:\"mcrypt\";a:6:{s:7:\"operate\";s:20:\"system_check_php_ext\";s:11:\"description\";s:13:\"mcrypt 扩展\";s:13:\"error_message\";s:12:\"不支持库\";s:8:\"solution\";s:20:\"安装 mcrypt 扩展\";s:6:\"handle\";s:28:\"http://s.w7.cc/wo/problem/46\";s:12:\"check_result\";b:1;}s:7:\"openssl\";a:6:{s:7:\"operate\";s:20:\"system_check_php_ext\";s:11:\"description\";s:14:\"openssl 扩展\";s:13:\"error_message\";s:12:\"不支持库\";s:8:\"solution\";s:21:\"安装 openssl 扩展\";s:6:\"handle\";s:28:\"http://s.w7.cc/wo/problem/46\";s:12:\"check_result\";b:1;}s:15:\"system_template\";a:6:{s:7:\"operate\";s:21:\"system_check_template\";s:11:\"description\";s:18:\"是否系统皮肤\";s:13:\"error_message\";s:18:\"不是系统皮肤\";s:8:\"solution\";s:24:\"更换系统默认皮肤\";s:6:\"handle\";s:39:\"https://bbs.w7.cc/thread-33162-1-1.html\";s:12:\"check_result\";b:1;}s:18:\"max_allowed_packet\";a:6:{s:7:\"operate\";s:25:\"system_check_mysql_params\";s:11:\"description\";s:28:\"mysql max_allowed_packet 值\";s:13:\"error_message\";s:29:\"max_allowed_packet 小于 20M\";s:8:\"solution\";s:35:\"修改 mysql max_allowed_packet 值\";s:6:\"handle\";s:39:\"https://bbs.w7.cc/thread-33415-1-1.html\";s:12:\"check_result\";b:1;}s:29:\"always_populate_raw_post_data\";a:6:{s:7:\"operate\";s:30:\"system_check_php_raw_post_data\";s:11:\"description\";s:40:\"php always_populate_raw_post_data 配置\";s:13:\"error_message\";s:12:\"配置有误\";s:8:\"solution\";s:53:\"修改 php always_populate_raw_post_data 配置为 -1\";s:6:\"handle\";s:30:\"https://s.w7.cc/wo/problem/134\";s:12:\"check_result\";b:1;}}s:9:\"check_num\";i:6;s:15:\"check_wrong_num\";i:0;}');
/*!40000 ALTER TABLE `ims_core_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cron`
--

DROP TABLE IF EXISTS `ims_core_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cron`
--

LOCK TABLES `ims_core_cron` WRITE;
/*!40000 ALTER TABLE `ims_core_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cron_record`
--

DROP TABLE IF EXISTS `ims_core_cron_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cron_record`
--

LOCK TABLES `ims_core_cron_record` WRITE;
/*!40000 ALTER TABLE `ims_core_cron_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_job`
--

DROP TABLE IF EXISTS `ims_core_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_job`
--

LOCK TABLES `ims_core_job` WRITE;
/*!40000 ALTER TABLE `ims_core_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_menu`
--

DROP TABLE IF EXISTS `ims_core_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_menu`
--

LOCK TABLES `ims_core_menu` WRITE;
/*!40000 ALTER TABLE `ims_core_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_menu_shortcut`
--

DROP TABLE IF EXISTS `ims_core_menu_shortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_menu_shortcut` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `position` varchar(100) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_menu_shortcut`
--

LOCK TABLES `ims_core_menu_shortcut` WRITE;
/*!40000 ALTER TABLE `ims_core_menu_shortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_menu_shortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_paylog`
--

DROP TABLE IF EXISTS `ims_core_paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  `is_wish` tinyint(1) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_paylog`
--

LOCK TABLES `ims_core_paylog` WRITE;
/*!40000 ALTER TABLE `ims_core_paylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_paylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_performance`
--

DROP TABLE IF EXISTS `ims_core_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_performance`
--

LOCK TABLES `ims_core_performance` WRITE;
/*!40000 ALTER TABLE `ims_core_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_queue`
--

DROP TABLE IF EXISTS `ims_core_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_queue`
--

LOCK TABLES `ims_core_queue` WRITE;
/*!40000 ALTER TABLE `ims_core_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_refundlog`
--

DROP TABLE IF EXISTS `ims_core_refundlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  `is_wish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_refundlog`
--

LOCK TABLES `ims_core_refundlog` WRITE;
/*!40000 ALTER TABLE `ims_core_refundlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_refundlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_resource`
--

DROP TABLE IF EXISTS `ims_core_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_resource`
--

LOCK TABLES `ims_core_resource` WRITE;
/*!40000 ALTER TABLE `ims_core_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_sendsms_log`
--

DROP TABLE IF EXISTS `ims_core_sendsms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_sendsms_log`
--

LOCK TABLES `ims_core_sendsms_log` WRITE;
/*!40000 ALTER TABLE `ims_core_sendsms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_sendsms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_sessions`
--

DROP TABLE IF EXISTS `ims_core_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(2000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_sessions`
--

LOCK TABLES `ims_core_sessions` WRITE;
/*!40000 ALTER TABLE `ims_core_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_settings`
--

DROP TABLE IF EXISTS `ims_core_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_settings`
--

LOCK TABLES `ims_core_settings` WRITE;
/*!40000 ALTER TABLE `ims_core_settings` DISABLE KEYS */;
INSERT INTO `ims_core_settings` VALUES ('copyright','a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}'),('authmode','i:1;'),('close','a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}'),('register','a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}'),('site','a:8:{s:3:\"key\";i:233507;s:5:\"token\";s:32:\"283650b83c4b3cd04733d653c7569eaa\";s:3:\"url\";s:20:\"http://119.29.118.84\";s:7:\"version\";s:5:\"2.6.4\";s:7:\"release\";s:12:\"202007230001\";s:4:\"name\";s:29:\"http://119.29.118.84的站点\";s:6:\"family\";s:1:\"v\";s:15:\"profile_perfect\";b:0;}'),('cloudip','a:2:{s:2:\"ip\";s:14:\"182.254.52.213\";s:6:\"expire\";i:1596684649;}'),('platform','a:5:{s:5:\"token\";s:32:\"vAac3an1qXMvDqPqYXaaPpz5g3Dz1fYN\";s:14:\"encodingaeskey\";s:43:\"upzN3ONpPFPNMD7PuX1kfTCtPZynFuJYtuJtuFUcho7\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}');
/*!40000 ALTER TABLE `ims_core_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_coupon_location`
--

DROP TABLE IF EXISTS `ims_coupon_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_coupon_location`
--

LOCK TABLES `ims_coupon_location` WRITE;
/*!40000 ALTER TABLE `ims_coupon_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_coupon_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_cover_reply`
--

DROP TABLE IF EXISTS `ims_cover_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_cover_reply`
--

LOCK TABLES `ims_cover_reply` WRITE;
/*!40000 ALTER TABLE `ims_cover_reply` DISABLE KEYS */;
INSERT INTO `ims_cover_reply` VALUES (1,1,0,7,'mc','','进入个人中心','','','./index.php?c=mc&a=home&i=1'),(2,1,1,8,'site','','进入首页','','','./index.php?c=home&i=1&t=1');
/*!40000 ALTER TABLE `ims_cover_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_custom_reply`
--

DROP TABLE IF EXISTS `ims_custom_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_custom_reply`
--

LOCK TABLES `ims_custom_reply` WRITE;
/*!40000 ALTER TABLE `ims_custom_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_custom_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_images_reply`
--

DROP TABLE IF EXISTS `ims_images_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_images_reply`
--

LOCK TABLES `ims_images_reply` WRITE;
/*!40000 ALTER TABLE `ims_images_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_images_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_cash_record`
--

DROP TABLE IF EXISTS `ims_mc_cash_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_cash_record`
--

LOCK TABLES `ims_mc_cash_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_cash_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_cash_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_chats_record`
--

DROP TABLE IF EXISTS `ims_mc_chats_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_chats_record`
--

LOCK TABLES `ims_mc_chats_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_chats_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_chats_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_credits_recharge`
--

DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_credits_recharge`
--

LOCK TABLES `ims_mc_credits_recharge` WRITE;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_credits_record`
--

DROP TABLE IF EXISTS `ims_mc_credits_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_credits_record`
--

LOCK TABLES `ims_mc_credits_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_credits_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_groups`
--

DROP TABLE IF EXISTS `ims_mc_fans_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_groups`
--

LOCK TABLES `ims_mc_fans_groups` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_tag`
--

DROP TABLE IF EXISTS `ims_mc_fans_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `fanid` int(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `subscribe` int(11) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `headimgurl` varchar(150) DEFAULT NULL,
  `subscribe_time` int(11) NOT NULL,
  `unionid` varchar(100) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `groupid` varchar(100) DEFAULT NULL,
  `tagid_list` varchar(250) DEFAULT NULL,
  `subscribe_scene` varchar(100) DEFAULT NULL,
  `qr_scene_str` varchar(250) DEFAULT NULL,
  `qr_scene` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fanid` (`fanid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_tag`
--

LOCK TABLES `ims_mc_fans_tag` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_tag_mapping`
--

DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_tag_mapping`
--

LOCK TABLES `ims_mc_fans_tag_mapping` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_groups`
--

DROP TABLE IF EXISTS `ims_mc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_groups`
--

LOCK TABLES `ims_mc_groups` WRITE;
/*!40000 ALTER TABLE `ims_mc_groups` DISABLE KEYS */;
INSERT INTO `ims_mc_groups` VALUES (1,1,'默认会员组',0,1);
/*!40000 ALTER TABLE `ims_mc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_handsel`
--

DROP TABLE IF EXISTS `ims_mc_handsel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_handsel`
--

LOCK TABLES `ims_mc_handsel` WRITE;
/*!40000 ALTER TABLE `ims_mc_handsel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_handsel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mapping_fans`
--

DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(60) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  `user_from` tinyint(1) NOT NULL,
  PRIMARY KEY (`fanid`),
  UNIQUE KEY `openid_2` (`openid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mapping_fans`
--

LOCK TABLES `ims_mc_mapping_fans` WRITE;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mass_record`
--

DROP TABLE IF EXISTS `ims_mc_mass_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `msg_id` varchar(50) NOT NULL,
  `msg_data_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mass_record`
--

LOCK TABLES `ims_mc_mass_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_mass_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mass_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_address`
--

DROP TABLE IF EXISTS `ims_mc_member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_address`
--

LOCK TABLES `ims_mc_member_address` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_fields`
--

DROP TABLE IF EXISTS `ims_mc_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_fields`
--

LOCK TABLES `ims_mc_member_fields` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_property`
--

DROP TABLE IF EXISTS `ims_mc_member_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_property`
--

LOCK TABLES `ims_mc_member_property` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_members`
--

DROP TABLE IF EXISTS `ims_mc_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `pay_password` varchar(30) NOT NULL,
  `user_from` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_members`
--

LOCK TABLES `ims_mc_members` WRITE;
/*!40000 ALTER TABLE `ims_mc_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_oauth_fans`
--

DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_oauth_fans`
--

LOCK TABLES `ims_mc_oauth_fans` WRITE;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_menu_event`
--

DROP TABLE IF EXISTS `ims_menu_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_menu_event`
--

LOCK TABLES `ims_menu_event` WRITE;
/*!40000 ALTER TABLE `ims_menu_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_menu_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_message_notice_log`
--

DROP TABLE IF EXISTS `ims_message_notice_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_message_notice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_message_notice_log`
--

LOCK TABLES `ims_message_notice_log` WRITE;
/*!40000 ALTER TABLE `ims_message_notice_log` DISABLE KEYS */;
INSERT INTO `ims_message_notice_log` VALUES (1,'我们鼓励开发者发布分佣型应用，发展分享经济，让微擎生态圈更加繁荣稳定',1,0,'180710',11,NULL,1493103126,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=23611'),(2,'微擎云服务更新提速公告，更新出错的用户请看这里【2017年5月11日】',1,0,'168132',11,NULL,1494440044,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=23891'),(3,'微擎0.8,1.0系统维护说明',1,0,'168166',11,NULL,1494493155,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=23909'),(4,'2017微擎团队端午节放假通知',1,0,'168602',11,NULL,1495697604,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=24100'),(5,'关于打了阿里云的补丁造成微擎系统不能更新的解释说明',1,0,'169098',11,NULL,1497353034,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=24386'),(6,'微擎1.4.1更新（修复店员工作台问题）',1,0,'169140',11,NULL,1497431213,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=24403'),(7,'微擎分销商入驻计划（第二批招商开始）',1,0,'170046',11,NULL,1499939625,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=24851'),(8,'微擎1.5.3更新（增加副创始人权限，公众号流量统计，上传改版等）',1,0,'170747',10,NULL,1502261279,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25185'),(9,'微擎1.5.4更新（添加帮助系统）',1,0,'170970',10,NULL,1503026731,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25328'),(10,'微擎用户以及开发者请注意，近期会有两项新调整',1,0,'171299',11,NULL,1504165132,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25728'),(11,'调查一下还有多少站点没有开启https',1,0,'171322',11,NULL,1504178646,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25780'),(12,'免费配置https服务活动进行中',1,0,'171387',11,NULL,1504231683,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25786'),(13,'神器！微擎乾坤盾上线，能有效应对各类DDOS攻击、机器恶意刷票',1,0,'171474',11,NULL,1504596774,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25835'),(14,'通知！为提高服务质量，微擎客服体系进一步规范，微擎用户必看！',1,0,'171515',11,NULL,1504677690,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25854'),(15,'微擎1.5.5更新（商城功能+重大优化）',1,0,'171559',10,NULL,1504767738,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25872'),(16,'更新至微擎1.5.5打开空白的解决方案【2017年9月7日】',1,0,'171585',11,NULL,1504789521,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25881'),(17,'微擎1.5.6更新（小程序，公众号个数，应用权限组购买+公众号访问量限制和购买）',1,0,'171745',10,NULL,1505295757,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=25986'),(18,'微擎1.5.7更新（小程序可以直接上传微信，商城价格可以设置年月日，增加微信支付等）',1,0,'171878',10,NULL,1505703087,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=26038'),(19,'微擎1.5.9更新（增加工单系统）',1,0,'172615',10,NULL,1508393659,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=26366'),(20,'微擎1.6.1更新',1,0,'172904',10,NULL,1509417959,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=26496'),(21,'微擎1.6.2更新',1,0,'173088',10,NULL,1510041312,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=26576'),(22,'微擎1.6.3更新（公众号可以进行域名绑定，支持微信，QQ登录）',1,0,'173282',10,NULL,1510717425,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=26650'),(23,'微擎1.6.4更新',1,0,'173656',10,NULL,1512024100,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=26793'),(24,'微擎1.6.5更新（公众号应用直接打包成小程序，增加PC应用，后台新皮肤）',1,0,'174246',10,NULL,1514185647,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=26964'),(25,'微擎1.6.6更新（可以自定义帮助系统）',1,0,'174552',10,NULL,1515119714,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=27018'),(26,'微擎1.6.7更新（公众号应用打包成小程序可以支付了）',1,0,'174709',10,NULL,1515650324,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=27088'),(27,'微擎1.6.9更新（小程序公众号PC可数据同步）',1,0,'175144',10,NULL,1517208850,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=28833'),(28,'微擎小二投诉专员上线啦！',1,0,'175166',11,NULL,1517215198,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=28836'),(29,'微擎1.7.0更新（非授权域名可以接收短信）',1,0,'175275',10,NULL,1517554773,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=28880'),(30,'微擎团队2018年春节放假通知',1,0,'175296',11,NULL,1517558795,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=28882'),(31,'微擎2017年优秀开发者名单公布',1,0,'175453',11,NULL,1518075815,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=28927'),(32,'微擎云服务将推出用户信用机制，存在恶意行为的用户将无法充值、购买',1,0,'176084',11,NULL,1520409032,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=29037'),(33,'微擎1.7.2更新（20多处新功能及优化）',1,0,'176424',10,NULL,1521614335,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=29284'),(34,'年费增值服务用户和大客户看一下',1,0,'177090',11,NULL,1524038301,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=30227'),(35,'微擎1.7.3更新(入口优化)',1,0,'177284',10,NULL,1524709253,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=30302'),(36,'微擎小程序开发者大赛开始啦！',1,0,'177496',11,NULL,1525398131,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=30401'),(37,'微擎1.7.4更新(熊掌号)',1,0,'178451',10,NULL,1528869548,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=31328'),(38,'微擎1.7.7更新(PC可域名绑定伪静态，小程序数据互通等)',1,0,'179299',10,NULL,1531895407,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=31589'),(39,'微擎1.7.9更新(熊掌号全面完善，商城可根据不同用户设置价格) ',1,0,'179667',10,NULL,1533178273,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=31696'),(40,'【太原微擎科技】招聘前端开发工程师（VUE），6-10K',1,0,'180426',11,NULL,1535621418,0,'http://bbs.we7.cc/forum.php?mod=viewthread&tid=32436');
/*!40000 ALTER TABLE `ims_message_notice_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mobilenumber`
--

DROP TABLE IF EXISTS `ims_mobilenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mobilenumber`
--

LOCK TABLES `ims_mobilenumber` WRITE;
/*!40000 ALTER TABLE `ims_mobilenumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mobilenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules`
--

DROP TABLE IF EXISTS `ims_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `application_type` tinyint(1) unsigned NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `baiduapp_support` tinyint(1) NOT NULL,
  `toutiaoapp_support` tinyint(1) NOT NULL,
  `from` varchar(10) NOT NULL,
  `cloud_record` tinyint(1) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules`
--

LOCK TABLES `ims_modules` WRITE;
/*!40000 ALTER TABLE `ims_modules` DISABLE KEYS */;
INSERT INTO `ims_modules` VALUES (1,'basic',0,'system','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(2,'news',0,'system','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(3,'music',0,'system','基本音乐回复','1.0','提供语音、音乐等音频类回复','在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(4,'userapi',0,'system','自定义接口回复','1.1','更方便的第三方接口设置','自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(5,'recharge',0,'system','会员中心充值模块','1.0','提供会员充值功能','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(6,'custom',0,'system','多客服转接','1.0.0','用来接入腾讯的多客服系统','','WeEngine Team','http://bbs.we7.cc',0,'a:0:{}','a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(7,'images',0,'system','基本图片回复','1.0','提供图片回复','在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(8,'video',0,'system','基本视频回复','1.0','提供图片回复','在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(9,'voice',0,'system','基本语音回复','1.0','提供语音回复','在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(10,'chats',0,'system','发送客服消息','1.0','公众号可以在粉丝最后发送消息的48小时内无限制发送消息','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(11,'wxcard',0,'system','微信卡券回复','1.0','微信卡券回复','微信卡券回复','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0),(12,'store',0,'business','站内商城','1.0','站内商城','站内商城','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,1,1,1,1,2,1,1,'',1,1,'',0,0);
/*!40000 ALTER TABLE `ims_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_bindings`
--

DROP TABLE IF EXISTS `ims_modules_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  `multilevel` tinyint(1) NOT NULL,
  `parent` varchar(50) NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_bindings`
--

LOCK TABLES `ims_modules_bindings` WRITE;
/*!40000 ALTER TABLE `ims_modules_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_cloud`
--

DROP TABLE IF EXISTS `ims_modules_cloud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_cloud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `application_type` tinyint(1) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `install_status` tinyint(4) NOT NULL,
  `account_support` tinyint(4) NOT NULL,
  `wxapp_support` tinyint(4) NOT NULL,
  `webapp_support` tinyint(4) NOT NULL,
  `phoneapp_support` tinyint(4) NOT NULL,
  `welcome_support` tinyint(4) NOT NULL,
  `main_module_name` varchar(50) NOT NULL,
  `main_module_logo` varchar(100) NOT NULL,
  `has_new_version` tinyint(1) NOT NULL,
  `has_new_branch` tinyint(1) NOT NULL,
  `is_ban` tinyint(4) NOT NULL,
  `lastupdatetime` int(11) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `cloud_id` int(11) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  `baiduapp_support` tinyint(1) NOT NULL,
  `toutiaoapp_support` tinyint(1) NOT NULL,
  `buytime` int(10) NOT NULL,
  `module_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `lastupdatetime` (`lastupdatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_cloud`
--

LOCK TABLES `ims_modules_cloud` WRITE;
/*!40000 ALTER TABLE `ims_modules_cloud` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_cloud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_ignore`
--

DROP TABLE IF EXISTS `ims_modules_ignore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_ignore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_ignore`
--

LOCK TABLES `ims_modules_ignore` WRITE;
/*!40000 ALTER TABLE `ims_modules_ignore` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_ignore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_plugin`
--

DROP TABLE IF EXISTS `ims_modules_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_plugin`
--

LOCK TABLES `ims_modules_plugin` WRITE;
/*!40000 ALTER TABLE `ims_modules_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_plugin_rank`
--

DROP TABLE IF EXISTS `ims_modules_plugin_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_plugin_rank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  `plugin_name` varchar(200) NOT NULL,
  `main_module_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_plugin_rank`
--

LOCK TABLES `ims_modules_plugin_rank` WRITE;
/*!40000 ALTER TABLE `ims_modules_plugin_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_plugin_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_rank`
--

DROP TABLE IF EXISTS `ims_modules_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_rank`
--

LOCK TABLES `ims_modules_rank` WRITE;
/*!40000 ALTER TABLE `ims_modules_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_recycle`
--

DROP TABLE IF EXISTS `ims_modules_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `account_support` tinyint(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `welcome_support` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  `xzapp_support` tinyint(1) NOT NULL,
  `aliapp_support` tinyint(1) NOT NULL,
  `baiduapp_support` tinyint(1) NOT NULL,
  `toutiaoapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_recycle`
--

LOCK TABLES `ims_modules_recycle` WRITE;
/*!40000 ALTER TABLE `ims_modules_recycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_music_reply`
--

DROP TABLE IF EXISTS `ims_music_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_music_reply`
--

LOCK TABLES `ims_music_reply` WRITE;
/*!40000 ALTER TABLE `ims_music_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_music_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_news_reply`
--

DROP TABLE IF EXISTS `ims_news_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_news_reply`
--

LOCK TABLES `ims_news_reply` WRITE;
/*!40000 ALTER TABLE `ims_news_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_news_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_phoneapp_versions`
--

DROP TABLE IF EXISTS `ims_phoneapp_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_phoneapp_versions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_phoneapp_versions`
--

LOCK TABLES `ims_phoneapp_versions` WRITE;
/*!40000 ALTER TABLE `ims_phoneapp_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_phoneapp_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_profile_fields`
--

DROP TABLE IF EXISTS `ims_profile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_profile_fields`
--

LOCK TABLES `ims_profile_fields` WRITE;
/*!40000 ALTER TABLE `ims_profile_fields` DISABLE KEYS */;
INSERT INTO `ims_profile_fields` VALUES (1,'realname',1,'真实姓名','',0,1,1,1,0),(2,'nickname',1,'昵称','',1,1,0,1,0),(3,'avatar',1,'头像','',1,0,0,0,0),(4,'qq',1,'QQ号','',0,0,0,1,0),(5,'mobile',1,'手机号码','',0,0,0,0,0),(6,'vip',1,'VIP级别','',0,0,0,0,0),(7,'gender',1,'性别','',0,0,0,0,0),(8,'birthyear',1,'出生生日','',0,0,0,0,0),(9,'constellation',1,'星座','',0,0,0,0,0),(10,'zodiac',1,'生肖','',0,0,0,0,0),(11,'telephone',1,'固定电话','',0,0,0,0,0),(12,'idcard',1,'证件号码','',0,0,0,0,0),(13,'studentid',1,'学号','',0,0,0,0,0),(14,'grade',1,'班级','',0,0,0,0,0),(15,'address',1,'邮寄地址','',0,0,0,0,0),(16,'zipcode',1,'邮编','',0,0,0,0,0),(17,'nationality',1,'国籍','',0,0,0,0,0),(18,'resideprovince',1,'居住地址','',0,0,0,0,0),(19,'graduateschool',1,'毕业学校','',0,0,0,0,0),(20,'company',1,'公司','',0,0,0,0,0),(21,'education',1,'学历','',0,0,0,0,0),(22,'occupation',1,'职业','',0,0,0,0,0),(23,'position',1,'职位','',0,0,0,0,0),(24,'revenue',1,'年收入','',0,0,0,0,0),(25,'affectivestatus',1,'情感状态','',0,0,0,0,0),(26,'lookingfor',1,' 交友目的','',0,0,0,0,0),(27,'bloodtype',1,'血型','',0,0,0,0,0),(28,'height',1,'身高','',0,0,0,0,0),(29,'weight',1,'体重','',0,0,0,0,0),(30,'alipay',1,'支付宝帐号','',0,0,0,0,0),(31,'msn',1,'MSN','',0,0,0,0,0),(32,'email',1,'电子邮箱','',0,0,0,0,0),(33,'taobao',1,'阿里旺旺','',0,0,0,0,0),(34,'site',1,'主页','',0,0,0,0,0),(35,'bio',1,'自我介绍','',0,0,0,0,0),(36,'interest',1,'兴趣爱好','',0,0,0,0,0);
/*!40000 ALTER TABLE `ims_profile_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_qrcode`
--

DROP TABLE IF EXISTS `ims_qrcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_qrcode`
--

LOCK TABLES `ims_qrcode` WRITE;
/*!40000 ALTER TABLE `ims_qrcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_qrcode_stat`
--

DROP TABLE IF EXISTS `ims_qrcode_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_qrcode_stat`
--

LOCK TABLES `ims_qrcode_stat` WRITE;
/*!40000 ALTER TABLE `ims_qrcode_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_rule`
--

DROP TABLE IF EXISTS `ims_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_rule`
--

LOCK TABLES `ims_rule` WRITE;
/*!40000 ALTER TABLE `ims_rule` DISABLE KEYS */;
INSERT INTO `ims_rule` VALUES (1,0,'城市天气','userapi',255,1,''),(2,0,'百度百科','userapi',255,1,''),(3,0,'即时翻译','userapi',255,1,''),(4,0,'今日老黄历','userapi',255,1,''),(5,0,'看新闻','userapi',255,1,''),(6,0,'快递查询','userapi',255,1,''),(7,1,'个人中心入口设置','cover',0,1,''),(8,1,'微擎团队入口设置','cover',0,1,'');
/*!40000 ALTER TABLE `ims_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_rule_keyword`
--

DROP TABLE IF EXISTS `ims_rule_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_rule_keyword`
--

LOCK TABLES `ims_rule_keyword` WRITE;
/*!40000 ALTER TABLE `ims_rule_keyword` DISABLE KEYS */;
INSERT INTO `ims_rule_keyword` VALUES (1,1,0,'userapi','^.+天气$',3,255,1),(2,2,0,'userapi','^百科.+$',3,255,1),(3,2,0,'userapi','^定义.+$',3,255,1),(4,3,0,'userapi','^@.+$',3,255,1),(5,4,0,'userapi','日历',1,255,1),(6,4,0,'userapi','万年历',1,255,1),(7,4,0,'userapi','黄历',1,255,1),(8,4,0,'userapi','几号',1,255,1),(9,5,0,'userapi','新闻',1,255,1),(10,6,0,'userapi','^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$',3,255,1),(11,7,1,'cover','个人中心',1,0,1),(12,8,1,'cover','首页',1,0,1);
/*!40000 ALTER TABLE `ims_rule_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_article`
--

DROP TABLE IF EXISTS `ims_site_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_article`
--

LOCK TABLES `ims_site_article` WRITE;
/*!40000 ALTER TABLE `ims_site_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_article_comment`
--

DROP TABLE IF EXISTS `ims_site_article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_article_comment`
--

LOCK TABLES `ims_site_article_comment` WRITE;
/*!40000 ALTER TABLE `ims_site_article_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_category`
--

DROP TABLE IF EXISTS `ims_site_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_category`
--

LOCK TABLES `ims_site_category` WRITE;
/*!40000 ALTER TABLE `ims_site_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_multi`
--

DROP TABLE IF EXISTS `ims_site_multi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_multi`
--

LOCK TABLES `ims_site_multi` WRITE;
/*!40000 ALTER TABLE `ims_site_multi` DISABLE KEYS */;
INSERT INTO `ims_site_multi` VALUES (1,1,'微擎团队',1,'',1,'');
/*!40000 ALTER TABLE `ims_site_multi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_nav`
--

DROP TABLE IF EXISTS `ims_site_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_nav`
--

LOCK TABLES `ims_site_nav` WRITE;
/*!40000 ALTER TABLE `ims_site_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_page`
--

DROP TABLE IF EXISTS `ims_site_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_page`
--

LOCK TABLES `ims_site_page` WRITE;
/*!40000 ALTER TABLE `ims_site_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_slide`
--

DROP TABLE IF EXISTS `ims_site_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_slide`
--

LOCK TABLES `ims_site_slide` WRITE;
/*!40000 ALTER TABLE `ims_site_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_cash_log`
--

DROP TABLE IF EXISTS `ims_site_store_cash_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_cash_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `founder_uid` int(10) NOT NULL,
  `number` char(30) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_cash_log`
--

LOCK TABLES `ims_site_store_cash_log` WRITE;
/*!40000 ALTER TABLE `ims_site_store_cash_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_cash_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_cash_order`
--

DROP TABLE IF EXISTS `ims_site_store_cash_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_cash_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` char(30) NOT NULL,
  `founder_uid` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `goods_id` int(10) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  `cash_log_id` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_cash_order`
--

LOCK TABLES `ims_site_store_cash_order` WRITE;
/*!40000 ALTER TABLE `ims_site_store_cash_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_cash_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_create_account`
--

DROP TABLE IF EXISTS `ims_site_store_create_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_create_account`
--

LOCK TABLES `ims_site_store_create_account` WRITE;
/*!40000 ALTER TABLE `ims_site_store_create_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_create_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_goods`
--

DROP TABLE IF EXISTS `ims_site_store_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  `user_group_price` varchar(1000) NOT NULL,
  `user_group` int(10) NOT NULL,
  `account_group` int(10) NOT NULL,
  `is_wish` tinyint(1) NOT NULL,
  `logo` varchar(300) NOT NULL,
  `platform_num` int(10) NOT NULL,
  `aliapp_num` int(10) NOT NULL,
  `baiduapp_num` int(10) NOT NULL,
  `phoneapp_num` int(10) NOT NULL,
  `toutiaoapp_num` int(10) NOT NULL,
  `webapp_num` int(10) NOT NULL,
  `xzapp_num` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_goods`
--

LOCK TABLES `ims_site_store_goods` WRITE;
/*!40000 ALTER TABLE `ims_site_store_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_goods_cloud`
--

DROP TABLE IF EXISTS `ims_site_store_goods_cloud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_goods_cloud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cloud_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `logo` varchar(300) NOT NULL,
  `wish_branch` int(10) NOT NULL,
  `is_edited` tinyint(1) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `branchs` varchar(6000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_goods_cloud`
--

LOCK TABLES `ims_site_store_goods_cloud` WRITE;
/*!40000 ALTER TABLE `ims_site_store_goods_cloud` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_goods_cloud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_order`
--

DROP TABLE IF EXISTS `ims_site_store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  `is_wish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_order`
--

LOCK TABLES `ims_site_store_order` WRITE;
/*!40000 ALTER TABLE `ims_site_store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_styles`
--

DROP TABLE IF EXISTS `ims_site_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_styles`
--

LOCK TABLES `ims_site_styles` WRITE;
/*!40000 ALTER TABLE `ims_site_styles` DISABLE KEYS */;
INSERT INTO `ims_site_styles` VALUES (1,1,1,'微站默认模板_gC5C');
/*!40000 ALTER TABLE `ims_site_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_styles_vars`
--

DROP TABLE IF EXISTS `ims_site_styles_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_styles_vars`
--

LOCK TABLES `ims_site_styles_vars` WRITE;
/*!40000 ALTER TABLE `ims_site_styles_vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_styles_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_templates`
--

DROP TABLE IF EXISTS `ims_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_templates`
--

LOCK TABLES `ims_site_templates` WRITE;
/*!40000 ALTER TABLE `ims_site_templates` DISABLE KEYS */;
INSERT INTO `ims_site_templates` VALUES (1,'default','微站默认模板','','由微擎提供默认微站模板套系','微擎团队','http://we7.cc','1',0);
/*!40000 ALTER TABLE `ims_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_fans`
--

DROP TABLE IF EXISTS `ims_stat_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_fans`
--

LOCK TABLES `ims_stat_fans` WRITE;
/*!40000 ALTER TABLE `ims_stat_fans` DISABLE KEYS */;
INSERT INTO `ims_stat_fans` VALUES (1,1,0,0,0,'20200805'),(2,1,0,0,0,'20200804'),(3,1,0,0,0,'20200803'),(4,1,0,0,0,'20200802'),(5,1,0,0,0,'20200801'),(6,1,0,0,0,'20200731'),(7,1,0,0,0,'20200730');
/*!40000 ALTER TABLE `ims_stat_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_keyword`
--

DROP TABLE IF EXISTS `ims_stat_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_keyword`
--

LOCK TABLES `ims_stat_keyword` WRITE;
/*!40000 ALTER TABLE `ims_stat_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_msg_history`
--

DROP TABLE IF EXISTS `ims_stat_msg_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_msg_history`
--

LOCK TABLES `ims_stat_msg_history` WRITE;
/*!40000 ALTER TABLE `ims_stat_msg_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_msg_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_rule`
--

DROP TABLE IF EXISTS `ims_stat_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_rule`
--

LOCK TABLES `ims_stat_rule` WRITE;
/*!40000 ALTER TABLE `ims_stat_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_visit`
--

DROP TABLE IF EXISTS `ims_stat_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `ip_count` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_visit`
--

LOCK TABLES `ims_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_stat_visit` DISABLE KEYS */;
INSERT INTO `ims_stat_visit` VALUES (1,0,'',6,20200806,'web',1),(2,1,'we7_account',2,20200806,'web',0),(3,1,'',103,20200806,'web',1);
/*!40000 ALTER TABLE `ims_stat_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_visit_ip`
--

DROP TABLE IF EXISTS `ims_stat_visit_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_visit_ip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` bigint(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_date_module_uniacid` (`ip`,`date`,`module`,`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_visit_ip`
--

LOCK TABLES `ims_stat_visit_ip` WRITE;
/*!40000 ALTER TABLE `ims_stat_visit_ip` DISABLE KEYS */;
INSERT INTO `ims_stat_visit_ip` VALUES (1,1942467746,0,'web','',20200806),(2,3078738738,1,'web','',20200806);
/*!40000 ALTER TABLE `ims_stat_visit_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_system_stat_visit`
--

DROP TABLE IF EXISTS `ims_system_stat_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_system_stat_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_system_stat_visit`
--

LOCK TABLES `ims_system_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_system_stat_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_system_stat_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_system_welcome_binddomain`
--

DROP TABLE IF EXISTS `ims_system_welcome_binddomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_system_welcome_binddomain` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_system_welcome_binddomain`
--

LOCK TABLES `ims_system_welcome_binddomain` WRITE;
/*!40000 ALTER TABLE `ims_system_welcome_binddomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_system_welcome_binddomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account`
--

DROP TABLE IF EXISTS `ims_uni_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `create_uid` int(11) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account`
--

LOCK TABLES `ims_uni_account` WRITE;
/*!40000 ALTER TABLE `ims_uni_account` DISABLE KEYS */;
INSERT INTO `ims_uni_account` VALUES (1,-1,'微擎团队','一个朝气蓬勃的团队',1,NULL,'W',0,'','',0);
/*!40000 ALTER TABLE `ims_uni_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_extra_modules`
--

DROP TABLE IF EXISTS `ims_uni_account_extra_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_extra_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `modules` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_extra_modules`
--

LOCK TABLES `ims_uni_account_extra_modules` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_extra_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_extra_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_group`
--

DROP TABLE IF EXISTS `ims_uni_account_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_group`
--

LOCK TABLES `ims_uni_account_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_menus`
--

DROP TABLE IF EXISTS `ims_uni_account_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_menus`
--

LOCK TABLES `ims_uni_account_menus` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_modules`
--

DROP TABLE IF EXISTS `ims_uni_account_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_modules`
--

LOCK TABLES `ims_uni_account_modules` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_modules_shortcut`
--

DROP TABLE IF EXISTS `ims_uni_account_modules_shortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_modules_shortcut` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(250) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `module_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_modules_shortcut`
--

LOCK TABLES `ims_uni_account_modules_shortcut` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_modules_shortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_modules_shortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_users`
--

DROP TABLE IF EXISTS `ims_uni_account_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_users`
--

LOCK TABLES `ims_uni_account_users` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_group`
--

DROP TABLE IF EXISTS `ims_uni_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_group`
--

LOCK TABLES `ims_uni_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_group` DISABLE KEYS */;
INSERT INTO `ims_uni_group` VALUES (1,0,'体验套餐服务','N;','N;',0,0);
/*!40000 ALTER TABLE `ims_uni_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_link_uniacid`
--

DROP TABLE IF EXISTS `ims_uni_link_uniacid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_link_uniacid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `link_uniacid` int(10) NOT NULL,
  `version_id` int(10) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_link_uniacid`
--

LOCK TABLES `ims_uni_link_uniacid` WRITE;
/*!40000 ALTER TABLE `ims_uni_link_uniacid` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_link_uniacid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_modules`
--

DROP TABLE IF EXISTS `ims_uni_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_modules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_modules`
--

LOCK TABLES `ims_uni_modules` WRITE;
/*!40000 ALTER TABLE `ims_uni_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_settings`
--

DROP TABLE IF EXISTS `ims_uni_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(2000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  `default_module` varchar(100) NOT NULL,
  `attachment_limit` int(11) NOT NULL,
  `attachment_size` varchar(20) NOT NULL,
  `sync_member` tinyint(1) NOT NULL,
  `remote` varchar(2000) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_settings`
--

LOCK TABLES `ims_uni_settings` WRITE;
/*!40000 ALTER TABLE `ims_uni_settings` DISABLE KEYS */;
INSERT INTO `ims_uni_settings` VALUES (1,'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}','a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}',0,'a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}','a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}','',1,0,'','',1,'',0,1,'','','',0,0,'',0,'',0,'');
/*!40000 ALTER TABLE `ims_uni_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_verifycode`
--

DROP TABLE IF EXISTS `ims_uni_verifycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `failed_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_verifycode`
--

LOCK TABLES `ims_uni_verifycode` WRITE;
/*!40000 ALTER TABLE `ims_uni_verifycode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_verifycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_userapi_cache`
--

DROP TABLE IF EXISTS `ims_userapi_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_userapi_cache`
--

LOCK TABLES `ims_userapi_cache` WRITE;
/*!40000 ALTER TABLE `ims_userapi_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_userapi_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_userapi_reply`
--

DROP TABLE IF EXISTS `ims_userapi_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_userapi_reply`
--

LOCK TABLES `ims_userapi_reply` WRITE;
/*!40000 ALTER TABLE `ims_userapi_reply` DISABLE KEYS */;
INSERT INTO `ims_userapi_reply` VALUES (1,1,'\"城市名+天气\", 如: \"北京天气\"','weather.php','','',0),(2,2,'\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"','baike.php','','',0),(3,3,'\"@查询内容(中文或英文)\"','translate.php','','',0),(4,4,'\"日历\", \"万年历\", \"黄历\"或\"几号\"','calendar.php','','',0),(5,5,'\"新闻\"','news.php','','',0),(6,6,'\"快递+单号\", 如: \"申通1200041125\"','express.php','','',0);
/*!40000 ALTER TABLE `ims_userapi_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users`
--

DROP TABLE IF EXISTS `ims_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `welcome_link` tinyint(4) NOT NULL,
  `notice_setting` varchar(5000) NOT NULL,
  `is_bind` tinyint(1) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users`
--

LOCK TABLES `ims_users` WRITE;
/*!40000 ALTER TABLE `ims_users` DISABLE KEYS */;
INSERT INTO `ims_users` VALUES (1,0,1,1,'admin','4ac5549be0519189405324d0ec214eea763619fd','l9AqyrJn',0,2,1596680752,'',1596681008,'115.199.180.162','',0,0,0,'',0,'',0);
/*!40000 ALTER TABLE `ims_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_bind`
--

DROP TABLE IF EXISTS `ims_users_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bind_sign` (`bind_sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_bind`
--

LOCK TABLES `ims_users_bind` WRITE;
/*!40000 ALTER TABLE `ims_users_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_create_group`
--

DROP TABLE IF EXISTS `ims_users_create_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_create_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  `maxaccount` int(10) NOT NULL,
  `maxwxapp` int(10) NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `maxbaiduapp` int(10) NOT NULL,
  `maxtoutiaoapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_create_group`
--

LOCK TABLES `ims_users_create_group` WRITE;
/*!40000 ALTER TABLE `ims_users_create_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_create_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_extra_group`
--

DROP TABLE IF EXISTS `ims_users_extra_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_extra_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uni_group_id` int(10) NOT NULL,
  `create_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uni_group_id` (`uni_group_id`),
  KEY `create_group_id` (`create_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_extra_group`
--

LOCK TABLES `ims_users_extra_group` WRITE;
/*!40000 ALTER TABLE `ims_users_extra_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_extra_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_extra_limit`
--

DROP TABLE IF EXISTS `ims_users_extra_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_extra_limit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `maxaccount` int(10) NOT NULL,
  `maxwxapp` int(10) NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  `timelimit` int(10) NOT NULL,
  `maxbaiduapp` int(10) NOT NULL,
  `maxtoutiaoapp` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_extra_limit`
--

LOCK TABLES `ims_users_extra_limit` WRITE;
/*!40000 ALTER TABLE `ims_users_extra_limit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_extra_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_extra_modules`
--

DROP TABLE IF EXISTS `ims_users_extra_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_extra_modules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `support` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `module_name` (`module_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_extra_modules`
--

LOCK TABLES `ims_users_extra_modules` WRITE;
/*!40000 ALTER TABLE `ims_users_extra_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_extra_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_extra_templates`
--

DROP TABLE IF EXISTS `ims_users_extra_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_extra_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `template_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_extra_templates`
--

LOCK TABLES `ims_users_extra_templates` WRITE;
/*!40000 ALTER TABLE `ims_users_extra_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_extra_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_failed_login`
--

DROP TABLE IF EXISTS `ims_users_failed_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_failed_login`
--

LOCK TABLES `ims_users_failed_login` WRITE;
/*!40000 ALTER TABLE `ims_users_failed_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_failed_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_founder_group`
--

DROP TABLE IF EXISTS `ims_users_founder_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  `maxbaiduapp` int(10) NOT NULL,
  `maxtoutiaoapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_founder_group`
--

LOCK TABLES `ims_users_founder_group` WRITE;
/*!40000 ALTER TABLE `ims_users_founder_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_founder_own_create_groups`
--

DROP TABLE IF EXISTS `ims_users_founder_own_create_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_founder_own_create_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `founder_uid` int(10) NOT NULL,
  `create_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`),
  KEY `create_group_id` (`create_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_founder_own_create_groups`
--

LOCK TABLES `ims_users_founder_own_create_groups` WRITE;
/*!40000 ALTER TABLE `ims_users_founder_own_create_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_own_create_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_founder_own_uni_groups`
--

DROP TABLE IF EXISTS `ims_users_founder_own_uni_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_founder_own_uni_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `founder_uid` int(10) NOT NULL,
  `uni_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`),
  KEY `uni_group_id` (`uni_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_founder_own_uni_groups`
--

LOCK TABLES `ims_users_founder_own_uni_groups` WRITE;
/*!40000 ALTER TABLE `ims_users_founder_own_uni_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_own_uni_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_founder_own_users`
--

DROP TABLE IF EXISTS `ims_users_founder_own_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_founder_own_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `founder_uid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `founder_uid` (`founder_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_founder_own_users`
--

LOCK TABLES `ims_users_founder_own_users` WRITE;
/*!40000 ALTER TABLE `ims_users_founder_own_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_own_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_founder_own_users_groups`
--

DROP TABLE IF EXISTS `ims_users_founder_own_users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_founder_own_users_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `founder_uid` int(10) NOT NULL,
  `users_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `founder_uid` (`founder_uid`),
  KEY `users_group_id` (`users_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_founder_own_users_groups`
--

LOCK TABLES `ims_users_founder_own_users_groups` WRITE;
/*!40000 ALTER TABLE `ims_users_founder_own_users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_own_users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_group`
--

DROP TABLE IF EXISTS `ims_users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  `maxxzapp` int(10) NOT NULL,
  `maxaliapp` int(10) NOT NULL,
  `maxbaiduapp` int(10) NOT NULL,
  `maxtoutiaoapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_group`
--

LOCK TABLES `ims_users_group` WRITE;
/*!40000 ALTER TABLE `ims_users_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_invitation`
--

DROP TABLE IF EXISTS `ims_users_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_invitation`
--

LOCK TABLES `ims_users_invitation` WRITE;
/*!40000 ALTER TABLE `ims_users_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_lastuse`
--

DROP TABLE IF EXISTS `ims_users_lastuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_lastuse` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_lastuse`
--

LOCK TABLES `ims_users_lastuse` WRITE;
/*!40000 ALTER TABLE `ims_users_lastuse` DISABLE KEYS */;
INSERT INTO `ims_users_lastuse` VALUES (1,1,1,'','account_display');
/*!40000 ALTER TABLE `ims_users_lastuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_login_logs`
--

DROP TABLE IF EXISTS `ims_users_login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_login_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  `city` varchar(256) NOT NULL,
  `login_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_login_logs`
--

LOCK TABLES `ims_users_login_logs` WRITE;
/*!40000 ALTER TABLE `ims_users_login_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_login_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_operate_history`
--

DROP TABLE IF EXISTS `ims_users_operate_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_operate_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_operate_history`
--

LOCK TABLES `ims_users_operate_history` WRITE;
/*!40000 ALTER TABLE `ims_users_operate_history` DISABLE KEYS */;
INSERT INTO `ims_users_operate_history` VALUES (1,2,1,0,'store',1596680894),(2,1,1,1,'',1596680917);
/*!40000 ALTER TABLE `ims_users_operate_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_operate_star`
--

DROP TABLE IF EXISTS `ims_users_operate_star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_operate_star` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `rank` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_operate_star`
--

LOCK TABLES `ims_users_operate_star` WRITE;
/*!40000 ALTER TABLE `ims_users_operate_star` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_operate_star` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_permission`
--

DROP TABLE IF EXISTS `ims_users_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  `modules` text NOT NULL,
  `templates` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_permission`
--

LOCK TABLES `ims_users_permission` WRITE;
/*!40000 ALTER TABLE `ims_users_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_profile`
--

DROP TABLE IF EXISTS `ims_users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_profile`
--

LOCK TABLES `ims_users_profile` WRITE;
/*!40000 ALTER TABLE `ims_users_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_video_reply`
--

DROP TABLE IF EXISTS `ims_video_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_video_reply`
--

LOCK TABLES `ims_video_reply` WRITE;
/*!40000 ALTER TABLE `ims_video_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_video_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_voice_reply`
--

DROP TABLE IF EXISTS `ims_voice_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_voice_reply`
--

LOCK TABLES `ims_voice_reply` WRITE;
/*!40000 ALTER TABLE `ims_voice_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_voice_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wechat_attachment`
--

DROP TABLE IF EXISTS `ims_wechat_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wechat_attachment`
--

LOCK TABLES `ims_wechat_attachment` WRITE;
/*!40000 ALTER TABLE `ims_wechat_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wechat_news`
--

DROP TABLE IF EXISTS `ims_wechat_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  `need_open_comment` tinyint(1) NOT NULL,
  `only_fans_can_comment` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wechat_news`
--

LOCK TABLES `ims_wechat_news` WRITE;
/*!40000 ALTER TABLE `ims_wechat_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxapp_general_analysis`
--

DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_general_analysis`
--

LOCK TABLES `ims_wxapp_general_analysis` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxapp_versions`
--

DROP TABLE IF EXISTS `ims_wxapp_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text NOT NULL,
  `default_appjson` text NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  `last_modules` varchar(1000) DEFAULT NULL,
  `tominiprogram` varchar(1000) NOT NULL,
  `upload_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_versions`
--

LOCK TABLES `ims_wxapp_versions` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxcard_reply`
--

DROP TABLE IF EXISTS `ims_wxcard_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxcard_reply`
--

LOCK TABLES `ims_wxcard_reply` WRITE;
/*!40000 ALTER TABLE `ims_wxcard_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxcard_reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-06 14:06:48
