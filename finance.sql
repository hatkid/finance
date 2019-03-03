/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : logistics3

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2016-12-30 10:16:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `plateNumber` varchar(20) DEFAULT NULL COMMENT '车牌',
  `vin` varchar(50) DEFAULT NULL COMMENT '车架号',
  `engineNumber` varchar(50) DEFAULT NULL COMMENT '发动机号',
  `displacement` double DEFAULT NULL COMMENT '排量',
  `ownerName` varchar(20) DEFAULT NULL COMMENT '所有人姓名',
  `onwerTel` varchar(50) DEFAULT NULL COMMENT '所有人联系方式',
  `gps` varchar(10) DEFAULT NULL COMMENT '是否有GPS',
  `tonnage` double DEFAULT NULL COMMENT '吨位',
  `carLong` double DEFAULT NULL COMMENT '车长（米）',
  `carNumber` varchar(50) DEFAULT NULL COMMENT '行驶证编号',
  `carNumberDate` date DEFAULT NULL COMMENT '年审日期',
  `insuranceCompany` varchar(50) DEFAULT NULL COMMENT '保险公司',
  `insuranceDate` date DEFAULT NULL COMMENT '到期日期',
  `creater` varchar(50) DEFAULT NULL COMMENT '创建人',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `vestInCompany` varchar(50) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '豫R00001', '1', '1', '1', '1111', '15981858972', '是', null, '1', '1111', '2016-07-27', '1', '2016-07-30', 'system', '2016-07-29 09:28:22', 'lvzhi');
INSERT INTO `car` VALUES ('2', '豫R00002', '2', '2', '2', '22', '15981858972', '是', '2', '2', '222', '2016-07-22', '2', '2016-07-15', 'system', '2016-07-29 09:29:05', 'lvzhi');

-- ----------------------------
-- Table structure for `coldchain_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `coldchain_logistics`;
CREATE TABLE `coldchain_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `legalPerson` varchar(50) DEFAULT NULL COMMENT '法人代表',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `isGradeA` tinyint(1) DEFAULT NULL COMMENT '获得A级物流企业称号',
  `logisticiaType` varchar(100) DEFAULT NULL COMMENT '冷链物流类别',
  `logisticsEmpSum` smallint(6) DEFAULT NULL COMMENT '员工总数（人）',
  `logisticianEmpNum` smallint(6) DEFAULT NULL COMMENT '员工物流师（人）',
  `storageArea` float DEFAULT NULL COMMENT '冷库面积（平方米）与温度',
  `vehiclesNumber` smallint(6) DEFAULT NULL COMMENT '冷藏运输车辆数（吨位）与温度',
  `storageAreaUtilization` float DEFAULT NULL COMMENT '冷库利用率（%）',
  `haveInformationPlatform` tinyint(1) DEFAULT NULL COMMENT '是否有信息平台',
  `haveLandDeed` tinyint(1) DEFAULT NULL COMMENT '是否有土地证',
  `areaOfLand` float DEFAULT NULL COMMENT '土地面积（亩）',
  `businessAdvantage` varchar(100) DEFAULT NULL COMMENT '经营优势',
  `businessDisadvantage` varchar(100) DEFAULT NULL COMMENT '经营短板或不足',
  `totalValueOfOutput` float DEFAULT NULL COMMENT '年总产值（万元）',
  `profitsTax` float DEFAULT NULL COMMENT '年利税（万元）',
  `valueOfOutput` float DEFAULT NULL COMMENT '2016年1-5月份产值（万元）',
  `profitsTaxFive` float DEFAULT NULL COMMENT '2016年1-5月份利税（万元）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coldchain_logistics
-- ----------------------------
INSERT INTO `coldchain_logistics` VALUES ('2', '南阳兄弟缘物流有限公司', '仲景北路与312国道交叉口', 'wer', '15166666666', 'wer@qq.j', '1', 'sdf', '34', '34', '34', '34', '34', '0', '1', '34', 'sdf', 'sdf', '34', '34', '34', '34', '2344', '112.56444050397374', '33.03849187741576');
INSERT INTO `coldchain_logistics` VALUES ('3', '南阳市诚信货物运输公司', '伏牛路溧河物流园D5', 'd', '15366666666', 'asd@q.k', null, '', null, null, null, null, null, null, null, null, '', '', null, null, null, null, '', '112.54617931568535', '32.94864405039199');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `COMPANYID` int(10) NOT NULL AUTO_INCREMENT COMMENT '公司自动ID',
  `NAME` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `TEL` varchar(50) DEFAULT NULL COMMENT '公司电话',
  `FAX` varchar(50) DEFAULT NULL COMMENT '公司传真',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `ZIP` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '公司邮件地址',
  `CONTACT` varchar(100) DEFAULT NULL COMMENT '公司联络人',
  `STATUS` char(1) NOT NULL COMMENT '状态',
  `CREATED` date NOT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `MANAGER` varchar(100) DEFAULT NULL COMMENT '公司负责人',
  `BANK` varchar(100) DEFAULT NULL COMMENT '开户行',
  `BANKACCOUNT` varchar(100) DEFAULT NULL COMMENT '银行账号',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`COMPANYID`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='公司资料表';

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('34', '话题科技责任有限公司asss', '1544', '66666666', '河南郑州', '450000', 'dyenigma@163.com', '彼岸花', 'A', '2016-04-04', '2016-06-03', 'dyenigma', '中国建设银行河南分行郑州支行', '123456', '测试公司资料', '1', '1');
INSERT INTO `company` VALUES ('35', '公司名称', '联系电话', '传真', '地址', '邮编', '电子邮箱', '联系人', 'A', '2016-04-05', '2016-04-05', '负责人', '开户行', '账号', '描述', '1', '1');
INSERT INTO `company` VALUES ('36', '公司名称2', '联系电话', '传真', '地址', '邮编', '电子邮箱', '联系人', 'A', '2016-04-05', '2016-04-05', '负责人', '开户行', '账号', '描述', '1', '1');
INSERT INTO `company` VALUES ('37', '12', '12', '12', '12', '12', '12', '12', 'I', '2016-04-05', '2016-04-05', '12', '12', '12', '12', '1', '1');
INSERT INTO `company` VALUES ('38', 'name', '1212', '111', '地址1', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('39', 'name', '1212', '111', '地址2', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('40', 'name', '1212', '111', '地址3', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('41', 'name', '1212', '111', '地址4', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('42', 'name', '1212', '111', '地址5', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('43', 'name', '1212', '111', '地址6', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('44', 'name', '1212', '111', '地址7', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('45', 'name', '1212', '111', '地址8', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('46', 'names', '1212', '111', '地址9', '131', '@@', 'lianxiren', 'A', '2016-04-04', '2016-06-03', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('47', 'name', '1212', '111', '地址10', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('48', 'name', '1212', '111', '地址11', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('49', 'name', '1212', '111', '地址12', '131', '@@', 'lianxiren', 'I', '2016-04-04', '2016-04-05', 'manager', 'yinhang', 'zhanghao', 'miaosh', '1', '1');
INSERT INTO `company` VALUES ('50', 'sadf', 'asdf', 'fads', 'asdf', 'asdf', 'adsf', 'f', 'I', '2016-04-07', '2016-04-07', 'asdf', 'adsf', 'ads', 'asdf', '1', '1');
INSERT INTO `company` VALUES ('51', '南阳', '3', '8', '2', '6', '4', '7', 'I', '2016-04-21', '2016-04-21', '1', '5', '9', '大', '1', '1');

-- ----------------------------
-- Table structure for `companyinformation`
-- ----------------------------
DROP TABLE IF EXISTS `companyinformation`;
CREATE TABLE `companyinformation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `companyName` varchar(50) NOT NULL COMMENT '公司名称',
  `companyLegalPerson` varchar(50) NOT NULL DEFAULT '' COMMENT '企业法人',
  `companyNature` varchar(50) NOT NULL COMMENT '公司性质',
  `legalPersonContact` varchar(50) NOT NULL COMMENT '法人联系方式',
  `registeredCapital` double DEFAULT NULL COMMENT '注册资本',
  `realName` varchar(10) DEFAULT NULL COMMENT '是否实名制',
  `install` varchar(10) DEFAULT NULL COMMENT '是否安装安检机',
  `qualifications` varchar(200) DEFAULT NULL COMMENT '资质',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `imageName` varchar(20) DEFAULT NULL COMMENT '营业执照图片',
  `businessScope` varchar(500) DEFAULT NULL COMMENT '经营范围',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyinformation
-- ----------------------------
INSERT INTO `companyinformation` VALUES ('94', '1', '1', '1', '15981858972', '5', '1', '1', '1', '1', '1', '1.', '1');
INSERT INTO `companyinformation` VALUES ('95', '1', '1', '1', '15981858972', '1', '0', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('97', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('98', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('99', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('100', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('101', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('103', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('104', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('105', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('106', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('107', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('108', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('109', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('110', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('111', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('112', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('113', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('114', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('115', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('116', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('117', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('118', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('119', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('120', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('121', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('122', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('123', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('124', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('125', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('126', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('127', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('128', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('129', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('130', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('131', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('132', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('133', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('134', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('135', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('136', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('137', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('138', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('139', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('140', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('141', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('142', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('143', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('144', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('145', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('146', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('147', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('148', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('149', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('150', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('151', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('152', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('153', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('154', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('155', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('156', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('157', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('158', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('159', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('160', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('161', '2', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `companyinformation` VALUES ('163', '1', '1', '1', '15878945613', '1', null, null, '1', '1', '1', null, '1');
INSERT INTO `companyinformation` VALUES ('164', '3', '3', '3', '15981858972', '3', null, null, '3', '3', '3', null, '3');
INSERT INTO `companyinformation` VALUES ('168', 'yy', 'y', 'y', '15981858972', '4', '0', '1', '', 'y', '', 'yy.png', null);
INSERT INTO `companyinformation` VALUES ('169', '9', '1', '1', '15981858972', '1', '1', '0', '1', '1', '', '1.png', null);
INSERT INTO `companyinformation` VALUES ('170', 'lvzhi5', 'lvzhi', 'lvzhi', '15981858972', '0', null, null, '3', '河南省南阳市', '', 'lvzhi5.png', null);

-- ----------------------------
-- Table structure for `forwarder_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `forwarder_logistics`;
CREATE TABLE `forwarder_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `registrationNumber` varchar(50) DEFAULT NULL COMMENT '工商部门注册号码',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `logisticsEmpSum` smallint(6) DEFAULT NULL COMMENT '员工总数（人）',
  `logisticianEmpNum` smallint(6) DEFAULT NULL COMMENT '员工物流师（人）',
  `isGradeA` tinyint(1) DEFAULT NULL COMMENT '获得A级物流企业称号',
  `haveInformationPlatform` tinyint(1) DEFAULT NULL COMMENT '是否有物流信息平台',
  `logisticiaType` varchar(100) DEFAULT NULL COMMENT '物流信息类型与范围',
  `inkedVehiclesNumber` smallint(6) DEFAULT NULL COMMENT '挂靠车辆数（台/吨位）',
  `averageCapacity` float DEFAULT NULL COMMENT '年度平均运载量（万吨）',
  `capacity` float DEFAULT NULL COMMENT '2016年1-5月运载量（万吨）',
  `transportLinks` varchar(100) DEFAULT NULL COMMENT '运输线路',
  `serviceObject` varchar(100) DEFAULT NULL COMMENT '服务对象',
  `totalValueOfOutput` float DEFAULT NULL COMMENT '年度总产值（万元）',
  `totalVariableCost` float DEFAULT NULL COMMENT '年度总成本（万元）',
  `totaFixedCost` float DEFAULT NULL COMMENT '主营业务收入（万元）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forwarder_logistics
-- ----------------------------
INSERT INTO `forwarder_logistics` VALUES ('1', '南阳龙邦物流有限公司', 'rwer', '宛城区G312(雪枫东路)汇融物流园2', '13655555555', 'wer@q.v', '23424', '234', '1', '0', 'sdfsd', '234', '234', '234', 'sdf', 'sdf', '234', '234', '234', '1369', '112.59713162731319', '32.95848538233106');
INSERT INTO `forwarder_logistics` VALUES ('2', '南阳市豫秦物流有限公司', 'sdf', '天冠大道溧河物流园', '13655555555', 'sdfs@q.k', null, null, null, null, '', null, null, null, '', '', null, null, null, '2016', '112.54617931568535', '32.94864405039199');

-- ----------------------------
-- Table structure for `garden_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `garden_logistics`;
CREATE TABLE `garden_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '园区名称',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `legalPerson` varchar(50) DEFAULT NULL COMMENT '法人代表',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `achieveDistinction` varchar(100) DEFAULT NULL COMMENT '获得荣誉',
  `gardenType` varchar(100) DEFAULT NULL COMMENT '园区类别',
  `cmpNumInGarden` smallint(6) DEFAULT NULL COMMENT '园区内企业数（个）',
  `storageArea` float DEFAULT NULL COMMENT '仓储面积（平方米）',
  `vehiclesNumber` smallint(6) DEFAULT NULL COMMENT '运输车辆数（吨位）',
  `occupancyRate` float DEFAULT NULL COMMENT '园区入住率（%）',
  `haveInformationPlatform` tinyint(1) DEFAULT NULL COMMENT '是否有信息平台',
  `haveLandDeed` tinyint(1) DEFAULT NULL COMMENT '是否有土地证',
  `areaOfLand` float DEFAULT NULL COMMENT '土地面积（亩）',
  `businessAdvantage` varchar(100) DEFAULT NULL COMMENT '经营优势',
  `businessDisadvantage` varchar(100) DEFAULT NULL COMMENT '经营短板或不足',
  `totalValueOfOutput` float DEFAULT NULL COMMENT '年总产值（万元）',
  `profitsTax` float DEFAULT NULL COMMENT '年利税（万元）',
  `valueOfOutput` float DEFAULT NULL COMMENT '2016年1-5月份产值（万元）',
  `profitsTaxFive` float DEFAULT NULL COMMENT '2016年1-5月份利税（万元）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of garden_logistics
-- ----------------------------
INSERT INTO `garden_logistics` VALUES ('2', '南阳昌顺航空货运代理有限公司', '人民北路18号', 'dfs', '13655555555', 'sdfsdf@ww.v', 'sdf', 'sdfs', '232', '23', '23', '23', '1', '0', '23', 'f', 'fsd', '23', '23', '23', '23', '2323', '115.66568808894805', '34.46240224398365');
INSERT INTO `garden_logistics` VALUES ('3', '南阳顺意物流公司', '宛城区金通达物流园', 'sd', '13655555555', 'fsdf@qq.v', '', '', null, null, null, null, null, null, null, '', '', null, null, null, null, '', '112.64039943655766', '33.023161220673888');

-- ----------------------------
-- Table structure for `manufacturing_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `manufacturing_logistics`;
CREATE TABLE `manufacturing_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `registrationNumber` varchar(50) DEFAULT NULL COMMENT '工商部门注册号码',
  `logisticsEmpSum` smallint(6) DEFAULT NULL COMMENT '从事物流作业的员工总数（人）',
  `logisticianEmpNum` smallint(6) DEFAULT NULL COMMENT '从事物流作业的物流师（人）',
  `selfRunLogisticsTotalCost` float DEFAULT NULL COMMENT '自营物流总费用（万元）（不含企业采购费和物流外包费）',
  `storageType` varchar(100) DEFAULT NULL COMMENT '类型（普仓或其他特殊仓）',
  `storageArea` float DEFAULT NULL COMMENT '面积（M2）',
  `deviceNum` smallint(6) DEFAULT NULL COMMENT '主要设备（台或套）',
  `isLogisticsOutsourcing` tinyint(1) DEFAULT NULL COMMENT '物流业务是否外包',
  `outsourcingType` varchar(100) DEFAULT NULL COMMENT '外包的业务类型',
  `outsourcingCompanyName` varchar(100) DEFAULT NULL COMMENT '外包企业名称',
  `outsourcingCost` float DEFAULT NULL COMMENT '外包费用（万元）',
  `companyType` varchar(100) DEFAULT NULL COMMENT '企业类型',
  `collaborationTime` varchar(10) DEFAULT NULL COMMENT '合作时间',
  `isRentStorage` tinyint(1) DEFAULT NULL COMMENT '是否在外租仓',
  `rentStorageArea` float DEFAULT NULL COMMENT '外租仓储面积',
  `logisticsType` varchar(100) DEFAULT NULL COMMENT '仓储类型',
  `rentStorageCost` float DEFAULT NULL COMMENT '年租金（万元）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manufacturing_logistics
-- ----------------------------
INSERT INTO `manufacturing_logistics` VALUES ('1', '南阳市光彩金象货运', '张衡西路光彩市场正北门向西20米', '13666666666', 'sdf@qq.cn', 'sdf', null, null, null, '', null, null, null, '', '', null, '', '2015-12-27', null, null, '', null, '', '112.51833910408286', '33.029469705628908');
INSERT INTO `manufacturing_logistics` VALUES ('3', '南阳恒祥汽车运输有限公司', '北京大道与312国道交叉口向西2公里路南', '13666666666', 'sdf@qq.cn', 'sdf', null, null, null, '', null, null, null, '', '', null, '', '2016-06-17', null, null, '', null, null, '115.97004970067823', '28.42072053850174');
INSERT INTO `manufacturing_logistics` VALUES ('8', '南阳联通物流货运有限公司', '312国道汇融物流园', '13666666666', 'sdf@q.com', 'sdf', '32', '234', '234', 'sefsd', '234', '234', '1', 'sdff', 'sdf', '3423', 'sdf', '2016-06-08', '0', '4324', 'sdfsdf', '23423', '2016', '112.55935661849938', '33.039148316395607');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `message_log`
-- ----------------------------
DROP TABLE IF EXISTS `message_log`;
CREATE TABLE `message_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` varchar(50) DEFAULT NULL COMMENT '接收人',
  `sender` varchar(50) DEFAULT NULL COMMENT '发送人',
  `sendTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发送时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '0未发送，1发送成功',
  `msgId` int(11) DEFAULT NULL COMMENT '短信id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_log
-- ----------------------------

-- ----------------------------
-- Table structure for `multipleshop_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `multipleshop_logistics`;
CREATE TABLE `multipleshop_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '快递网点名称',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `headOfficeType` varchar(100) DEFAULT NULL COMMENT '总公司类型',
  `headOfficeAddress` varchar(100) DEFAULT NULL COMMENT '总公司所在地',
  `logisticsType` varchar(100) DEFAULT NULL COMMENT '快递物流类别',
  `logisticsEmpSum` smallint(6) DEFAULT NULL COMMENT '员工总数（人）',
  `logisticianEmpNum` smallint(6) DEFAULT NULL COMMENT '员工物流师（人）',
  `storageArea` float DEFAULT NULL COMMENT '仓储面积（平方米）',
  `storageTemperature` float DEFAULT NULL COMMENT '仓储温度（摄氏度）',
  `carType` varchar(100) DEFAULT NULL COMMENT '快递运输车辆类型',
  `carNum` smallint(6) DEFAULT NULL COMMENT '快递运输车辆数量',
  `businessAdvantage` varchar(100) DEFAULT NULL COMMENT '经营优势',
  `businessDisadvantage` varchar(100) DEFAULT NULL COMMENT '经营短板或不足',
  `totalValueOfOutput` float DEFAULT NULL COMMENT '年总产值（万元）',
  `profitsTax` float DEFAULT NULL COMMENT '年利税（万元）',
  `valueOfOutput` float DEFAULT NULL COMMENT '2016年1-5月份产值（万元）',
  `profitsTaxFive` float DEFAULT NULL COMMENT '2016年1-5月份利税（万元）',
  `orderQuantity` smallint(6) DEFAULT NULL COMMENT '年度总单数（万个）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of multipleshop_logistics
-- ----------------------------
INSERT INTO `multipleshop_logistics` VALUES ('1', '南阳万通运输有限责任公司', 'G312七里园汇融物流', 'zxc', '13655555555', 'zxc@f.l', 'dsfsdf', 'sdf', 'sdf', '34', '34', '34', '34', 'sdf', '34', 'sdf', 'sd', '34', '3', '34', '434', '34', '2015', '112.55935661849938', '33.039148316395607');
INSERT INTO `multipleshop_logistics` VALUES ('3', '河南南阳市杰达运输有限责任公司', '312国道新港物流园C区', 'asdfa', '13666666665', 'sdfasd@q.j', 'xxxxx', '', '', null, null, null, null, '', null, '', '', null, null, null, null, null, '', '121.26339109106293', '30.330206612212725');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` mediumtext COMMENT '内容',
  `createBy` varchar(50) DEFAULT NULL COMMENT '创建人',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `vestInCompany` varchar(200) DEFAULT NULL COMMENT '所属公司',
  `myid` varchar(1) DEFAULT NULL COMMENT '区分是否是政府机构的用户，如果是，则是A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('2', ' 国家电网公司2016年年中工作会议召开-2-2', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('3', ' 国家电网公司2016年年中工作会议召开-3-3', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('4', ' 国家电网公司2016年年中工作会议召开-4', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('5', ' 国家电网公司2016年年中工作会议召开-5-5', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('6', ' 国家电网公司2016年年中工作会议召开-6-6', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('7', ' 国家电网公司2016年年中工作会议召开-7', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('8', ' 国家电网公司2016年年中工作会议召开-8', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('9', ' 国家电网公司2016年年中工作会议召开-9', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('10', ' 国家电网公司2016年年中工作会议召开-10', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('11', ' 国家电网公司2016年年中工作会议召开-11', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('12', ' 国家电网公司2016年年中工作会议召开-12', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('13', ' 国家电网公司2016年年中工作会议召开-13', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('14', ' 国家电网公司2016年年中工作会议召开-14', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('15', ' 国家电网公司2016年年中工作会议召开-15', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('16', ' 国家电网公司2016年年中工作会议召开-16', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('17', ' 国家电网公司2016年年中工作会议召开-17', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('18', ' 国家电网公司2016年年中工作会议召开-18', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('19', ' 国家电网公司2016年年中工作会议召开-19', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('20', ' 国家电网公司2016年年中工作会议召开-20', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('21', ' 国家电网公司2016年年中工作会议召开-21', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('22', ' 国家电网公司2016年年中工作会议召开-22', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('23', ' 国家电网公司2016年年中工作会议召开-23', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('24', ' 国家电网公司2016年年中工作会议召开-24', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('25', ' 国家电网公司2016年年中工作会议召开-25', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('26', ' 国家电网公司2016年年中工作会议召开-26', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('27', ' 国家电网公司2016年年中工作会议召开-27', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('28', ' 国家电网公司2016年年中工作会议召开-28', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('29', ' 国家电网公司2016年年中工作会议召开-29', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('30', ' 国家电网公司2016年年中工作会议召开-30', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('31', ' 国家电网公司2016年年中工作会议召开-31', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('32', ' 国家电网公司2016年年中工作会议召开-32', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('33', ' 国家电网公司2016年年中工作会议召开-33', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('34', ' 国家电网公司2016年年中工作会议召开-34', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('35', ' 国家电网公司2016年年中工作会议召开-35', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('36', ' 国家电网公司2016年年中工作会议召开-36', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', null);
INSERT INTO `notice` VALUES ('37', ' 国家电网公司2016年年中工作会议召开-37', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('38', ' 国家电网公司2016年年中工作会议召开-38', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('39', ' 国家电网公司2016年年中工作会议召开-39', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('40', ' 国家电网公司2016年年中工作会议召开-40', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('41', ' 国家电网公司2016年年中工作会议召开-41', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('42', ' 国家电网公司2016年年中工作会议召开-42', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('43', ' 国家电网公司2016年年中工作会议召开-43', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('44', ' 国家电网公司2016年年中工作会议召开-44', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('45', ' 国家电网公司2016年年中工作会议召开-45', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('46', ' 国家电网公司2016年年中工作会议召开-46', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('47', ' 国家电网公司2016年年中工作会议召开-47', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('48', ' 国家电网公司2016年年中工作会议召开-48', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('49', ' 国家电网公司2016年年中工作会议召开-49', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('50', ' 国家电网公司2016年年中工作会议召开-50', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('51', ' 国家电网公司2016年年中工作会议召开-51', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('52', ' 国家电网公司2016年年中工作会议召开-52', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('53', ' 国家电网公司2016年年中工作会议召开-53', '7月18日，国家电网公司2016年年中工作会议在京召开。会议认真贯彻党中央、国务院决策部署，落实公司三届一次职代会暨2016年工作会议精神，总结上半年工作，安排下半年任务，分析形势，明确目标，改革创新，奋力攻坚，深入推进“两个转变”，加快建设“一强三优”现代公司，确保完成全年任务，为服务经济社会发展作出积极贡献。\r\n\r\n　　公司董事长、党组书记舒印彪做工作报告。公司总经理、党组副书记寇伟主持会议。公司外部董事牛越生、王国樑、陈津恩、黄德林出席会议。全体公司领导出席会议。\r\n\r\n　　今年以来，我国经济下行压力较大，电力需求增长缓慢，公司改革发展任务艰巨，确保电网安全和优质服务面临新的挑战。在党中央、国务院的正确领导下，公司党组团结带领广大干部员工凝心聚力、攻坚克难，安全形势总体平稳，电网发展提速升级，经营管理成效显著，国际化发展不断深化，各项改革有序推进，科技创新不断强化，党的建设进一步加强，发展上有新突破、管理上有新提升、改革上有新举措，各项工作都有新成效。\r\n\r\n　　舒印彪指出，要认清形势、把握大势，更加自觉地把思想和行动统一到以习近平同志为总书记的党中央各项部署上来，坚定“一强三优”现代公司战略目标不动摇，深入推进“两个转变”不放松，一张蓝图绘到底，认真落实公司三届一次职代会暨2016年工作会议确定的各项任务，大力实施“十三五”发展规划，深化改革、强化创新、提升管理、加快发展，保持干事创业的蓬勃朝气，苦干实干、攻坚克难，推动各项工作取得新成效。\r\n\r\n　　舒印彪强调，重点把握五个方面：一要坚持安全第一，强化本质安全。全面落实各级安全责任，做好安全工作关键在人，根本要靠落实岗位安全责任；全力确保大电网安全，强化“三道防线”，优化调度和运行方式，提高电网安全防御能力；提高本质安全水平，狠抓基层、基础、基本功，实现安全可控、能控、在控。二要贯彻中央要求，深入推进改革。坚持以中发9号文件为基本遵循，推动建立公平、透明、高效的市场规则和运作机制，发挥市场在资源配置中的决定性作用；扎实做好电力改革各项工作，突出抓好输配电价改革、售电侧放开、增量配电投资业务放开等重点任务；贯彻国资国企改革要求，完善公司治理结构，压减法人层级，深化劳动、人事、分配制度改革。三要加快建设坚强智能电网，推动构建全球能源互联网。立足推进“两个替代”，大力推动电网安全发展、清洁发展、协调发展、智能发展。四要大力提质增效，促进可持续发展。千方百计开拓市场，以管理优势巩固市场，以优质服务抢占市场；从严从紧管控成本，坚持勤俭办企业、节约搞发展；促进集团协同发展，深入开展各板块、各单位经营诊断分析，补齐管理短板。五要全面从严治党，依法从严治企。落实全面从严治党责任，加强党风廉政建设；建设法治企业，严控关键领域。\r\n\r\n　　舒印彪提出，今年是“十三五”起步之年，高质量完成全年任务，对实现公司2020年发展目标至关重要。下半年工作总的要求是：深入学习贯彻习近平总书记系列重要讲话精神，落实国务院国资委中央企业负责人会议部署，按照公司三届一次职代会暨2016年工作会议安排，深入开展“两学一做”学习教育，以安全为基础，以服务为根本，以提质增效为中心，以改革创新为动力，加快电网发展、狠抓经营管理、强化队伍建设，深入推进“两个转变”，确保完成全年目标任务，实现“十三五”发展良好开局。\r\n\r\n　　会议要求重点做好八个方面的工作：确保安全生产，全面做好迎峰度夏工作，强化安全监督，加强施工分包管理，保障网络与信息安全；提升服务水平，创新服务方式，支持清洁发展，打好扶贫攻坚战；加快各级电网协调发展，全力推进特高压等重点工程，加强新一轮农网改造升级和城镇配电网建设，加快智能电网重点工程建设，提升电网建设管控能力，推动构建全球能源互联网；进一步加强经营管理，严格综合计划和预算管控，大力增供扩销，严格成本管控，加快推进新业务发展；深入落实各项改革举措，积极推进电力改革，落实国资国企改革部署，完善提升“三集五大”体系，强化集体企业规范管理；推进产业、金融、国际业务发展，提高产业核心竞争力，促进金融创新发展，实现国际业务新突破；提升科技创新能力和水平，优化科技创新体系，强化重大技术攻关，大力推进全员创新，加强信息化建设；深化“两学一做”学习教育，扎实开展两个主题活动，进一步加强队伍建设，推进和谐企业建设。\r\n\r\n　　中组部五局有关负责同志，国务院派驻公司监事会领导，公司总经理助理、总师、副总师、顾问，公司系统两院院士，特邀代表，总部各部门及各分部、各单位、各大型供电企业党政主要负责人参会。\r\n\r\n　　当天下午，与会代表就贯彻落实好工作报告精神，做好下半年工作，确保完成全年目标任务，深入交流讨论，积极建言献策。\r\n\r\n　　信息来源：《国家电网报》', 'lvzhi', '2016-07-18 00:00:00', 'lvzhi1', 'A');
INSERT INTO `notice` VALUES ('54', 'test', 'test', 'system', '2016-07-28 09:53:39', null, 'A');
INSERT INTO `notice` VALUES ('55', 'tet', 'test', 'system', '2016-07-28 14:59:48', null, null);
INSERT INTO `notice` VALUES ('56', 'testteststst', 'testststststst', 'system', '2016-07-28 15:00:10', null, 'A');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `PERMISSIONID` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限代码',
  `PID` int(11) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PNAME` varchar(100) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MYID` varchar(55) DEFAULT NULL,
  `TYPE` char(1) DEFAULT NULL COMMENT 'F:FUNCTION,O:OPERATION',
  `ISUSED` char(1) DEFAULT NULL COMMENT 'Y,N',
  `STATE` varchar(20) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL COMMENT '链接地址',
  `ICONCLS` varchar(100) DEFAULT NULL COMMENT '功能模块',
  `STATUS` char(1) NOT NULL COMMENT '状态',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `CREATED` datetime NOT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `ISDEFAULT` char(1) DEFAULT 'N' COMMENT '是否默认权限，Y是N否',
  PRIMARY KEY (`PERMISSIONID`)
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COMMENT='权限资料表';

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '0', '系统管理', '', '0', 'sysMgr', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-home', 'A', '系统管理', '2013-05-23 00:00:00', '2016-03-07 16:19:42', '1', '1', 'N');
INSERT INTO `permission` VALUES ('2', '1', '菜单管理', '系统管理', '0', 'menuMgr', 'F', 'Y', 'closed', 'manage/menu/menuMain', 'icon-setting', 'A', '菜单编辑', '2013-05-23 00:00:00', '2016-04-04 16:21:39', '1', '1', 'N');
INSERT INTO `permission` VALUES ('3', '2', '菜单新增', '系统管理', '1', 'menuAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-add', 'A', '菜单功能新增', '2013-05-24 00:00:00', '2016-03-16 09:19:06', '1', '1', 'N');
INSERT INTO `permission` VALUES ('4', '2', '菜单修改', '系统管理', '2', 'menuEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '菜单功能修改', '2013-05-24 00:00:00', '2016-03-16 09:19:12', '1', '1', 'N');
INSERT INTO `permission` VALUES ('5', '2', '菜单删除', '系统管理', '3', 'menuDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '菜单功能删除', '2013-05-24 00:00:00', '2016-03-16 09:19:19', '1', '1', 'N');
INSERT INTO `permission` VALUES ('102', '0', '前端管理', '', '1', 'webMgr', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-map', 'I', '前台页面各项设定', '2016-03-15 00:00:00', '2016-03-15 10:18:17', '1', '1', 'N');
INSERT INTO `permission` VALUES ('103', '0', '专题管理', '', '2', 'topicMgr', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-role', 'I', '各种专题项目管理', '2016-03-15 00:00:00', '2016-03-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('104', '0', '数据备份', '', '5', 'dataBak', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-db', 'I', '数据库备份各项设定', '2016-03-15 00:00:00', '2016-03-15 10:27:16', '1', '1', 'N');
INSERT INTO `permission` VALUES ('105', '0', '日志管理', '', '3', 'logMgr', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-info', 'I', '系统等各项日志管理，数据收集等', '2016-03-15 00:00:00', '2016-03-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('106', '0', '系统监控', '', '4', 'runMgr', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-power', 'A', '系统运行监控', '2016-03-15 00:00:00', '2016-03-16 09:11:37', '1', '1', 'N');
INSERT INTO `permission` VALUES ('107', '1', '用户管理', '系统管理', '3', 'userMgr', 'F', 'Y', 'closed', 'manage/users/usersMain', 'icon-user', 'A', '用户管理，用于新增、修改、删除用户信息', '2016-03-15 00:00:00', '2016-04-04 08:14:29', '1', '1', 'N');
INSERT INTO `permission` VALUES ('108', '1', '角色管理', '系统管理', '4', 'roleMgr', 'F', 'Y', 'closed', 'manage/role/roleMgr', 'icon-star', 'A', '角色管理，用于角色的增删改与权限的分配', '2016-03-15 00:00:00', '2016-04-04 08:14:40', '1', '1', 'N');
INSERT INTO `permission` VALUES ('110', '1', '用户角色', '系统管理', '5', 'setUser', 'F', 'Y', 'closed', 'manage/userRole/setRole', 'icon-woman', 'A', '用户的角色分配', '2016-03-15 00:00:00', '2016-04-04 08:14:48', '1', '1', 'N');
INSERT INTO `permission` VALUES ('111', '1', '组织管理', '系统管理', '2', 'organMgr', 'F', 'N', 'closed', 'manage/organ/organMain', 'icon-organ', 'I', '组织机构管理', '2016-03-15 00:00:00', '2016-04-04 08:14:20', '1', '1', 'N');
INSERT INTO `permission` VALUES ('113', '0', '问题反馈', '', '6', 'bugMgr', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-danger', 'I', '提交BUG，反馈处理结果等', '2016-03-15 00:00:00', '2016-04-13 14:26:32', '1', '1', 'N');
INSERT INTO `permission` VALUES ('114', '106', '运行监控', '系统监控', '1', 'dataMgr', 'F', 'Y', 'closed', 'druid', 'icon-camera', 'A', '淘宝Druid监控，包含数据源、sql、web应用、uri监控、session监控、spring监控等', '2016-03-16 00:00:00', '2016-04-04 08:18:26', '1', '1', 'N');
INSERT INTO `permission` VALUES ('115', '107', '新增用户', '用户管理', '1', 'userAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-add', 'A', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('116', '107', '用户修改', '用户管理', '2', 'userEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('117', '107', '删除用户', '用户管理', '3', 'userDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('118', '111', '新增组织', '组织管理', '1', 'organAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-add', 'I', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('119', '111', '组织编辑', '组织管理', '2', 'organEdit', 'O', 'N', 'open', 'javascript:void(0);', 'icon-edit', 'I', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('120', '111', '删除组织', '组织管理', '3', 'organDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-remove', 'I', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('121', '108', '新增角色', '角色管理', '1', 'roleAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-add', 'A', '', '2016-03-16 00:00:00', '2016-04-08 08:38:41', '1', '1', 'N');
INSERT INTO `permission` VALUES ('122', '108', '角色修改', '角色管理', '2', 'roleEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('123', '108', '删除角色', '角色管理', '3', 'roleDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('125', '110', '角色分配', '用户角色', '1', 'alltoRole', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-star', 'A', '角色分配给某个用户', '2016-03-16 00:00:00', '2016-03-16 15:36:06', '1', '1', 'N');
INSERT INTO `permission` VALUES ('126', '113', '提交问题', '问题反馈', '0', 'bugAdd', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-menu', 'I', '', '2016-03-16 00:00:00', '2016-04-14 11:24:06', '1', '1', 'N');
INSERT INTO `permission` VALUES ('127', '138', 'BUG回复', 'BUG查看', '2', 'bugReply', 'O', 'N', 'open', 'javascript:void(0);', 'icon-yes', 'I', '', '2016-03-16 00:00:00', '2016-04-13 14:27:41', '1', '1', 'N');
INSERT INTO `permission` VALUES ('128', '138', '标记无效', 'BUG查看', '3', 'bugDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-no', 'I', '', '2016-03-16 00:00:00', '2016-04-14 10:00:35', '1', '1', 'N');
INSERT INTO `permission` VALUES ('129', '104', '定时备份', '数据备份', '1', 'autoBak', 'O', 'N', 'open', 'javascript:void(0);', 'icon-save', 'I', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('130', '104', '手动备份', '数据备份', '2', 'myBak', 'O', 'N', 'open', 'javascript:void(0);', 'icon-dbadd', 'I', '', '2016-03-16 00:00:00', '2016-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('132', '1', '公司管理', '系统管理', '1', 'compMgr', 'F', 'N', 'closed', 'manage/comp/compMain', 'icon-company', 'I', '公司资料编辑', '2016-04-04 00:00:00', '2016-04-04 08:14:12', '1', '1', 'N');
INSERT INTO `permission` VALUES ('134', '132', '添加公司', '公司管理', '1', 'compAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-add', 'I', '', '2016-04-04 00:00:00', '2016-04-04 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('135', '132', '编辑资料', '公司管理', '2', 'compEdit', 'O', 'N', 'open', 'javascript:void(0);', 'icon-edit', 'I', '', '2016-04-04 00:00:00', '2016-04-04 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('136', '132', '删除公司', '公司管理', '3', 'compDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-remove', 'I', '', '2016-04-04 00:00:00', '2016-04-04 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('137', '108', '权限设定', '角色管理', '4', 'roleSave', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-save', 'A', '保存角色拥有权限的设定', '2016-04-08 00:00:00', '2016-04-08 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('138', '113', '问题列表', 'BUG管理', '1', 'bugList', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-question', 'I', '查看BUG列表', '2016-04-13 00:00:00', '2016-04-13 14:27:01', '1', '1', 'N');
INSERT INTO `permission` VALUES ('139', '1', 'test', '系统管理', '8', 'test', 'F', 'N', 'closed', 'javascript:void(0);', '', 'I', '', '2016-04-21 00:00:00', '2016-04-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('140', '0', 'test', '', '9', 'test', 'F', 'N', 'closed', 'javascript:void(0);', '', 'I', '', '2016-04-21 00:00:00', '2016-04-25 10:13:24', '1', '1', 'N');
INSERT INTO `permission` VALUES ('141', '140', 'test.child', 'test', '9', 'test.child', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-camera', 'I', '', '2016-04-21 00:00:00', '2016-04-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('142', '0', '智能家居', '', '8', 'testmenu', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-home', 'I', '智能家居', '2016-05-03 00:00:00', '2016-06-01 09:38:59', '1', '1', 'N');
INSERT INTO `permission` VALUES ('143', '142', '主机地图显示', '测试菜单', '9', 'testmenuchild', 'F', 'N', 'closed', 'manage/map/main', 'icon-search', 'I', 'test', '2016-05-03 00:00:00', '2016-06-01 11:41:48', '1', '1', 'N');
INSERT INTO `permission` VALUES ('144', '143', '新增', '测试菜单-child1', '1', 'menuAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-add', 'I', 'test add', '2016-05-03 00:00:00', '2016-05-30 08:26:16', '1', '1', 'N');
INSERT INTO `permission` VALUES ('145', '143', '修改', '测试菜单-child1', '2', 'menuEdit', 'O', 'N', 'open', 'javascript:void(0);', 'icon-edit', 'I', 'test', '2016-05-03 00:00:00', '2016-05-30 08:26:26', '1', '1', 'N');
INSERT INTO `permission` VALUES ('146', '143', '删除', '测试菜单-child1', '3', 'menuDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-danger', 'I', 'test', '2016-05-03 00:00:00', '2016-05-30 08:26:37', '1', '1', 'N');
INSERT INTO `permission` VALUES ('147', '142', '指令管理', '测试菜单', '2', 'testorder', 'F', 'N', 'closed', 'manage/orderBind/orderBindMain', 'icon-power', 'I', '', '2016-05-30 00:00:00', '2016-05-30 08:25:05', '1', '1', 'N');
INSERT INTO `permission` VALUES ('148', '147', '添加', '指令管理', '1', 'orderBindAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-home', 'I', '', '2016-05-30 00:00:00', '2016-05-30 08:31:15', '1', '1', 'N');
INSERT INTO `permission` VALUES ('149', '147', '修改', '指令管理', '2', 'orderBindEdit', 'O', 'N', 'open', 'javascript:void(0);', 'icon-save', 'I', '', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('150', '147', '删除', '指令管理', '3', 'orderBindDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-puzzle', 'I', '', '2016-05-30 00:00:00', '2016-05-30 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('151', '142', 'test2', '智能家居', '5', 'ds', 'F', 'N', 'closed', 'test/main', 'icon-power', 'I', '', '2016-06-03 00:00:00', '2016-06-04 15:54:15', '1', '1', 'N');
INSERT INTO `permission` VALUES ('152', '0', '物流管理', '', '5', 'logistics', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-company', 'A', '物流管理', '2016-06-14 00:00:00', '2016-06-25 09:54:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('153', '152', '服务型物流企业信息', '物流管理', '1', 'serviceLogistics', 'F', 'N', 'closed', 'manage/serviceLogistics/main', '', 'I', '', '2016-06-14 00:00:00', '2016-06-14 17:37:59', '1', '1', 'N');
INSERT INTO `permission` VALUES ('154', '152', '制造类物流企业信息统计', '物流管理', '2', 'manufacturingLogistics', 'F', 'N', 'closed', 'manage/manufacturingLogistics/main', '', 'I', '', '2016-06-16 00:00:00', '2016-06-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('155', '152', '仓储型物流企业信息统计', '物流管理', '3', 'storageLogistics', 'F', 'N', 'closed', 'manage/storageLogistics/main', '', 'I', '', '2016-06-18 00:00:00', '2016-06-18 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('156', '152', '运输型物流企业信息统计', '物流管理', '4', 'transportLogistics', 'F', 'N', 'closed', 'manage/transportLogistics/main', '', 'I', '', '2016-06-20 00:00:00', '2016-06-20 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('157', '152', '货代型物流企业信息统计', '物流管理', '4', 'forwarderLogistics', 'F', 'Y', 'closed', 'manage/forwarderLogistics/main', '', 'A', '', '2016-06-20 00:00:00', '2016-06-20 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('158', '152', '物流园区信息统计', '物流管理', '4', 'gardenLogistics', 'F', 'N', 'closed', 'manage/gardenLogistics/main', '', 'I', '', '2016-06-20 00:00:00', '2016-06-20 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('159', '152', '冷链物流企业信息统计', '物流管理', '4', 'coldchainLogistics', 'F', 'N', 'closed', 'manage/coldchainLogistics/main', '', 'I', '', '2016-06-20 00:00:00', '2016-06-20 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('160', '152', '连锁物流企业信息统计', '物流管理', '4', 'multipleshopLogistics', 'F', 'N', 'closed', 'manage/multipleshopLogistics/main', '', 'I', '', '2016-06-20 00:00:00', '2016-06-20 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('161', '0', '地理信息系统', '', '6', 'gis', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-map', 'I', '物流管理', '2016-06-14 00:00:00', '2016-06-14 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('162', '161', '地理信息查询', '地理信息系统', '1', 'gisSearch', 'F', 'N', 'closed', 'manage/map/main', 'icon-map', 'I', '', '2016-06-23 00:00:00', '2016-06-23 17:56:51', '1', '1', 'N');
INSERT INTO `permission` VALUES ('163', '0', '企业管理', '', '6', 'sysBusiness', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-home', 'I', '企业管理', '2016-07-11 00:00:00', '2016-07-11 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('164', '163', '企业信息管理', '企业管理', '1', 'sysBusinessInfo', 'F', 'N', 'closed', 'manage/businessmanagement/main', 'icon-map', 'I', '', '2016-07-11 00:00:00', '2016-07-11 14:26:19', '1', '1', 'N');
INSERT INTO `permission` VALUES ('165', '164', '新增', '企业信息管理', '1', 'businessinfoAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-add', 'I', '', '2016-07-13 00:00:00', '2016-07-13 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('166', '164', '修改', '企业信息管理', '1', 'businessinfoEdit', 'O', 'N', 'open', 'javascript:void(0);', 'icon-edit', 'I', '', '2016-07-13 00:00:00', '2016-07-13 14:30:59', '1', '1', 'N');
INSERT INTO `permission` VALUES ('167', '164', '删除', '企业信息管理', '1', 'businessinfoDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-remove', 'I', '', '2016-07-13 00:00:00', '2016-07-13 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('168', '163', '企业信息通知', '企业管理', '1', 'businessinfosend', 'F', 'N', 'closed', 'manage/businessmanagement/sendmsg/main', 'icon-chat', 'I', '', '2016-07-13 00:00:00', '2016-07-13 14:41:28', '1', '1', 'N');
INSERT INTO `permission` VALUES ('169', '0', '货运信息', '', '7', 'transport', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-danger', 'I', '', '2016-07-13 00:00:00', '2016-07-16 17:57:06', '1', '1', 'N');
INSERT INTO `permission` VALUES ('170', '169', '发布车辆信息', '货运信息', '1', 'seek', 'F', 'N', 'closed', 'manage/transport/publishCarMain', 'icon-menu', 'I', '', '2016-07-13 00:00:00', '2016-07-14 17:25:10', '1', '1', 'N');
INSERT INTO `permission` VALUES ('171', '0', null, null, null, null, null, 'N', 'open', '1,1,1,1,1,1,1,1,1,1,1,1,1,1', null, 'I', null, '2016-07-14 00:00:00', '2016-07-14 00:00:00', '1', '1', null);
INSERT INTO `permission` VALUES ('172', '0', null, null, null, null, null, 'N', 'open', '1,1,1,1,1,1,1,1,1,1,1,1,1,1', null, 'I', null, '2016-07-14 00:00:00', '2016-07-14 00:00:00', '1', '1', null);
INSERT INTO `permission` VALUES ('173', '169', '发布货物信息', '货运信息', '1', 'goods', 'F', 'N', 'closed', 'manage/transport/publishGoodsMain', 'icon-star', 'I', '', '2016-07-14 00:00:00', '2016-07-14 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('174', '169', '信息审核', '货运信息', '1', 'review', 'F', 'N', 'closed', 'manage/transport/reviewed', 'icon-power', 'I', '', '2016-07-15 00:00:00', '2016-07-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('175', '169', '寻找车辆', '货运信息', '9', 'searchcar', 'F', 'N', 'closed', 'manage/transport/searchCar', 'icon-search', 'I', '', '2016-07-16 00:00:00', '2016-07-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('176', '169', '寻找货物', '货运信息', '7', 'searchgoods', 'F', 'N', 'closed', 'manage/transport/searchGoods', 'icon-search', 'I', '', '2016-07-16 00:00:00', '2016-07-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('177', '169', '发布信息查询', '货运信息', '5', 'publishinfo', 'F', 'N', 'closed', 'manage/transport/publishInfo', 'icon-search', 'I', '', '2016-07-18 00:00:00', '2016-07-18 09:11:48', '1', '1', 'N');
INSERT INTO `permission` VALUES ('178', '0', '人员管理', '', '8', 'personMgr', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-man', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('179', '178', '人员管理', '人员管理', '1', 'personManager', 'F', 'N', 'closed', 'manage/person/main', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('180', '178', '人员信息通知', '人员管理', '2', 'personSendMsg', 'F', 'N', 'closed', 'manage/person/personSendMsg', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('181', '179', '添加人员', '人员管理', '1', 'personAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-add', 'I', '', '2016-07-21 00:00:00', '2016-07-21 14:20:57', '1', '1', 'N');
INSERT INTO `permission` VALUES ('182', '179', '修改人员', '人员管理', '2', 'personEdit', 'O', 'N', 'open', 'javascript:void(0);', 'icon-edit', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('183', '179', '删除人员', '人员管理', '3', 'personDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-remove', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('184', '0', '车辆管理', '', '9', 'carMenu', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-setting', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('185', '184', '车辆管理', '车辆管理', '1', 'carMgr', 'F', 'N', 'closed', 'manage/car/main', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('186', '184', '车主信息通知', '车辆管理', '2', 'carSendMsg', 'F', 'N', 'closed', 'manage/car/carSendMsg', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('187', '185', '添加车辆', '车辆管理', '1', 'carAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-add', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('188', '185', '修改车辆', '车辆管理', '2', 'carEdit', 'O', 'N', 'open', 'javascript:void(0);', 'icon-edit', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('189', '185', '删除车辆', '车辆管理', '3', 'carDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-remove', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('190', '0', '通告管理', '', '10', 'noticeMenu', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-chat', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('191', '190', '通告管理', '通告管理', '1', 'noticeMgr', 'F', 'N', 'closed', 'manage/notice/main', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('192', '191', '新增通告', '通告管理', '1', 'noticeAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-add', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('193', '191', '修改通告', '通告管理', '2', 'noticeEdit', 'O', 'N', 'open', 'javascript:void(0);', 'icon-edit', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('194', '191', '删除通告', '通告管理', '3', 'noticeDel', 'O', 'N', 'open', 'javascript:void(0);', 'icon-remove', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('195', '153', '添加', '服务型物流企业信息', '1', 'serviceLogisticsAdd', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('196', '153', '修改', '服务型物流企业信息', '2', 'serviceLogisticsEdit', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('197', '153', '删除', '服务型物流企业信息', '3', 'serviceLogisticsDel', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('198', '153', '导出', '服务型物流企业信息', '4', 'serviceLogisticsExport', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('199', '153', '导入', '服务型物流企业信息', '5', 'serviceLogisticsUpload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('200', '154', '添加', '制造类物流企业信息统计', '1', 'manufacturingLogisticsAdd', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('201', '154', '修改', '制造类物流企业信息统计', '2', 'manufacturingLogisticsEdit', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('202', '154', '删除', '制造类物流企业信息统计', '3', 'manufacturingLogisticsDel', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('203', '154', '导出', '制造类物流企业信息统计', '4', 'manufacturingLogisticsExport', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('204', '154', '导入', '制造类物流企业信息统计', '5', 'manufacturingLogisticsUpload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('205', '155', '添加', '仓储型物流企业信息统计', '1', 'storageLogisticsAdd', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('206', '155', '修改', '仓储型物流企业信息统计', '2', 'storageLogisticsEdit', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('207', '155', '删除', '仓储型物流企业信息统计', '3', 'storageLogisticsDel', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('208', '155', '导出', '仓储型物流企业信息统计', '4', 'storageLogisticsExport', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('209', '155', '导入', '仓储型物流企业信息统计', '5', 'storageLogisticsUpload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('210', '156', '添加', '运输型物流企业信息统计', '1', 'transportLogisticsAdd', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('211', '156', '修改', '运输型物流企业信息统计', '2', 'transportLogisticsEdit', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('212', '156', '删除', '运输型物流企业信息统计', '3', 'transportLogisticsDel', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('213', '156', '导出', '运输型物流企业信息统计', '4', 'transportLogisticsExport', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('214', '156', '上传', '运输型物流企业信息统计', '5', 'transportLogisticsUpload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('215', '157', '添加', '货代型物流企业信息统计', '1', 'forwarderLogisticsAdd', 'O', 'Y', 'open', 'javascript:void(0);', '', 'A', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('216', '157', '修改', '货代型物流企业信息统计', '2', 'forwarderLogisticsEdit', 'O', 'Y', 'open', 'javascript:void(0);', '', 'A', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('217', '157', '删除', '货代型物流企业信息统计', '3', 'forwarderLogisticsDel', 'O', 'Y', 'open', 'javascript:void(0);', '', 'A', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('218', '157', '导出', '货代型物流企业信息统计', '4', 'forwarderLogisticsExport', 'O', 'Y', 'open', 'javascript:void(0);', '', 'A', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('219', '157', '上传', '货代型物流企业信息统计', '5', 'forwarderLogisticsUpload', 'O', 'Y', 'open', 'javascript:void(0);', '', 'A', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('220', '158', '添加', '物流园区信息统计', '1', 'gardenLogisticsAdd', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('221', '158', '修改', '物流园区信息统计', '2', 'gardenLogisticsEdit', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('222', '158', '删除', '物流园区信息统计', '3', 'gardenLogisticsDel', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('223', '158', '导出', '物流园区信息统计', '4', 'gardenLogisticsExport', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('224', '158', '上传', '物流园区信息统计', '5', 'gardenLogisticsUpload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('225', '159', '添加', '冷链物流企业信息统计', '1', 'coldchainLogisticsAdd', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('226', '159', '修改', '冷链物流企业信息统计', '2', 'coldchainLogisticsEdit', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('227', '159', '删除', '冷链物流企业信息统计', '3', 'coldchainLogisticsDel', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('228', '159', '导出', '冷链物流企业信息统计', '4', 'coldchainLogisticsExport', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('229', '159', '上传', '冷链物流企业信息统计', '5', 'coldchainLogisticsUpload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('230', '160', '添加', '连锁物流企业信息统计', '1', 'multipleshopLogisticsAdd', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('231', '160', '修改', '连锁物流企业信息统计', '2', 'multipleshopLogisticsEdit', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('232', '160', '删除', '连锁物流企业信息统计', '3', 'multipleshopLogisticsDel', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('233', '160', '导出', '连锁物流企业信息统计', '4', 'multipleshopLogisticsExport', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('234', '160', '上传', '连锁物流企业信息统计', '5', 'multipleshopLogisticsUpload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(25) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `nature` varchar(20) DEFAULT NULL COMMENT '人员种类',
  `tel` varchar(25) DEFAULT NULL COMMENT '联系方式',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `idNumber` varchar(32) DEFAULT NULL COMMENT '身份证',
  `creater` varchar(50) DEFAULT NULL COMMENT '创建人',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `vestInCompany` varchar(50) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for `publishinformation`
-- ----------------------------
DROP TABLE IF EXISTS `publishinformation`;
CREATE TABLE `publishinformation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `startProvince` varchar(10) DEFAULT NULL COMMENT '起运省份',
  `startCity` varchar(10) DEFAULT NULL COMMENT '起运市',
  `startCounty` varchar(10) DEFAULT NULL COMMENT '起运县',
  `startAddress` varchar(100) DEFAULT NULL COMMENT '起始地址',
  `endProvince` varchar(10) DEFAULT NULL COMMENT '目的省份',
  `endCity` varchar(10) DEFAULT NULL COMMENT '目的市',
  `endCounty` varchar(10) DEFAULT NULL COMMENT '目的县',
  `endAddress` varchar(100) DEFAULT NULL COMMENT '目的地址',
  `details` varchar(200) DEFAULT NULL COMMENT '货物详情',
  `vehicleLoad` int(11) DEFAULT NULL COMMENT '车辆负载',
  `contact` varchar(10) DEFAULT NULL COMMENT '联系人',
  `tel` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `effectiveTime` int(10) unsigned DEFAULT NULL COMMENT '有效时间',
  `creater` varchar(10) DEFAULT NULL COMMENT '创建者',
  `realCreater` varchar(11) DEFAULT NULL COMMENT '实际创建者id',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注',
  `review` smallint(1) unsigned DEFAULT NULL COMMENT '是否审核，0：未审核；1：审核通过；2审核未通过',
  `reviewer` varchar(11) DEFAULT NULL COMMENT '审核者id',
  `createTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `type` smallint(1) unsigned NOT NULL COMMENT '0为车辆1为货物',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publishinformation
-- ----------------------------
INSERT INTO `publishinformation` VALUES ('27', '1', '1', '1', '1', '1', '1', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '0', '1', null, '2016-07-19 14:07:35', '0');
INSERT INTO `publishinformation` VALUES ('28', '2', '1', '1', '1', '1', '1', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '0', '2', 'system', '2016-07-22 11:52:32', '0');
INSERT INTO `publishinformation` VALUES ('29', '河南', '1', '1', '11', '1', '1', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '0', '2', null, '2016-07-19 12:08:23', '1');
INSERT INTO `publishinformation` VALUES ('30', '1', '111', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '0', '2', null, '2016-07-16 17:42:47', '1');
INSERT INTO `publishinformation` VALUES ('31', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-19 12:07:14', '1');
INSERT INTO `publishinformation` VALUES ('32', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-19 12:07:57', '1');
INSERT INTO `publishinformation` VALUES ('33', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-19 12:07:57', '1');
INSERT INTO `publishinformation` VALUES ('34', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-19 12:07:57', '1');
INSERT INTO `publishinformation` VALUES ('35', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:42:47', '1');
INSERT INTO `publishinformation` VALUES ('36', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:42:47', '1');
INSERT INTO `publishinformation` VALUES ('37', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:42:47', '1');
INSERT INTO `publishinformation` VALUES ('38', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:42:47', '1');
INSERT INTO `publishinformation` VALUES ('39', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('40', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-16 17:18:54', '1');
INSERT INTO `publishinformation` VALUES ('41', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-16 17:18:54', '1');
INSERT INTO `publishinformation` VALUES ('42', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-16 17:18:54', '1');
INSERT INTO `publishinformation` VALUES ('43', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-16 17:19:00', '1');
INSERT INTO `publishinformation` VALUES ('44', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-16 17:19:00', '1');
INSERT INTO `publishinformation` VALUES ('45', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '1', null, '2016-07-16 17:19:00', '1');
INSERT INTO `publishinformation` VALUES ('46', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('47', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('48', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:21:02', '1');
INSERT INTO `publishinformation` VALUES ('49', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:21:02', '1');
INSERT INTO `publishinformation` VALUES ('50', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:21:02', '1');
INSERT INTO `publishinformation` VALUES ('51', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('52', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:21:07', '1');
INSERT INTO `publishinformation` VALUES ('53', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:21:07', '1');
INSERT INTO `publishinformation` VALUES ('54', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '2', null, '2016-07-16 17:21:07', '1');
INSERT INTO `publishinformation` VALUES ('55', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('56', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('57', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('58', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('59', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('60', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('61', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('62', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('63', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('64', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('65', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('66', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('67', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('68', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('69', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('70', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('71', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('72', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 17:18:40', '1');
INSERT INTO `publishinformation` VALUES ('73', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 16:23:04', '1');
INSERT INTO `publishinformation` VALUES ('74', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 16:23:04', '1');
INSERT INTO `publishinformation` VALUES ('75', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '11', '0', null, '2016-07-16 16:23:04', '1');
INSERT INTO `publishinformation` VALUES ('76', '1', '1', '1', '1', '1', '1', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '1', '0', null, '2016-07-19 14:09:05', '1');
INSERT INTO `publishinformation` VALUES ('77', '1', '1', '1', '1', '1', '1', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '', '0', null, '2016-07-19 14:09:16', '0');
INSERT INTO `publishinformation` VALUES ('78', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', null, '2', 'test', '15981858972', '1', 'lvzhi1', 'lvzhi1', '', '1', null, '2016-07-22 08:17:05', '1');
INSERT INTO `publishinformation` VALUES ('79', 'test', 'test', 'test', 'test', 'test', 'tset', 'test', 'tets', null, '1', 'test', '123', '1', 'lvzhi1', 'lvzhi1', '', '1', 'lvzhi', '2016-07-22 09:53:43', '1');
INSERT INTO `publishinformation` VALUES ('80', '2', '2', '2', '2', '2', '2', '2', '2', null, '2', '2', '2', '2', 'lvzhi', 'lvzhi', '2', '0', null, '2016-07-22 10:59:42', '0');
INSERT INTO `publishinformation` VALUES ('81', '1', '1', '1', '1', '1', '11', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '', '0', null, '2016-07-23 16:57:38', '1');
INSERT INTO `publishinformation` VALUES ('82', '1', '1', '1', '1', '1', '1', '1', '1', null, '1', '1', '1', '1', 'system', 'system', '', '0', null, '2016-07-23 17:04:59', '1');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLEID` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色编码',
  `NAME` varchar(55) DEFAULT NULL COMMENT '角色名称',
  `DESCRIPTION` varchar(500) DEFAULT NULL COMMENT '角色描述',
  `STATUS` char(1) DEFAULT NULL COMMENT '角色状态',
  `CREATED` datetime DEFAULT NULL COMMENT '创造时间',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改时间',
  `SORT` int(10) DEFAULT NULL COMMENT '排序',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ROLEID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='系统角色资料';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '具有所有权限', 'A', '2013-05-20 00:00:00', '2016-04-08 00:00:00', '1', '1', '1');
INSERT INTO `role` VALUES ('12', '测试用户', '测试用户', 'I', '2016-04-08 09:38:52', '2016-04-08 00:00:00', '4', '1', '1');
INSERT INTO `role` VALUES ('23', '访客', '具有默认权限', 'I', '2016-04-08 00:00:00', '2016-04-08 00:00:00', '2', '1', '1');
INSERT INTO `role` VALUES ('24', 'test', 'test', 'I', '2016-04-21 00:00:00', '2016-04-21 00:00:00', '3', '1', '1');
INSERT INTO `role` VALUES ('25', 'test2', 'test2', 'I', '2016-04-21 00:00:00', '2016-04-21 00:00:00', '6', '1', '1');
INSERT INTO `role` VALUES ('26', 'lvzhi-test', 'test', 'I', '2016-04-21 00:00:00', '2016-04-21 00:00:00', '9', '29', '29');
INSERT INTO `role` VALUES ('27', '公司管理角色', '公司管理', 'I', '2016-05-03 00:00:00', '2016-07-21 00:00:00', '3', '1', '1');
INSERT INTO `role` VALUES ('28', '公司一般职员角色', '一般职员', 'I', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '4', '1', '1');

-- ----------------------------
-- Table structure for `rolepermission`
-- ----------------------------
DROP TABLE IF EXISTS `rolepermission`;
CREATE TABLE `rolepermission` (
  `RPID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLEID` int(11) NOT NULL COMMENT '角色代码',
  `PERMISSIONID` int(11) NOT NULL COMMENT '权限代码',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` datetime DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`RPID`),
  KEY `FK_ROLE_PERMISSION1` (`ROLEID`),
  KEY `FK_ROLE_PERMISSION2` (`PERMISSIONID`)
) ENGINE=MyISAM AUTO_INCREMENT=435 DEFAULT CHARSET=utf8 COMMENT='角色权限资料';

-- ----------------------------
-- Records of rolepermission
-- ----------------------------
INSERT INTO `rolepermission` VALUES ('1', '1', '1', 'A', '2013-06-14 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('2', '1', '2', 'A', '2013-06-14 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('275', '1', '3', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('276', '1', '4', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('277', '1', '5', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('282', '1', '106', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('283', '1', '107', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('284', '1', '108', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('286', '1', '110', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('290', '1', '114', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('291', '1', '115', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('292', '1', '116', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('293', '1', '117', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('297', '1', '121', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('298', '1', '122', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('299', '1', '123', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('301', '1', '125', 'A', '2016-03-16 00:00:00', '2016-09-11 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('311', '1', '137', 'A', '2016-04-08 00:00:00', '2016-09-11 00:00:00', '1', '1');

-- ----------------------------
-- Table structure for `service_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `service_logistics`;
CREATE TABLE `service_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `registrationNumber` varchar(50) DEFAULT NULL COMMENT '工商部门注册号码',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `isGradeA` tinyint(1) DEFAULT NULL COMMENT '是否获得A级物流企业称号',
  `legalPerson` varchar(50) DEFAULT NULL COMMENT '企业法人',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `companyType` set('transportLogistics','storageLogistics','forwarder','integratedlogistics','lessThanTruckLLoad','expressLogistics') DEFAULT NULL COMMENT '企业性质',
  `employeesNumber` smallint(6) DEFAULT NULL COMMENT '员工总数（人）',
  `collegeOrAboveEmpNum` smallint(6) DEFAULT NULL COMMENT '大专及以上学历（人）',
  `logisticianEmpNum` smallint(6) DEFAULT NULL COMMENT '物流师（人）',
  `carNumber` float DEFAULT NULL COMMENT '拥有车辆总数（吨）',
  `storageType` varchar(50) DEFAULT NULL COMMENT '仓储类型',
  `warehouseSpace` float DEFAULT NULL COMMENT '仓储面积（平方米）',
  `haveInformationPlatform` tinyint(1) DEFAULT NULL COMMENT '是否有信息平台',
  `haveLandDeed` tinyint(1) DEFAULT NULL COMMENT '是否有土地证',
  `areaOfLand` float DEFAULT NULL COMMENT '土地面积（亩）',
  `businessAdvantage` varchar(200) DEFAULT NULL COMMENT '经营优势',
  `businessDisadvantage` varchar(200) DEFAULT NULL COMMENT '经营短板',
  `mainSourceOfIncome` set('transport','storage','forwarder','other') DEFAULT NULL COMMENT '主要营业收于来源',
  `totalValueOfOutput` float DEFAULT NULL COMMENT '2015年总产值（万元）',
  `profitsTax` float DEFAULT NULL COMMENT '2015年利税（万元）',
  `valueOfOutput` float DEFAULT NULL COMMENT '2016年1-5月份产值（万元）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3019 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_logistics
-- ----------------------------
INSERT INTO `service_logistics` VALUES ('5', '河南南阳市万通物流运输有限责任公司', 'sdfsdf', '河南省南阳市G312七里园枣园', '1', 'l', '13522222222', 'sdfsdf@qq.cfg', 'transportLogistics,forwarder', '34', '34', '34', '34.26', 'sdfsd', '34', '1', '0', '34', 'hgjghjty', 'dfsdf', 'storage,other', '22', '33', '222', '2016', '112.55634340178487', '33.03906730788766');
INSERT INTO `service_logistics` VALUES ('6', '南阳润尔物流公司', 'sdfsdf', '312国道新港物流', '1', 'sdfsdf', '13522222222', 'sdfsdf@qq.cfg', 'integratedlogistics', null, null, null, null, '', null, null, null, null, 'sdfsdf', '', 'transport', null, null, null, '', '120.38039964279183', '31.51557113955604');
INSERT INTO `service_logistics` VALUES ('11', '河南南阳市万通物流运输有限责任公司', 'sdfsdf', 'G312七里园枣园', '1', 'sdfsdf', '13522222222', 'sdfsdf@qq.cfg', 'transportLogistics,forwarder', '34', '34', '34', '34.26', 'sdfsd', '34', '1', '0', '34', 'hgjghjty', 'dfsdf', 'storage,other', '22', '33', '222', '2016', '112.55634340178487', '33.03906730788766');
INSERT INTO `service_logistics` VALUES ('12', '河南南阳市万通物流运输有限责任公司', 'sdfsdf', 'G312七里园枣园', '1', 'sdfsdf', '13522222222', 'sdfsdf@qq.cfg', 'transportLogistics,forwarder', '34', '34', '34', '34.26', 'sdfsd', '34', '1', '0', '34', 'hgjghjty', 'dfsdf', 'storage,other', '22', '33', '222', '2016', '112.55634340178487', '33.03906730788766');
INSERT INTO `service_logistics` VALUES ('13', '河南南阳市万通物流运输有限责任公司', 'sdfsdf', 'G312七里园枣园', '1', 'sdfsdf', '13522222222', 'sdfsdf@qq.cfg', 'transportLogistics,forwarder', '34', '34', '34', '34.26', 'sdfsd', '34', '1', '0', '34', 'hgjghjty', 'dfsdf', 'storage,other', '22', '33', '222', '2016', '112.55634340178487', '33.03906730788766');

-- ----------------------------
-- Table structure for `service_logistics_copy`
-- ----------------------------
DROP TABLE IF EXISTS `service_logistics_copy`;
CREATE TABLE `service_logistics_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `registrationNumber` varchar(50) DEFAULT NULL COMMENT '工商部门注册号码',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `isGradeA` tinyint(1) DEFAULT NULL COMMENT '是否获得A级物流企业称号',
  `legalPerson` varchar(50) DEFAULT NULL COMMENT '企业法人',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `companyType` set('transportLogistics','storageLogistics','forwarder','integratedlogistics','lessThanTruckLLoad','expressLogistics') DEFAULT NULL COMMENT '企业性质',
  `employeesNumber` smallint(6) DEFAULT NULL COMMENT '员工总数（人）',
  `collegeOrAboveEmpNum` smallint(6) DEFAULT NULL COMMENT '大专及以上学历（人）',
  `logisticianEmpNum` smallint(6) DEFAULT NULL COMMENT '物流师（人）',
  `carNumber` float DEFAULT NULL COMMENT '拥有车辆总数（吨）',
  `storageType` varchar(50) DEFAULT NULL COMMENT '仓储类型',
  `warehouseSpace` float DEFAULT NULL COMMENT '仓储面积（平方米）',
  `haveInformationPlatform` tinyint(1) DEFAULT NULL COMMENT '是否有信息平台',
  `haveLandDeed` tinyint(1) DEFAULT NULL COMMENT '是否有土地证',
  `areaOfLand` float DEFAULT NULL COMMENT '土地面积（亩）',
  `businessAdvantage` varchar(200) DEFAULT NULL COMMENT '经营优势',
  `businessDisadvantage` varchar(200) DEFAULT NULL COMMENT '经营短板',
  `mainSourceOfIncome` set('transport','storage','forwarder','other') DEFAULT NULL COMMENT '主要营业收于来源',
  `totalValueOfOutput` float DEFAULT NULL COMMENT '2015年总产值（万元）',
  `profitsTax` float DEFAULT NULL COMMENT '2015年利税（万元）',
  `valueOfOutput` float DEFAULT NULL COMMENT '2016年1-5月份产值（万元）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3019 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_logistics_copy
-- ----------------------------
INSERT INTO `service_logistics_copy` VALUES ('5', '河南南阳市万通物流运输有限责任公司', 'sdfsdf', '河南省南阳市G312七里园枣园', '1', 'l', '13522222222', 'sdfsdf@qq.cfg', 'transportLogistics,forwarder', '34', '34', '34', '34.26', 'sdfsd', '34', '1', '0', '34', 'hgjghjty', 'dfsdf', 'storage,other', '22', '33', '222', '2016', '112.55634340178487', '33.03906730788766');
INSERT INTO `service_logistics_copy` VALUES ('6', '南阳润尔物流公司', 'sdfsdf', '312国道新港物流', '1', 'sdfsdf', '13522222222', 'sdfsdf@qq.cfg', 'integratedlogistics', null, null, null, null, '', null, null, null, null, 'sdfsdf', '', 'transport', null, null, null, '', '120.38039964279183', '31.51557113955604');
INSERT INTO `service_logistics_copy` VALUES ('11', '河南南阳市万通物流运输有限责任公司', 'sdfsdf', 'G312七里园枣园', '1', 'sdfsdf', '13522222222', 'sdfsdf@qq.cfg', 'transportLogistics,forwarder', '34', '34', '34', '34.26', 'sdfsd', '34', '1', '0', '34', 'hgjghjty', 'dfsdf', 'storage,other', '22', '33', '222', '2016', '112.55634340178487', '33.03906730788766');
INSERT INTO `service_logistics_copy` VALUES ('12', '河南南阳市万通物流运输有限责任公司', 'sdfsdf', 'G312七里园枣园', '1', 'sdfsdf', '13522222222', 'sdfsdf@qq.cfg', 'transportLogistics,forwarder', '34', '34', '34', '34.26', 'sdfsd', '34', '1', '0', '34', 'hgjghjty', 'dfsdf', 'storage,other', '22', '33', '222', '2016', '112.55634340178487', '33.03906730788766');
INSERT INTO `service_logistics_copy` VALUES ('13', '河南南阳市万通物流运输有限责任公司', 'sdfsdf', 'G312七里园枣园', '1', 'sdfsdf', '13522222222', 'sdfsdf@qq.cfg', 'transportLogistics,forwarder', '34', '34', '34', '34.26', 'sdfsd', '34', '1', '0', '34', 'hgjghjty', 'dfsdf', 'storage,other', '22', '33', '222', '2016', '112.55634340178487', '33.03906730788766');
INSERT INTO `service_logistics_copy` VALUES ('3013', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3012', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3011', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3010', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3009', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3008', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3007', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3006', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3005', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3004', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3003', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3002', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3001', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3000', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2999', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2998', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2997', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2996', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2995', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2994', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2993', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2992', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2991', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2990', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2989', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2988', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2987', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2986', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2985', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2984', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2983', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2982', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2981', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2980', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2979', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2978', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2977', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2976', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2975', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2974', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2973', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2972', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2971', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2970', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2969', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2968', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2967', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2966', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2965', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2964', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2963', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2962', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2961', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2960', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2959', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2958', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2957', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2956', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2955', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2954', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2953', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2952', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2951', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2950', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2949', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2948', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2947', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2946', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2945', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2944', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2943', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2942', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2941', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2940', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2939', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2938', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2937', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2936', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2935', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2934', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2933', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2932', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2931', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2930', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2929', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2928', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2927', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2926', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2925', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2924', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2923', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2922', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2921', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2920', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2919', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2918', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2917', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2916', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2915', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2914', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2913', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2912', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2911', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2910', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2909', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2908', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2907', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2906', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2905', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2904', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2903', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2902', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2901', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2900', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2899', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2898', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2897', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2896', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2895', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2894', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2893', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2892', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2891', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2890', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2889', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2888', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2887', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2886', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2885', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2884', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2883', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2882', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2881', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2880', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2879', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2878', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2877', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2876', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2875', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2874', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2873', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2872', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2871', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2870', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2869', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2868', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2867', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2866', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2865', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2864', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2863', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2862', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2861', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2860', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2859', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2858', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2857', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2856', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2855', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2854', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2853', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2852', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2851', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2850', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2849', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2848', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2847', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2846', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2845', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2844', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2843', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2842', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2841', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2840', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2839', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2838', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2837', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2836', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2835', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2834', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2833', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2832', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2831', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2830', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2829', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2828', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2827', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2826', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2825', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2824', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2823', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2822', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2821', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2820', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2819', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2818', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2817', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2816', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2815', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2814', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2813', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2812', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2811', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2810', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2809', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2808', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2807', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2806', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2805', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2804', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2803', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2802', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2801', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2800', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2799', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2798', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2797', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2796', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2795', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2794', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2793', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2792', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2791', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2790', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2789', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2788', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2787', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2786', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2785', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2784', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2783', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2782', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2781', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2780', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2779', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2778', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2777', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2776', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2775', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2774', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2773', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2772', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2771', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2770', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2769', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2768', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2767', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2766', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2765', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2764', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2763', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2762', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2761', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2760', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2759', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2758', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2757', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2756', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2755', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2754', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2753', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2752', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2751', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2750', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2749', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2748', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2747', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2746', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2745', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2744', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2743', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2742', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2741', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2740', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2739', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2738', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2737', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2736', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2735', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2734', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2733', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2732', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2731', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2730', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2729', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2728', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2727', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2726', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2725', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2724', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2723', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2722', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2721', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2720', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2719', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2718', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2717', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2716', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2715', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2714', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2713', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2712', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2711', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2710', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2709', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2708', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2707', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2706', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2705', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2704', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2703', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2702', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2701', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2700', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2699', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2698', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2697', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2696', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2695', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2694', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2693', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2692', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2691', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2690', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2689', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2688', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2687', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2686', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2685', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2684', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2683', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2682', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2681', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2680', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2679', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2678', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2677', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2676', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2675', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2674', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2673', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2672', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2671', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2670', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2669', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2668', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2667', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2666', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2665', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2664', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2663', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2662', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2661', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2660', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2659', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2658', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2657', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2656', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2655', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2654', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2653', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2652', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2651', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2650', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2649', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2648', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2647', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2646', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2645', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2644', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2643', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2642', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2641', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2640', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2639', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2638', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2637', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2636', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2635', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2634', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2633', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2632', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2631', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2630', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2629', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2628', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2627', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2626', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2625', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2624', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2623', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2622', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2621', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2620', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2619', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2618', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2617', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2616', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2615', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2614', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2613', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2612', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2611', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2610', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2609', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2608', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2607', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2606', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2605', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2604', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2603', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2602', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2601', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2600', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2599', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2598', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2597', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2596', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2595', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2594', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2593', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2592', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2591', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2590', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2589', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2588', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2587', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2586', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2585', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2584', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2583', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2582', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2581', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2580', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2579', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2578', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2577', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2576', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2575', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2574', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2573', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2572', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2571', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2570', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2569', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2568', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2567', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2566', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2565', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2564', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2563', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2562', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2561', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2560', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2559', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2558', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2557', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2556', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2555', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2554', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2553', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2552', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2551', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2550', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2549', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2548', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2547', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2546', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2545', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2544', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2543', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2542', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2541', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2540', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2539', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2538', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2537', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2536', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2535', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2534', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2533', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2532', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2531', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2530', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2529', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2528', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2527', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2526', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2525', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2524', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2523', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2522', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2521', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2520', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2519', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2518', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2517', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2516', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2515', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2514', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2513', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2512', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2511', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2510', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2509', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2508', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2507', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2506', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2505', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2504', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2503', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2502', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2501', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2500', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2499', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2498', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2497', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2496', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2495', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2494', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2493', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2492', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2491', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2490', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2489', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2488', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2487', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2486', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2485', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2484', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2483', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2482', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2481', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2480', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2479', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2478', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2477', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2476', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2475', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2474', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2473', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2472', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2471', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2470', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2469', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2468', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2467', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2466', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2465', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2464', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2463', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2462', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2461', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2460', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2459', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2458', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2457', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2456', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2455', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2454', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2453', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2452', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2451', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2450', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2449', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2448', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2447', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2446', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2445', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2444', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2443', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2442', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2441', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2440', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2439', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2438', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2437', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2436', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2435', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2434', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2433', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2432', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2431', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2430', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2429', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2428', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2427', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2426', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2425', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2424', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2423', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2422', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2421', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2420', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2419', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2418', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2417', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2416', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2415', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2414', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2413', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2412', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2411', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2410', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2409', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2408', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2407', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2406', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2405', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2404', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2403', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2402', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2401', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2400', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2399', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2398', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2397', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2396', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2395', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2394', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2393', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2392', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2391', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2390', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2389', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2388', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2387', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2386', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2385', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2384', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2383', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2382', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2381', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2380', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2379', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2378', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2377', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2376', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2375', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2374', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2373', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2372', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2371', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2370', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2369', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2368', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2367', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2366', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2365', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2364', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2363', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2362', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2361', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2360', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2359', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2358', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2357', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2356', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2355', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2354', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2353', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2352', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2351', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2350', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2349', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2348', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2347', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2346', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2345', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2344', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2343', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2342', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2341', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2340', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2339', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2338', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2337', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2336', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2335', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2334', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2333', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2332', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2331', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2330', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2329', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2328', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2327', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2326', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2325', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2324', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2323', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2322', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2321', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2320', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2319', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2318', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2317', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2316', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2315', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2314', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2313', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2312', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2311', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2310', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2309', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2308', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2307', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2306', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2305', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2304', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2303', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2302', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2301', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2300', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2299', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2298', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2297', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2296', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2295', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2294', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2293', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2292', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2291', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2290', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2289', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2288', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2287', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2286', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2285', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2284', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2283', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2282', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2281', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2280', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2279', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2278', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2277', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2276', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2275', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2274', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2273', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2272', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2271', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2270', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2269', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2268', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2267', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2266', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2265', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2264', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2263', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2262', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2261', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2260', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2259', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2258', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2257', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2256', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2255', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2254', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2253', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2252', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2251', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2250', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2249', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2248', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2247', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2246', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2245', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2244', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2243', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2242', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2241', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2240', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2239', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2238', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2237', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2236', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2235', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2234', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2233', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2232', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2231', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2230', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2229', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2228', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2227', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2226', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2225', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2224', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2223', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2222', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2221', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2220', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2219', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2218', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2217', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2216', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2215', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2214', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2213', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2212', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2211', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2210', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2209', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2208', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2207', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2206', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2205', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2204', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2203', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2202', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2201', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2200', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2199', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2198', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2197', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2196', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2195', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2194', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2193', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2192', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2191', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2190', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2189', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2188', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2187', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2186', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2185', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2184', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2183', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2182', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2181', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2180', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2179', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2178', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2177', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2176', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2175', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2174', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2173', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2172', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2171', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2170', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2169', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2168', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2167', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2166', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2165', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2164', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2163', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2162', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2161', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2160', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2159', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2158', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2157', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2156', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2155', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2154', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2153', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2152', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2151', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2150', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2149', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2148', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2147', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2146', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2145', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2144', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2143', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2142', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2141', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2140', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2139', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2138', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2137', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2136', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2135', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2134', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2133', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2132', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2131', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2130', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2129', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2128', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2127', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2126', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2125', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2124', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2123', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2122', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2121', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2120', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2119', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2118', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2117', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2116', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2115', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2114', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2113', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2112', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2111', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2110', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2109', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2108', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2107', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2106', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2105', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2104', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2103', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2102', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2101', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2100', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2099', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2098', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2097', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2096', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2095', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2094', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2093', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2092', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2091', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2090', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2089', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2088', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2087', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2086', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2085', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2084', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2083', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2082', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2081', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2080', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2079', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2078', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2077', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2076', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2075', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2074', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2073', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2072', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2071', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2070', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2069', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2068', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2067', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2066', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2065', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2064', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2063', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2062', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2061', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2060', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2059', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2058', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2057', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2056', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2055', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2054', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2053', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2052', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2051', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2050', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2049', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2048', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2047', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2046', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2045', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2044', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2043', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2042', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2041', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2040', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2039', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2038', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2037', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2036', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2035', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2034', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2033', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2032', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2031', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2030', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2029', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2028', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2027', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2026', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2025', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2024', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2023', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2022', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2021', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2020', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2019', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2018', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2017', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2016', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2015', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('2014', '1', '2', null, '4', '5', '6', '7', 'integratedlogistics', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', 'transport', '21', '22', '23', '24', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3014', '1', '1', null, null, '1', '15981858972', '1@1.com', null, '1', null, '1', null, '1', null, '1', '1', '1', '1', '1', 'transport', '11', '1', '1', '', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3015', '1', '1', null, null, '1', '15981858972', '1@1.com', null, null, null, null, null, '', null, null, null, null, '', '', null, null, null, null, '', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3016', '2', '2', null, null, '2', '15981858972', '2@2.com', null, null, null, null, null, '', null, null, null, null, '', '', null, null, null, null, '', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3017', 'test', 'test', null, null, '', '15981858972', '1@1.com', '', null, null, null, null, '', null, null, null, null, '', '', '', null, null, null, '', null, null);
INSERT INTO `service_logistics_copy` VALUES ('3018', 'test', 'test', null, null, '', '15981858972', 'Q@q.com', '', null, null, null, null, '', null, null, null, null, '', '', '', null, null, null, '', null, null);

-- ----------------------------
-- Table structure for `storage_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `storage_logistics`;
CREATE TABLE `storage_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `registrationNumber` varchar(50) DEFAULT NULL COMMENT '工商部门注册号码',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `logisticsEmpSum` smallint(6) DEFAULT NULL COMMENT '员工总数（人）',
  `logisticianEmpNum` smallint(6) DEFAULT NULL COMMENT '物流师（人）',
  `isGradeA` tinyint(1) DEFAULT NULL COMMENT '获得A级物流企业称号',
  `isRentStorage` varchar(100) DEFAULT NULL COMMENT '自拥有仓储或租赁仓储',
  `storageArea` float DEFAULT NULL COMMENT '仓储面积（平方米）',
  `storageCapacity` float DEFAULT NULL COMMENT '仓储容积（立方米）',
  `storageType` varchar(100) DEFAULT NULL COMMENT '仓储类型（普仓或特殊仓）',
  `stockType` varchar(100) DEFAULT NULL COMMENT '存货类型（家电、纺织品、日化用品、食品等）',
  `totalThroughput` float DEFAULT NULL COMMENT '年度总吞吐量（吨或m³）',
  `storageAreaAverageUtilization` float DEFAULT NULL COMMENT '年度仓储面积平均利用率',
  `storageAreaUtilization` float DEFAULT NULL COMMENT '1-5月份仓储面积利用率',
  `serviceObject` varchar(100) DEFAULT NULL COMMENT '服务对象',
  `totalValueOfOutput` float DEFAULT NULL COMMENT '年企业总产值（万元）',
  `totalVariableCost` float DEFAULT NULL COMMENT '企业总变动成本（万元）',
  `totaFixedCost` float DEFAULT NULL COMMENT '企业总固定成本（万元）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storage_logistics
-- ----------------------------
INSERT INTO `storage_logistics` VALUES ('11', '南阳宛运集团货运有限公司', 'dfg', '仲景路215号', '13699889898', 'dfg@ql.v', null, null, null, '', null, null, '', '', null, null, null, '', null, null, null, null, null, null);
INSERT INTO `storage_logistics` VALUES ('12', '南阳龙腾货运物流信息部', 'sdfsdf', '新港物流园龙腾快运', '13699999999', 'asd@qq.c', '234', '234', '1', 'sdfsd', '234', '234', 'sdfsdf', 'sdf', '234', '5434', '345', 'sdf', '345', '345', '345', '2015', null, null);

-- ----------------------------
-- Table structure for `transport_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `transport_logistics`;
CREATE TABLE `transport_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `companyName` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `registrationNumber` varchar(50) DEFAULT NULL COMMENT '工商部门注册号码',
  `address` varchar(100) DEFAULT NULL COMMENT '通讯地址',
  `tel` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `logisticsEmpSum` smallint(6) DEFAULT NULL COMMENT '员工总数（人）',
  `logisticianEmpNum` smallint(6) DEFAULT NULL COMMENT '员工物流师（人）',
  `isGradeA` tinyint(1) DEFAULT NULL COMMENT '获得A级物流企业称号',
  `vehiclesNumber` smallint(6) DEFAULT NULL COMMENT '车辆总数（台/吨位）',
  `ownVehiclesNumber` smallint(6) DEFAULT NULL COMMENT '总有车辆数（台/吨位）',
  `inkedVehiclesNumber` smallint(6) DEFAULT NULL COMMENT '挂靠车辆数（台/吨位）',
  `averageCapacity` float DEFAULT NULL COMMENT '年度平均运载量（万吨）',
  `capacity` float DEFAULT NULL COMMENT '1-5月运载量（万吨）',
  `transportLinks` varchar(100) DEFAULT NULL COMMENT '运输线路',
  `serviceObject` varchar(100) DEFAULT NULL COMMENT '服务对象',
  `totalValueOfOutput` float DEFAULT NULL COMMENT '年度总产值（万元）',
  `totalVariableCost` float DEFAULT NULL COMMENT '年度总成本（万元）',
  `totaFixedCost` float DEFAULT NULL COMMENT '主营业务收入（万元）',
  `year` varchar(4) DEFAULT NULL COMMENT '年份',
  `lng` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transport_logistics
-- ----------------------------
INSERT INTO `transport_logistics` VALUES ('9', '南阳新鑫货运信息中心', 'sdf', '312国道 威马物流院内', '13655555555', 'sdf@qq.c', '342', '234', '1', '234', '234', '234', '234', '234', 'werwe', 'werwe', '234', '234', '4234', '2015', '120.33720992234706', '31.585379430162566');
INSERT INTO `transport_logistics` VALUES ('10', '恒源物流公司', 'sdfsd', '仲景北路与312国道交叉口', '13655555555', 'sdf@qq.v', null, null, null, null, null, null, null, null, '', '', null, null, null, null, '112.56444050397374', '33.03849187741576');

-- ----------------------------
-- Table structure for `userrole`
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `URID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` int(11) NOT NULL DEFAULT '0' COMMENT '用户代码',
  `ROLEID` int(11) DEFAULT NULL COMMENT '角色代码',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` datetime DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`URID`),
  KEY `FK_USER_ROLE1` (`USERID`),
  KEY `FK_USER_ROLE2` (`ROLEID`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户角色资料表';

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES ('1', '1', '1', 'A', '2013-05-24 00:00:00', '2013-06-22 13:43:22', '1', '1');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户代码',
  `MYID` varchar(50) DEFAULT NULL COMMENT '用户自编码',
  `ACCOUNT` varchar(50) DEFAULT NULL COMMENT '账号',
  `NAME` varchar(50) DEFAULT NULL COMMENT '名称',
  `PASSWORD` varchar(128) DEFAULT NULL COMMENT '密码',
  `EMAIL` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `LANG` varchar(20) DEFAULT NULL COMMENT '语言',
  `THEME` varchar(20) DEFAULT NULL COMMENT '样式',
  `FIRSTVISIT` datetime DEFAULT NULL COMMENT '第一次登录',
  `PREVIOUSVISIT` datetime DEFAULT NULL COMMENT '上一次登录',
  `LASTVISITS` datetime DEFAULT NULL COMMENT '最后一次登录',
  `LOGINCOUNT` int(10) DEFAULT NULL COMMENT '登录资数',
  `ISEMPLOYEE` int(1) DEFAULT NULL COMMENT '是否是职工',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `IP` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `QUESTIONID` int(10) DEFAULT NULL COMMENT '问题代码',
  `ANSWER` varchar(100) DEFAULT NULL COMMENT '回复',
  `ISONLINE` int(1) DEFAULT NULL COMMENT '是否在线',
  `CREATED` datetime DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `TEL` varchar(30) DEFAULT NULL COMMENT '用户电话',
  `vestInCompany` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='用户资料表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'A', 'system', 'system', '54B53072540EEEB8F8E9343E71F28176', '12@qq.com', null, null, null, null, null, null, null, 'A', null, '111111', null, null, null, null, '2013-06-14 00:00:00', '1', '1', '1111111', '');

-- ----------------------------
-- Procedure structure for `proc1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc1`(in p int)
BEGIN
DECLARE var1 CHAR(10);
IF p = 17 then 
set var1 = 'birds';
else set var1 = 'beasts';
END IF;
insert into testdemo values(null, var1);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc10`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc10`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc10`()
begin 
DECLARE v int;
set v = 0;
LOOP_LABLE:LOOP
if v = 3 THEN
set v = v + 1;
ITERATE LOOP_LABLE;
end if;
insert into testdemo values(null, v);
set v = v + 1;
if v >= 5 then 
leave LOOP_LABLE;
END IF;
END LOOP;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc2`(in p int)
BEGIN
DECLARE var int;
set var = p + 1;
IF var = 0 THEN
insert into testdemo values(null, 'o');
end IF;
if p = 0 then 
insert into testdemo values(null, 'p0');
else 
insert into testdemo values(null, 'else');
end if;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc3`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc3`()
BEGIN
DECLARE x1 varchar(5) default 'outer';
BEGIN
DECLARE x1 varchar(5) default 'inner';
select x1;
end;
select x1;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc31`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc31`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc31`(in p int)
begin 
DECLARE var int;
set var = p + 1;
case var 
when 0 then 
insert into testdemo values (null, "-1");
when 1 then 
insert into testdemo values(null, "0");
else 
insert into testdemo values(null, "other");
end case;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc4`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc4`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc4`()
begin 
DECLARE var int;
set var = 0;
while var < 6 DO
insert into testdemo values(null, var);
set var = var + 1;
end while;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc5`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc5`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc5`()
BEGIN
DECLARE v int;
set v = 0;
repeat
insert into testdemo values(null, v);
set v = v + 1;
until v >= 5
end repeat;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `proc6`
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc6`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc6`()
BEGIN
declare v int;
set v = 0;
LOOP_LABLE:LOOP
insert into testdemo values(null, v);
set v = v + 1;
if v >= 5 then 
leave LOOP_LABLE;
end if;
end loop;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `my1`
-- ----------------------------
DROP FUNCTION IF EXISTS `my1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `my1`(str int) RETURNS varchar(255) CHARSET utf8
BEGIN
DECLARE s VARCHAR(255);
if(str = 5) THEN
set s = 's';
else 
set s = 'other';
end if;
return (s);
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `my2`
-- ----------------------------
DROP FUNCTION IF EXISTS `my2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `my2`(str varchar(255)) RETURNS varchar(255) CHARSET utf8
BEGIN
DECLARE s VARCHAR(255);
if(str = '5') THEN
set s = 's';
else 
set s = 'other';
end if;
return (s);
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `my3`
-- ----------------------------
DROP FUNCTION IF EXISTS `my3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `my3`() RETURNS varchar(255) CHARSET utf8
BEGIN
DECLARE s VARCHAR(255);
set s = now();
return s;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `myFunction`
-- ----------------------------
DROP FUNCTION IF EXISTS `myFunction`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `myFunction`(in_string varchar(255), in_find_str varchar(20), in_repl_str varchar(20)) RETURNS varchar(255) CHARSET utf8
BEGIN
 declare l_new_string varchar(255);
 declare l_find_pos int;
 set l_find_pos = INSTR(in_string,in_find_str);
if(l_find_pos>0) THEN
set l_new_string=INSERT(in_string,l_find_pos,LENGTH(in_find_str),in_repl_str);
ELSE set l_new_string = in_string;
end if;
return (l_new_string);
end
;;
DELIMITER ;
