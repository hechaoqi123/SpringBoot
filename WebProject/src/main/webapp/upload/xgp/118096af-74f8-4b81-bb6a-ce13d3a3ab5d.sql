/*
Navicat MySQL Data Transfer

Source Server         : examDB
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : fruit

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2018-09-20 19:27:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fruit_info
-- ----------------------------
DROP TABLE IF EXISTS `fruit_info`;
CREATE TABLE `fruit_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fruit_info
-- ----------------------------
INSERT INTO `fruit_info` VALUES ('1', '威威', '1', '1');
INSERT INTO `fruit_info` VALUES ('2', '谔谔', '1', '0');
INSERT INTO `fruit_info` VALUES ('3', 'qq', '1', '1');
INSERT INTO `fruit_info` VALUES ('4', 'qqqq', '1', '1');
