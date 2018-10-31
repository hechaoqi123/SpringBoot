/*
Navicat MySQL Data Transfer

Source Server         : MyFirst
Source Server Version : 50610
Source Host           : 127.0.0.1:3306
Source Database       : first

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2018-10-29 08:02:27
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
-- Table structure for approval
-- ----------------------------
DROP TABLE IF EXISTS `approval`;
CREATE TABLE `approval` (
  `approvalID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(255) DEFAULT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `itemid` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `approvaldate` datetime DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`approvalID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of approval
-- ----------------------------
INSERT INTO `approval` VALUES ('2', '划水1', '招聘申请', '48', '同意', '0', '2018-10-26 23:40:18', null, null);
INSERT INTO `approval` VALUES ('5', '划水1', '招聘申请', '36', '同意', '1', '2018-10-27 13:34:34', null, null);
INSERT INTO `approval` VALUES ('6', '划水1', '招聘申请', '48', '大力支持！！！', '2', '2018-10-27 13:42:52', null, null);
INSERT INTO `approval` VALUES ('7', '陈某某', '招聘申请', '49', null, '0', '2018-10-27 13:53:21', null, null);
INSERT INTO `approval` VALUES ('8', '陈某某', '招聘申请', '49', '自己的申请怎么拒绝？', '1', '2018-10-27 13:54:17', null, null);
INSERT INTO `approval` VALUES ('9', 'Boss', '招聘申请', '49', '', '2', '2018-10-27 13:54:41', null, null);
INSERT INTO `approval` VALUES ('10', '王某某', '招聘申请', '50', '请求支援', '0', '2018-10-27 14:20:54', null, null);
INSERT INTO `approval` VALUES ('11', '陈某某', '招聘申请', '50', '好的，等我请示领导', '1', '2018-10-27 14:21:13', null, null);
INSERT INTO `approval` VALUES ('12', 'Boss', '招聘申请', '50', '小伙子好好干，明年我就能开上法拉利了', '2', '2018-10-27 14:24:24', null, null);
INSERT INTO `approval` VALUES ('13', '划水1', '招聘申请', '23', '', '2', '2018-10-27 14:38:17', null, null);
INSERT INTO `approval` VALUES ('14', '划水1', '招聘申请', '36', '', '2', '2018-10-27 14:38:30', null, null);
INSERT INTO `approval` VALUES ('15', '划水1', '招聘申请', '24', '1', '1', '2018-10-27 14:39:53', null, null);
INSERT INTO `approval` VALUES ('31', '何超奇', '入职申请', '18', '1', '0', '2018-10-27 18:48:43', null, null);
INSERT INTO `approval` VALUES ('32', '123', '入职申请', '19', '3', '0', '2018-10-27 18:55:40', null, null);
INSERT INTO `approval` VALUES ('36', '123123', '入职申请', '20', '1', '0', '2018-10-27 19:24:33', null, null);
INSERT INTO `approval` VALUES ('38', '划水1', '入职申请', '20', '12311312', '1', '2018-10-27 19:28:26', null, null);
INSERT INTO `approval` VALUES ('39', '划水1', '入职申请', '20', '', '1', '2018-10-27 19:31:10', null, null);
INSERT INTO `approval` VALUES ('40', '划水1', '入职申请', '20', '', '2', '2018-10-27 19:31:42', null, null);
INSERT INTO `approval` VALUES ('41', '划水1', '入职申请', '19', '', '1', '2018-10-27 19:32:00', null, null);
INSERT INTO `approval` VALUES ('42', '陈某某', '入职申请', '18', '同意', '2', '2018-10-27 19:32:22', null, null);
INSERT INTO `approval` VALUES ('43', 'Boss', '入职申请', '19', '阔以', '2', '2018-10-27 19:33:32', null, null);
INSERT INTO `approval` VALUES ('44', '划水1', '入职申请', '16', '死', '5', '2018-10-27 19:35:18', null, null);
INSERT INTO `approval` VALUES ('45', '划水1', '招聘申请', '22', '', '1', '2018-10-27 23:06:13', null, null);
INSERT INTO `approval` VALUES ('46', '划水1', '招聘申请', '45', '1', '1', '2018-10-27 23:06:30', null, null);
INSERT INTO `approval` VALUES ('47', '123', '招聘申请', '51', null, '0', '2018-10-27 23:07:12', null, null);
INSERT INTO `approval` VALUES ('48', '划水1', '转正申请', '3', '666', '1', '2018-10-27 23:07:55', null, null);
INSERT INTO `approval` VALUES ('49', 'Boss', '转正申请', '3', '888', '2', '2018-10-27 23:09:54', null, null);
INSERT INTO `approval` VALUES ('50', '划水1', '转正申请', '1', '假数据', '5', '2018-10-27 23:11:39', null, null);
INSERT INTO `approval` VALUES ('51', '汪汪汪', '转正申请', '5', null, '0', '2018-10-28 00:15:37', null, null);
INSERT INTO `approval` VALUES ('52', 'qwe', '岗位调动申请', '6', null, '0', '2018-10-28 00:59:33', null, null);
INSERT INTO `approval` VALUES ('53', '陈某某', '岗位调动申请', '6', '21', '1', '2018-10-28 01:27:16', null, null);
INSERT INTO `approval` VALUES ('54', '12', '岗位调动申请', '7', null, '0', '2018-10-28 10:34:01', null, null);
INSERT INTO `approval` VALUES ('55', '划水1', '岗位调动申请', '7', '', '1', '2018-10-28 10:34:17', null, null);
INSERT INTO `approval` VALUES ('56', '111', '招聘申请', '52', null, '0', '2018-10-28 10:35:02', null, null);
INSERT INTO `approval` VALUES ('57', '划水1', '招聘申请', '52', '', '1', '2018-10-28 10:35:16', null, null);
INSERT INTO `approval` VALUES ('58', '666', '招聘申请', '53', null, '0', '2018-10-28 10:40:51', null, null);
INSERT INTO `approval` VALUES ('59', '划水1', '招聘申请', '53', '', '1', '2018-10-28 10:41:06', null, null);
INSERT INTO `approval` VALUES ('60', '何某某', '岗位调动申请', '5', '', '1', '2018-10-28 11:23:29', null, null);
INSERT INTO `approval` VALUES ('61', 'Boss', '岗位调动申请', '5', '', '3', '2018-10-28 11:42:30', null, null);
INSERT INTO `approval` VALUES ('62', '孙某某', '岗位调动申请', '8', null, '0', '2018-10-28 11:52:21', null, null);
INSERT INTO `approval` VALUES ('63', '何某某', '岗位调动申请', '8', '真菜', '1', '2018-10-28 11:52:56', null, null);
INSERT INTO `approval` VALUES ('64', '李某某', '岗位调动申请', '8', '欢迎欢迎', '2', '2018-10-28 12:41:15', null, null);
INSERT INTO `approval` VALUES ('65', 'Boss', '岗位调动申请', '8', '', '3', '2018-10-28 13:38:40', null, null);
INSERT INTO `approval` VALUES ('66', '划水1', '离职申请', '3', '6', '1', '2018-10-28 17:19:34', null, null);
INSERT INTO `approval` VALUES ('67', '划水1', '转正申请', '2', '', '1', '2018-10-28 17:23:49', null, null);
INSERT INTO `approval` VALUES ('68', '划水1', '转正申请', '2', '', '2', '2018-10-28 17:23:55', null, null);
INSERT INTO `approval` VALUES ('69', 'Boss', '离职申请', '3', '你走吧  不中意你了', '2', '2018-10-28 17:25:33', null, null);

-- ----------------------------
-- Table structure for baoxiao
-- ----------------------------
DROP TABLE IF EXISTS `baoxiao`;
CREATE TABLE `baoxiao` (
  `baoxiaoID` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutypeople` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `baoxiaoDate` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`baoxiaoID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baoxiao
-- ----------------------------
INSERT INTO `baoxiao` VALUES ('1', '1', '1', '1', null, '1', '1', '1', '1', null);
INSERT INTO `baoxiao` VALUES ('3', '费用报销-李东龙', '填单', '', '李东龙', '人事部', '2018/10/25', '510', '伍百拾元整', null);

-- ----------------------------
-- Table structure for baoxiaoitem
-- ----------------------------
DROP TABLE IF EXISTS `baoxiaoitem`;
CREATE TABLE `baoxiaoitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `opposite` varchar(255) DEFAULT NULL,
  `dutyPeople` varchar(255) DEFAULT NULL,
  `baoxiaoid` int(11) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baoxiaoitem
-- ----------------------------
INSERT INTO `baoxiaoitem` VALUES ('1', '办公费', '打代码', '500', 'JAVA2', '何超琦', '3', null);
INSERT INTO `baoxiaoitem` VALUES ('2', '其他', '端茶到水费', '10', 'JAVA2', '何超奇', '3', null);

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
INSERT INTO `checking` VALUES ('1', '2018年10月份考勤表', '李萌', '开发部', 'e3973be3-ac7f-4df0-81b7-a2de9ca0d4fb.xls', '2018/10/18', '考勤记录', null, null, null);
INSERT INTO `checking` VALUES ('2', '入职申请-李萌-1002006', null, '', 'e3973be3-ac7f-4df0-81b7-a2de9ca0d4fb.xls', '', '', null, null, null);
INSERT INTO `checking` VALUES ('3', '10月份开发部考勤表', null, '开发部', 'f0ece12e-2858-4c5a-a304-be06a7b6fd29.xls', '2018/10/18', '考勤考勤考勤', null, null, null);
INSERT INTO `checking` VALUES ('4', '入职申请-李萌-1002006', null, '开发一部', 'e3973be3-ac7f-4df0-81b7-a2de9ca0d4fb.xls', '2018/10/18', 'testtesttesttest', null, null, null);

-- ----------------------------
-- Table structure for chequeapply
-- ----------------------------
DROP TABLE IF EXISTS `chequeapply`;
CREATE TABLE `chequeapply` (
  `chequeid` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutypeople` varchar(255) DEFAULT NULL,
  `applyname` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `applydate` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `opposite` varchar(255) DEFAULT NULL,
  `compact` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ratepayer` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `idnumber` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`chequeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chequeapply
-- ----------------------------
INSERT INTO `chequeapply` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, null);
INSERT INTO `chequeapply` VALUES ('2', '开票申请-李萌-1002033', '填单', '划水1', '李萌', '人事部', '2018/10/25', '有钱任性', '阿尔法有限公司', 'RS0001', '普通发票', '1', '', '新乡职业技术学院', '15000', '壹万伍千元整', '2018/10/25', '', null, null);

-- ----------------------------
-- Table structure for chequeregister
-- ----------------------------
DROP TABLE IF EXISTS `chequeregister`;
CREATE TABLE `chequeregister` (
  `chequeId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutypeople` varchar(255) DEFAULT NULL,
  `registerpeople` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `registerdate` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `opposite` varchar(255) DEFAULT NULL,
  `compact` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `SuperMoney` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `idnumber` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`chequeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chequeregister
-- ----------------------------
INSERT INTO `chequeregister` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '1', null, null);
INSERT INTO `chequeregister` VALUES ('2', '来票申请-李萌-1002033', '填单', '', '何超奇', '财务部', '2018/10/25', '挣钱挣钱', 'alibaba', 'RS0001', '130000000', '壹亿叁千万元整', '2018/10/25', '4123123123123123', null, null, null);

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `clientid` int(11) NOT NULL AUTO_INCREMENT,
  `clientname` varchar(255) DEFAULT NULL,
  `clientspell` varchar(255) DEFAULT NULL,
  `clientclassify` varchar(255) DEFAULT NULL,
  `clientsource` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `clienturl` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `clientpostcode` int(255) DEFAULT NULL,
  `clientfax` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `clientdept` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `officephone` varchar(255) DEFAULT NULL,
  `movephone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `legal` varchar(255) DEFAULT NULL,
  `registered` varchar(255) DEFAULT NULL,
  `clientexplain` varchar(255) DEFAULT NULL,
  `clientaccount` varchar(255) DEFAULT NULL,
  `accountname` varchar(255) DEFAULT NULL,
  `clientbank` varchar(255) DEFAULT NULL,
  `bankaddress` varchar(255) DEFAULT NULL,
  `clientduty` varchar(255) DEFAULT NULL,
  `reservedphone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clientid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('7', '新乡教育培训团', 'XXL', '3', '3', '3', 'www.baidu.com', '中国', '新乡', '新乡职业技术学院', '475200', '8998', '王总', '销售', '经理', '8998999', '13696985269', '1269098269', '黄', '强', '便捷发展', '1234567890', '88888888', '工商', '某某某', '2000', '8989899');
INSERT INTO `client` VALUES ('24', '212121', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `contractid` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) DEFAULT NULL,
  `contracplc` varchar(255) DEFAULT NULL,
  `contraccity` varchar(255) DEFAULT NULL,
  `contracaddress` varchar(255) DEFAULT NULL,
  `contracname` varchar(255) DEFAULT NULL,
  `contracnumber` varchar(255) DEFAULT NULL,
  `contracmoney` double(255,0) DEFAULT NULL,
  `signingdate` varchar(255) DEFAULT NULL,
  `effectivedate` varchar(255) DEFAULT NULL,
  `saasdate` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `contracqq` varchar(255) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `businessterms` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `contracstate` varchar(255) DEFAULT NULL,
  `detailId` int(11) DEFAULT NULL,
  PRIMARY KEY (`contractid`),
  KEY `fkm_detailId` (`detailId`) USING BTREE,
  KEY `fkm_clientid` (`clientid`) USING BTREE,
  CONSTRAINT `fkm_clientid` FOREIGN KEY (`clientid`) REFERENCES `client` (`clientid`),
  CONSTRAINT `fkm_detailId` FOREIGN KEY (`detailId`) REFERENCES `userdetail` (`detailId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contract
-- ----------------------------
INSERT INTO `contract` VALUES ('1', '7', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `contract` VALUES ('2', '7', '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1');
INSERT INTO `contract` VALUES ('8', '7', '1', '1', '1', '1', '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1');
INSERT INTO `contract` VALUES ('9', '7', '教育', '新乡', '新乡职业技术学院', '教育大学生', '002', '200000', '2018/10/21', '2018/10/22', '2019/10/21', '余小呆', '8998999', '1365656566', '1269098269', '【产品交付和时间】？？？', '【收款方式和时间】？？？', '销售部', '0', '1');
INSERT INTO `contract` VALUES ('10', '7', '', '', '', '', '', '0', '', '', '', '', '', '', '', '【产品交付和时间】？？？', '【收款方式和时间】？？？', '', '0', null);

-- ----------------------------
-- Table structure for cost
-- ----------------------------
DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `costID` int(11) NOT NULL AUTO_INCREMENT,
  `beginDate` varchar(255) DEFAULT NULL,
  `beginAddress` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `ManagerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`costID`),
  KEY `fk_cost` (`ManagerID`),
  CONSTRAINT `fk_cost` FOREIGN KEY (`ManagerID`) REFERENCES `cost_manager` (`costID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cost
-- ----------------------------
INSERT INTO `cost` VALUES ('1', '2018/10/25', '小店', '前往上海寻找客户', '500', '100', '3000', '200', '', '3');
INSERT INTO `cost` VALUES ('2', '2018/10/30', '上海', '返程', '500', '100', '0', '0', '', '3');

-- ----------------------------
-- Table structure for cost_manager
-- ----------------------------
DROP TABLE IF EXISTS `cost_manager`;
CREATE TABLE `cost_manager` (
  `costID` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutypeople` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `submitdate` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`costID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cost_manager
-- ----------------------------
INSERT INTO `cost_manager` VALUES ('1', '123', '123', '1', '1', '人事部', '1', '1', '10000', '1', '1');
INSERT INTO `cost_manager` VALUES ('2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `cost_manager` VALUES ('3', '差旅费报销-李萌-1002051', '填单', '划水1', '嚯嚯嚯', '开发一部', '2018/10/12', '沟通合作事项', '4400', '肆千肆百元整', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '人事部', '人事', null, '2', '2');
INSERT INTO `dept` VALUES ('2', '总经办', '超级管理员', null, '1', '2');
INSERT INTO `dept` VALUES ('3', '财务部', '财务', null, '3', '2');
INSERT INTO `dept` VALUES ('4', '技术部', '技术', null, '8', '2');
INSERT INTO `dept` VALUES ('5', '营销部', '销售', null, '4', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dimission
-- ----------------------------
INSERT INTO `dimission` VALUES ('1', '离职申请', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', null, '填单', null, null, null);
INSERT INTO `dimission` VALUES ('2', '离职申请-李萌-1002042', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', '填单', '0', '1998/07/10', '李萌');
INSERT INTO `dimission` VALUES ('3', '离职申请-admin', '1998/07/10', '总经办', '程序员', 'test', '1998/07/10', '结束', '0', '我', '黎莉莉');

-- ----------------------------
-- Table structure for disburse
-- ----------------------------
DROP TABLE IF EXISTS `disburse`;
CREATE TABLE `disburse` (
  `disburseID` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dutypeople` varchar(255) DEFAULT NULL,
  `applypeople` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `applydate` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`disburseID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of disburse
-- ----------------------------
INSERT INTO `disburse` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', null);

-- ----------------------------
-- Table structure for disburse_item
-- ----------------------------
DROP TABLE IF EXISTS `disburse_item`;
CREATE TABLE `disburse_item` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of disburse_item
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entryapply
-- ----------------------------
INSERT INTO `entryapply` VALUES ('1', '1', '填单', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `entryapply` VALUES ('2', '入职申请-李萌-1002006', '填单', null, '1', '', '123', '11', '1', '1', '男', '1', '1', '1', '1', '1', null, null, null);
INSERT INTO `entryapply` VALUES ('15', '入职申请-李萌-1002006', '填单', null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `entryapply` VALUES ('16', '入职申请-admin', '驳回', '划水1', '划水1', '', '2018/10/21', '技术部', '程序员', '1998/07/10', '男', '新乡职业技术学院', '本科', '', '', '死', null, null, null);
INSERT INTO `entryapply` VALUES ('18', '入职申请-', '结束', '', '陈某某', '', '2018/10/27', '人事部', '项目经理', '1998/07/10', '男', '新乡职业技术学院', '本科', 'java', '3', '同意', null, null, null);
INSERT INTO `entryapply` VALUES ('19', '入职申请-划水1', '结束', '划水1', 'Boss', '', '123', '人事部', '123', '3123', '男', '12', '123', '123', '123', '阔以', null, null, null);
INSERT INTO `entryapply` VALUES ('20', '入职申请-123123', '结束', '划水1', '划水1', '', '123', '人事部', '123', '123123', '女', '12', '132', '123', '123', '', null, null, null);

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
-- Table structure for expendmanager
-- ----------------------------
DROP TABLE IF EXISTS `expendmanager`;
CREATE TABLE `expendmanager` (
  `expendid` int(11) NOT NULL AUTO_INCREMENT,
  `expenddate` varchar(255) DEFAULT NULL,
  `expendtype` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `capitalMoney` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `registrant` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `opposite` varchar(255) DEFAULT NULL,
  `compact` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`expendid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expendmanager
-- ----------------------------
INSERT INTO `expendmanager` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null);
INSERT INTO `expendmanager` VALUES ('2', '2018/10/23', '办公费', '1000000', '壹佰万', '银行转账', '李萌', '人事部', '123123', 'RS0001', '', '李萌', null);

-- ----------------------------
-- Table structure for gg
-- ----------------------------
DROP TABLE IF EXISTS `gg`;
CREATE TABLE `gg` (
  `ggId` int(11) NOT NULL AUTO_INCREMENT,
  `ggResponsible` varchar(255) DEFAULT NULL,
  `ggPriority` varchar(255) DEFAULT NULL,
  `ggClassify` varchar(255) DEFAULT NULL,
  `ggKeyword` varchar(255) DEFAULT NULL,
  `ggDept` int(11) DEFAULT NULL,
  `ggAccessory` varchar(255) DEFAULT NULL,
  `ggTheme` varchar(255) DEFAULT NULL,
  `ggContent` varchar(2550) DEFAULT NULL,
  `ggDate` date DEFAULT NULL,
  `ggNewdate` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ggId`),
  KEY `ggDept` (`ggDept`),
  CONSTRAINT `ggDept` FOREIGN KEY (`ggDept`) REFERENCES `dept` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gg
-- ----------------------------
INSERT INTO `gg` VALUES ('1', 's', 's', 's', 's', '2', 's', 's', 's', '2018-10-03', 's');
INSERT INTO `gg` VALUES ('2', 'a ', '0', 'aaa', 'a', '2', 'aa', 'aa', '                 [在这里输入正文，或者上传图片。如果设置一个图片的ID属性为thumb，\r\n                                                  它将成为信息发布后的缩略图。不同信息中的缩略图应该具有相等的原始宽高比]\r\n                aaa', '2018-06-23', '1');
INSERT INTO `gg` VALUES ('3', 'aaa', '0', 'aaa', 'a', '3', 'aaaa', 'aasc', '                 [在这里输入正文，或者上传图片。如果设置一个图片的ID属性为thumb，\r\n                                                  它将成为信息发布后的缩略图。不同信息中的缩略图应该具有相等的原始宽高比]\r\n                saas', '2018-10-10', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupcompany
-- ----------------------------
INSERT INTO `groupcompany` VALUES ('1', '阿尔法集团', '投资各种暴利的项目', '风投', '1', null);

-- ----------------------------
-- Table structure for income
-- ----------------------------
DROP TABLE IF EXISTS `income`;
CREATE TABLE `income` (
  `incomeid` int(11) NOT NULL AUTO_INCREMENT,
  `incomedate` varchar(255) DEFAULT NULL,
  `incometype` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `capitalMoney` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `registrant` varchar(255) DEFAULT NULL,
  `affiliatedperson` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `opposite` varchar(255) DEFAULT NULL,
  `compact` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`incomeid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of income
-- ----------------------------
INSERT INTO `income` VALUES ('1', '2016/4/12', '主营业务收入', '278000.00', '1', '1', '1', '1', '销售部', '长江玻璃有限公司', '1', '1', '1', '1');
INSERT INTO `income` VALUES ('2', '2016/4/12', '主营业务收入', '768000.00', '2', '2', '2', '2', '销售部', '北京翰皇伟业集团有限公司 ', '2', '2', '2', '2');
INSERT INTO `income` VALUES ('5', '2018/10/22', '主营业务收入', '1000000', '壹佰万', '银行转账', '李萌', '李萌', '人事部', '阿尔法有限公司', 'RS0001', 'w', null, null);
INSERT INTO `income` VALUES ('6', '2018/10/22', '主营业务收入', '100000', '十万', '现金', '李萌', '666', '技术部', '陈某某有限公司', 'Rs0002', '', null, null);
INSERT INTO `income` VALUES ('7', '2018/10/22', '主营业务收入', '600000000', '六亿', '银行转账', '李萌', '李萌', '人事部', '某某某集团', 'MMJT', '', null, null);
INSERT INTO `income` VALUES ('8', '2018/10/22', '主营业务收入', '300000', '三十万', '银行转账', '李萌', '李萌', '人事部', '', '', '', null, null);
INSERT INTO `income` VALUES ('9', '2018/10/22', '主营业务收入', '6000000', '六十万', '银行转账', '李萌', '李萌', '人事部', '666', '', '', null, null);
INSERT INTO `income` VALUES ('10', '2018/10/22', '主营业务收入', '11111', '11', '银行转账', '李萌', '李萌', '人事部', '1111', '', '', null, null);
INSERT INTO `income` VALUES ('11', '2018/10/22', '主营业务收入', '11111', '11111', '银行转账', '李萌', '李萌', '人事部', '111', '', '', null, null);
INSERT INTO `income` VALUES ('12', '2018/10/22', '主营业务收入', '123123', '零', '银行转账', '李萌', '李萌', '人事部', '123123', '', '123123', null, null);
INSERT INTO `income` VALUES ('13', '2018/10/22', '利息收入', '123123', '零', '银行转账', '李萌', '李萌', '人事部', '123', '', '123', null, null);
INSERT INTO `income` VALUES ('14', '2018/10/22', '投资收益', '123213', '132123', '银行转账', '李萌', '李萌', '人事部', '123123', '', '123123', null, null);
INSERT INTO `income` VALUES ('15', '2018/10/22', '其他业务收入', '123123', '零', '银行转账', '李萌', '李萌', '人事部', '123123', '', '', null, null);
INSERT INTO `income` VALUES ('16', '2018/10/22', '主营业务收入', '123123', '123123', '银行转账', '李萌', '李萌', '人事部', '123123', '', '', null, null);

-- ----------------------------
-- Table structure for itinfor
-- ----------------------------
DROP TABLE IF EXISTS `itinfor`;
CREATE TABLE `itinfor` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `itemsort` varchar(255) DEFAULT NULL,
  `itemnumber` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `planstarttime` varchar(255) DEFAULT NULL,
  `planendtime` varchar(255) DEFAULT NULL,
  `clientid` int(11) DEFAULT NULL,
  `contractid` int(11) DEFAULT NULL,
  `itemperson` varchar(255) DEFAULT NULL,
  `ittelephone` varchar(255) DEFAULT NULL,
  `itmobilephone` varchar(255) DEFAULT NULL,
  `itemqq` varchar(255) DEFAULT NULL,
  `estimateworkload` varchar(255) DEFAULT NULL,
  `estimatecost` varchar(255) DEFAULT NULL,
  `demandtarget` varchar(255) DEFAULT NULL,
  `detailid` int(11) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `itworkplan` varchar(255) DEFAULT NULL,
  `itsum` varchar(255) DEFAULT NULL,
  `itstate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fkh_clientid` (`clientid`),
  KEY `fkh_contractid` (`contractid`),
  KEY `fkh_detailid` (`detailid`),
  CONSTRAINT `fkh_clientid` FOREIGN KEY (`clientid`) REFERENCES `client` (`clientid`),
  CONSTRAINT `fkh_contractid` FOREIGN KEY (`contractid`) REFERENCES `contract` (`contractid`),
  CONSTRAINT `fkh_detailid` FOREIGN KEY (`detailid`) REFERENCES `userdetail` (`detailId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itinfor
-- ----------------------------
INSERT INTO `itinfor` VALUES ('1', 'oa', '自动化', '001', '营销部', '2018/10/25', '2019/01/15', '7', '9', '小呆', '8998999', '13698742659', '136852479', '0', '100000', '<script src=\"../../assets/js/jquery-2.0.3.min.js\"></script>', '1', null, null, null, '0');

-- ----------------------------
-- Table structure for krar
-- ----------------------------
DROP TABLE IF EXISTS `krar`;
CREATE TABLE `krar` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` varchar(255) DEFAULT NULL,
  `letname` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`kid`),
  KEY `Fk-pids` (`pid`),
  KEY `fk-tids` (`tid`),
  KEY `fk-rids` (`rid`),
  CONSTRAINT `Fk-pids` FOREIGN KEY (`pid`) REFERENCES `plan` (`pid`),
  CONSTRAINT `fk-rids` FOREIGN KEY (`rid`) REFERENCES `report` (`rid`),
  CONSTRAINT `fk-tids` FOREIGN KEY (`tid`) REFERENCES `task` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of krar
-- ----------------------------
INSERT INTO `krar` VALUES ('26', '7', null, null, '7', null);
INSERT INTO `krar` VALUES ('27', '1', null, null, '8', null);
INSERT INTO `krar` VALUES ('28', '1', null, null, null, '2');
INSERT INTO `krar` VALUES ('29', '3', null, null, null, '3');
INSERT INTO `krar` VALUES ('37', '1', null, null, null, '11');
INSERT INTO `krar` VALUES ('38', '划水1', null, null, null, '12');
INSERT INTO `krar` VALUES ('39', '2', '1', '30', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveapply
-- ----------------------------
INSERT INTO `leaveapply` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `leaveapply` VALUES ('2', '请休假申请-admin', '填单', '划水1', '何超奇', '技术部', '2018/10/21', '2018/10/21', '调休', '心累0.0', '2018/10/19晚、2018/10/18晚', '2018/10/22');

-- ----------------------------
-- Table structure for leave_resource
-- ----------------------------
DROP TABLE IF EXISTS `leave_resource`;
CREATE TABLE `leave_resource` (
  `leaveId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `createPeople` varchar(255) DEFAULT NULL,
  `ResourceURL` varchar(255) DEFAULT NULL,
  `uploadDate` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`leaveId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_resource
-- ----------------------------
INSERT INTO `leave_resource` VALUES ('3', '调休资源20181020-20181027', '何超奇', 'aac9506e-b802-423a-bdae-6fbebaf77cba.xls', '2018/10/20', '20181015-20181021调休资源表', '');
INSERT INTO `leave_resource` VALUES ('4', '调休资源20181020-20181027', '何超奇', '2e11dff2-156c-4026-a733-c9a9fe4929dc.xls', '2018/10/20', '20181015-20181021调休资源表', null);

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
INSERT INTO `official` VALUES ('1', '转正申请', '1', '划水1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '驳回');
INSERT INTO `official` VALUES ('2', '转正申请', null, null, null, null, null, null, null, null, null, null, null, '结束');
INSERT INTO `official` VALUES ('3', '转正申请-李萌-1002026', null, 'Boss', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', '1998/07/10', null, '1998/07/10', '1998/07/10', null, '结束');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of overtime
-- ----------------------------
INSERT INTO `overtime` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `overtime` VALUES ('3', '加班申请-李萌-1002015', null, null, '李萌', '技术部', '2018/10/19', '2018/10/19', '2018/10/19', '加班打代码', '0.5', null, null);

-- ----------------------------
-- Table structure for perform
-- ----------------------------
DROP TABLE IF EXISTS `perform`;
CREATE TABLE `perform` (
  `plid` int(11) NOT NULL AUTO_INCREMENT,
  `plname` varchar(255) NOT NULL,
  `plperform` varchar(255) NOT NULL,
  `performdate` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `fk-pid` (`pid`),
  CONSTRAINT `fk-pid` FOREIGN KEY (`pid`) REFERENCES `plan` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of perform
-- ----------------------------
INSERT INTO `perform` VALUES ('43', 'item', '孙某某', '', '24');
INSERT INTO `perform` VALUES ('44', '', '', '', '24');
INSERT INTO `perform` VALUES ('45', '', '', '', '24');
INSERT INTO `perform` VALUES ('46', '', '', '', '25');
INSERT INTO `perform` VALUES ('47', '', '', '', '25');
INSERT INTO `perform` VALUES ('48', '', '', '', '25');
INSERT INTO `perform` VALUES ('49', '', '', '', '26');
INSERT INTO `perform` VALUES ('50', '', '', '', '26');
INSERT INTO `perform` VALUES ('51', '', '', '', '26');
INSERT INTO `perform` VALUES ('52', '', '', '', '27');
INSERT INTO `perform` VALUES ('53', '', '', '', '27');
INSERT INTO `perform` VALUES ('54', '', '', '', '27');
INSERT INTO `perform` VALUES ('55', '', '', '', '29');
INSERT INTO `perform` VALUES ('56', '', '', '', '29');
INSERT INTO `perform` VALUES ('57', '', '', '', '29');
INSERT INTO `perform` VALUES ('58', '111', '1', '1', '30');
INSERT INTO `perform` VALUES ('59', '1', '1', '1', '30');
INSERT INTO `perform` VALUES ('60', '1', '1', '1', '30');

-- ----------------------------
-- Table structure for performance
-- ----------------------------
DROP TABLE IF EXISTS `performance`;
CREATE TABLE `performance` (
  `performanceID` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `dutypeople` varchar(255) DEFAULT NULL,
  `applypeople` varchar(255) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `field10` varchar(255) DEFAULT NULL,
  `field11` varchar(255) DEFAULT NULL,
  `field12` varchar(255) DEFAULT NULL,
  `field13` varchar(255) DEFAULT NULL,
  `field14` varchar(255) DEFAULT NULL,
  `field15` varchar(255) DEFAULT NULL,
  `field16` varchar(255) DEFAULT NULL,
  `field17` varchar(255) DEFAULT NULL,
  `field18` varchar(255) DEFAULT NULL,
  `field19` varchar(255) DEFAULT NULL,
  `field20` varchar(255) DEFAULT NULL,
  `myremark` varchar(255) DEFAULT NULL,
  `superremark` varchar(255) DEFAULT NULL,
  `personnelremark` varchar(255) DEFAULT NULL,
  `superresult` varchar(255) DEFAULT NULL,
  `personnelresult` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`performanceID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of performance
-- ----------------------------
INSERT INTO `performance` VALUES ('1', null, null, '李萌', '开发一部', '程序员', '考核', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2018年10月绩效考核单-李萌', '自我感觉良好', null, null, null, null);

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `deptId` int(11) DEFAULT NULL,
  `ksdate` varchar(255) DEFAULT NULL,
  `jsdate` varchar(255) DEFAULT NULL,
  `detailld` int(100) DEFAULT NULL,
  `planname` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `fk-deptid` (`deptId`),
  KEY `fk-detailld` (`detailld`),
  CONSTRAINT `fk-deptid` FOREIGN KEY (`deptId`) REFERENCES `dept` (`deptId`),
  CONSTRAINT `fk-detailld` FOREIGN KEY (`detailld`) REFERENCES `userdetail` (`detailId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES ('24', '2018年工作计划', '1', '2018/10/23', '2018/10/23', '2', '--请选择--', '年度');
INSERT INTO `plan` VALUES ('25', '请输入计划标题', '1', '111', '2018/10/23', '1', '24', '年度');
INSERT INTO `plan` VALUES ('26', '1', '1', '111', '2018/10/23', '1', '25', '年度');
INSERT INTO `plan` VALUES ('27', '请输入计划标题', '2', '2018/10/23', '2018/10/23', '1', '24', '年度');
INSERT INTO `plan` VALUES ('29', '请输入计划标题', '2', '2018/10/23', '2018/10/23', '1', '0', '年度');
INSERT INTO `plan` VALUES ('30', 'test', '1', '2018/10/23', '2018/10/23', '1', '0', '其他');

-- ----------------------------
-- Table structure for planing
-- ----------------------------
DROP TABLE IF EXISTS `planing`;
CREATE TABLE `planing` (
  `planid` int(11) NOT NULL,
  `planingname` varchar(255) NOT NULL,
  PRIMARY KEY (`planid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of planing
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `describes` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `kf_deptid` (`deptid`),
  CONSTRAINT `kf_deptid` FOREIGN KEY (`deptid`) REFERENCES `dept` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('0', '上帝', '', null, '2');
INSERT INTO `post` VALUES ('1', '人事主管', '', '1000', '1');
INSERT INTO `post` VALUES ('2', '人事专员', '', '1001', '1');
INSERT INTO `post` VALUES ('3', '招聘专员', '', '1004', '1');
INSERT INTO `post` VALUES ('4', '行政专员', '', '1004', '1');
INSERT INTO `post` VALUES ('5', '总经理', '', null, '2');
INSERT INTO `post` VALUES ('6', '副经理', '', null, '2');
INSERT INTO `post` VALUES ('7', '秘书', '', null, '2');
INSERT INTO `post` VALUES ('8', '助理', '', null, '2');
INSERT INTO `post` VALUES ('9', '财务主管', '', null, '3');
INSERT INTO `post` VALUES ('10', '出纳', '', null, '3');
INSERT INTO `post` VALUES ('11', '会计', '', null, '3');
INSERT INTO `post` VALUES ('12', '技术主管', '', null, '4');
INSERT INTO `post` VALUES ('13', '技术员', '', null, '4');
INSERT INTO `post` VALUES ('14', '营销主管', '', null, '5');
INSERT INTO `post` VALUES ('15', '销售员', '', null, '5');

-- ----------------------------
-- Table structure for posttwomodile
-- ----------------------------
DROP TABLE IF EXISTS `posttwomodile`;
CREATE TABLE `posttwomodile` (
  `pid` int(11) DEFAULT NULL,
  `mTwoid` int(11) DEFAULT NULL,
  KEY `kf_mtid` (`mTwoid`),
  KEY `kf_pidMs` (`pid`),
  CONSTRAINT `kf_mtid` FOREIGN KEY (`mTwoid`) REFERENCES `visittwomodile` (`mTowId`),
  CONSTRAINT `kf_pidMs` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posttwomodile
-- ----------------------------
INSERT INTO `posttwomodile` VALUES ('1', '1');
INSERT INTO `posttwomodile` VALUES ('2', '1');
INSERT INTO `posttwomodile` VALUES ('2', '3');
INSERT INTO `posttwomodile` VALUES (null, '2');
INSERT INTO `posttwomodile` VALUES (null, '2');
INSERT INTO `posttwomodile` VALUES (null, '2');
INSERT INTO `posttwomodile` VALUES (null, '5');
INSERT INTO `posttwomodile` VALUES (null, '6');
INSERT INTO `posttwomodile` VALUES ('1', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='招聘申请表';

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2018/10/21', '结束', '1');
INSERT INTO `recruit` VALUES ('22', '划水1', '2018/10/20', '销售部', '销售经理', '1', '没有经理好蓝瘦', '审批本部门大小事务', '日语', '小店', '20', '女', '专科以上', '不限', '不限', '2018/10/21', '领导审批', '招聘申请-李萌-1002008');
INSERT INTO `recruit` VALUES ('23', '划水1', '', '', '', '', '', '', '', '', '', null, '', '', '', '2018/10/21', '结束', '招聘申请-李萌-1002008');
INSERT INTO `recruit` VALUES ('24', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, '2018/10/21', '领导审批', '1');
INSERT INTO `recruit` VALUES ('36', '划水1', '2018/10/22', '人事部', '程序员', '100', '赶项目进度', '打代码打代码', '不限', '新乡职业技术学院', '不限', '2', '不限', '不限', '不限', '2018/10/21', '结束', '招聘申请-admin');
INSERT INTO `recruit` VALUES ('37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '填单', '2');
INSERT INTO `recruit` VALUES ('38', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '结束', '3');
INSERT INTO `recruit` VALUES ('39', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '结束', '4');
INSERT INTO `recruit` VALUES ('40', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '结束', '5');
INSERT INTO `recruit` VALUES ('41', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '驳回', '6');
INSERT INTO `recruit` VALUES ('42', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '驳回', '7');
INSERT INTO `recruit` VALUES ('43', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '结束', '10');
INSERT INTO `recruit` VALUES ('44', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '结束', '9');
INSERT INTO `recruit` VALUES ('45', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '领导审批', '8');
INSERT INTO `recruit` VALUES ('46', '划水1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '领导审批', '1');
INSERT INTO `recruit` VALUES ('48', '划水1', '2018/10/27', '人事部', '开发人员', '10', 'OA办公自动化系统', '打代码', '不限', '新乡职业技术学院', '20', '2', '不限', '不限', '2年java开发经验', '2018/10/26', '结束', '招聘申请-划水1');
INSERT INTO `recruit` VALUES ('49', 'Boss', '2018-10-28', '人事部', '开发', '5', '打代码', 'OA办公自动化', '不限', '新乡职业技术学院', '20', '女', '不限', '不限', '无', '2018/10/27', '结束', '招聘申请-陈某某');
INSERT INTO `recruit` VALUES ('50', 'Boss', '', '人事部', '', '', '', '', '', '', '', '2', '', '', '', '2018/10/27', '结束', '招聘申请-王某某');
INSERT INTO `recruit` VALUES ('51', '123', '', '人事部', '', '', '', '', '', '', '', '2', '', '', '', '2018/10/27', '填单', '招聘申请-划水1');
INSERT INTO `recruit` VALUES ('52', '划水1', '123', '人事部', '1', '123', '132', '123', '123', '', '123', '2', '123', '', '123', '2018/10/28', '领导审批', '招聘申请-划水1');
INSERT INTO `recruit` VALUES ('53', '666', '2332132', '人事部', '23112', '153121', '', '', '', '', '', '2', '', '', '', '2018/10/28', '领导审批', '招聘申请-划水1');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL,
  `rlname` varchar(255) DEFAULT NULL,
  `rtype` varchar(255) DEFAULT NULL,
  `detailld` int(11) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `creationdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `fk-dept` (`deptid`),
  KEY `fk-userdetaillds` (`detailld`),
  CONSTRAINT `fk-dept` FOREIGN KEY (`deptid`) REFERENCES `dept` (`deptId`),
  CONSTRAINT `fk-userdetaillds` FOREIGN KEY (`detailld`) REFERENCES `userdetail` (`detailId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('2', '宝盖', '24', '年度', '1', '2', '2018/07/10');
INSERT INTO `report` VALUES ('3', 'www', '24', '月度', '1', '1', '2018/10/10');
INSERT INTO `report` VALUES ('11', '2018工作报告', '24', '其他', '1', '1', '2018/10/10');
INSERT INTO `report` VALUES ('12', 'Boss的工作报告2018', '25', '其他', '7', '2', '2018/10/10');

-- ----------------------------
-- Table structure for reportser
-- ----------------------------
DROP TABLE IF EXISTS `reportser`;
CREATE TABLE `reportser` (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `renames` varchar(255) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`reid`),
  KEY `fk-repoct` (`rid`),
  CONSTRAINT `fk-repoct` FOREIGN KEY (`rid`) REFERENCES `report` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reportser
-- ----------------------------
INSERT INTO `reportser` VALUES ('2', '完成销售额500万元', '11');
INSERT INTO `reportser` VALUES ('3', '客户满意度达到80%', '11');
INSERT INTO `reportser` VALUES ('4', '完成销售额500万元', '11');
INSERT INTO `reportser` VALUES ('5', '完成销售额500万元', '12');
INSERT INTO `reportser` VALUES ('6', '客户满意度达到80%', '12');
INSERT INTO `reportser` VALUES ('7', '完成销售额500万元', '12');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subcompany
-- ----------------------------
INSERT INTO `subcompany` VALUES ('2', '科技公司', '去去去', '其味无穷', '1', '1');
INSERT INTO `subcompany` VALUES ('3', '工程公司', '工程', '工程', '1', '1');
INSERT INTO `subcompany` VALUES ('4', '现代事务所', '公司事务', '规划', '1', '1');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL,
  `ksdeta` varchar(255) DEFAULT NULL,
  `workload` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `detailld` int(11) DEFAULT NULL,
  `rwsm` varchar(255) DEFAULT NULL,
  `zxjg` varchar(255) DEFAULT NULL,
  `rwfl` varchar(255) DEFAULT NULL,
  `jsdeta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `fk-deptids` (`deptid`),
  KEY `fk-userdetail` (`detailld`),
  CONSTRAINT `fk-deptids` FOREIGN KEY (`deptid`) REFERENCES `dept` (`deptId`),
  CONSTRAINT `fk-userdetail` FOREIGN KEY (`detailld`) REFERENCES `userdetail` (`detailId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('7', '', '2018/10/10', '10', '2', '1', '打代码', null, '常规', '2018/10/10');
INSERT INTO `task` VALUES ('8', '123123', '2018/10/10', '123', '2', '1', '123', null, '行政', '21');

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
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transferId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transfer
-- ----------------------------
INSERT INTO `transfer` VALUES ('1', '岗位调动', '填单', '1', '1', '1', '营销部', '1', '1', '1', '1', '1', '1', '1', null, null);
INSERT INTO `transfer` VALUES ('4', '岗位调动申请-李萌-1002028', '填单', null, '张三', '1998/07/10', '营销部', '技术部', '销售员', 'java高级开发', '学会了java', '晋升', 'nice', '666', null, null);
INSERT INTO `transfer` VALUES ('5', '岗位调动申请-邢某某', '结束', '邢某某', '汪汪汪', '1998/07/10', '人事部', '总经办', '121213', '42112', '121321', '晋升', '123', '123', null, null);
INSERT INTO `transfer` VALUES ('6', '岗位调动申请-划水1', '新主管审批', '划水1', '陈某某', '213231', '人事部', '营销部', '2123', '1212312', '231213', '正式调动', '13', '123', '123213', '213132');
INSERT INTO `transfer` VALUES ('7', '岗位调动申请-划水1', '新主管审批', '划水1', '划水1', '231', '123', '123', '12', '123', '213', '晋升', '123', '213', '123', '231');
INSERT INTO `transfer` VALUES ('8', '岗位调动申请-划水1', '结束', '划水1', '孙某某', '2018/10/21', '人事部', '技术部', '开发岗', '开发岗', '技术太菜！', '正式调动', '没问题', '欢迎欢迎', '', '');

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
  `file` varchar(255) DEFAULT NULL,
  `unum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`detailId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户详情表';

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES ('1', '女', 'YX0001', '2018-10-13', '025-84858968', '025-84858968', 'limeng123@139.com', '1990/9/12', '2015/5/7', '超级管理员', '11', '河南', '汉', '共青团员', '未婚', '450829199009120323', '北京市通州区凤凰熙岸04栋3204', '清华大学', '博士', '信息工程专业', '羽毛球', '在职', '总经办', '超级管理员', '划水1', '0e8d2c18-894d-4c83-8a3e-5d6a38108ce1.jpg', '探索协同运营管理之道想');
INSERT INTO `userdetail` VALUES ('2', '男', 'RS0001', '2018/10/21', '', '123213', '', '1998/07/10', '', null, '', '', '', '', null, '', '', '', '', '', '', '试用', '人事部', '人事主管', '何某某', '01460b57e4a6fa0000012e7ed75e83.png', null);
INSERT INTO `userdetail` VALUES ('3', '男', 'CW0001', '2018/10/21', '', '', '', '', '', null, '', '', '', '', null, '', '', '', '', '', '', '临时', '财务部', '财务主管', '王某某', '01460b57e4a6fa0000012e7ed75e83.png', null);
INSERT INTO `userdetail` VALUES ('4', '男', 'CW0004', '2018/10/25', '1366666666', '410-222-169596', '849540038@qq.com', '1998/07/10', '', null, '', '', '', '', null, '', '', '', '', '', '', '在职', '营销部', '营销主管', '邢某某', '01460b57e4a6fa0000012e7ed75e83.png', null);
INSERT INTO `userdetail` VALUES ('7', '男', 'SS005', '2018/10/25', '123123', '123213', '849540038@qq.com', '1998/07/10', '', null, '', '', '', '', null, '', '', '', '', '', '', '在职', '总经办', '总经理', 'Boss', '01460b57e4a6fa0000012e7ed75e83.png', null);
INSERT INTO `userdetail` VALUES ('8', '男', 'JS008', '2018/10/28', '123123', '123213', '849540038@qq.com', '1996/07/10', '2018/10/28', null, '', '', '', '', null, '', '', '', '', '', '', '在职', '技术部', '技术主管', '李某某', '01460b57e4a6fa0000012e7ed75e83.png', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '划水1', 'admin', 'admin');
INSERT INTO `users` VALUES ('2', '何某某', '何某某', '123456');
INSERT INTO `users` VALUES ('3', '王某某', '王某某', '123456');
INSERT INTO `users` VALUES ('4', '邢某某', '邢某某', '123456');
INSERT INTO `users` VALUES ('7', 'Boss', 'Boss', '123456');
INSERT INTO `users` VALUES ('8', '李某某', '李某某', '123456');

-- ----------------------------
-- Table structure for userspost
-- ----------------------------
DROP TABLE IF EXISTS `userspost`;
CREATE TABLE `userspost` (
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  KEY `kf_pid` (`pid`),
  KEY `kf_uid` (`uid`),
  CONSTRAINT `kf_pid` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`),
  CONSTRAINT `kf_uid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userspost
-- ----------------------------
INSERT INTO `userspost` VALUES ('1', '2');
INSERT INTO `userspost` VALUES ('0', '1');
INSERT INTO `userspost` VALUES ('9', '3');
INSERT INTO `userspost` VALUES ('14', '4');
INSERT INTO `userspost` VALUES ('5', '7');
INSERT INTO `userspost` VALUES ('12', '8');

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
INSERT INTO `userstowmodile` VALUES ('8', '1');
INSERT INTO `userstowmodile` VALUES ('9', '1');
INSERT INTO `userstowmodile` VALUES ('10', '1');
INSERT INTO `userstowmodile` VALUES ('11', '1');
INSERT INTO `userstowmodile` VALUES ('12', '1');
INSERT INTO `userstowmodile` VALUES ('13', '1');
INSERT INTO `userstowmodile` VALUES ('14', '1');
INSERT INTO `userstowmodile` VALUES ('15', '1');
INSERT INTO `userstowmodile` VALUES ('16', '1');
INSERT INTO `userstowmodile` VALUES ('18', '1');
INSERT INTO `userstowmodile` VALUES ('17', '1');
INSERT INTO `userstowmodile` VALUES ('19', '1');
INSERT INTO `userstowmodile` VALUES ('20', '1');
INSERT INTO `userstowmodile` VALUES ('21', '1');
INSERT INTO `userstowmodile` VALUES ('22', '1');
INSERT INTO `userstowmodile` VALUES ('23', '1');
INSERT INTO `userstowmodile` VALUES ('24', '1');
INSERT INTO `userstowmodile` VALUES ('25', '1');
INSERT INTO `userstowmodile` VALUES ('26', '1');
INSERT INTO `userstowmodile` VALUES ('26', '7');
INSERT INTO `userstowmodile` VALUES ('26', '2');
INSERT INTO `userstowmodile` VALUES ('8', '2');
INSERT INTO `userstowmodile` VALUES ('8', '4');
INSERT INTO `userstowmodile` VALUES ('8', '3');
INSERT INTO `userstowmodile` VALUES ('26', '4');
INSERT INTO `userstowmodile` VALUES ('26', '3');
INSERT INTO `userstowmodile` VALUES ('26', '8');
INSERT INTO `userstowmodile` VALUES ('27', '1');
INSERT INTO `userstowmodile` VALUES ('19', '7');
INSERT INTO `userstowmodile` VALUES ('19', '3');
INSERT INTO `userstowmodile` VALUES ('19', '4');
INSERT INTO `userstowmodile` VALUES ('19', '2');
INSERT INTO `userstowmodile` VALUES ('19', '8');
INSERT INTO `userstowmodile` VALUES ('27', '2');
INSERT INTO `userstowmodile` VALUES ('27', '3');
INSERT INTO `userstowmodile` VALUES ('27', '4');
INSERT INTO `userstowmodile` VALUES ('27', '7');
INSERT INTO `userstowmodile` VALUES ('27', '8');
INSERT INTO `userstowmodile` VALUES ('28', '1');
INSERT INTO `userstowmodile` VALUES ('29', '1');
INSERT INTO `userstowmodile` VALUES ('30', '1');
INSERT INTO `userstowmodile` VALUES ('28', '3');
INSERT INTO `userstowmodile` VALUES ('28', '7');
INSERT INTO `userstowmodile` VALUES ('6', '2');
INSERT INTO `userstowmodile` VALUES ('6', '3');
INSERT INTO `userstowmodile` VALUES ('6', '4');
INSERT INTO `userstowmodile` VALUES ('6', '7');
INSERT INTO `userstowmodile` VALUES ('6', '8');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='一级访问模块';

-- ----------------------------
-- Records of visitonemodile
-- ----------------------------
INSERT INTO `visitonemodile` VALUES ('1', '系统设置', '设置系统的一些权限', '10011', '../upload/setting.png');
INSERT INTO `visitonemodile` VALUES ('3', '我的事务', '事务管理', '10001', '../upload/.pngc8a48f5c-3627-4abc-a93b-b872b5dc0c20.png');
INSERT INTO `visitonemodile` VALUES ('6', '客户关系', '都是老板', '10003', '../upload/.68c5d6ee-c3e6-4405-933f-feddc9a5428e.png');
INSERT INTO `visitonemodile` VALUES ('7', '人力资源', '人力资源', '10004', '../upload/.334ae921-3e63-4b1c-9757-40510b4ef24c.png');
INSERT INTO `visitonemodile` VALUES ('8', '财务中心', '财务财务！！', '10005', '../upload/ee6abb57-b7e2-43fd-9813-f0d4cc52bfe7.png');
INSERT INTO `visitonemodile` VALUES ('9', '我的桌面', 'MyHome', '1000', '../upload/25fa3c4d-ca43-4e18-af15-523e844620d4.png');
INSERT INTO `visitonemodile` VALUES ('10', '目标管理', '目标管理', '1005', '../upload/be63ee9d-46ca-4a83-8c54-6093f5e82c22.png');
INSERT INTO `visitonemodile` VALUES ('11', '信息中心', '信息中心', '1010', '../upload/214bf3d3-cc26-48ef-901d-66045819b402.png');
INSERT INTO `visitonemodile` VALUES ('12', '客户关系', '客户关系', '1015', '../upload/dc94db44-509b-4529-865b-529e64e42785.png');
INSERT INTO `visitonemodile` VALUES ('13', '人事审批', '人事审批', '1', '../upload/4ced81bc-90ba-4e6b-a856-59db1ef87220.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='二级模块';

-- ----------------------------
-- Records of visittwomodile
-- ----------------------------
INSERT INTO `visittwomodile` VALUES ('1', '权限管理', '../BackJsp/LDL/authorityManagement.jsp', '权限', '1', '1');
INSERT INTO `visittwomodile` VALUES ('2', '组织架构', '/sdsaf', '管理各个分公司', '1', '1');
INSERT INTO `visittwomodile` VALUES ('3', '组织机构', '../BackJsp/LDL/organization.jsp', '管理公司的结构', '1', '1');
INSERT INTO `visittwomodile` VALUES ('5', '岗位角色', '../BackJsp/LDL/post.jsp', '各个岗位的用户', '1', '1');
INSERT INTO `visittwomodile` VALUES ('6', '我的人事', 'userdetail/getUserdetail', '个人信息', '1', '7');
INSERT INTO `visittwomodile` VALUES ('7', '员工管理', '../BackJsp/hcq/staff.jsp', '员工信息管理', '1', '7');
INSERT INTO `visittwomodile` VALUES ('8', '招聘和配置', '../BackJsp/hcq/recruit.jsp', '招聘和配置', '1', '7');
INSERT INTO `visittwomodile` VALUES ('9', '考勤管理', '../BackJsp/hcq/check.jsp', '考勤管理', null, '7');
INSERT INTO `visittwomodile` VALUES ('10', '绩效管理', '../BackJsp/hcq/performance.jsp', '绩效管理', null, '7');
INSERT INTO `visittwomodile` VALUES ('11', '费用管理', '../BackJsp/hcq2/costManager.jsp', '费用管理', '1', '8');
INSERT INTO `visittwomodile` VALUES ('12', '票据管理', '../BackJsp/hcq2/BillManager.jsp', '管理支票', '1', '8');
INSERT INTO `visittwomodile` VALUES ('13', '收入管理', '../BackJsp/hcq2/Income.jsp', '收入管理', '1', '8');
INSERT INTO `visittwomodile` VALUES ('14', '我的桌面', '../BackJsp/wsq/look.jsp', 'MyHome', '1', '9');
INSERT INTO `visittwomodile` VALUES ('15', '我的工作计划', '../BackJsp/wsq/task.jsp', 'My工作计划', '1', '10');
INSERT INTO `visittwomodile` VALUES ('16', '全部工作计划', '../BackJsp/wsq/tasktwo.jsp', 'All工作计划', null, '10');
INSERT INTO `visittwomodile` VALUES ('17', '我的工作任务', '../BackJsp/wsq/gz.jsp', '我的工作任务', '1', '10');
INSERT INTO `visittwomodile` VALUES ('18', '全部工作任务', '../BackJsp/wsq/schedule.jsp', '全部工作任务', null, '10');
INSERT INTO `visittwomodile` VALUES ('19', '我的工作报告', '../BackJsp/wsq/report.jsp', '我的工作报告', '1', '10');
INSERT INTO `visittwomodile` VALUES ('20', '内部通讯录', '../BackJsp/xgp/Interior.jsp', '内部通讯类', '1', '11');
INSERT INTO `visittwomodile` VALUES ('21', '外部通讯录', '../BackJsp/xgp/External.jsp', '外部通讯录', '1', '11');
INSERT INTO `visittwomodile` VALUES ('22', '公告管理', '../BackJsp/xgp/Notice.jsp', '公告管理', null, '11');
INSERT INTO `visittwomodile` VALUES ('23', '全部客户', '../BackJsp/mh/Allcustomers.jsp', '全部客户', '1', '12');
INSERT INTO `visittwomodile` VALUES ('24', '全部合同', '../BackJsp/mh/AllContract.jsp', '全部合同', '1', '12');
INSERT INTO `visittwomodile` VALUES ('25', '支出管理', 'BackJsp/hcq2/expend.jsp', '支出管理', '1', '8');
INSERT INTO `visittwomodile` VALUES ('26', '招聘和配置', 'BackJsp/hcq/examination/recruit.jsp', '审批', '1', '13');
INSERT INTO `visittwomodile` VALUES ('27', '全部工作报告', 'BackJsp/wsq/reporttwo.jsp', '全部工作报告', '1', '10');
INSERT INTO `visittwomodile` VALUES ('28', '个人设置', '../BackJsp/LDL/personageSet.jsp', '设置个人信息', '1', '1');
INSERT INTO `visittwomodile` VALUES ('29', '新建事务', '../BackJsp/LDL/MyNewTransaction.jsp', '新的事务', '1', '3');
INSERT INTO `visittwomodile` VALUES ('30', '我发起的事务', '../BackJsp/LDL/Mytransaction.jsp', '看看自己的事务', '1', '3');

-- ----------------------------
-- Table structure for wb
-- ----------------------------
DROP TABLE IF EXISTS `wb`;
CREATE TABLE `wb` (
  `wbid` int(11) NOT NULL AUTO_INCREMENT,
  `wbname` varchar(255) DEFAULT NULL,
  `wbtx` varchar(255) DEFAULT NULL,
  `wbssdw` varchar(255) DEFAULT NULL,
  `wbphone` varchar(255) DEFAULT NULL,
  `wbphonenum` varchar(255) DEFAULT NULL,
  `wbfl` varchar(255) DEFAULT NULL,
  `wbyj` varchar(255) DEFAULT NULL,
  `wbjstx` varchar(255) DEFAULT NULL,
  `wbbz` varchar(255) DEFAULT NULL,
  `wbxb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`wbid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wb
-- ----------------------------
INSERT INTO `wb` VALUES ('1', '问问', '1', '1', '1', '1', null, null, null, null, null);
INSERT INTO `wb` VALUES ('2', '嗯嗯', '1', '1', '1', '1', null, null, null, null, null);
INSERT INTO `wb` VALUES ('3', '嗯嗯', '22 ', '问问', '问问', '我', null, null, null, null, null);
INSERT INTO `wb` VALUES ('4', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('5', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('6', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('7', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('8', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('9', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('10', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('11', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('12', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('13', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('14', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('15', '去', '去', '去', '去', '去', '去', '去', '去', '去', '男');
INSERT INTO `wb` VALUES ('16', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('17', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('18', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('19', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('20', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('21', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('22', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('23', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('24', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('25', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('26', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('27', '2', '3', '4', '5', '6', '1', '7', '8', '9', '男');
INSERT INTO `wb` VALUES ('28', '', 'ww', 'ww', 'ww', 'www', '2', 'ww', 'ww', 'ww', '男');
INSERT INTO `wb` VALUES ('29', '', 'ww', 'ww', 'ww', 'www', '2', 'ww', 'ww', 'ww', '男');
INSERT INTO `wb` VALUES ('30', '', 'ww', 'ww', 'ww', 'www', '2', 'ww', 'ww', 'ww', '男');

-- ----------------------------
-- Table structure for wd
-- ----------------------------
DROP TABLE IF EXISTS `wd`;
CREATE TABLE `wd` (
  `wdId` int(11) NOT NULL AUTO_INCREMENT,
  `wdResponsible` varchar(255) DEFAULT NULL,
  `wbPriority` varchar(255) DEFAULT NULL,
  `wdName` varchar(255) DEFAULT NULL,
  `wdVersions` varchar(255) DEFAULT NULL,
  `wdAuthor` varchar(255) DEFAULT NULL,
  `wdClassify` varchar(255) DEFAULT NULL,
  `wdKeyword` varchar(255) DEFAULT NULL,
  `wdDept` int(11) DEFAULT NULL,
  `wdAccessory` varchar(255) DEFAULT NULL,
  `wdIntro` varchar(2550) DEFAULT NULL,
  PRIMARY KEY (`wdId`),
  KEY `wdDept` (`wdDept`),
  CONSTRAINT `wdDept` FOREIGN KEY (`wdDept`) REFERENCES `dept` (`deptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd
-- ----------------------------
