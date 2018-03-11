# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: db_examsystem
# ------------------------------------------------------
# Server version 5.0.67-community-nt

DROP DATABASE IF EXISTS `db_examsystem`;
CREATE DATABASE `db_examsystem` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_examsystem`;

#
# Table structure for table tb_student
#

CREATE TABLE `tb_student` (
  `studentID` varchar(20) NOT NULL default '',
  `password` varchar(20) default NULL,
  `studentName` varchar(20) default NULL,
  `result` int(11) default NULL,
  `sclass` varchar(20) default NULL,
  PRIMARY KEY  (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='ѧ����Ϣ��';
INSERT INTO `tb_student` VALUES ('0509302*21','student','������',20,'0509302');
INSERT INTO `tb_student` VALUES ('05099301*21','fsdfsdf','����',100,'0509301');

#
# Table structure for table tb_subject
#

CREATE TABLE `tb_subject` (
  `subjectID` int(11) NOT NULL auto_increment,
  `subjectTitle` varchar(255) default NULL,
  `subjectOptionA` varchar(50) default NULL,
  `subjectOptionB` varchar(50) default NULL,
  `subjectOptionC` varchar(50) default NULL,
  `subjectOptionD` varchar(50) default NULL,
  `subjectAnswer` varchar(1) default NULL,
  `subjectParse` text,
  PRIMARY KEY  (`subjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=gb2312 COMMENT='������Ϣ��';
INSERT INTO `tb_subject` VALUES (2,'���и�����������������( )��','227O','1FFH','1010001B','789D','D',NULL);
INSERT INTO `tb_subject` VALUES (3,'( )����΢�ͼ��������Ĺ���������','����','���õĽӵ���·','Զ��ǿ�ų�','�ȶ��ĵ�Դ��ѹ','A',NULL);
INSERT INTO `tb_subject` VALUES (4,'( )�����ļ���','�豸','�ĵ�','Ӧ�ó���','����','D','���ڲ����ļ�');
INSERT INTO `tb_subject` VALUES (5,'( )������Word2003���ĵ��򿪷�ʽ��','��д��ʽ','ֻ����ʽ','���ݷ�ʽ','ϵͳ��ʽ','D','ϵͳ��ʽ����Word2003���ĵ��򿪷�ʽ��');
INSERT INTO `tb_subject` VALUES (6,'( )�˵��к���������������','��ʽ','�༭','��ͼ','����','A',NULL);
INSERT INTO `tb_subject` VALUES (8,'( )�Ĺ����ǽ�������ⲿ����Ϣ����������','�����豸','����豸','����','��Դ��','A','');
INSERT INTO `tb_subject` VALUES (9,'( )����Ҫ������ʹ�û��ļ������Զ�������������Ӷ���ΪԶ���������նˡ�','E-mail','FTP','Telnet','BBS','C','');
INSERT INTO `tb_subject` VALUES (10,'( )��ͼ��ʽ�ɶ��ĵ������з�ҳ����','��ͨ','������ʽ','ҳ����ͼ','���','B','');
INSERT INTO `tb_subject` VALUES (12,'( )��΢�ͼ��������档 ','RAM','ROM','����','������','C','');
INSERT INTO `tb_subject` VALUES (13,'( )�������洢�������ݵ�װ�á�','�����豸','�洢��','������','����豸','B','');
INSERT INTO `tb_subject` VALUES (14,'NOVELLNETWARE��( )','�������ϵͳ','ͨ�ò���ϵͳ','ʵʱ����ϵͳ','��ʱ����ϵͳ','A','');
INSERT INTO `tb_subject` VALUES (15,'Ԥ��������������ֶΣ��������( )��','Ҫ�����ض�Ӳ���ϵ��ļ����б���','������Ҫ��д�����ݵĴ��̶�Ӧ��д����','�����е�.COM��.EXE�ļ����ԡ�ֻ��������','�Դ��̽�����ϴ','D','');
INSERT INTO `tb_subject` VALUES (16,'��32λ΢�ͼ�������е�32ָ����( )','΢���ͺ�','�ڴ�����','�洢��λ','�����ֳ�','D','');
INSERT INTO `tb_subject` VALUES (17,'�����ڡ�΢�ͼ�������õ�΢���������ͺ���( )','80286','80386','80486','80586','D','');
INSERT INTO `tb_subject` VALUES (18,'����ͼ��������WINDOWS98��һ�����������ܽ��м򵥵�ͼ�δ����������ļ�Ϊλͼ�ļ�����չ��Ϊ( )��','BMP','CRH','EXE','GPH','A','');
INSERT INTO `tb_subject` VALUES (19,'����ʼ���˵��У�ע�����( )��','�ر�ϵͳ','�رյ�ǰ�����ϵĳ���','�ر����д򿪵ĳ���','���϶�����','C','');
INSERT INTO `tb_subject` VALUES (20,'���ļ��������˵��ײ�����ʾ���ļ�����( )��','��չ��ΪDOC��ȫ���ļ�','��Ҫ��ӡ���ļ���','����ʹ�õ��ļ���','�����Word��������ĵ�','D','');
INSERT INTO `tb_subject` VALUES (21,'�������һ����ָ���������������в�����( )��','�������������ڴ���','�ļ����������˴���Ŀ¼���涨�ķ�Χ','�������˻�����λ����ʾ�ķ�Χ','�������˱����ı�ʾ��Χ','C','');
INSERT INTO `tb_subject` VALUES (22,'���������������������Ƶļ�������(������)��ָ( )��','���������','Դ�����Ŀ�����','Դ����','������������й��ĵ�','D','');
INSERT INTO `tb_subject` VALUES (23,'10BaseF�ĺ�����( )��','10Mbps�Ŀ����������','10Mbps�Ļ���ͬ���������','10Mbps�Ļ�����������','10Mbps�Ŀ��ͬ���������','C','');
INSERT INTO `tb_subject` VALUES (24,'��΢���У�������΢��������( )��ɡ�','������','���̴洢��','���̴洢��','�ڴ洢��','D','');
INSERT INTO `tb_subject` VALUES (25,'1MB�Ĵ洢�����൱��( )��','һ������ֽ�','2��10�η����ֽ�','2��20�η����ֽ�','1000KB','C','');
INSERT INTO `tb_subject` VALUES (26,'1nternet�ķֲ�ṹ����( )����Ĳ���ɡ�',' Ӧ�ò㡢����㡢ͨ��������������','Ӧ�ò㡢��ʾ�㡢�����������','����㡢������·�㡢�����ʹ����','����ӿڲ㡢����㡢������Ӧ�ò�','D','');
INSERT INTO `tb_subject` VALUES (27,'WindowsXP�иı䴰�ڵĴ�Сʱ��Ӧ����( )��','���ڵ��Ľǻ��ı�','�������Ͻǵİ�ť','���ڵı�����','�������ϽǵĿ�����','A','');
INSERT INTO `tb_subject` VALUES (28,'��WindowsXP����ϵͳ�У��Ի���Ĵ�С��( )��','�ɱ��','���������õ�','�̶���','�벻ͬ�Ĳ����йص�','D','');
INSERT INTO `tb_subject` VALUES (29,'����·��','����ת','����ת','��ǰ','���','D','Ӧ����󣡣�����');

#
# Table structure for table tb_teacher
#

CREATE TABLE `tb_teacher` (
  `teacherID` varchar(20) NOT NULL default '',
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`teacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='��ʦ��Ϣ��';
INSERT INTO `tb_teacher` VALUES ('teacher','teacher');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
