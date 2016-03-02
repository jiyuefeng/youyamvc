/*
SQLyog Ultimate v9.62 
MySQL - 5.5.43-0+deb7u1-log : Database - youyamvc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`youyamvc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `youyamvc`;

/*Table structure for table `a_admin_user` */

DROP TABLE IF EXISTS `a_admin_user`;

CREATE TABLE `a_admin_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `password` varchar(50) DEFAULT '',
  `real_name` varchar(25) DEFAULT '' COMMENT '真名',
  `email` varchar(30) DEFAULT '' COMMENT '邮箱',
  `telephone` varchar(20) DEFAULT '' COMMENT '座机号',
  `mobile_phone` varchar(20) DEFAULT '' COMMENT '手机号',
  `address` varchar(100) DEFAULT '' COMMENT '手机号',
  `create_time_ymd` int(4) DEFAULT '0',
  `create_time_hms` int(4) DEFAULT '0',
  `modified_time_ymd` int(4) DEFAULT '0',
  `modified_time_hms` int(4) DEFAULT '0',
  `super_admin` tinyint(2) DEFAULT '0' COMMENT '是否超级管理员',
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `a_admin_user` */

insert  into `a_admin_user`(`id`,`user_name`,`password`,`real_name`,`email`,`telephone`,`mobile_phone`,`address`,`create_time_ymd`,`create_time_hms`,`modified_time_ymd`,`modified_time_hms`,`super_admin`) values (1,'admin','admin','','','','','',0,0,0,0,0);

/*Table structure for table `dict` */

DROP TABLE IF EXISTS `dict`;

CREATE TABLE `dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_key` varchar(50) DEFAULT '',
  `dict_value` varchar(1000) DEFAULT '',
  `dict_type` int(2) DEFAULT '0',
  `dict_desc` varchar(50) DEFAULT '',
  `dict_order` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dict` */

/*Table structure for table `user_web` */

DROP TABLE IF EXISTS `user_web`;

CREATE TABLE `user_web` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户表',
  `user_name` varchar(20) DEFAULT '' COMMENT '登录名称',
  `user_password` varchar(100) DEFAULT '' COMMENT '登录密码存储加密后的值',
  `real_name` varchar(20) DEFAULT '' COMMENT '用户真名',
  `score_amount` decimal(12,2) DEFAULT '0.00' COMMENT '积分余额',
  `money_amount` decimal(12,2) DEFAULT '0.00' COMMENT '现金余额',
  `regist_time` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `account_status` tinyint(2) DEFAULT '0' COMMENT '账号状态0无效1有效',
  `sex` tinyint(1) DEFAULT '0' COMMENT '性别1男0女',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `head_img_src` varchar(100) DEFAULT '' COMMENT '头像地址',
  `account_level` tinyint(2) DEFAULT '0' COMMENT '账号等级',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机号',
  `nickname` varchar(30) DEFAULT '' COMMENT '昵称',
  `two_code_img_src` varchar(50) DEFAULT '' COMMENT '二维码图片',
  `baby_sex` tinyint(1) DEFAULT '0' COMMENT '1',
  `baby_birthday` datetime DEFAULT NULL COMMENT '2',
  `baby_two_sex` tinyint(1) DEFAULT '0' COMMENT '3',
  `baby_two_birthday` datetime DEFAULT NULL COMMENT '4',
  `baby_three_sex` tinyint(1) DEFAULT '0' COMMENT '5',
  `baby_three_birthday` datetime DEFAULT NULL COMMENT '6',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user_web` */

insert  into `user_web`(`id`,`user_name`,`user_password`,`real_name`,`score_amount`,`money_amount`,`regist_time`,`last_login_time`,`account_status`,`sex`,`birthday`,`head_img_src`,`account_level`,`mobile`,`nickname`,`two_code_img_src`,`baby_sex`,`baby_birthday`,`baby_two_sex`,`baby_two_birthday`,`baby_three_sex`,`baby_three_birthday`) values (1,'11','','','0.00','0.00',NULL,NULL,0,0,NULL,'11',1,'1','','',0,NULL,0,NULL,0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
