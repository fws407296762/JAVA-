# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: db_affairmanage
# ------------------------------------------------------
# Server version 5.0.67-community-nt

DROP DATABASE IF EXISTS `db_affairmanage`;
CREATE DATABASE `db_affairmanage` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_affairmanage`;

#
# Table structure for table tb_criticism
#

CREATE TABLE `tb_criticism` (
  `criticismID` int(11) NOT NULL auto_increment,
  `criticismContent` text,
  `employeeID` int(11) default NULL,
  `criticismTime` datetime default NULL,
  `messageID` int(11) default NULL,
  PRIMARY KEY  (`criticismID`),
  KEY `employeeID` (`employeeID`),
  KEY `messageID` (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312 COMMENT='��Ϣ������';
INSERT INTO `tb_criticism` VALUES (3,'<p>�����Ժ��Һúøɻ��</p>',3052,'2009-08-25 15:08:16',14);
INSERT INTO `tb_criticism` VALUES (4,'<p>��������</p>',3052,'2010-01-26 20:52:46',14);
INSERT INTO `tb_criticism` VALUES (5,'<p>��������</p>',3052,'2010-01-26 20:53:06',16);

#
# Table structure for table tb_employee
#

CREATE TABLE `tb_employee` (
  `employeeID` int(11) NOT NULL default '0',
  `employeeName` varchar(20) default NULL,
  `employeeSex` bit(1) default NULL,
  `employeeBirth` date default NULL,
  `employeePhone` varchar(20) default NULL,
  `employeePlace` varchar(50) default NULL,
  `joinTime` date default NULL,
  `password` varchar(20) default NULL,
  `isLead` bit(1) default NULL,
  PRIMARY KEY  (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='Ա����Ϣ��';
INSERT INTO `tb_employee` VALUES (3052,'�',b'1','1978-01-08','1378675****','������','2008-12-30','123456',b'1');

#
# Table structure for table tb_message
#

CREATE TABLE `tb_message` (
  `messageID` int(11) NOT NULL auto_increment,
  `messageTitle` varchar(50) default NULL,
  `messageContent` text,
  `employeeID` int(11) default NULL,
  `publishTime` datetime default NULL,
  PRIMARY KEY  (`messageID`),
  KEY `employeeID` (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gb2312 COMMENT='��Ϣ��';
INSERT INTO `tb_message` VALUES (14,'����ά������','<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0pt; text-indent: 48pt; line-height: 42pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly\"><span style=\"font-size: 24pt; font-family: ����; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">Ϊ��֤����������������Ϣ�����ذ���������ά����Աֵ�ࡣ���û�����������ϣ��밴���·�ʽ��ϵ��</span><span lang=\"EN-US\" style=\"font-size: 24pt\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0pt; text-indent: 24pt; line-height: 42pt; mso-char-indent-count: 1.0; mso-line-height-rule: exactly\"><span style=\"font-size: 24pt; font-family: ����; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">��ֵ��绰��</span><span lang=\"EN-US\" style=\"font-size: 24pt\">XXXXXX</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0pt; text-indent: 24pt; line-height: 42pt; mso-char-indent-count: 1.0; mso-line-height-rule: exactly\"><span style=\"font-size: 24pt; font-family: ����; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">&nbsp;ֵ���ˣ�������</span></p>',3052,'2009-08-25 14:18:59');
INSERT INTO `tb_message` VALUES (16,'����֪ͨ','<p><span style=\"color: #3366ff\"><span style=\"background-color: #ffffff\"><span><span style=\"font-size: 20px\">�뿪������������Ա��8��30�յ�����2�㵽��¥�����ң�������Ҫ������ȱϯ��</span></span></span></span></p>',3052,'2009-08-25 14:27:54');
INSERT INTO `tb_message` VALUES (17,'�з�������֪ͨ','<p><span style=\"color: #ff0000\"><span style=\"font-size: 20px\">���з�����������Ա��8��30�յ�����2�㵽��¥�����ң�������Ҫ������ȱϯ����</span></span></p>',3052,'2009-08-25 14:33:51');
INSERT INTO `tb_message` VALUES (18,'���ڹ���żٵ�֪ͨ','<p><span style=\"font-size: 20px\">�����ҹ涨����ż����죬8��8�������ϰࡣ</span></p>',3052,'2009-08-25 14:35:35');
INSERT INTO `tb_message` VALUES (19,'���һ�죬���쵼����׼','<p>���ڼ��������飬���账�������һ�죬���쵼����׼��</p>',3052,'2009-08-25 14:37:02');
INSERT INTO `tb_message` VALUES (20,'����һ�·�����','<p><img alt=\"\" src=\"http://localhost:8080/JavaPrj_1/fckeditor/editor/images/smiley/qq/004.gif\" />����һ�£�</p>',3052,'2010-01-26 20:53:57');

#
# Table structure for table tb_reply
#

CREATE TABLE `tb_reply` (
  `replyID` int(11) NOT NULL auto_increment,
  `replyContent` text,
  `employeeID` int(11) default NULL,
  `replyTime` datetime default NULL,
  `messageID` int(11) default NULL,
  PRIMARY KEY  (`replyID`),
  KEY `employeeID` (`employeeID`),
  KEY `messageID` (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312 COMMENT='��Ϣ�ظ���';
INSERT INTO `tb_reply` VALUES (9,'<p>̫���ˣ�ϣ���Ժ�Ҫ���޹ʵ����ˣ�����</p>',3052,'2009-08-25 15:03:23',14);
INSERT INTO `tb_reply` VALUES (10,'<p>��Ŷ���������ܹ����������ˡ�</p>',3052,'2009-08-25 15:03:49',14);
INSERT INTO `tb_reply` VALUES (11,'<p>���Իظ�</p>',3052,'2010-01-26 20:52:26',14);

#
#  Foreign keys for table tb_criticism
#

ALTER TABLE `tb_criticism`
ADD CONSTRAINT `tb_criticism_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`),
  ADD CONSTRAINT `tb_criticism_ibfk_2` FOREIGN KEY (`messageID`) REFERENCES `tb_message` (`messageID`);

#
#  Foreign keys for table tb_message
#

ALTER TABLE `tb_message`
ADD CONSTRAINT `tb_message_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`);

#
#  Foreign keys for table tb_reply
#

ALTER TABLE `tb_reply`
ADD CONSTRAINT `tb_reply_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`),
  ADD CONSTRAINT `tb_reply_ibfk_2` FOREIGN KEY (`messageID`) REFERENCES `tb_message` (`messageID`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
