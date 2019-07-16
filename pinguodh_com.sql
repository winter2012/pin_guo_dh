/*
Navicat MySQL Data Transfer

Source Server         : 103.193.173.252
Source Server Version : 50173
Source Host           : 103.193.173.252:3306
Source Database       : pinguodh_com

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2019-07-16 18:42:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cc_advert
-- ----------------------------
DROP TABLE IF EXISTS `cc_advert`;
CREATE TABLE `cc_advert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `link` varchar(255) NOT NULL COMMENT '链接地址',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `target` enum('_blank','_self') NOT NULL,
  `description` mediumtext NOT NULL COMMENT '描述',
  `sort_order` mediumint(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) NOT NULL,
  `type` enum('幻灯片','广告') NOT NULL DEFAULT '幻灯片' COMMENT '1幻灯片，2广告',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告幻灯片表-alizi.net';

-- ----------------------------
-- Records of cc_advert
-- ----------------------------
INSERT INTO `cc_advert` VALUES ('2', '0', 'yora', '', 'https://www.51s.in/02', '1', '_blank', 'https://www.51s.in/02', '0', '1562836336', '幻灯片');

-- ----------------------------
-- Table structure for cc_item
-- ----------------------------
DROP TABLE IF EXISTS `cc_item`;
CREATE TABLE `cc_item` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '标题名称',
  `host` varchar(255) NOT NULL COMMENT '主域名',
  `url` varchar(255) NOT NULL COMMENT '网址',
  `icon` varchar(100) NOT NULL COMMENT 'favicon',
  `logo` varchar(100) NOT NULL COMMENT 'logo',
  `description` varchar(255) NOT NULL COMMENT '描述信息',
  `status` tinyint(1) NOT NULL COMMENT '状态。1有效，0无效',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序。倒序',
  `add_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  `click` int(10) NOT NULL DEFAULT '0' COMMENT '点击次数',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='项目表';

-- ----------------------------
-- Records of cc_item
-- ----------------------------
INSERT INTO `cc_item` VALUES ('1', '丽柜福利导航', 'www.liguidh.com', 'http://www.liguidh.com/', '', '', '', '1', '0', '1561465578', '0', '36', '0');
INSERT INTO `cc_item` VALUES ('2', '推女郎福利导航', 'www.tnddh.com', 'http://www.tnddh.com/', '', '', '', '1', '0', '1561465590', '0', '29', '0');
INSERT INTO `cc_item` VALUES ('3', '尤蜜荟福利导航', 'www.ymhdh.com', 'http://www.ymhdh.com/', '', '', '', '1', '0', '1561465602', '0', '25', '0');
INSERT INTO `cc_item` VALUES ('4', '秀人网福利导航', 'www.xiurenwangdh.com', 'http://www.xiurenwangdh.com/', '', '', '', '1', '0', '1561465614', '0', '43', '0');
INSERT INTO `cc_item` VALUES ('5', '星颜社福利导航', 'www.xingyanshedh.com', 'http://www.xingyanshedh.com/', '', '', '', '1', '0', '1561465625', '0', '17', '0');
INSERT INTO `cc_item` VALUES ('6', 'AV毕加索', 'www.psxgtj.com', 'https://www.psxgtj.com/', '', '', '', '1', '7', '1561465637', '1562040084', '29', '1');
INSERT INTO `cc_item` VALUES ('7', '撸吧成人视频APP', 'lu.lubar111.vip', 'http://lu.lubar111.vip/qdlu.html?id=dbch25', '', '', '', '1', '9', '1561465652', '1562040079', '38', '1');
INSERT INTO `cc_item` VALUES ('8', '伊人坊直播APP', 'www.xtzhb.com', 'http://www.xtzhb.com/5index.html?id=kch45', '', '', '', '1', '8', '1561465666', '1563189260', '27', '1');
INSERT INTO `cc_item` VALUES ('9', '香蕉导航', 'www.xiangjiaodh.com', 'http://www.xiangjiaodh.com/', '', '', '', '1', '0', '1561465691', '0', '28', '0');
INSERT INTO `cc_item` VALUES ('10', '番茄导航', 'www.fanqiedh.com', 'http://www.fanqiedh.com/', '', '', '', '1', '0', '1561465712', '0', '29', '0');
INSERT INTO `cc_item` VALUES ('11', '柠檬导航', 'www.lingmengdh.com', 'http://www.lingmengdh.com/', '', '', '', '1', '0', '1561465735', '0', '35', '0');
INSERT INTO `cc_item` VALUES ('12', '蜜桃导航', 'www.mitaodh.com', 'http://www.mitaodh.com/', '', '', '', '1', '0', '1561465751', '0', '27', '0');
INSERT INTO `cc_item` VALUES ('13', '悟空导航', 'www.wukoo.xyz', 'http://www.wukoo.xyz', '', '', '', '1', '0', '1561696077', '0', '22', '0');
INSERT INTO `cc_item` VALUES ('14', '藏宝阁导航', 'cbgdh.me', 'http://cbgdh.me', '', '', '', '1', '0', '1561696118', '0', '23', '0');
INSERT INTO `cc_item` VALUES ('15', '骚狐狸', 'saofox.me', 'http://saofox.me', '', '', '', '1', '0', '1561696178', '0', '37', '0');
INSERT INTO `cc_item` VALUES ('16', '快手导航', 'www.ksdh.xyz', 'http://www.ksdh.xyz/', '', '', '', '1', '0', '1561701018', '0', '17', '0');
INSERT INTO `cc_item` VALUES ('17', '大鸡吧导航', 'www.dj8dh.xyz', 'http://www.dj8dh.xyz/', '', '', '', '1', '0', '1561701072', '1561701452', '21', '0');
INSERT INTO `cc_item` VALUES ('18', '波霸导航', 'www.bobadh.xyz', 'http://www.bobadh.xyz/', '', '', '', '1', '0', '1561701129', '0', '16', '0');
INSERT INTO `cc_item` VALUES ('19', '空军一号', 'www.kjyh.xyz', 'http://www.kjyh.xyz/', '', '', '', '1', '0', '1561701165', '0', '26', '0');
INSERT INTO `cc_item` VALUES ('20', '炮王导航', 'www.paow.xyz', 'http://www.paow.xyz/', '', '', '', '1', '0', '1561701206', '0', '22', '0');
INSERT INTO `cc_item` VALUES ('21', '飞机导航', 'www.24835.com', 'http://www.24835.com', '', '', '', '1', '0', '1561701354', '0', '26', '0');
INSERT INTO `cc_item` VALUES ('22', '同城约炮导航', 'www.345535.com', 'http://www.345535.com', '', '', '', '1', '0', '1561701403', '0', '21', '0');
INSERT INTO `cc_item` VALUES ('23', '小情趣', 'www.xqqav.xyz', 'http://www.xqqav.xyz/', '', '', '', '1', '0', '1561702074', '0', '35', '0');
INSERT INTO `cc_item` VALUES ('24', '日韩影院', 'www.rhyy.xyz', 'http://www.rhyy.xyz/', '', '', '', '1', '0', '1561702122', '0', '40', '0');
INSERT INTO `cc_item` VALUES ('25', '天涯图库', 'www.tianyatuku.com', 'http://www.tianyatuku.com', '', '', '', '1', '10', '1561704999', '1562039947', '34', '1');
INSERT INTO `cc_item` VALUES ('26', '花痴女视频', 'cx333.xyz', 'http://cx333.xyz', '', '', '', '1', '0', '1561962251', '0', '41', '0');
INSERT INTO `cc_item` VALUES ('27', '乌尔河-永久免费', 'www.ouriver.xyz', 'https://www.ouriver.xyz/', '', '', '', '1', '2', '1562039794', '1562134723', '63', '1');
INSERT INTO `cc_item` VALUES ('28', '名模M视频', 'www.7mmd.com', 'https://www.7mmd.com', '', '', '', '1', '1', '1562064079', '0', '50', '0');
INSERT INTO `cc_item` VALUES ('29', '上骚逼视频', 'www.3sbi.com', 'https://www.3sbi.com', '', '', '', '1', '1', '1562064414', '0', '39', '0');
INSERT INTO `cc_item` VALUES ('30', '骚妹妹视频', 'www.1jtk.com', 'https://www.1jtk.com', '', '', '', '1', '1', '1562064471', '0', '27', '0');
INSERT INTO `cc_item` VALUES ('31', '射吧你视频', 'www.48ni.com', 'https://www.48ni.com', '', '', '', '1', '1', '1562064530', '0', '41', '0');
INSERT INTO `cc_item` VALUES ('32', '中出集导航', 'www.zcjyy.top', 'http://www.zcjyy.top', '', '', '', '1', '0', '1562066074', '0', '21', '0');
INSERT INTO `cc_item` VALUES ('33', '血色玫瑰导航', 'www.xsmgw.top', 'http://www.xsmgw.top', '', '', '', '1', '0', '1562066113', '0', '27', '0');
INSERT INTO `cc_item` VALUES ('34', '樱花树导航', 'www.yhsav.top', 'http://www.yhsav.top', '', '', '', '1', '0', '1562066170', '0', '27', '0');
INSERT INTO `cc_item` VALUES ('35', '少妇导航', 'www.sfzcsp.top', 'http://www.sfzcsp.top', '', '', '', '1', '0', '1562066245', '0', '20', '0');
INSERT INTO `cc_item` VALUES ('36', '2345导航', 'www.2345yyw.top', 'http://www.2345yyw.top', '', '', '', '1', '0', '1562066278', '0', '9', '0');
INSERT INTO `cc_item` VALUES ('37', '90视频', 'www.90009.top', 'http://www.90009.top', '', '', '', '1', '0', '1562070065', '0', '29', '0');
INSERT INTO `cc_item` VALUES ('38', '色8色', 'www.90001.top', 'http://www.90001.top', '', '', '', '1', '0', '1562070107', '0', '36', '0');
INSERT INTO `cc_item` VALUES ('39', '佐佐木明希 ', 'www.90002.xyz', 'http://www.90002.xyz', '', '', '', '1', '0', '1562070147', '0', '26', '0');
INSERT INTO `cc_item` VALUES ('40', '丝袜三级视频 ', 'www.90003.xyz', 'http://www.90003.xyz', '', '', '', '1', '0', '1562070190', '0', '34', '0');
INSERT INTO `cc_item` VALUES ('41', '日本av凌辱', 'www.90008.top', 'http://www.90008.top', '', '', '', '1', '0', '1562070224', '0', '28', '0');
INSERT INTO `cc_item` VALUES ('42', '小西悠中文字幕 ', 'www.622660.top', 'http://www.622660.top', '', '', '', '1', '0', '1562070262', '0', '24', '0');
INSERT INTO `cc_item` VALUES ('43', '成都绿帽', 'www.622661.top', 'http://www.622661.top', '', '', '', '1', '0', '1562070352', '0', '32', '0');
INSERT INTO `cc_item` VALUES ('44', '富二代自拍', 'www.622662.top', 'http://www.622662.top', '', '', '', '1', '0', '1562070387', '0', '34', '0');
INSERT INTO `cc_item` VALUES ('45', '近亲相奸', 'www.622663.top', 'http://www.622663.top', '', '', '', '1', '0', '1562070421', '0', '33', '0');
INSERT INTO `cc_item` VALUES ('46', '伦理资源站  ', 'www.622664.top', 'http://www.622664.top', '', '', '', '1', '0', '1562070457', '0', '30', '0');
INSERT INTO `cc_item` VALUES ('47', '陈冠希艳照门', 'sbs123.xyz', 'http://sbs123.xyz/', '', '', '', '1', '0', '1562133724', '1562134732', '23', '0');
INSERT INTO `cc_item` VALUES ('48', '李小璐出轨导航', 'sbs555.xyz', 'http://sbs555.xyz/', '', '', '', '1', '5', '1562134441', '0', '23', '1');
INSERT INTO `cc_item` VALUES ('49', '关晓彤抠逼', 'sbs666.xyz', 'http://sbs666.xyz/', '', '', '', '1', '0', '1562134554', '0', '17', '0');
INSERT INTO `cc_item` VALUES ('50', '李宗瑞迷奸导航', 'sbs777.xyz', 'http://sbs777.xyz/', '', '', '', '1', '0', '1562134596', '0', '20', '0');
INSERT INTO `cc_item` VALUES ('51', '白百何福利导航', 'sbs999.xyz', 'http://sbs999.xyz/', '', '', '', '1', '0', '1562134636', '0', '11', '0');
INSERT INTO `cc_item` VALUES ('52', '洛洛福利导航', 'luodh.xyz', 'http://luodh.xyz/', '', '', '', '1', '1', '1562577728', '1562578746', '16', '0');
INSERT INTO `cc_item` VALUES ('53', '美女邻居的诱惑 ', 'www.98dq.xyz', 'http://www.98dq.xyz/', '', '', '', '1', '0', '1562577774', '0', '12', '0');
INSERT INTO `cc_item` VALUES ('54', '女总裁制服诱惑', 'www.5dby.xyz', 'http://www.5dby.xyz/', '', '', '', '1', '0', '1562577820', '0', '12', '0');
INSERT INTO `cc_item` VALUES ('55', '花擦福利导航', 'huaxdh.com', 'http://huaxdh.com', '', '', '', '1', '1', '1562737818', '0', '13', '0');

-- ----------------------------
-- Table structure for cc_link
-- ----------------------------
DROP TABLE IF EXISTS `cc_link`;
CREATE TABLE `cc_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '名称',
  `link` varchar(255) NOT NULL COMMENT '链接',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT 'logo图片',
  `sort_order` mediumint(5) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of cc_link
-- ----------------------------

-- ----------------------------
-- Table structure for cc_message
-- ----------------------------
DROP TABLE IF EXISTS `cc_message`;
CREATE TABLE `cc_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `content` text NOT NULL COMMENT '内容',
  `sort_order` mediumint(5) NOT NULL DEFAULT '0',
  `add_ip` varchar(15) NOT NULL,
  `add_time` int(10) NOT NULL COMMENT '时间',
  `update_time` int(10) NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言板表';

-- ----------------------------
-- Records of cc_message
-- ----------------------------

-- ----------------------------
-- Table structure for cc_setting
-- ----------------------------
DROP TABLE IF EXISTS `cc_setting`;
CREATE TABLE `cc_setting` (
  `name` varchar(50) NOT NULL COMMENT '键',
  `alias` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态。1可见，0不可见',
  `value` text NOT NULL COMMENT '值',
  `default_value` text NOT NULL COMMENT '默认值',
  `groups` varchar(50) NOT NULL COMMENT '分组',
  `sort_order` mediumint(5) NOT NULL DEFAULT '100' COMMENT '排序',
  `tags` enum('text','checkbox','radio','textarea','select','file','password','extend') NOT NULL DEFAULT 'text',
  `width` mediumint(50) NOT NULL DEFAULT '30',
  `height` mediumint(5) NOT NULL DEFAULT '25',
  `decription` text NOT NULL,
  `separator` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分隔',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统设置表';

-- ----------------------------
-- Records of cc_setting
-- ----------------------------
INSERT INTO `cc_setting` VALUES ('title', '网站标题', '1', '苹果福利导航_成人福利导航_色情福利大全_最新福利合集', '', 'basic_info', '3', 'text', '50', '0', '', '0');
INSERT INTO `cc_setting` VALUES ('keywords', '网站关键词', '1', '苹果福利导航,福利导航,色情网站,成人网站,福利视频,色情合集,成人小说,成人图片,激情文字,在线观看', '', 'basic_info', '5', 'text', '80', '0', '', '0');
INSERT INTO `cc_setting` VALUES ('logo', '网站Logo', '1', '', '', 'basic_info', '6', 'file', '50', '0', '', '0');
INSERT INTO `cc_setting` VALUES ('description', '网站描述', '1', '苹果福利导航,福利导航,色情网站,成人网站,福利视频,色情合集,成人小说,成人图片,激情文字,在线观看', '', 'basic_info', '7', 'textarea', '65', '3', '', '0');
INSERT INTO `cc_setting` VALUES ('sub_title', '副标题', '1', '成人咨询精品推荐站长QQ：210031349', '', 'basic_info', '8', 'text', '80', '0', '', '0');
INSERT INTO `cc_setting` VALUES ('item_hot_show', '首页推荐', '1', '0', 'array(\'1\'=>\'显示\',\'0\'=>\'关闭\',)', '网站设置', '22', 'radio', '30', '25', '', '0');
INSERT INTO `cc_setting` VALUES ('item_hot_num', '首页推荐数量', '1', '27', '27', '网站设置', '23', 'text', '5', '25', '', '0');
INSERT INTO `cc_setting` VALUES ('DEFAULT_THEME', '网站主题', '1', 'Black', 'array(\'Black\'=>\'黑色主题\',\'Blue\'=>\'蓝色主题\',)', '网站设置', '20', 'select', '80', '0', '', '0');
INSERT INTO `cc_setting` VALUES ('footer', '网站底部', '1', 'Copyright © 2014 www.289w.com All Rights Reserved QQ：210031349', '', 'basic_info', '8', 'textarea', '100', '6', '', '0');
INSERT INTO `cc_setting` VALUES ('width', '网站宽度', '1', '1200', '', '网站设置', '20', 'text', '5', '25', '单位是px', '0');
INSERT INTO `cc_setting` VALUES ('recommend_img_width', '首页推荐图片宽度', '1', '100', '', '网站设置', '30', 'text', '5', '25', '宽度最好在100-200之间', '1');
INSERT INTO `cc_setting` VALUES ('URL_MODEL', '网站运行模式', '1', '0', 'array(\'0\'=>\'动态模式\',\'2\'=>\'伪静态模式\',\'1\'=>\'PATHINFO模式\')', '网站设置', '20', 'select', '30', '25', '', '1');
INSERT INTO `cc_setting` VALUES ('category_num', '首页分类数量', '1', '100', '', '网站设置', '31', 'text', '5', '25', '', '0');
INSERT INTO `cc_setting` VALUES ('category_show_description', '首页分类描述', '1', '0', 'array(\'1\'=>\'显示\',\'0\'=>\'关闭\',)', '网站设置', '32', 'radio', '30', '25', '', '0');
INSERT INTO `cc_setting` VALUES ('slideshow', '首页显示幻灯片', '1', '0', 'array(\'1\'=>\'显示\',\'0\'=>\'关闭\',)', '网站设置', '33', 'radio', '30', '25', '', '0');
INSERT INTO `cc_setting` VALUES ('qrcode', '上传二维码', '1', '', '', '网站设置', '100', 'file', '30', '25', '', '0');
INSERT INTO `cc_setting` VALUES ('sidenav', '显示则栏导航条', '1', '0', 'array(\'1\'=>\'显示\',\'0\'=>\'关闭\',)', '网站设置', '34', 'radio', '30', '25', '', '0');

-- ----------------------------
-- Table structure for cc_tags
-- ----------------------------
DROP TABLE IF EXISTS `cc_tags`;
CREATE TABLE `cc_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `alias` varchar(50) NOT NULL COMMENT '别名，只能用字母',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of cc_tags
-- ----------------------------
INSERT INTO `cc_tags` VALUES ('1', '名站推荐', 'MZTJ');
INSERT INTO `cc_tags` VALUES ('2', 'Hot导航', 'HotDH');
INSERT INTO `cc_tags` VALUES ('3', '成人视频', 'crsp');

-- ----------------------------
-- Table structure for cc_tags_relationship
-- ----------------------------
DROP TABLE IF EXISTS `cc_tags_relationship`;
CREATE TABLE `cc_tags_relationship` (
  `item_id` bigint(20) NOT NULL,
  `tags_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`item_id`,`tags_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签关联表';

-- ----------------------------
-- Records of cc_tags_relationship
-- ----------------------------
INSERT INTO `cc_tags_relationship` VALUES ('1', '2');
INSERT INTO `cc_tags_relationship` VALUES ('2', '2');
INSERT INTO `cc_tags_relationship` VALUES ('3', '2');
INSERT INTO `cc_tags_relationship` VALUES ('4', '2');
INSERT INTO `cc_tags_relationship` VALUES ('5', '2');
INSERT INTO `cc_tags_relationship` VALUES ('6', '1');
INSERT INTO `cc_tags_relationship` VALUES ('7', '1');
INSERT INTO `cc_tags_relationship` VALUES ('8', '1');
INSERT INTO `cc_tags_relationship` VALUES ('9', '2');
INSERT INTO `cc_tags_relationship` VALUES ('10', '2');
INSERT INTO `cc_tags_relationship` VALUES ('11', '2');
INSERT INTO `cc_tags_relationship` VALUES ('12', '2');
INSERT INTO `cc_tags_relationship` VALUES ('13', '2');
INSERT INTO `cc_tags_relationship` VALUES ('14', '2');
INSERT INTO `cc_tags_relationship` VALUES ('15', '3');
INSERT INTO `cc_tags_relationship` VALUES ('16', '2');
INSERT INTO `cc_tags_relationship` VALUES ('17', '2');
INSERT INTO `cc_tags_relationship` VALUES ('18', '2');
INSERT INTO `cc_tags_relationship` VALUES ('19', '2');
INSERT INTO `cc_tags_relationship` VALUES ('20', '2');
INSERT INTO `cc_tags_relationship` VALUES ('21', '2');
INSERT INTO `cc_tags_relationship` VALUES ('22', '2');
INSERT INTO `cc_tags_relationship` VALUES ('23', '3');
INSERT INTO `cc_tags_relationship` VALUES ('24', '3');
INSERT INTO `cc_tags_relationship` VALUES ('25', '1');
INSERT INTO `cc_tags_relationship` VALUES ('26', '3');
INSERT INTO `cc_tags_relationship` VALUES ('27', '3');
INSERT INTO `cc_tags_relationship` VALUES ('28', '3');
INSERT INTO `cc_tags_relationship` VALUES ('29', '3');
INSERT INTO `cc_tags_relationship` VALUES ('30', '3');
INSERT INTO `cc_tags_relationship` VALUES ('31', '3');
INSERT INTO `cc_tags_relationship` VALUES ('32', '2');
INSERT INTO `cc_tags_relationship` VALUES ('33', '2');
INSERT INTO `cc_tags_relationship` VALUES ('34', '2');
INSERT INTO `cc_tags_relationship` VALUES ('35', '2');
INSERT INTO `cc_tags_relationship` VALUES ('36', '2');
INSERT INTO `cc_tags_relationship` VALUES ('37', '3');
INSERT INTO `cc_tags_relationship` VALUES ('38', '3');
INSERT INTO `cc_tags_relationship` VALUES ('39', '3');
INSERT INTO `cc_tags_relationship` VALUES ('40', '3');
INSERT INTO `cc_tags_relationship` VALUES ('41', '3');
INSERT INTO `cc_tags_relationship` VALUES ('42', '3');
INSERT INTO `cc_tags_relationship` VALUES ('43', '3');
INSERT INTO `cc_tags_relationship` VALUES ('44', '3');
INSERT INTO `cc_tags_relationship` VALUES ('45', '3');
INSERT INTO `cc_tags_relationship` VALUES ('46', '3');
INSERT INTO `cc_tags_relationship` VALUES ('47', '2');
INSERT INTO `cc_tags_relationship` VALUES ('48', '1');
INSERT INTO `cc_tags_relationship` VALUES ('49', '2');
INSERT INTO `cc_tags_relationship` VALUES ('50', '2');
INSERT INTO `cc_tags_relationship` VALUES ('51', '2');
INSERT INTO `cc_tags_relationship` VALUES ('52', '2');
INSERT INTO `cc_tags_relationship` VALUES ('53', '3');
INSERT INTO `cc_tags_relationship` VALUES ('54', '3');
INSERT INTO `cc_tags_relationship` VALUES ('55', '2');

-- ----------------------------
-- Table structure for cc_tags_type
-- ----------------------------
DROP TABLE IF EXISTS `cc_tags_type`;
CREATE TABLE `cc_tags_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tags_id` bigint(20) NOT NULL,
  `tags_pid` int(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '标签分类。1tag，2category',
  `icon` varchar(50) NOT NULL COMMENT '图标',
  `count` bigint(20) NOT NULL COMMENT '统计数量',
  `sort_order` mediumint(5) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL,
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`),
  KEY `tags_id` (`tags_id`),
  KEY `tags_pid` (`tags_pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='标签类型';

-- ----------------------------
-- Records of cc_tags_type
-- ----------------------------
INSERT INTO `cc_tags_type` VALUES ('1', '1', '0', '2', '', '5', '0', '0', '', '', '');
INSERT INTO `cc_tags_type` VALUES ('2', '2', '0', '2', '', '29', '0', '0', '', '', '');
INSERT INTO `cc_tags_type` VALUES ('3', '3', '0', '2', '', '21', '0', '0', '成人咨询精品推荐', '成人福利导航_色情福利大全_最新福利合集', '福利导航,色情网站,成人网站,福利视频,色情合集,成人小说,成人图片,激情文字,在线观看');

-- ----------------------------
-- Table structure for cc_user
-- ----------------------------
DROP TABLE IF EXISTS `cc_user`;
CREATE TABLE `cc_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `role` enum('admin','member') NOT NULL DEFAULT 'admin' COMMENT '用户角色',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态。1启用，2禁用',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `qq` varchar(50) NOT NULL DEFAULT '' COMMENT 'qq',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT 'Email',
  `info` mediumtext NOT NULL,
  `login_ip` char(16) NOT NULL,
  `login_time` datetime NOT NULL,
  `create_time` int(10) NOT NULL COMMENT '创建时间',
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of cc_user
-- ----------------------------
INSERT INTO `cc_user` VALUES ('1', 'yora', '09c056c6b4cf5d9ed62a67ab2896be80', 'admin', '1', '', '', '', '', '110.54.236.17', '2019-07-15 19:12:25', '1561201480', '0');
