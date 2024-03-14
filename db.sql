/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - matouchuanzhihuogui
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`matouchuanzhihuogui` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `matouchuanzhihuogui`;

/*Table structure for table `chuanzhi` */

DROP TABLE IF EXISTS `chuanzhi`;

CREATE TABLE `chuanzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuanzhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '船只编号 Search111 ',
  `chuanzhi_name` varchar(200) DEFAULT NULL COMMENT '船只名称 Search111 ',
  `chuanzhi_types` int(200) DEFAULT NULL COMMENT '船只类型 Search111',
  `chuanzhi_photo` varchar(200) DEFAULT NULL COMMENT '船只图片',
  `chuanzhi_xinghao` varchar(200) DEFAULT NULL COMMENT '船只型号',
  `chuanzhi_caizhi` varchar(200) DEFAULT NULL COMMENT '船只材质',
  `chuanzhi_content` text COMMENT '详情',
  `chuanzhi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='船只信息';

/*Data for the table `chuanzhi` */

insert  into `chuanzhi`(`id`,`chuanzhi_uuid_number`,`chuanzhi_name`,`chuanzhi_types`,`chuanzhi_photo`,`chuanzhi_xinghao`,`chuanzhi_caizhi`,`chuanzhi_content`,`chuanzhi_delete`,`create_time`) values (1,'164483872986612','船只名称1',1,'http://localhost:8080/matouchuanzhihuogui/upload/1644840765870.webp','船只型号1','船只材质1','<p>详情1</p>',1,'2022-02-14 19:38:49'),(2,'16448387298667','船只名称2',2,'http://localhost:8080/matouchuanzhihuogui/upload/1644840756207.jpg','船只型号2','船只材质2','<p>详情2</p>',1,'2022-02-14 19:38:49'),(3,'164483872986716','船只名称3',3,'http://localhost:8080/matouchuanzhihuogui/upload/1644840746990.webp','船只型号3','船只材质3','<p>详情3</p>',1,'2022-02-14 19:38:49'),(4,'164483872986713','船只名称4',1,'http://localhost:8080/matouchuanzhihuogui/upload/1644840318399.webp','船只型号4','船只材质4','<p>详情4</p>',1,'2022-02-14 19:38:49'),(5,'164483872986719','船只名称5',2,'http://localhost:8080/matouchuanzhihuogui/upload/1644840310287.webp','船只型号5','船只材质5','<p>详情5</p>',1,'2022-02-14 19:38:49'),(6,'164483872986718','船只名称6',3,'http://localhost:8080/matouchuanzhihuogui/upload/1644840302145.jpg','船只型号6','船只材质6','<p>详情6</p>',1,'2022-02-14 19:38:49'),(12,'1644844359808111','船只11111',3,'http://localhost:8080/matouchuanzhihuogui/upload/1644844380728.webp','船只型号21323','船只材质111','<p><span style=\"color: rgb(96, 98, 102);\">详情1111</span></p>',1,'2022-02-14 21:13:09');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/matouchuanzhihuogui/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/matouchuanzhihuogui/upload/config2.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-14 19:38:00'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-14 19:38:00'),(67,'chuanzhi_types','船只类型',1,'船只类型1',NULL,NULL,'2022-02-14 19:38:00'),(68,'chuanzhi_types','船只类型',2,'船只类型2',NULL,NULL,'2022-02-14 19:38:00'),(69,'chuanzhi_types','船只类型',3,'船只类型3',NULL,NULL,'2022-02-14 19:38:00'),(70,'huogui_types','货柜类型',1,'货柜类型1',NULL,NULL,'2022-02-14 19:38:00'),(71,'huogui_types','货柜类型',2,'货柜类型2',NULL,NULL,'2022-02-14 19:38:00'),(72,'huogui_types','货柜类型',3,'货柜类型3',NULL,NULL,'2022-02-14 19:38:00'),(73,'news_types','新闻类型名称',1,'新闻类型1',NULL,NULL,'2022-02-14 19:38:00'),(74,'news_types','新闻类型名称',2,'新闻类型2',NULL,NULL,'2022-02-14 19:38:00');

/*Table structure for table `huogui` */

DROP TABLE IF EXISTS `huogui`;

CREATE TABLE `huogui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuanzhi_id` int(11) DEFAULT NULL COMMENT '船只',
  `huogui_uuid_number` varchar(200) DEFAULT NULL COMMENT '货柜编号',
  `huogui_xinghao` varchar(200) DEFAULT NULL COMMENT '货柜型号',
  `huogui_types` int(200) DEFAULT NULL COMMENT '货柜类型',
  `huogui_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='货柜信息';

/*Data for the table `huogui` */

insert  into `huogui`(`id`,`chuanzhi_id`,`huogui_uuid_number`,`huogui_xinghao`,`huogui_types`,`huogui_delete`,`create_time`) values (1,1,'164483872987319','货柜型号1',1,1,'2022-02-14 19:38:49'),(2,2,'16448387298735','货柜型号2',2,1,'2022-02-14 19:38:49'),(3,3,'164483872987314','货柜型号3',3,1,'2022-02-14 19:38:49'),(4,4,'164483872987318','货柜型号4',1,1,'2022-02-14 19:38:49'),(5,5,'16448387298738','货柜型号5',2,1,'2022-02-14 19:38:49'),(6,6,'16448387298733','货柜型号6',3,1,'2022-02-14 19:38:49'),(12,12,'1644844395575','型号111111',2,1,'2022-02-14 21:13:24');

/*Table structure for table `luxian` */

DROP TABLE IF EXISTS `luxian`;

CREATE TABLE `luxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuanzhi_id` int(11) DEFAULT NULL COMMENT '船只',
  `luxian_uuid_number` varchar(200) DEFAULT NULL COMMENT '路线编号',
  `luxian_content` text COMMENT '路线详情',
  `luxian_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='路线信息';

/*Data for the table `luxian` */

insert  into `luxian`(`id`,`chuanzhi_id`,`luxian_uuid_number`,`luxian_content`,`luxian_delete`,`create_time`) values (1,1,'16448387298796','路线详情1',1,'2022-02-14 19:38:49'),(2,2,'16448387298801','路线详情2',1,'2022-02-14 19:38:49'),(3,3,'164483872988010','路线详情3',1,'2022-02-14 19:38:49'),(4,4,'16448387298802','路线详情4',1,'2022-02-14 19:38:49'),(5,5,'16448387298802','路线详情5',1,'2022-02-14 19:38:49'),(6,6,'164483872988014','路线详情6',1,'2022-02-14 19:38:49'),(12,12,'1644844410304','<p><span style=\"color: rgb(96, 98, 102);\">路线详情1111111</span></p>',1,'2022-02-14 21:13:38');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'新闻标题1',2,'http://localhost:8080/matouchuanzhihuogui/upload/1644840854782.jpg','2022-02-14 19:38:49','<p>新闻详情1</p>',1,'2022-02-14 19:38:49'),(2,'新闻标题2',1,'http://localhost:8080/matouchuanzhihuogui/upload/1644840846064.jpg','2022-02-14 19:38:49','<p>新闻详情2</p>',1,'2022-02-14 19:38:49'),(3,'新闻标题3',2,'http://localhost:8080/matouchuanzhihuogui/upload/1644840825516.webp','2022-02-14 19:38:49','<p>新闻详情3</p>',1,'2022-02-14 19:38:49'),(4,'新闻标题4',2,'http://localhost:8080/matouchuanzhihuogui/upload/1644840802874.webp','2022-02-14 19:38:49','<p>新闻详情4</p>',1,'2022-02-14 19:38:49');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','5vdrxpmdxts26sp96u822bqdtafmx6q6','2022-02-14 19:57:23','2022-02-14 22:12:30'),(2,1,'a1','yonghu','用户','55k3hp6t8eqk2dc3d7jcqk6vr2ef6ocm','2022-02-14 20:46:44','2022-02-14 22:14:09');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'410224199610232001','17703786901','http://localhost:8080/matouchuanzhihuogui/upload/1644842843017.jpg',1,'2022-02-14 19:38:49'),(2,'a2','123456','用户姓名2',1,'410224199610232002','17703786902','http://localhost:8080/matouchuanzhihuogui/upload/1644842835531.jpg',1,'2022-02-14 19:38:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
