/*
Navicat MySQL Data Transfer

Source Server         : MyFirst
Source Server Version : 50610
Source Host           : 127.0.0.1:3306
Source Database       : first

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2018-10-20 20:26:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adjustrest
-- ----------------------------
DROP TABLE IF EXISTS `adjustrest`;
CREATE TABLE `adjustrest` (
  `adjustRestId` int(11) NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutyPeople` varchar(255) DEFAULT NULL,
  `applyPeople` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `applyDate` varchar(255) DEFAULT NULL,
  `
duration` varchar(255) DEFAULT NULL,
  `proxy` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adjustRestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adjustrest
-- ----------------------------

-- ----------------------------
-- Table structure for checking
-- ----------------------------
DROP TABLE IF EXISTS `checking`;
CREATE TABLE `checking` (
  `checkingId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `checkingDate` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`checkingId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checking
-- ----------------------------
INSERT INTO `checking` VALUES ('1', '2018年10月份考勤表', '李萌', '开发部', 'URK/qweq/qwe/qwe', '2018/10/18', '考勤记录', null, null, null);
INSERT INTO `checking` VALUES ('2', '入职申请-李萌-1002006', null, '', null, '', '', null, null, null);
INSERT INTO `checking` VALUES ('3', '10月份开发部考勤表', null, '开发部', 'f0ece12e-2858-4c5a-a304-be06a7b6fd29.xls', '2018/10/18', '考勤考勤考勤', null, null, null);
INSERT INTO `checking` VALUES ('4', '入职申请-李萌-1002006', null, '开发一部', 'e3973be3-ac7f-4df0-81b7-a2de9ca0d4fb.xls', '2018/10/18', 'testtesttesttest', null, null, null);

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(255) DEFAULT NULL,
  `deptDepict` varchar(255) DEFAULT NULL,
  `deptJobDescription` varchar(255) DEFAULT NULL,
  `deptState` int(11) DEFAULT NULL COMMENT '1正常 0停用',
  `belong` int(11) DEFAULT NULL COMMENT '隶属于',
  PRIMARY KEY (`deptId`),
  KEY `kf_belong_dept` (`belong`),
  CONSTRAINT `dept_ibfk_1` FOREIGN KEY (`belong`) REFERENCES `subcompany` (`scId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '销售部', '销售', null, null, null);
INSERT INTO `dept` VALUES ('2', '开发部', '开发', null, null, null);

-- ----------------------------
-- Table structure for dimission
-- ----------------------------
DROP TABLE IF EXISTS `dimission`;
CREATE TABLE `dimission` (
  `dimissionId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `applyDate` varchar(255) DEFAULT NULL,
  `part` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `entryDate` varchar(255) DEFAULT NULL,
  `dimissionDate` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `supperRemark` varchar(255) DEFAULT NULL,
  `dimissionName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dimissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dimission
-- ----------------------------
INSERT INTO `dimission` VALUES ('1', '离职申请', null, null, null, null, null, null, null, null, null);
INSERT INTO `dimission` VALUES ('2', '离职申请-李萌-1002042', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', null, '0', '1998/07/10', '1998/07/10');

-- ----------------------------
-- Table structure for entryapply
-- ----------------------------
DROP TABLE IF EXISTS `entryapply`;
CREATE TABLE `entryapply` (
  `applyID` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutyPeople` varchar(255) DEFAULT NULL,
  `applyPeople` varchar(255) DEFAULT NULL,
  `endDate` varchar(255) DEFAULT NULL,
  `entryDate` varchar(255) DEFAULT NULL,
  `entryPart` varchar(255) DEFAULT NULL,
  `entryPost` varchar(255) DEFAULT NULL,
  `birthDate` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `workAge` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`applyID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryapply
-- ----------------------------
INSERT INTO `entryapply` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `entryapply` VALUES ('2', '入职申请-李萌-1002006', null, null, '1', '', '123', '11', '1', '1', '男', '1', '1', '1', '1', '1', null, null, null);
INSERT INTO `entryapply` VALUES ('15', '入职申请-李萌-1002006', null, null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for evection
-- ----------------------------
DROP TABLE IF EXISTS `evection`;
CREATE TABLE `evection` (
  `evectionId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutyPeople` varchar(255) DEFAULT NULL,
  `applyPeople` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `applyDate` varchar(255) DEFAULT NULL,
  `evectionDate` varchar(255) DEFAULT NULL,
  `evectionEndDate` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `traffic` varchar(255) DEFAULT NULL,
  `report` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evection
-- ----------------------------
INSERT INTO `evection` VALUES ('1', '出差申请-李浩-1000942', '填单', '李萌', '	李浩', '	技术部', '2016/5/4', '	2016/5/5', '	2016/5/6', '苏州', '给新客户安装设备和指导技术', '火车', null, null, null, null);
INSERT INTO `evection` VALUES ('2', '出差申请-张旭-1000540', '结束', '李萌', '	张旭', '门	销售部', '2016/4/12', '	2016/4/19 08:00:00', '2016/4/20 18:00:00', '	广州天河万科', '	考察渠道代理资质', '飞机', '代理资质合格，可授权。', '达成', null, null);
INSERT INTO `evection` VALUES ('20', '出差申请-李萌-1002006', null, null, '李萌', '技术1部', '2018/10/20', '2018/10/20', '2018/10/21', '上海', '找工作', '轮船', null, null, null, null);

-- ----------------------------
-- Table structure for groupcompany
-- ----------------------------
DROP TABLE IF EXISTS `groupcompany`;
CREATE TABLE `groupcompany` (
  `GcId` int(11) NOT NULL AUTO_INCREMENT,
  `GcName` varchar(255) DEFAULT NULL,
  `GcDepict` varchar(255) DEFAULT NULL,
  `GcJobDescription` varchar(255) DEFAULT NULL,
  `GcState` int(11) DEFAULT NULL COMMENT '1正常 0停用',
  `belong` int(11) DEFAULT NULL,
  PRIMARY KEY (`GcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupcompany
-- ----------------------------

-- ----------------------------
-- Table structure for leaveapply
-- ----------------------------
DROP TABLE IF EXISTS `leaveapply`;
CREATE TABLE `leaveapply` (
  `leaveId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutyPeople` varchar(255) DEFAULT NULL,
  `applyDate` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `beginDate` varchar(255) DEFAULT NULL,
  `endDate` varchar(255) DEFAULT NULL,
  `leaveType` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`leaveId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveapply
-- ----------------------------
INSERT INTO `leaveapply` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for official
-- ----------------------------
DROP TABLE IF EXISTS `official`;
CREATE TABLE `official` (
  `officialId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(30) DEFAULT NULL,
  `dutyPeople` varchar(50) DEFAULT NULL,
  `proposer` varchar(30) DEFAULT NULL,
  `filingDate` varchar(30) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `entryDate` varchar(50) DEFAULT NULL,
  `officialDate` varchar(50) DEFAULT NULL,
  `workContent` varchar(100) DEFAULT NULL,
  `workgrade` varchar(100) DEFAULT NULL,
  `issue` varchar(100) DEFAULT NULL,
  `superiorremark` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`officialId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of official
-- ----------------------------
INSERT INTO `official` VALUES ('1', '转正申请', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '申请');
INSERT INTO `official` VALUES ('2', '转正申请', null, null, null, null, null, null, null, null, null, null, null, '申请');
INSERT INTO `official` VALUES ('3', '转正申请-李萌-1002026', null, '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', null, '1998/07/10', '1998/07/10', null, null);
INSERT INTO `official` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('5', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('7', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('8', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('9', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('10', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('11', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('12', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('13', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('14', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('15', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `official` VALUES ('16', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for overtime
-- ----------------------------
DROP TABLE IF EXISTS `overtime`;
CREATE TABLE `overtime` (
  `overtimeId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutyPeople` varchar(255) DEFAULT NULL,
  `applyPeople` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `applyDate` varchar(255) DEFAULT NULL,
  `beginDate` varchar(255) DEFAULT NULL,
  `endDate` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`overtimeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of overtime
-- ----------------------------
INSERT INTO `overtime` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `overtime` VALUES ('3', '加班申请-李萌-1002015', null, null, '李萌', '技术部', '2018/10/19', '2018/10/19', '2018/10/19', '加班打代码', '0.5', null, null);

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
  `recruitId` int(11) NOT NULL AUTO_INCREMENT,
  `principal` varchar(50) DEFAULT NULL,
  `endDate` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `peopleNumber` varchar(50) DEFAULT NULL,
  `cause` varchar(50) DEFAULT NULL,
  `obligation` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `workspace` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `other` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`recruitId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='招聘申请表';

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '结束', '1');
INSERT INTO `recruit` VALUES ('22', '李萌', '2018/10/20', '销售部', '销售经理', '1', '没有经理好蓝瘦', '审批本部门大小事务', '日语', '小店', '20', '女', '专科以上', '不限', '不限', '女', '填单', '招聘申请-李萌-1002008');
INSERT INTO `recruit` VALUES ('23', 'oo', '', '', '', '', '', '', '', '', '', null, '', '', '', '', '填单', '招聘申请-李萌-1002008');
INSERT INTO `recruit` VALUES ('24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('25', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `recruit` VALUES ('35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `resourceId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `overtimeId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for subcompany
-- ----------------------------
DROP TABLE IF EXISTS `subcompany`;
CREATE TABLE `subcompany` (
  `scId` int(11) NOT NULL AUTO_INCREMENT,
  `scName` varchar(255) DEFAULT NULL,
  `scDepict` varchar(255) DEFAULT NULL,
  `scJobDescription` varchar(255) DEFAULT NULL,
  `scState` int(11) DEFAULT NULL COMMENT '1正常 0停用',
  `belong` int(11) DEFAULT NULL,
  PRIMARY KEY (`scId`),
  KEY `kf_belong` (`belong`) USING BTREE,
  CONSTRAINT `subcompany_ibfk_1` FOREIGN KEY (`belong`) REFERENCES `groupcompany` (`GcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subcompany
-- ----------------------------

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `kehuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '1', '1');
INSERT INTO `test` VALUES ('2', '1', '1');
INSERT INTO `test` VALUES ('3', '312', '2');

-- ----------------------------
-- Table structure for transfer
-- ----------------------------
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `transferId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutyPeople` varchar(255) DEFAULT NULL,
  `applyPeople` varchar(255) DEFAULT NULL,
  `entryDate` varchar(255) DEFAULT NULL,
  `oldPart` varchar(255) DEFAULT NULL,
  `newPart` varchar(255) DEFAULT NULL,
  `oldpost` varchar(255) DEFAULT NULL,
  `newpost` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `oldsuperiorRemark` varchar(255) DEFAULT NULL,
  `newsuperiorRemark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transferId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transfer
-- ----------------------------
INSERT INTO `transfer` VALUES ('1', '岗位调动', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `transfer` VALUES ('4', '岗位调动申请-李萌-1002028', null, null, '张三', '1998/07/10', '销售部', '技术部', '销售员', 'java高级开发', '学会了java', '晋升', 'nice', '666');

-- ----------------------------
-- Table structure for userdetail
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail` (
  `detailId` int(11) NOT NULL AUTO_INCREMENT,
  `UserSex` varchar(30) DEFAULT NULL,
  `UserNum` varchar(30) DEFAULT NULL,
  `entryDate` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `birthDate` varchar(30) DEFAULT NULL,
  `positiveDate` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `nativeplace` varchar(100) DEFAULT NULL,
  `nation` varchar(30) DEFAULT NULL,
  `politics` varchar(50) DEFAULT NULL,
  `marriage` varchar(100) DEFAULT NULL,
  `IDnumber` varchar(100) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `hobby` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `dependence` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`detailId`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8 COMMENT='用户详情表';

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES ('1', '女', 'Azb-050', '2018-10-13', '	025-84858968 ', '	025-84858968 ', '	limeng123@139.com ', '1990/9/12 ', '2015/5/7 ', '超级管理员', '11', '河南', '汉', '共青团员', '未婚', '450829199009120323', '北京市通州区凤凰熙岸04栋3204 ', '清华大学', '博士', '信息工程专业', '羽毛球', '在职', '销售部', '销售员', '划水1');
INSERT INTO `userdetail` VALUES ('2', '男', 'aa', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '临时', null, null, '李萌2');
INSERT INTO `userdetail` VALUES ('11', '女', 'Azb-050', '2018-10-13', '	025-84858968 ', '	025-84858968 ', '	limeng123@139.com ', '1990/9/12 ', '2015/5/7 ', '超级管理员', '', '河南', '汉', '共青团员', '未婚', '450829199009120323', '北京市通州区凤凰熙岸04栋3204 ', '清华大学', '博士', '信息工程专业', '羽毛球', '试用', '销售部', '部门主管', '划水3');
INSERT INTO `userdetail` VALUES ('12', '男', 'aa', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '退休', null, null, '李萌4');
INSERT INTO `userdetail` VALUES ('14', '女', 'Azb-050', '2018-10-13', '	025-84858968 ', '	025-84858968 ', '	limeng123@139.com ', '1990/9/12 ', '2015/5/7 ', '超级管理员', '', '河南', '汉', '共青团员', '未婚', '450829199009120323', '北京市通州区凤凰熙岸04栋3204 ', '清华大学', '博士', '信息工程专业', '羽毛球', '离职', '销售部', '销售员', '划水5');
INSERT INTO `userdetail` VALUES ('15', '男', 'aa', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '临时', null, null, '李萌6');
INSERT INTO `userdetail` VALUES ('16', '女', 'Azb-050', '2018-10-13', '	025-84858968 ', '	025-84858968 ', '	limeng123@139.com ', '1990/9/12 ', '2015/5/7 ', '超级管理员', '', '河南', '汉', '共青团员', '未婚', '450829199009120323', '北京市通州区凤凰熙岸04栋3204 ', '清华大学', '博士', '信息工程专业', '羽毛球', '试用', '销售部', '销售员', '划水7');
INSERT INTO `userdetail` VALUES ('385', '男', '', '', '', '', '', '', '', null, '', '', '', '', null, '', '', '', '', '', '', '退休', null, '', '李东龙');
INSERT INTO `userdetail` VALUES ('386', '男', 'AAA', '', '123123', '123213', '849540038@qq.com', '', '', null, '', '河南', '汉', '党员', '未婚', '4123123123123123', '新乡职业技术学院', '', '', '', '', '离职', null, '程序员', '王少强');
INSERT INTO `userdetail` VALUES ('387', '男', 'XXXXX', '123', '123', '123', '849540038@qq.com', '123', '123', null, '123', '123', '213', '123', null, '213', '123', '123', '123', '123', '', '在职', null, '程序员', '邢高鹏');
INSERT INTO `userdetail` VALUES ('394', '男', '666', '123', '123123', '123213', '849540038@qq.com', '123', '123', null, '', '', '', '', null, '', '', '', '', '', '', '在职', null, '程序员', '嚯嚯嚯');
INSERT INTO `userdetail` VALUES ('413', '男', '', '', '', '', '', '', '', null, '', '', '', '', null, '', '', '', '', '', '', '在职', null, '', '123213123123');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(200) DEFAULT NULL,
  `unum` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `upass` varchar(200) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', 'admin');
INSERT INTO `users` VALUES ('2', 'user1', 'user1', 'admin');
INSERT INTO `users` VALUES ('3', '2', '2', '2');
INSERT INTO `users` VALUES ('4', 'user2', 'user2', 'admin');
INSERT INTO `users` VALUES ('5', '3', '3', '3');
INSERT INTO `users` VALUES ('6', '4', '4', '4');

-- ----------------------------
-- Table structure for userstowmodile
-- ----------------------------
DROP TABLE IF EXISTS `userstowmodile`;
CREATE TABLE `userstowmodile` (
  `mTowId` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  KEY `FK_Reference_7` (`uid`),
  KEY `FK_Reference_6` (`mTowId`),
  CONSTRAINT `kd_towUsersid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  CONSTRAINT `kf_mtowid` FOREIGN KEY (`mTowId`) REFERENCES `visittwomodile` (`mTowId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户一级模块中间表';

-- ----------------------------
-- Records of userstowmodile
-- ----------------------------
INSERT INTO `userstowmodile` VALUES ('1', '1');
INSERT INTO `userstowmodile` VALUES ('3', '1');
INSERT INTO `userstowmodile` VALUES ('1', '2');
INSERT INTO `userstowmodile` VALUES ('5', '1');
INSERT INTO `userstowmodile` VALUES ('6', '1');
INSERT INTO `userstowmodile` VALUES ('7', '1');
INSERT INTO `userstowmodile` VALUES ('10', '1');
INSERT INTO `userstowmodile` VALUES ('9', '1');
INSERT INTO `userstowmodile` VALUES ('8', '1');

-- ----------------------------
-- Table structure for visitonemodile
-- ----------------------------
DROP TABLE IF EXISTS `visitonemodile`;
CREATE TABLE `visitonemodile` (
  `mOneId` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mdescribe` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `msequnce` int(11) DEFAULT NULL COMMENT '排列序号',
  `mimageurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mOneId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='一级访问模块';

-- ----------------------------
-- Records of visitonemodile
-- ----------------------------
INSERT INTO `visitonemodile` VALUES ('1', '系统设置', '设置系统的一些权限', '10001', '../upload/.pngc46b767c-cddb-4403-b894-7555c280ce4b.png');
INSERT INTO `visitonemodile` VALUES ('2', '我的桌面', '显示首页信息', '1', '../upload/.pngc46b767c-cddb-4403-b894-7555c280ce4b.png');
INSERT INTO `visitonemodile` VALUES ('3', '我的事务', '事务管理', '1', '../upload/.pngc8a48f5c-3627-4abc-a93b-b872b5dc0c20.png');
INSERT INTO `visitonemodile` VALUES ('4', '目标管理', '小目标', '1', '../upload/.png398bdd51-eba4-4aba-862d-a6ff1660a441.png');
INSERT INTO `visitonemodile` VALUES ('6', '客户关系', '都是老板', '1', '../upload/.68c5d6ee-c3e6-4405-933f-feddc9a5428e.png');
INSERT INTO `visitonemodile` VALUES ('7', '人力资源', '人力资源', '1', '../upload/.334ae921-3e63-4b1c-9757-40510b4ef24c.png');

-- ----------------------------
-- Table structure for visittwomodile
-- ----------------------------
DROP TABLE IF EXISTS `visittwomodile`;
CREATE TABLE `visittwomodile` (
  `mTowId` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `murl` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mdescribe` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '二级模块描述',
  `msequnce` int(11) DEFAULT NULL COMMENT '排列序号',
  `mOneId` int(11) DEFAULT NULL,
  PRIMARY KEY (`mTowId`),
  KEY `kf_moneId` (`mOneId`),
  CONSTRAINT `kf_moneId` FOREIGN KEY (`mOneId`) REFERENCES `visitonemodile` (`mOneId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='二级模块';

-- ----------------------------
-- Records of visittwomodile
-- ----------------------------
INSERT INTO `visittwomodile` VALUES ('1', '权限管理', '../BackJsp/LDL/authorityManagement.jsp', '权限', '1', '1');
INSERT INTO `visittwomodile` VALUES ('2', '组织架构', '/sdsaf', '管理各个分公司', '1', '2');
INSERT INTO `visittwomodile` VALUES ('3', '组织机构', '../BackJsp/LDL/organization.jsp', '管理公司的结构', '1', '1');
INSERT INTO `visittwomodile` VALUES ('5', '岗位角色', '../BackJsp/LDL/post.jsp', '各个岗位的用户', '1', '1');
INSERT INTO `visittwomodile` VALUES ('6', '我的人事', 'userdetail/getUserdetail', '个人信息', '1', '7');
INSERT INTO `visittwomodile` VALUES ('7', '员工管理', '../BackJsp/hcq/staff.jsp', '员工信息管理', '1', '7');
INSERT INTO `visittwomodile` VALUES ('8', '招聘和配置', '../BackJsp/hcq/recruit.jsp', '招聘和配置', '1', '7');
INSERT INTO `visittwomodile` VALUES ('9', '考勤管理', '../BackJsp/hcq/check.jsp', '考勤管理', null, '7');
INSERT INTO `visittwomodile` VALUES ('10', '绩效管理', '../BackJsp/hcq/performance.jsp', '绩效管理', null, '7');
