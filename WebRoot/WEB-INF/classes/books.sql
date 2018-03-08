/*
Navicat MySQL Data Transfer

Source Server         : luo
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : books

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-12-30 21:12:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` char(32) NOT NULL,
  `adminname` varchar(50) DEFAULT NULL,
  `adminpwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('a1', '罗玲玲', '123');

-- ----------------------------
-- Table structure for `t_book`
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `bid` char(32) NOT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `currPrice` decimal(8,2) DEFAULT NULL,
  `discount` decimal(3,1) DEFAULT NULL,
  `press` varchar(100) DEFAULT NULL,
  `publishtime` char(10) DEFAULT NULL,
  `edition` int(11) DEFAULT NULL,
  `pageNum` int(11) DEFAULT NULL,
  `wordNum` int(11) DEFAULT NULL,
  `printtime` char(10) DEFAULT NULL,
  `booksize` int(11) DEFAULT NULL,
  `paper` varchar(50) DEFAULT NULL,
  `cid` char(32) DEFAULT NULL,
  `image_w` varchar(100) DEFAULT NULL,
  `image_b` varchar(100) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`bid`),
  KEY `orderBy` (`orderBy`),
  KEY `FK_t_book_t_category` (`cid`),
  CONSTRAINT `FK_t_book_t_category` FOREIGN KEY (`cid`) REFERENCES `t_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('12A66F29BCD144139F4FF50E9A3DB687', '《追风筝的人》', 'AAA', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'EF03913AB5F446C3B21C68D99160965B', 'book_img/22606836-1_w.jpg', 'book_img/22606836-1_b.jpg', '132');
INSERT INTO `t_book` VALUES ('146A08662ED940B28E1E2C08D6CAAFC8', '《挪威的森林》', 'BBB', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'EF03913AB5F446C3B21C68D99160965B', 'book_img/22588603-1_w.jpg', 'book_img/22588603-1_b.jpg', '129');
INSERT INTO `t_book` VALUES ('14F96E0207CB450597C6AE30A1EBF2C1', '《白夜行》', '东野圭吾', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'EF03913AB5F446C3B21C68D99160965B', 'book_img/22579686-1_w.jpg', 'book_img/22579686-1_b.jpg', '128');
INSERT INTO `t_book` VALUES ('2748C49A96A04BBCB5A65C3AA3C97E08', '恶意', '东野圭吾', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'EF03913AB5F446C3B21C68D99160965B', 'book_img/22577578-1_w.jpg', 'book_img/22577578-1_b.jpg', '127');
INSERT INTO `t_book` VALUES ('3E80A09E71084B588BFF4FA9E58DFA64', '计算机专业英语', 'CCC', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '55EF47827572489393EFBC9DF41CB144', 'book_img/20420983-1_w.jpg', 'book_img/20420983-1_b.jpg', '109');
INSERT INTO `t_book` VALUES ('40F7AB7D2B1A40109B1AD61AB539EC4C', 'Java 2', 'DDD', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '5F79D0D246AD4216AC04E9C5FAB3199E', 'book_img/21049601-1_w_1.jpg', 'book_img/21049601-1_b.jpg', '120');
INSERT INTO `t_book` VALUES ('431F840B7F6A44C397BCEA77AD6AFCC6', '数据库', 'VVV', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '96F209F79DB242E9B99CC1B98FAB01DB', 'book_img/21110929-1_w_1.jpg', 'book_img/21110929-1_b.jpg', '122');
INSERT INTO `t_book` VALUES ('446B75CBA0AB427A9907924249509EC2', 'JSP', 'SSS', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'D45D96DA359A4FEAB3AB4DCF2157FC06', 'book_img/20991549-1_w_1.jpg', 'book_img/20991549-1_b.jpg', '118');
INSERT INTO `t_book` VALUES ('4CB9A8F32B284FAE971F3D9EB3D30763', '操作系统', 'WWW', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'FAB7B7F7084F4D57A0808ADC61117683', 'book_img/20915948-1_w_3.jpg', 'book_img/20915948-1_b.jpg', '116');
INSERT INTO `t_book` VALUES ('50FEC841D9BF4B49A36519F6A210D224', '《麦田里的守望者》', 'GFGDFG', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'EF03913AB5F446C3B21C68D99160965B', 'book_img/22606835-1_w.jpg', 'book_img/22606835-1_b.jpg', '131');
INSERT INTO `t_book` VALUES ('519248283BF64EAEBDA5CEB4BD2C940C', 'c语言', 'FF', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '922E6E2DB04143D39C9DDB26365B3EE8', 'book_img/20813806-1_w_1.jpg', 'book_img/20813806-1_b.jpg', '115');
INSERT INTO `t_book` VALUES ('62C05E2D616447D483AF9A744C006C9D', '中国近代史纲要', 'GD', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'D44DBA2EDEDB4890950C1413FB5D6C1B', 'book_img/22623020-1_w.jpg', 'book_img/22623020-1_b.jpg', '133');
INSERT INTO `t_book` VALUES ('68DA234B7B3640ACB06157AF04F29DFE', '嵌入式系统', 'DFG', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '65830AB237EF428BAE9B7ADC78A8D1F6', 'book_img/20637368-1_w_2.jpg', 'book_img/20637368-1_b_2.jpg', '112');
INSERT INTO `t_book` VALUES ('73DC226FC9EA45DB92C9CAFAD168C161', '编译原理', 'FSDF', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '5F79D0D246AD4216AC04E9C5FAB3199E', 'book_img/20756351-1_w_1.jpg', 'book_img/20756351-1_b_1.jpg', '113');
INSERT INTO `t_book` VALUES ('7673D575196945F284B80A4DDFF47A4D', '沪江英语单词', 'HGH', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '55EF47827572489393EFBC9DF41CB144', 'book_img/20417467-1_w.jpg', 'book_img/20417467-1_b.jpg', '108');
INSERT INTO `t_book` VALUES ('7917F5B19A0948FD9551932909328E4E', 'JSP使用教程', '耿祥文', '20.00', '10.00', '5.0', '清华大学出版社', '2011-1-1', '2', '605', '1037000', '2011-1-1', '16', '胶版纸', 'D45D96DA359A4FEAB3AB4DCF2157FC06', 'book_img/20991549-1_w_1.jpg', 'book_img/20991549-1_b.jpg', '64');
INSERT INTO `t_book` VALUES ('7FD7F50B15F74248AA769798909F8653', '人性的弱点', '戴尔.卡耐基', '20.00', '10.00', '5.0', '中国电力出版社', '2005-11-1', '1', '718', '668000', '2005-11-1', '16', '胶版纸', 'A99502DAC4344FEA8EE8060475AE331A', 'book_img/9062293-1_w.jpg', 'book_img/9062293-1_b.jpg', '35');
INSERT INTO `t_book` VALUES ('80D64AF745074FAD9692EEE456CCCDFF', '解忧杂货铺', '东野圭吾', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'EF03913AB5F446C3B21C68D99160965B', 'book_img/22605701-1_w.jpg', 'book_img/22605701-1_b.jpg', '130');
INSERT INTO `t_book` VALUES ('812A6B43319741A383902F59028EE5BF', '毛概', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'D44DBA2EDEDB4890950C1413FB5D6C1B', 'book_img/22623766-1_w.jpg', 'book_img/22623766-1_b.jpg', '134');
INSERT INTO `t_book` VALUES ('81DB1D02287444EFBA2DC0B402E31E2B', '《鱼羊野史》', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '4E8686E5AA9A48B088C04CBD01B5B4BF', 'book_img/21122188-1_w_1.jpg', 'book_img/21122188-1_b.jpg', '126');
INSERT INTO `t_book` VALUES ('84B7402F923D4A7C95219106F19E4640', '计算机操作系统', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'FAB7B7F7084F4D57A0808ADC61117683', 'book_img/20988080-1_w_1.jpg', 'book_img/20988080-1_b.jpg', '117');
INSERT INTO `t_book` VALUES ('88E022E8D9E64C57914B8F0CF220F327', '数学建模', 'Craig Walls', '50.00', '25.00', '5.0', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '9FAEAFA106F64821958CD111FC6402EB', 'book_img/9265169-1_w.jpg', 'book_img/9265169-1_b.jpg', '104');
INSERT INTO `t_book` VALUES ('90E423DBE56042838806673DB3E86BD3', '《追风筝的人》', '卡耐基', '40.00', '20.00', '5.0', '机械工业出版社', '2012-2-1', '2', '399', '0', '2012-2-1', '16', '胶版纸', 'A99502DAC4344FEA8EE8060475AE331A', 'book_img/22606836-1_w.jpg', 'book_img/22606836-1_b.jpg', '45');
INSERT INTO `t_book` VALUES ('9182EDEC9E644CF6A36D8A36E8FA48FF', '人性的弱点', '无', '20.00', '10.00', '5.0', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'A99502DAC4344FEA8EE8060475AE331A', 'book_img/9062293-1_w.jpg', 'book_img/9062293-1_b.jpg', '103');
INSERT INTO `t_book` VALUES ('A5A93B225DA247F69BD4D29A67463737', '计算机系统结构', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'FAB7B7F7084F4D57A0808ADC61117683', 'book_img/20459091-1_w.jpg', 'book_img/20459091-1_b.jpg', '111');
INSERT INTO `t_book` VALUES ('A8EF76FD21A645109538614DEA85F3F7', '鱼羊野史', '高晓松', '40.00', '20.00', '5.0', '机械工业出版社', '2011-6-1', '1', '586', '0', '2011-6-1', '16', '胶版纸', 'A99502DAC4344FEA8EE8060475AE331A', 'book_img/21122188-1_w_1.jpg', 'book_img/21122188-1_b.jpg', '30');
INSERT INTO `t_book` VALUES ('AC8C631B3AF3459A91D6BE662DC8864D', 'ASP.NET', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '922E6E2DB04143D39C9DDB26365B3EE8', 'book_img/20810282-1_w_1.jpg', 'book_img/20810282-1_b.jpg', '114');
INSERT INTO `t_book` VALUES ('AF28ED8F692C4288B32CF411CBDBFC23', '新课标高中英语语法', '无', '20.00', '10.00', '5.0', '电子工业出版社', '2010-8-1', '1', '0', '0', '2010-8-1', '16', '胶版纸', '55EF47827572489393EFBC9DF41CB144', 'book_img/20928547-1_w_1.jpg', 'book_img/20928547-1_b.jpg', '55');
INSERT INTO `t_book` VALUES ('BC1CF74563CE48B4A08AE90D7177B62C', 'Java从入门到精通', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '5F79D0D246AD4216AC04E9C5FAB3199E', 'book_img/21006995-1_w_2.jpg', 'book_img/21006995-1_b.jpg', '119');
INSERT INTO `t_book` VALUES ('C23E6E8A6DB94E27B6E2ABD39DC21AF5', '星火英语四级词汇', '玛德高', '20.00', '10.00', '5.0', '东南大学出版社', '2009-1-1', '1', '153', '181000', '2009-1-1', '16', '胶版纸', '55EF47827572489393EFBC9DF41CB144', 'book_img/20412979-1_w.jpg', 'book_img/20412979-1_b.jpg', '95');
INSERT INTO `t_book` VALUES ('C86D3F6FACB449BEBD940D9307ED4A47', '《白夜行》', '东野圭吾', '59.00', '40.70', '6.9', '机械工业出版社', '2012-1-1', '1', '303', '0', '2012-1-1', '16', '胶版纸', 'EF03913AB5F446C3B21C68D99160965B', 'book_img/22579686-1_w.jpg', 'book_img/22579686-1_b.jpg', '84');
INSERT INTO `t_book` VALUES ('CAC8BF3A092C4A59A719F766C09685EC', '国学基础', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '45EBB94C1CD6486FAA4755EDD4208663', 'book_img/9288920-1_w.jpg', 'book_img/9288920-1_b.jpg', '105');
INSERT INTO `t_book` VALUES ('D2ABA8B06C524632846F27C34568F3CE', '移动计算（修订版）', '袁满、杜睿山、张岩、黄刚', '20.00', '10.00', '5.0', '哈尔滨工业大学出版社', '2009-2-1', '1', '784', '805000', '2009-2-1', '16', '胶版纸', '7CEF1383927E4BABB60C19D0B11B78E0', 'book_img/20500255-1_w.jpg', 'book_img/20500255-1_b.jpg', '62');
INSERT INTO `t_book` VALUES ('D3AA11512B5A4FB7A533BE65C54B46E0', '浮生六记', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '4E8686E5AA9A48B088C04CBD01B5B4BF', 'book_img/21110930-1_w_1.jpg', 'book_img/21110930-1_b.jpg', '123');
INSERT INTO `t_book` VALUES ('D68D39C1DB714B969B629D2FB1A26692', '天才在左，疯子在右', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '4E8686E5AA9A48B088C04CBD01B5B4BF', 'book_img/21117631-1_w_1.jpg', 'book_img/21117631-1_b.jpg', '124');
INSERT INTO `t_book` VALUES ('DF4E74EEE89B43229BB8212F0B858C38', 'UML面向对象建模与设计（第2版）', 'Michael Blaha James Rumbaugh', '20.00', '10.00', '5.0', '人民邮电出版社', '2010-2-1', '1', '695', '1148800', '2010-2-1', '16', '胶版纸', '682EDBF4C51F4768A953FCDE67C0FCF5', 'book_img/20773347-1_w_1.jpg', 'book_img/20773347-1_b.jpg', '39');
INSERT INTO `t_book` VALUES ('ED67E5F413C24247BC0206FB938823E1', 'Oracle', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '96F209F79DB242E9B99CC1B98FAB01DB', 'book_img/9317290-1_w.jpg', 'book_img/9317290-1_b.jpg', '106');
INSERT INTO `t_book` VALUES ('F162B4F8DF404634A9984C28D5C48C61', '考研真题', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '55EF47827572489393EFBC9DF41CB144', 'book_img/21118835-1_w_1.jpg', 'book_img/21118835-1_b.jpg', '125');
INSERT INTO `t_book` VALUES ('F693239BC3B3444C8538ABE7411BB38E', '计算机操作系统', '汤晓丹', '20.00', '10.00', '5.0', '西安电子科技大学出版社', '2011-1-1', '1', '922', '1473000', '2011-1-1', '16', '胶版纸', '458795C27E7346A8A5F1B942319297E0', 'book_img/20988080-1_w_1.jpg', 'book_img/20988080-1_b.jpg', '41');
INSERT INTO `t_book` VALUES ('F78C94641DB4475BBA1E72A07DF9B3AE', '吸血鬼日记地道口语', '无', '60.00', '30.00', '5.0', '电子工业出版社', '2006-7-1', '1', '625', '1030400', '2006-7-1', '16', '胶版纸', '55EF47827572489393EFBC9DF41CB144', 'book_img/9186890-1_w.jpg', 'book_img/9186890-1_b.jpg', '69');
INSERT INTO `t_book` VALUES ('FABC6A162E61478DBC864E87D853FECF', '电子商务概论', 'Craig Walls', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', 'A9CFBED0F77746C5BD751F2502FAB2CD', 'book_img/22628333-1_w.jpg', 'book_img/22628333-1_b.jpg', '135');
INSERT INTO `t_book` VALUES ('FC232CD9B6E6411BBBB1A5B781D2C3C9', '时光漫长，我们身在何方', '读者', '40.00', '20.00', '5.0', '电子工业出版社', '2002-10-1', '1', '1024', '16704000', '2002-10-1', '16', '胶版纸', 'A99502DAC4344FEA8EE8060475AE331A', 'book_img/696673-1_w.jpg', 'book_img/696673-1_b.jpg', '67');
INSERT INTO `t_book` VALUES ('FEC3740CF30E442A94021911A25EF0D7', '中国近代史纲要', 'Gary Mak　Josh Long　Daniel Rubio', '40.00', '20.00', '5.0', '高等教育出版社', '2012-3-1', '1', '938', '1322000', '2012-3-1', '16', '胶版纸', 'D44DBA2EDEDB4890950C1413FB5D6C1B', 'book_img/22623020-1_w.jpg', 'book_img/22623020-1_b.jpg', '82');
INSERT INTO `t_book` VALUES ('FED61B4445934D4CA0D1AE0182A901C3', '软件工程导论', 'AAA', '59.00', '40.70', '6.9', '人民邮电出版社', '2013-6-1', '1', '374', '48700', '2013-6-1', '16', '胶版纸', '5F79D0D246AD4216AC04E9C5FAB3199E', 'book_img/21108671-1_w_1.jpg', 'book_img/21108671-1_b.jpg', '121');

-- ----------------------------
-- Table structure for `t_cartitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_cartitem`;
CREATE TABLE `t_cartitem` (
  `cartItemId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cartItemId`),
  KEY `orderBy` (`orderBy`),
  KEY `FK_t_cartitem_t_user` (`uid`),
  KEY `FK_t_cartitem_t_book` (`bid`),
  CONSTRAINT `FK_t_cartitem_t_book` FOREIGN KEY (`bid`) REFERENCES `t_book` (`bid`),
  CONSTRAINT `FK_t_cartitem_t_user` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cartitem
-- ----------------------------

-- ----------------------------
-- Table structure for `t_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `cid` char(32) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `pid` char(32) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cname` (`cname`),
  KEY `FK_t_category_t_category` (`pid`),
  KEY `orderBy` (`orderBy`),
  CONSTRAINT `FK_t_category_t_category` FOREIGN KEY (`pid`) REFERENCES `t_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '程序设计', null, '程序设计分类', '1');
INSERT INTO `t_category` VALUES ('2A3A12C7E2744BF5979709A3A3F68CAA', '小说', null, '包括各种各样的小说', '36');
INSERT INTO `t_category` VALUES ('4', '操作系统/系统开发', null, '操作系统/系统开发', '4');
INSERT INTO `t_category` VALUES ('458795C27E7346A8A5F1B942319297E0', '系统开发', '4', '系统开发分类', '29');
INSERT INTO `t_category` VALUES ('45EBB94C1CD6486FAA4755EDD4208663', '文学', '48B923DF9259461BB9990FDD986E0888', '文学类', '44');
INSERT INTO `t_category` VALUES ('48B923DF9259461BB9990FDD986E0888', '教育', null, '教育类', '42');
INSERT INTO `t_category` VALUES ('4D072DEB23DB448BAA6013C239F6A68E', '时尚/美妆', 'CEED63B67B4B4391B387FCC5FDC56708', '时尚/美妆', '55');
INSERT INTO `t_category` VALUES ('4E8686E5AA9A48B088C04CBD01B5B4BF', '武侠小说', '2A3A12C7E2744BF5979709A3A3F68CAA', '武侠小说', '39');
INSERT INTO `t_category` VALUES ('5', '数据库', null, '数据库', '5');
INSERT INTO `t_category` VALUES ('55EF47827572489393EFBC9DF41CB144', '外语', '48B923DF9259461BB9990FDD986E0888', '外语类', '43');
INSERT INTO `t_category` VALUES ('5F79D0D246AD4216AC04E9C5FAB3199E', 'Java', '1', 'Java分类', '10');
INSERT INTO `t_category` VALUES ('6', '网络与数据通讯', null, '网络与数据通讯!', '6');
INSERT INTO `t_category` VALUES ('65830AB237EF428BAE9B7ADC78A8D1F6', 'Linux', '4', 'Linux分类', '28');
INSERT INTO `t_category` VALUES ('682EDBF4C51F4768A953FCDE67C0FCF5', 'UML', '1', 'UML分类', '41');
INSERT INTO `t_category` VALUES ('7CEF1383927E4BABB60C19D0B11B78E0', '移动计算', '6', '移动计算类', '46');
INSERT INTO `t_category` VALUES ('7DB9D32E53AB4EE287C7666BEF0AC496', '旅游/地图', 'CEED63B67B4B4391B387FCC5FDC56708', '旅游/地图', '56');
INSERT INTO `t_category` VALUES ('922E6E2DB04143D39C9DDB26365B3EE8', 'C C++ VC VC++', '1', 'C C++ VC VC++分类', '12');
INSERT INTO `t_category` VALUES ('96F209F79DB242E9B99CC1B98FAB01DB', '数据库理论', '5', '数据库理论分类', '33');
INSERT INTO `t_category` VALUES ('9FAEAFA106F64821958CD111FC6402EB', '数学', '48B923DF9259461BB9990FDD986E0888', '数学类', '47');
INSERT INTO `t_category` VALUES ('A99502DAC4344FEA8EE8060475AE331A', '言情小说', '2A3A12C7E2744BF5979709A3A3F68CAA', '言情小说', '38');
INSERT INTO `t_category` VALUES ('A9CFBED0F77746C5BD751F2502FAB2CD', '电子商务 电子政务', '6', '电子商务 电子政务分类', '35');
INSERT INTO `t_category` VALUES ('C8E274EE5C99499080A98E24F0BD2E03', '.NET', '1', '.NET分类', '15');
INSERT INTO `t_category` VALUES ('CEED63B67B4B4391B387FCC5FDC56708', '阅享', null, '和生活息息相关的书籍', '54');
INSERT INTO `t_category` VALUES ('D44DBA2EDEDB4890950C1413FB5D6C1B', '历史', '48B923DF9259461BB9990FDD986E0888', '史诗类', '45');
INSERT INTO `t_category` VALUES ('D45D96DA359A4FEAB3AB4DCF2157FC06', 'JSP', '1', 'JSP分类', '11');
INSERT INTO `t_category` VALUES ('EF03913AB5F446C3B21C68D99160965B', '国外小说', '2A3A12C7E2744BF5979709A3A3F68CAA', '国外小说', '40');
INSERT INTO `t_category` VALUES ('FAB7B7F7084F4D57A0808ADC61117683', 'Windows', '4', 'Windows分类', '26');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `oid` char(32) NOT NULL,
  `ordertime` char(19) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FK_t_order_t_user` (`uid`),
  CONSTRAINT `FK_t_order_t_user` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('03440451385B47E0BBA7F8B2A2139BD4', '2017-12-22 00:23:17', '30.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('177472C2648C45EFAD5FCA3E8F2A4E5C', '2017-12-22 00:24:17', '10.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('6A1764ECD3B54DDCB90654714DE08F1B', '2017-12-22 00:25:09', '20.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('812FE178EBC34C5D9D4243D91AD129EA', '2017-12-22 00:24:30', '10.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('8F6813EF2AC0438B803046AAE87599BC', '2017-12-22 00:24:51', '20.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('90B29915A400479C8D8120AF37B8359B', '2017-12-30 18:27:35', '20.00', '1', '东北石油大学启智小广场', 'D038097B132444F6BDFDC90AB36E7F62');
INSERT INTO `t_order` VALUES ('91115E9040524B6B877493097E232D12', '2017-12-22 00:25:25', '40.70', '5', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('98575D1723AB4DD99DC5C49F714CAF32', '2017-12-30 19:14:10', '40.70', '1', '东北石油大学启智小广场', 'D038097B132444F6BDFDC90AB36E7F62');
INSERT INTO `t_order` VALUES ('9AB1F9BA4BAC4D7686D4543BD4EA8C56', '2017-12-22 00:25:17', '20.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('AFDC6814FC154465BAB71080D8A4FFD7', '2017-12-22 00:25:00', '10.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('D327955EF7234FD18E1C4B653EF35F02', '2017-12-22 00:24:41', '10.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');
INSERT INTO `t_order` VALUES ('F0AFAF450C1A4A12B7E02EE94DE3A8F4', '2017-12-22 00:25:37', '30.00', '1', '东北石油大学启智小广场', '872EA084DA9B4E51B81224F03760EA9B');

-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `orderItemId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `currPrice` decimal(8,2) DEFAULT NULL,
  `image_b` varchar(100) DEFAULT NULL,
  `oid` char(32) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `FK_t_orderitem_t_order` (`oid`),
  CONSTRAINT `FK_t_orderitem_t_order` FOREIGN KEY (`oid`) REFERENCES `t_order` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('0F0A0ED2CAAE4858960B3CCE66F011A1', '1', '10.00', 'DF4E74EEE89B43229BB8212F0B858C38', 'UML面向对象建模与设计（第2版）', '10.00', 'book_img/20773347-1_b.jpg', '177472C2648C45EFAD5FCA3E8F2A4E5C');
INSERT INTO `t_orderitem` VALUES ('1CFC0780DC104D2A931E01A37CA4A4CC', '1', '30.00', 'F78C94641DB4475BBA1E72A07DF9B3AE', '吸血鬼日记地道口语', '30.00', 'book_img/9186890-1_b.jpg', 'F0AFAF450C1A4A12B7E02EE94DE3A8F4');
INSERT INTO `t_orderitem` VALUES ('5721DFE378B64B1693A2CF54272F6027', '1', '10.00', '7FD7F50B15F74248AA769798909F8653', '人性的弱点', '10.00', 'book_img/9062293-1_b.jpg', 'AFDC6814FC154465BAB71080D8A4FFD7');
INSERT INTO `t_orderitem` VALUES ('6ED8ADC62D0941EE81C05AD4E77928B7', '1', '20.00', '90E423DBE56042838806673DB3E86BD3', '《追风筝的人》', '20.00', 'book_img/22606836-1_b.jpg', '6A1764ECD3B54DDCB90654714DE08F1B');
INSERT INTO `t_orderitem` VALUES ('72CE79A287FF4CB8A5D25C0DBE6C7E14', '1', '20.00', 'FC232CD9B6E6411BBBB1A5B781D2C3C9', '时光漫长，我们身在何方', '20.00', 'book_img/696673-1_b.jpg', '9AB1F9BA4BAC4D7686D4543BD4EA8C56');
INSERT INTO `t_orderitem` VALUES ('7D671EEAFB3E46B1A48C9290AE0A2000', '1', '20.00', 'FEC3740CF30E442A94021911A25EF0D7', '中国近代史纲要', '20.00', 'book_img/22623020-1_b.jpg', '90B29915A400479C8D8120AF37B8359B');
INSERT INTO `t_orderitem` VALUES ('850BB9C50F5241DD9993D567A6BEB349', '1', '40.70', 'C86D3F6FACB449BEBD940D9307ED4A47', '《白夜行》', '40.70', 'book_img/22579686-1_b.jpg', '91115E9040524B6B877493097E232D12');
INSERT INTO `t_orderitem` VALUES ('8B5B4624098F4711B1994AD8EACBAFBB', '1', '10.00', 'D2ABA8B06C524632846F27C34568F3CE', '移动计算（修订版）', '10.00', 'book_img/20500255-1_b.jpg', 'D327955EF7234FD18E1C4B653EF35F02');
INSERT INTO `t_orderitem` VALUES ('A372CD20FBC24018A0FAA97ED9581940', '3', '30.00', '7917F5B19A0948FD9551932909328E4E', 'JSP使用教程', '10.00', 'book_img/20991549-1_b.jpg', '03440451385B47E0BBA7F8B2A2139BD4');
INSERT INTO `t_orderitem` VALUES ('AC74B31A57004B2298677B7C8656E39B', '1', '20.00', 'A8EF76FD21A645109538614DEA85F3F7', '鱼羊野史', '20.00', 'book_img/21122188-1_b.jpg', '8F6813EF2AC0438B803046AAE87599BC');
INSERT INTO `t_orderitem` VALUES ('B81503E5CB304124B78356D2CFFBB1C3', '1', '40.70', 'BC1CF74563CE48B4A08AE90D7177B62C', 'Java从入门到精通', '40.70', 'book_img/21006995-1_b.jpg', '98575D1723AB4DD99DC5C49F714CAF32');
INSERT INTO `t_orderitem` VALUES ('DE5DB54E3BC6422A94A4453F29E78D32', '1', '10.00', 'F693239BC3B3444C8538ABE7411BB38E', '计算机操作系统', '10.00', 'book_img/20988080-1_b.jpg', '812FE178EBC34C5D9D4243D91AD129EA');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` char(32) NOT NULL,
  `loginname` varchar(50) DEFAULT NULL,
  `loginpass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `activationCode` char(64) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `loginname` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('872EA084DA9B4E51B81224F03760EA9B', '罗玲玲', '123', '1234567890@qq.com', '1', 'EE463664A4E14B2EB2CEE222A5A1B7694A536D9D31A44F6AA3AEFF498007FBE0');
INSERT INTO `t_user` VALUES ('D038097B132444F6BDFDC90AB36E7F62', 'luo', '123', '1234567891@qq.com', '1', 'C8D52983BA5D480DA3F0ED07E7FBF6D13FE7DFC7A562481BBA89665415D10EA6');
