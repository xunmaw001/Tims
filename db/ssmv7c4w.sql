-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmv7c4w
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739509830 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-03 02:35:10',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-03 02:35:10',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-03 02:35:10',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-03 02:35:10',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-03 02:35:10',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-03 02:35:10',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614739509829,'2021-03-03 02:45:09',1614739431757,'河北省邯郸市复兴区百家村街道复兴路228号','张三','13333333333','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'jiudianxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739543193 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmv7c4w/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmv7c4w/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmv7c4w/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgonggaoxinxi`
--

DROP TABLE IF EXISTS `discussgonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='公告信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgonggaoxinxi`
--

LOCK TABLES `discussgonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `discussgonggaoxinxi` DISABLE KEYS */;
INSERT INTO `discussgonggaoxinxi` VALUES (121,'2021-03-03 02:35:10',1,1,'评论内容1','回复内容1'),(122,'2021-03-03 02:35:10',2,2,'评论内容2','回复内容2'),(123,'2021-03-03 02:35:10',3,3,'评论内容3','回复内容3'),(124,'2021-03-03 02:35:10',4,4,'评论内容4','回复内容4'),(125,'2021-03-03 02:35:10',5,5,'评论内容5','回复内容5'),(126,'2021-03-03 02:35:10',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussgonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739530731 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
INSERT INTO `discussjingdianxinxi` VALUES (101,'2021-03-03 02:35:10',1,1,'评论内容1','回复内容1'),(102,'2021-03-03 02:35:10',2,2,'评论内容2','回复内容2'),(103,'2021-03-03 02:35:10',3,3,'评论内容3','回复内容3'),(104,'2021-03-03 02:35:10',4,4,'评论内容4','回复内容4'),(105,'2021-03-03 02:35:10',5,5,'评论内容5','回复内容5'),(106,'2021-03-03 02:35:10',6,6,'评论内容6','回复内容6'),(1614739530730,'2021-03-03 02:45:30',24,1614739431757,'看起来很不错',NULL);
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiudianxinxi`
--

DROP TABLE IF EXISTS `discussjiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='酒店信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiudianxinxi`
--

LOCK TABLES `discussjiudianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiudianxinxi` DISABLE KEYS */;
INSERT INTO `discussjiudianxinxi` VALUES (111,'2021-03-03 02:35:10',1,1,'评论内容1','回复内容1'),(112,'2021-03-03 02:35:10',2,2,'评论内容2','回复内容2'),(113,'2021-03-03 02:35:10',3,3,'评论内容3','回复内容3'),(114,'2021-03-03 02:35:10',4,4,'评论内容4','回复内容4'),(115,'2021-03-03 02:35:10',5,5,'评论内容5','回复内容5'),(116,'2021-03-03 02:35:10',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobianhao` varchar(200) NOT NULL COMMENT '公告编号',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `xiangguantupian` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonggaobianhao` (`gonggaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739836773 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (41,'2021-03-03 02:35:10','公告编号1','公告标题1','http://localhost:8080/ssmv7c4w/upload/gonggaoxinxi_xiangguantupian1.jpg','公告内容1','2021-03-03',1,1),(42,'2021-03-03 02:35:10','公告编号2','公告标题2','http://localhost:8080/ssmv7c4w/upload/gonggaoxinxi_xiangguantupian2.jpg','公告内容2','2021-03-03',2,2),(43,'2021-03-03 02:35:10','公告编号3','公告标题3','http://localhost:8080/ssmv7c4w/upload/gonggaoxinxi_xiangguantupian3.jpg','公告内容3','2021-03-03',3,3),(44,'2021-03-03 02:35:10','公告编号4','公告标题4','http://localhost:8080/ssmv7c4w/upload/gonggaoxinxi_xiangguantupian4.jpg','公告内容4','2021-03-03',4,4),(45,'2021-03-03 02:35:10','公告编号5','公告标题5','http://localhost:8080/ssmv7c4w/upload/gonggaoxinxi_xiangguantupian5.jpg','公告内容5','2021-03-03',5,5),(46,'2021-03-03 02:35:10','公告编号6','公告标题6','http://localhost:8080/ssmv7c4w/upload/gonggaoxinxi_xiangguantupian6.jpg','公告内容6','2021-03-03',6,6),(1614739836772,'2021-03-03 02:50:36','1614739730091','关于新增旅游路线','http://localhost:8080/ssmv7c4w/upload/1614739780142.jpeg','<p>新的旅游路线可以由新的代表申请<img src=\"http://localhost:8080/ssmv7c4w/upload/1614739835060.jpg\"></p>','2021-01-15',0,0);
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739431758 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2021-03-03 02:35:10','会员1','123456','姓名1','男','440300199101010001','13823888881','http://localhost:8080/ssmv7c4w/upload/huiyuan_xiangpian1.jpg',100),(12,'2021-03-03 02:35:10','会员2','123456','姓名2','男','440300199202020002','13823888882','http://localhost:8080/ssmv7c4w/upload/huiyuan_xiangpian2.jpg',100),(13,'2021-03-03 02:35:10','会员3','123456','姓名3','男','440300199303030003','13823888883','http://localhost:8080/ssmv7c4w/upload/huiyuan_xiangpian3.jpg',100),(14,'2021-03-03 02:35:10','会员4','123456','姓名4','男','440300199404040004','13823888884','http://localhost:8080/ssmv7c4w/upload/huiyuan_xiangpian4.jpg',100),(15,'2021-03-03 02:35:10','会员5','123456','姓名5','男','440300199505050005','13823888885','http://localhost:8080/ssmv7c4w/upload/huiyuan_xiangpian5.jpg',100),(16,'2021-03-03 02:35:10','会员6','123456','姓名6','男','440300199606060006','13823888886','http://localhost:8080/ssmv7c4w/upload/huiyuan_xiangpian6.jpg',100),(1614739431757,'2021-03-03 02:43:51','111','111','张三','男','226211133333336666','13333333333','http://localhost:8080/ssmv7c4w/upload/1614739449053.png',100.4);
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianbianhao` varchar(200) NOT NULL COMMENT '景点编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianxinxi` varchar(200) DEFAULT NULL COMMENT '景点信息',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `xianluxinxi` varchar(200) DEFAULT NULL COMMENT '线路信息',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianbianhao` (`jingdianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739692456 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (21,'2021-03-03 02:35:10','景点编号1','景点名称1','景点信息1','http://localhost:8080/ssmv7c4w/upload/jingdianxinxi_jingdiantupian1.jpg','线路信息1','2021-03-03',1,1,99.9),(22,'2021-03-03 02:35:10','景点编号2','景点名称2','景点信息2','http://localhost:8080/ssmv7c4w/upload/jingdianxinxi_jingdiantupian2.jpg','线路信息2','2021-03-03',2,2,99.9),(23,'2021-03-03 02:35:10','景点编号3','景点名称3','景点信息3','http://localhost:8080/ssmv7c4w/upload/jingdianxinxi_jingdiantupian3.jpg','线路信息3','2021-03-03',3,3,99.9),(24,'2021-03-03 02:35:10','景点编号4','景点名称4','景点信息4','http://localhost:8080/ssmv7c4w/upload/jingdianxinxi_jingdiantupian4.jpg','线路信息4','2021-03-03',5,5,99.9),(25,'2021-03-03 02:35:10','景点编号5','景点名称5','景点信息5','http://localhost:8080/ssmv7c4w/upload/jingdianxinxi_jingdiantupian5.jpg','线路信息5','2021-03-03',5,5,99.9),(26,'2021-03-03 02:35:10','景点编号6','景点名称6','景点信息6','http://localhost:8080/ssmv7c4w/upload/jingdianxinxi_jingdiantupian6.jpg','线路信息6','2021-03-03',6,6,99.9),(1614739692455,'2021-03-03 02:48:11','1614739603119','新景点','政府新建的景点','http://localhost:8080/ssmv7c4w/upload/1614739669350.jpg','坐地铁可直达','2021-01-07',0,0,120);
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianxinxi`
--

DROP TABLE IF EXISTS `jiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianbianhao` varchar(200) NOT NULL COMMENT '酒店编号',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudianxinxi` varchar(200) DEFAULT NULL COMMENT '酒店信息',
  `jiudiantupian` varchar(200) DEFAULT NULL COMMENT '酒店图片',
  `jiudianweizhi` varchar(200) DEFAULT NULL COMMENT '酒店位置',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiudianbianhao` (`jiudianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739745381 DEFAULT CHARSET=utf8 COMMENT='酒店信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianxinxi`
--

LOCK TABLES `jiudianxinxi` WRITE;
/*!40000 ALTER TABLE `jiudianxinxi` DISABLE KEYS */;
INSERT INTO `jiudianxinxi` VALUES (31,'2021-03-03 02:35:10','酒店编号1','酒店名称1','酒店信息1','http://localhost:8080/ssmv7c4w/upload/jiudianxinxi_jiudiantupian1.jpg','酒店位置1','2021-03-03',1,1,99.9),(32,'2021-03-03 02:35:10','酒店编号2','酒店名称2','酒店信息2','http://localhost:8080/ssmv7c4w/upload/jiudianxinxi_jiudiantupian2.jpg','酒店位置2','2021-03-03',2,2,99.9),(33,'2021-03-03 02:35:10','酒店编号3','酒店名称3','酒店信息3','http://localhost:8080/ssmv7c4w/upload/jiudianxinxi_jiudiantupian3.jpg','酒店位置3','2021-03-03',3,3,99.9),(34,'2021-03-03 02:35:10','酒店编号4','酒店名称4','酒店信息4','http://localhost:8080/ssmv7c4w/upload/jiudianxinxi_jiudiantupian4.jpg','酒店位置4','2021-03-03',4,4,99.9),(35,'2021-03-03 02:35:10','酒店编号5','酒店名称5','酒店信息5','http://localhost:8080/ssmv7c4w/upload/jiudianxinxi_jiudiantupian5.jpg','酒店位置5','2021-03-03',5,5,99.9),(36,'2021-03-03 02:35:10','酒店编号6','酒店名称6','酒店信息6','http://localhost:8080/ssmv7c4w/upload/jiudianxinxi_jiudiantupian6.jpg','酒店位置6','2021-03-03',6,6,99.9),(1614739745380,'2021-03-03 02:49:04','1614739677931','商务酒店','坐落于市区旁的新型商务酒店','http://localhost:8080/ssmv7c4w/upload/1614739724430.jpg','坐落于市区旁','2021-01-14',0,0,200);
/*!40000 ALTER TABLE `jiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739577693 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2021-03-03 02:35:10',1,'用户名1','留言内容1','回复内容1'),(92,'2021-03-03 02:35:10',2,'用户名2','留言内容2','回复内容2'),(93,'2021-03-03 02:35:10',3,'用户名3','留言内容3','回复内容3'),(94,'2021-03-03 02:35:10',4,'用户名4','留言内容4','回复内容4'),(95,'2021-03-03 02:35:10',5,'用户名5','留言内容5','回复内容5'),(96,'2021-03-03 02:35:10',6,'用户名6','留言内容6','回复内容6'),(1614739577692,'2021-03-03 02:46:16',1614739431757,'111','有没有更优惠的信息','可以');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'jiudianxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739589105 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1614739588901,'2021-03-03 02:46:28','20213310461036663964','jiudianxinxi',1614739431757,35,'酒店名称5','http://localhost:8080/ssmv7c4w/upload/jiudianxinxi_jiudiantupian5.jpg',1,99.9,99.9,199.8,99.9,1,'已发货','河北省邯郸市复兴区百家村街道复兴路228号'),(1614739589104,'2021-03-03 02:46:28','20213310461036169015','jingdianxinxi',1614739431757,26,'景点名称6','http://localhost:8080/ssmv7c4w/upload/jingdianxinxi_jingdiantupian6.jpg',1,99.9,99.9,199.8,99.9,1,'已发货','河北省邯郸市复兴区百家村街道复兴路228号');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614739520120 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614739520119,'2021-03-03 02:45:20',1614739431757,24,'jingdianxinxi','景点名称4','http://localhost:8080/ssmv7c4w/upload/jingdianxinxi_jingdiantupian4.jpg');
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
INSERT INTO `token` VALUES (1,1614739431757,'111','huiyuan','会员','e1yxkuhoh528zfz3d4src66w5i9z6eac','2021-03-03 02:43:58','2021-03-03 03:43:58'),(2,1,'abo','users','管理员','6eg07a0haoi6m7i0u5ss3w169jslbqg1','2021-03-03 02:46:53','2021-03-03 03:46:54');
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
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-03 02:35:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 16:10:03
