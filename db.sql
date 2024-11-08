/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmm78s3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmm78s3` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ssmm78s3`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmm78s3/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmm78s3/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmm78s3/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussmeirituijian` */

DROP TABLE IF EXISTS `discussmeirituijian`;

CREATE TABLE `discussmeirituijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='每日推荐评论表';

/*Data for the table `discussmeirituijian` */

insert  into `discussmeirituijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-23 17:46:10',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussmeirituijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-04-23 17:46:10',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussmeirituijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-04-23 17:46:10',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussmeirituijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-04-23 17:46:10',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussmeirituijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-04-23 17:46:10',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussmeirituijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-04-23 17:46:10',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussyonghuxinxi` */

DROP TABLE IF EXISTS `discussyonghuxinxi`;

CREATE TABLE `discussyonghuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='用户信息评论表';

/*Data for the table `discussyonghuxinxi` */

insert  into `discussyonghuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-23 17:46:10',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussyonghuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-04-23 17:46:10',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussyonghuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-04-23 17:46:10',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussyonghuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-04-23 17:46:10',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussyonghuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-04-23 17:46:10',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussyonghuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-04-23 17:46:10',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='交友论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (61,'2021-04-23 17:46:10','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (62,'2021-04-23 17:46:10','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (63,'2021-04-23 17:46:10','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (64,'2021-04-23 17:46:10','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (65,'2021-04-23 17:46:10','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (66,'2021-04-23 17:46:10','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `huifu` */

DROP TABLE IF EXISTS `huifu`;

CREATE TABLE `huifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xiaoxi` varchar(200) DEFAULT NULL COMMENT '消息',
  `fasongshijian` datetime DEFAULT NULL COMMENT '发送时间',
  `faxinrenzhanghao` varchar(200) DEFAULT NULL COMMENT '发信人账号',
  `faxinrenxingming` varchar(200) DEFAULT NULL COMMENT '发信人姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='回复';

/*Data for the table `huifu` */

insert  into `huifu`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (51,'2021-04-23 17:46:10','账号1','姓名1','http://localhost:8080/ssmm78s3/upload/huifu_touxiang1.jpg','消息1','2021-04-23 17:46:10','发信人账号1','发信人姓名1',1);
insert  into `huifu`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (52,'2021-04-23 17:46:10','账号2','姓名2','http://localhost:8080/ssmm78s3/upload/huifu_touxiang2.jpg','消息2','2021-04-23 17:46:10','发信人账号2','发信人姓名2',2);
insert  into `huifu`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (53,'2021-04-23 17:46:10','账号3','姓名3','http://localhost:8080/ssmm78s3/upload/huifu_touxiang3.jpg','消息3','2021-04-23 17:46:10','发信人账号3','发信人姓名3',3);
insert  into `huifu`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (54,'2021-04-23 17:46:10','账号4','姓名4','http://localhost:8080/ssmm78s3/upload/huifu_touxiang4.jpg','消息4','2021-04-23 17:46:10','发信人账号4','发信人姓名4',4);
insert  into `huifu`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (55,'2021-04-23 17:46:10','账号5','姓名5','http://localhost:8080/ssmm78s3/upload/huifu_touxiang5.jpg','消息5','2021-04-23 17:46:10','发信人账号5','发信人姓名5',5);
insert  into `huifu`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (56,'2021-04-23 17:46:10','账号6','姓名6','http://localhost:8080/ssmm78s3/upload/huifu_touxiang6.jpg','消息6','2021-04-23 17:46:10','发信人账号6','发信人姓名6',6);

/*Table structure for table `meirituijian` */

DROP TABLE IF EXISTS `meirituijian`;

CREATE TABLE `meirituijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `neixindubai` varchar(200) DEFAULT NULL COMMENT '内心独白',
  `xingquaihao` longtext COMMENT '兴趣爱好',
  `gerenxiangce` longtext COMMENT '个人相册',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='每日推荐';

/*Data for the table `meirituijian` */

insert  into `meirituijian`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`) values (21,'2021-04-23 17:46:10','账号1','姓名1','性别1','年龄1','内心独白1','兴趣爱好1','个人相册1','http://localhost:8080/ssmm78s3/upload/meirituijian_touxiang1.jpg');
insert  into `meirituijian`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`) values (22,'2021-04-23 17:46:10','账号2','姓名2','性别2','年龄2','内心独白2','兴趣爱好2','个人相册2','http://localhost:8080/ssmm78s3/upload/meirituijian_touxiang2.jpg');
insert  into `meirituijian`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`) values (23,'2021-04-23 17:46:10','账号3','姓名3','性别3','年龄3','内心独白3','兴趣爱好3','个人相册3','http://localhost:8080/ssmm78s3/upload/meirituijian_touxiang3.jpg');
insert  into `meirituijian`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`) values (24,'2021-04-23 17:46:10','账号4','姓名4','性别4','年龄4','内心独白4','兴趣爱好4','个人相册4','http://localhost:8080/ssmm78s3/upload/meirituijian_touxiang4.jpg');
insert  into `meirituijian`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`) values (25,'2021-04-23 17:46:10','账号5','姓名5','性别5','年龄5','内心独白5','兴趣爱好5','个人相册5','http://localhost:8080/ssmm78s3/upload/meirituijian_touxiang5.jpg');
insert  into `meirituijian`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`) values (26,'2021-04-23 17:46:10','账号6','姓名6','性别6','年龄6','内心独白6','兴趣爱好6','个人相册6','http://localhost:8080/ssmm78s3/upload/meirituijian_touxiang6.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-23 17:46:10','标题1','简介1','http://localhost:8080/ssmm78s3/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-04-23 17:46:10','标题2','简介2','http://localhost:8080/ssmm78s3/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-04-23 17:46:10','标题3','简介3','http://localhost:8080/ssmm78s3/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-04-23 17:46:10','标题4','简介4','http://localhost:8080/ssmm78s3/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-04-23 17:46:10','标题5','简介5','http://localhost:8080/ssmm78s3/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-04-23 17:46:10','标题6','简介6','http://localhost:8080/ssmm78s3/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619171254376,'11','yonghu','用户','bb6jrmtvjivkg5t9z9tx105cgg7jsps0','2021-04-23 17:47:41','2021-04-23 18:48:43');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','4vwfhadce2x5o4aozebj18i63dlry664','2021-04-23 17:48:21','2021-04-23 18:48:22');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-23 17:46:10');

/*Table structure for table `xiaoxi` */

DROP TABLE IF EXISTS `xiaoxi`;

CREATE TABLE `xiaoxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xiaoxi` varchar(200) DEFAULT NULL COMMENT '消息',
  `fasongshijian` datetime DEFAULT NULL COMMENT '发送时间',
  `faxinrenzhanghao` varchar(200) DEFAULT NULL COMMENT '发信人账号',
  `faxinrenxingming` varchar(200) DEFAULT NULL COMMENT '发信人姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='消息';

/*Data for the table `xiaoxi` */

insert  into `xiaoxi`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (41,'2021-04-23 17:46:10','账号1','姓名1','http://localhost:8080/ssmm78s3/upload/xiaoxi_touxiang1.jpg','消息1','2021-04-23 17:46:10','发信人账号1','发信人姓名1',1);
insert  into `xiaoxi`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (42,'2021-04-23 17:46:10','账号2','姓名2','http://localhost:8080/ssmm78s3/upload/xiaoxi_touxiang2.jpg','消息2','2021-04-23 17:46:10','发信人账号2','发信人姓名2',2);
insert  into `xiaoxi`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (43,'2021-04-23 17:46:10','账号3','姓名3','http://localhost:8080/ssmm78s3/upload/xiaoxi_touxiang3.jpg','消息3','2021-04-23 17:46:10','发信人账号3','发信人姓名3',3);
insert  into `xiaoxi`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (44,'2021-04-23 17:46:10','账号4','姓名4','http://localhost:8080/ssmm78s3/upload/xiaoxi_touxiang4.jpg','消息4','2021-04-23 17:46:10','发信人账号4','发信人姓名4',4);
insert  into `xiaoxi`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (45,'2021-04-23 17:46:10','账号5','姓名5','http://localhost:8080/ssmm78s3/upload/xiaoxi_touxiang5.jpg','消息5','2021-04-23 17:46:10','发信人账号5','发信人姓名5',5);
insert  into `xiaoxi`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`xiaoxi`,`fasongshijian`,`faxinrenzhanghao`,`faxinrenxingming`,`userid`) values (46,'2021-04-23 17:46:10','账号6','姓名6','http://localhost:8080/ssmm78s3/upload/xiaoxi_touxiang6.jpg','消息6','2021-04-23 17:46:10','发信人账号6','发信人姓名6',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619171254377 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-23 17:46:10','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssmm78s3/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-23 17:46:10','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssmm78s3/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-04-23 17:46:10','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmm78s3/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-04-23 17:46:10','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmm78s3/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-04-23 17:46:10','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmm78s3/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-04-23 17:46:10','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmm78s3/upload/yonghu_touxiang6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (1619171254376,'2021-04-23 17:47:34','11','11','11',NULL,NULL,'','',NULL);

/*Table structure for table `yonghuxinxi` */

DROP TABLE IF EXISTS `yonghuxinxi`;

CREATE TABLE `yonghuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `neixindubai` varchar(200) DEFAULT NULL COMMENT '内心独白',
  `xingquaihao` longtext COMMENT '兴趣爱好',
  `gerenxiangce` longtext COMMENT '个人相册',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619171278138 DEFAULT CHARSET=utf8 COMMENT='用户信息';

/*Data for the table `yonghuxinxi` */

insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`,`sfsh`,`shhf`) values (31,'2021-04-23 17:46:10','账号1','姓名1','性别1','年龄1','内心独白1','兴趣爱好1','个人相册1','http://localhost:8080/ssmm78s3/upload/yonghuxinxi_touxiang1.jpg','是','');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`,`sfsh`,`shhf`) values (32,'2021-04-23 17:46:10','账号2','姓名2','性别2','年龄2','内心独白2','兴趣爱好2','个人相册2','http://localhost:8080/ssmm78s3/upload/yonghuxinxi_touxiang2.jpg','是','');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`,`sfsh`,`shhf`) values (33,'2021-04-23 17:46:10','账号3','姓名3','性别3','年龄3','内心独白3','兴趣爱好3','个人相册3','http://localhost:8080/ssmm78s3/upload/yonghuxinxi_touxiang3.jpg','是','');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`,`sfsh`,`shhf`) values (34,'2021-04-23 17:46:10','账号4','姓名4','性别4','年龄4','内心独白4','兴趣爱好4','个人相册4','http://localhost:8080/ssmm78s3/upload/yonghuxinxi_touxiang4.jpg','是','');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`,`sfsh`,`shhf`) values (35,'2021-04-23 17:46:10','账号5','姓名5','性别5','年龄5','内心独白5','兴趣爱好5','个人相册5','http://localhost:8080/ssmm78s3/upload/yonghuxinxi_touxiang5.jpg','是','');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`,`sfsh`,`shhf`) values (36,'2021-04-23 17:46:10','账号6','姓名6','性别6','年龄6','内心独白6','兴趣爱好6','个人相册6','http://localhost:8080/ssmm78s3/upload/yonghuxinxi_touxiang6.jpg','是','');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`nianling`,`neixindubai`,`xingquaihao`,`gerenxiangce`,`touxiang`,`sfsh`,`shhf`) values (1619171278137,'2021-04-23 17:47:57','11','11','11','11','','<p>请输入兴趣爱好</p>','<p>请输入个人相册</p>','http://localhost:8080/ssmm78s3/upload/1619171276192.jpg','是',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
