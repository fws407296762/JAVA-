# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: db_hr
# ------------------------------------------------------
# Server version 5.0.67-community-nt

DROP DATABASE IF EXISTS `db_hr`;
CREATE DATABASE `db_hr` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_hr`;

#
# Table structure for table educate
#

CREATE TABLE `educate` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `purpose` varchar(500) NOT NULL,
  `begintime` datetime default NULL,
  `endtime` datetime default NULL,
  `datum` text,
  `teacher` varchar(50) default NULL,
  `student` varchar(50) default NULL,
  `createtime` datetime default NULL,
  `educate` bit(1) NOT NULL,
  `effect` varchar(500) default NULL,
  `summarize` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312 COMMENT='��ѵ��Ϣ��';
INSERT INTO `educate` VALUES (2,'Swing�γ���ѵ','���Ա��Swing����������','2009-09-10','2009-10-30','��Swing�����ŵ���ͨ�����������ѧSwing��','����','����Java����Ա','2009-10-26 11:47:05',b'1','�ܺ�','�������ѵ�У���Ҷ�ѧ������ν���Swing����');
INSERT INTO `educate` VALUES (3,'JavaWeb��Ŀ��ѵ','��ǿԱ���Ķ�������','2010-01-05','2010-01-09','Java���˼�롣','SUN','����Java����Ա','2010-01-28 14:49:49',b'1','Ч���ܺ�','Ч������');

#
# Table structure for table institution
#

CREATE TABLE `institution` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `reason` varchar(50) default NULL,
  `explains` text,
  `createtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312 COMMENT='������Ϣ��';
INSERT INTO `institution` VALUES (1,'С���100Ԫ','�ٵ�1Сʱ','�����ϰ�ʱ��ٵ���һ�ɷ���50Ԫ������1Сʱ����100Ԫ��','2009-10-22 14:11:39');
INSERT INTO `institution` VALUES (2,'��������100Ԫ','�����Ӱ�3��','','2009-10-26 14:25:22');

#
# Table structure for table job
#

CREATE TABLE `job` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `sex` bit(1) default '',
  `age` int(11) default NULL,
  `job` varchar(50) default NULL,
  `specialty` varchar(50) default NULL,
  `experience` varchar(50) default NULL,
  `studyeffort` varchar(50) default NULL,
  `school` varchar(50) default NULL,
  `tel` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `createtime` datetime default NULL,
  `content` text,
  `isstock` bit(1) default '\0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='ӦƸ��Ա��Ϣ��';
INSERT INTO `job` VALUES (2,'��ЦЦ',b'1',30,'����Ա','��Ϣ������ѧ','2','����','���ϳ���ѧԺ','123456789','928968880@qq.com','2009-10-21 16:49:23','ddddd',b'1');
INSERT INTO `job` VALUES (3,'����',b'1',30,'����Ա','��Ϣ������ѧ','2','����','���ϳ���ѧԺ','123456789','eggpeijun@qq.com','2009-10-21 10:23:17','',b'1');
INSERT INTO `job` VALUES (4,'���',b'1',25,'Web����Ա','��Ϣ������ѧ','1','����','���ϴ�ѧ','123456789','123456@qq.com','2009-10-22 20:10:05','������У�ڼ������μӹ�ѧУ������վ�ı�д��',b'1');
INSERT INTO `job` VALUES (6,'����',b'1',25,'Java����ʦ','��Ϣ����','3','����','���ϴ�ѧ','789456123','123456@qq.com','2009-10-26 10:56:30','2007�꣬XXX�����˾����Java Web����������\r\n2008�꣬XXX�����˾������Ŀ�鳤������',b'1');

#
# Table structure for table stipend
#

CREATE TABLE `stipend` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `basic` float default NULL,
  `eat` float default NULL,
  `house` float default NULL,
  `duty` float default NULL,
  `scot` float default NULL,
  `punishment` float default NULL,
  `other` float default NULL,
  `granttime` datetime default NULL,
  `totalize` float default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='н����Ϣ��';
INSERT INTO `stipend` VALUES (2,'����',1111,300,300,300,200,0,600,'2009-02-03',2411);
INSERT INTO `stipend` VALUES (3,'����',2523,300,300,300,200,100,200,'2009-02-03',3323);
INSERT INTO `stipend` VALUES (4,'����',2800,300,300,200,200,200,200,'2009-02-03',3400);
INSERT INTO `stipend` VALUES (5,'����',6500,1000,1000,500,800,600,500,'2009-02-03',8100);
INSERT INTO `stipend` VALUES (6,'����',4500,200,200,120,400,300,500,'2009-02-03',4820);

#
# Table structure for table users
#

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` bit(1) default '',
  `birthday` datetime NOT NULL,
  `createtime` datetime NOT NULL,
  `isadmin` bit(1) default '\0',
  `content` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312 COMMENT='��Ա��Ϣ��';
INSERT INTO `users` VALUES (1,'admin','admin',b'1','1988-01-03','2005-05-09',b'1','��������Ա');
INSERT INTO `users` VALUES (4,'sanqing','1234567',b'1','1988-01-04','2009-10-21 10:21:33',b'1','����Ա');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
