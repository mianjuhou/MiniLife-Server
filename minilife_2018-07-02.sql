# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.21)
# Database: minilife
# Generation Time: 2018-07-02 03:00:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '主键',
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父级分类ID',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '分类名称',
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `update_time` bigint(13) NOT NULL DEFAULT '0' COMMENT '条目更新时间',
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品分类表';

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;

INSERT INTO `category` (`id`, `parent_id`, `user_id`, `name`, `order_num`, `update_time`)
VALUES
	(1,0,1,'衣物',0,0),
	(2,1,1,'内衣',0,0),
	(3,1,1,'鞋',0,0),
	(4,1,1,'夏季',0,0),
	(5,1,1,'春秋',0,0),
	(6,1,1,'冬',0,0),
	(10,0,1,'凯慧',0,0),
	(11,10,1,'睡衣',0,0),
	(12,10,1,'运动',0,0),
	(13,10,1,'夏装',0,0),
	(14,10,1,'冬季',0,0),
	(15,10,1,'内衣',0,0),
	(16,10,1,'鞋',0,0),
	(17,0,1,'电子',0,0),
	(19,0,1,'耳机',0,1530498649355),
	(20,19,1,'蓝牙耳机',0,1530498669463);

/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table goods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` bigint(20) unsigned NOT NULL COMMENT '物品ID',
  `category_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '所属分类ID',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '物品名称',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '物品状态0普通1待扔2待购3待换',
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `update_time` bigint(13) NOT NULL DEFAULT '0' COMMENT '商品名称和状态更新毫秒值',
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品表';

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;

INSERT INTO `goods` (`id`, `category_id`, `user_id`, `name`, `state`, `order_num`, `update_time`)
VALUES
	(1,2,1,'灰内裤',0,0,0),
	(2,2,1,'蓝内裤',0,0,0),
	(3,2,1,'蓝内裤',0,0,0),
	(7,2,1,'蓝五指',0,0,0),
	(8,2,1,'黒五指',0,0,0),
	(9,2,1,'绿五指',0,0,0),
	(10,3,1,'皮鞋',0,0,0),
	(11,3,1,'沙滩鞋',3,0,0),
	(12,3,1,'徒步鞋',0,0,0),
	(13,3,1,'蓝跑步鞋',0,0,0),
	(14,3,1,'黑跑步鞋',0,0,0),
	(15,3,1,'拖鞋',0,0,0),
	(16,4,1,'米色长裤',0,0,0),
	(17,4,1,'卡其长裤',0,0,0),
	(18,4,1,'灰短裤',0,0,0),
	(19,4,1,'卡其短裤',0,0,0),
	(20,4,1,'蓝T恤',0,0,0),
	(21,4,1,'蓝T恤',0,0,0),
	(22,4,1,'灰T恤',0,0,0),
	(23,4,1,'白T恤',0,0,0),
	(27,11,1,'短袖裙',0,0,0),
	(28,11,1,'短袖裙',0,0,0),
	(29,11,1,'吊带裤',0,0,0),
	(30,11,1,'吊带裙',0,0,0),
	(31,12,1,'运动短袖',0,0,0),
	(32,12,1,'运动裤',0,0,0),
	(33,12,1,'运动内衣',0,0,0),
	(34,12,1,'瑜伽裤',0,0,0),
	(35,12,1,'运动短裤',3,0,0),
	(36,13,1,'白长裙',0,0,0),
	(37,13,1,'牛仔短裙',0,0,0),
	(38,13,1,'休闲短袖',0,0,0),
	(39,13,1,'绿色短袖',0,0,0),
	(40,13,1,'蓝色短袖',0,0,0),
	(41,13,1,'黑色短袖',0,0,0),
	(42,13,1,'居家短袖',0,0,0),
	(43,13,1,'白短袖',0,0,0),
	(44,13,1,'白短袖',0,0,0),
	(45,13,1,'黄色短袖',3,0,0),
	(46,13,1,'白T恤',0,0,0),
	(47,13,1,'白T恤',0,0,0),
	(48,13,1,'白T恤',0,0,0),
	(49,13,1,'高腰牛仔裤',0,0,0),
	(50,13,1,'背带牛仔',0,0,0),
	(51,13,1,'七分牛仔',0,0,0),
	(52,13,1,'灰色短袖',0,0,0),
	(53,13,1,'蓝色五分袖',0,0,0),
	(54,13,1,'黑色牛仔',0,0,0),
	(55,13,1,'深蓝牛仔',0,0,0),
	(56,13,1,'牛仔外套',0,0,0),
	(57,13,1,'小米外套',0,0,0),
	(58,13,1,'粉色外套',0,0,0),
	(59,13,1,'白色长袖',0,0,0),
	(60,13,1,'黄色衬衫',0,0,0),
	(61,12,1,'泳衣',0,0,0),
	(62,15,1,'灰内裤',0,0,0),
	(64,15,1,'灰白内裤',0,0,0),
	(65,15,1,'紫色内裤',0,0,0),
	(66,15,1,'白色内裤',0,0,0),
	(67,15,1,'黑色内裤',0,0,0),
	(68,15,1,'安全裤',0,0,0),
	(69,15,1,'安全裤',0,0,0),
	(70,15,1,'抹胸',0,0,0),
	(71,15,1,'抹胸',0,0,0),
	(72,15,1,'抹胸',0,0,0),
	(74,15,1,'灰色文胸',0,0,0),
	(75,15,1,'灰色文胸',0,0,0),
	(76,15,1,'肉色文胸',3,0,0),
	(77,13,1,'帽子',0,0,0),
	(78,13,1,'白色衬衫',3,0,0),
	(79,13,1,'黑色吊带T恤',0,0,0),
	(80,15,1,'五指袜',0,0,0),
	(81,15,1,'短袜',0,0,0),
	(82,15,1,'短袜',0,0,0),
	(83,15,1,'运动短袜',0,0,0),
	(84,15,1,'运动短袜',0,0,0),
	(85,15,1,'船袜',0,0,0),
	(86,15,1,'船袜',0,0,0),
	(87,15,1,'文胸',2,0,0),
	(88,16,1,'黑色运动鞋',0,0,0),
	(89,16,1,'小白鞋',0,0,0),
	(90,16,1,'凉鞋',0,0,0),
	(91,16,1,'拖鞋',0,0,0),
	(92,20,1,'无线耳机',0,0,1530498680098),
	(93,20,1,'小米耳机',0,0,1530498686458);

/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名称',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码MD5加密',
  `login_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '登录状态0未登录1已登录',
  `machine_num` varchar(50) NOT NULL DEFAULT '0' COMMENT '机器码',
  `update_time` bigint(13) NOT NULL DEFAULT '0' COMMENT '此用户分类的更新时间毫秒值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `email`, `password`, `login_state`, `machine_num`, `update_time`)
VALUES
	(1,'房德安','fangdean@yeah.net','123456',0,'0',0),
	(2,'理想','mianjuhou@163.com','123456',0,'0',0);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
