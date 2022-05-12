/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : xprofiler_console

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 05/05/2022 13:18:31
*/
use xprofiler_console;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apps
-- ----------------------------
DROP TABLE IF EXISTS `apps`;
CREATE TABLE `apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'unique auto increment id',
  `name` varchar(50) NOT NULL COMMENT 'app name',
  `owner` int(10) unsigned NOT NULL COMMENT 'owner user unique id',
  `secret` varchar(50) NOT NULL COMMENT 'app secret key',
  `gm_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'system modify timestamp',
  `gm_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'system create timestamp',
  PRIMARY KEY (`id`),
  UNIQUE KEY `owner` (`owner`,`name`),
  KEY `owner_2` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='app info table';

-- ----------------------------
-- Records of apps
-- ----------------------------
BEGIN;
INSERT INTO `apps` VALUES (1, 'homeup', 1, '0929471550b719a0836a8e174cf7bd60', '2022-04-20 15:35:27', '2022-04-20 15:35:27');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;


/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : xprofiler_console

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 05/05/2022 13:18:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
  `id` int
(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'unique auto increment id',
  `name` varchar
(100) NOT NULL COMMENT 'user name',
  `nick` varchar
(100) NOT NULL COMMENT 'user nick name',
  `pass` varchar
(200) NOT NULL COMMENT 'user pass key',
  `identity` varchar
(20) NOT NULL COMMENT 'user identity sign',
  `mail` varchar
(250) NOT NULL COMMENT 'user mail address',
  `gm_modified` datetime DEFAULT CURRENT_TIMESTAMP ON
UPDATE CURRENT_TIMESTAMP COMMENT 'system modify timestamp',
  `gm_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'system create timestamp',
  PRIMARY KEY
(`id`),
  UNIQUE KEY `name`
(`name`),
  UNIQUE KEY `identity`
(`identity`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='user info table';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
  INSERT INTO `user`
  VALUES
    (1, 'bdu@kaikeba.com', 'bdu', 'bf72e5da799c72fa27fbd36c7fdf9363', '344614', 'bdu@kaikeba.com', '2022-04-20 15:35:20', '2022-04-20 15:35:20');
  COMMIT;

  SET FOREIGN_KEY_CHECKS = 1;