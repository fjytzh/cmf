/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.32 : Database - cmf
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `sp_access` */

DROP TABLE IF EXISTS `sp_access`;

CREATE TABLE `sp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `g` varchar(20) NOT NULL COMMENT '项目',
  `m` varchar(20) NOT NULL COMMENT '模块',
  `a` varchar(20) NOT NULL COMMENT '方法',
  KEY `groupId` (`role_id`),
  KEY `gma` (`g`,`m`,`a`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_access` */

/*Table structure for table `sp_ad` */

DROP TABLE IF EXISTS `sp_ad`;

CREATE TABLE `sp_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL,
  `ad_content` text,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_ad` */

/*Table structure for table `sp_asset` */

DROP TABLE IF EXISTS `sp_asset`;

CREATE TABLE `sp_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `unique` varchar(14) NOT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filepath` varchar(200) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `meta` text,
  `suffix` varchar(50) DEFAULT NULL,
  `download_times` int(6) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_asset` */

/*Table structure for table `sp_comments` */

DROP TABLE IF EXISTS `sp_comments`;

CREATE TABLE `sp_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_comments` */

/*Table structure for table `sp_common_action_log` */

DROP TABLE IF EXISTS `sp_common_action_log`;

CREATE TABLE `sp_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `sp_common_action_log` */

insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (1,0,'posts1','Portal-Article-index',3,1416972327,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (2,0,'posts2','Portal-Article-index',9,1415592223,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (3,0,'posts4','Portal-Article-index',4,1415351959,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (4,0,'posts','Portal-Article-index',119,1415672247,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (5,0,'posts3','Portal-Article-index',34,1415593664,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (6,0,'posts5','Portal-Article-index',9,1415593634,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (7,0,'posts7','Portal-Article-index',4,1435232442,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (8,0,'posts8','Portal-Article-index',23,1416972317,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (9,0,'posts6','Portal-Article-index',12,1415593476,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (10,0,'posts10','Portal-Article-index',6,1416972312,'127.0.0.1');
insert  into `sp_common_action_log`(`id`,`user`,`object`,`action`,`count`,`last_time`,`ip`) values (11,0,'posts9','Portal-Article-index',1,1415590666,'127.0.0.1');

/*Table structure for table `sp_customer` */

DROP TABLE IF EXISTS `sp_customer`;

CREATE TABLE `sp_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机',
  `idcard` varchar(50) DEFAULT NULL COMMENT '省份证',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `post_author` varchar(200) DEFAULT NULL COMMENT '发布人',
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `sp_customer` */

insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (1,'z先生','1111111111','222222222222','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (2,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (3,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (4,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (5,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (6,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (7,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (8,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (9,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (10,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (11,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (12,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (13,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (14,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (15,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (16,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (17,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (18,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (19,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (20,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (21,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (22,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (23,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (24,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (25,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (26,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (27,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (28,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (29,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (30,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (31,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (32,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (33,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (34,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (35,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (36,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (37,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (38,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (39,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (40,'陈先生','18025025125','302515412541225125','工业路118号','admin','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (41,'asdasd','asdasd','asdasd','工业路118号','1','2015-06-05 19:32:42');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (42,'1','11','1','1','1','2015-07-02 18:02:36');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (43,'1','2','1','1','1','2015-07-02 18:04:29');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (44,'1','3','2','1','1','2015-07-02 18:06:06');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (45,'1','2','3','4','1','2015-07-02 18:09:48');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (46,'1','1','1','1','1','2015-07-02 18:12:02');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (47,'','','','','1','2015-07-02 18:13:06');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (48,'','','','','1','2015-07-02 18:13:07');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (49,'','','','','1','2015-07-02 18:13:08');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (50,'a','1','1','1','1','2015-07-02 19:08:54');
insert  into `sp_customer`(`id`,`real_name`,`mobile`,`idcard`,`address`,`post_author`,`post_date`) values (51,'1','11','','','1','2015-07-02 19:10:40');

/*Table structure for table `sp_guestbook` */

DROP TABLE IF EXISTS `sp_guestbook`;

CREATE TABLE `sp_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL,
  `status` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_guestbook` */

/*Table structure for table `sp_links` */

DROP TABLE IF EXISTS `sp_links`;

CREATE TABLE `sp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT '',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sp_links` */

insert  into `sp_links`(`link_id`,`link_url`,`link_name`,`link_image`,`link_target`,`link_description`,`link_status`,`link_rating`,`link_rel`,`listorder`) values (1,'http://www.thinkcmf.com','ThinkCMF','','_blank','',1,0,'',0);

/*Table structure for table `sp_menu` */

DROP TABLE IF EXISTS `sp_menu`;

CREATE TABLE `sp_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL DEFAULT '',
  `action` char(20) NOT NULL DEFAULT '',
  `data` char(50) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(50) DEFAULT NULL,
  `remark` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=581 DEFAULT CHARSET=utf8;

/*Data for the table `sp_menu` */

insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (239,0,'Admin','Setting','default','',0,1,'设置','cogs','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (51,0,'Admin','Content','default','',0,1,'内容管理','th','',10);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (245,51,'Portal','AdminTerm','index','',0,1,'分类管理','','',2);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (299,260,'Api','Oauthadmin','setting','',1,1,'第三方登陆','leaf','',4);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (252,239,'Admin','Setting','userdefault','',0,1,'个人信息','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (253,252,'Admin','User','userinfo','',1,1,'修改信息','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (254,252,'Admin','Setting','password','',1,1,'修改密码','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (260,0,'Admin','Extension','default','',0,1,'扩展工具','cloud','',30);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (262,260,'Admin','Slide','default','',1,1,'幻灯片','','',1);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (264,262,'Admin','Slide','index','',1,1,'幻灯片管理','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (265,260,'Admin','Ad','index','',1,1,'网站广告','','',2);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (268,262,'Admin','Slidecat','index','',1,1,'幻灯片分类','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (270,260,'Admin','Link','index','',0,1,'友情链接','','',3);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (277,51,'Portal','AdminPage','index','',1,1,'页面管理','','',3);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (301,300,'Portal','AdminPage','recyclebin','',1,1,'页面回收','','',1);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (302,300,'Portal','AdminPost','recyclebin','',1,1,'文章回收','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (300,51,'Admin','Recycle','default','',1,1,'回收站','','',4);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (284,239,'Admin','Setting','site','',1,1,'网站信息','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (285,51,'Portal','AdminPost','index','',1,1,'文章管理','','',1);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (286,0,'User','Indexadmin','default','',1,1,'用户管理','group','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (287,289,'User','Indexadmin','index','',1,1,'本站用户','leaf','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (288,289,'User','Oauthadmin','index','',1,1,'第三方用户','leaf','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (289,286,'User','Indexadmin','default1','',1,1,'用户组','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (290,286,'User','Indexadmin','default3','',1,1,'管理组','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (291,290,'Admin','Rbac','index','',1,1,'角色管理','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (292,290,'Admin','User','index','',1,1,'管理员','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (293,0,'Admin','Menu','default','',1,1,'菜单管理','list','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (294,293,'Admin','Navcat','default1','',1,1,'前台菜单','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (295,294,'Admin','Nav','index','',1,1,'菜单管理','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (296,294,'Admin','Navcat','index','',1,1,'菜单分类','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (297,293,'Admin','Menu','index','',1,1,'后台菜单','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (298,239,'Admin','Setting','clearcache','',1,1,'清除缓存','','',1);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (319,260,'Admin','Backup','default','',1,1,'备份管理','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (480,292,'Admin','User','delete','',1,0,'删除管理员','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (479,292,'Admin','User','edit','',1,0,'管理员编辑','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (478,292,'Admin','User','add','',1,0,'管理员添加','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (477,245,'Portal','AdminTerm','delete','',1,0,'删除分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (476,245,'Portal','AdminTerm','edit','',1,0,'编辑分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (475,245,'Portal','AdminTerm','add','',1,0,'添加分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (474,268,'Admin','Slidecat','delete','',1,0,'删除分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (473,268,'Admin','Slidecat','edit','',1,0,'编辑分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (472,268,'Admin','Slidecat','add','',1,0,'添加分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (471,264,'Admin','Slide','delete','',1,0,'删除幻灯片','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (470,264,'Admin','Slide','edit','',1,0,'编辑幻灯片','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (469,264,'Admin','Slide','add','',1,0,'添加幻灯片','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (467,291,'Admin','Rbac','member','',1,0,'成员管理','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (465,291,'Admin','Rbac','authorize','',1,0,'权限设置','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (464,291,'Admin','Rbac','roleedit','',1,0,'编辑角色','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (463,291,'Admin','Rbac','roledelete','',1,1,'删除角色','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (462,291,'Admin','Rbac','roleadd','',1,1,'添加角色','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (458,302,'Portal','AdminPost','restore','',1,0,'文章还原','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (457,302,'Portal','AdminPost','clean','',1,0,'彻底删除','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (456,285,'Portal','AdminPost','move','',1,0,'批量移动','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (455,285,'Portal','AdminPost','check','',1,0,'文章审核','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (454,285,'Portal','AdminPost','delete','',1,0,'删除文章','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (452,285,'Portal','AdminPost','edit','',1,0,'编辑文章','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (451,285,'Portal','AdminPost','add','',1,0,'添加文章','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (450,301,'Portal','AdminPage','clean','',1,0,'彻底删除','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (449,301,'Portal','AdminPage','restore','',1,0,'页面还原','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (448,277,'Portal','AdminPage','delete','',1,0,'删除页面','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (446,277,'Portal','AdminPage','edit','',1,0,'编辑页面','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (445,277,'Portal','AdminPage','add','',1,0,'添加页面','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (444,296,'Admin','Navcat','delete','',1,0,'删除分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (443,296,'Admin','Navcat','edit','',1,0,'编辑分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (442,296,'Admin','Navcat','add','',1,0,'添加分类','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (441,295,'Admin','Nav','delete','',1,0,'删除菜单','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (440,295,'Admin','Nav','edit','',1,0,'编辑菜单','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (439,295,'Admin','Nav','add','',1,0,'添加菜单','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (436,297,'Admin','Menu','export_menu','',1,0,'菜单备份','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (434,297,'Admin','Menu','edit','',1,0,'编辑菜单','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (433,297,'Admin','Menu','delete','',1,0,'删除菜单','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (432,297,'Admin','Menu','lists','',1,0,'所有菜单','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (430,270,'Admin','Link','delete','',1,0,'删除友情链接','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (429,270,'Admin','Link','edit','',1,0,'编辑友情链接','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (428,270,'Admin','Link','add','',1,0,'添加友情链接','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (424,319,'Admin','Backup','download','',1,0,'下载备份','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (423,319,'Admin','Backup','del_backup','',1,0,'删除备份','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (422,319,'Admin','Backup','import','',1,0,'数据备份导入','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (421,319,'Admin','Backup','restore','',1,1,'数据还原','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (420,265,'Admin','Ad','delete','',1,0,'删除广告','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (419,265,'Admin','Ad','edit','',1,0,'编辑广告','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (418,265,'Admin','Ad','add','',1,0,'添加广告','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (482,288,'Api','Oauthadmin','delete','',1,0,'删除第三方用户','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (483,287,'Member','Indexadmin','delete','',1,0,'删除用户','','',1000);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (496,319,'Admin','Backup','index','',1,1,'数据备份','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (497,418,'Admin','Ad','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (498,419,'Admin','Ad','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (499,428,'Admin','Link','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (500,429,'Admin','Link','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (501,536,'Admin','Menu','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (502,434,'Admin','Menu','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (503,439,'Admin','Nav','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (504,440,'Admin','Nav','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (505,442,'Admin','Navcat','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (506,443,'Admin','Navcat','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (507,445,'Portal','AdminPage','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (508,446,'Portal','AdminPage','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (509,451,'Portal','AdminPost','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (510,452,'Portal','AdminPost','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (511,462,'Admin','Rbac','roleadd_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (512,464,'Admin','Rbac','roleedit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (513,465,'Admin','Rbac','authorize_post','',1,0,'提交设置','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (514,284,'Admin','Setting','site_post','',1,0,'提交修改','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (515,254,'Admin','Setting','password_post','',1,0,'提交修改','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (516,469,'Admin','Slide','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (517,470,'Admin','Slide','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (518,472,'Admin','Slidecat','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (519,473,'Admin','Slidecat','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (520,475,'Portal','AdminTerm','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (521,476,'Portal','AdminTerm','edit_post','',1,1,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (522,478,'Admin','User','add_post','',1,0,'添加提交','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (523,479,'Admin','User','edit_post','',1,0,'编辑提交','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (524,253,'Admin','User','userinfo_post','',1,0,'修改信息提交','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (525,299,'Api','Oauthadmin','setting_post','',1,0,'提交设置','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (526,533,'Admin','Mailer','index','',1,1,'SMTP配置','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (527,526,'Admin','Mailer','index_post','',1,0,'提交配置','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (528,533,'Admin','Mailer','active','',1,1,'邮件模板','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (529,528,'Admin','Mailer','active_post','',1,0,'提交模板','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (533,239,'Admin','Mailer','default','',1,1,'邮箱配置','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (536,297,'Admin','Menu','add','',1,0,'添加菜单','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (546,496,'Admin','Backup','index_post','',1,0,'提交数据备份','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (547,270,'Admin','Link','listorders','',1,0,'友情链接排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (548,297,'Admin','Menu','listorders','',1,0,'后台菜单排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (549,295,'Admin','Nav','listorders','',1,0,'前台导航排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (550,277,'Portal','AdminPage','listorders','',1,0,'页面排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (551,285,'Portal','AdminPost','listorders','',1,0,'文章排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (552,264,'Admin','Slide','listorders','',1,0,'幻灯片排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (553,245,'Portal','AdminTerm','listorders','',1,0,'文章分类排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (554,51,'Api','Guestbookadmin','index','',1,1,'所有留言','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (555,554,'Api','Guestbookadmin','delete','',1,0,'删除网站留言','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (557,51,'Comment','Commentadmin','index','',1,1,'评论管理','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (559,557,'Comment','Commentadmin','delete','',1,0,'删除评论','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (560,557,'Comment','Commentadmin','check','',1,0,'评论审核','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (561,287,'User','Indexadmin','ban','',1,0,'拉黑会员','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (562,287,'User','Indexadmin','cancelban','',1,0,'启用会员','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (563,288,'User','Oauthadmin','delete','',1,0,'第三方用户解绑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (564,0,'Admin','Customer','default','',0,1,'客户管理','th','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (565,564,'Customer','AdminPage','Index','',1,1,'客户列表','','客户管理首页',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (566,564,'Customer','AdminPage','add','',1,1,'添加客户','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (567,0,'Customer','AdminPage','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (568,0,'Customer','AdminPage','edit','',1,0,'客户编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (569,0,'Customer','AdminPage','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (570,0,'Customer','AdminPage','listorders','',1,0,'客户排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (571,0,'Customer','AdminPage','clean','',1,0,'客户删除','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (572,0,'Product','AdminPage','index','',1,1,'产品管理','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (573,0,'Product','AdminPage','add','',1,0,'添加产品','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (574,0,'Product','AdminPage','add_post','',1,0,'提交添加','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (575,0,'Product','AdminPage','edit','',1,0,'编辑产品','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (576,0,'Product','AdminPage','edit_post','',1,0,'提交编辑','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (577,0,'Product','AdminPage','listorders','',1,0,'产品排序','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (578,0,'Product','AdminPage','clean','',1,0,'产品删除','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (579,0,'Product','AdminPage','addnum','',1,0,'产品进货','','',0);
insert  into `sp_menu`(`id`,`parentid`,`app`,`model`,`action`,`data`,`type`,`status`,`name`,`icon`,`remark`,`listorder`) values (580,0,'Product','AdminPage','addnum_post','',1,0,'提交进货','','',0);

/*Table structure for table `sp_nav` */

DROP TABLE IF EXISTS `sp_nav`;

CREATE TABLE `sp_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `href` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(6) DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `sp_nav` */

insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (1,1,0,'首页','','home','',1,0,'0-1');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (4,1,0,'关于我们','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"3\";}}','',1,0,'0-4');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (5,1,0,'产品中心','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','',1,0,'0-5');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (6,1,0,'应用领域','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"10\";}}','',1,0,'0-6');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (7,1,0,'工程案例','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"17\";}}','',1,0,'0-7');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (8,1,0,'资讯中心','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"18\";}}','',1,0,'0-8');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (31,5,0,'行业动态','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"20\";}}','',1,0,'0-31');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (10,1,0,'人力资源','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"21\";}}','',1,0,'0-10');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (27,4,0,'金属装饰线条','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"6\";}}','',1,3,'0-27');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (30,5,0,'公司动态','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"19\";}}','',1,0,'0-30');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (28,4,0,'质感装饰砂浆','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"8\";}}','',1,5,'0-28');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (29,4,0,'干混砂浆','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"9\";}}','',1,4,'0-29');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (26,4,0,'金属装饰板','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"6\";}}','',1,2,'0-26');
insert  into `sp_nav`(`id`,`cid`,`parentid`,`label`,`target`,`href`,`icon`,`status`,`listorder`,`path`) values (25,4,0,'装饰板','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"5\";}}','',1,1,'0-25');

/*Table structure for table `sp_nav_cat` */

DROP TABLE IF EXISTS `sp_nav_cat`;

CREATE TABLE `sp_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `sp_nav_cat` */

insert  into `sp_nav_cat`(`navcid`,`name`,`active`,`remark`) values (1,'主导航',1,'主导航');
insert  into `sp_nav_cat`(`navcid`,`name`,`active`,`remark`) values (4,'产品导航',0,'产品导航');
insert  into `sp_nav_cat`(`navcid`,`name`,`active`,`remark`) values (5,'公司动态',0,'公司动态');

/*Table structure for table `sp_oauth_user` */

DROP TABLE IF EXISTS `sp_oauth_user`;

CREATE TABLE `sp_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(60) NOT NULL,
  `expires_date` int(12) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_oauth_user` */

/*Table structure for table `sp_options` */

DROP TABLE IF EXISTS `sp_options`;

CREATE TABLE `sp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `sp_options` */

insert  into `sp_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (1,'member_email_active','{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}',1);
insert  into `sp_options`(`option_id`,`option_name`,`option_value`,`autoload`) values (2,'site_options','{\"site_name\":\"\\u6211\\u7684\\u4e2a\\u4eba\\u7f51\\u7ad9\",\"site_host\":\"http:\\/\\/localhost\\/cmf\\/\",\"site_root\":\"\\/\",\"site_tpl\":\"bs\",\"site_adminstyle\":\"bluesky\",\"site_icp\":\"\",\"site_admin_email\":\"admin@qq.com\",\"site_tongji\":\"\",\"site_copyright\":\"\",\"site_seo_title\":\"\\u5efa\\u7b51\\u4f01\\u4e1a\\u7ad9\\u6a21\\u677f\",\"site_seo_keywords\":\"\\u5efa\\u7b51\\u4f01\\u4e1a\\u7ad9\\u6a21\\u677f\",\"site_seo_description\":\"\\u5efa\\u7b51\\u4f01\\u4e1a\\u7ad9\\u6a21\\u677f\",\"urlmode\":\"1\",\"html_suffix\":\"\"}',1);

/*Table structure for table `sp_posts` */

DROP TABLE IF EXISTS `sp_posts`;

CREATE TABLE `sp_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_date` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '0000-00-00 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT NULL,
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `sp_posts` */

insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (1,1,'干混砂浆','2014-11-06 17:45:08','<p>干混砂浆干混砂浆干混砂浆干混砂浆干混砂浆干混砂浆干混砂浆干混砂浆干混砂浆</p>','干混砂浆','干混砂浆\r\n',1,1,'2014-11-06 17:44:13',NULL,0,NULL,'',0,'{\"thumb\":\"545b436fbd819.jpg\",\"photo\":[{\"url\":\"545b43190b0c8.jpg\",\"alt\":\"1-140Q11053280-L\"}]}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (2,1,'某某石','2014-11-06 17:46:12','<p><span style=\"color: rgb(59, 65, 69); font-family: &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, Arial, SimSun, &#39;Segoe UI&#39;, Tahoma, Helvetica, sans-serif; font-size: 30px; font-weight: bold; line-height: 54px;\">某某石</span><span style=\"color: rgb(59, 65, 69); font-family: &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, Arial, SimSun, &#39;Segoe UI&#39;, Tahoma, Helvetica, sans-serif; font-size: 30px; font-weight: bold; line-height: 54px;\">某某石</span><span style=\"color: rgb(59, 65, 69); font-family: &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, Arial, SimSun, &#39;Segoe UI&#39;, Tahoma, Helvetica, sans-serif; font-size: 30px; font-weight: bold; line-height: 54px;\">某某石</span><span style=\"color: rgb(59, 65, 69); font-family: &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, Arial, SimSun, &#39;Segoe UI&#39;, Tahoma, Helvetica, sans-serif; font-size: 30px; font-weight: bold; line-height: 54px;\">某某石</span></p>','某某石','某某石某某石某某石某某石某某石某某石',1,1,'2014-11-06 17:45:10',NULL,0,NULL,'',0,'{\"thumb\":\"545b43607e8c8.jpg\",\"photo\":[{\"url\":\"545b4358068eb.jpg\",\"alt\":\"1-140Q11404110-L\"}]}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (3,1,'金属装饰板','2014-11-06 17:47:58','<p><span style=\"color: rgb(59, 65, 69); font-family: &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, Arial, SimSun, &#39;Segoe UI&#39;, Tahoma, Helvetica, sans-serif; font-size: 30px; font-weight: bold; line-height: 54px;\">金属装饰板</span><span style=\"color: rgb(59, 65, 69); font-family: &#39;Microsoft YaHei UI&#39;, &#39;Microsoft YaHei&#39;, Arial, SimSun, &#39;Segoe UI&#39;, Tahoma, Helvetica, sans-serif; font-size: 30px; font-weight: bold; line-height: 54px;\">金属装饰板</span></p>','金属装饰板','金属装饰板',1,1,'2014-11-06 17:47:34',NULL,0,NULL,'',0,'{\"thumb\":\"545b43cb05f74.jpg\",\"photo\":[{\"url\":\"545b43c522efc.jpg\",\"alt\":\"1-140Q11403100-L\"}]}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (4,1,'建设路商业街','2014-11-07 15:34:43','<h3 style=\"margin: 0px; padding: 0px; color: rgb(97, 103, 106); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 24px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;\">建设路商业街</h3><p>&nbsp;</p>','建设路商业街','建设路商业街建设路商业街建设路商业街建设路商业街建设路商业街',1,1,'2014-11-07 15:33:07',NULL,0,NULL,'',0,'{\"thumb\":\"545c760dc2436.jpg\",\"photo\":[{\"url\":\"545c76053c995.jpg\",\"alt\":\"1-140Q1163KL13\"}]}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (5,1,'名人酒店','2014-11-07 15:36:09','<h3 style=\"margin: 0px; padding: 0px; color: rgb(97, 103, 106); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 24px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;\">名人酒店</h3><h3 style=\"margin: 0px; padding: 0px; color: rgb(97, 103, 106); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 24px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;\">名人酒店</h3><h3 style=\"margin: 0px; padding: 0px; color: rgb(97, 103, 106); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 24px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;\">名人酒店</h3><p></p>','名人酒店','名人酒店名人酒店名人酒店名人酒店名人酒店名人酒店',1,1,'2014-11-07 15:35:29',NULL,0,NULL,'',0,'{\"thumb\":\"545c766166e6d.jpg\",\"photo\":[{\"url\":\"545c765c4b3e0.jpg\",\"alt\":\"1-140Q1164024450\"}]}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (6,1,'丽花样','2014-11-07 15:37:05','<p></p><p><img src=\"http://localhost/cmf/data/upload/ueditor/545c91823ced7.jpg\" style=\"float:none;\" title=\"1-140Q1164024450.jpg\"/></p><p><br/></p>','丽花样','丽花样丽花样丽花样丽花样丽花样',1,1,'2014-11-07 15:36:20',NULL,0,NULL,'',0,'{\"thumb\":\"545c769dea1e3.jpg\"}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (10,1,'PHP开发工程师','2014-11-10 11:28:17','<p>PHP开发工程师PHP开发工程师PHP开发工程师</p>','PHP开发工程师','PHP开发工程师PHP开发工程师',1,1,'2014-11-10 11:13:34',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (7,1,'新疆自治区民政局大楼','2014-11-07 15:37:38','<h3 style=\"margin: 0px; padding: 0px; color: rgb(97, 103, 106); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: 微软雅黑; font-size: 24px; font-style: normal; font-variant: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;\">新疆自治区民政局大楼</h3><p></p>','新疆自治区民政局大楼','新疆自治区民政局大楼',1,1,'2014-11-07 15:37:21',NULL,0,NULL,'',0,'{\"thumb\":\"545c76c013433.jpg\",\"photo\":[{\"url\":\"545c76bb716fb.jpg\",\"alt\":\"1-140Q1155SH18\"}]}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (8,1,'装修难题装修难题','2014-11-07 16:14:24','<p style=\"text-align: center; \">装修难题装修难题装修难题</p><p style=\"text-align: center; \"><img src=\"http://localhost/cmf/data/upload/ueditor/545c80b858599.jpg\" style=\"float:none;\" title=\"1_0Q21554322200.jpg\"/></p><p style=\"text-align: center; \"><img src=\"http://localhost/cmf/data/upload/ueditor/545c80b86394c.jpg\" style=\"float:none;\" title=\"1-140Q11415380-L.jpg\"/></p><p><br/></p>','“一种工艺解决所有装修难题”-----引领','装修难题装修难题装修难题',1,1,'2014-11-07 16:13:03',NULL,0,NULL,'',0,'{\"thumb\":\"545c7f5c87fbc.jpg\",\"photo\":[{\"url\":\"545c7f24c575f.jpg\",\"alt\":\"1-140Q1164024450\"}]}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (9,1,'平面设计师','2014-11-10 11:13:30','<p>平面设计师平面设计师平面设计师平面设计师平面设计师</p>','平面设计师','平面设计师',1,1,'2014-11-10 11:12:59',NULL,0,NULL,'',0,'{\"thumb\":\"\"}',1,0);
insert  into `sp_posts`(`id`,`post_author`,`post_keywords`,`post_date`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`post_modified`,`post_content_filtered`,`post_parent`,`post_type`,`post_mime_type`,`comment_count`,`smeta`,`post_hits`,`post_like`) values (11,1,'1','2015-07-02 19:01:18','<p>1</p>','1','1',1,1,'2015-07-02 19:00:46',NULL,0,NULL,'',0,'{\"thumb\":\"\",\"photo\":[{\"url\":\"559519f89b2cf.jpg\",\"alt\":\"Tulips\"}]}',0,0);

/*Table structure for table `sp_product` */

DROP TABLE IF EXISTS `sp_product`;

CREATE TABLE `sp_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL COMMENT '名称',
  `p_model` varchar(100) DEFAULT NULL COMMENT '型号',
  `p_format` varchar(100) DEFAULT NULL COMMENT '规格',
  `brand` varchar(100) DEFAULT NULL COMMENT '品牌',
  `p_desc` text COMMENT '详细说明',
  `smeta` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '剩余数量',
  `total_num` int(10) unsigned DEFAULT NULL COMMENT '总数',
  `post_author` varchar(20) DEFAULT NULL COMMENT '发布人',
  `post_date` timestamp NULL DEFAULT NULL COMMENT '增加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `sp_product` */

insert  into `sp_product`(`id`,`p_name`,`p_model`,`p_format`,`brand`,`p_desc`,`smeta`,`price`,`num`,`total_num`,`post_author`,`post_date`) values (1,'asd','asd','asd','ad','<p>sdasd</p>','asd',11,1,1,'1',NULL);
insert  into `sp_product`(`id`,`p_name`,`p_model`,`p_format`,`brand`,`p_desc`,`smeta`,`price`,`num`,`total_num`,`post_author`,`post_date`) values (2,'11','11','11','11','<p>11</p>','{\"thumb\":\"\"}',11,11,11,'1','2015-08-27 16:57:52');

/*Table structure for table `sp_role` */

DROP TABLE IF EXISTS `sp_role`;

CREATE TABLE `sp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sp_role` */

insert  into `sp_role`(`id`,`name`,`pid`,`status`,`remark`,`create_time`,`update_time`,`listorder`) values (1,'超级管理员',0,1,'拥有网站最高管理员权限！',1329633709,1329633709,0);

/*Table structure for table `sp_role_user` */

DROP TABLE IF EXISTS `sp_role_user`;

CREATE TABLE `sp_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_role_user` */

/*Table structure for table `sp_slide` */

DROP TABLE IF EXISTS `sp_slide`;

CREATE TABLE `sp_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` bigint(20) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_pic` varchar(255) DEFAULT NULL,
  `slide_url` varchar(255) DEFAULT NULL,
  `slide_des` varchar(255) DEFAULT NULL,
  `slide_content` text,
  `slide_status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(10) DEFAULT '0',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_slide` */

/*Table structure for table `sp_slide_cat` */

DROP TABLE IF EXISTS `sp_slide_cat`;

CREATE TABLE `sp_slide_cat` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `cat_idname` varchar(255) NOT NULL,
  `cat_remark` text,
  `cat_status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_slide_cat` */

/*Table structure for table `sp_term_relationships` */

DROP TABLE IF EXISTS `sp_term_relationships`;

CREATE TABLE `sp_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `sp_term_relationships` */

insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (1,1,5,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (2,2,5,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (3,3,6,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (4,4,17,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (5,5,17,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (6,6,17,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (7,7,17,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (8,8,19,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (9,9,21,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (10,10,21,0,1);
insert  into `sp_term_relationships`(`tid`,`object_id`,`term_id`,`listorder`,`status`) values (11,11,1,0,1);

/*Table structure for table `sp_terms` */

DROP TABLE IF EXISTS `sp_terms`;

CREATE TABLE `sp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `sp_terms` */

insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (1,'列表演示','','article','',0,0,'0-1','','','','list','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (2,'瀑布流','','article','',0,0,'0-2','','','','list_masonry','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (3,'关于我们','','article','',0,0,'0-3','','','','about','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (4,'产品中心','','picture','',0,0,'0-4','','','','product','product_pic',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (5,'装饰板','','picture','',4,0,'0-4-5','','','','product_list','product_pic',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (6,'金属装饰线条','','picture','',4,0,'0-4-6','','','','product_list','product_pic',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (7,'金属装饰板','','picture','',4,0,'0-4-7','','','','product_list','product_pic',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (8,'质感装饰砂浆','','picture','',4,0,'0-4-8','','','','product_list','product_pic',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (9,'干混砂浆','','picture','',4,0,'0-4-9','','','','product_list','product_pic',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (10,'应用领域','','article','',0,0,'0-10','','','','yingyonglingyu','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (11,'建筑外墙保温领域','','article','',10,0,'0-10-11','','','','list','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (12,'公共内装领域','','article','',10,0,'0-10-12','','','','list','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (13,'家庭装饰领域','','article','',10,0,'0-10-13','','','','list','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (14,'地下空间领域','','article','',10,0,'0-10-14','','','','list','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (15,'钢结构建筑外围护领域','','article','',10,0,'0-10-15','','','','list','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (16,'洁净房领域','','article','',10,0,'0-10-16','','','','list','article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (17,'工程案例','','article','',0,0,'0-17','','','','case','case_article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (18,'资讯中心','','article','',0,0,'0-18','','','','news_list','news_article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (19,'公司动态','','article','',18,0,'0-18-19','','','','news','news_article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (20,'行业动态','','article','',18,0,'0-18-20','','','','news','news_article',0,1);
insert  into `sp_terms`(`term_id`,`name`,`slug`,`taxonomy`,`description`,`parent`,`count`,`path`,`seo_title`,`seo_keywords`,`seo_description`,`list_tpl`,`one_tpl`,`listorder`,`status`) values (21,'人力资源','','article','',0,0,'0-21','','','','join','join_article',0,1);

/*Table structure for table `sp_user_favorites` */

DROP TABLE IF EXISTS `sp_user_favorites`;

CREATE TABLE `sp_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sp_user_favorites` */

/*Table structure for table `sp_users` */

DROP TABLE IF EXISTS `sp_users`;

CREATE TABLE `sp_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `role_id` smallint(6) DEFAULT NULL COMMENT '用户角色id',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sp_users` */

insert  into `sp_users`(`id`,`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_url`,`avatar`,`sex`,`birthday`,`signature`,`last_login_ip`,`last_login_time`,`create_time`,`user_activation_key`,`user_status`,`role_id`,`score`,`user_type`) values (1,'admin','c535018ee94621232f297a57a5a743894a0e4a801fc389af','admin','admin@qq.com','',NULL,0,NULL,NULL,'127.0.0.1','2015-07-02 17:51:36','2014-11-06 04:59:25','',1,1,0,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
