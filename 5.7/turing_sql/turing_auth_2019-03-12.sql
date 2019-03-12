# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 139.196.72.60 (MySQL 5.7.23-23)
# Database: turing_auth
# Generation Time: 2019-03-12 01:29:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

Create Database If Not Exists `turing_auth` Character Set UTF8;
USE turing_auth
# Dump of table auth_client
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_client`;

CREATE TABLE `auth_client` (
  `id` varchar(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '服务编码',
  `secret` varchar(255) DEFAULT NULL COMMENT '服务密钥',
  `name` varchar(255) DEFAULT NULL COMMENT '服务名',
  `locked` char(1) DEFAULT NULL COMMENT '是否锁定',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `crt_user` varchar(255) DEFAULT NULL COMMENT '创建人',
  `crt_name` varchar(255) DEFAULT NULL COMMENT '创建人姓名',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '创建主机',
  `upd_time` datetime DEFAULT NULL COMMENT '更新时间',
  `upd_user` varchar(255) DEFAULT NULL COMMENT '更新人',
  `upd_name` varchar(255) DEFAULT NULL COMMENT '更新姓名',
  `upd_host` varchar(255) DEFAULT NULL COMMENT '更新主机',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `auth_client` WRITE;
/*!40000 ALTER TABLE `auth_client` DISABLE KEYS */;

INSERT INTO `auth_client` (`id`, `code`, `secret`, `name`, `locked`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `upd_time`, `upd_user`, `upd_name`, `upd_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	('1','turing-gate','123456','turing-gate','0','服务网关',NULL,'','','','2017-07-07 21:51:32','1','管理员','0:0:0:0:0:0:0:1','','','','','','','',''),
	('18','turing-transaction','123456','turing-transaction','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('20','turing-dict','123566','turing-dict','0','数据字典服务',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('21','turing-demo-depart-data','123456','turing-demo-depart-data','0','测试服务',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('22','turing-workflow','123456','turing-workflow','0','工作流服务',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('23','turing-datahandler','123456','turing-datahandler','0','数据处理服务',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('24','turing-datacollection','123456','turing-datacollection','0','数据采集服务',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('25','turing-video','123456','turing-video','0','视频监控服务',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('3','turing-admin','123456','turing-admin','0','',NULL,NULL,NULL,NULL,'2017-07-06 21:42:17','1','管理员','0:0:0:0:0:0:0:1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('531ac9cd1f924299a06deb300140c0e4','turing-test','123456','turing-test','0','fwfgw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('6','turing-auth','123456','turing-auth','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('7','turing-tool','123456','turing-tool','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('97750946674638848','turing-device','123456','turing-device','0','设备管理服务',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `auth_client` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_client_service
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_client_service`;

CREATE TABLE `auth_client_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `auth_client_service` WRITE;
/*!40000 ALTER TABLE `auth_client_service` DISABLE KEYS */;

INSERT INTO `auth_client_service` (`id`, `service_id`, `client_id`, `description`, `crt_time`, `crt_user`, `crt_name`, `crt_host`, `attr1`, `attr2`, `attr3`, `attr4`, `attr5`, `attr6`, `attr7`, `attr8`)
VALUES
	(21,'4','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(43,'3','16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(45,'12','16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(46,'18','18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(53,'3','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(61,'3','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(62,'6','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(63,'20','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(65,'3','21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(66,'3','22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(67,'267d29a2c26743c6bb01bc52232c26f5','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(69,'531ac9cd1f924299a06deb300140c0e4','531ac9cd1f924299a06deb300140c0e4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(70,'267d29a2c26743c6bb01bc52232c26f5','267d29a2c26743c6bb01bc52232c26f5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(71,'97750946674638848','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(72,'23','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(73,'3','97750946674638848',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(74,'97750946674638848','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(75,'24','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(76,'3','24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(77,'97750946674638848','24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(78,'97750946674638848','23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(79,'3','23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `auth_client_service` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gateway_route
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gateway_route`;

CREATE TABLE `gateway_route` (
  `id` varchar(50) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '映射路劲',
  `service_id` varchar(50) DEFAULT NULL COMMENT '映射服务',
  `url` varchar(255) DEFAULT NULL COMMENT '映射外连接',
  `retryable` tinyint(1) DEFAULT NULL COMMENT '是否重试',
  `enabled` tinyint(1) NOT NULL COMMENT '是否启用',
  `strip_prefix` tinyint(1) DEFAULT NULL COMMENT '是否忽略前缀',
  `crt_user_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `crt_user_id` varchar(36) DEFAULT NULL COMMENT '创建人ID',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `upd_user_name` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  `upd_user_id` varchar(36) DEFAULT NULL COMMENT '最后更新人ID',
  `upd_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `gateway_route` WRITE;
/*!40000 ALTER TABLE `gateway_route` DISABLE KEYS */;

INSERT INTO `gateway_route` (`id`, `path`, `service_id`, `url`, `retryable`, `enabled`, `strip_prefix`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`)
VALUES
	('admin','/admin/**','turing-admin',NULL,0,1,1,'Mr.AG','1','2018-02-25 14:33:30','Mr.AG','1','2018-02-25 14:38:31'),
	('auth','/auth/**','turing-auth',NULL,0,1,1,NULL,NULL,NULL,'Mr.AG','1','2018-02-25 14:29:51'),
	('center','/center/**','turing-center',NULL,0,1,1,'Mr.AG','1','2018-02-26 12:50:51','Mr.AG','1','2018-02-26 12:50:51'),
	('datacollection','/datacollection/**','turing-datacollection',NULL,0,1,1,'hanyong','1','2018-09-25 09:31:40','hanyong','1','2018-09-25 09:31:49'),
	('datahandler','/datahandler/**','turing-datahandler',NULL,0,1,1,'hanyong','1','2018-07-31 19:56:29','hanyong','1','2018-07-31 19:56:29'),
	('device','/device/**','turing-device',NULL,0,1,1,'hanyong','1','2018-07-19 16:14:03','hanyong','1','2018-07-19 16:14:03'),
	('dict','/dict/**','turing-dict',NULL,0,1,1,NULL,NULL,NULL,'Mr.AG','1','2018-02-25 14:41:07'),
	('tool','/tool/**','turing-tool',NULL,0,1,1,NULL,NULL,'2018-04-02 21:04:47',NULL,NULL,'2018-04-02 21:04:52'),
	('workflow','/wf/**','turing-workflow',NULL,0,1,1,NULL,NULL,'2018-04-05 13:58:08',NULL,NULL,'2018-04-05 13:58:14');

/*!40000 ALTER TABLE `gateway_route` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_client_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `crt_user_name` varchar(255) DEFAULT NULL,
  `crt_user_id` varchar(36) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `upd_user_name` varchar(255) DEFAULT NULL,
  `upd_user_id` varchar(36) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `is_deleted` char(1) DEFAULT NULL,
  `is_disabled` char(1) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;

INSERT INTO `oauth_client_details` (`client_id`, `resource_ids`, `client_secret`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`, `description`, `crt_user_name`, `crt_user_id`, `crt_time`, `upd_user_name`, `upd_user_id`, `upd_time`, `is_deleted`, `is_disabled`)
VALUES
	('client','','client','read','password,refresh_token,authorization_code','http://localhost:4040/sso/login',NULL,14400,2592000,'{}','true',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	('test','','test','read','password,refresh_token','http://localhost:9527/#/','',60,60,'{}','true','','','','2018-10-16 13:59:52','Mr.AG','1','2018-03-28 20:43:14','',''),
	('vue',NULL,'vue','read','password,refresh_token','http://localhost:9527/#/',NULL,14400,2592000,'{}','true','',NULL,NULL,NULL,'Mr.AG','1','2018-03-28 20:43:14',NULL,NULL);

/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
