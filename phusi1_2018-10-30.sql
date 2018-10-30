# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: phusi1
# Generation Time: 2018-10-30 04:26:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tpps_assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_assets`;

CREATE TABLE `tpps_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_assets` WRITE;
/*!40000 ALTER TABLE `tpps_assets` DISABLE KEYS */;

INSERT INTO `tpps_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`)
VALUES
	(1,0,0,111,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
	(2,1,1,2,1,'com_admin','com_admin','{}'),
	(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(6,1,11,12,1,'com_config','com_config','{}'),
	(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(8,1,17,20,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
	(9,1,21,22,1,'com_cpanel','com_cpanel','{}'),
	(10,1,23,24,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
	(11,1,25,26,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),
	(12,1,27,28,1,'com_login','com_login','{}'),
	(13,1,29,30,1,'com_mailto','com_mailto','{}'),
	(14,1,31,32,1,'com_massmail','com_massmail','{}'),
	(15,1,33,34,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
	(16,1,35,38,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),
	(17,1,39,40,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
	(18,1,41,74,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),
	(19,1,75,78,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(20,1,79,80,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),
	(21,1,81,82,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),
	(22,1,83,84,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(23,1,85,86,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),
	(24,1,87,90,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),
	(26,1,91,92,1,'com_wrapper','com_wrapper','{}'),
	(27,8,18,19,2,'com_content.category.2','Uncategorised','{}'),
	(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),
	(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),
	(30,19,76,77,2,'com_newsfeeds.category.5','Uncategorised','{}'),
	(32,24,88,89,2,'com_users.category.7','Uncategorised','{}'),
	(33,1,93,94,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
	(34,1,95,96,1,'com_joomlaupdate','com_joomlaupdate','{}'),
	(35,1,97,98,1,'com_tags','com_tags','{}'),
	(36,1,99,100,1,'com_contenthistory','com_contenthistory','{}'),
	(37,1,101,102,1,'com_ajax','com_ajax','{}'),
	(38,1,103,104,1,'com_postinstall','com_postinstall','{}'),
	(39,18,42,43,2,'com_modules.module.1','Main Menu','{}'),
	(40,18,44,45,2,'com_modules.module.2','Login','{}'),
	(41,18,46,47,2,'com_modules.module.3','Popular Articles','{}'),
	(42,18,48,49,2,'com_modules.module.4','Recently Added Articles','{}'),
	(43,18,50,51,2,'com_modules.module.8','Toolbar','{}'),
	(44,18,52,53,2,'com_modules.module.9','Quick Icons','{}'),
	(45,18,54,55,2,'com_modules.module.10','Logged-in Users','{}'),
	(46,18,56,57,2,'com_modules.module.12','Admin Menu','{}'),
	(47,18,58,59,2,'com_modules.module.13','Admin Submenu','{}'),
	(48,18,60,61,2,'com_modules.module.14','User Status','{}'),
	(49,18,62,63,2,'com_modules.module.15','Title','{}'),
	(50,18,64,65,2,'com_modules.module.16','Login Form','{}'),
	(51,18,66,67,2,'com_modules.module.17','Breadcrumbs','{}'),
	(52,18,68,69,2,'com_modules.module.79','Multilanguage status','{}'),
	(53,18,70,71,2,'com_modules.module.86','Joomla Version','{}'),
	(54,16,36,37,2,'com_menus.menu.1','Main Menu','{}'),
	(55,18,72,73,2,'com_modules.module.87','Sample Data','{}'),
	(59,1,105,106,1,'com_phocagallery','com_phocagallery','{}'),
	(60,1,107,108,1,'com_products','com_products','{}'),
	(61,1,109,110,1,'com_sef','com_sef','{}');

/*!40000 ALTER TABLE `tpps_assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_associations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_associations`;

CREATE TABLE `tpps_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_banner_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_banner_clients`;

CREATE TABLE `tpps_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_banner_tracks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_banner_tracks`;

CREATE TABLE `tpps_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_banners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_banners`;

CREATE TABLE `tpps_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_categories`;

CREATE TABLE `tpps_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_categories` WRITE;
/*!40000 ALTER TABLE `tpps_categories` DISABLE KEYS */;

INSERT INTO `tpps_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`)
VALUES
	(1,0,0,0,11,0,'','system','ROOT',X'726F6F74','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',553,'2018-09-18 01:33:55',0,'0000-00-00 00:00:00',0,'*',1),
	(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-09-18 01:33:55',0,'0000-00-00 00:00:00',0,'*',1),
	(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-09-18 01:33:55',0,'0000-00-00 00:00:00',0,'*',1),
	(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-09-18 01:33:55',0,'0000-00-00 00:00:00',0,'*',1),
	(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-09-18 01:33:55',0,'0000-00-00 00:00:00',0,'*',1),
	(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised',X'756E63617465676F7269736564','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-09-18 01:33:55',0,'0000-00-00 00:00:00',0,'*',1);

/*!40000 ALTER TABLE `tpps_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_contact_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_contact_details`;

CREATE TABLE `tpps_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_content`;

CREATE TABLE `tpps_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_content` WRITE;
/*!40000 ALTER TABLE `tpps_content` DISABLE KEYS */;

INSERT INTO `tpps_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`)
VALUES
	(1,0,'404',X'343034','<h1>404: Not Found</h1>\r\n<h2>Sorry, but the content you requested could not be found</h2>','',1,0,'2018-10-30 04:53:22',553,'','2018-10-30 05:11:47',0,0,'0000-00-00 00:00:00','2001-01-01 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,0,'',0,'*','');

/*!40000 ALTER TABLE `tpps_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_content_frontpage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_content_frontpage`;

CREATE TABLE `tpps_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_content_rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_content_rating`;

CREATE TABLE `tpps_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_content_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_content_types`;

CREATE TABLE `tpps_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_content_types` WRITE;
/*!40000 ALTER TABLE `tpps_content_types` DISABLE KEYS */;

INSERT INTO `tpps_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`)
VALUES
	(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
	(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),
	(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
	(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
	(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
	(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
	(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

/*!40000 ALTER TABLE `tpps_content_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_contentitem_tag_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_contentitem_tag_map`;

CREATE TABLE `tpps_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';



# Dump of table tpps_core_log_searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_core_log_searches`;

CREATE TABLE `tpps_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_extensions`;

CREATE TABLE `tpps_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_extensions` WRITE;
/*!40000 ALTER TABLE `tpps_extensions` DISABLE KEYS */;

INSERT INTO `tpps_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`)
VALUES
	(1,0,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(2,0,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(3,0,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(4,0,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),
	(5,0,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(6,0,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(7,0,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(8,0,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(9,0,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10,0,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','','',0,'0000-00-00 00:00:00',0,0),
	(11,0,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),
	(12,0,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(13,0,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),
	(14,0,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(15,0,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(16,0,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(17,0,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(18,0,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(19,0,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(20,0,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),
	(22,0,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(23,0,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),
	(24,0,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(25,0,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(27,0,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(28,0,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(29,0,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(30,0,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(31,0,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(32,0,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(33,0,'com_fields','component','com_fields','',1,1,1,0,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(34,0,'com_associations','component','com_associations','',1,1,1,0,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(102,0,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(103,0,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"880a37f9c0c48157ae774f6986ff2b22\"}','','',0,'0000-00-00 00:00:00',0,0),
	(104,0,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(105,0,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(106,0,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(200,0,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(201,0,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(202,0,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(203,0,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(204,0,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(205,0,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(206,0,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(207,0,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(208,0,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(209,0,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(210,0,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(211,0,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(212,0,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(213,0,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(214,0,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(215,0,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(216,0,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(218,0,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(219,0,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(220,0,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(221,0,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(222,0,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(223,0,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(300,0,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(301,0,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(302,0,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(303,0,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(304,0,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(305,0,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(307,0,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(308,0,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(309,0,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(310,0,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(311,0,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(312,0,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(313,0,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(314,0,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(315,0,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),
	(316,0,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(317,0,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(318,0,'mod_sampledata','module','mod_sampledata','',1,1,1,0,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(400,0,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),
	(401,0,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(402,0,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),
	(403,0,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(404,0,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),
	(406,0,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),
	(407,0,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),
	(408,0,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),
	(409,0,'plg_content_vote','plugin','vote','content',0,0,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),
	(410,0,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.38.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),
	(411,0,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(412,0,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','','',0,'0000-00-00 00:00:00',3,0),
	(413,0,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(414,0,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(416,0,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),
	(417,0,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(418,0,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(419,0,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(420,0,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(422,0,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(423,0,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),
	(424,0,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),
	(425,0,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),
	(426,0,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),
	(427,0,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(428,0,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),
	(429,0,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),
	(430,0,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',6,0),
	(431,0,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),
	(432,0,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),
	(433,0,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(434,0,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(435,0,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(436,0,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),
	(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(439,0,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),
	(440,0,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),
	(441,0,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(442,0,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(443,0,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(444,0,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(445,0,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),
	(447,0,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(448,0,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(449,0,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(450,0,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(451,0,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(452,0,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1540860467}','','',0,'0000-00-00 00:00:00',0,0),
	(453,0,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(454,0,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1537234615,\"unique_id\":\"7c82e5c5dadb6e869cbaf3fa74a06aa18602f0fc\",\"interval\":12}','','',0,'0000-00-00 00:00:00',0,0),
	(455,0,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),
	(456,0,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),
	(457,0,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),
	(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(459,0,'plg_editors-xtd_menu','plugin','menu','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(460,0,'plg_editors-xtd_contact','plugin','contact','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(461,0,'plg_system_fields','plugin','fields','system',0,1,1,0,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(462,0,'plg_fields_calendar','plugin','calendar','fields',0,1,1,0,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(463,0,'plg_fields_checkboxes','plugin','checkboxes','fields',0,1,1,0,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(464,0,'plg_fields_color','plugin','color','fields',0,1,1,0,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(465,0,'plg_fields_editor','plugin','editor','fields',0,1,1,0,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(466,0,'plg_fields_imagelist','plugin','imagelist','fields',0,1,1,0,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(467,0,'plg_fields_integer','plugin','integer','fields',0,1,1,0,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
	(468,0,'plg_fields_list','plugin','list','fields',0,1,1,0,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(469,0,'plg_fields_media','plugin','media','fields',0,1,1,0,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(470,0,'plg_fields_radio','plugin','radio','fields',0,1,1,0,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(471,0,'plg_fields_sql','plugin','sql','fields',0,1,1,0,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(472,0,'plg_fields_text','plugin','text','fields',0,1,1,0,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(473,0,'plg_fields_textarea','plugin','textarea','fields',0,1,1,0,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(474,0,'plg_fields_url','plugin','url','fields',0,1,1,0,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(475,0,'plg_fields_user','plugin','user','fields',0,1,1,0,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(476,0,'plg_fields_usergrouplist','plugin','usergrouplist','fields',0,1,1,0,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(477,0,'plg_content_fields','plugin','fields','content',0,1,1,0,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(478,0,'plg_editors-xtd_fields','plugin','fields','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(479,0,'plg_sampledata_blog','plugin','blog','sampledata',0,1,1,0,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(480,0,'plg_system_sessiongc','plugin','sessiongc','system',0,1,1,0,'{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(503,0,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),
	(504,0,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(506,0,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(507,0,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
	(600,802,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(601,802,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(700,0,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(802,0,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10003,0,'com_phocagallery','component','com_phocagallery','',1,1,0,0,'{\"name\":\"com_phocagallery\",\"type\":\"component\",\"creationDate\":\"15\\/01\\/2018\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"4.3.10\",\"description\":\"Phoca Gallery\",\"group\":\"\",\"filename\":\"phocagallery\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10004,0,'os-basetemplate','template','os-basetemplate','',0,1,1,0,'{\"name\":\"os-basetemplate\",\"type\":\"template\",\"creationDate\":\"Creation Date\",\"author\":\"Your name\",\"copyright\":\"Your copyrights\",\"authorEmail\":\"Your email\",\"authorUrl\":\"http:\\/\\/ordasoft.com\\/Forum\\/\",\"version\":\"4.2\",\"description\":\" \\n\\t\\n\\t      <link href=\'http:\\/\\/fonts.googleapis.com\\/css?family=Quicksand:400,700,300\' rel=\'stylesheet\' type=\'text\\/css\'>\\n\\t      <br>\\n\\t      <h1 class=\\\"temph1\\\">The OS Framework<\\/h1>\\n\\t      <h4 class=\\\"temph4\\\">Fast & Light Joomla Framework<\\/h4>\\n\\t      <p class=\\\"text_propery\\\">Joomla Blank Template includes amazing interface and powerful admin area. OS Joomla Framework has HTML5, Bootstrap and LESS at core. Joomla Blank Template supports Font Awesome. The new version of  OS Joomla Framework includes last version VirtueMart, K2 blog, OS Simple Membership, OS Touch Slider, OS Responsive Image Gallery, Forms from Balbooa team, awesome custom pages and nice Joomla content.<\\/p>\\n\\t      <br>\\n\\t      <div id=\\\"down_pictures\\\"> \\n\\t\\t    <a href=\\\"http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be\\\" onclick=\\\"window.open(\'http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be\',\'OrdaSoft Joomla Template Features\',\'width=635,height=610,left=\'+(screen.availWidth\\/2-317.5)+\',top=\'+(screen.availHeight\\/2-305)+\'\');return false;\\\" target=\\\"_blank\\\"><img style=\\\"width:400px; height:306px;\\\" src=\\\"..\\/templates\\/os-basetemplate\\/joomla_template_features_video.jpg\\\"\\/><\\/a>\\n\\t\\t    <div style=\\\"clear:both;\\\"><\\/div>\\n\\t\\t    <div class=\\\"sepp_div\\\"><\\/div>\\n\\t\\t    <a href=\\\"http:\\/\\/ordasoft.com\\/membership-page.html\\\" target=\\\"_blank\\\"><img src=\\\"..\\/templates\\/os-basetemplate\\/button_become_member.jpg\\\"\\/><\\/a> \\n\\t      <\\/div>\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"expand_body_bg\":\"0\",\"body_color\":\"#f8f8f8\",\"body_bg_size\":\"auto\",\"body_bg_repeat\":\"repeat\",\"body_bg_attachment\":\"scroll\",\"expand_body_links\":\"0\",\"body_link_color\":\"#92999E\",\"body_link_hover_color\":\"#12ABFF\",\"body_underline\":\"none\",\"body_hover_underline\":\"none\",\"expand_body_font\":\"0\",\"body_font\":\"Roboto\",\"links_font\":\"Roboto\",\"body_text_color\":\"#666666\",\"expand_body_h1\":\"0\",\"body_h1_font\":\"Roboto\",\"body_h1_color\":\"#666666\",\"body_h1_size\":\"32\",\"body_h1_font_weight\":\"500\",\"body_h1_text_transform\":\"none\",\"expand_body_h2\":\"0\",\"body_h2_font\":\"Roboto\",\"body_h2_color\":\"#666666\",\"body_h2_size\":\"28\",\"body_h2_font_weight\":\"500\",\"body_h2_text_transform\":\"none\",\"expand_body_h3\":\"0\",\"body_h3_font\":\"Roboto\",\"body_h3_color\":\"#666666\",\"body_h3_size\":\"24\",\"body_h3_font_weight\":\"500\",\"body_h3_text_transform\":\"none\",\"expand_body_h4\":\"0\",\"body_h4_font\":\"Roboto\",\"body_h4_color\":\"#666666\",\"body_h4_size\":\"20\",\"body_h4_font_weight\":\"500\",\"body_h4_text_transform\":\"none\",\"expand_body_h5\":\"0\",\"body_h5_font\":\"Roboto\",\"body_h5_color\":\"#666666\",\"body_h5_size\":\"18\",\"body_h5_font_weight\":\"500\",\"body_h5_text_transform\":\"none\",\"expand_body_h6\":\"0\",\"body_h6_font\":\"Roboto\",\"body_h6_color\":\"#666666\",\"body_h6_size\":\"16\",\"body_h6_font_weight\":\"500\",\"body_h6_text_transform\":\"none\",\"expand_header_bg\":\"1\",\"header_color\":\"#ffffff\",\"header_bg_size\":\"auto\",\"header_bg_repeat\":\"repeat\",\"header_bg_attachment\":\"scroll\",\"expand_header_links\":\"0\",\"header_link_color\":\"#92999E\",\"header_link_hover_color\":\"#12ABFF\",\"header_underline\":\"none\",\"header_hover_underline\":\"none\",\"expand_header_font\":\"0\",\"header_font\":\"Roboto\",\"header_links_font\":\"Roboto\",\"header_text_color\":\"#666666\",\"expand_header_h1\":\"0\",\"header_h1_size\":\"32\",\"header_h1_color\":\"#666666\",\"expand_header_h2\":\"0\",\"header_h2_size\":\"28\",\"header_h2_color\":\"#666666\",\"expand_header_h3\":\"0\",\"header_h3_size\":\"24\",\"header_h3_color\":\"#666666\",\"expand_header_h4\":\"0\",\"header_h4_size\":\"20\",\"header_h4_color\":\"#666666\",\"expand_header_h5\":\"0\",\"header_h5_size\":\"18\",\"header_h5_color\":\"#666666\",\"expand_header_h6\":\"0\",\"header_h6_size\":\"16\",\"header_h6_color\":\"#666666\",\"expand_central_content_bg\":\"0\",\"central_content_color\":\"#F8F8F8\",\"central_content_bg_size\":\"auto\",\"central_content_bg_repeat\":\"repeat\",\"central_content_bg_attachment\":\"scroll\",\"expand_central_content_links\":\"0\",\"central_content_link_color\":\"#92999E\",\"central_content_link_hover_color\":\"#12ABFF\",\"central_content_underline\":\"none\",\"central_content_hover_underline\":\"none\",\"expand_central_content_font\":\"0\",\"central_content_font\":\"Roboto\",\"central_content_links_font\":\"Roboto\",\"central_content_text_color\":\"#666666\",\"expand_central_content_h1\":\"0\",\"central_content_h1_size\":\"32\",\"central_content_h1_color\":\"#888888\",\"expand_central_content_h2\":\"0\",\"central_content_h2_size\":\"32\",\"central_content_h2_color\":\"#888888\",\"expand_central_content_h3\":\"0\",\"central_content_h3_size\":\"32\",\"central_content_h3_color\":\"#888888\",\"expand_central_content_h4\":\"0\",\"central_content_h4_size\":\"32\",\"central_content_h4_color\":\"#888888\",\"expand_central_content_h5\":\"0\",\"central_content_h5_size\":\"32\",\"central_content_h5_color\":\"#888888\",\"expand_central_content_h6\":\"0\",\"central_content_h6_size\":\"32\",\"central_content_h6_color\":\"#888888\",\"expand_footer_bg\":\"1\",\"footer_color\":\"#ffffff\",\"footer_bg_size\":\"auto\",\"footer_bg_repeat\":\"repeat\",\"footer_bg_attachment\":\"scroll\",\"expand_footer_links\":\"0\",\"footer_link_color\":\"#92999E\",\"footer_link_hover_color\":\"#12ABFF\",\"footer_underline\":\"none\",\"footer_hover_underline\":\"none\",\"expand_footer_font\":\"0\",\"footer_font\":\"Roboto\",\"footer_links_font\":\"Roboto\",\"footer_text_color\":\"#666666\",\"expand_footer_h1\":\"0\",\"footer_h1_size\":\"32\",\"footer_h1_color\":\"#888888\",\"expand_footer_h2\":\"0\",\"footer_h2_size\":\"32\",\"footer_h2_color\":\"#888888\",\"expand_footer_h3\":\"0\",\"footer_h3_size\":\"32\",\"footer_h3_color\":\"#888888\",\"expand_footer_h4\":\"0\",\"footer_h4_size\":\"32\",\"footer_h4_color\":\"#888888\",\"expand_footer_h5\":\"0\",\"footer_h5_size\":\"32\",\"footer_h5_color\":\"#888888\",\"expand_footer_h6\":\"0\",\"footer_h6_size\":\"32\",\"footer_h6_color\":\"#888888\",\"logo_link\":\"index.php\",\"logo_width\":\"226\",\"logo_height\":\"60\",\"favicon_file\":\"\",\"expand_custom_meni_1\":\"1\",\"custom_menu_1_class\":\"_custom_1\",\"custom_menu_1_bg_color\":\"#FFFFFF\",\"custom_menu_1_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_1_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_1_font\":\"Roboto\",\"custom_menu_1_font_weight\":\"400\",\"custom_menu_1_color\":\"#666666\",\"custom_menu_1_hover_color\":\"#000000\",\"custom_menu_1_underline\":\"none\",\"custom_menu_1_hover_underline\":\"none\",\"expand_custom_meni_2\":\"1\",\"custom_menu_2_class\":\"_custom_2\",\"custom_menu_2_bg_color\":\"#FFFFFF\",\"custom_menu_2_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_2_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_2_font\":\"Roboto\",\"custom_menu_2_font_weight\":\"400\",\"custom_menu_2_color\":\"#666666\",\"custom_menu_2_hover_color\":\"#000000\",\"custom_menu_2_underline\":\"none\",\"custom_menu_2_hover_underline\":\"none\",\"expand_custom_meni_3\":\"0\",\"custom_menu_3_class\":\"_custom_3\",\"custom_menu_3_bg_color\":\"#FFFFFF\",\"custom_menu_3_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_3_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_3_font\":\"Roboto\",\"custom_menu_3_font_weight\":\"400\",\"custom_menu_3_color\":\"#666666\",\"custom_menu_3_hover_color\":\"#000000\",\"custom_menu_3_underline\":\"none\",\"custom_menu_3_hover_underline\":\"none\",\"expand_custom_meni_4\":\"0\",\"custom_menu_4_class\":\"_custom_4\",\"custom_menu_4_bg_color\":\"#FFFFFF\",\"custom_menu_4_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_4_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_4_font\":\"Roboto\",\"custom_menu_4_font_weight\":\"400\",\"custom_menu_4_color\":\"#666666\",\"custom_menu_4_hover_color\":\"#000000\",\"custom_menu_4_underline\":\"none\",\"custom_menu_4_hover_underline\":\"none\",\"expand_custom_meni_5\":\"0\",\"custom_menu_5_class\":\"_custom_5\",\"custom_menu_5_bg_color\":\"#FFFFFF\",\"custom_menu_5_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_5_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_5_font\":\"Roboto\",\"custom_menu_5_font_weight\":\"400\",\"custom_menu_5_color\":\"#666666\",\"custom_menu_5_hover_color\":\"#000000\",\"custom_menu_5_underline\":\"none\",\"custom_menu_5_hover_underline\":\"none\",\"expand_button_1\":\"1\",\"button_1_selector\":\"input.ba-btn-submit[type=\'submit\'], .itp-subscribe .button, .logout-button .btn, .controls .btn, .login button, .registration button.btn-primary, .remind button.btn, .reset button.btn, .contact-form button.btn, .filter-search button.btn, #button_hidden_review input.btn, button.validate, .btn-default, input#newGroup, .content-category a.btn, .product span.addtocart-button input.addtocart-button, #com-form-login #com-form-login-remember input, form.form-validate .buttonBar-right button, .vm-orders-list .order-view input.button, .cart-view #checkoutForm .billto-shipto .floatleft a, .cart-view button, div.itemCommentsForm form input#submitCommentButton, #jform_profile_dob_img, #profile_dob_img, .footer-row a.pt-btn, input.highlight-button, .vm-orders-list .button, #form-login .button, .cart-view .button, .billto-shipto .floatleft.add_bill a, .billto-shipto .floatleft a, .control-buttons button.default, .control-buttons button.button, form#form-login input, .account_form_validate .buttonBar-right button, .manufacturer-details-view .spacer a, span.addtocart-button input.notify-button, a.btn.btn-primary[data-toggle=\'modal\'], .registration button.btn-primary, .controls a.btn, .nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus, button:not(.navbar-toggle), input[type=\'button\']:not(.quantity-controls), input[type=\'reset\'], input[type=\'submit\']\",\"expand_button_1_background\":\"0\",\"button_1_bg_color\":\"#428bca\",\"expand_button_1_font_text\":\"0\",\"button_1_text_color\":\"#ffffff\",\"button_1_font\":\"Roboto\",\"button_1_font_size\":\"16\",\"button_1_line_height\":\"20\",\"button_1_font_weight\":\"400\",\"button_1_text_transform\":\"none\",\"expand_button_1_text_shadow\":\"0\",\"button_1_text_shadow_color\":\"#000000\",\"button_1_text_shadow_x\":\"0\",\"button_1_text_shadow_y\":\"0\",\"button_1_text_shadow_blur\":\"0\",\"expand_button_1_box\":\"0\",\"button_1_padding_top\":\"6\",\"button_1_padding_right\":\"12\",\"button_1_padding_bottom\":\"6\",\"button_1_padding_left\":\"12\",\"expand_button_1_box_shadow\":\"0\",\"button_1_box_shadow_color\":\"#000000\",\"button_1_box_shadow_x\":\"0\",\"button_1_box_shadow_y\":\"0\",\"button_1_box_shadow_blur\":\"0\",\"button_1_box_shadow_spread\":\"0\",\"button_1_box_shadow_type\":\"inset\",\"expand_button_1_border\":\"0\",\"button_1_border_radius\":\"0\",\"button_1_border_width\":\"0\",\"button_1_border_color\":\"#428bca\",\"button_1_border_style\":\"solid\",\"expand_button_1_hover_style\":\"0\",\"button_1_hover_bg_color\":\"#2069a8\",\"button_1_hover_border_color\":\"#428bca\",\"button_1_hover_text_color\":\"#ffffff\",\"expand_button_2\":\"1\",\"button_2_selector\":\".product .vm-details-button a\",\"expand_button_2_background\":\"0\",\"button_2_bg_color\":\"#428bca\",\"expand_button_2_font_text\":\"0\",\"button_2_text_color\":\"#ffffff\",\"button_2_font\":\"Roboto\",\"button_2_font_size\":\"14\",\"button_2_line_height\":\"20\",\"button_2_font_weight\":\"400\",\"button_2_text_transform\":\"none\",\"expand_button_2_text_shadow\":\"0\",\"button_2_text_shadow_color\":\"#000000\",\"button_2_text_shadow_x\":\"0\",\"button_2_text_shadow_y\":\"0\",\"button_2_text_shadow_blur\":\"0\",\"expand_button_2_box\":\"0\",\"button_2_padding_top\":\"6\",\"button_2_padding_right\":\"12\",\"button_2_padding_bottom\":\"6\",\"button_2_padding_left\":\"12\",\"expand_button_2_box_shadow\":\"0\",\"button_2_box_shadow_color\":\"#000000\",\"button_2_box_shadow_x\":\"0\",\"button_2_box_shadow_y\":\"0\",\"button_2_box_shadow_blur\":\"0\",\"button_2_box_shadow_spread\":\"0\",\"button_2_box_shadow_type\":\"inset\",\"expand_button_2_border\":\"0\",\"button_2_border_radius\":\"0\",\"button_2_border_width\":\"0\",\"button_2_border_color\":\"#ffffff\",\"button_2_border_style\":\"solid\",\"expand_button_2_hover_style\":\"0\",\"button_2_hover_bg_color\":\"#2069a8\",\"button_2_hover_border_color\":\"#FFFFFF\",\"button_2_hover_text_color\":\"#ffffff\",\"expand_button_3\":\"1\",\"expand_button_3_background\":\"0\",\"button_3_bg_color\":\"#428bca\",\"expand_button_3_font_text\":\"0\",\"button_3_text_color\":\"#ffffff\",\"button_3_font\":\"Roboto\",\"button_3_font_size\":\"14\",\"button_3_line_height\":\"20\",\"button_3_font_weight\":\"400\",\"button_3_text_transform\":\"none\",\"expand_button_3_text_shadow\":\"0\",\"button_3_text_shadow_color\":\"#000000\",\"button_3_text_shadow_x\":\"0\",\"button_3_text_shadow_y\":\"0\",\"button_3_text_shadow_blur\":\"0\",\"expand_button_3_box\":\"0\",\"button_3_padding_top\":\"6\",\"button_3_padding_right\":\"12\",\"button_3_padding_bottom\":\"6\",\"button_3_padding_left\":\"12\",\"expand_button_3_box_shadow\":\"0\",\"button_3_box_shadow_color\":\"#000000\",\"button_3_box_shadow_x\":\"0\",\"button_3_box_shadow_y\":\"0\",\"button_3_box_shadow_blur\":\"0\",\"button_3_box_shadow_spread\":\"0\",\"button_3_box_shadow_type\":\"inset\",\"expand_button_3_border\":\"0\",\"button_3_border_radius\":\"0\",\"button_3_border_width\":\"0\",\"button_3_border_color\":\"#ffffff\",\"button_3_border_style\":\"solid\",\"expand_button_3_hover_style\":\"0\",\"button_3_hover_bg_color\":\"#2069a8\",\"button_3_hover_border_color\":\"#FFFFFF\",\"button_3_hover_text_color\":\"#ffffff\",\"expand_preloader\":\"1\",\"preloader\":\"rotating-plane\",\"preloader_color\":\"#12abff\",\"soc_icons_size\":\"18\",\"twitter\":\"\",\"facebook\":\"\",\"flickr\":\"\",\"linkedin\":\"\",\"youtube\":\"\",\"pinterest\":\"\",\"google\":\"\",\"dribbble\":\"\",\"vimeo\":\"\",\"instagram\":\"\",\"vk\":\"\",\"reset\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10005,0,'com_products','component','com_products','',1,1,0,0,'{\"name\":\"com_products\",\"type\":\"component\",\"creationDate\":\"2018-10-24\",\"author\":\"kent\",\"copyright\":\"2018 kent\",\"authorEmail\":\"raccuakent@gmail.com\",\"authorUrl\":\"http:\\/\\/allbest4u.website\",\"version\":\"CVS: 1.0.0\",\"description\":\"Products component created by Kent\",\"group\":\"\",\"filename\":\"products\"}','{\"save_history\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
	(10006,0,'com_sef','component','com_sef','',1,1,0,0,'{\"name\":\"com_sef\",\"type\":\"component\",\"creationDate\":\"24. May 2018\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"http:\\/\\/www.artio.net\",\"version\":\"4.7.5\",\"description\":\"COM_SEF_JOOMSEF_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','{}','{\"devel\":\"i:0;\",\"alwaysUseLang\":\"b:1;\",\"enabled\":\"s:1:\\\"1\\\";\",\"professionalMode\":\"s:1:\\\"1\\\";\",\"showInfoTexts\":\"b:1;\",\"replacement\":\"s:1:\\\"-\\\";\",\"pagerep\":\"s:1:\\\"-\\\";\",\"stripthese\":\"s:47:\\\",|~|!|@|%|^|*|(|)|+|<|>|:|;|{|}|[|]|---|--|..|.\\\";\",\"suffix\":\"s:0:\\\"\\\";\",\"addFile\":\"s:0:\\\"\\\";\",\"friendlytrim\":\"s:3:\\\"-|.\\\";\",\"canonicalLink\":\"b:1;\",\"pagetext\":\"s:27:\\\"JText::_(\'COM_SEF_PAGE\')-%s\\\";\",\"langPlacement\":\"i:0;\",\"lowerCase\":\"s:1:\\\"1\\\";\",\"useAlias\":\"s:1:\\\"1\\\";\",\"excludeSource\":\"s:1:\\\"0\\\";\",\"reappendSource\":\"s:1:\\\"0\\\";\",\"ignoreSource\":\"s:1:\\\"1\\\";\",\"appendNonSef\":\"s:1:\\\"1\\\";\",\"transitSlash\":\"s:1:\\\"1\\\";\",\"redirectSlash\":\"s:1:\\\"0\\\";\",\"useCache\":\"s:1:\\\"1\\\";\",\"cacheSize\":\"s:4:\\\"1000\\\";\",\"cacheMinHits\":\"s:2:\\\"10\\\";\",\"cacheRecordHits\":\"s:1:\\\"0\\\";\",\"cacheShowErr\":\"s:1:\\\"0\\\";\",\"translateNames\":\"b:1;\",\"page404\":\"s:1:\\\"0\\\";\",\"record404\":\"s:1:\\\"0\\\";\",\"showMessageOn404\":\"s:1:\\\"0\\\";\",\"use404itemid\":\"s:1:\\\"0\\\";\",\"itemid404\":\"s:1:\\\"1\\\";\",\"nonSefRedirect\":\"s:1:\\\"1\\\";\",\"useMoved\":\"b:1;\",\"useMovedAsk\":\"s:1:\\\"1\\\";\",\"replacements\":\"s:1441:\\\"\\u00c1|A, \\u00c2|A, \\u00c5|A, \\u0102|A, \\u00c4|A, \\u00c0|A, \\u00c6|A, \\u0106|C, \\u00c7|C, \\u010c|C, \\u010e|D, \\u00c9|E, \\u00c8|E, \\u00cb|E, \\u011a|E, \\u00ca|E, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u0139|L, \\u013e|l, \\u013d|L, \\u0143|N, \\u0147|N, \\u00d1|N, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u0154|R, \\u0158|R, \\u0160|S, \\u015a|S, \\u0164|T, \\u016e|U, \\u00da|U, \\u0170|U, \\u00dc|U, \\u00db|U, \\u00dd|Y, \\u017d|Z, \\u0179|Z, \\u00e1|a, \\u00e2|a, \\u00e5|a, \\u00e4|a, \\u00e0|a, \\u00e6|a, \\u0107|c, \\u00e7|c, \\u010d|c, \\u010f|d, \\u0111|d, \\u00e9|e, \\u0119|e, \\u00eb|e, \\u011b|e, \\u00e8|e, \\u00ea|e, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u013a|l, \\u0144|n, \\u0148|n, \\u00f1|n, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u0151|o, \\u00f6|o, \\u00f8|o, \\u0161|s, \\u015b|s, \\u0159|r, \\u0155|r, \\u0165|t, \\u016f|u, \\u00fa|u, \\u0171|u, \\u00fc|u, \\u00fb|u, \\u00fd|y, \\u017e|z, \\u017a|z, \\u02d9|-, \\u00df|ss, \\u0104|A, \\u00b5|u, \\u0105|a, \\u0118|E, \\u017c|z, \\u017b|Z, \\u0142|l, \\u0141|L, \\u0410|A, \\u0430|a, \\u0411|B, \\u0431|b, \\u0412|V, \\u0432|v, \\u0413|G, \\u0433|g, \\u0414|D, \\u0434|d, \\u0415|E, \\u0435|e, \\u0416|Zh, \\u0436|zh, \\u0417|Z, \\u0437|z, \\u0418|I, \\u0438|i, \\u0419|I, \\u0439|i, \\u041a|K, \\u043a|k, \\u041b|L, \\u043b|l, \\u041c|M, \\u043c|m, \\u041d|N, \\u043d|n, \\u041e|O, \\u043e|o, \\u041f|P, \\u043f|p, \\u0420|R, \\u0440|r, \\u0421|S, \\u0441|s, \\u0422|T, \\u0442|t, \\u0423|U, \\u0443|u, \\u0424|F, \\u0444|f, \\u0425|Kh, \\u0445|kh, \\u0426|Tc, \\u0446|tc, \\u0427|Ch, \\u0447|ch, \\u0428|Sh, \\u0448|sh, \\u0429|Shch, \\u0449|shch, \\u042b|Y, \\u044b|y, \\u042d|E, \\u044d|e, \\u042e|Iu, \\u044e|iu, \\u042f|Ia, \\u044f|ia, \\u042a| , \\u044a| , \\u042c| , \\u044c| , \\u0401|E, \\u0451|e, \\u03bf\\u03c5|ou, \\u03bf\\u03cd|ou, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|i, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|ks, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|i, \\u03c6|f, \\u03c7|x, \\u03c8|ps, \\u03c9|o, \\u03ac|a, \\u03ad|e, \\u03af|i, \\u03ae|i, \\u03cc|o, \\u03cd|i, \\u03ce|o, \\u039f\\u03c5|ou, \\u039f\\u03cd|ou, \\u0391|a, \\u0392|b, \\u0393|g, \\u0394|d, \\u0395|e, \\u0396|z, \\u0397|i, \\u0398|th, \\u0399|i, \\u039a|k, \\u039b|l, \\u039c|m, \\u039d|n, \\u039e|ks, \\u039f|o, \\u03a0|p, \\u03a1|r, \\u03a3|s, \\u03a4|t, \\u03a5|i, \\u03a6|f, \\u03a7|x, \\u03a8|ps, \\u03a9|o, \\u03c2|s, \\u0386|a, \\u0388|e, \\u0389|i, \\u038a|i, \\u038c|o, \\u038e|i, \\u038f|o, \\u03ca|i, \\u0390|i\\\";\",\"predefined\":\"a:5:{i:0;s:9:\\\"com_login\\\";i:1;s:13:\\\"com_newsfeeds\\\";i:2;s:7:\\\"com_sef\\\";i:3;s:12:\\\"com_weblinks\\\";i:4;s:12:\\\"com_joomfish\\\";}\",\"serverNewVersionURL\":\"s:55:\\\"http:\\/\\/www.artio.cz\\/updates\\/joomla\\/joomsef4\\/version.xml\\\";\",\"serverAutoUpgrade\":\"s:40:\\\"http:\\/\\/www.artio.net\\/joomla-auto-upgrade\\\";\",\"serverLicenser\":\"s:34:\\\"http:\\/\\/www.artio.net\\/license-check\\\";\",\"langDomain\":\"a:0:{}\",\"disableNewSEF\":\"s:1:\\\"0\\\";\",\"dontRemoveSid\":\"b:1;\",\"setQueryString\":\"b:1;\",\"parseJoomlaSEO\":\"s:1:\\\"1\\\";\",\"customNonSef\":\"s:0:\\\"\\\";\",\"jfBrowserLang\":\"b:1;\",\"jfLangCookie\":\"b:1;\",\"jfSubDomains\":\"a:0:{}\",\"contentUseIndex\":\"b:0;\",\"checkJunkUrls\":\"s:1:\\\"1\\\";\",\"junkWords\":\"s:38:\\\"http:\\/\\/ http\\/\\/ https:\\/\\/ https\\/\\/ www. @\\\";\",\"junkExclude\":\"s:0:\\\"\\\";\",\"preventNonSefOverwrite\":\"s:1:\\\"1\\\";\",\"mainLanguage\":\"i:0;\",\"allowUTF\":\"s:1:\\\"0\\\";\",\"numberDuplicates\":\"s:1:\\\"0\\\";\",\"artioUserName\":\"s:5:\\\"admin\\\";\",\"artioPassword\":\"s:7:\\\"9081950\\\";\",\"artioDownloadId\":\"s:0:\\\"\\\";\",\"trace\":\"s:1:\\\"0\\\";\",\"traceLevel\":\"s:1:\\\"3\\\";\",\"autoCanonical\":\"s:1:\\\"1\\\";\",\"sefComponentUrls\":\"s:1:\\\"0\\\";\",\"versionChecker\":\"s:1:\\\"1\\\";\",\"tag_generator\":\"s:0:\\\"\\\";\",\"tag_googlekey\":\"s:0:\\\"\\\";\",\"tag_livekey\":\"s:0:\\\"\\\";\",\"tag_yahookey\":\"s:0:\\\"\\\";\",\"customMetaTags\":\"a:0:{}\",\"wwwHandling\":\"s:1:\\\"0\\\";\",\"enable_metadata\":\"s:1:\\\"1\\\";\",\"metadata_auto\":\"s:1:\\\"1\\\";\",\"prefer_joomsef_title\":\"s:1:\\\"1\\\";\",\"use_sitename\":\"s:1:\\\"2\\\";\",\"sitename_sep\":\"s:1:\\\"-\\\";\",\"rewrite_keywords\":\"s:1:\\\"1\\\";\",\"rewrite_description\":\"s:1:\\\"1\\\";\",\"prevent_dupl\":\"s:1:\\\"1\\\";\",\"check_base_href\":\"s:1:\\\"2\\\";\",\"sitemap_changed\":\"b:1;\",\"sitemap_filename\":\"s:7:\\\"sitemap\\\";\",\"sitemap_ssl\":\"b:0;\",\"sitemap_indexed\":\"b:0;\",\"sitemap_frequency\":\"s:6:\\\"weekly\\\";\",\"sitemap_priority\":\"s:3:\\\"0.5\\\";\",\"sitemap_show_date\":\"b:1;\",\"sitemap_show_frequency\":\"b:1;\",\"sitemap_show_priority\":\"b:1;\",\"sitemap_pingauto\":\"b:1;\",\"sitemap_yahooId\":\"s:0:\\\"\\\";\",\"sitemap_services\":\"a:0:{}\",\"external_nofollow\":\"b:0;\",\"internal_enable\":\"b:1;\",\"internal_nofollow\":\"b:0;\",\"internal_newwindow\":\"b:0;\",\"internal_maxlinks\":\"i:1;\",\"artioFeedDisplay\":\"s:1:\\\"1\\\";\",\"artioFeedUrl\":\"s:37:\\\"http:\\/\\/www.artio.net\\/joomsef-news\\/rss\\\";\",\"fixIndexPhp\":\"s:1:\\\"1\\\";\",\"fixDocumentFormat\":\"s:1:\\\"0\\\";\",\"useGlobalFilters\":\"b:1;\",\"logErrors\":\"s:1:\\\"0\\\";\",\"cronEnabled\":\"b:0;\",\"cronOnlyLocal\":\"b:1;\",\"cronKey\":\"s:0:\\\"\\\";\",\"autolock_urls\":\"s:1:\\\"0\\\";\",\"update_urls\":\"b:0;\",\"langEnable\":\"s:1:\\\"0\\\";\",\"langPlacementJoomla\":\"s:1:\\\"0\\\";\",\"addLangMulti\":\"s:1:\\\"1\\\";\",\"alwaysUseLangJoomla\":\"s:1:\\\"1\\\";\",\"alwaysUseLangHomeJoomla\":\"s:1:\\\"1\\\";\",\"browserLangJoomla\":\"s:1:\\\"1\\\";\",\"langCookieJoomla\":\"s:1:\\\"1\\\";\",\"mainLanguageJoomla\":\"s:2:\\\"en\\\";\",\"subDomainsJoomla\":\"a:1:{s:2:\\\"en\\\";s:19:\\\"thucphamphusi.local\\\";}\",\"translateItems\":\"b:1;\",\"google_email\":\"s:0:\\\"\\\";\",\"google_password\":\"s:0:\\\"\\\";\",\"google_apikey\":\"s:0:\\\"\\\";\",\"google_id\":\"s:0:\\\"\\\";\",\"google_enable\":\"s:1:\\\"0\\\";\",\"google_demographic_reports\":\"s:1:\\\"0\\\";\",\"google_link_attribution\":\"s:1:\\\"0\\\";\",\"google_exclude_ip\":\"s:0:\\\"\\\";\",\"google_exclude_level\":\"a:0:{}\",\"wrongDomainHandling\":\"s:1:\\\"0\\\";\",\"mismatchedLangHandling\":\"s:1:\\\"0\\\";\",\"rootLangRedirect303\":\"s:1:\\\"1\\\";\",\"nonSefQueryVariables\":\"s:1:\\\"1\\\";\",\"vmCurrencyEnable\":\"b:0;\",\"vmCurrency\":\"a:0:{}\",\"indexPhpCurrentMenu\":\"s:1:\\\"1\\\";\",\"multipleSitemaps\":\"b:0;\",\"multipleSitemapsFilenames\":\"a:0:{}\",\"langMenuAssociations\":\"s:1:\\\"0\\\";\",\"homePageHits\":\"s:1:\\\"1\\\";\",\"canonicalsRemove\":\"s:1:\\\"0\\\";\",\"canonicalsFix\":\"s:1:\\\"1\\\";\",\"chunkedExport\":\"s:1:\\\"1\\\";\",\"forceSsl\":\"s:1:\\\"0\\\";\",\"alwaysAddItemid\":\"s:1:\\\"1\\\";\"}','',0,'0000-00-00 00:00:00',0,0),
	(10007,0,'Content - ARTIO JoomSEF','plugin','joomsef','content',0,1,1,0,'{\"name\":\"Content - ARTIO JoomSEF\",\"type\":\"plugin\",\"creationDate\":\"12. June 2010\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"4.0.0\",\"description\":\"PLG_CONTENT_JOOMSEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomsef\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10008,0,'Extension Install - ARTIO JoomSEF','plugin','joomsefinstall','extension',0,1,1,0,'{\"name\":\"Extension Install - ARTIO JoomSEF\",\"type\":\"plugin\",\"creationDate\":\"21. October 2011\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"4.1.1\",\"description\":\"PLG_JOOMSEFINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomsefinstall\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10009,0,'System - ARTIO JoomSEF','plugin','joomsef','system',0,1,1,0,'{\"name\":\"System - ARTIO JoomSEF\",\"type\":\"plugin\",\"creationDate\":\"2. November 2011\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"4.0.1\",\"description\":\"PLG_JOOMSEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomsef\"}','{}','','',0,'0000-00-00 00:00:00',-10,0),
	(10010,0,'System - ARTIO JoomSEF Google Analytics','plugin','joomsefgoogle','system',0,1,1,0,'{\"name\":\"System - ARTIO JoomSEF Google Analytics\",\"type\":\"plugin\",\"creationDate\":\"31. October 2011\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"4.0.0\",\"description\":\"Plugin which add Google Adsense Code to Pages.\",\"group\":\"\",\"filename\":\"joomsefgoogle\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10011,0,'System Language - ARTIO JoomSEF','plugin','joomseflang','system',0,1,1,0,'{\"name\":\"System Language - ARTIO JoomSEF\",\"type\":\"plugin\",\"creationDate\":\"1. August 2011\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"4.1.0\",\"description\":\"PLG_JOOMSEFLANG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomseflang\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
	(10012,0,'Banners','sef_ext','ext_joomsef4_banners','',0,1,1,1,'{\"name\":\"Banners\",\"type\":\"sef_ext\",\"creationDate\":\"22. June 2010\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.3\",\"description\":\"Adds SEO support for Banners component.\",\"group\":\"\",\"filename\":\"com_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10013,0,'Contacts','sef_ext','ext_joomsef4_contact','',0,1,1,1,'{\"name\":\"Contacts\",\"type\":\"sef_ext\",\"creationDate\":\"24. January 2011\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.3\",\"description\":\"Adds SEO support for Contacts component.\",\"group\":\"\",\"filename\":\"com_contact\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10014,0,'Content','sef_ext','ext_joomsef4_content','',0,1,1,1,'{\"name\":\"Content\",\"type\":\"sef_ext\",\"creationDate\":\"20. July 2017\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.10\",\"description\":\"Adds SEO support for Content component.\",\"group\":\"\",\"filename\":\"com_content\"}','acceptVars=view; id; catid; type; year; month; filter; limit; limitstart; start; task','+^[0-9]*$=limit,limitstart,start,month,year\n+^[a-zA-Z]+$=type,view\n+^[a-zA-Z.]+$=task\n+^[0-9]+(:[\\w\\-_\\d]+)?$=catid,id','',0,'0000-00-00 00:00:00',0,0),
	(10015,0,'Mail To','sef_ext','ext_joomsef4_mailto','',0,1,1,1,'{\"name\":\"Mail To\",\"type\":\"sef_ext\",\"creationDate\":\"22. June 2010\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.1\",\"description\":\"Adds SEO support for Mail To component.\",\"group\":\"\",\"filename\":\"com_mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10016,0,'NewsFeeds','sef_ext','ext_joomsef4_newsfeeds','',0,1,1,1,'{\"name\":\"NewsFeeds\",\"type\":\"sef_ext\",\"creationDate\":\"25. January 2011\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.3\",\"description\":\"Adds SEO support for NewsFeeds component.\",\"group\":\"\",\"filename\":\"com_newsfeeds\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10017,0,'Search','sef_ext','ext_joomsef4_search','',0,1,1,1,'{\"name\":\"Search\",\"type\":\"sef_ext\",\"creationDate\":\"9. October 2012\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.4\",\"description\":\"Adds SEO support for Search component.\",\"group\":\"\",\"filename\":\"com_search\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10018,0,'Tags','sef_ext','ext_joomsef4_tags','',0,1,1,1,'{\"name\":\"Tags\",\"type\":\"sef_ext\",\"creationDate\":\"12. November 2015\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.1\",\"description\":\"Adds SEO support for Tags component.\",\"group\":\"\",\"filename\":\"com_tags\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10019,0,'Users','sef_ext','ext_joomsef4_users','',0,1,1,1,'{\"name\":\"Users\",\"type\":\"sef_ext\",\"creationDate\":\"10. January 2012\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.3\",\"description\":\"Adds SEO support for User component.\",\"group\":\"\",\"filename\":\"com_users\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10020,0,'WebLinks','sef_ext','ext_joomsef4_weblinks','',0,1,1,1,'{\"name\":\"WebLinks\",\"type\":\"sef_ext\",\"creationDate\":\"8. March 2012\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.4\",\"description\":\"Adds SEO support for WebLinks component.\",\"group\":\"\",\"filename\":\"com_weblinks\"}','','','',0,'0000-00-00 00:00:00',0,0),
	(10021,0,'Wrapper','sef_ext','ext_joomsef4_wrapper','',0,1,1,1,'{\"name\":\"Wrapper\",\"type\":\"sef_ext\",\"creationDate\":\"10. January 2012\",\"author\":\"ARTIO s.r.o.\",\"copyright\":\"ARTIO s.r.o.\",\"authorEmail\":\"info@artio.net\",\"authorUrl\":\"www.artio.net\",\"version\":\"3.0.3\",\"description\":\"Adds SEO support for Wrapper component.\",\"group\":\"\",\"filename\":\"com_wrapper\"}','ignoreSource=0\nitemid=1','','',0,'0000-00-00 00:00:00',0,0);

/*!40000 ALTER TABLE `tpps_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_fields`;

CREATE TABLE `tpps_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_fields_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_fields_categories`;

CREATE TABLE `tpps_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_fields_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_fields_groups`;

CREATE TABLE `tpps_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_fields_values
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_fields_values`;

CREATE TABLE `tpps_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_finder_filters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_filters`;

CREATE TABLE `tpps_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links`;

CREATE TABLE `tpps_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms0`;

CREATE TABLE `tpps_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms1`;

CREATE TABLE `tpps_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms2`;

CREATE TABLE `tpps_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms3`;

CREATE TABLE `tpps_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms4`;

CREATE TABLE `tpps_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms5`;

CREATE TABLE `tpps_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms6`;

CREATE TABLE `tpps_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms7`;

CREATE TABLE `tpps_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms8
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms8`;

CREATE TABLE `tpps_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_terms9
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_terms9`;

CREATE TABLE `tpps_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_termsa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_termsa`;

CREATE TABLE `tpps_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_termsb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_termsb`;

CREATE TABLE `tpps_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_termsc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_termsc`;

CREATE TABLE `tpps_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_termsd
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_termsd`;

CREATE TABLE `tpps_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_termse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_termse`;

CREATE TABLE `tpps_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_links_termsf
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_links_termsf`;

CREATE TABLE `tpps_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_taxonomy`;

CREATE TABLE `tpps_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `tpps_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `tpps_finder_taxonomy` DISABLE KEYS */;

INSERT INTO `tpps_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`)
VALUES
	(1,0,'ROOT',0,0,0);

/*!40000 ALTER TABLE `tpps_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_finder_taxonomy_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_taxonomy_map`;

CREATE TABLE `tpps_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_terms`;

CREATE TABLE `tpps_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_terms_common
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_terms_common`;

CREATE TABLE `tpps_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `tpps_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `tpps_finder_terms_common` DISABLE KEYS */;

INSERT INTO `tpps_finder_terms_common` (`term`, `language`)
VALUES
	('a','en'),
	('about','en'),
	('after','en'),
	('ago','en'),
	('all','en'),
	('am','en'),
	('an','en'),
	('and','en'),
	('any','en'),
	('are','en'),
	('aren\'t','en'),
	('as','en'),
	('at','en'),
	('be','en'),
	('but','en'),
	('by','en'),
	('for','en'),
	('from','en'),
	('get','en'),
	('go','en'),
	('how','en'),
	('if','en'),
	('in','en'),
	('into','en'),
	('is','en'),
	('isn\'t','en'),
	('it','en'),
	('its','en'),
	('me','en'),
	('more','en'),
	('most','en'),
	('must','en'),
	('my','en'),
	('new','en'),
	('no','en'),
	('none','en'),
	('not','en'),
	('nothing','en'),
	('of','en'),
	('off','en'),
	('often','en'),
	('old','en'),
	('on','en'),
	('onc','en'),
	('once','en'),
	('only','en'),
	('or','en'),
	('other','en'),
	('our','en'),
	('ours','en'),
	('out','en'),
	('over','en'),
	('page','en'),
	('she','en'),
	('should','en'),
	('small','en'),
	('so','en'),
	('some','en'),
	('than','en'),
	('thank','en'),
	('that','en'),
	('the','en'),
	('their','en'),
	('theirs','en'),
	('them','en'),
	('then','en'),
	('there','en'),
	('these','en'),
	('they','en'),
	('this','en'),
	('those','en'),
	('thus','en'),
	('time','en'),
	('times','en'),
	('to','en'),
	('too','en'),
	('true','en'),
	('under','en'),
	('until','en'),
	('up','en'),
	('upon','en'),
	('use','en'),
	('user','en'),
	('users','en'),
	('version','en'),
	('very','en'),
	('via','en'),
	('want','en'),
	('was','en'),
	('way','en'),
	('were','en'),
	('what','en'),
	('when','en'),
	('where','en'),
	('which','en'),
	('who','en'),
	('whom','en'),
	('whose','en'),
	('why','en'),
	('wide','en'),
	('will','en'),
	('with','en'),
	('within','en'),
	('without','en'),
	('would','en'),
	('yes','en'),
	('yet','en'),
	('you','en'),
	('your','en'),
	('yours','en');

/*!40000 ALTER TABLE `tpps_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_finder_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_tokens`;

CREATE TABLE `tpps_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_tokens_aggregate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_tokens_aggregate`;

CREATE TABLE `tpps_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_finder_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_finder_types`;

CREATE TABLE `tpps_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table tpps_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_languages`;

CREATE TABLE `tpps_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_languages` WRITE;
/*!40000 ALTER TABLE `tpps_languages` DISABLE KEYS */;

INSERT INTO `tpps_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`)
VALUES
	(1,0,X'656E2D4742','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);

/*!40000 ALTER TABLE `tpps_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_menu`;

CREATE TABLE `tpps_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_menu` WRITE;
/*!40000 ALTER TABLE `tpps_menu` DISABLE KEYS */;

INSERT INTO `tpps_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`)
VALUES
	(1,'','Menu_Item_Root',X'726F6F74','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,121,0,'*',0),
	(2,'main','com_banners',X'42616E6E657273','','Banners','index.php?option=com_banners','component',1,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),
	(3,'main','com_banners',X'42616E6E657273','','Banners/Banners','index.php?option=com_banners','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),
	(4,'main','com_banners_categories',X'43617465676F72696573','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',1,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),
	(5,'main','com_banners_clients',X'436C69656E7473','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),
	(6,'main','com_banners_tracks',X'547261636B73','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),
	(7,'main','com_contact',X'436F6E7461637473','','Contacts','index.php?option=com_contact','component',1,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),
	(8,'main','com_contact_contacts',X'436F6E7461637473','','Contacts/Contacts','index.php?option=com_contact','component',1,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),
	(9,'main','com_contact_categories',X'43617465676F72696573','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',1,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),
	(10,'main','com_messages',X'4D6573736167696E67','','Messaging','index.php?option=com_messages','component',1,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,20,0,'*',1),
	(11,'main','com_messages_add',X'4E65772050726976617465204D657373616765','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',1,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),
	(13,'main','com_newsfeeds',X'4E657773204665656473','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',21,26,0,'*',1),
	(14,'main','com_newsfeeds_feeds',X'4665656473','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',1,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',22,23,0,'*',1),
	(15,'main','com_newsfeeds_categories',X'43617465676F72696573','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',1,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',24,25,0,'*',1),
	(16,'main','com_redirect',X'5265646972656374','','Redirect','index.php?option=com_redirect','component',1,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',27,28,0,'*',1),
	(17,'main','com_search',X'426173696320536561726368','','Basic Search','index.php?option=com_search','component',1,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',29,30,0,'*',1),
	(18,'main','com_finder',X'536D61727420536561726368','','Smart Search','index.php?option=com_finder','component',1,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),
	(19,'main','com_joomlaupdate',X'4A6F6F6D6C612120557064617465','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',33,34,0,'*',1),
	(20,'main','com_tags',X'54616773','','Tags','index.php?option=com_tags','component',1,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',35,36,0,'',1),
	(21,'main','com_postinstall',X'506F73742D696E7374616C6C6174696F6E206D65737361676573','','Post-installation messages','index.php?option=com_postinstall','component',1,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',37,38,0,'*',1),
	(22,'main','com_associations',X'4D756C74696C696E6775616C204173736F63696174696F6E73','','Multilingual Associations','index.php?option=com_associations','component',1,1,1,34,0,'0000-00-00 00:00:00',0,0,'class:associations',0,'',39,40,0,'*',1),
	(101,'mainmenu','Trang chủ',X'7472616E672D6368','','trang-ch','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',41,42,1,'*',0),
	(144,'main','COM_PHOCAGALLERY',X'636F6D2D70686F636167616C6C657279','','com-phocagallery','index.php?option=com_phocagallery','component',1,1,1,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu.png',0,'{}',43,70,0,'',1),
	(145,'main','COM_PHOCAGALLERY_CONTROLPANEL',X'636F6D2D70686F636167616C6C6572792D636F6E74726F6C70616E656C','','com-phocagallery/com-phocagallery-controlpanel','index.php?option=com_phocagallery','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-control-panel.png',0,'{}',44,45,0,'',1),
	(146,'main','COM_PHOCAGALLERY_IMAGES',X'636F6D2D70686F636167616C6C6572792D696D61676573','','com-phocagallery/com-phocagallery-images','index.php?option=com_phocagallery&view=phocagalleryimgs','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-gal.png',0,'{}',46,47,0,'',1),
	(147,'main','COM_PHOCAGALLERY_CATEGORIES',X'636F6D2D70686F636167616C6C6572792D63617465676F72696573','','com-phocagallery/com-phocagallery-categories','index.php?option=com_phocagallery&view=phocagallerycs','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-cat.png',0,'{}',48,49,0,'',1),
	(148,'main','COM_PHOCAGALLERY_THEMES',X'636F6D2D70686F636167616C6C6572792D7468656D6573','','com-phocagallery/com-phocagallery-themes','index.php?option=com_phocagallery&view=phocagalleryt','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-theme.png',0,'{}',50,51,0,'',1),
	(149,'main','COM_PHOCAGALLERY_CATEGORYRATING',X'636F6D2D70686F636167616C6C6572792D63617465676F7279726174696E67','','com-phocagallery/com-phocagallery-categoryrating','index.php?option=com_phocagallery&view=phocagalleryra','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote.png',0,'{}',52,53,0,'',1),
	(150,'main','COM_PHOCAGALLERY_IMAGERATING',X'636F6D2D70686F636167616C6C6572792D696D616765726174696E67','','com-phocagallery/com-phocagallery-imagerating','index.php?option=com_phocagallery&view=phocagalleryraimg','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote-img.png',0,'{}',54,55,0,'',1),
	(151,'main','COM_PHOCAGALLERY_CATEGORYCOMMENTS',X'636F6D2D70686F636167616C6C6572792D63617465676F7279636F6D6D656E7473','','com-phocagallery/com-phocagallery-categorycomments','index.php?option=com_phocagallery&view=phocagallerycos','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment.png',0,'{}',56,57,0,'',1),
	(152,'main','COM_PHOCAGALLERY_IMAGECOMMENTS',X'636F6D2D70686F636167616C6C6572792D696D616765636F6D6D656E7473','','com-phocagallery/com-phocagallery-imagecomments','index.php?option=com_phocagallery&view=phocagallerycoimgs','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment-img.png',0,'{}',58,59,0,'',1),
	(153,'main','COM_PHOCAGALLERY_USERS',X'636F6D2D70686F636167616C6C6572792D7573657273','','com-phocagallery/com-phocagallery-users','index.php?option=com_phocagallery&view=phocagalleryusers','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-users.png',0,'{}',60,61,0,'',1),
	(154,'main','COM_PHOCAGALLERY_FB',X'636F6D2D70686F636167616C6C6572792D6662','','com-phocagallery/com-phocagallery-fb','index.php?option=com_phocagallery&view=phocagalleryfbs','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-fb.png',0,'{}',62,63,0,'',1),
	(155,'main','COM_PHOCAGALLERY_TAGS',X'636F6D2D70686F636167616C6C6572792D74616773','','com-phocagallery/com-phocagallery-tags','index.php?option=com_phocagallery&view=phocagallerytags','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-tags.png',0,'{}',64,65,0,'',1),
	(156,'main','COM_PHOCAGALLERY_STYLES',X'636F6D2D70686F636167616C6C6572792D7374796C6573','','com-phocagallery/com-phocagallery-styles','index.php?option=com_phocagallery&view=phocagalleryefs','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-styles.png',0,'{}',66,67,0,'',1),
	(157,'main','COM_PHOCAGALLERY_INFO',X'636F6D2D70686F636167616C6C6572792D696E666F','','com-phocagallery/com-phocagallery-info','index.php?option=com_phocagallery&view=phocagalleryin','component',1,144,2,10003,0,'0000-00-00 00:00:00',0,1,'media/com_phocagallery/images/administrator/icon-16-pg-menu-info.png',0,'{}',68,69,0,'',1),
	(158,'main','COM_PRODUCTS',X'636F6D2D70726F6475637473','','com-products','index.php?option=com_products','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',71,74,0,'',1),
	(159,'main','COM_PRODUCTS_TITLE_PRODUCTS',X'636F6D2D70726F64756374732D7469746C652D70726F6475637473','','com-products/com-products-title-products','index.php?option=com_products&view=products','component',1,158,2,10005,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',72,73,0,'',1),
	(160,'mainmenu','Bánh HQ',X'62616E682D6871','','banh-hq','index.php?option=com_products&view=products&id_category=1','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',75,76,0,'*',0),
	(161,'mainmenu','Kẹo HQ',X'6B2D6F2D6871','','k-o-hq','index.php?option=com_products&view=products&id_category=2','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',77,78,0,'*',0),
	(162,'mainmenu','Mì HQ',X'6D692D6871','','mi-hq','index.php?option=com_products&view=products&id_category=3','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',79,80,0,'*',0),
	(163,'mainmenu','Nước Gạo HQ',X'6E752D632D672D6F2D6871','','nu-c-g-o-hq','index.php?option=com_products&view=products&id_category=4','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',81,82,0,'*',0),
	(164,'mainmenu','Nước Ngọt HQ',X'6E752D632D6E672D742D6871','','nu-c-ng-t-hq','index.php?option=com_products&view=products&id_category=5','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',83,84,0,'*',0),
	(165,'mainmenu','Nước Ngọt Thái Lan',X'6E752D632D6E672D742D746861692D6C616E','','nu-c-ng-t-thai-lan','index.php?option=com_products&view=products&id_category=6','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',85,86,0,'*',0),
	(166,'mainmenu','Nước Tăng Lực Thái Lan',X'6E752D632D74616E672D6C2D632D746861692D6C616E','','nu-c-tang-l-c-thai-lan','index.php?option=com_products&view=products&id_category=7','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',87,88,0,'*',0),
	(167,'mainmenu','Nước Trái Cây Thái Lan',X'6E752D632D747261692D6361792D746861692D6C616E','','nu-c-trai-cay-thai-lan','index.php?option=com_products&view=products&id_category=8','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',89,90,0,'*',0),
	(168,'mainmenu','Rong biển HQ',X'726F6E672D6269E1BB836E2D6871','','rong-biển-hq','index.php?option=com_products&view=products&id_category=9','component',1,1,1,10005,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',91,92,0,'*',0),
	(169,'main','COM_SEF',X'636F6D5F736566','','com_sef','index.php?option=com_sef','component',1,1,1,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon.png',0,'{}',93,120,0,'',1),
	(170,'main','COM_SEF_CPANEL',X'636F6D5F7365665F6370616E656C','','com_sef/com_sef_cpanel','index.php?option=com_sef','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-sefcpanel.png',0,'{}',94,95,0,'',1),
	(171,'main','COM_SEF_CONFIG',X'636F6D5F7365665F636F6E666967','','com_sef/com_sef_config','index.php?option=com_sef&controller=config&task=edit','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-sefconfig.png',0,'{}',96,97,0,'',1),
	(172,'main','COM_SEF_EXTENSIONS',X'636F6D5F7365665F657874656E73696F6E73','','com_sef/com_sef_extensions','index.php?option=com_sef&controller=extension','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-sefplugin.png',0,'{}',98,99,0,'',1),
	(173,'main','COM_SEF_HTACCESS',X'636F6D5F7365665F6874616363657373','','com_sef/com_sef_htaccess','index.php?option=com_sef&controller=htaccess','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-edit.png',0,'{}',100,101,0,'',1),
	(174,'main','COM_SEF_SEPARATOR1',X'636F6D5F7365665F736570617261746F7231','','com_sef/com_sef_separator1','#','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'separator',0,'{}',102,103,0,'',1),
	(175,'main','COM_SEF_SEFURLS',X'636F6D5F7365665F73656675726C73','','com_sef/com_sef_sefurls','index.php?option=com_sef&controller=sefurls&viewmode=3','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-url-edit.png',0,'{}',104,105,0,'',1),
	(176,'main','COM_SEF_METATAGS',X'636F6D5F7365665F6D65746174616773','','com_sef/com_sef_metatags','index.php?option=com_sef&controller=metatags','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-manage-tags.png',0,'{}',106,107,0,'',1),
	(177,'main','COM_SEF_SITEMAP',X'636F6D5F7365665F736974656D6170','','com_sef/com_sef_sitemap','index.php?option=com_sef&controller=sitemap','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-manage-sitemap.png',0,'{}',108,109,0,'',1),
	(178,'main','COM_SEF_REDIRECTS',X'636F6D5F7365665F726564697265637473','','com_sef/com_sef_redirects','index.php?option=com_sef&controller=movedurls','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-301-redirects.png',0,'{}',110,111,0,'',1),
	(179,'main','COM_SEF_STATISTICS',X'636F6D5F7365665F73746174697374696373','','com_sef/com_sef_statistics','index.php?option=com_sef&controller=statistics','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-statistics.png',0,'{}',112,113,0,'',1),
	(180,'main','COM_SEF_SEPARATOR2',X'636F6D5F7365665F736570617261746F7232','','com_sef/com_sef_separator2','#','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'separator',0,'{}',114,115,0,'',1),
	(181,'main','COM_SEF_UPGRADE',X'636F6D5F7365665F75706772616465','','com_sef/com_sef_upgrade','index.php?option=com_sef&task=showUpgrade','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-update.png',0,'{}',116,117,0,'',1),
	(182,'main','COM_SEF_HELP_AND_SUPPORT',X'636F6D5F7365665F68656C705F616E645F737570706F7274','','com_sef/com_sef_help_and_support','index.php?option=com_sef&controller=info&task=help','component',1,169,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_sef/assets/images/icon-16-help.png',0,'{}',118,119,0,'',1);

/*!40000 ALTER TABLE `tpps_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_menu_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_menu_types`;

CREATE TABLE `tpps_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_menu_types` WRITE;
/*!40000 ALTER TABLE `tpps_menu_types` DISABLE KEYS */;

INSERT INTO `tpps_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`)
VALUES
	(1,0,'mainmenu','Main Menu','The main menu for the site',0);

/*!40000 ALTER TABLE `tpps_menu_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_messages`;

CREATE TABLE `tpps_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_messages_cfg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_messages_cfg`;

CREATE TABLE `tpps_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_modules`;

CREATE TABLE `tpps_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_modules` WRITE;
/*!40000 ALTER TABLE `tpps_modules` DISABLE KEYS */;

INSERT INTO `tpps_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`)
VALUES
	(1,39,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
	(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),
	(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),
	(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),
	(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
	(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),
	(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),
	(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),
	(16,50,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),
	(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),
	(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
	(87,55,'Sample Data','','',0,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_sampledata',6,1,'{}',1,'*');

/*!40000 ALTER TABLE `tpps_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_modules_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_modules_menu`;

CREATE TABLE `tpps_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_modules_menu` WRITE;
/*!40000 ALTER TABLE `tpps_modules_menu` DISABLE KEYS */;

INSERT INTO `tpps_modules_menu` (`moduleid`, `menuid`)
VALUES
	(1,0),
	(2,0),
	(3,0),
	(4,0),
	(6,0),
	(7,0),
	(8,0),
	(9,0),
	(10,0),
	(12,0),
	(13,0),
	(14,0),
	(15,0),
	(16,0),
	(17,0),
	(79,0),
	(86,0),
	(87,0);

/*!40000 ALTER TABLE `tpps_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_newsfeeds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_newsfeeds`;

CREATE TABLE `tpps_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_overrider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_overrider`;

CREATE TABLE `tpps_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_phocagallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery`;

CREATE TABLE `tpps_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `format` tinyint(1) NOT NULL DEFAULT '0',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `pcproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tpps_phocagallery` WRITE;
/*!40000 ALTER TABLE `tpps_phocagallery` DISABLE KEYS */;

INSERT INTO `tpps_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `format`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `pcproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`)
VALUES
	(1,1,0,'Bánh Cốm 100g HQ - 8801204401042','bánh-cốm-100g-hq-8801204401042','banh-hq/1.banh com 100g hq - 8801204401042.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1576995,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(2,1,0,'Bánh Cốm 100g HQ - 8801204401042','bánh-cốm-100g-hq-8801204401042','banh-hq/2. banh com 100g hq - 8801204401042.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1568611,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(3,1,0,'Bánh Snack Hành CW 83g - 8801204901627 ','bánh-snack-hành-cw-83g-8801204901627','banh-hq/3. banh snack hanh cw 83g - 8801204901627 .jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1686898,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(4,1,0,'Bánh Snack Hành CW 83g - 8801204901627 ','bánh-snack-hành-cw-83g-8801204901627','banh-hq/4. banh snack hanh cw 83g - 8801204901627 .jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1862614,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(5,1,0,'Bánh Snack Tôm CW 113g - 8801204901597 ','bánh-snack-tôm-cw-113g-8801204901597','banh-hq/5. banh snack tom cw 113g - 8801204901597 .jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1729903,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(6,1,0,'Bánh Snack Tôm CW 113g - 8801204901597 ','bánh-snack-tôm-cw-113g-8801204901597','banh-hq/6. banh snack tom cw 113g - 8801204901597 .jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1981307,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(7,1,0,'Bánh Snack Thịt Xông Khói CW 75g - 8801204900743','bánh-snack-thịt-xông-khói-cw-75g-8801204900743','banh-hq/7. banh snack thit xong khoi cw 75g - 8801204900743.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1904398,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(8,1,0,'Bánh Snack Thịt Xông Khói CW 75g - 8801204900743','bánh-snack-thịt-xông-khói-cw-75g-8801204900743','banh-hq/8. banh snack thit xong khoi cw 75g - 8801204900743.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1949841,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(9,1,0,'Bánh Snack Tôm NS B7 90g - 8801043035989','bánh-snack-tôm-ns-b7-90g-8801043035989','banh-hq/9. banh snack tom ns b7 90g - 8801043035989.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1828610,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(10,1,0,'Bánh Snack Tôm NS B7 90g - 8801043035989','bánh-snack-tôm-ns-b7-90g-8801043035989','banh-hq/10. banh snack tom ns b7 90g - 8801043035989.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2104098,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(11,1,0,'Bánh Snack Tôm Cay NS B8 90g - 8801043036078','bánh-snack-tôm-cay-ns-b8-90g-8801043036078','banh-hq/11. banh snack tom cay ns b8 90g - 8801043036078.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1814831,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(12,1,0,'Bánh Snack Tôm Cay NS B8 90g - 8801043036078','bánh-snack-tôm-cay-ns-b8-90g-8801043036078','banh-hq/12. banh snack tom cay ns b8 90g - 8801043036078.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2051181,1,1,0,'0000-00-00 00:00:00',12,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(13,1,0,'Bánh Snack Tôm Mè NS 80g - 8801043036054','bánh-snack-tôm-mè-ns-80g-8801043036054','banh-hq/13. banh snack tom me ns 80g - 8801043036054.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1674142,1,1,0,'0000-00-00 00:00:00',13,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(14,1,0,'Bánh Snack Tôm Mè NS 80g - 8801043036054','bánh-snack-tôm-mè-ns-80g-8801043036054','banh-hq/14. banh snack tom me ns 80g - 8801043036054.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2040244,1,1,0,'0000-00-00 00:00:00',14,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(15,1,0,'Bánh Snack Hành B1 84g - 8801043036597','bánh-snack-hành-b1-84g-8801043036597','banh-hq/15. banh snack hanh b1 84g - 8801043036597.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1848585,1,1,0,'0000-00-00 00:00:00',15,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(16,1,0,'Bánh Snack Hành B1 84g - 8801043036597','bánh-snack-hành-b1-84g-8801043036597','banh-hq/16. banh snack hanh b1 84g - 8801043036597.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1930666,1,1,0,'0000-00-00 00:00:00',16,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(17,1,0,'Bánh Phồng Tôm B2 68g - 8801043036399','bánh-phồng-tôm-b2-68g-8801043036399','banh-hq/17. banh phong tom b2 68g - 8801043036399.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,512257,1,1,0,'0000-00-00 00:00:00',17,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(18,1,0,'Bánh Phồng Tôm B2 68g - 8801043036399','bánh-phồng-tôm-b2-68g-8801043036399','banh-hq/18. banh phong tom b2 68g - 8801043036399.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,402157,1,1,0,'0000-00-00 00:00:00',18,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(19,2,0,'Kẹo dẻo Gấu Vita HQ 50g - 8801204505108','kẹo-dẻo-gấu-vita-hq-50g-8801204505108','keo-hq/1. keo deo gau vita hq 50g - 8801204505108.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1733664,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(20,2,0,'Kẹo dẻo Gấu Vita HQ 50g - 8801204505108','kẹo-dẻo-gấu-vita-hq-50g-8801204505108','keo-hq/2. keo deo gau vita hq 50g - 8801204505108.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2189331,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(21,2,0,'Kẹo Dẻo Khủng Long Kỉ HQ 50g - 8801204505016','kẹo-dẻo-khủng-long-kỉ-hq-50g-8801204505016','keo-hq/3. keo deo khung long ki hq 50g - 8801204505016.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1928189,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(22,2,0,'Kẹo Dẻo Khủng Long Kỉ HQ 50g - 8801204505016','kẹo-dẻo-khủng-long-kỉ-hq-50g-8801204505016','keo-hq/4. keo deo khung long ki hq 50g - 8801204505016.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2141888,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(23,2,0,'Kẹo Dẻo Tổng Hợp 50g - 8801204505009','kẹo-dẻo-tổng-hợp-50g-8801204505009','keo-hq/5.keo deo tong hop 50g - 8801204505009.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1897598,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(24,2,0,'Kẹo Dẻo Tổng Hợp 50g - 8801204505009','kẹo-dẻo-tổng-hợp-50g-8801204505009','keo-hq/6.keo deo tong hop 50g - 8801204505009.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2136842,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(25,2,0,'Kẹo Dẻo Trái Cây 50g - 8801204505023','kẹo-dẻo-trái-cây-50g-8801204505023','keo-hq/7. keo deo trai cay 50g - 8801204505023.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2126888,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(26,2,0,'Kẹo Dẻo Trái Cây 50g - 8801204505023','8-keo-deo-trai-cay-50g-8801204505023','keo-hq/8. keo deo trai cay 50g - 8801204505023.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2253332,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(27,2,0,'Kẹo Trái Cây Bi 400g HQ - 8801204308075 ','kẹo-trái-cây-bi-400g-hq-8801204308075','keo-hq/9. keo trai cay bi 400g hq - 8801204308075 .jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1712011,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(28,2,0,'Kẹo Trái Cây Bi 400g HQ - 8801204308075 ','kẹo-trái-cây-bi-400g-hq-8801204308075','keo-hq/10. keo trai cay bi 400g hq - 8801204308075 .jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1591987,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(29,2,0,'Kẹo Vị Hồng Sâm 300g - 8801204307177','kẹo-vị-hồng-sâm-300g-8801204307177','keo-hq/11. keo vi hong sam 300g - 8801204307177.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2118077,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(30,2,0,'Kẹo Vị Hồng Sâm 300g - 8801204307177','kẹo-vị-hồng-sâm-300g-8801204307177','keo-hq/12. keo vi hong sam 300g - 8801204307177.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2156843,1,1,0,'0000-00-00 00:00:00',12,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(31,2,0,'Kẹo Hồng Sâm Dẻo 400g - 8801204504156','kẹo-hồng-sâm-dẻo-400g-8801204504156','keo-hq/13. keo hong sam deo 400g - 8801204504156.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1943427,1,1,0,'0000-00-00 00:00:00',13,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(32,2,0,'Kẹo Hồng Sâm Dẻo 400g - 8801204504156','kẹo-hồng-sâm-dẻo-400g-8801204504156','keo-hq/14. keo hong sam deo 400g - 8801204504156.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1949962,1,1,0,'0000-00-00 00:00:00',14,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(33,2,0,'Kẹo Cốm 100g - 8801204307764','kẹo-cốm-100g-8801204307764','keo-hq/15. keo com 100g - 8801204307764.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1941495,1,1,0,'0000-00-00 00:00:00',15,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(34,2,0,'Kẹo Cốm 100g - 8801204307764','kẹo-cốm-100g-8801204307764','keo-hq/16. keo com 100g - 8801204307764.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2151553,1,1,0,'0000-00-00 00:00:00',16,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(35,2,0,'Kẹo Bí 100g - 8801204307948','kẹo-bí-100g-8801204307948','keo-hq/17. keo bi 100g - 8801204307948.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2283307,1,1,0,'0000-00-00 00:00:00',17,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(36,2,0,'Kẹo Bí 100g - 8801204307948','kẹo-bí-100g-8801204307948','keo-hq/18. keo bi 100g - 8801204307948.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2328462,1,1,0,'0000-00-00 00:00:00',18,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(37,2,0,'Kẹo Cam 100g - 8801204307108','kẹo-cam-100g-8801204307108','keo-hq/19. keo cam 100g - 8801204307108.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1956744,1,1,0,'0000-00-00 00:00:00',19,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(38,2,0,'Kẹo Cam 100g - 8801204307108','kẹo-cam-100g-8801204307108','keo-hq/20. keo cam 100g - 8801204307108.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2066995,1,1,0,'0000-00-00 00:00:00',20,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(39,2,0,'Kẹo Dâu 100g - 8801204307122','kẹo-dâu-100g-8801204307122','keo-hq/21. keo dau 100g - 8801204307122.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1885011,1,1,0,'0000-00-00 00:00:00',21,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(40,2,0,'Kẹo Dâu 100g - 8801204307122','kẹo-dâu-100g-8801204307122','keo-hq/22. keo dau 100g - 8801204307122.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,1893548,1,1,0,'0000-00-00 00:00:00',22,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(41,2,0,'Kẹo Việt Quất 100g - 8801204307115','kẹo-việt-quất-100g-8801204307115','keo-hq/23. keo viet quat 100g - 8801204307115.jpg',2,'','2018-09-18 00:00:00',0,'','',0,'',0,'',0,0,2246166,1,1,0,'0000-00-00 00:00:00',23,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(42,3,0,'Mì Ly Shin A1 65g - 8801043015714','mì-ly-shin-a1-65g-8801043015714','mi-hq/1. mi ly shin a1 65g - 8801043015714.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1804643,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(43,3,0,'Mì Ly Shin A1 65g - 8801043015714','mì-ly-shin-a1-65g-8801043015714','mi-hq/2. mi ly shin a1 65g - 8801043015714.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1582798,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(44,3,0,'Mì Tô Shin A16 114g - 8801043015981','mì-tô-shin-a16-114g-8801043015981','mi-hq/3. mi to shin a16 114g - 8801043015981.jpg',1,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2095224,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(45,3,0,'Mì Heo Vàng A34 125g - 8801043014731','4-mi-heo-vang-a34-125g-8801043014731','mi-hq/4. mi heo vang a34 125g - 8801043014731.jpg',1,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1974251,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(46,3,0,'Mì Heo Vàng A34 125g - 8801043014731','mì-heo-vàng-a34-125g-8801043014731','mi-hq/5. mi heo vang a34 125g - 8801043014731.jpg',1,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2247008,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(47,3,0,'Mì Shin Heo Nấm A6 120g - 8801043014809','mì-shin-heo-nấm-a6-120g-8801043014809','mi-hq/6. mi shin heo nam a6 120g - 8801043014809.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1958062,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(48,3,0,'Mì Shin Heo Nấm A6 120g - 8801043014809','mì-shin-heo-nấm-a6-120g-8801043014809','mi-hq/7. mi shin heo nam a6 120g - 8801043014809.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2126340,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(49,3,0,'Mì Bò A2 120g - 8801043014984','mì-bò-a2-120g-8801043014984','mi-hq/8. mi bo a2 120g - 8801043014984.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2008278,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(50,3,0,'Mì Bò A2 120g - 8801043014984','mì-bò-a2-120g-8801043014984','mi-hq/9. mi bo a2 120g - 8801043014984.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2155114,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(51,3,0,'Mì Trộn Tương A26 140g - 8801043015226','mì-trộn-tương-a26-140g-8801043015226','mi-hq/10. mi tron tuong a26 140g - 8801043015226.jpg',1,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2091761,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(52,3,0,'Mì Trộn Tương A26 140g - 8801043015226','mì-trộn-tương-a26-140g-8801043015226','mi-hq/11. mi tron tuong a26 140g - 8801043015226.jpg',1,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2197383,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(53,3,0,'Mì Vị Mực A11 124g - 8801043015110','mì-vị-mực-a11-124g-8801043015110','mi-hq/12. mi vi muc a11 124g - 8801043015110.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2122129,1,1,0,'0000-00-00 00:00:00',12,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(54,3,0,'Mì Vị Mực A11 124g - 8801043015110','mì-vị-mực-a11-124g-8801043015110','mi-hq/13. mi vi muc a11 124g - 8801043015110.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2261007,1,1,0,'0000-00-00 00:00:00',13,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(55,4,0,'Nước Gạo Lức SY 1.5L - 8801033801150','nước-gạo-lức-sy-1-5l-8801033801150','nuoc-gao-hq/1.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,926331,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(56,4,0,'Nước Gạo Lức SY 1.5L - 8801033801150','nước-gạo-lức-sy-1-5l-8801033801150','nuoc-gao-hq/2.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2069358,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(57,4,0,'Nước Gạo 1.5L - 8801674710163','nước-gạo-1-5l-8801674710163','nuoc-gao-hq/3.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2049118,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(58,4,0,'Nước Gạo 1.5L - 8801674710163','nước-gạo-1-5l-8801674710163','nuoc-gao-hq/4.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2019058,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(59,4,0,'Nước gạo HQ 500ml OKF - 884394007995','nước-gạo-hq-500ml-okf-884394007995','nuoc-gao-hq/5.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,987340,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(60,4,0,'Nước gạo HQ 500ml OKF - 884394007995','nước-gạo-hq-500ml-okf-884394007995','nuoc-gao-hq/6.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,992193,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(61,4,0,'Nước Sữa gạo HQ 1500ml OKF - 884394008473','nước-sữa-gạo-hq-1500ml-okf-884394008473','nuoc-gao-hq/7.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,932231,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(62,4,0,'Nước Sữa gạo HQ 1500ml OKF - 884394008473','nước-sữa-gạo-hq-1500ml-okf-884394008473','nuoc-gao-hq/8.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2073203,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(63,5,0,'Nước Soda Sữa HQ 250ml - 8801056154011 ','nước-soda-sữa-hq-250ml-8801056154011','nuoc-ngot-hq/1. nc soda sa hq 250ml - 8801056154011 .jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1945259,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(64,5,0,'Nước Soda Sữa HQ 250ml - 8801056154011 ','nước-soda-sữa-hq-250ml-8801056154011','nuoc-ngot-hq/2. nc soda sa hq 250ml - 8801056154011 .jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1908967,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(65,6,0,'Nước Nho Đen Hạt É Thái 290ml - 885000409384','nước-nho-đen-hạt-é-thái-290ml-885000409384','nuoc-ngot-tl/1.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,961840,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(66,6,0,'Nước Nho Đen Hạt É Thái 290ml - 8850004093841','nước-nho-đen-hạt-é-thái-290ml-8850004093841','nuoc-ngot-tl/2. nc nho en ht  thi 290ml - 8850004093841.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2061838,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(67,6,0,'Nước Coctail Hạt É Thái 290ml - 8850004092141','nước-coctail-hạt-é-thái-290ml-8850004092141','nuoc-ngot-tl/3. nc coctail ht  thi 290ml - 8850004092141.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2090576,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(68,6,0,'Nước Coctail Hạt É Thái 290ml - 8850004092141','nước-coctail-hạt-é-thái-290ml-8850004092141','nuoc-ngot-tl/4.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,930003,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(69,6,0,'Nước Dứa Hạt É Thái 290ml - 8850004093827','nước-dứa-hạt-é-thái-290ml-8850004093827','nuoc-ngot-tl/5.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1063121,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(70,6,0,'Nước Dứa Hạt É Thái 290ml - 8850004093827','nước-dứa-hạt-é-thái-290ml-8850004093827','nuoc-ngot-tl/6.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1024298,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(71,6,0,'Nước Nho Trắng Hạt É Thái 290ml - 8850004092318','nước-nho-trắng-hạt-é-thái-290ml-8850004092318','nuoc-ngot-tl/7. nc nho trng ht  thi 290ml - 8850004092318.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1890898,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(72,6,0,'Nước Nho Trắng Hạt É Thái 290ml - 8850004092318','nước-nho-trắng-hạt-é-thái-290ml-8850004092318','nuoc-ngot-tl/8.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1079073,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(73,6,0,'Nước Dâu Tây Hạt É Thái 290ml - 8850004093834','nước-dâu-tây-hạt-é-thái-290ml-8850004093834','nuoc-ngot-tl/9.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1059691,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(74,6,0,'Nước Dâu Tây Hạt É Thái 290ml - 8850004093834','nước-dâu-tây-hạt-é-thái-290ml-8850004093834','nuoc-ngot-tl/10.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1021126,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(75,6,0,'Nước Dừa Hạt É Thái 290ml - 8850004093773','nước-dừa-hạt-é-thái-290ml-8850004093773','nuoc-ngot-tl/11. nc da ht  thi 290ml - 8850004093773.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1909377,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(76,6,0,'Nước Dừa Hạt É Thái 290ml - 8850004093773','nước-dừa-hạt-é-thái-290ml-8850004093773','nuoc-ngot-tl/12.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1030938,1,1,0,'0000-00-00 00:00:00',12,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(77,7,0,'Nước Tăng Lực Thái Redbull 250ml - 8850228000151','nước-tăng-lực-thái-redbull-250ml-8850228000151','nuoc-tangluc-tl/1. nc tng lc thi redbull 250ml - 8850228000151.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1636301,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(78,7,0,'Nước Tăng Lực Thái Redbull 250ml - 8850228000151','nước-tăng-lực-thái-redbull-250ml-8850228000151','nuoc-tangluc-tl/2. nc tng lc thi redbull 250ml - 8850228000151.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1916682,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(79,7,0,'Nước Tăng Lực Thái Trâu Xanh 250ml - 8855790000028','nước-tăng-lực-thái-trâu-xanh-250ml-8855790000028','nuoc-tangluc-tl/3. nc tng lc thi tru xanh 250ml - 8855790000028.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1922971,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(80,7,0,'Nước Tăng Lực Thái Trâu Xanh 250ml - 8855790000028','nước-tăng-lực-thái-trâu-xanh-250ml-8855790000028','nuoc-tangluc-tl/4. nc tng lc thi tru xanh 250ml - 8855790000028.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,921926,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(81,7,0,'Nước Tăng Lực Thái Commando 250ml - 8853647000108','nước-tăng-lực-thái-commando-250ml-8853647000108','nuoc-tangluc-tl/5. nc tng lc thi commando 250ml - 8853647000108.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1967292,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(82,7,0,'Nước Tăng Lực Thái Commando 250ml - 8853647000108','nước-tăng-lực-thái-commando-250ml-8853647000108','nuoc-tangluc-tl/6. nc tng lc thi commando 250ml - 8853647000108.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1770063,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(83,7,0,'Nước Mirinda Thái 330ml - 8846000010050','nước-mirinda-thái-330ml-8846000010050','nuoc-tangluc-tl/7. nc mirinda thi 330ml - 8846000010050.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1925153,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(84,7,0,'Nước Mirinda Thái 330ml - 8846000010050','nước-mirinda-thái-330ml-8846000010050','nuoc-tangluc-tl/8. nc mirinda thi 330ml - 8846000010050.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1969415,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(85,8,0,'Nước Chaba Sữa Chuối Thái 230ml - 8854761394319','nước-chaba-sữa-chuối-thái-230ml-8854761394319','nuoc-traicay-tl/1.nc chaba sa chui thi 230ml - 8854761394319.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1632532,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(86,8,0,'Nước Chaba Sữa Chuối Thái 230ml - 8854761394319','nước-chaba-sữa-chuối-thái-230ml-8854761394319','nuoc-traicay-tl/2.nc chaba sa chui thi 230ml - 8854761394319.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1892361,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(87,8,0,'Nước Chaba Ổi Thái 230ml - 8854761994229','nước-chaba-ổi-thái-230ml-8854761994229','nuoc-traicay-tl/3.nc chaba i thi 230ml - 8854761994229.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1910824,1,1,0,'0000-00-00 00:00:00',3,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(88,8,0,'Nước Chaba Ổi Thái 230ml - 8854761994229','nước-chaba-ổi-thái-230ml-8854761994229','nuoc-traicay-tl/4.nc chaba i thi 230ml - 8854761994229.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2039311,1,1,0,'0000-00-00 00:00:00',4,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(89,8,0,'Nước Chaba Hạnh Nhân Thái 230ml - 8854761994205','nước-chaba-hạnh-nhân-thái-230ml-8854761994205','nuoc-traicay-tl/5.nc chaba hnh nhn thi 230ml - 8854761994205.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1997943,1,1,0,'0000-00-00 00:00:00',5,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(90,8,0,'Nước Chaba Hạnh Nhân Thái 230ml - 8854761994205','nước-chaba-hạnh-nhân-thái-230ml-8854761994205','nuoc-traicay-tl/6.nc chaba hnh nhn thi 230ml - 8854761994205.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1832336,1,1,0,'0000-00-00 00:00:00',6,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(91,8,0,'Nước Chaba Dừa Non Thái 230ml - 8854761184019','nước-chaba-dừa-non-thái-230ml-8854761184019','nuoc-traicay-tl/7.nc chaba da non thi 230ml - 8854761184019.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2095822,1,1,0,'0000-00-00 00:00:00',7,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(92,8,0,'Nước Chaba Dừa Non Thái 230ml - 8854761184019','nước-chaba-dừa-non-thái-230ml-8854761184019','nuoc-traicay-tl/8.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,941210,1,1,0,'0000-00-00 00:00:00',8,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(93,8,0,'Nước Chaba Sữa Dâu Thái 230ml - 8854761294312','nước-chaba-sữa-dâu-thái-230ml-8854761294312','nuoc-traicay-tl/9.nc chaba sa du thi 230ml - 8854761294312.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1636692,1,1,0,'0000-00-00 00:00:00',9,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(94,8,0,'Nước Chaba Sữa Dâu Thái 230ml - 8854761294312','nước-chaba-sữa-dâu-thái-230ml-8854761294312','nuoc-traicay-tl/10.nc chaba sa du thi 230ml - 8854761294312.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1821454,1,1,0,'0000-00-00 00:00:00',10,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(95,8,0,'Nước Chaba Nho Nha Đam Thái 230ml - 8854761364312','nước-chaba-nho-nha-đam-thái-230ml-8854761364312','nuoc-traicay-tl/11.nc chaba nho nha am thi 230ml - 8854761364312.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2046821,1,1,0,'0000-00-00 00:00:00',11,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(96,8,0,'Nước Chaba Nho Nha Đam Thái 230ml - 8854761364312','nước-chaba-nho-nha-đam-thái-230ml-8854761364312','nuoc-traicay-tl/12.nc chaba nho nha am thi 230ml - 8854761364312.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1907950,1,1,0,'0000-00-00 00:00:00',12,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(97,8,0,'Nước Chaba Xoài Thái 230ml - 8854761174010','nước-chaba-xoài-thái-230ml-8854761174010','nuoc-traicay-tl/13.nc chaba xoi thi 230ml - 8854761174010.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1950588,1,1,0,'0000-00-00 00:00:00',13,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(98,8,0,'Nước Chaba Xoài Thái 230ml - 8854761174010','nước-chaba-xoài-thái-230ml-8854761174010','nuoc-traicay-tl/14.nc chaba xoi thi 230ml - 8854761174010.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1979425,1,1,0,'0000-00-00 00:00:00',14,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(99,8,0,'Nước Chaba Sương Sáo Thái 230ml - 8854761214013','nước-chaba-sương-sáo-thái-230ml-8854761214013','nuoc-traicay-tl/15.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,979864,1,1,0,'0000-00-00 00:00:00',15,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(100,8,0,'Nước Chaba Sương Sáo Thái 230ml - 8854761214013','nước-chaba-sương-sáo-thái-230ml-8854761214013','nuoc-traicay-tl/16.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1010874,1,1,0,'0000-00-00 00:00:00',16,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(101,8,0,'Nước Chaba Me Thái 230ml - 8854761274314','nước-chaba-me-thái-230ml-8854761274314','nuoc-traicay-tl/17.nc chaba me thi 230ml - 8854761274314.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1958700,1,1,0,'0000-00-00 00:00:00',17,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(102,8,0,'Nước Chaba Me Thái 230ml - 8854761274314','nước-chaba-me-thái-230ml-8854761274314','nuoc-traicay-tl/18.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,944326,1,1,0,'0000-00-00 00:00:00',18,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(103,8,0,'Nước Chaba Táo Thái 230ml - 8854761024018','nước-chaba-táo-thái-230ml-8854761024018','nuoc-traicay-tl/19.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,994554,1,1,0,'0000-00-00 00:00:00',19,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(104,8,0,'Nước Chaba Táo Thái 230ml - 8854761024018','nước-chaba-táo-thái-230ml-8854761024018','nuoc-traicay-tl/20.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,945843,1,1,0,'0000-00-00 00:00:00',20,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(105,8,0,'Nước Chaba Dưa Lưới Thái 230ml - 8854761304011','nước-chaba-dưa-lưới-thái-230ml-8854761304011','nuoc-traicay-tl/21.nc chaba da li thi 230ml - 8854761304011.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1867714,1,1,0,'0000-00-00 00:00:00',21,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(106,8,0,'Nước Chaba Dưa Lưới Thái 230ml - 8854761304011','nước-chaba-dưa-lưới-thái-230ml-8854761304011','nuoc-traicay-tl/22.nc chaba da li thi 230ml - 8854761304011.jpg',2,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,1836976,1,1,0,'0000-00-00 00:00:00',22,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(107,9,0,'Rong Biển Lốc 3 Chonwon 5gx3 - 8801299000021','rong-biển-lốc-3-chonwon-5gx3-8801299000021','rongbien-hq/1. rong bin lc 3 chonwon 5gx3 - 8801299000021.jpg',1,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,2060349,1,1,0,'0000-00-00 00:00:00',1,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*'),
	(108,9,0,'Rong Biển Lốc 3 Chonwon 5gx3 - 8801299000021','rong-biển-lốc-3-chonwon-5gx3-8801299000021','rongbien-hq/2.jpg',1,'','2018-10-28 00:00:00',0,'','',0,'',0,'',0,0,541043,1,1,0,'0000-00-00 00:00:00',2,NULL,'','',NULL,'||_self|1','||_self|1','',0,'','','','','','','*');

/*!40000 ALTER TABLE `tpps_phocagallery` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_phocagallery_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_categories`;

CREATE TABLE `tpps_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `image_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `hot_cat` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tpps_phocagallery_categories` WRITE;
/*!40000 ALTER TABLE `tpps_phocagallery_categories` DISABLE KEYS */;

INSERT INTO `tpps_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `image_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `hot_cat`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`)
VALUES
	(1,0,0,0,'Bánh HQ','','banh-hq','','','','','2018-09-18 00:00:00',1,1,1,0,'0000-00-00 00:00:00',NULL,1,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),
	(2,0,0,0,'Kẹo HQ','','ke-o-hq','','','','','2018-09-18 00:00:00',1,1,1,0,'0000-00-00 00:00:00',NULL,2,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),
	(3,0,0,0,'Mì HQ','','mi-hq','','','','','2018-09-18 07:28:06',1,1,1,0,'0000-00-00 00:00:00',NULL,3,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),
	(4,0,0,0,'Nước Gạo HQ','','nước-gạo-hq','','','','','2018-10-28 05:24:12',1,1,0,0,'0000-00-00 00:00:00',NULL,4,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),
	(5,0,0,0,'Nước Ngọt HQ','','nước-ngọt-hq','','','','','2018-10-28 05:24:27',1,1,0,0,'0000-00-00 00:00:00',NULL,5,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),
	(6,0,0,0,'Nước Ngọt Thái Lan','','nước-ngọt-thái-lan','','','','','2018-10-28 05:24:32',1,1,0,0,'0000-00-00 00:00:00',NULL,6,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),
	(7,0,0,0,'Nước Tăng Lực Thái Lan','','nước-tăng-lực-thái-lan','','','','','2018-10-28 05:24:37',1,1,0,0,'0000-00-00 00:00:00',NULL,7,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),
	(8,0,0,0,'Nước Trái Cây Thái Lan','','nước-trái-cây-thái-lan','','','','','2018-10-28 05:24:41',1,1,0,0,'0000-00-00 00:00:00',NULL,8,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*'),
	(9,0,0,0,'Rong Biển HQ','','rong-biển-hq','','','','','2018-10-28 05:24:45',1,1,0,0,'0000-00-00 00:00:00',NULL,9,1,0,0,'0','0','0','','','',0,'','','','','',0,'',NULL,'','',NULL,'*');

/*!40000 ALTER TABLE `tpps_phocagallery_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_phocagallery_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_comments`;

CREATE TABLE `tpps_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_fb_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_fb_users`;

CREATE TABLE `tpps_phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_img_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_img_comments`;

CREATE TABLE `tpps_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_img_votes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_img_votes`;

CREATE TABLE `tpps_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_img_votes_statistics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_img_votes_statistics`;

CREATE TABLE `tpps_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_styles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_styles`;

CREATE TABLE `tpps_phocagallery_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tpps_phocagallery_styles` WRITE;
/*!40000 ALTER TABLE `tpps_phocagallery_styles` DISABLE KEYS */;

INSERT INTO `tpps_phocagallery_styles` (`id`, `title`, `alias`, `filename`, `menulink`, `type`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`)
VALUES
	(1,'Phocagallery','phocagallery','phocagallery.css','',1,1,0,'0000-00-00 00:00:00',1,NULL,'*'),
	(2,'Rating','','rating.css',NULL,1,1,0,'0000-00-00 00:00:00',2,NULL,'*'),
	(3,'Default','','default.css',NULL,2,1,0,'0000-00-00 00:00:00',3,NULL,'*');

/*!40000 ALTER TABLE `tpps_phocagallery_styles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_phocagallery_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_tags`;

CREATE TABLE `tpps_phocagallery_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_tags_ref
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_tags_ref`;

CREATE TABLE `tpps_phocagallery_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_imgid` (`imgid`,`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_user`;

CREATE TABLE `tpps_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_votes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_votes`;

CREATE TABLE `tpps_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_phocagallery_votes_statistics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_phocagallery_votes_statistics`;

CREATE TABLE `tpps_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_postinstall_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_postinstall_messages`;

CREATE TABLE `tpps_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `tpps_postinstall_messages` DISABLE KEYS */;

INSERT INTO `tpps_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`)
VALUES
	(1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),
	(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
	(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),
	(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),
	(5,700,'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE','COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/joomla40checks.php','admin_postinstall_joomla40checks_condition','3.7.0',1),
	(6,700,'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE','TPL_HATHOR_MESSAGE_POSTINSTALL_BODY','TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION','tpl_hathor',1,'action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_condition','3.7.0',1),
	(7,700,'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE','PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY','PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION','plg_captcha_recaptcha',1,'action','site://plugins/captcha/recaptcha/postinstall/actions.php','recaptcha_postinstall_action','site://plugins/captcha/recaptcha/postinstall/actions.php','recaptcha_postinstall_condition','3.8.6',1);

/*!40000 ALTER TABLE `tpps_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_redirect_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_redirect_links`;

CREATE TABLE `tpps_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_schemas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_schemas`;

CREATE TABLE `tpps_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_schemas` WRITE;
/*!40000 ALTER TABLE `tpps_schemas` DISABLE KEYS */;

INSERT INTO `tpps_schemas` (`extension_id`, `version_id`)
VALUES
	(700,'3.8.9-2018-06-19'),
	(10003,'4.3.7'),
	(10006,'4.7.5'),
	(10012,'3.0.3'),
	(10013,'3.0.3'),
	(10014,'3.0.10'),
	(10015,'3.0.1'),
	(10016,'3.0.3'),
	(10017,'3.0.4'),
	(10018,'3.0.1'),
	(10019,'3.0.3'),
	(10020,'3.0.4'),
	(10021,'3.0.3');

/*!40000 ALTER TABLE `tpps_schemas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_sef_statistics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sef_statistics`;

CREATE TABLE `tpps_sef_statistics` (
  `url_id` int(5) NOT NULL,
  `page_rank` int(3) NOT NULL,
  `total_indexed` int(10) NOT NULL,
  `popularity` int(10) NOT NULL,
  `facebook_indexed` int(10) NOT NULL,
  `twitter_indexed` int(10) NOT NULL,
  `validation_score` varchar(255) NOT NULL,
  `page_speed_score` mediumtext NOT NULL,
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_sef_subdomains
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sef_subdomains`;

CREATE TABLE `tpps_sef_subdomains` (
  `subdomain` varchar(255) NOT NULL DEFAULT '',
  `Itemid` mediumtext NOT NULL,
  `Itemid_titlepage` int(10) NOT NULL,
  `option` varchar(255) NOT NULL,
  `lang` varchar(10) NOT NULL,
  PRIMARY KEY (`subdomain`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_sefaliases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sefaliases`;

CREATE TABLE `tpps_sefaliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `vars` text NOT NULL,
  `url` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_sefexts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sefexts`;

CREATE TABLE `tpps_sefexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `filters` text,
  `params` text,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_sefexttexts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sefexttexts`;

CREATE TABLE `tpps_sefexttexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `lang_id` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_seflog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_seflog`;

CREATE TABLE `tpps_seflog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_sefmoved
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sefmoved`;

CREATE TABLE `tpps_sefmoved` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old` varchar(255) NOT NULL,
  `new` varchar(255) NOT NULL,
  `lastHit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `old` (`old`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tpps_sefmoved` WRITE;
/*!40000 ALTER TABLE `tpps_sefmoved` DISABLE KEYS */;

INSERT INTO `tpps_sefmoved` (`id`, `old`, `new`, `lastHit`)
VALUES
	(1,'ke-o-hq','keo-hq','0000-00-00 00:00:00'),
	(2,'n-c-g-o-hq','nuoc-gao-hq','0000-00-00 00:00:00'),
	(3,'n-c-ng-t-hq','nuoc-ngot-hq','0000-00-00 00:00:00'),
	(4,'n-c-ng-t-thai-lan','nuoc-ngot-thai-lan','0000-00-00 00:00:00'),
	(5,'n-c-t-ng-l-c-thai-lan','nuoc-tang-luc-thai-lan','0000-00-00 00:00:00'),
	(6,'n-c-trai-cay-thai-lan','nuoc-trai-cay-thai-lan','0000-00-00 00:00:00'),
	(7,'rong-bi-n-hq','rong-bien-hq','0000-00-00 00:00:00'),
	(8,'banh-hq','san-pham/banh-hq','0000-00-00 00:00:00'),
	(9,'keo-hq','san-pham/keo-hq','0000-00-00 00:00:00'),
	(10,'mi-hq','san-pham/mi-hq','0000-00-00 00:00:00'),
	(11,'nuoc-gao-hq','san-pham/nuoc-gao-hq','0000-00-00 00:00:00'),
	(12,'nuoc-ngot-hq','san-pham/nuoc-ngot-hq','0000-00-00 00:00:00'),
	(13,'nuoc-ngot-thai-lan','san-pham/nuoc-ngot-thai-lan','0000-00-00 00:00:00'),
	(14,'nuoc-tang-luc-thai-lan','san-pham/nuoc-tang-luc-thai-lan','0000-00-00 00:00:00'),
	(15,'nuoc-trai-cay-thai-lan','san-pham/nuoc-trai-cay-thai-lan','0000-00-00 00:00:00'),
	(16,'rong-bien-hq','san-pham/rong-bien-hq','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `tpps_sefmoved` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_sefurls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sefurls`;

CREATE TABLE `tpps_sefurls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpt` int(11) NOT NULL DEFAULT '0',
  `sefurl` varchar(255) NOT NULL,
  `origurl` varchar(255) NOT NULL,
  `Itemid` varchar(20) DEFAULT NULL,
  `metadesc` varchar(1024) DEFAULT '',
  `metakey` varchar(255) DEFAULT '',
  `metatitle` varchar(255) DEFAULT '',
  `metalang` varchar(30) DEFAULT '',
  `metarobots` varchar(30) DEFAULT '',
  `metagoogle` varchar(30) DEFAULT '',
  `metacustom` text,
  `metaauthor` varchar(30) DEFAULT '',
  `canonicallink` varchar(255) DEFAULT '',
  `dateadd` date NOT NULL DEFAULT '0000-00-00',
  `priority` int(11) NOT NULL DEFAULT '0',
  `trace` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `sef` tinyint(1) NOT NULL DEFAULT '1',
  `sm_indexed` tinyint(1) NOT NULL DEFAULT '0',
  `sm_date` date NOT NULL DEFAULT '0000-00-00',
  `sm_frequency` varchar(20) NOT NULL DEFAULT 'weekly',
  `sm_priority` varchar(10) NOT NULL DEFAULT '0.5',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `host` varchar(255) NOT NULL DEFAULT '',
  `showsitename` int(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`),
  KEY `sefurl` (`sefurl`),
  KEY `origurl` (`origurl`,`Itemid`),
  KEY `idx_updates` (`locked`,`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tpps_sefurls` WRITE;
/*!40000 ALTER TABLE `tpps_sefurls` DISABLE KEYS */;

INSERT INTO `tpps_sefurls` (`id`, `cpt`, `sefurl`, `origurl`, `Itemid`, `metadesc`, `metakey`, `metatitle`, `metalang`, `metarobots`, `metagoogle`, `metacustom`, `metaauthor`, `canonicallink`, `dateadd`, `priority`, `trace`, `enabled`, `locked`, `sef`, `sm_indexed`, `sm_date`, `sm_frequency`, `sm_priority`, `flag`, `host`, `showsitename`)
VALUES
	(25,0,'trang-ch/rss','index.php?option=com_content&format=feed&type=rss&view=featured',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(26,0,'trang-ch/atom','index.php?option=com_content&format=feed&type=atom&view=featured',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(27,5,'','index.php?option=com_content&view=featured','101','','','','','','',NULL,'','','0000-00-00',90,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(28,2,'san-pham/banh-hq','index.php?option=com_products&id_category=1&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(29,1,'san-pham/keo-hq','index.php?option=com_products&id_category=2&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(30,2,'san-pham/mi-hq','index.php?option=com_products&id_category=3&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(31,2,'san-pham/nuoc-gao-hq','index.php?option=com_products&id_category=4&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(32,0,'san-pham/nuoc-ngot-hq','index.php?option=com_products&id_category=5&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(33,1,'san-pham/nuoc-ngot-thai-lan','index.php?option=com_products&id_category=6&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(34,1,'san-pham/nuoc-tang-luc-thai-lan','index.php?option=com_products&id_category=7&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(35,1,'san-pham/nuoc-trai-cay-thai-lan','index.php?option=com_products&id_category=8&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3),
	(36,1,'san-pham/rong-bien-hq','index.php?option=com_products&id_category=9&view=products',NULL,'','','','','','',NULL,'','','0000-00-00',95,NULL,1,0,1,0,'2018-10-30','weekly','0.5',0,'',3);

/*!40000 ALTER TABLE `tpps_sefurls` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_sefurlword_xref
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sefurlword_xref`;

CREATE TABLE `tpps_sefurlword_xref` (
  `word` int(11) NOT NULL,
  `url` int(11) NOT NULL,
  PRIMARY KEY (`word`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_sefwords
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_sefwords`;

CREATE TABLE `tpps_sefwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tpps_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_session`;

CREATE TABLE `tpps_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_session` WRITE;
/*!40000 ALTER TABLE `tpps_session` DISABLE KEYS */;

INSERT INTO `tpps_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`)
VALUES
	('02cf85f316c5ad39837857dea7dcb8a4',0,1,'1540873406','joomla|s:788:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo1MjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1NDA4NzE2MzQ7czo0OiJsYXN0IjtpOjE1NDA4NzMzNjY7czozOiJub3ciO2k6MTU0MDg3MzQwNjt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEyOiJjb21fcHJvZHVjdHMiO086ODoic3RkQ2xhc3MiOjE6e3M6ODoicHJvZHVjdHMiO086ODoic3RkQ2xhc3MiOjE6e3M6ODoib3JkZXJjb2wiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),
	('09d1185d0ac0c67af2170f82b0113d7c',1,0,'1540873347','joomla|s:2496:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNDk7czo1OiJ0b2tlbiI7czozMjoiMTRKZkhlckxBUHR0M2Jmd3pwMFdBTUFla0F0bzYzbk8iO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTU0MDg3MDA4NDtzOjQ6Imxhc3QiO2k6MTU0MDg3MzM0MjtzOjM6Im5vdyI7aToxNTQwODczMzQ2O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo0OntzOjg6Im1lbnV0eXBlIjtzOjA6IiI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO31zOjk6ImNsaWVudF9pZCI7aTowO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDt9czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6Iml0ZW0iO086ODoic3RkQ2xhc3MiOjQ6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO319fXM6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czoxMjoicmVkaXJlY3RfdXJsIjtOO31zOjM6InNlZiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJzZWZ1cmxzIjtPOjg6InN0ZENsYXNzIjoxMDp7czo4OiJ2aWV3bW9kZSI7czoxOiIzIjtzOjk6ImNvbUZpbHRlciI7czowOiIiO3M6OToiZmlsdGVyU0VGIjtzOjA6IiI7czoxMDoiZmlsdGVyUmVhbCI7czowOiIiO3M6MTM6ImZpbHRlckhpdHNDbXAiO3M6MToiMCI7czoxMzoiZmlsdGVySGl0c1ZhbCI7czowOiIiO3M6MTI6ImZpbHRlckl0ZW1JZCI7czowOiIiO3M6MTI6ImZpbHRlcl9vcmRlciI7czo2OiJzZWZ1cmwiO3M6MTY6ImZpbHRlcl9vcmRlcl9EaXIiO3M6MzoiYXNjIjtzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX1zOjY6Imdsb2JhbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsaXN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxpbWl0IjtpOjIwO319czoxNjoiY29tX3Bob2NhZ2FsbGVyeSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjE1OiJwaG9jYWdhbGxlcnlpbWciO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MTY6InBob2NhZ2FsbGVyeWltZ3MiO086ODoic3RkQ2xhc3MiOjQ6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjo0OntzOjY6InNlYXJjaCI7czowOiIiO3M6NToic3RhdGUiO3M6MDoiIjtzOjExOiJjYXRlZ29yeV9pZCI7czoxOiI5IjtzOjg6Imxhbmd1YWdlIjtzOjA6IiI7fXM6ODoib3JkZXJjb2wiO3M6NzoiYS50aXRsZSI7czo5OiJvcmRlcmRpcm4iO3M6MzoiYXNjIjtzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI1NTMiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',553,'admin'),
	('4b5dcfa4de101103bc09f250a7f3b1c8',0,1,'1540873360','joomla|s:664:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTU0MDg3MzM2MDtzOjQ6Imxhc3QiO2k6MTU0MDg3MzM2MDtzOjM6Im5vdyI7aToxNTQwODczMzYwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,'');

/*!40000 ALTER TABLE `tpps_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_tags`;

CREATE TABLE `tpps_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_tags` WRITE;
/*!40000 ALTER TABLE `tpps_tags` DISABLE KEYS */;

INSERT INTO `tpps_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`)
VALUES
	(1,0,0,1,0,'','ROOT',X'726F6F74','','',1,0,'0000-00-00 00:00:00',1,'','','','',553,'2018-09-18 01:33:55','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `tpps_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_template_styles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_template_styles`;

CREATE TABLE `tpps_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_template_styles` WRITE;
/*!40000 ALTER TABLE `tpps_template_styles` DISABLE KEYS */;

INSERT INTO `tpps_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`)
VALUES
	(4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
	(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
	(7,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
	(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),
	(9,'os-basetemplate',0,'1','os-basetemplate - Default','{\"expand_body_bg\":\"0\",\"body_color\":\"#f8f8f8\",\"body_bg_size\":\"auto\",\"body_bg_repeat\":\"repeat\",\"body_bg_attachment\":\"scroll\",\"expand_body_links\":\"0\",\"body_link_color\":\"#92999E\",\"body_link_hover_color\":\"#12ABFF\",\"body_underline\":\"none\",\"body_hover_underline\":\"none\",\"expand_body_font\":\"0\",\"body_font\":\"Roboto\",\"links_font\":\"Roboto\",\"body_text_color\":\"#666666\",\"expand_body_h1\":\"0\",\"body_h1_font\":\"Roboto\",\"body_h1_color\":\"#666666\",\"body_h1_size\":\"32\",\"body_h1_font_weight\":\"500\",\"body_h1_text_transform\":\"none\",\"expand_body_h2\":\"0\",\"body_h2_font\":\"Roboto\",\"body_h2_color\":\"#666666\",\"body_h2_size\":\"28\",\"body_h2_font_weight\":\"500\",\"body_h2_text_transform\":\"none\",\"expand_body_h3\":\"0\",\"body_h3_font\":\"Roboto\",\"body_h3_color\":\"#666666\",\"body_h3_size\":\"24\",\"body_h3_font_weight\":\"500\",\"body_h3_text_transform\":\"none\",\"expand_body_h4\":\"0\",\"body_h4_font\":\"Roboto\",\"body_h4_color\":\"#666666\",\"body_h4_size\":\"20\",\"body_h4_font_weight\":\"500\",\"body_h4_text_transform\":\"none\",\"expand_body_h5\":\"0\",\"body_h5_font\":\"Roboto\",\"body_h5_color\":\"#666666\",\"body_h5_size\":\"18\",\"body_h5_font_weight\":\"500\",\"body_h5_text_transform\":\"none\",\"expand_body_h6\":\"0\",\"body_h6_font\":\"Roboto\",\"body_h6_color\":\"#666666\",\"body_h6_size\":\"16\",\"body_h6_font_weight\":\"500\",\"body_h6_text_transform\":\"none\",\"expand_header_bg\":\"1\",\"header_color\":\"#ffffff\",\"header_bg_size\":\"auto\",\"header_bg_repeat\":\"repeat\",\"header_bg_attachment\":\"scroll\",\"expand_header_links\":\"0\",\"header_link_color\":\"#92999E\",\"header_link_hover_color\":\"#12ABFF\",\"header_underline\":\"none\",\"header_hover_underline\":\"none\",\"expand_header_font\":\"0\",\"header_font\":\"Roboto\",\"header_links_font\":\"Roboto\",\"header_text_color\":\"#666666\",\"expand_header_h1\":\"0\",\"header_h1_size\":\"32\",\"header_h1_color\":\"#666666\",\"expand_header_h2\":\"0\",\"header_h2_size\":\"28\",\"header_h2_color\":\"#666666\",\"expand_header_h3\":\"0\",\"header_h3_size\":\"24\",\"header_h3_color\":\"#666666\",\"expand_header_h4\":\"0\",\"header_h4_size\":\"20\",\"header_h4_color\":\"#666666\",\"expand_header_h5\":\"0\",\"header_h5_size\":\"18\",\"header_h5_color\":\"#666666\",\"expand_header_h6\":\"0\",\"header_h6_size\":\"16\",\"header_h6_color\":\"#666666\",\"expand_central_content_bg\":\"0\",\"central_content_color\":\"#F8F8F8\",\"central_content_bg_size\":\"auto\",\"central_content_bg_repeat\":\"repeat\",\"central_content_bg_attachment\":\"scroll\",\"expand_central_content_links\":\"0\",\"central_content_link_color\":\"#92999E\",\"central_content_link_hover_color\":\"#12ABFF\",\"central_content_underline\":\"none\",\"central_content_hover_underline\":\"none\",\"expand_central_content_font\":\"0\",\"central_content_font\":\"Roboto\",\"central_content_links_font\":\"Roboto\",\"central_content_text_color\":\"#666666\",\"expand_central_content_h1\":\"0\",\"central_content_h1_size\":\"32\",\"central_content_h1_color\":\"#888888\",\"expand_central_content_h2\":\"0\",\"central_content_h2_size\":\"32\",\"central_content_h2_color\":\"#888888\",\"expand_central_content_h3\":\"0\",\"central_content_h3_size\":\"32\",\"central_content_h3_color\":\"#888888\",\"expand_central_content_h4\":\"0\",\"central_content_h4_size\":\"32\",\"central_content_h4_color\":\"#888888\",\"expand_central_content_h5\":\"0\",\"central_content_h5_size\":\"32\",\"central_content_h5_color\":\"#888888\",\"expand_central_content_h6\":\"0\",\"central_content_h6_size\":\"32\",\"central_content_h6_color\":\"#888888\",\"expand_footer_bg\":\"1\",\"footer_color\":\"#ffffff\",\"footer_bg_size\":\"auto\",\"footer_bg_repeat\":\"repeat\",\"footer_bg_attachment\":\"scroll\",\"expand_footer_links\":\"0\",\"footer_link_color\":\"#92999E\",\"footer_link_hover_color\":\"#12ABFF\",\"footer_underline\":\"none\",\"footer_hover_underline\":\"none\",\"expand_footer_font\":\"0\",\"footer_font\":\"Roboto\",\"footer_links_font\":\"Roboto\",\"footer_text_color\":\"#666666\",\"expand_footer_h1\":\"0\",\"footer_h1_size\":\"32\",\"footer_h1_color\":\"#888888\",\"expand_footer_h2\":\"0\",\"footer_h2_size\":\"32\",\"footer_h2_color\":\"#888888\",\"expand_footer_h3\":\"0\",\"footer_h3_size\":\"32\",\"footer_h3_color\":\"#888888\",\"expand_footer_h4\":\"0\",\"footer_h4_size\":\"32\",\"footer_h4_color\":\"#888888\",\"expand_footer_h5\":\"0\",\"footer_h5_size\":\"32\",\"footer_h5_color\":\"#888888\",\"expand_footer_h6\":\"0\",\"footer_h6_size\":\"32\",\"footer_h6_color\":\"#888888\",\"logo_link\":\"index.php\",\"logo_width\":\"226\",\"logo_height\":\"60\",\"favicon_file\":\"\",\"expand_custom_meni_1\":\"1\",\"custom_menu_1_class\":\"_custom_1\",\"custom_menu_1_bg_color\":\"#FFFFFF\",\"custom_menu_1_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_1_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_1_font\":\"Roboto\",\"custom_menu_1_font_weight\":\"400\",\"custom_menu_1_color\":\"#666666\",\"custom_menu_1_hover_color\":\"#000000\",\"custom_menu_1_underline\":\"none\",\"custom_menu_1_hover_underline\":\"none\",\"expand_custom_meni_2\":\"1\",\"custom_menu_2_class\":\"_custom_2\",\"custom_menu_2_bg_color\":\"#FFFFFF\",\"custom_menu_2_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_2_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_2_font\":\"Roboto\",\"custom_menu_2_font_weight\":\"400\",\"custom_menu_2_color\":\"#666666\",\"custom_menu_2_hover_color\":\"#000000\",\"custom_menu_2_underline\":\"none\",\"custom_menu_2_hover_underline\":\"none\",\"expand_custom_meni_3\":\"0\",\"custom_menu_3_class\":\"_custom_3\",\"custom_menu_3_bg_color\":\"#FFFFFF\",\"custom_menu_3_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_3_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_3_font\":\"Roboto\",\"custom_menu_3_font_weight\":\"400\",\"custom_menu_3_color\":\"#666666\",\"custom_menu_3_hover_color\":\"#000000\",\"custom_menu_3_underline\":\"none\",\"custom_menu_3_hover_underline\":\"none\",\"expand_custom_meni_4\":\"0\",\"custom_menu_4_class\":\"_custom_4\",\"custom_menu_4_bg_color\":\"#FFFFFF\",\"custom_menu_4_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_4_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_4_font\":\"Roboto\",\"custom_menu_4_font_weight\":\"400\",\"custom_menu_4_color\":\"#666666\",\"custom_menu_4_hover_color\":\"#000000\",\"custom_menu_4_underline\":\"none\",\"custom_menu_4_hover_underline\":\"none\",\"expand_custom_meni_5\":\"0\",\"custom_menu_5_class\":\"_custom_5\",\"custom_menu_5_bg_color\":\"#FFFFFF\",\"custom_menu_5_submenu_bg_color\":\"#FFFFFF\",\"custom_menu_5_item_hover_bg_color\":\"#FFFFFF\",\"custom_menu_5_font\":\"Roboto\",\"custom_menu_5_font_weight\":\"400\",\"custom_menu_5_color\":\"#666666\",\"custom_menu_5_hover_color\":\"#000000\",\"custom_menu_5_underline\":\"none\",\"custom_menu_5_hover_underline\":\"none\",\"expand_button_1\":\"1\",\"button_1_selector\":\"input.ba-btn-submit[type=\'submit\'], .itp-subscribe .button, .logout-button .btn, .controls .btn, .login button, .registration button.btn-primary, .remind button.btn, .reset button.btn, .contact-form button.btn, .filter-search button.btn, #button_hidden_review input.btn, button.validate, .btn-default, input#newGroup, .content-category a.btn, .product span.addtocart-button input.addtocart-button, #com-form-login #com-form-login-remember input, form.form-validate .buttonBar-right button, .vm-orders-list .order-view input.button, .cart-view #checkoutForm .billto-shipto .floatleft a, .cart-view button, div.itemCommentsForm form input#submitCommentButton, #jform_profile_dob_img, #profile_dob_img, .footer-row a.pt-btn, input.highlight-button, .vm-orders-list .button, #form-login .button, .cart-view .button, .billto-shipto .floatleft.add_bill a, .billto-shipto .floatleft a, .control-buttons button.default, .control-buttons button.button, form#form-login input, .account_form_validate .buttonBar-right button, .manufacturer-details-view .spacer a, span.addtocart-button input.notify-button, a.btn.btn-primary[data-toggle=\'modal\'], .registration button.btn-primary, .controls a.btn, .nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus, button:not(.navbar-toggle), input[type=\'button\']:not(.quantity-controls), input[type=\'reset\'], input[type=\'submit\']\",\"expand_button_1_background\":\"0\",\"button_1_bg_color\":\"#428bca\",\"expand_button_1_font_text\":\"0\",\"button_1_text_color\":\"#ffffff\",\"button_1_font\":\"Roboto\",\"button_1_font_size\":\"16\",\"button_1_line_height\":\"20\",\"button_1_font_weight\":\"400\",\"button_1_text_transform\":\"none\",\"expand_button_1_text_shadow\":\"0\",\"button_1_text_shadow_color\":\"#000000\",\"button_1_text_shadow_x\":\"0\",\"button_1_text_shadow_y\":\"0\",\"button_1_text_shadow_blur\":\"0\",\"expand_button_1_box\":\"0\",\"button_1_padding_top\":\"6\",\"button_1_padding_right\":\"12\",\"button_1_padding_bottom\":\"6\",\"button_1_padding_left\":\"12\",\"expand_button_1_box_shadow\":\"0\",\"button_1_box_shadow_color\":\"#000000\",\"button_1_box_shadow_x\":\"0\",\"button_1_box_shadow_y\":\"0\",\"button_1_box_shadow_blur\":\"0\",\"button_1_box_shadow_spread\":\"0\",\"button_1_box_shadow_type\":\"inset\",\"expand_button_1_border\":\"0\",\"button_1_border_radius\":\"0\",\"button_1_border_width\":\"0\",\"button_1_border_color\":\"#428bca\",\"button_1_border_style\":\"solid\",\"expand_button_1_hover_style\":\"0\",\"button_1_hover_bg_color\":\"#2069a8\",\"button_1_hover_border_color\":\"#428bca\",\"button_1_hover_text_color\":\"#ffffff\",\"expand_button_2\":\"1\",\"button_2_selector\":\".product .vm-details-button a\",\"expand_button_2_background\":\"0\",\"button_2_bg_color\":\"#428bca\",\"expand_button_2_font_text\":\"0\",\"button_2_text_color\":\"#ffffff\",\"button_2_font\":\"Roboto\",\"button_2_font_size\":\"14\",\"button_2_line_height\":\"20\",\"button_2_font_weight\":\"400\",\"button_2_text_transform\":\"none\",\"expand_button_2_text_shadow\":\"0\",\"button_2_text_shadow_color\":\"#000000\",\"button_2_text_shadow_x\":\"0\",\"button_2_text_shadow_y\":\"0\",\"button_2_text_shadow_blur\":\"0\",\"expand_button_2_box\":\"0\",\"button_2_padding_top\":\"6\",\"button_2_padding_right\":\"12\",\"button_2_padding_bottom\":\"6\",\"button_2_padding_left\":\"12\",\"expand_button_2_box_shadow\":\"0\",\"button_2_box_shadow_color\":\"#000000\",\"button_2_box_shadow_x\":\"0\",\"button_2_box_shadow_y\":\"0\",\"button_2_box_shadow_blur\":\"0\",\"button_2_box_shadow_spread\":\"0\",\"button_2_box_shadow_type\":\"inset\",\"expand_button_2_border\":\"0\",\"button_2_border_radius\":\"0\",\"button_2_border_width\":\"0\",\"button_2_border_color\":\"#ffffff\",\"button_2_border_style\":\"solid\",\"expand_button_2_hover_style\":\"0\",\"button_2_hover_bg_color\":\"#2069a8\",\"button_2_hover_border_color\":\"#FFFFFF\",\"button_2_hover_text_color\":\"#ffffff\",\"expand_button_3\":\"1\",\"expand_button_3_background\":\"0\",\"button_3_bg_color\":\"#428bca\",\"expand_button_3_font_text\":\"0\",\"button_3_text_color\":\"#ffffff\",\"button_3_font\":\"Roboto\",\"button_3_font_size\":\"14\",\"button_3_line_height\":\"20\",\"button_3_font_weight\":\"400\",\"button_3_text_transform\":\"none\",\"expand_button_3_text_shadow\":\"0\",\"button_3_text_shadow_color\":\"#000000\",\"button_3_text_shadow_x\":\"0\",\"button_3_text_shadow_y\":\"0\",\"button_3_text_shadow_blur\":\"0\",\"expand_button_3_box\":\"0\",\"button_3_padding_top\":\"6\",\"button_3_padding_right\":\"12\",\"button_3_padding_bottom\":\"6\",\"button_3_padding_left\":\"12\",\"expand_button_3_box_shadow\":\"0\",\"button_3_box_shadow_color\":\"#000000\",\"button_3_box_shadow_x\":\"0\",\"button_3_box_shadow_y\":\"0\",\"button_3_box_shadow_blur\":\"0\",\"button_3_box_shadow_spread\":\"0\",\"button_3_box_shadow_type\":\"inset\",\"expand_button_3_border\":\"0\",\"button_3_border_radius\":\"0\",\"button_3_border_width\":\"0\",\"button_3_border_color\":\"#ffffff\",\"button_3_border_style\":\"solid\",\"expand_button_3_hover_style\":\"0\",\"button_3_hover_bg_color\":\"#2069a8\",\"button_3_hover_border_color\":\"#FFFFFF\",\"button_3_hover_text_color\":\"#ffffff\",\"expand_preloader\":\"1\",\"preloader\":\"rotating-plane\",\"preloader_color\":\"#12abff\",\"soc_icons_size\":\"18\",\"twitter\":\"\",\"facebook\":\"\",\"flickr\":\"\",\"linkedin\":\"\",\"youtube\":\"\",\"pinterest\":\"\",\"google\":\"\",\"dribbble\":\"\",\"vimeo\":\"\",\"instagram\":\"\",\"vk\":\"\",\"reset\":\"0\"}');

/*!40000 ALTER TABLE `tpps_template_styles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_ucm_base
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_ucm_base`;

CREATE TABLE `tpps_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_ucm_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_ucm_content`;

CREATE TABLE `tpps_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';



# Dump of table tpps_ucm_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_ucm_history`;

CREATE TABLE `tpps_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_update_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_update_sites`;

CREATE TABLE `tpps_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

LOCK TABLES `tpps_update_sites` WRITE;
/*!40000 ALTER TABLE `tpps_update_sites` DISABLE KEYS */;

INSERT INTO `tpps_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`)
VALUES
	(1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1540868670,''),
	(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,0,''),
	(3,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,''),
	(7,'com_phocagallery','extension','https://raw.githubusercontent.com/PhocaCz/PhocaGallery/master/manifest.xml',1,1540868670,''),
	(8,'ext_joomsef4_banners','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_banners.xml',1,0,''),
	(9,'ext_joomsef4_contact','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_contact.xml',1,0,''),
	(10,'ext_joomsef4_content','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_content.xml',1,0,''),
	(11,'ext_joomsef4_mailto','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_mailto.xml',1,0,''),
	(12,'ext_joomsef4_newfeeds','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_newsfeeds.xml',1,0,''),
	(13,'ext_joomsef4_search','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_search.xml',1,0,''),
	(14,'ext_joomsef4_tags','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_tags.xml',1,0,''),
	(15,'ext_joomsef4_users','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_users.xml',1,0,''),
	(16,'ext_joomsef4_weblinks','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_weblinks.xml',1,0,''),
	(17,'ext_joomsef4_wrapper','sef_update','http://www.artio.net/joomla-updates/list/ext_joomsef4_wrapper.xml',1,0,''),
	(18,'com_joomsef','sef_update','http://www.artio.net/joomla-updates/list/com_joomsef4.xml',1,0,'');

/*!40000 ALTER TABLE `tpps_update_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_update_sites_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_update_sites_extensions`;

CREATE TABLE `tpps_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

LOCK TABLES `tpps_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `tpps_update_sites_extensions` DISABLE KEYS */;

INSERT INTO `tpps_update_sites_extensions` (`update_site_id`, `extension_id`)
VALUES
	(1,700),
	(2,802),
	(3,28),
	(7,10003),
	(8,10012),
	(9,10013),
	(10,10014),
	(11,10015),
	(12,10016),
	(13,10017),
	(14,10018),
	(15,10019),
	(16,10020),
	(17,10021),
	(18,10006);

/*!40000 ALTER TABLE `tpps_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_updates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_updates`;

CREATE TABLE `tpps_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

LOCK TABLES `tpps_updates` WRITE;
/*!40000 ALTER TABLE `tpps_updates` DISABLE KEYS */;

INSERT INTO `tpps_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`)
VALUES
	(1,1,700,'Joomla','','joomla','file','',0,'3.8.13','','https://update.joomla.org/core/sts/extension_sts.xml','','');

/*!40000 ALTER TABLE `tpps_updates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_user_keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_user_keys`;

CREATE TABLE `tpps_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_user_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_user_notes`;

CREATE TABLE `tpps_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tpps_user_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_user_profiles`;

CREATE TABLE `tpps_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';



# Dump of table tpps_user_usergroup_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_user_usergroup_map`;

CREATE TABLE `tpps_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `tpps_user_usergroup_map` DISABLE KEYS */;

INSERT INTO `tpps_user_usergroup_map` (`user_id`, `group_id`)
VALUES
	(553,8);

/*!40000 ALTER TABLE `tpps_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_usergroups`;

CREATE TABLE `tpps_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_usergroups` WRITE;
/*!40000 ALTER TABLE `tpps_usergroups` DISABLE KEYS */;

INSERT INTO `tpps_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`)
VALUES
	(1,0,1,18,'Public'),
	(2,1,8,15,'Registered'),
	(3,2,9,14,'Author'),
	(4,3,10,13,'Editor'),
	(5,4,11,12,'Publisher'),
	(6,1,4,7,'Manager'),
	(7,6,5,6,'Administrator'),
	(8,1,16,17,'Super Users'),
	(9,1,2,3,'Guest');

/*!40000 ALTER TABLE `tpps_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_users`;

CREATE TABLE `tpps_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_users` WRITE;
/*!40000 ALTER TABLE `tpps_users` DISABLE KEYS */;

INSERT INTO `tpps_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`)
VALUES
	(553,'Super User','admin','kent.dang1706@gmail.com','$2y$10$M88Oc995ijp1s74vFhz/builV6MrqJBCXgZ.mb0bQSb//NDjZ6bAq',0,1,'2018-09-18 01:33:56','2018-10-30 03:28:05','0','','0000-00-00 00:00:00',0,'','',0);

/*!40000 ALTER TABLE `tpps_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_utf8_conversion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_utf8_conversion`;

CREATE TABLE `tpps_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_utf8_conversion` WRITE;
/*!40000 ALTER TABLE `tpps_utf8_conversion` DISABLE KEYS */;

INSERT INTO `tpps_utf8_conversion` (`converted`)
VALUES
	(2);

/*!40000 ALTER TABLE `tpps_utf8_conversion` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tpps_viewlevels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpps_viewlevels`;

CREATE TABLE `tpps_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tpps_viewlevels` WRITE;
/*!40000 ALTER TABLE `tpps_viewlevels` DISABLE KEYS */;

INSERT INTO `tpps_viewlevels` (`id`, `title`, `ordering`, `rules`)
VALUES
	(1,'Public',0,'[1]'),
	(2,'Registered',2,'[6,2,8]'),
	(3,'Special',3,'[6,3,8]'),
	(5,'Guest',1,'[9]'),
	(6,'Super Users',4,'[8]');

/*!40000 ALTER TABLE `tpps_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
