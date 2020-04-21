/*
Navicat MySQL Data Transfer

Source Server         : XianPeiDJango
Source Server Version : 50729
Source Host           : 192.168.199.250:3306
Source Database       : XianPei

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-04-21 21:15:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_7688c3c323ccdd1f_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_7688c3c323ccdd1f_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_70f77df19bea5460_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_51d8a80f6f7e1be9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 商品种类', '6', 'add_goodstype');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 商品种类', '6', 'change_goodstype');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 商品种类', '6', 'delete_goodstype');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 商品', '7', 'add_goodssku');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 商品', '7', 'change_goodssku');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 商品', '7', 'delete_goodssku');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 商品SPU', '8', 'add_goods');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 商品SPU', '8', 'change_goods');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 商品SPU', '8', 'delete_goods');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 商品图片', '9', 'add_goodsimage');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 商品图片', '9', 'change_goodsimage');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 商品图片', '9', 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 首页轮播商品', '10', 'add_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 首页轮播商品', '10', 'change_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 首页轮播商品', '10', 'delete_indexgoodsbanner');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 主页分类展示商品', '11', 'add_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 主页分类展示商品', '11', 'change_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 主页分类展示商品', '11', 'delete_indextypegoodsbanner');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 主页促销活动', '12', 'add_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 主页促销活动', '12', 'change_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 主页促销活动', '12', 'delete_indexpromotionbanner');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 订单', '13', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 订单', '13', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 订单', '13', 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 订单商品', '14', 'add_ordergoods');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 订单商品', '14', 'change_ordergoods');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 订单商品', '14', 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 用户', '15', 'add_user');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 用户', '15', 'change_user');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 用户', '15', 'delete_user');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 地址', '16', 'add_address');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 地址', '16', 'change_address');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 地址', '16', 'delete_address');

-- ----------------------------
-- Table structure for df_address
-- ----------------------------
DROP TABLE IF EXISTS `df_address`;
CREATE TABLE `df_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `zip_code` varchar(6) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_address_user_id_7de1ccf87fec69a5_fk_df_user_id` (`user_id`),
  CONSTRAINT `df_address_user_id_7de1ccf87fec69a5_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_address
-- ----------------------------
INSERT INTO `df_address` VALUES ('1', '2020-04-20 09:29:36.835172', '2020-04-20 09:29:36.835172', '0', '奥术大师多', '415645', '第三方', '13346543918', '1', '27');
INSERT INTO `df_address` VALUES ('2', '2020-04-20 10:08:06.382393', '2020-04-20 10:08:06.382393', '0', '123', '564654654', '112131', '13346543918', '1', '43');
INSERT INTO `df_address` VALUES ('3', '2020-04-20 10:12:58.406303', '2020-04-20 10:12:58.406303', '0', '奥术大师多', '啊实打实大多所', '123', '13346543918', '1', '44');

-- ----------------------------
-- Table structure for df_goods
-- ----------------------------
DROP TABLE IF EXISTS `df_goods`;
CREATE TABLE `df_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods
-- ----------------------------

-- ----------------------------
-- Table structure for df_goods_image
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_image`;
CREATE TABLE `df_goods_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_image_22ad5bca` (`sku_id`),
  CONSTRAINT `df_goods_image_sku_id_34f54fbb765e18c8_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_image
-- ----------------------------

-- ----------------------------
-- Table structure for df_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_sku`;
CREATE TABLE `df_goods_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unite` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_sku_goods_id_4a4a74e9d1c0c743_fk_df_goods_id` (`goods_id`),
  KEY `df_goods_sku_94757cae` (`type_id`),
  CONSTRAINT `df_goods_sku_goods_id_4a4a74e9d1c0c743_fk_df_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods` (`id`),
  CONSTRAINT `df_goods_sku_type_id_43c664c2d08372ba_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_sku
-- ----------------------------

-- ----------------------------
-- Table structure for df_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `df_goods_type`;
CREATE TABLE `df_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `logo` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_goods_type
-- ----------------------------
INSERT INTO `df_goods_type` VALUES ('1', '2020-03-08 05:08:25.686608', '2020-03-08 05:08:25.686608', '0', '阿萨德', 'meet', 'group1/M00/00/00/wKjH-l5kfcmAVsCeAAB4NqXQhMA0624243');

-- ----------------------------
-- Table structure for df_index_banner
-- ----------------------------
DROP TABLE IF EXISTS `df_index_banner`;
CREATE TABLE `df_index_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_banner_sku_id_157ca815eeedc8d_fk_df_goods_sku_id` (`sku_id`),
  CONSTRAINT `df_index_banner_sku_id_157ca815eeedc8d_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_index_banner
-- ----------------------------

-- ----------------------------
-- Table structure for df_index_promotion
-- ----------------------------
DROP TABLE IF EXISTS `df_index_promotion`;
CREATE TABLE `df_index_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `index` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_index_promotion
-- ----------------------------

-- ----------------------------
-- Table structure for df_index_type_goods
-- ----------------------------
DROP TABLE IF EXISTS `df_index_type_goods`;
CREATE TABLE `df_index_type_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `display_type` smallint(6) NOT NULL,
  `index` smallint(6) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_index_type_goods_sku_id_2d91881328a604f4_fk_df_goods_sku_id` (`sku_id`),
  KEY `df_index_type_goods_type_id_7e88e8f64c6d75ce_fk_df_goods_type_id` (`type_id`),
  CONSTRAINT `df_index_type_goods_sku_id_2d91881328a604f4_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`),
  CONSTRAINT `df_index_type_goods_type_id_7e88e8f64c6d75ce_fk_df_goods_type_id` FOREIGN KEY (`type_id`) REFERENCES `df_goods_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_index_type_goods
-- ----------------------------

-- ----------------------------
-- Table structure for df_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `df_order_goods`;
CREATE TABLE `df_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `sku_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_goods_69dfcb07` (`order_id`),
  KEY `df_order_goods_22ad5bca` (`sku_id`),
  CONSTRAINT `df_order_goo_order_id_451a10fe9f63b60b_fk_df_order_info_order_id` FOREIGN KEY (`order_id`) REFERENCES `df_order_info` (`order_id`),
  CONSTRAINT `df_order_goods_sku_id_30312dd69a004137_fk_df_goods_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `df_goods_sku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for df_order_info
-- ----------------------------
DROP TABLE IF EXISTS `df_order_info`;
CREATE TABLE `df_order_info` (
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `pay_method` smallint(6) NOT NULL,
  `total_count` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `transit_price` decimal(10,2) NOT NULL,
  `order_status` smallint(6) NOT NULL,
  `trade_no` varchar(128) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `df_order_info_90ccbf41` (`addr_id`),
  KEY `df_order_info_e8701ad4` (`user_id`),
  CONSTRAINT `df_order_info_addr_id_445c95691921d7b8_fk_df_address_id` FOREIGN KEY (`addr_id`) REFERENCES `df_address` (`id`),
  CONSTRAINT `df_order_info_user_id_519c60b2f32bfd12_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_order_info
-- ----------------------------

-- ----------------------------
-- Table structure for df_user
-- ----------------------------
DROP TABLE IF EXISTS `df_user`;
CREATE TABLE `df_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user
-- ----------------------------
INSERT INTO `df_user` VALUES ('2', 'pbkdf2_sha256$20000$Is5GLbgr5OHw$22KxbqqNtMEm5pP2xdTgQaFDbp718IpFYQpx4txTp8I=', null, '0', 'test1', '', '', '32433384@qq.com', '0', '0', '2020-02-29 11:43:49.107196', '2020-02-29 11:43:49.126219', '2020-02-29 11:43:49.137257', '0');
INSERT INTO `df_user` VALUES ('3', 'pbkdf2_sha256$20000$5iF1KSw69kPV$4lWrZzfSzTFTGPLPDWIZKL/WbgJIaeeHt2RWzRgMX3M=', null, '0', 'admin', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:21:09.178384', '2020-02-29 13:21:09.198901', '2020-02-29 13:21:09.211114', '0');
INSERT INTO `df_user` VALUES ('5', 'pbkdf2_sha256$20000$R7i6DBOLLklN$9Xo3SgTXRNrgixAurQkgnSYOd/sHuZ4K7eFMTTn0KfU=', null, '0', 'test2', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:25:15.000835', '2020-02-29 13:25:15.021336', '2020-02-29 13:25:15.024402', '0');
INSERT INTO `df_user` VALUES ('7', 'pbkdf2_sha256$20000$UDLKmrlsvfBf$tUPfex3lAcgBdkj7UYxI6dRnPRF/g9pAAO+Pvf+LGuM=', null, '0', 'test3', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:26:26.813598', '2020-02-29 13:26:26.833891', '2020-02-29 13:26:26.851039', '0');
INSERT INTO `df_user` VALUES ('8', 'pbkdf2_sha256$20000$stDNoy89AjjA$L0Hftdj2r+IMPop2q8HVcutOlK2at9nyQzhEG1BI6kI=', null, '0', 'test4', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:27:12.943915', '2020-02-29 13:27:12.963656', '2020-02-29 13:27:12.966271', '0');
INSERT INTO `df_user` VALUES ('9', 'pbkdf2_sha256$20000$QAzx7njcvTJv$PlFoib7CGmcWvcmooaNkQO8u/xKkhlMQEV2Zzcs9UVY=', null, '0', 'test5', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:32:57.060711', '2020-02-29 13:32:57.081096', '2020-02-29 13:32:57.109845', '0');
INSERT INTO `df_user` VALUES ('11', 'pbkdf2_sha256$20000$AO6jRIKCrKnC$V1kZKNXcRtEJ949bMhODWZyJr5wmND0BM0LHvZpPzg8=', null, '0', 'test7', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:33:46.973530', '2020-02-29 13:33:46.993032', '2020-02-29 13:33:47.001558', '0');
INSERT INTO `df_user` VALUES ('13', 'pbkdf2_sha256$20000$9oMtUZRZjgM0$ssIo6TMjeEeI8AHsRCDmOpgx1DP9Os4YA8dvzuNUJTE=', null, '0', 'test11', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:34:18.193972', '2020-02-29 13:34:18.212053', '2020-02-29 13:34:18.222460', '0');
INSERT INTO `df_user` VALUES ('15', 'pbkdf2_sha256$20000$5xPkzw2Q550P$0qKzZnUolWcRbft7c/xtIsz5DVeGJv8n5wK0eprjWXg=', null, '0', 'test12', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:35:55.213713', '2020-02-29 13:35:55.233158', '2020-02-29 13:35:55.244304', '0');
INSERT INTO `df_user` VALUES ('17', 'pbkdf2_sha256$20000$KraQmUhGxzB2$x1g3wGqyPCYi0YCpv3JaOFs+cWOm0iab2dHSCkZu+K0=', null, '0', 'test13', '', '', '32433384@qq.com', '0', '0', '2020-02-29 13:37:39.140609', '2020-02-29 13:37:39.160838', '2020-02-29 13:37:39.163081', '0');
INSERT INTO `df_user` VALUES ('18', 'pbkdf2_sha256$20000$XNRg7mcm1oFv$VLiOcP0mIkcWDr51NMn4xyozYQVavYHpnwdllGwmT7M=', null, '0', 'test20', '', '', '32433384@qq.com', '0', '0', '2020-03-01 02:46:21.456205', '2020-03-01 02:46:21.475831', '2020-03-01 02:46:21.493719', '0');
INSERT INTO `df_user` VALUES ('19', 'pbkdf2_sha256$20000$9ibZm9GdmEfc$OocTE3JijyWHB7oYYs6pz1ibXtb4S6GD/jWqFKYqXVE=', null, '0', 'test21', '', '', '32433384@qq.com', '0', '0', '2020-03-01 02:49:59.953670', '2020-03-01 02:49:59.973536', '2020-03-01 02:49:59.989342', '0');
INSERT INTO `df_user` VALUES ('20', 'pbkdf2_sha256$20000$bRhyAttT6kCZ$B883Lh8nFkBgzMc9+rT67orUBtCTjfzQUBVxpA7Irvk=', null, '0', 'test22', '', '', '32433384@qq.com', '0', '0', '2020-03-01 02:54:17.887063', '2020-03-01 02:54:17.906738', '2020-03-01 02:54:17.909000', '0');
INSERT INTO `df_user` VALUES ('21', 'pbkdf2_sha256$20000$WwuNlWmAM79N$Pho5XGgpyVbk37zr1LAcWDg3kylwuCjmV6PwYP9uPrs=', null, '0', 'test23', '', '', '32433384@qq.com', '0', '1', '2020-03-01 02:57:46.672541', '2020-03-01 02:57:46.690530', '2020-03-01 03:11:42.575935', '0');
INSERT INTO `df_user` VALUES ('23', 'pbkdf2_sha256$20000$VVElcLXAiwaQ$ax7bgdC9+7yIXkyDIhHehkZLzuyZA+YfRI75r/QhD1A=', null, '0', 'test24', '', '', '32433384@qq.com', '0', '1', '2020-03-01 03:12:40.605240', '2020-03-01 03:12:40.622923', '2020-03-01 03:14:18.431331', '0');
INSERT INTO `df_user` VALUES ('25', 'pbkdf2_sha256$20000$pPyrkj1botss$tMJTAV4DMw+B4lMftQBYJW70IEDU+NiCJ4svTq5XV58=', null, '0', 'test27', '', '', '32433384@qq.com', '0', '0', '2020-03-01 06:57:31.358388', '2020-03-01 06:57:31.378364', '2020-03-01 06:57:31.384301', '0');
INSERT INTO `df_user` VALUES ('26', 'pbkdf2_sha256$20000$WXIizCKhJb9a$xOokXbPMcMtGDxlZcOH1UuVVnwAocJVPL4Da7jL5tUc=', null, '0', 'test28', '', '', '32433384@qq.com', '0', '1', '2020-03-01 07:06:57.957449', '2020-03-01 07:06:57.976574', '2020-03-01 07:07:36.493964', '0');
INSERT INTO `df_user` VALUES ('27', 'pbkdf2_sha256$20000$AkYjdKvlU6Bm$JGNMt1KOt+4MSN7kgxBaBjmnP922roFX6/C5Xs7/myQ=', '2020-04-21 13:12:19.140533', '0', '32433384', '', '', '32433384@qq.com', '0', '1', '2020-03-01 10:08:00.787496', '2020-03-01 10:08:00.807301', '2020-03-01 10:08:15.591678', '0');
INSERT INTO `df_user` VALUES ('28', 'pbkdf2_sha256$20000$zoNJ3ZBetnMd$dlTjyiBP9DOS6d3iNExoQpVGwRkuUuMsagY0ldr4Q5U=', null, '0', 'test55', '', '', '32433384@qq.com', '0', '0', '2020-03-01 12:01:40.935481', '2020-03-01 12:01:40.955090', '2020-03-01 12:01:40.958923', '0');
INSERT INTO `df_user` VALUES ('30', 'pbkdf2_sha256$20000$UItnuXeKMmVn$ojeT7bKZTWYNZIY4sBukZi73AIn2EV3VC0Bu5nia6Nc=', null, '0', 'test56', '', '', '32433384@qq.com', '0', '0', '2020-03-01 12:09:11.067265', '2020-03-01 12:09:11.085862', '2020-03-01 12:09:11.095430', '0');
INSERT INTO `df_user` VALUES ('31', 'pbkdf2_sha256$20000$h0fTEntBUr56$H9P126MuMgTTjVjBauTh0BaKp235zw2bEvPtYKdn498=', null, '0', 'test101', '', '', '32433384@qq.com', '0', '1', '2020-03-01 12:10:48.435400', '2020-03-01 12:10:48.458161', '2020-03-01 12:11:38.886289', '0');
INSERT INTO `df_user` VALUES ('32', 'pbkdf2_sha256$20000$TKQRoMyWvF28$NSLaZ5qhKNcSK2UJRKx/6mn/gz46UrXpWKelBzZgowo=', '2020-03-08 09:09:06.302160', '1', 'admin123', '', '', '32433384@qq.com', '1', '1', '2020-03-06 10:16:16.809194', '2020-03-06 10:16:16.828599', '2020-03-06 10:16:16.828616', '0');
INSERT INTO `df_user` VALUES ('33', 'pbkdf2_sha256$20000$ECpuyJEiBGOw$90GGFz/JPOtmaGOY3JOcOLMELya19s0BkYPGNjVPvuA=', null, '0', 'adminadmin', '', '', '32433384@qq.com', '0', '0', '2020-03-07 04:59:13.714077', '2020-03-07 04:59:13.728090', '2020-03-07 04:59:13.730092', '0');
INSERT INTO `df_user` VALUES ('34', 'pbkdf2_sha256$20000$nRG7FGFYzhY5$iu4ynDYJcxqfweu4/W/I93tWgqouzMZy+U6fZe8q3k4=', null, '0', 'adminqwe', '', '', '32433384@qq.com', '0', '0', '2020-03-08 04:18:26.840340', '2020-03-08 04:18:26.854360', '2020-03-08 04:18:26.857355', '0');
INSERT INTO `df_user` VALUES ('35', 'pbkdf2_sha256$20000$48EgIag9vRHg$/Woe+8GQxUZ7A8MP7nUCDMSVi0K5+VEpH2M0M7pQ0co=', null, '0', 'adminqwe1', '', '', '32433384@qq.com', '0', '0', '2020-03-08 04:20:55.253828', '2020-03-08 04:20:55.267833', '2020-03-08 04:20:55.270836', '0');
INSERT INTO `df_user` VALUES ('36', 'pbkdf2_sha256$20000$043QZkHiJxBx$HO4dvVoDWnEJthv6gPl/3qRvUwiJapX1ATbnwxWxwSo=', null, '0', 'adminqwe12', '', '', '32433384@qq.com', '0', '0', '2020-03-08 04:22:48.488208', '2020-03-08 04:22:48.502220', '2020-03-08 04:22:48.504222', '0');
INSERT INTO `df_user` VALUES ('37', 'pbkdf2_sha256$20000$qHtnzFcKObvx$5f96ZVEJfYTYkwnWSjbgdfB6Lz9Qy+ZC4bWbwuaXYTY=', null, '0', 'qweqweqweqwe', '', '', '32433384@qq.com', '0', '0', '2020-03-08 07:05:35.750342', '2020-03-08 07:05:35.764355', '2020-03-08 07:05:35.766357', '0');
INSERT INTO `df_user` VALUES ('38', 'pbkdf2_sha256$20000$Y3ukjaH6SI5U$vVUGu1PV2FWswhdJMKDN0r80iF5PeGRiyVqkAoN9ENk=', null, '0', 'qweqweqweqweqwe', '', '', '32433384@qq.com', '0', '0', '2020-03-08 07:06:22.655193', '2020-03-08 07:06:22.669206', '2020-03-08 07:06:22.671207', '0');
INSERT INTO `df_user` VALUES ('39', 'pbkdf2_sha256$20000$FWg2v4V3fL13$G7P8Xc18GckufpfYH06PXPzm56Qr1GAiZUlmZeE9Bfc=', null, '0', '123456123', '', '', '32433384@qq.com', '0', '0', '2020-04-20 09:31:01.409980', '2020-04-20 09:31:01.423988', '2020-04-20 09:31:01.489048', '0');
INSERT INTO `df_user` VALUES ('40', 'pbkdf2_sha256$20000$sjdreHwTBJ7o$6J6KTA8uMiepTiM2Q2LhTP2BLMfURn1j0fHOOrPycWs=', null, '0', 'asdfffff', '', '', '32433384@qq.com', '0', '0', '2020-04-20 09:56:12.822681', '2020-04-20 09:56:12.836686', '2020-04-20 09:56:12.841691', '0');
INSERT INTO `df_user` VALUES ('41', 'pbkdf2_sha256$20000$7vHuAhboxtfU$rtzzUBOQCVt2Cd+TCZaAD1lRnmyNBhpt8Tr/8/Zub4o=', null, '0', '大大声道阿萨德', '', '', '32433384@qq.com', '0', '0', '2020-04-20 09:58:47.984207', '2020-04-20 09:58:47.998219', '2020-04-20 09:58:48.006226', '0');
INSERT INTO `df_user` VALUES ('42', 'pbkdf2_sha256$20000$3Eo1fsJJ5J9U$nU5e4sAHnwmxgZZbQXyymdBaKHAd4yykS9IZ1s0bOUU=', null, '0', '苏打算大所大所大所多', '', '', '32433384@qq.com', '0', '1', '2020-04-20 09:59:58.862072', '2020-04-20 09:59:58.879092', '2020-04-20 10:00:17.264282', '0');
INSERT INTO `df_user` VALUES ('43', 'pbkdf2_sha256$20000$ID03hhWAzFBB$hjk9exIqGmQe/NVEQfYI87YmP7Jqay0NPDhmlYun+5A=', '2020-04-20 10:08:19.524741', '0', '哈萨克德令哈', '', '', '32433384@qq.com', '0', '1', '2020-04-20 10:07:13.305959', '2020-04-20 10:07:13.319973', '2020-04-20 10:07:41.182665', '0');
INSERT INTO `df_user` VALUES ('44', 'pbkdf2_sha256$20000$fWsOz2JeEsub$cZjLNZTe54ImzBlLrfNwMzDyay0DcBqtUYxQ9jlZLZE=', '2020-04-21 13:15:01.703878', '0', '阿斯加德克拉斯建档立卡手机打开了', '', '', '32433384@qq.com', '0', '1', '2020-04-20 10:11:56.445317', '2020-04-20 10:11:56.459330', '2020-04-20 10:12:24.899550', '0');
INSERT INTO `df_user` VALUES ('45', 'pbkdf2_sha256$20000$AFnfx1gswepn$eZ61CSvOQEdUesmp63k9Q/LtHggFS9Nl2smiU+hjd58=', null, '0', 'asdasdasdasd', '', '', '32433384@qq.com', '0', '0', '2020-04-21 12:00:52.472545', '2020-04-21 12:00:52.495554', '2020-04-21 12:00:52.497412', '0');

-- ----------------------------
-- Table structure for df_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `df_user_groups`;
CREATE TABLE `df_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `df_user_groups_group_id_1436705f9be6ea1c_fk_auth_group_id` (`group_id`),
  CONSTRAINT `df_user_groups_group_id_1436705f9be6ea1c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `df_user_groups_user_id_6a30d6391843fc5d_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for df_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `df_user_user_permissions`;
CREATE TABLE `df_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `df_user_use_permission_id_3f9243dd612eebc9_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `df_user_use_permission_id_3f9243dd612eebc9_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `df_user_user_permissions_user_id_6f77642af070fb97_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_58de3816a9b37414_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_245f37d29241b61d_fk_df_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_58de3816a9b37414_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_245f37d29241b61d_fk_df_user_id` FOREIGN KEY (`user_id`) REFERENCES `df_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-03-08 05:08:25.813724', '1', '阿萨德', '1', '', '6', '32');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_526280ec6182b6f6_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('8', 'goods', 'goods');
INSERT INTO `django_content_type` VALUES ('9', 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES ('7', 'goods', 'goodssku');
INSERT INTO `django_content_type` VALUES ('6', 'goods', 'goodstype');
INSERT INTO `django_content_type` VALUES ('10', 'goods', 'indexgoodsbanner');
INSERT INTO `django_content_type` VALUES ('12', 'goods', 'indexpromotionbanner');
INSERT INTO `django_content_type` VALUES ('11', 'goods', 'indextypegoodsbanner');
INSERT INTO `django_content_type` VALUES ('14', 'order', 'ordergoods');
INSERT INTO `django_content_type` VALUES ('13', 'order', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('16', 'user', 'address');
INSERT INTO `django_content_type` VALUES ('15', 'user', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-02-28 11:30:24.673236');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-02-28 11:30:25.690504');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-02-28 11:30:28.355563');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-02-28 11:30:28.485088');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-02-28 11:30:28.494584');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-02-28 11:30:28.502570');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-02-28 11:30:28.509809');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-02-28 11:30:28.512842');
INSERT INTO `django_migrations` VALUES ('9', 'user', '0001_initial', '2020-02-28 11:30:29.154523');
INSERT INTO `django_migrations` VALUES ('10', 'admin', '0001_initial', '2020-02-28 11:30:29.292380');
INSERT INTO `django_migrations` VALUES ('11', 'goods', '0001_initial', '2020-02-28 11:30:29.867400');
INSERT INTO `django_migrations` VALUES ('12', 'order', '0001_initial', '2020-02-28 11:30:29.892714');
INSERT INTO `django_migrations` VALUES ('13', 'order', '0002_auto_20200228_1930', '2020-02-28 11:30:30.193517');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2020-02-28 11:30:30.211328');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('f9id0uxuq2jjsuk7in2ry0972wbh6r9x', 'ZmY5ZjVmODQ5YWJhODg0NTcwNjY0MDgzMWQ0MGQ1M2FhNTA3ZTI2Yzp7Il9hdXRoX3VzZXJfaWQiOiIyNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDI2MmM0YmIwM2ZjMmMzYmJmMjNlZWI4YjEyYTgxNTAyY2E0NzE2ZCJ9', '2020-03-15 10:13:16.582037');
