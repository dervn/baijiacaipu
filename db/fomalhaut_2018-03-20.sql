# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.14)
# Database: fomalhaut
# Generation Time: 2018-03-20 10:37:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tb_article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_article`;

CREATE TABLE `tb_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(512) NOT NULL DEFAULT '' COMMENT '标题',
  `author_name` varchar(128) NOT NULL DEFAULT ' ' COMMENT '作者姓名',
  `content_id` int(10) unsigned NOT NULL COMMENT '内容表ID',
  `source` varchar(512) NOT NULL DEFAULT ' ' COMMENT '来源',
  `short_url` varchar(16) NOT NULL DEFAULT ' ' COMMENT '短链接',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';



# Dump of table tb_article_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_article_content`;

CREATE TABLE `tb_article_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL COMMENT '文章内容',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_files`;

CREATE TABLE `tb_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT ' ' COMMENT '文件名',
  `ext` varchar(8) NOT NULL DEFAULT ' ' COMMENT '文件后缀',
  `path` varchar(256) NOT NULL DEFAULT ' ' COMMENT '文件路径',
  `md5sum` varchar(32) NOT NULL DEFAULT ' ' COMMENT 'MD5值',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_fountain
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_fountain`;

CREATE TABLE `tb_fountain` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT ' ' COMMENT '名称',
  `description` varchar(256) NOT NULL DEFAULT ' ' COMMENT '描述',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类型，0其他金1银2铜3',
  `out_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外部ID',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_fountain` WRITE;
/*!40000 ALTER TABLE `tb_fountain` DISABLE KEYS */;

INSERT INTO `tb_fountain` (`id`, `name`, `description`, `type`, `out_id`, `created_at`)
VALUES
	(1,'安度因·乌瑞恩的金币',' ',1,43641,0),
	(2,'阿克蒙德的金币',' ',1,43640,0),
	(3,'阿尔萨斯的金币',' ',1,43639,0),
	(4,'阿鲁高的金币',' ',1,43638,0),
	(5,'布莱恩·铜须的金币',' ',1,43637,0),
	(6,'克罗米的金币',' ',1,43636,0),
	(7,'克尔苏加德的金币',' ',1,43635,0),
	(8,'吉安娜·普罗德摩尔的金币',' ',1,43628,0),
	(9,'卡特拉娜·普瑞斯托的金币',' ',1,43634,0),
	(10,'凯尔萨斯王子的金币',' ',1,43633,0),
	(11,'希尔瓦娜斯·风行者的金币',' ',1,43632,0),
	(12,'塔隆的金币',' ',1,43631,0),
	(13,'萨尔的金币',' ',1,43627,0),
	(14,'提里奥·弗丁的金币',' ',1,43630,0),
	(15,'乌瑟尔·光明使者的金币',' ',1,43629,0),
	(16,'艾格文的银币',' ',2,43687,0),
	(17,'奥蕾莉亚的银币',' ',2,43686,0),
	(18,'安东尼达斯的银币',' ',2,43678,0),
	(19,'奥术师杜安的银币',' ',2,43676,0),
	(20,'范达尔·鹿盔的银币',' ',2,43675,0),
	(21,'大工匠梅卡托克的银币',' ',2,43677,0),
	(22,'卡德加的银币',' ',2,43683,0),
	(23,'安纳斯特里亚·逐日者国王的银币',' ',2,43682,0),
	(24,'泰瑞纳斯·米奈希尔国王的银币',' ',2,43681,0),
	(25,'瓦里安·乌瑞恩国王的银币',' ',2,43680,0),
	(26,'玛维·影歌的银币',' ',2,43685,0),
	(27,'麦迪文的银币',' ',2,43684,0),
	(28,'穆拉丁·铜须的银币',' ',2,43679,0),
	(29,'麦格尼·铜须王子的银币',' ',2,43643,0),
	(30,'农夫的银币',' ',2,43644,0),
	(31,'佳莉娅·米奈希尔公主的铜币',' ',3,43717,0),
	(32,'奔波尔霸的铜币',' ',3,43716,0),
	(33,'穆罗克的铜币',' ',3,43715,0),
	(34,'兰德鲁·郎绍特的铜币',' ',3,43714,0),
	(35,'列兵马库斯·乔纳森的铜币',' ',3,43718,0),
	(36,'瓦格斯的铜币',' ',3,43723,0),
	(37,'温蕾萨的铜币',' ',3,43722,0),
	(38,'斯塔文的铜币',' ',3,43721,0),
	(39,'侍卫洛文的铜币',' ',3,43720,0),
	(40,'克里尔的铜币',' ',3,43713,0),
	(41,'克拉苏斯的铜币',' ',3,43712,0),
	(42,'达纳斯·托尔贝恩的铜币',' ',3,43705,0),
	(43,'阿图门的铜币',' ',3,43704,0),
	(44,'安斯雷姆的铜币',' ',3,43703,0),
	(45,'阿隆索斯·法奥的铜币',' ',3,43702,0),
	(46,'伊崔格的铜币',' ',3,43707,0),
	(47,'英尼戈的铜币',' ',3,43711,0),
	(48,'吉恩的铜币',' ',3,43710,0),
	(49,'弗斯塔德·蛮锤的铜币',' ',3,43709,0),
	(50,'埃林·提亚斯的铜币',' ',3,43708,0),
	(51,'某位步兵的铜币',' ',3,43701,0);

/*!40000 ALTER TABLE `tb_fountain` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_users`;

CREATE TABLE `tb_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(64) NOT NULL DEFAULT ' ' COMMENT '昵称',
  `email` varchar(64) NOT NULL DEFAULT ' ' COMMENT '邮件地址',
  `password` varchar(64) NOT NULL DEFAULT ' ' COMMENT '密码',
  `mobile` varchar(16) NOT NULL DEFAULT ' ' COMMENT '手机号码',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户状态',
  `reg_ip` varchar(16) NOT NULL DEFAULT ' ' COMMENT '注册IP',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_at` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';



# Dump of table tb_xiqu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_xiqu`;

CREATE TABLE `tb_xiqu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT ' ' COMMENT '曲名',
  `file_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件名',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ts_authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_authors`;

CREATE TABLE `ts_authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT ' ' COMMENT '作者名',
  `desc` varchar(1024) DEFAULT ' ' COMMENT '介绍',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ts_books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_books`;

CREATE TABLE `ts_books` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT ' ' COMMENT '书名',
  `desc` varchar(512) NOT NULL DEFAULT ' ' COMMENT '介绍',
  `last_chapter_name` varchar(256) NOT NULL DEFAULT ' ' COMMENT '最后章节名称',
  `last_chapter_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后章节ID',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '作者ID',
  `origin_book_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '源书ID，正版源为0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '网站ID',
  `site_book_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '源网站书ID',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modified_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ts_chapters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_chapters`;

CREATE TABLE `ts_chapters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL DEFAULT ' ' COMMENT '名称',
  `book_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '书ID',
  `origin_book_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '源书ID',
  `site_chapter_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '源网站章节ID',
  `publish_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '源网站发表时间',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ts_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_sites`;

CREATE TABLE `ts_sites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT ' ' COMMENT '网站名称',
  `url` varchar(256) NOT NULL DEFAULT ' ' COMMENT '网站URL',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
