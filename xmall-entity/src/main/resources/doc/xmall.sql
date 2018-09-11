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

/*Table structure for table `sys_category` */

DROP TABLE IF EXISTS `sys_category`;

CREATE TABLE `sys_category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '类别主键',
  `parent_id` int(10) DEFAULT NULL COMMENT '父类别',
  `name` varchar(200) DEFAULT NULL COMMENT '类别名称',
  `status` varchar(50) DEFAULT NULL COMMENT '状态：Y-启用，N-禁用',
  `order_sort` int(100) DEFAULT NULL COMMENT '排序',
  `create_user` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` int(10) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_category` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  `parent_id` int(10) DEFAULT NULL COMMENT '父级菜单',
  `text` varchar(200) DEFAULT NULL COMMENT '菜单文本',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `status` varchar(50) DEFAULT NULL COMMENT '状态：Y-启用，N-禁用',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_menu` */

/*Table structure for table `sys_product` */

DROP TABLE IF EXISTS `sys_product`;

CREATE TABLE `sys_product` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '产品主键',
  `category_id` int(10) DEFAULT NULL COMMENT '产品类别',
  `product_name` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `detail` varchar(500) DEFAULT NULL COMMENT '产品描述',
  `product_img` text COMMENT '产品图片',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `create_user` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` int(10) DEFAULT NULL COMMENT '更新人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_product` */

/*Table structure for table `sys_product_detail` */

DROP TABLE IF EXISTS `sys_product_detail`;

CREATE TABLE `sys_product_detail` (
  `product_detail_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '产品明细主键',
  `produtc_id` int(10) DEFAULT NULL COMMENT '产品主键',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `price` double DEFAULT NULL COMMENT '售价',
  `create_user` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` int(10) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`product_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_product_detail` */

/*Table structure for table `sys_product_spec` */

DROP TABLE IF EXISTS `sys_product_spec`;

CREATE TABLE `sys_product_spec` (
  `product_detail_id` int(10) DEFAULT NULL COMMENT '产品明细主键',
  `spec_value` int(10) DEFAULT NULL COMMENT '规格值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_product_spec` */

/*Table structure for table `sys_product_status` */

DROP TABLE IF EXISTS `sys_product_status`;

CREATE TABLE `sys_product_status` (
  `status_id` int(10) NOT NULL COMMENT '产品状态主键',
  `status_name` varchar(100) DEFAULT NULL COMMENT '状态名称',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_product_status` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色主键',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `status` varchar(50) DEFAULT NULL COMMENT '状态：Y-启用，N-禁用',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`status`) values (1,'超级管理员','Y');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` int(10) DEFAULT NULL COMMENT '角色主键',
  `menu_id` int(10) DEFAULT NULL COMMENT '菜单主键'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_role_menu` */

/*Table structure for table `sys_spec` */

DROP TABLE IF EXISTS `sys_spec`;

CREATE TABLE `sys_spec` (
  `spec_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '规格主键',
  `name` varchar(200) DEFAULT NULL COMMENT '规格名称',
  `category_id` int(10) DEFAULT NULL COMMENT '产品类别',
  `status` varchar(50) DEFAULT NULL COMMENT '状态：Y-启用，N-禁用',
  PRIMARY KEY (`spec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_spec` */

/*Table structure for table `sys_spec_value` */

DROP TABLE IF EXISTS `sys_spec_value`;

CREATE TABLE `sys_spec_value` (
  `spec_value_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '规格值主键',
  `spec_id` int(10) DEFAULT NULL COMMENT '规格',
  `spec_value` varchar(500) DEFAULT NULL COMMENT '规格值',
  PRIMARY KEY (`spec_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_spec_value` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `user_no` varchar(100) DEFAULT NULL COMMENT '用户编号',
  `username` varchar(200) DEFAULT NULL COMMENT '真实姓名',
  `login_name` varchar(500) DEFAULT NULL COMMENT '登录名',
  `password` varchar(500) DEFAULT NULL COMMENT '登录密码，MD5加密',
  `role_id` int(10) DEFAULT NULL COMMENT '用户角色',
  `gender` varchar(50) DEFAULT NULL COMMENT '性别：M-男，F-女',
  `id_card` varchar(100) DEFAULT NULL COMMENT '身份证号码',
  `cellphone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(500) DEFAULT NULL COMMENT '电子邮件',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `status` varchar(50) DEFAULT NULL COMMENT '状态：Y-启用，N-禁用',
  `create_user` int(10) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user` int(10) DEFAULT NULL COMMENT '更新人',
  `update_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`user_no`,`username`,`login_name`,`password`,`role_id`,`gender`,`id_card`,`cellphone`,`email`,`birthday`,`status`,`create_user`,`create_time`,`update_user`,`update_time`) values (1,'AUG_00001','张昊','zhanghao','e10adc3949ba59abbe56e057f20f883e',1,'M',NULL,NULL,NULL,NULL,'Y',NULL,'2018-09-05 16:37:51',NULL,'2018-09-05 16:43:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
