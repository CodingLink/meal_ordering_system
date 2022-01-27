-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.21-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema apsfc1
--

CREATE DATABASE IF NOT EXISTS apsfc;
USE apsfc;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `authority` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`name`,`pwd`,`authority`) VALUES 
 (1,'sa','123','0'),
 (2,'苏','123','0');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `typeid` int(4) unsigned DEFAULT NULL,
  `burden` varchar(50) DEFAULT NULL,
  `brief` varchar(500) DEFAULT NULL,
  `price` float unsigned DEFAULT NULL,
  `sums` int(4) unsigned DEFAULT '0',
  `price1` float unsigned DEFAULT NULL,
  `sums1` int(4) unsigned DEFAULT '0',
  `imgpath` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`,`name`,`typeid`,`burden`,`brief`,`price`,`sums`,`price1`,`sums1`,`imgpath`) VALUES 
 (12,'粉蒸肉',10,'米粉、五花肉','暂无',26,0,23,0,'img/m_fenzhengrou.gif'),
 (14,'糖醋排骨',2,'排骨、糖、醋','暂无',26,0,24,4,'img/m_tangcupaigu.gif'),
 (15,'咸肉菜饭',1,'咸肉、米饭','暂无',15,0,12,4,'img/m_xianroucaifan.gif'),
 (17,'五香驴肉',1,'驴肉','暂无',25,0,21,1,'img/m_wuxianglvrou.gif'),
 (18,'黄瓜拉皮',1,'黄瓜、拉皮','暂无',8,0,6,1,'img/m_huanggualapi.gif'),
 (19,'水煮鱼',11,'鱼，辣椒','暂无',38,0,32,1,'img/m_shuizhuyu.gif');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;


--
-- Definition of table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `times` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`id`,`name`,`content`,`times`) VALUES 
 (6,'新增菜单《糖醋排骨》','糖醋排骨超级好吃。再挑食的小朋友都无法拒绝酸甜的口味，吃光排骨，再用糖醋汁拌米饭，今天的饭量见长。','2015-02-28 13:49:40'),
 (7,'本店特色《咸菜肉饭》','记得小时候每每妈妈做咸肉菜饭，我都要吃上二大碗，那个香啊那个好吃啊，真的不知道怎样来形容。吃过的朋友，大家都懂的，呵呵!11','2015-02-28 13:53:39');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;


--
-- Definition of table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userid` int(4) unsigned DEFAULT NULL,
  `menuid` int(4) unsigned DEFAULT NULL,
  `menusum` int(4) unsigned DEFAULT NULL,
  `times` varchar(20) DEFAULT NULL,
  `delivery` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`,`userid`,`menuid`,`menusum`,`times`,`delivery`) VALUES 
 (16,2,12,2,'2015-07-26 13:16:28',1),
 (17,1,14,1,'2015-07-26 13:23:30',1),
 (19,4,15,2,'2015-07-26 23:26:20',1),
 (23,4,14,1,'2015-07-27 00:35:09',1),
 (24,4,17,1,'2015-07-27 00:35:09',1),
 (25,2,15,1,'2015-07-27 20:14:23',1),
 (27,2,18,1,'2015-07-27 20:31:56',1),
 (28,2,19,1,'2015-07-27 20:31:56',0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` (`id`,`name`) VALUES 
 (1,'凉拌菜'),
 (2,'炒菜'),
 (6,'炒饭'),
 (10,'蒸菜'),
 (11,'川菜');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(4) unsigned DEFAULT NULL,
  `card` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `type` int(4) unsigned DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`pwd`,`realname`,`sex`,`age`,`card`,`address`,`phone`,`email`,`code`,`type`) VALUES 
 (2,'222','222','2221','女',241,'211111111111111111','天津市','13988888888','123@163.com','110044',0),
 (3,'sunday','123','张三','男',26,'4222222222222222','北京市海淀区','13901001111','13901001111@139.com','101000',0),
 (4,'1','1','1','男',1,'1','1','1','1','1',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
