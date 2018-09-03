/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.15 : Database - xmall
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xmall` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `xmall`;

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色主键',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(200) DEFAULT NULL COMMENT '角色编码',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_code`) values (1,'超级管理员','SYSADMIN');

/*Table structure for table `sys_status` */

DROP TABLE IF EXISTS `sys_status`;

CREATE TABLE `sys_status` (
  `status_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '状态信息主键',
  `status_name` varchar(200) DEFAULT NULL COMMENT '状态名称',
  `status_code` varchar(200) DEFAULT NULL COMMENT '状态编码',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_status` */

insert  into `sys_status`(`status_id`,`status_name`,`status_code`) values (1,'启用','YES');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `user_no` varchar(500) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `login_name` varchar(500) DEFAULT NULL COMMENT '登录名',
  `password` varchar(500) DEFAULT NULL COMMENT '登录密码，MD5加密',
  `role_id` int(10) DEFAULT NULL COMMENT '角色编码',
  `gender` varchar(10) DEFAULT NULL COMMENT '性别：M-男，F-女',
  `id_card` varchar(100) DEFAULT NULL COMMENT '身份证号码',
  `cellphone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(500) DEFAULT NULL COMMENT '电子邮件',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `user_img` varchar(500) DEFAULT NULL COMMENT '头像',
  `status_id` int(10) DEFAULT NULL COMMENT '状态编码',
  `create_user` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_user` int(10) DEFAULT NULL COMMENT '修改人',
  `update_time` date DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
