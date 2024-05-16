/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - huochpiaodingpiao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`huochpiaodingpiao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `huochpiaodingpiao`;

/*Table structure for table `checi` */

DROP TABLE IF EXISTS `checi`;

CREATE TABLE `checi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `checi_name` varchar(200) DEFAULT NULL COMMENT '车次标题 Search111 ',
  `checi_photo` varchar(200) DEFAULT NULL COMMENT '火车照片',
  `checi_types` int(11) DEFAULT NULL COMMENT '火车类型 Search111',
  `checi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `checi_chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `checi_mudidi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `checi_time` timestamp NULL DEFAULT NULL COMMENT '出发时间',
  `section_number` int(11) DEFAULT NULL COMMENT '车厢',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '座位',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `checi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `checi_content` text COMMENT '经停站、到达时间详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='车次信息';

/*Data for the table `checi` */

insert  into `checi`(`id`,`checi_name`,`checi_photo`,`checi_types`,`checi_new_money`,`checi_chufadi`,`checi_mudidi`,`checi_time`,`section_number`,`zuowei_number`,`shangxia_types`,`checi_delete`,`checi_content`,`create_time`) values (1,'车次标题1','http://localhost:8080/huochpiaodingpiao/upload/1648621950417.jpeg',2,'260.63','出发地1','目的地1','2022-03-30 14:23:57',1,20,1,1,'<p>经停站、到达时间详情1</p>','2022-03-30 14:23:57'),(2,'车次标题2','http://localhost:8080/huochpiaodingpiao/upload/1648621941816.jpeg',1,'470.82','出发地2','目的地2','2022-03-30 14:23:57',2,20,1,1,'<p>经停站、到达时间详情2</p>','2022-03-30 14:23:57'),(3,'车次标题3','http://localhost:8080/huochpiaodingpiao/upload/1648621934089.jpeg',1,'79.38','出发地3','目的地3','2022-03-30 14:23:57',3,20,1,1,'<p>经停站、到达时间详情3</p>','2022-03-30 14:23:57'),(4,'车次标题4','http://localhost:8080/huochpiaodingpiao/upload/1648621926297.jpeg',2,'373.35','出发地4','目的地4','2022-03-30 14:23:57',4,20,1,1,'<p>经停站、到达时间详情4</p>','2022-03-30 14:23:57'),(5,'车次标题5','http://localhost:8080/huochpiaodingpiao/upload/1648621917229.jpeg',3,'191.86','出发地5','目的地5','2022-03-30 14:23:57',5,20,1,1,'<p>经停站、到达时间详情5</p>','2022-03-30 14:23:57');

/*Table structure for table `checi_order` */

DROP TABLE IF EXISTS `checi_order`;

CREATE TABLE `checi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `checi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `checi_id` int(11) DEFAULT NULL COMMENT '车次',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '会员',
  `checi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `checi_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `buy_section_number` int(11) DEFAULT NULL COMMENT '车厢',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购票订单';

/*Data for the table `checi_order` */

insert  into `checi_order`(`id`,`checi_order_uuid_number`,`checi_id`,`yonghu_id`,`checi_order_true_price`,`checi_order_types`,`buy_section_number`,`buy_zuowei_number`,`buy_zuowei_time`,`insert_time`,`create_time`) values (1,'1648622220219',4,1,'1120.05',1,1,'1,2,3','2022-03-30','2022-03-30 14:37:00','2022-03-30 14:37:00'),(2,'1648622337704',4,1,'746.70',2,1,'4,5','2022-03-30','2022-03-30 14:38:58','2022-03-30 14:38:58'),(3,'1648622350043',2,1,'1412.46',3,1,'3,4,5','2022-03-30','2022-03-30 14:39:10','2022-03-30 14:39:10');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/huochpiaodingpiao/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/huochpiaodingpiao/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/huochpiaodingpiao/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (103,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-30 14:23:47'),(104,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-30 14:23:47'),(105,'checi_types','火车类型',1,'火车类型1',NULL,NULL,'2022-03-30 14:23:47'),(106,'checi_types','火车类型',2,'火车类型2',NULL,NULL,'2022-03-30 14:23:47'),(107,'checi_types','火车类型',3,'火车类型3',NULL,NULL,'2022-03-30 14:23:47'),(108,'checi_order_types','订单类型',1,'已支付',NULL,NULL,'2022-03-30 14:23:47'),(109,'checi_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-30 14:23:47'),(110,'checi_order_types','订单类型',3,'已使用',NULL,NULL,'2022-03-30 14:23:47'),(111,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-30 14:23:47'),(112,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-30 14:23:47');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '会员',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言版';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2022-03-30 14:23:57','回复信息1','2022-03-30 14:23:57','2022-03-30 14:23:57'),(2,3,'留言标题2','留言内容2','2022-03-30 14:23:57','回复信息2','2022-03-30 14:23:57','2022-03-30 14:23:57'),(3,3,'留言标题3','留言内容3','2022-03-30 14:23:57','回复信息3','2022-03-30 14:23:57','2022-03-30 14:23:57'),(4,1,'留言标题4','留言内容4','2022-03-30 14:23:57','回复信息4','2022-03-30 14:23:57','2022-03-30 14:23:57'),(5,2,'留言标题5','留言内容5','2022-03-30 14:23:57','回复信息5','2022-03-30 14:23:57','2022-03-30 14:23:57');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','会员','8uttrk7kpheseslo2o1q8qzucchbel4s','2022-03-30 14:15:23','2022-03-30 15:44:14'),(2,1,'admin','users','管理员','nq9bjlhret49pu677oi18cpbu6w9y032','2022-03-30 14:31:01','2022-03-30 15:53:17');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '会员姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','会员姓名1','http://localhost:8080/huochpiaodingpiao/upload/yonghu1.jpg','17703786901','410224199610232001',2,'76741.65',1,'2022-03-30 14:23:57'),(2,'a2','123456','会员姓名2','http://localhost:8080/huochpiaodingpiao/upload/yonghu2.jpg','17703786902','410224199610232002',2,'834.76',1,'2022-03-30 14:23:57'),(3,'a3','123456','会员姓名3','http://localhost:8080/huochpiaodingpiao/upload/yonghu3.jpg','17703786903','410224199610232003',1,'436.53',1,'2022-03-30 14:23:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
