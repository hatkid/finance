/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : finance

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-03-23 13:07:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `companyfinance`
-- ----------------------------
DROP TABLE IF EXISTS `companyfinance`;
CREATE TABLE `companyfinance` (
  `Id` int(11) NOT NULL auto_increment,
  `companyName` varchar(255) NOT NULL default '' COMMENT '公司名称',
  `loanAmount` double(11,2) default NULL COMMENT '贷款金额',
  `arrears` double(11,2) default NULL COMMENT '年初欠款',
  `paid` double(11,2) default NULL COMMENT '已付款',
  `totalArrears` double(11,2) default NULL COMMENT '总欠款额',
  `channel` tinyint(1) unsigned default '0' COMMENT '渠道：0-pc；1-小程序',
  `row_creater` int(11) default NULL COMMENT '创建者',
  `row_modifier` int(11) default NULL COMMENT '修改者',
  `row_create_time` timestamp NULL default NULL COMMENT '创建时间',
  `row_modify_time` timestamp NULL default NULL COMMENT '修改时间',
  `row_state` tinyint(1) default '1' COMMENT '状态:1-有效；0-无效',
  PRIMARY KEY  (`Id`),
  UNIQUE KEY `companyName` (`companyName`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyfinance
-- ----------------------------
INSERT INTO `companyfinance` VALUES ('1', '1133', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:21', '0');
INSERT INTO `companyfinance` VALUES ('2', '22', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', null, null, '0');
INSERT INTO `companyfinance` VALUES ('4', '11', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:34', '0');
INSERT INTO `companyfinance` VALUES ('5', '13', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:49', '0');
INSERT INTO `companyfinance` VALUES ('6', '12', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:47', '0');
INSERT INTO `companyfinance` VALUES ('7', '14', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:44', '0');
INSERT INTO `companyfinance` VALUES ('8', '宇通', '0.00', '123.01', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:41:24', '1');
INSERT INTO `companyfinance` VALUES ('9', '16', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:40', '0');
INSERT INTO `companyfinance` VALUES ('10', '17', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:37', '0');
INSERT INTO `companyfinance` VALUES ('11', '18', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:27', '0');
INSERT INTO `companyfinance` VALUES ('12', '19', '0.00', '0.00', '0.00', '0.00', '0', '0', '1', null, '2019-03-16 12:39:25', '0');
INSERT INTO `companyfinance` VALUES ('13', '111', '0.00', '0.00', '0.00', '0.00', '0', '1', '1', '2019-03-05 14:20:37', '2019-03-16 12:39:51', '0');
INSERT INTO `companyfinance` VALUES ('14', '1119', '0.00', '0.00', '0.00', '0.00', '0', '1', '1', '2019-03-05 14:23:36', '2019-03-16 12:39:54', '0');
INSERT INTO `companyfinance` VALUES ('15', '119', '111.00', '111.00', '0.00', '0.00', '0', '1', '1', '2019-03-05 14:33:30', '2019-03-16 12:39:56', '0');
INSERT INTO `companyfinance` VALUES ('16', '133', '1.00', '1.00', '0.00', '0.00', '0', '1', '1', '2019-03-05 14:46:23', '2019-03-16 12:40:10', '0');
INSERT INTO `companyfinance` VALUES ('17', '1113', '11.03', '12.00', '0.00', '0.00', '0', '1', '1', '2019-03-05 15:08:15', '2019-03-16 12:40:13', '0');
INSERT INTO `companyfinance` VALUES ('18', '支付宝', '0.00', '12.03', '0.00', '0.00', '0', '1', '1', '2019-03-05 15:20:58', '2019-03-16 12:41:13', '1');
INSERT INTO `companyfinance` VALUES ('20', '11133', '1.00', '1.00', '0.00', '0.00', '0', '1', '1', '2019-03-05 18:24:06', '2019-03-16 12:40:17', '0');
INSERT INTO `companyfinance` VALUES ('21', '淘宝', '0.00', '111111.00', '0.00', '0.00', '0', '1', '1', '2019-03-11 13:05:27', '2019-03-16 12:41:07', '1');
INSERT INTO `companyfinance` VALUES ('22', '京东', '0.00', '22.00', '0.00', '0.00', '0', '1', '1', '2019-03-11 13:05:43', '2019-03-16 12:41:00', '1');
INSERT INTO `companyfinance` VALUES ('23', '网易', '0.00', '123555.00', '0.00', '0.00', '0', '1', '1', '2019-03-11 13:25:52', '2019-03-16 12:40:54', '1');
INSERT INTO `companyfinance` VALUES ('24', '2222222', '2222.00', '222.00', '0.00', '0.00', '0', '1', '1', '2019-03-11 16:56:10', '2019-03-11 17:08:31', '0');
INSERT INTO `companyfinance` VALUES ('25', 'sf', '3.20', '33.00', '0.00', '0.00', '0', '1', '1', '2019-03-12 11:11:36', '2019-03-12 11:12:00', '0');
INSERT INTO `companyfinance` VALUES ('26', '阿里巴巴', '0.00', '1.00', '0.00', '0.00', '0', '38', '1', '2019-03-12 11:27:47', '2019-03-16 12:40:49', '1');
INSERT INTO `companyfinance` VALUES ('27', '百度', '0.00', '1.00', '0.00', '0.00', '0', '1', '1', '2019-03-13 12:13:27', '2019-03-16 12:40:44', '1');
INSERT INTO `companyfinance` VALUES ('28', '腾讯', '0.00', '5.00', '0.00', '0.00', '0', '1', '1', '2019-03-16 11:40:36', '2019-03-16 12:40:39', '1');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `PERMISSIONID` int(11) NOT NULL auto_increment COMMENT '权限代码',
  `PID` int(11) default NULL,
  `NAME` varchar(100) default NULL,
  `PNAME` varchar(100) default NULL,
  `SORT` int(11) default NULL,
  `MYID` varchar(55) default NULL,
  `TYPE` char(1) default NULL COMMENT 'F:FUNCTION,O:OPERATION',
  `ISUSED` char(1) default NULL COMMENT 'Y,N',
  `STATE` varchar(20) default NULL,
  `URL` varchar(200) default NULL COMMENT '链接地址',
  `ICONCLS` varchar(100) default NULL COMMENT '功能模块',
  `STATUS` char(1) NOT NULL COMMENT '状态',
  `DESCRIPTION` varchar(2000) default NULL COMMENT '备注',
  `CREATED` datetime NOT NULL COMMENT '创造日期',
  `LASTMOD` datetime default NULL COMMENT '修改日期',
  `CREATER` int(10) default NULL COMMENT '创建人',
  `MODIFYER` int(10) default NULL COMMENT '修改人',
  `ISDEFAULT` char(1) default 'N' COMMENT '是否默认权限，Y是N否',
  PRIMARY KEY  (`PERMISSIONID`)
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=utf8 COMMENT='权限资料表';

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
INSERT INTO `permission` VALUES ('152', '0', '物流管理', '', '5', 'logistics', 'F', 'N', 'closed', 'javascript:void(0);', 'icon-company', 'I', '物流管理', '2016-06-14 00:00:00', '2016-06-25 09:54:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('153', '152', '服务型物流企业信息', '物流管理', '1', 'serviceLogistics', 'F', 'N', 'closed', 'manage/serviceLogistics/main', '', 'I', '', '2016-06-14 00:00:00', '2016-06-14 17:37:59', '1', '1', 'N');
INSERT INTO `permission` VALUES ('154', '152', '制造类物流企业信息统计', '物流管理', '2', 'manufacturingLogistics', 'F', 'N', 'closed', 'manage/manufacturingLogistics/main', '', 'I', '', '2016-06-16 00:00:00', '2016-06-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('155', '152', '仓储型物流企业信息统计', '物流管理', '3', 'storageLogistics', 'F', 'N', 'closed', 'manage/storageLogistics/main', '', 'I', '', '2016-06-18 00:00:00', '2016-06-18 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('156', '152', '运输型物流企业信息统计', '物流管理', '4', 'transportLogistics', 'F', 'N', 'closed', 'manage/transportLogistics/main', '', 'I', '', '2016-06-20 00:00:00', '2016-06-20 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('157', '152', '货代型物流企业信息统计', '物流管理', '4', 'forwarderLogistics', 'F', 'N', 'closed', 'manage/forwarderLogistics/main', 'icon-power', 'I', '', '2016-06-20 00:00:00', '2019-03-04 13:40:56', '1', '1', 'N');
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
INSERT INTO `permission` VALUES ('215', '157', '添加', '货代型物流企业信息统计', '1', 'forwarderLogisticsAdd', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('216', '157', '修改', '货代型物流企业信息统计', '2', 'forwarderLogisticsEdit', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('217', '157', '删除', '货代型物流企业信息统计', '3', 'forwarderLogisticsDel', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('218', '157', '导出', '货代型物流企业信息统计', '4', 'forwarderLogisticsExport', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('219', '157', '上传', '货代型物流企业信息统计', '5', 'forwarderLogisticsUpload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2016-07-21 00:00:00', '2016-07-21 00:00:00', '1', '1', 'N');
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
INSERT INTO `permission` VALUES ('235', '0', '供应商管理', '', '1', 'mgrCompanyFinance', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-company', 'A', '财务管理--公司管理', '2019-03-04 00:00:00', '2019-03-11 17:14:13', '1', '1', 'N');
INSERT INTO `permission` VALUES ('236', '235', '采购管理', '公司管理', '1', 'mgrCompayFinanceSub', 'F', 'Y', 'closed', 'manage/companyFinance/main', 'icon-company', 'A', '公司管理', '2019-03-04 00:00:00', '2019-03-15 21:10:11', '1', '1', 'N');
INSERT INTO `permission` VALUES ('237', '236', '添加', '公司管理', '1', 'companyAddFinance', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-add', 'A', '', '2019-03-04 00:00:00', '2019-03-04 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('238', '236', '修改', '公司管理', '2', 'companyEditFinance', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2019-03-04 00:00:00', '2019-03-04 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('239', '236', '删除', '公司管理', '3', 'companyDelFinance', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2019-03-04 00:00:00', '2019-03-04 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('240', '235', '采购明细', '供应商管理', '2', 'mgrsupplierdetai', 'F', 'Y', 'closed', 'manage/supplierDetail/main', 'icon-data', 'A', '', '2019-03-12 00:00:00', '2019-03-15 21:10:32', '1', '1', 'N');
INSERT INTO `permission` VALUES ('241', '240', '增加', '公司明细管理', '1', 'supplierDetailAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-add', 'A', '', '2019-03-12 00:00:00', '2019-03-12 11:23:27', '1', '1', 'N');
INSERT INTO `permission` VALUES ('242', '240', '修改', '公司明细管理', '2', 'supplierDetailUpdate', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2019-03-12 00:00:00', '2019-03-12 11:23:07', '1', '1', 'N');
INSERT INTO `permission` VALUES ('243', '240', '删除', '公司明细管理', '3', 'supplierDetailRemove', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2019-03-12 00:00:00', '2019-03-12 11:22:45', '1', '1', 'N');
INSERT INTO `permission` VALUES ('244', '0', '销售管理', '', '2', 'mgrSaleManage', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-woman', 'A', '', '2019-03-13 00:00:00', '2019-03-13 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('245', '244', '销售报表', '销售管理', '1', 'mgrSalesReport', 'F', 'Y', 'closed', 'manage/salesReport/main', 'icon-color', 'A', '', '2019-03-13 00:00:00', '2019-03-13 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('246', '245', '新增', '销售报表', '1', 'salesReporAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-add', 'A', '', '2019-03-13 00:00:00', '2019-03-13 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('247', '245', '修改', '销售报表', '2', 'salesReportUpdate', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2019-03-13 00:00:00', '2019-03-13 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('248', '245', '删除', '销售报表', '3', 'salesReportRemove', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2019-03-13 00:00:00', '2019-03-13 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('249', '244', '流水管理', '销售管理', '2', 'mgrRunningAccount', 'F', 'N', 'closed', 'manage/runningAccount/main', 'icon-tools', 'I', '', '2019-03-14 00:00:00', '2019-03-14 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('250', '249', '新增', '流水管理', '1', 'mgrRunningAccountAdd', 'O', 'N', 'open', 'javascript:void(0);', 'icon-add', 'I', '', '2019-03-14 00:00:00', '2019-03-14 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('251', '249', '修改', '流水管理', '2', 'mgrRunningAccountUpdate', 'O', 'N', 'open', 'javascript:void(0);', 'icon-edit', 'I', '', '2019-03-14 00:00:00', '2019-03-14 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('252', '249', '删除', '流水管理', '3', 'mgrRunningAccountRemove', 'O', 'N', 'open', 'javascript:void(0);', 'icon-remove', 'I', '', '2019-03-14 00:00:00', '2019-03-14 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('253', '249', '下载', '流水管理', '4', 'mgrRunningAccountDownload', 'O', 'N', 'open', 'javascript:void(0);', '', 'I', '', '2019-03-15 00:00:00', '2019-03-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('254', '0', '流水管理', '', '1', 'mgrFlowManagement', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-info', 'A', '', '2019-03-15 00:00:00', '2019-03-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('255', '254', '流水账明细', '流水管理', '1', 'mgrRunningAccount', 'F', 'Y', 'closed', 'manage/runningAccount/main', 'icon-star', 'A', '', '2019-03-15 00:00:00', '2019-03-15 21:14:56', '1', '1', 'N');
INSERT INTO `permission` VALUES ('256', '255', '新增', '流水账明细', '1', 'mgrRunningAccountAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-add', 'A', '', '2019-03-15 00:00:00', '2019-03-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('257', '255', '修改', '流水账明细', '2', 'mgrRunningAccountUpdate', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2019-03-15 00:00:00', '2019-03-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('258', '255', '删除', '流水账明细', '3', 'mgrRunningAccountRemove', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2019-03-15 00:00:00', '2019-03-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('259', '255', '导出', '流水账明细', '4', 'mgrRunningAccountDownload', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-puzzle', 'A', '', '2019-03-15 00:00:00', '2019-03-15 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('260', '245', '导出', '销售报表', '4', 'mgrSalesReportDownload', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-user', 'A', '', '2019-03-16 00:00:00', '2019-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('261', '240', '导出', '采购明细', '4', 'mgrSupplierDetailDownload', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-man', 'A', '', '2019-03-16 00:00:00', '2019-03-16 00:00:00', '1', '1', 'N');
INSERT INTO `permission` VALUES ('262', '236', '导出', '采购管理', '4', 'companyExportFinance', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-color', 'A', '', '2019-03-16 00:00:00', '2019-03-16 00:00:00', '1', '1', 'N');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLEID` int(11) NOT NULL auto_increment COMMENT '角色编码',
  `NAME` varchar(55) default NULL COMMENT '角色名称',
  `DESCRIPTION` varchar(500) default NULL COMMENT '角色描述',
  `STATUS` char(1) default NULL COMMENT '角色状态',
  `CREATED` datetime default NULL COMMENT '创造时间',
  `LASTMOD` datetime default NULL COMMENT '修改时间',
  `SORT` int(10) default NULL COMMENT '排序',
  `CREATER` int(10) default NULL COMMENT '创建人',
  `MODIFYER` int(10) default NULL COMMENT '修改人',
  PRIMARY KEY  (`ROLEID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='系统角色资料';

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
INSERT INTO `role` VALUES ('29', '一般角色', '', 'A', '2019-03-12 00:00:00', '2019-03-12 00:00:00', null, '1', '1');

-- ----------------------------
-- Table structure for `rolepermission`
-- ----------------------------
DROP TABLE IF EXISTS `rolepermission`;
CREATE TABLE `rolepermission` (
  `RPID` int(11) NOT NULL auto_increment COMMENT '主键',
  `ROLEID` int(11) NOT NULL COMMENT '角色代码',
  `PERMISSIONID` int(11) NOT NULL COMMENT '权限代码',
  `STATUS` char(1) default NULL COMMENT '状态',
  `CREATED` datetime default NULL COMMENT '创造日期',
  `LASTMOD` datetime default NULL COMMENT '修改日期',
  `CREATER` int(10) default NULL COMMENT '创建人',
  `MODIFYER` int(10) default NULL COMMENT '修改人',
  PRIMARY KEY  (`RPID`),
  KEY `FK_ROLE_PERMISSION1` (`ROLEID`),
  KEY `FK_ROLE_PERMISSION2` (`PERMISSIONID`)
) ENGINE=MyISAM AUTO_INCREMENT=449 DEFAULT CHARSET=utf8 COMMENT='角色权限资料';

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
INSERT INTO `rolepermission` VALUES ('435', '29', '235', 'A', '2019-03-12 00:00:00', '2019-03-23 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('436', '29', '237', 'A', '2019-03-12 00:00:00', '2019-03-23 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('437', '29', '238', 'A', '2019-03-12 00:00:00', '2019-03-23 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('438', '29', '241', 'A', '2019-03-12 00:00:00', '2019-03-23 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('439', '29', '240', 'A', '2019-03-12 00:00:00', '2019-03-23 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('441', '29', '236', 'A', '2019-03-12 00:00:00', '2019-03-23 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('442', '29', '243', 'A', '2019-03-13 00:00:00', '2019-03-23 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('444', '29', '245', 'A', '2019-03-14 00:00:00', '2019-03-23 00:00:00', '1', '1');
INSERT INTO `rolepermission` VALUES ('445', '29', '244', 'A', '2019-03-14 00:00:00', '2019-03-23 00:00:00', '1', '1');

-- ----------------------------
-- Table structure for `runningaccount`
-- ----------------------------
DROP TABLE IF EXISTS `runningaccount`;
CREATE TABLE `runningaccount` (
  `Id` int(11) NOT NULL auto_increment,
  `costAttribute` varchar(255) default NULL COMMENT '费用属性',
  `costAttributeType` varchar(255) default '' COMMENT '属性类别',
  `companyName` varchar(255) default NULL COMMENT '单位名称',
  `projectName` varchar(255) default NULL COMMENT '项目',
  `abstractContent` varchar(255) default NULL COMMENT '摘要',
  `entrys` double(20,2) unsigned default NULL COMMENT '入账（借）',
  `outs` double(20,2) unsigned default NULL COMMENT '出账（贷）',
  `payment` varchar(255) default NULL COMMENT '支付方式',
  `payee` varchar(255) default NULL COMMENT '收款人',
  `remark` varchar(255) default NULL COMMENT '备注',
  `timedate` timestamp NULL default NULL COMMENT '明细产生时间',
  `row_creater` int(11) default NULL COMMENT '创建者',
  `row_modifier` int(11) default NULL COMMENT '修改者',
  `row_create_time` timestamp NULL default NULL COMMENT '创建时间',
  `row_modify_time` timestamp NULL default NULL COMMENT '修改时间',
  `row_state` tinyint(1) default '1' COMMENT '状态:1-有效；0-无效',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of runningaccount
-- ----------------------------
INSERT INTO `runningaccount` VALUES ('1', '1', '1', '1', '1', '1', '1.00', '1.00', '1', '1', '1', '2019-03-05 00:00:00', '1', '1', '2019-12-30 01:00:00', '2019-03-15 10:31:38', '1');
INSERT INTO `runningaccount` VALUES ('2', '2', '3', '3', '3', '2', '3.00', '3.00', '2', '2', '2', null, '1', '1', '2019-03-14 18:22:18', '2019-03-14 18:24:34', '0');
INSERT INTO `runningaccount` VALUES ('3', '2', '2', '5', '2', '2', '2.00', '2.00', '2', '2', '2', '2019-03-15 00:00:00', '1', '1', '2019-03-15 10:31:49', '2019-03-15 20:56:19', '1');
INSERT INTO `runningaccount` VALUES ('4', '6', '6', '6', '6', '6', '6.00', '6.00', '6', '6', '6', '2019-03-01 00:00:00', '1', '1', '2019-03-16 11:35:18', '2019-03-16 11:35:18', '1');

-- ----------------------------
-- Table structure for `salesreport`
-- ----------------------------
DROP TABLE IF EXISTS `salesreport`;
CREATE TABLE `salesreport` (
  `Id` int(11) NOT NULL auto_increment,
  `customerName` varchar(255) default NULL COMMENT '客户名称',
  `teaName` varchar(255) default NULL COMMENT '品名',
  `color` varchar(255) default NULL COMMENT '色别',
  `setCount` int(11) unsigned default NULL COMMENT '件装 套数',
  `saleCount` int(11) unsigned default NULL COMMENT '发货  件数',
  `totalCount` int(11) unsigned default NULL COMMENT '合计数量',
  `price` double(20,2) unsigned default NULL COMMENT '单价',
  `totalPrice` double(20,2) unsigned default NULL COMMENT '合计金额',
  `subtotal` varchar(255) default NULL COMMENT '小计',
  `remark` varchar(255) default NULL COMMENT '备注',
  `timedate` date default NULL COMMENT '明细产生时间',
  `row_creater` int(11) default NULL COMMENT '创建者',
  `row_modifier` int(11) default NULL COMMENT '修改者',
  `row_create_time` timestamp NULL default NULL COMMENT '创建时间',
  `row_modify_time` timestamp NULL default NULL COMMENT '修改时间',
  `row_state` tinyint(1) default '1' COMMENT '状态:1-有效；0-无效',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salesreport
-- ----------------------------
INSERT INTO `salesreport` VALUES ('1', '1', '1', '1', '1', '1', '1', '1.00', '1.00', '1', '1', '2019-03-13', '1', '1', '2019-12-30 01:00:00', '2019-03-15 10:27:37', '1');
INSERT INTO `salesreport` VALUES ('2', '3', '2', '2', '2', '2', '2', '2.00', '3.00', '3', '3', null, '1', '1', '2019-03-14 15:27:32', '2019-03-14 15:33:30', '0');
INSERT INTO `salesreport` VALUES ('3', '2', '2', '2', '2', '2', '2', '2.00', '2.00', '2', '2', '2019-03-15', '1', '1', '2019-03-15 10:27:52', '2019-03-15 10:27:52', '1');
INSERT INTO `salesreport` VALUES ('4', '7', '7', '7', '7', '7', '7', '7.00', '7.00', '7', '7', '2019-03-01', '1', '1', '2019-03-16 11:35:40', '2019-03-16 11:35:40', '1');

-- ----------------------------
-- Table structure for `supplierdetail`
-- ----------------------------
DROP TABLE IF EXISTS `supplierdetail`;
CREATE TABLE `supplierdetail` (
  `Id` int(11) NOT NULL auto_increment,
  `company_finance_id` varchar(255) default NULL,
  `purchase_name` varchar(255) default NULL COMMENT '采购名称',
  `unit` varchar(255) default NULL COMMENT '单位',
  `amount` int(11) unsigned default NULL COMMENT '数量',
  `price` double(20,2) unsigned default NULL COMMENT '单价',
  `total` double(20,2) unsigned default NULL COMMENT '金额',
  `paid` double(20,2) unsigned default NULL COMMENT '已付款',
  `payment` varchar(255) default NULL COMMENT '付款方式',
  `timedate` date default NULL COMMENT '明细产生时间',
  `row_creater` int(11) default NULL COMMENT '创建者',
  `row_modifier` int(11) default NULL COMMENT '修改者',
  `row_create_time` timestamp NULL default NULL COMMENT '创建时间',
  `row_modify_time` timestamp NULL default NULL COMMENT '修改时间',
  `row_state` tinyint(1) default '1' COMMENT '状态:1-有效；0-无效',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplierdetail
-- ----------------------------
INSERT INTO `supplierdetail` VALUES ('1', '18', '2', '2', '2', '2.00', '2.00', '2.00', '2', null, '1', '1', '2019-12-30 01:00:00', '2019-03-14 15:31:56', '0');
INSERT INTO `supplierdetail` VALUES ('2', '2', '手纸', '提', '1', '1.00', '1.00', '1.00', '1', '2019-03-15', '1', '1', '2019-03-13 13:58:47', '2019-03-16 12:41:39', '0');
INSERT INTO `supplierdetail` VALUES ('3', '5', '1', '1', '1', '1.00', '1.00', '1.00', '1', null, '1', '1', '2019-03-13 14:00:42', '2019-03-13 15:31:01', '0');
INSERT INTO `supplierdetail` VALUES ('4', '4', '1', '1', '1', '1.00', '1.00', '1.00', '1', null, '1', '1', '2019-03-13 14:03:03', '2019-03-16 12:39:06', '0');
INSERT INTO `supplierdetail` VALUES ('5', '26', '3', '3', '3', '3.00', '3.00', '3.00', '3', null, '1', '1', '2019-03-13 14:06:46', '2019-03-16 12:39:04', '0');
INSERT INTO `supplierdetail` VALUES ('6', '23', '5', '5', '5', '5.00', '5.00', '5.00', '5', '2019-03-01', '1', '1', '2019-03-15 10:20:09', '2019-03-15 10:20:09', '1');
INSERT INTO `supplierdetail` VALUES ('7', '18', '5', '5', '5', '5.00', '5.00', '5.00', '5', '2019-03-12', '1', '1', '2019-03-15 20:45:10', '2019-03-15 20:45:10', '1');
INSERT INTO `supplierdetail` VALUES ('8', '27', '2', '2', '2', '2.00', '2.00', '2.00', '2', '2019-03-01', '1', '1', '2019-03-16 11:32:00', '2019-03-16 11:32:00', '1');
INSERT INTO `supplierdetail` VALUES ('9', '23', '5', '5', '5', '5.00', '5.00', '5.00', '5', '2019-03-04', '1', '1', '2019-03-16 11:53:27', '2019-03-16 11:53:27', '1');

-- ----------------------------
-- Table structure for `userrole`
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `URID` int(11) NOT NULL auto_increment,
  `USERID` int(11) NOT NULL default '0' COMMENT '用户代码',
  `ROLEID` int(11) default NULL COMMENT '角色代码',
  `STATUS` char(1) default NULL COMMENT '状态',
  `CREATED` datetime default NULL COMMENT '创造日期',
  `LASTMOD` datetime default NULL COMMENT '修改日期',
  `CREATER` int(10) default NULL COMMENT '创建人',
  `MODIFYER` int(10) default NULL COMMENT '修改人',
  PRIMARY KEY  (`URID`),
  KEY `FK_USER_ROLE1` (`USERID`),
  KEY `FK_USER_ROLE2` (`ROLEID`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='用户角色资料表';

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES ('1', '1', '1', 'A', '2013-05-24 00:00:00', '2013-06-22 13:43:22', '1', '1');
INSERT INTO `userrole` VALUES ('47', '38', '29', 'A', '2019-03-12 00:00:00', '2019-03-12 00:00:00', '1', '1');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `USERID` int(11) NOT NULL auto_increment COMMENT '用户代码',
  `MYID` varchar(50) default NULL COMMENT '用户自编码',
  `ACCOUNT` varchar(50) default NULL COMMENT '账号',
  `NAME` varchar(50) default NULL COMMENT '名称',
  `PASSWORD` varchar(128) default NULL COMMENT '密码',
  `EMAIL` varchar(200) default NULL COMMENT '电子邮箱',
  `LANG` varchar(20) default NULL COMMENT '语言',
  `THEME` varchar(20) default NULL COMMENT '样式',
  `FIRSTVISIT` datetime default NULL COMMENT '第一次登录',
  `PREVIOUSVISIT` datetime default NULL COMMENT '上一次登录',
  `LASTVISITS` datetime default NULL COMMENT '最后一次登录',
  `LOGINCOUNT` int(10) default NULL COMMENT '登录资数',
  `ISEMPLOYEE` int(1) default NULL COMMENT '是否是职工',
  `STATUS` char(1) default NULL COMMENT '状态',
  `IP` varchar(20) default NULL COMMENT 'IP地址',
  `DESCRIPTION` varchar(2000) default NULL COMMENT '备注',
  `QUESTIONID` int(10) default NULL COMMENT '问题代码',
  `ANSWER` varchar(100) default NULL COMMENT '回复',
  `ISONLINE` int(1) default NULL COMMENT '是否在线',
  `CREATED` datetime default NULL COMMENT '创造日期',
  `LASTMOD` datetime default NULL COMMENT '修改日期',
  `CREATER` int(10) default NULL COMMENT '创建人',
  `MODIFYER` int(10) default NULL COMMENT '修改人',
  `TEL` varchar(30) default NULL COMMENT '用户电话',
  `vestInCompany` varchar(50) default NULL,
  PRIMARY KEY  (`USERID`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='用户资料表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'A', 'system', 'system', '54B53072540EEEB8F8E9343E71F28176', '12@qq.com', null, null, null, null, null, null, null, 'A', null, '111111', null, null, null, null, '2013-06-14 00:00:00', '1', '1', '1111111', '');
INSERT INTO `users` VALUES ('38', 'lvzhi', 'lvzhi', 'lvzhi', 'e10adc3949ba59abbe56e057f20f883e', 'lvzhi@123.com', null, null, null, null, null, null, null, 'A', null, '', null, null, null, '2019-03-12 00:00:00', '2019-03-12 00:00:00', '1', '1', '15981858972', '');
