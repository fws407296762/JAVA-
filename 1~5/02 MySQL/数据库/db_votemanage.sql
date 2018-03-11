# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: db_votemanage
# ------------------------------------------------------
# Server version 5.0.67-community-nt

DROP DATABASE IF EXISTS `db_votemanage`;
CREATE DATABASE `db_votemanage` /*!40100 DEFAULT CHARACTER SET gb2312 */;
USE `db_votemanage`;

#
# Table structure for table tb_channel
#

CREATE TABLE `tb_channel` (
  `channelID` int(11) NOT NULL auto_increment,
  `channelName` varchar(255) default NULL,
  PRIMARY KEY  (`channelID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='ͶƱƵ����';
INSERT INTO `tb_channel` VALUES (1,'NBA');
INSERT INTO `tb_channel` VALUES (2,'CBA');
INSERT INTO `tb_channel` VALUES (3,'�������籭');
INSERT INTO `tb_channel` VALUES (4,'�г�');
INSERT INTO `tb_channel` VALUES (5,'Ӣ��');
INSERT INTO `tb_channel` VALUES (6,'F1');

#
# Table structure for table tb_vote
#

CREATE TABLE `tb_vote` (
  `voteID` int(11) NOT NULL auto_increment,
  `voteName` varchar(255) default NULL,
  `channelID` int(11) default NULL,
  PRIMARY KEY  (`voteID`),
  KEY `channelID` (`channelID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312 COMMENT='ͶƱ��';
INSERT INTO `tb_vote` VALUES (13,'��ѡ������ϲ����CBA��Ա',2);

#
# Table structure for table tb_voteoption
#

CREATE TABLE `tb_voteoption` (
  `voteOptionID` int(11) NOT NULL auto_increment,
  `voteID` int(11) default NULL,
  `voteOptionName` varchar(255) default NULL,
  `ticketNum` int(11) default '0',
  PRIMARY KEY  (`voteOptionID`),
  KEY `voteID` (`voteID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=gb2312 COMMENT='ͶƱѡ���';
INSERT INTO `tb_voteoption` VALUES (51,13,'�췼��',0);
INSERT INTO `tb_voteoption` VALUES (52,13,'����ۤ',1);
INSERT INTO `tb_voteoption` VALUES (53,13,'Ҧ��',0);
INSERT INTO `tb_voteoption` VALUES (54,13,'�׽���',0);

#
#  Foreign keys for table tb_vote
#

ALTER TABLE `tb_vote`
ADD CONSTRAINT `tb_vote_ibfk_1` FOREIGN KEY (`channelID`) REFERENCES `tb_channel` (`channelID`);

#
#  Foreign keys for table tb_voteoption
#

ALTER TABLE `tb_voteoption`
ADD CONSTRAINT `tb_voteoption_ibfk_1` FOREIGN KEY (`voteID`) REFERENCES `tb_vote` (`voteID`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
