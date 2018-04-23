# Host: 192.168.3.150  (Version 5.6.39)
# Date: 2018-04-16 21:21:26
# Generator: MySQL-Front 5.4  (Build 4.153) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

 

CREATE DATABASE IF NOT EXISTS `boot_security` DEFAULT CHARACTER SET = utf8mb4;

Use `boot_security`;

set session  
sql_mode='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';  

#
# Structure for table "file_info"
#

CREATE TABLE `file_info` (
  `id` varchar(32) NOT NULL COMMENT '文件md5',
  `contentType` varchar(128) NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '物理路径',
  `url` varchar(1024) NOT NULL,
  `type` int(1) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "file_info"
#


#
# Structure for table "oauth_access_token"
#

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(48) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "oauth_access_token"
#


#
# Structure for table "oauth_approvals"
#

CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "oauth_approvals"
#


#
# Structure for table "oauth_client_details"
#

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(48) NOT NULL,
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
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "oauth_client_details"
#

INSERT INTO `oauth_client_details` VALUES ('app',NULL,'app','app','password,refresh_token',NULL,NULL,NULL,NULL,NULL,NULL),('mobile','mobile,test','mobile','all','password,refresh_token',NULL,NULL,NULL,NULL,NULL,NULL),('test','test','test','test','password,refresh_token',NULL,NULL,NULL,NULL,NULL,NULL),('webApp',NULL,'webApp','app','authorization_code,password,refresh_token,client_credentials',NULL,NULL,NULL,NULL,NULL,NULL);

#
# Structure for table "oauth_client_token"
#

CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(48) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "oauth_client_token"
#


#
# Structure for table "oauth_code"
#

CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "oauth_code"
#


#
# Structure for table "oauth_refresh_token"
#

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "oauth_refresh_token"
#

INSERT INTO `oauth_refresh_token` VALUES ('b96e057b4e1c4920428e833db48d4c15',X'ACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002462303132643438372D613930382D343361662D613865662D3533633533393963386264367372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001613B74C98E78',X'ACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000009770400000009737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F61646D696E7371007E000D740006617069646F637371007E000D74000C64617461626173652F6C6F677371007E000D74000673797374656D7371007E000D740008757365722F6164647371007E000D74000B757365722F64656C6574657371007E000D740009757365722F656469747371007E000D740009757365722F766965777371007E000D740008757365724C6973747871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0024787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00224C000573636F706571007E00247870740006776562417070737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00227870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000561646D696E78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000174000361707078017371007E0033770C000000103F40000000000000787371007E002A3F40000000000000770800000010000000007870707371007E0033770C000000103F40000000000000787371007E0033770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000977040000000971007E000F71007E001171007E001371007E001571007E001771007E001971007E001B71007E001D71007E001F7871007E003D737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E002A3F400000000000067708000000080000000271007E002C71007E002D71007E002E71007E002F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00244C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0030737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000971007E000F71007E001171007E001371007E001571007E001771007E001971007E001B71007E001D71007E001F787074000561646D696E');

#
# Structure for table "properties"
#

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `application` varchar(50) DEFAULT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `lable` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "properties"
#

INSERT INTO `properties` VALUES (1,'zuul.debug.request','false','unieap-eureka-config-client','dev','master');

#
# Structure for table "QRTZ_BLOB_TRIGGERS"
#

CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_BLOB_TRIGGERS"
#


#
# Structure for table "QRTZ_CALENDARS"
#

CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_CALENDARS"
#


#
# Structure for table "QRTZ_CRON_TRIGGERS"
#

CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `CRON_EXPRESSION` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_CRON_TRIGGERS"
#


#
# Structure for table "QRTZ_FIRED_TRIGGERS"
#

CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ENTRY_ID` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_FIRED_TRIGGERS"
#


#
# Structure for table "QRTZ_JOB_DETAILS"
#

CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_JOB_DETAILS"
#


#
# Structure for table "QRTZ_LOCKS"
#

CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `LOCK_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_LOCKS"
#

INSERT INTO `QRTZ_LOCKS` VALUES ('OpenScheduler','STATE_ACCESS'),('OpenScheduler','TRIGGER_ACCESS');

#
# Structure for table "QRTZ_PAUSED_TRIGGER_GRPS"
#

CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_PAUSED_TRIGGER_GRPS"
#


#
# Structure for table "QRTZ_SCHEDULER_STATE"
#

CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_SCHEDULER_STATE"
#

INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('OpenScheduler','owen1523884504307',1523884881074,15000);

#
# Structure for table "QRTZ_SIMPLE_TRIGGERS"
#

CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_SIMPLE_TRIGGERS"
#


#
# Structure for table "QRTZ_SIMPROP_TRIGGERS"
#

CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_SIMPROP_TRIGGERS"
#


#
# Structure for table "QRTZ_TRIGGERS"
#

CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "QRTZ_TRIGGERS"
#


#
# Structure for table "schedule_job"
#

CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务';

#
# Data for table "schedule_job"
#

INSERT INTO `schedule_job` VALUES (1,'testTask','test','para','0/5 0 * * * ?',0,'有参数测试','2017-06-01 23:16:46'),(2,'testTask','test2',NULL,'0/5 0 * * * ?',1,'无参数测试','2017-06-03 14:55:56');

#
# Structure for table "schedule_job_log"
#

CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务日志';

#
# Data for table "schedule_job_log"
#


#
# Structure for table "sys_logs"
#

CREATE TABLE `sys_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT '1' COMMENT '成功失败',
  `remark` text COMMENT '备注',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `createTime` (`createTime`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4;

#
# Data for table "sys_logs"
#

INSERT INTO `sys_logs` VALUES (1,1,'登陆',1,NULL,'2018-03-14 03:59:44'),(2,1,'登陆',1,NULL,'2018-03-14 06:26:11'),(3,1,'登陆',1,NULL,'2018-03-14 08:39:16'),(4,1,'保存用户',1,NULL,'2018-03-14 08:43:48'),(5,1,'修改用户',1,NULL,'2018-03-14 08:43:56'),(6,1,'登陆',1,NULL,'2018-03-14 10:12:39'),(7,1,'登陆',1,NULL,'2018-03-14 13:01:21'),(8,1,'保存用户',1,NULL,'2018-03-14 13:02:36'),(9,1,'保存角色',1,NULL,'2018-03-14 13:03:08'),(10,1,'保存角色',1,NULL,'2018-03-14 13:03:18'),(11,1,'保存角色',1,NULL,'2018-03-14 13:03:36'),(12,1,'修改用户',1,NULL,'2018-03-14 13:03:43'),(13,1,'退出',1,NULL,'2018-03-14 13:03:50'),(14,4,'登陆',1,NULL,'2018-03-14 13:03:55'),(15,4,'退出',1,NULL,'2018-03-14 13:04:04'),(16,1,'登陆',1,NULL,'2018-03-14 13:04:09'),(17,1,'保存角色',1,NULL,'2018-03-14 13:04:18'),(18,1,'退出',1,NULL,'2018-03-14 13:04:22'),(19,4,'登陆',1,NULL,'2018-03-14 13:04:27'),(20,4,'退出',1,NULL,'2018-03-14 13:13:39'),(21,4,'登陆',1,NULL,'2018-03-14 13:13:45'),(22,4,'退出',1,NULL,'2018-03-14 13:22:28'),(23,4,'登陆',1,NULL,'2018-03-14 13:22:32'),(24,4,'退出',1,NULL,'2018-03-14 13:24:27'),(25,4,'登陆',1,NULL,'2018-03-14 13:24:31'),(26,4,'退出',1,NULL,'2018-03-14 13:24:50'),(27,4,'登陆',1,NULL,'2018-03-14 13:24:54'),(28,4,'登陆',1,NULL,'2018-03-14 15:49:48'),(29,4,'退出',1,NULL,'2018-03-14 15:51:00'),(30,4,'登陆',1,NULL,'2018-03-14 15:51:03'),(31,4,'退出',1,NULL,'2018-03-14 15:52:06'),(32,4,'登陆',1,NULL,'2018-03-14 15:52:09'),(33,4,'退出',1,NULL,'2018-03-14 15:56:29'),(34,4,'登陆',1,NULL,'2018-03-14 15:56:32'),(35,4,'登陆',1,NULL,'2018-03-14 15:57:21'),(36,4,'退出',1,NULL,'2018-03-14 16:03:58'),(37,4,'登陆',1,NULL,'2018-03-14 16:04:01'),(38,4,'退出',1,NULL,'2018-03-14 16:26:27'),(39,1,'登陆',1,NULL,'2018-03-14 16:26:31'),(40,1,'退出',1,NULL,'2018-03-14 16:26:48'),(41,4,'登陆',1,NULL,'2018-03-14 16:26:51'),(42,4,'退出',1,NULL,'2018-03-14 16:34:39'),(43,1,'登陆',1,NULL,'2018-03-14 16:35:19'),(44,1,'登陆',1,NULL,'2018-03-14 18:45:34'),(45,1,'登陆',1,NULL,'2018-03-14 23:30:14'),(46,1,'添加定时任务',1,NULL,'2018-03-15 00:00:08'),(47,4,'��½',1,NULL,'2018-03-15 04:37:19'),(48,1,'登陆',1,NULL,'2018-03-15 04:43:52'),(49,1,'生成代码',0,NULL,'2018-03-15 04:44:50'),(50,1,'生成代码',0,NULL,'2018-03-15 04:45:13'),(51,1,'修改菜单',1,NULL,'2018-03-15 04:45:57'),(52,1,'登陆',1,NULL,'2018-03-25 23:30:29'),(53,1,'登陆',1,NULL,'2018-03-26 18:16:00'),(54,1,'保存角色',1,NULL,'2018-03-26 18:16:20'),(55,1,'退出',1,NULL,'2018-03-26 18:16:29'),(56,1,'登陆',1,NULL,'2018-03-26 18:16:34'),(57,1,'退出',1,NULL,'2018-03-26 19:29:52'),(58,1,'登陆',1,NULL,'2018-03-26 19:29:57'),(59,1,'退出',1,NULL,'2018-03-26 19:31:43'),(60,1,'登陆',1,NULL,'2018-03-26 19:31:52'),(61,1,'登陆',1,NULL,'2018-03-26 22:36:47'),(62,1,'登陆',1,NULL,'2018-03-27 00:38:15'),(63,1,'登陆',1,NULL,'2018-03-27 00:46:41'),(64,1,'登陆',1,NULL,'2018-03-27 00:52:14'),(65,1,'登陆',1,NULL,'2018-03-27 00:54:55'),(66,1,'登陆',1,NULL,'2018-03-27 01:23:12'),(67,1,'登陆',1,NULL,'2018-03-27 02:20:42'),(68,1,'登陆',1,NULL,'2018-03-27 03:42:26'),(69,1,'登陆',1,NULL,'2018-03-27 04:56:58'),(70,1,'登陆',1,NULL,'2018-03-27 04:57:23'),(71,1,'登陆',1,NULL,'2018-03-27 04:58:41'),(72,1,'登陆',1,NULL,'2018-03-27 05:02:02'),(73,1,'登陆',1,NULL,'2018-03-27 19:17:50'),(74,4,'登陆',1,NULL,'2018-03-28 23:12:13'),(75,4,'登陆',1,NULL,'2018-03-28 23:41:49'),(76,4,'退出',1,NULL,'2018-03-28 23:41:53'),(77,1,'登陆',1,NULL,'2018-03-28 23:41:58'),(78,1,'退出',1,NULL,'2018-03-28 23:44:53'),(79,1,'登陆',1,NULL,'2018-03-28 23:44:57'),(80,1,'退出',1,NULL,'2018-03-28 23:46:18'),(81,1,'登陆',1,NULL,'2018-03-28 23:46:23'),(82,1,'登陆',1,NULL,'2018-03-31 03:31:00'),(83,1,'登陆',1,NULL,'2018-03-31 04:08:08'),(84,1,'登陆',1,NULL,'2018-04-03 00:08:01'),(85,1,'保存角色',1,NULL,'2018-04-03 00:08:29'),(86,1,'退出',1,NULL,'2018-04-03 00:08:37'),(87,1,'登陆',1,NULL,'2018-04-03 00:08:42'),(88,1,'登陆',1,NULL,'2018-04-03 01:18:56'),(89,1,'登陆',1,NULL,'2018-04-04 23:00:02'),(90,1,'登陆',1,NULL,'2018-04-09 06:48:29'),(91,1,'登陆',1,NULL,'2018-04-12 00:19:47'),(92,1,'登陆',1,NULL,'2018-04-14 20:01:20'),(93,1,'退出',1,NULL,'2018-04-14 20:01:26'),(94,1,'登陆',1,NULL,'2018-04-14 20:16:46'),(95,1,'登陆',1,NULL,'2018-04-14 20:42:45'),(96,1,'登陆',1,NULL,'2018-04-14 21:22:18'),(97,1,'登陆',1,NULL,'2018-04-14 21:42:05'),(98,1,'保存用户',1,NULL,'2018-04-14 21:42:43'),(99,1,'修改菜单',1,NULL,'2018-04-14 21:43:11'),(100,1,'生成代码',0,NULL,'2018-04-14 21:44:00'),(101,1,'生成代码',0,NULL,'2018-04-14 21:46:30'),(102,1,'生成代码',0,NULL,'2018-04-14 21:47:02'),(103,1,'生成代码',0,NULL,'2018-04-14 21:49:52'),(104,1,'生成代码',0,NULL,'2018-04-14 21:50:10'),(105,1,'生成代码',1,NULL,'2018-04-14 22:04:21'),(106,1,'文件上传',1,NULL,'2018-04-14 22:12:57'),(107,1,'文件删除',1,NULL,'2018-04-14 22:14:21'),(108,1,'登陆',1,NULL,'2018-04-15 01:43:48'),(109,1,'退出',1,NULL,'2018-04-15 01:49:59'),(110,1,'登陆',1,NULL,'2018-04-15 01:50:09'),(111,1,'登陆',1,NULL,'2018-04-15 11:36:18'),(112,1,'保存角色',1,NULL,'2018-04-15 11:39:42'),(113,1,'退出',1,NULL,'2018-04-15 11:39:46'),(114,1,'登陆',1,NULL,'2018-04-15 11:39:51'),(115,1,'生成代码',1,NULL,'2018-04-15 11:42:35'),(116,1,'退出',1,NULL,'2018-04-15 11:47:17'),(117,1,'登陆',1,NULL,'2018-04-15 11:47:21'),(118,1,'退出',1,NULL,'2018-04-15 12:11:38'),(119,1,'登陆',1,NULL,'2018-04-15 12:11:44');

#
# Structure for table "sys_permission"
#

CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `css` varchar(30) DEFAULT NULL,
  `href` varchar(1000) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

#
# Data for table "sys_permission"
#

INSERT INTO `sys_permission` VALUES (1,0,'用户管理','fa-users','pages/user/userList.html',1,'',2),(2,1,'用户查询','fa-user','pages/user/userList.html',1,'',2),(3,2,'查询','','',2,'sys:user:query',100),(4,2,'新增','','',2,'sys:user:add',100),(6,0,'修改密码','fa-pencil-square-o','pages/user/changePassword.html',1,'sys:user:password',4),(7,0,'系统设置','fa-gears','',1,'',5),(8,7,'菜单','fa-cog','pages/menu/menuList.html',1,'',6),(9,8,'查询','','',2,'sys:menu:query',100),(10,8,'新增','','',2,'sys:menu:add',100),(11,8,'删除','','',2,'sys:menu:del',100),(12,7,'角色','fa-user-secret','pages/role/roleList.html',1,'',7),(13,12,'查询','','',2,'sys:role:query',100),(14,12,'新增','','',2,'sys:role:add',100),(15,12,'删除','','',2,'sys:role:del',100),(16,0,'文件管理','fa-folder-open','pages/file/fileList.html',1,'',8),(17,16,'查询','','',2,'sys:file:query',100),(18,16,'删除','','',2,'sys:file:del',100),(19,0,'数据源监控','fa-eye','druid/index.html',1,'',9),(20,0,'接口swagger','fa-file-pdf-o','swagger-ui.html',1,'',10),(21,0,'代码生成','fa-wrench','pages/generate/edit.html',1,'generate:edit',11),(22,0,'公告管理','fa-book','pages/notice/noticeList.html',1,'',12),(23,22,'查询','','',2,'notice:query',100),(24,22,'添加','','',2,'notice:add',100),(25,22,'删除','','',2,'notice:del',100),(26,0,'日志查询','fa-reorder','pages/log/logList.html',1,'sys:log:query',13),(27,0,'邮件管理','fa-envelope','pages/mail/mailList.html',1,'',14),(28,27,'发送邮件','','',2,'mail:send',100),(29,27,'查询','','',2,'mail:all:query',100),(30,0,'定时任务管理','fa-tasks','pages/job/jobList.html',1,'',15),(31,30,'查询','','',2,'job:query',100),(32,30,'新增','','',2,'job:add',100),(33,30,'删除','','',2,'job:del',100),(34,0,'excel导出','fa-arrow-circle-down','pages/excel/sql.html',1,'',16),(35,34,'导出','','',2,'excel:down',100),(36,34,'页面显示数据','','',2,'excel:show:datas',100),(37,0,'字典管理','fa-reddit','pages/dict/dictList.html',1,'',17),(38,37,'查询','','',2,'dict:query',100),(39,37,'新增','','',2,'dict:add',100),(40,37,'删除','','',2,'dict:del',100),(41,0,'注册中心','fa-th-list','pages/euraka/euraka.html',1,'',18),(42,0,'配置中心','fa-th-list','http://127.0.0.1:8070',1,'',19),(43,0,'资源管理','fa-users','pages/appList/rosourceList.html',1,'',20),(44,0,'应用管理','fa-users','pages/app/oauthClientDetailsList.html',1,'',21);

#
# Structure for table "sys_role"
#

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Data for table "sys_role"
#

INSERT INTO `sys_role` VALUES (1,'ADMIN','管理员','2017-05-01 13:25:39','2018-04-15 11:39:42'),(2,'USER','','2017-08-01 21:47:31','2018-03-14 13:03:18'),(3,'test1','test','2018-03-14 13:03:36','2018-03-14 13:04:18');

#
# Structure for table "sys_role_permission"
#

CREATE TABLE `sys_role_permission` (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "sys_role_permission"
#

INSERT INTO `sys_role_permission` VALUES (1,1),(1,2),(1,3),(1,4),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(2,1),(2,2),(2,3),(2,4),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,30),(2,31),(2,34),(2,36),(3,1),(3,2),(3,3),(3,7),(3,12),(3,13),(3,14),(3,15);

#
# Structure for table "sys_role_user"
#

CREATE TABLE `sys_role_user` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "sys_role_user"
#

INSERT INTO `sys_role_user` VALUES (1,1),(2,2),(3,1),(3,2),(4,3),(5,1),(5,2);

#
# Structure for table "sys_user"
#

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `headImgUrl` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

#
# Data for table "sys_user"
#

INSERT INTO `sys_user` VALUES (1,'admin','$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK','管理员',NULL,'','','','1998-07-01',0,1,'2017-04-10 15:21:38','2017-07-06 09:20:19'),(2,'user','$2a$10$ooGb4wjT7Hg3zgU2RhZp6eVu3jvG29i/U4L6VRwiZZ4.DZ0OOEAHu','用户',NULL,'','','',NULL,1,1,'2017-08-01 21:47:18','2018-03-16 16:35:41'),(3,'test123','$2a$10$MGxO0dynaARStolVS9tzk.ZGwzlC2WZ2LZ/LzxixWxCUoftU5Xtnq','test111',NULL,'18579068155','22','22','2018-03-16',1,1,'2018-03-14 08:43:48','2018-03-14 08:43:48'),(4,'owen','$2a$10$JTuOh..ec2N1BBi6NOsn1.beg72gN7je7uNvFn.VWbfkrAsPZ3otC','test',NULL,'18579068155','','wang.wen@neusoft.com','2018-03-22',0,1,'2018-03-14 13:02:36','2018-03-22 11:40:40'),(5,'111111111','$2a$10$mJuBGzs67CyExiTZkk5iLOF9sE09GDK7jLf2O6gosMh.g/fDeKEiS','111111',NULL,'11111111111','11111111111','11@11.com','2018-04-11',0,1,'2018-04-14 21:42:43','2018-04-14 21:42:43');

#
# Structure for table "t_dict"
#

CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `k` varchar(16) NOT NULL,
  `val` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`k`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

#
# Data for table "t_dict"
#

INSERT INTO `t_dict` VALUES (1,'sex','0','女','2017-11-17 09:58:24','2017-11-18 14:21:05'),(2,'sex','1','男','2017-11-17 10:03:46','2017-11-17 10:03:46'),(3,'userStatus','0','无效','2017-11-17 16:26:06','2017-11-17 16:26:09'),(4,'userStatus','1','正常','2017-11-17 16:26:06','2017-11-17 16:26:09'),(5,'userStatus','2','锁定','2017-11-17 16:26:06','2017-11-17 16:26:09'),(6,'noticeStatus','0','草稿','2017-11-17 16:26:06','2017-11-17 16:26:09'),(7,'noticeStatus','1','发布','2017-11-17 16:26:06','2017-11-17 16:26:09'),(8,'isRead','0','未读','2017-11-17 16:26:06','2017-11-17 16:26:09'),(9,'isRead','1','已读','2017-11-17 16:26:06','2017-11-17 16:26:09');

#
# Structure for table "t_job"
#

CREATE TABLE `t_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cron` varchar(64) NOT NULL,
  `springBeanName` varchar(64) NOT NULL COMMENT 'springBean名',
  `methodName` varchar(64) NOT NULL COMMENT '方法名',
  `isSysJob` tinyint(1) NOT NULL COMMENT '是否是系统job',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobName` (`jobName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "t_job"
#


#
# Structure for table "t_mail"
#

CREATE TABLE `t_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '发送人',
  `subject` varchar(255) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '正文',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "t_mail"
#


#
# Structure for table "t_mail_to"
#

CREATE TABLE `t_mail_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailId` int(11) NOT NULL,
  `toUser` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1成功，0失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "t_mail_to"
#


#
# Structure for table "t_notice"
#

CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "t_notice"
#


#
# Structure for table "t_notice_read"
#

CREATE TABLE `t_notice_read` (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`noticeId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "t_notice_read"
#


#
# Structure for table "t_token"
#

CREATE TABLE `t_token` (
  `id` varchar(36) NOT NULL COMMENT 'token',
  `val` text NOT NULL COMMENT 'LoginUser的json串',
  `expireTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "t_token"
#

