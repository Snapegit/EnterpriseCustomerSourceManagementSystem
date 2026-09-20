-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl1778968
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl1778968`
--

/*!40000 DROP DATABASE IF EXISTS `cl1778968`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl1778968` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl1778968`;

--
-- Table structure for table `chanpinleixing`
--

DROP TABLE IF EXISTS `chanpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinleixing` varchar(200) DEFAULT NULL COMMENT '产品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='产品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinleixing`
--

LOCK TABLES `chanpinleixing` WRITE;
/*!40000 ALTER TABLE `chanpinleixing` DISABLE KEYS */;
INSERT INTO `chanpinleixing` VALUES (101,'2024-03-12 11:19:17','产品类型1'),(102,'2024-03-12 11:19:17','产品类型2'),(103,'2024-03-12 11:19:17','产品类型3'),(104,'2024-03-12 11:19:17','产品类型4'),(105,'2024-03-12 11:19:17','产品类型5'),(106,'2024-03-12 11:19:17','产品类型6');
/*!40000 ALTER TABLE `chanpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinxinxi`
--

DROP TABLE IF EXISTS `chanpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `chanpinleixing` varchar(200) DEFAULT NULL COMMENT '产品类型',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `chanpinjiage` double DEFAULT NULL COMMENT '产品价格',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `chanpintupian` longtext COMMENT '产品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710243296220 DEFAULT CHARSET=utf8 COMMENT='产品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinxinxi`
--

LOCK TABLES `chanpinxinxi` WRITE;
/*!40000 ALTER TABLE `chanpinxinxi` DISABLE KEYS */;
INSERT INTO `chanpinxinxi` VALUES (111,'2024-03-12 11:19:17','产品名称1','产品类型1','数量1',1,'2024-03-12','file/chanpinxinxiChanpintupian1.jpg,file/chanpinxinxiChanpintupian2.jpg,file/chanpinxinxiChanpintupian3.jpg'),(112,'2024-03-12 11:19:17','产品名称2','产品类型2','数量2',2,'2024-03-12','file/chanpinxinxiChanpintupian2.jpg,file/chanpinxinxiChanpintupian3.jpg,file/chanpinxinxiChanpintupian4.jpg'),(113,'2024-03-12 11:19:17','产品名称3','产品类型3','数量3',3,'2024-03-12','file/chanpinxinxiChanpintupian3.jpg,file/chanpinxinxiChanpintupian4.jpg,file/chanpinxinxiChanpintupian5.jpg'),(114,'2024-03-12 11:19:17','产品名称4','产品类型4','数量4',4,'2024-03-12','file/chanpinxinxiChanpintupian4.jpg,file/chanpinxinxiChanpintupian5.jpg,file/chanpinxinxiChanpintupian6.jpg'),(115,'2024-03-12 11:19:17','产品名称5','产品类型5','数量5',5,'2024-03-12','file/chanpinxinxiChanpintupian5.jpg,file/chanpinxinxiChanpintupian6.jpg,file/chanpinxinxiChanpintupian7.jpg'),(1710243296219,'2024-03-12 11:34:55','1','产品类型2','1',12,'2024-03-12','file/1710243294551.jpg');
/*!40000 ALTER TABLE `chanpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailregistercode`
--

DROP TABLE IF EXISTS `emailregistercode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailregistercode` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `email` varchar(200) NOT NULL COMMENT '邮箱',
  `role` varchar(200) NOT NULL COMMENT '角色',
  `code` varchar(200) NOT NULL COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='邮箱验证码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailregistercode`
--

LOCK TABLES `emailregistercode` WRITE;
/*!40000 ALTER TABLE `emailregistercode` DISABLE KEYS */;
INSERT INTO `emailregistercode` VALUES (121,'2024-03-12 11:19:17','邮箱1','角色1','验证码1'),(122,'2024-03-12 11:19:17','邮箱2','角色2','验证码2'),(123,'2024-03-12 11:19:17','邮箱3','角色3','验证码3'),(124,'2024-03-12 11:19:17','邮箱4','角色4','验证码4'),(125,'2024-03-12 11:19:17','邮箱5','角色5','验证码5'),(126,'2024-03-12 11:19:17','邮箱6','角色6','验证码6'),(127,'2024-03-12 11:33:13','1093221698@qq.com','用户','8003');
/*!40000 ALTER TABLE `emailregistercode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuleixing`
--

DROP TABLE IF EXISTS `fuwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='服务类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuleixing`
--

LOCK TABLES `fuwuleixing` WRITE;
/*!40000 ALTER TABLE `fuwuleixing` DISABLE KEYS */;
INSERT INTO `fuwuleixing` VALUES (81,'2024-03-12 11:19:17','服务类型1'),(82,'2024-03-12 11:19:17','服务类型2'),(83,'2024-03-12 11:19:17','服务类型3'),(84,'2024-03-12 11:19:17','服务类型4'),(85,'2024-03-12 11:19:17','服务类型5'),(86,'2024-03-12 11:19:17','服务类型6');
/*!40000 ALTER TABLE `fuwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuxinxi`
--

DROP TABLE IF EXISTS `fuwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `fuwufanwei` longtext COMMENT '服务范围',
  `fuwushijian` date DEFAULT NULL COMMENT '服务时间',
  `fuwujiage` double DEFAULT NULL COMMENT '服务价格',
  `fuwujieshao` longtext COMMENT '服务介绍',
  `tupian` longtext COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710243272867 DEFAULT CHARSET=utf8 COMMENT='服务信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuxinxi`
--

LOCK TABLES `fuwuxinxi` WRITE;
/*!40000 ALTER TABLE `fuwuxinxi` DISABLE KEYS */;
INSERT INTO `fuwuxinxi` VALUES (91,'2024-03-12 11:19:17','服务项目1','服务类型1','服务范围1','2024-03-12',1,'服务介绍1','file/fuwuxinxiTupian1.jpg,file/fuwuxinxiTupian2.jpg,file/fuwuxinxiTupian3.jpg'),(92,'2024-03-12 11:19:17','服务项目2','服务类型2','服务范围2','2024-03-12',2,'服务介绍2','file/fuwuxinxiTupian2.jpg,file/fuwuxinxiTupian3.jpg,file/fuwuxinxiTupian4.jpg'),(93,'2024-03-12 11:19:17','服务项目3','服务类型3','服务范围3','2024-03-12',3,'服务介绍3','file/fuwuxinxiTupian3.jpg,file/fuwuxinxiTupian4.jpg,file/fuwuxinxiTupian5.jpg'),(94,'2024-03-12 11:19:17','服务项目4','服务类型4','服务范围4','2024-03-12',4,'服务介绍4','file/fuwuxinxiTupian4.jpg,file/fuwuxinxiTupian5.jpg,file/fuwuxinxiTupian6.jpg'),(95,'2024-03-12 11:19:17','服务项目5','服务类型5','服务范围5','2024-03-12',5,'服务介绍5','file/fuwuxinxiTupian5.jpg,file/fuwuxinxiTupian6.jpg,file/fuwuxinxiTupian7.jpg'),(96,'2024-03-12 11:19:17','服务项目6','服务类型6','服务范围6','2024-03-12',6,'服务介绍6','file/fuwuxinxiTupian6.jpg,file/fuwuxinxiTupian7.jpg,file/fuwuxinxiTupian8.jpg');
/*!40000 ALTER TABLE `fuwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehuxinxi`
--

DROP TABLE IF EXISTS `kehuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehubianhao` varchar(200) DEFAULT NULL COMMENT '客户编号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `xingquaihao` varchar(200) DEFAULT NULL COMMENT '兴趣爱好',
  `kehutouxiang` longtext COMMENT '客户头像',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehubianhao` (`kehubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='客户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehuxinxi`
--

LOCK TABLES `kehuxinxi` WRITE;
/*!40000 ALTER TABLE `kehuxinxi` DISABLE KEYS */;
INSERT INTO `kehuxinxi` VALUES (51,'2024-03-12 11:19:17','1111111111','客户姓名1','19819881111','男','地址1','兴趣爱好1','file/kehuxinxiKehutouxiang1.jpg,file/kehuxinxiKehutouxiang2.jpg,file/kehuxinxiKehutouxiang3.jpg',1,'2024-03-12 19:19:17'),(52,'2024-03-12 11:19:17','2222222222','客户姓名2','19819881112','男','地址2','兴趣爱好2','file/kehuxinxiKehutouxiang2.jpg,file/kehuxinxiKehutouxiang3.jpg,file/kehuxinxiKehutouxiang4.jpg',2,'2024-03-12 19:19:17'),(53,'2024-03-12 11:19:17','3333333333','客户姓名3','19819881113','男','地址3','兴趣爱好3','file/kehuxinxiKehutouxiang3.jpg,file/kehuxinxiKehutouxiang4.jpg,file/kehuxinxiKehutouxiang5.jpg',3,'2024-03-12 19:19:17'),(54,'2024-03-12 11:19:17','4444444444','客户姓名4','19819881114','男','地址4','兴趣爱好4','file/kehuxinxiKehutouxiang4.jpg,file/kehuxinxiKehutouxiang5.jpg,file/kehuxinxiKehutouxiang6.jpg',4,'2024-03-12 19:19:17'),(55,'2024-03-12 11:19:17','5555555555','客户姓名5','19819881115','男','地址5','兴趣爱好5','file/kehuxinxiKehutouxiang5.jpg,file/kehuxinxiKehutouxiang6.jpg,file/kehuxinxiKehutouxiang7.jpg',5,'2024-03-12 19:19:17'),(56,'2024-03-12 11:19:17','6666666666','客户姓名6','19819881116','男','地址6','兴趣爱好6','file/kehuxinxiKehutouxiang6.jpg,file/kehuxinxiKehutouxiang7.jpg,file/kehuxinxiKehutouxiang8.jpg',6,'2024-03-12 19:19:17');
/*!40000 ALTER TABLE `kehuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-12 11:19:18','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"服务信息\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxinxi\"}],\"fontClass\":\"icon-common20\",\"menu\":\"服务信息管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common31\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xee48;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"销量统计\"],\"menu\":\"销量订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoliangdingdan\"}],\"fontClass\":\"icon-common16\",\"menu\":\"销量订单管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"产品类型\",\"menuJump\":\"列表\",\"tableName\":\"chanpinleixing\"}],\"fontClass\":\"icon-common23\",\"menu\":\"产品类型管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common24\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user7\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"服务类型\",\"menuJump\":\"列表\",\"tableName\":\"fuwuleixing\"}],\"fontClass\":\"icon-common47\",\"menu\":\"服务类型管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"产品信息\",\"menuJump\":\"列表\",\"tableName\":\"chanpinxinxi\"}],\"fontClass\":\"icon-common6\",\"menu\":\"产品信息管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common42\",\"menu\":\"管理员管理\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"客户信息\",\"menuJump\":\"列表\",\"tableName\":\"kehuxinxi\"}],\"fontClass\":\"icon-common17\",\"menu\":\"客户信息管理\",\"unicode\":\"&#xedfe;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"客户信息\",\"menuJump\":\"列表\",\"tableName\":\"kehuxinxi\"}],\"menu\":\"客户信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"产品信息\",\"menuJump\":\"列表\",\"tableName\":\"chanpinxinxi\"}],\"menu\":\"产品信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\"],\"menu\":\"销量订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoliangdingdan\"}],\"menu\":\"销量订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\"],\"menu\":\"服务信息\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxinxi\"}],\"menu\":\"服务信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"服务信息\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxinxi\"}],\"fontClass\":\"icon-common20\",\"menu\":\"服务信息管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common36\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xee9f;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"产品类型\",\"menuJump\":\"列表\",\"tableName\":\"chanpinleixing\"}],\"fontClass\":\"icon-common23\",\"menu\":\"产品类型管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"服务类型\",\"menuJump\":\"列表\",\"tableName\":\"fuwuleixing\"}],\"fontClass\":\"icon-common47\",\"menu\":\"服务类型管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"产品信息\",\"menuJump\":\"列表\",\"tableName\":\"chanpinxinxi\"}],\"fontClass\":\"icon-common6\",\"menu\":\"产品信息管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"销量统计\"],\"menu\":\"销量订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoliangdingdan\"}],\"fontClass\":\"icon-common16\",\"menu\":\"销量订单管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"客户信息\",\"menuJump\":\"列表\",\"tableName\":\"kehuxinxi\"}],\"fontClass\":\"icon-common17\",\"menu\":\"客户信息管理\",\"unicode\":\"&#xedfe;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"客户信息\",\"menuJump\":\"列表\",\"tableName\":\"kehuxinxi\"}],\"menu\":\"客户信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"产品信息\",\"menuJump\":\"列表\",\"tableName\":\"chanpinxinxi\"}],\"menu\":\"产品信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\"],\"menu\":\"销量订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoliangdingdan\"}],\"menu\":\"销量订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\"],\"menu\":\"服务信息\",\"menuJump\":\"列表\",\"tableName\":\"fuwuxinxi\"}],\"menu\":\"服务信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-03-12 11:19:17','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(32,'2024-03-12 11:19:17','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(33,'2024-03-12 11:19:17','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(34,'2024-03-12 11:19:17','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(35,'2024-03-12 11:19:17','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(36,'2024-03-12 11:19:17','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1710243198331,'11','yonghu','用户','8q04ks4azqiq4fomsn0xfniikuefbwsd','2024-03-12 11:33:44','2024-03-12 12:35:49'),(2,1,'admin','users','管理员','xl01ympl2u7d18exs5vczwq3ah1vdf9i','2024-03-12 11:36:01','2024-03-12 12:36:01');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-12 11:19:18','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoliangdingdan`
--

DROP TABLE IF EXISTS `xiaoliangdingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoliangdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `fukuanfangshi` varchar(200) DEFAULT NULL COMMENT '付款方式',
  `fahuori` datetime DEFAULT NULL COMMENT '发货日',
  `shouhuori` datetime DEFAULT NULL COMMENT '收货日',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710243331504 DEFAULT CHARSET=utf8 COMMENT='销量订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoliangdingdan`
--

LOCK TABLES `xiaoliangdingdan` WRITE;
/*!40000 ALTER TABLE `xiaoliangdingdan` DISABLE KEYS */;
INSERT INTO `xiaoliangdingdan` VALUES (61,'2024-03-12 11:19:17','1111111111','产品名称1',1,1,'客户姓名1','联系方式1','订单状态1','付款方式1','2024-03-12 19:19:17','2024-03-12 19:19:17'),(62,'2024-03-12 11:19:17','2222222222','产品名称2',2,2,'客户姓名2','联系方式2','订单状态2','付款方式2','2024-03-12 19:19:17','2024-03-12 19:19:17'),(63,'2024-03-12 11:19:17','3333333333','产品名称3',3,3,'客户姓名3','联系方式3','订单状态3','付款方式3','2024-03-12 19:19:17','2024-03-12 19:19:17'),(64,'2024-03-12 11:19:17','4444444444','产品名称4',4,4,'客户姓名4','联系方式4','订单状态4','付款方式4','2024-03-12 19:19:17','2024-03-12 19:19:17'),(65,'2024-03-12 11:19:17','5555555555','产品名称5',5,5,'客户姓名5','联系方式5','订单状态5','付款方式5','2024-03-12 19:19:17','2024-03-12 19:19:17'),(66,'2024-03-12 11:19:17','6666666666','产品名称6',6,6,'客户姓名6','联系方式6','订单状态6','付款方式6','2024-03-12 19:19:17','2024-03-12 19:19:17'),(1710243331503,'2024-03-12 11:35:30','1710243303383','11',131,1333,'李阳','1321010120','正常','微信','2024-03-12 19:35:27','2024-03-12 19:35:28');
/*!40000 ALTER TABLE `xiaoliangdingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1710243198332 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-03-12 11:19:17','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','102020001@qq.com'),(42,'2024-03-12 11:19:17','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','102020002@qq.com'),(43,'2024-03-12 11:19:17','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','102020003@qq.com'),(44,'2024-03-12 11:19:17','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','102020004@qq.com'),(45,'2024-03-12 11:19:17','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','102020005@qq.com'),(46,'2024-03-12 11:19:17','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','102020006@qq.com'),(1710243198331,'2024-03-12 11:33:18','11','11','李玉','file/1710243178328.jpg','男','13212121212','1093221698@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 20:37:00
