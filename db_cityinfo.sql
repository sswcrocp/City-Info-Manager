/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.49-community : Database - db_cityinfo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_cityinfo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_cityinfo`;

/*Table structure for table `tb_info` */

DROP TABLE IF EXISTS `tb_info`;

CREATE TABLE `tb_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_type` int(11) DEFAULT NULL,
  `info_title` varchar(80) DEFAULT NULL,
  `info_content` varchar(1000) DEFAULT NULL,
  `info_linkman` varchar(50) DEFAULT NULL,
  `info_phone` varchar(50) DEFAULT NULL,
  `info_email` varchar(100) DEFAULT NULL,
  `info_date` datetime DEFAULT NULL,
  `info_state` varchar(1) DEFAULT NULL,
  `info_payfor` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `tb_info` */

insert  into `tb_info`(`id`,`info_type`,`info_title`,`info_content`,`info_linkman`,`info_phone`,`info_email`,`info_date`,`info_state`,`info_payfor`) values (1,1,'招聘信息标题','招聘信息标题','明明','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(2,2,'培训信息标题','培训信息标题','明明','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(3,3,'房屋信息标题','房屋信息标题','明明','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(4,4,'求购信息标题','求购信息标题','芳芳','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(5,5,'招商引资标题','招商引资标题','芳芳','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(6,6,'公寓信息标题','公寓信息标题','芳芳','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(7,7,'求职信息标题','求职信息标题','芳芳','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(8,8,'家教信息标题','家教信息标题','芳芳','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(9,9,'车辆信息标题','车辆信息标题','芳芳','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(10,10,'出售信息标题','出售信息标题','芳芳','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(11,11,'寻找启示标题','寻找启示标题','芳芳','13255******','888@8*.com','2013-05-05 00:00:00','1','1'),(12,1,'发布培训信息标题','发布培训信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(13,2,'发布屋信息标题','发布屋信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(14,3,'发布求购信息标题','发布求购信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(15,4,'发布招商引资标题','发布招商引资标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(16,5,'发布公寓信息标题','发布公寓信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(17,6,'发布求职信息标题','发布求职信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(18,7,'发布家教信息标题','发布家教信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(19,8,'发布车辆信息标题','发布车辆信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(20,9,'发布出售信息标题','发布出售信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(21,10,'发布寻找启示标题','发布寻找启示标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0'),(22,11,'发布招聘信息标题','发布招聘信息标题','小免','111111******','44@1*.com','2013-05-05 00:00:00','1','0');

/*Table structure for table `tb_type` */

DROP TABLE IF EXISTS `tb_type`;

CREATE TABLE `tb_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_sign` int(11) DEFAULT NULL,
  `type_name` varchar(20) DEFAULT NULL,
  `type_intro` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `tb_type` */

insert  into `tb_type`(`id`,`type_sign`,`type_name`,`type_intro`) values (1,1,'recruit','招聘信息'),(2,2,'training','培训信息'),(3,3,'house','房屋信息'),(4,4,'buy','求购信息'),(5,5,'invite','招商引资'),(6,6,'apartment','公寓信息'),(7,7,'apply','求职信息'),(8,8,'tutor','家教信息'),(9,9,'car','车辆信息'),(10,10,'sale','出售信息'),(11,11,'search','寻找启示');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`user_name`,`user_password`) values (1,'tsoft','111'),(2,'yxq','000'),(3,'admin','222');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
