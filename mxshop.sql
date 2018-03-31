/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50718
Source Host           : 127.0.0.1:3306
Source Database       : mxshop

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-31 11:46:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------

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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add group', '1', 'add_group');
INSERT INTO `auth_permission` VALUES ('2', 'Can change group', '1', 'change_group');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete group', '1', 'delete_group');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add content type', '3', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('8', 'Can change content type', '3', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete content type', '3', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('10', 'Can add session', '4', 'add_session');
INSERT INTO `auth_permission` VALUES ('11', 'Can change session', '4', 'change_session');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete session', '4', 'delete_session');
INSERT INTO `auth_permission` VALUES ('13', 'Can add 品牌', '5', 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('14', 'Can change 品牌', '5', 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete 品牌', '5', 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('16', 'Can add 商品类别', '6', 'add_goodscategory');
INSERT INTO `auth_permission` VALUES ('17', 'Can change 商品类别', '6', 'change_goodscategory');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete 商品类别', '6', 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 商品图片', '7', 'add_goodsimage');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 商品图片', '7', 'change_goodsimage');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 商品图片', '7', 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 商品', '8', 'add_goods');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 商品', '8', 'change_goods');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 商品', '8', 'delete_goods');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 热搜词', '9', 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 热搜词', '9', 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 热搜词', '9', 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 首页商品类别广告', '10', 'add_indexad');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 首页商品类别广告', '10', 'change_indexad');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 首页商品类别广告', '10', 'delete_indexad');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 轮播商品', '11', 'add_banner');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 轮播商品', '11', 'change_banner');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 轮播商品', '11', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 订单商品', '12', 'add_ordergoods');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 订单商品', '12', 'change_ordergoods');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 订单商品', '12', 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 购物车', '13', 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 购物车', '13', 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 购物车', '13', 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 订单', '14', 'add_orderinfo');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 订单', '14', 'change_orderinfo');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 订单', '14', 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 用户', '15', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 用户', '15', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 用户', '15', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 短信验证码', '16', 'add_verifycode');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 短信验证码', '16', 'change_verifycode');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 短信验证码', '16', 'delete_verifycode');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户留言', '17', 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户留言', '17', 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户留言', '17', 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 收货地址', '18', 'add_useraddress');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 收货地址', '18', 'change_useraddress');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 收货地址', '18', 'delete_useraddress');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 用户收藏', '19', 'add_userfav');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 用户收藏', '19', 'change_userfav');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 用户收藏', '19', 'delete_userfav');
INSERT INTO `auth_permission` VALUES ('58', 'Can view group', '1', 'view_group');
INSERT INTO `auth_permission` VALUES ('59', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('60', 'Can view content type', '3', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('61', 'Can view 轮播商品', '11', 'view_banner');
INSERT INTO `auth_permission` VALUES ('62', 'Can view 商品', '8', 'view_goods');
INSERT INTO `auth_permission` VALUES ('63', 'Can view 商品类别', '6', 'view_goodscategory');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 品牌', '5', 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES ('65', 'Can view 商品图片', '7', 'view_goodsimage');
INSERT INTO `auth_permission` VALUES ('66', 'Can view 热搜词', '9', 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES ('67', 'Can view 首页商品类别广告', '10', 'view_indexad');
INSERT INTO `auth_permission` VALUES ('68', 'Can view session', '4', 'view_session');
INSERT INTO `auth_permission` VALUES ('69', 'Can view 订单商品', '12', 'view_ordergoods');
INSERT INTO `auth_permission` VALUES ('70', 'Can view 订单', '14', 'view_orderinfo');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 购物车', '13', 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 用户', '15', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('73', 'Can view 短信验证码', '16', 'view_verifycode');
INSERT INTO `auth_permission` VALUES ('74', 'Can view 收货地址', '18', 'view_useraddress');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 用户收藏', '19', 'view_userfav');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 用户留言', '17', 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES ('77', 'Can add Bookmark', '20', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('78', 'Can change Bookmark', '20', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete Bookmark', '20', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('80', 'Can add User Setting', '21', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('81', 'Can change User Setting', '21', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('82', 'Can delete User Setting', '21', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('83', 'Can add log entry', '22', 'add_log');
INSERT INTO `auth_permission` VALUES ('84', 'Can change log entry', '22', 'change_log');
INSERT INTO `auth_permission` VALUES ('85', 'Can delete log entry', '22', 'delete_log');
INSERT INTO `auth_permission` VALUES ('86', 'Can add User Widget', '23', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('87', 'Can change User Widget', '23', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('88', 'Can delete User Widget', '23', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('89', 'Can view Bookmark', '20', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('90', 'Can view log entry', '22', 'view_log');
INSERT INTO `auth_permission` VALUES ('91', 'Can view User Setting', '21', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('92', 'Can view User Widget', '23', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('93', 'Can add Token', '24', 'add_token');
INSERT INTO `auth_permission` VALUES ('94', 'Can change Token', '24', 'change_token');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete Token', '24', 'delete_token');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('24', 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES ('3', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('11', 'goods', 'banner');
INSERT INTO `django_content_type` VALUES ('8', 'goods', 'goods');
INSERT INTO `django_content_type` VALUES ('6', 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES ('5', 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES ('7', 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES ('9', 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES ('10', 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES ('4', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('12', 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES ('14', 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES ('13', 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES ('15', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('16', 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES ('18', 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES ('19', 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES ('17', 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES ('20', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'userwidget');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-03-27 15:33:19.010566');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-03-27 15:33:20.686662');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-03-27 15:33:24.498855');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2018-03-27 15:33:25.332394');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-03-27 15:33:25.373423');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-03-27 15:33:25.409455');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-03-27 15:33:25.450757');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-03-27 15:33:25.475774');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-03-27 15:33:25.516813');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2018-03-27 15:33:25.550856');
INSERT INTO `django_migrations` VALUES ('11', 'goods', '0001_initial', '2018-03-27 15:33:35.343686');
INSERT INTO `django_migrations` VALUES ('12', 'sessions', '0001_initial', '2018-03-27 15:33:35.926236');
INSERT INTO `django_migrations` VALUES ('13', 'users', '0001_initial', '2018-03-27 15:33:42.381638');
INSERT INTO `django_migrations` VALUES ('14', 'trade', '0001_initial', '2018-03-27 15:33:44.367835');
INSERT INTO `django_migrations` VALUES ('15', 'trade', '0002_auto_20180327_1517', '2018-03-27 15:33:50.553981');
INSERT INTO `django_migrations` VALUES ('16', 'user_operation', '0001_initial', '2018-03-27 15:33:52.012204');
INSERT INTO `django_migrations` VALUES ('17', 'user_operation', '0002_auto_20180327_1517', '2018-03-27 15:33:58.079898');
INSERT INTO `django_migrations` VALUES ('18', 'authtoken', '0001_initial', '2018-03-27 19:06:35.938705');
INSERT INTO `django_migrations` VALUES ('19', 'authtoken', '0002_auto_20160226_1747', '2018-03-27 19:06:36.749283');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0001_initial', '2018-03-27 19:06:41.182505');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0002_log', '2018-03-27 19:06:43.638879');
INSERT INTO `django_migrations` VALUES ('22', 'xadmin', '0003_auto_20160715_0100', '2018-03-27 19:06:44.417125');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5of5zpvxrdoe4rsowgj4oedydri04hc9', 'NDg3MzBlZDhkNzA3MjNkZDM1MDA5MjE1MzdiNWExODIzY2NjZDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTcyNjZhMGM2MGM4Y2I2ZDQ1ZjNiZTUyMzFmMWIzMDA3M2E0MjI0YiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-04-10 18:57:25.832934');
INSERT INTO `django_session` VALUES ('e95zpidarncwoyuhpfdwfqdrju5qvu1c', 'NWNmMzZmNDU3NjM2ZTlhZmIyNWQ5NGU2NzZlNTVjNDdiNjNlYmVkNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTcyNjZhMGM2MGM4Y2I2ZDQ1ZjNiZTUyMzFmMWIzMDA3M2E0MjI0YiIsIkxJU1RfUVVFUlkiOltbImdvb2RzIiwiZ29vZHMiXSwiIl0sIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-04-14 11:07:28.848784');

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_banner_goods_id_99e23129_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_banner
-- ----------------------------
INSERT INTO `goods_banner` VALUES ('1', 'banner/banner1_rzwqp8P.jpg', '1', '2018-03-31 08:53:00.000000', '1');
INSERT INTO `goods_banner` VALUES ('2', 'banner/banner2_uylTszA.jpg', '2', '2018-03-31 08:55:00.000000', '3');
INSERT INTO `goods_banner` VALUES ('3', 'banner/banner3_YTizc6f.jpg', '3', '2018-03-31 08:55:00.000000', '5');

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext NOT NULL,
  `goods_desc` longtext NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES ('1', '', '新鲜水果甜蜜香脆单果约800克', '5', '0', '0', '-5', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/1_P_1449024889889.jpg', '0', '0', '2018-03-27 17:35:22.213046', '20');
INSERT INTO `goods_goods` VALUES ('2', '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '0', '0', '0', '0', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/2_P_1448945810202.jpg', '0', '0', '2018-03-27 17:35:22.519739', '7');
INSERT INTO `goods_goods` VALUES ('3', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '0', '0', '0', '0', '286', '238', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/7_P_1448945104883.jpg', '0', '0', '2018-03-27 17:35:22.596031', '15');
INSERT INTO `goods_goods` VALUES ('4', '', '日本蒜蓉粉丝扇贝270克6只装', '0', '0', '0', '0', '156', '108', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/47_P_1448946213263.jpg', '0', '1', '2018-03-27 17:35:22.663699', '20');
INSERT INTO `goods_goods` VALUES ('5', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '0', '0', '0', '0', '106', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/10_P_1448944572085.jpg', '0', '0', '2018-03-27 17:35:22.729752', '7');
INSERT INTO `goods_goods` VALUES ('6', '', '乌拉圭进口牛肉卷特级肥牛卷', '0', '0', '0', '0', '90', '75', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/4_P_1448945381985.jpg', '0', '0', '2018-03-27 17:35:22.818452', '21');
INSERT INTO `goods_goods` VALUES ('7', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/8_P_1448945032810.jpg', '0', '0', '2018-03-27 17:35:22.908725', '23');
INSERT INTO `goods_goods` VALUES ('8', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/11_P_1448944388277.jpg', '0', '0', '2018-03-27 17:35:22.985904', '7');
INSERT INTO `goods_goods` VALUES ('9', '', '潮香村澳洲进口牛排家庭团购套餐20片', '0', '0', '0', '0', '239', '199', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/6_P_1448945167279.jpg', '0', '0', '2018-03-27 17:35:23.075141', '22');
INSERT INTO `goods_goods` VALUES ('10', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '0', '0', '0', '0', '202', '168', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/9_P_1448944791617.jpg', '0', '1', '2018-03-27 17:35:23.142164', '20');
INSERT INTO `goods_goods` VALUES ('11', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '0', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/3_P_1448945490837.jpg', '0', '0', '2018-03-27 17:35:23.253123', '2');
INSERT INTO `goods_goods` VALUES ('12', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '0', '0', '0', '0', '126', '88', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/48_P_1448943988970.jpg', '0', '0', '2018-03-27 17:35:23.320197', '7');
INSERT INTO `goods_goods` VALUES ('13', '', '澳洲进口安格斯牛切片上脑牛排1000g', '0', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/5_P_1448945270390.jpg', '0', '0', '2018-03-27 17:35:23.409857', '12');
INSERT INTO `goods_goods` VALUES ('14', '', '帐篷出租', '0', '0', '0', '0', '120', '100', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201705/goods_img/53_P_1495068879687.jpg', '0', '0', '2018-03-27 17:35:23.498433', '21');
INSERT INTO `goods_goods` VALUES ('15', '', '52度茅台集团国隆双喜酒500mlx6', '1', '0', '0', '0', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/16_P_1448947194687.jpg', '0', '0', '2018-03-27 17:35:23.585517', '37');
INSERT INTO `goods_goods` VALUES ('16', '234567543', '52度水井坊臻酿八號500ml', '1', '0', '0', '0', '43', '36', '52度水井坊臻酿八號500ml', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/14_P_1448947354031.jpg', '1', '0', '2018-03-27 17:35:00.000000', '36');
INSERT INTO `goods_goods` VALUES ('17', '', '53度茅台仁酒500ml', '0', '0', '0', '0', '190', '158', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/12_P_1448947547989.jpg', '0', '0', '2018-03-27 17:35:23.697636', '32');
INSERT INTO `goods_goods` VALUES ('18', '', '双响炮洋酒JimBeamwhiskey美国白占边', '0', '0', '1', '0', '38', '28', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/46_P_1448946598711.jpg', '0', '0', '2018-03-27 17:35:23.742668', '29');
INSERT INTO `goods_goods` VALUES ('19', '', '西夫拉姆进口洋酒小酒版', '0', '0', '0', '0', '55', '46', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/21_P_1448946793276.jpg', '0', '0', '2018-03-27 17:35:23.808721', '36');
INSERT INTO `goods_goods` VALUES ('20', '', '茅台53度飞天茅台500ml', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/15_P_1448947257324.jpg', '0', '1', '2018-03-27 17:35:23.875443', '30');
INSERT INTO `goods_goods` VALUES ('21', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/13_P_1448947460386.jpg', '0', '0', '2018-03-27 17:35:23.941492', '29');
INSERT INTO `goods_goods` VALUES ('22', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/50_P_1448946543091.jpg', '0', '0', '2018-03-27 17:35:24.030613', '36');
INSERT INTO `goods_goods` VALUES ('23', '3456786543', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '人头马CLUB特优香槟干邑350ml', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/51_P_1448946466595.jpg', '1', '1', '2018-03-27 17:35:00.000000', '30');
INSERT INTO `goods_goods` VALUES ('24', '', '张裕干红葡萄酒750ml*6支', '1', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/17_P_1448947102246.jpg', '0', '0', '2018-03-27 17:35:24.274384', '31');
INSERT INTO `goods_goods` VALUES ('25', '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/20_P_1448946850602.jpg', '0', '0', '2018-03-27 17:35:24.319417', '29');
INSERT INTO `goods_goods` VALUES ('26', '', '法国原装进口圣贝克干红葡萄酒750ml', '0', '0', '0', '0', '82', '68', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/19_P_1448946951581.jpg', '0', '0', '2018-03-27 17:35:24.363619', '25');
INSERT INTO `goods_goods` VALUES ('27', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/18_P_1448947011435.jpg', '0', '1', '2018-03-27 17:35:24.430673', '25');
INSERT INTO `goods_goods` VALUES ('28', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/22_P_1448946729629.jpg', '0', '0', '2018-03-27 17:35:24.631134', '30');
INSERT INTO `goods_goods` VALUES ('29', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/45_P_1448946661303.jpg', '0', '0', '2018-03-27 17:35:24.675581', '36');
INSERT INTO `goods_goods` VALUES ('30', '', '赣南脐橙特级果10斤装', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/32_P_1448948525620.jpg', '0', '1', '2018-03-27 17:35:24.719610', '62');
INSERT INTO `goods_goods` VALUES ('31', '435675432', '泰国菠萝蜜16-18斤1个装', '0', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/30_P_1448948663450.jpg', '1', '0', '2018-03-27 17:35:00.000000', '66');
INSERT INTO `goods_goods` VALUES ('32', '', '四川双流草莓新鲜水果礼盒2盒', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/31_P_1448948598947.jpg', '0', '0', '2018-03-27 17:35:24.854520', '70');
INSERT INTO `goods_goods` VALUES ('33', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/35_P_1448948333610.jpg', '0', '0', '2018-03-27 17:35:24.931092', '58');
INSERT INTO `goods_goods` VALUES ('34', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/36_P_1448948234405.jpg', '0', '1', '2018-03-27 17:35:24.998147', '58');
INSERT INTO `goods_goods` VALUES ('35', '32465754', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\r\n        释迦是水果中的贵族,\r\n        产量少,\r\n        味道很甜,\r\n        奶香十足,\r\n        非常可口,\r\n        果裹果园顺丰空运,\r\n        保证新鲜.果子个大,\r\n        一斤1-2个左右,\r\n        大个头的果子更尽兴!', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/33_P_1448948479966.jpg', '1', '0', '2018-03-27 17:35:00.000000', '62');
INSERT INTO `goods_goods` VALUES ('36', '', '潍坊萝卜5斤/箱礼盒', '0', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/34_P_1448948399009.jpg', '0', '0', '2018-03-27 17:35:25.375245', '70');
INSERT INTO `goods_goods` VALUES ('37', '345678654', '休闲零食膨化食品焦糖/奶油/椒麻味', '0', '0', '0', '0', '154', '99', '休闲零食膨化食品焦糖/奶油/椒麻味', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/43_P_1448948762645.jpg', '1', '0', '2018-03-27 17:35:00.000000', '74');
INSERT INTO `goods_goods` VALUES ('38', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/38_P_1448949220255.jpg', '0', '0', '2018-03-27 17:35:25.486051', '105');
INSERT INTO `goods_goods` VALUES ('39', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/44_P_1448948850187.jpg', '0', '0', '2018-03-27 17:35:25.541093', '103');
INSERT INTO `goods_goods` VALUES ('40', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/49_P_1448162819889.jpg', '0', '0', '2018-03-27 17:35:25.597405', '102');
INSERT INTO `goods_goods` VALUES ('41', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/40_P_1448949038702.jpg', '0', '0', '2018-03-27 17:35:25.652453', '103');
INSERT INTO `goods_goods` VALUES ('42', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/39_P_1448949115481.jpg', '0', '0', '2018-03-27 17:35:25.707804', '106');
INSERT INTO `goods_goods` VALUES ('43', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/41_P_1448948980358.jpg', '0', '0', '2018-03-27 17:35:25.763919', '107');
INSERT INTO `goods_goods` VALUES ('44', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/37_P_1448949284365.jpg', '0', '0', '2018-03-27 17:35:25.841011', '104');
INSERT INTO `goods_goods` VALUES ('45', '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/42_P_1448948895193.jpg', '0', '1', '2018-03-27 17:35:25.896805', '103');
INSERT INTO `goods_goods` VALUES ('46', '', '维纳斯橄榄菜籽油5L/桶', '0', '0', '0', '0', '187', '156', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/27_P_1448947771805.jpg', '0', '0', '2018-03-27 17:35:25.952820', '51');
INSERT INTO `goods_goods` VALUES ('47', '456432532532', '糙米450gx3包粮油米面', '0', '0', '0', '0', '18', '15', '糙米450gx3包粮油米面', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/23_P_1448948070348.jpg', '1', '0', '2018-03-27 17:35:00.000000', '41');
INSERT INTO `goods_goods` VALUES ('48', '', '精炼一级大豆油5L色拉油粮油食用油', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/26_P_1448947825754.jpg', '0', '1', '2018-03-27 17:35:26.064816', '56');
INSERT INTO `goods_goods` VALUES ('49', '', '橄榄玉米油5L*2桶', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/28_P_1448947699948.jpg', '0', '0', '2018-03-27 17:35:26.120383', '54');
INSERT INTO `goods_goods` VALUES ('50', '', '山西黑米农家黑米4斤', '0', '0', '0', '0', '11', '9', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/24_P_1448948023823.jpg', '0', '0', '2018-03-27 17:35:26.208474', '55');
INSERT INTO `goods_goods` VALUES ('51', '', '稻园牌稻米油粮油米糠油绿色植物油', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/25_P_1448947875346.jpg', '0', '0', '2018-03-27 17:35:26.286538', '47');
INSERT INTO `goods_goods` VALUES ('52', '54324567543', '融氏纯玉米胚芽油5l桶', '0', '0', '0', '0', '14', '12', '融氏纯玉米胚芽油5l桶', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/29_P_1448947631994.jpg', '1', '1', '2018-03-27 17:35:00.000000', '41');
INSERT INTO `goods_goods` VALUES ('53', '', '新鲜水果甜蜜香脆单果约800克', '0', '0', '0', '0', '232', '156', '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/1_P_1449024889889.jpg', '0', '0', '2018-03-31 11:46:20.294328', '20');
INSERT INTO `goods_goods` VALUES ('54', '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', '0', '0', '0', '0', '106', '88', '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/2_P_1448945810202.jpg', '0', '0', '2018-03-31 11:46:20.513887', '7');
INSERT INTO `goods_goods` VALUES ('55', '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', '0', '0', '0', '0', '286', '238', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/7_P_1448945104883.jpg', '0', '0', '2018-03-31 11:46:20.671551', '15');
INSERT INTO `goods_goods` VALUES ('56', '', '日本蒜蓉粉丝扇贝270克6只装', '0', '0', '0', '0', '156', '108', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/47_P_1448946213263.jpg', '0', '0', '2018-03-31 11:46:20.759265', '20');
INSERT INTO `goods_goods` VALUES ('57', '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', '0', '0', '0', '0', '106', '88', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/10_P_1448944572085.jpg', '0', '0', '2018-03-31 11:46:20.837290', '7');
INSERT INTO `goods_goods` VALUES ('58', '', '乌拉圭进口牛肉卷特级肥牛卷', '0', '0', '0', '0', '90', '75', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/4_P_1448945381985.jpg', '0', '0', '2018-03-31 11:46:21.003989', '21');
INSERT INTO `goods_goods` VALUES ('59', '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', '0', '0', '0', '0', '150', '125', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/8_P_1448945032810.jpg', '0', '0', '2018-03-31 11:46:21.103117', '23');
INSERT INTO `goods_goods` VALUES ('60', '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/11_P_1448944388277.jpg', '0', '0', '2018-03-31 11:46:21.291960', '7');
INSERT INTO `goods_goods` VALUES ('61', '', '潮香村澳洲进口牛排家庭团购套餐20片', '0', '0', '0', '0', '239', '199', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/6_P_1448945167279.jpg', '0', '0', '2018-03-31 11:46:21.572143', '22');
INSERT INTO `goods_goods` VALUES ('62', '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', '0', '0', '0', '0', '202', '168', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/9_P_1448944791617.jpg', '0', '0', '2018-03-31 11:46:21.772436', '20');
INSERT INTO `goods_goods` VALUES ('63', '', '澳洲进口牛尾巴300g新鲜肥牛肉', '0', '0', '0', '0', '306', '255', '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/3_P_1448945490837.jpg', '0', '0', '2018-03-31 11:46:22.015212', '2');
INSERT INTO `goods_goods` VALUES ('64', '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', '0', '0', '0', '0', '126', '88', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/48_P_1448943988970.jpg', '0', '0', '2018-03-31 11:46:22.092167', '7');
INSERT INTO `goods_goods` VALUES ('65', '', '澳洲进口安格斯牛切片上脑牛排1000g', '0', '0', '0', '0', '144', '120', '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/5_P_1448945270390.jpg', '0', '0', '2018-03-31 11:46:22.192067', '12');
INSERT INTO `goods_goods` VALUES ('66', '', '帐篷出租', '0', '0', '0', '0', '120', '100', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'images/201705/goods_img/53_P_1495068879687.jpg', '0', '0', '2018-03-31 11:46:22.292309', '21');
INSERT INTO `goods_goods` VALUES ('67', '', '52度茅台集团国隆双喜酒500mlx6', '0', '0', '0', '0', '23', '19', '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/16_P_1448947194687.jpg', '0', '0', '2018-03-31 11:46:22.348213', '37');
INSERT INTO `goods_goods` VALUES ('68', '', '52度水井坊臻酿八號500ml', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/14_P_1448947354031.jpg', '0', '0', '2018-03-31 11:46:22.414813', '36');
INSERT INTO `goods_goods` VALUES ('69', '', '53度茅台仁酒500ml', '0', '0', '0', '0', '190', '158', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/12_P_1448947547989.jpg', '0', '0', '2018-03-31 11:46:22.581064', '32');
INSERT INTO `goods_goods` VALUES ('70', '', '双响炮洋酒JimBeamwhiskey美国白占边', '0', '0', '0', '0', '38', '28', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/46_P_1448946598711.jpg', '0', '0', '2018-03-31 11:46:22.635821', '29');
INSERT INTO `goods_goods` VALUES ('71', '', '西夫拉姆进口洋酒小酒版', '0', '0', '0', '0', '55', '46', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/21_P_1448946793276.jpg', '0', '0', '2018-03-31 11:46:22.714128', '36');
INSERT INTO `goods_goods` VALUES ('72', '', '茅台53度飞天茅台500ml', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/15_P_1448947257324.jpg', '0', '0', '2018-03-31 11:46:22.853017', '30');
INSERT INTO `goods_goods` VALUES ('73', '', '52度兰陵·紫气东来1600mL山东名酒', '0', '0', '0', '0', '42', '35', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/13_P_1448947460386.jpg', '0', '0', '2018-03-31 11:46:22.935289', '29');
INSERT INTO `goods_goods` VALUES ('74', '', 'JohnnieWalker尊尼获加黑牌威士忌', '0', '0', '0', '0', '24', '20', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/50_P_1448946543091.jpg', '0', '0', '2018-03-31 11:46:23.024239', '36');
INSERT INTO `goods_goods` VALUES ('75', '', '人头马CLUB特优香槟干邑350ml', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/51_P_1448946466595.jpg', '0', '0', '2018-03-31 11:46:23.102716', '30');
INSERT INTO `goods_goods` VALUES ('76', '', '张裕干红葡萄酒750ml*6支', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/17_P_1448947102246.jpg', '0', '0', '2018-03-31 11:46:23.191631', '31');
INSERT INTO `goods_goods` VALUES ('77', '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', '0', '0', '0', '0', '46', '38', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/20_P_1448946850602.jpg', '0', '0', '2018-03-31 11:46:23.246862', '29');
INSERT INTO `goods_goods` VALUES ('78', '', '法国原装进口圣贝克干红葡萄酒750ml', '0', '0', '0', '0', '82', '68', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/19_P_1448946951581.jpg', '0', '0', '2018-03-31 11:46:23.302216', '25');
INSERT INTO `goods_goods` VALUES ('79', '', '法国百利威干红葡萄酒AOP级6支装', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/18_P_1448947011435.jpg', '0', '0', '2018-03-31 11:46:23.381179', '25');
INSERT INTO `goods_goods` VALUES ('80', '', '芝华士12年苏格兰威士忌700ml', '0', '0', '0', '0', '71', '59', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/22_P_1448946729629.jpg', '0', '0', '2018-03-31 11:46:23.492018', '30');
INSERT INTO `goods_goods` VALUES ('81', '', '深蓝伏特加巴维兰利口酒送预调酒', '0', '0', '0', '0', '31', '18', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/45_P_1448946661303.jpg', '0', '0', '2018-03-31 11:46:23.614581', '36');
INSERT INTO `goods_goods` VALUES ('82', '', '赣南脐橙特级果10斤装', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/32_P_1448948525620.jpg', '0', '0', '2018-03-31 11:46:23.669890', '62');
INSERT INTO `goods_goods` VALUES ('83', '', '泰国菠萝蜜16-18斤1个装', '0', '0', '0', '0', '11', '9', '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/30_P_1448948663450.jpg', '0', '0', '2018-03-31 11:46:23.714948', '66');
INSERT INTO `goods_goods` VALUES ('84', '', '四川双流草莓新鲜水果礼盒2盒', '0', '0', '0', '0', '22', '18', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/31_P_1448948598947.jpg', '0', '0', '2018-03-31 11:46:23.926227', '70');
INSERT INTO `goods_goods` VALUES ('85', '', '新鲜头茬非洲冰草冰菜', '0', '0', '0', '0', '67', '56', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/35_P_1448948333610.jpg', '0', '0', '2018-03-31 11:46:24.013558', '58');
INSERT INTO `goods_goods` VALUES ('86', '', '仿真蔬菜水果果蔬菜模型', '0', '0', '0', '0', '6', '5', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/36_P_1448948234405.jpg', '0', '0', '2018-03-31 11:46:24.125777', '58');
INSERT INTO `goods_goods` VALUES ('87', '', '现摘芭乐番石榴台湾珍珠芭乐', '0', '0', '0', '0', '28', '23', '海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/33_P_1448948479966.jpg', '0', '0', '2018-03-31 11:46:24.202222', '62');
INSERT INTO `goods_goods` VALUES ('88', '', '潍坊萝卜5斤/箱礼盒', '0', '0', '0', '0', '46', '38', '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/34_P_1448948399009.jpg', '0', '0', '2018-03-31 11:46:24.280133', '70');
INSERT INTO `goods_goods` VALUES ('89', '', '休闲零食膨化食品焦糖/奶油/椒麻味', '0', '0', '0', '0', '154', '99', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/43_P_1448948762645.jpg', '0', '0', '2018-03-31 11:46:24.335942', '74');
INSERT INTO `goods_goods` VALUES ('90', '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', '0', '0', '0', '0', '84', '70', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/38_P_1448949220255.jpg', '0', '0', '2018-03-31 11:46:24.391162', '105');
INSERT INTO `goods_goods` VALUES ('91', '', '蒙牛特仑苏有机奶250ml×12盒', '0', '0', '0', '0', '70', '32', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/44_P_1448948850187.jpg', '0', '0', '2018-03-31 11:46:24.447608', '103');
INSERT INTO `goods_goods` VALUES ('92', '', '1元支付测试商品', '0', '0', '0', '0', '1', '1', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/49_P_1448162819889.jpg', '0', '0', '2018-03-31 11:46:24.502819', '102');
INSERT INTO `goods_goods` VALUES ('93', '', '德运全脂新鲜纯牛奶1L*10盒装整箱', '0', '0', '0', '0', '70', '58', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/40_P_1448949038702.jpg', '0', '0', '2018-03-31 11:46:24.558024', '103');
INSERT INTO `goods_goods` VALUES ('94', '', '木糖醇红枣早餐奶即食豆奶粉538g', '0', '0', '0', '0', '38', '32', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/39_P_1448949115481.jpg', '0', '0', '2018-03-31 11:46:24.625723', '106');
INSERT INTO `goods_goods` VALUES ('95', '', '高钙液体奶200ml*24盒', '0', '0', '0', '0', '26', '22', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/41_P_1448948980358.jpg', '0', '0', '2018-03-31 11:46:24.681136', '107');
INSERT INTO `goods_goods` VALUES ('96', '', '新西兰进口全脂奶粉900g', '0', '0', '0', '0', '720', '600', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/37_P_1448949284365.jpg', '0', '0', '2018-03-31 11:46:24.736455', '104');
INSERT INTO `goods_goods` VALUES ('97', '', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', '0', '0', '0', '0', '43', '36', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/42_P_1448948895193.jpg', '0', '0', '2018-03-31 11:46:24.792041', '103');
INSERT INTO `goods_goods` VALUES ('98', '', '维纳斯橄榄菜籽油5L/桶', '0', '0', '0', '0', '187', '156', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/27_P_1448947771805.jpg', '0', '0', '2018-03-31 11:46:24.848170', '51');
INSERT INTO `goods_goods` VALUES ('99', '', '糙米450gx3包粮油米面', '0', '0', '0', '0', '18', '15', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/23_P_1448948070348.jpg', '0', '0', '2018-03-31 11:46:24.904228', '41');
INSERT INTO `goods_goods` VALUES ('100', '', '精炼一级大豆油5L色拉油粮油食用油', '0', '0', '0', '0', '54', '45', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/26_P_1448947825754.jpg', '0', '0', '2018-03-31 11:46:24.959523', '56');
INSERT INTO `goods_goods` VALUES ('101', '', '橄榄玉米油5L*2桶', '0', '0', '0', '0', '31', '26', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/28_P_1448947699948.jpg', '0', '0', '2018-03-31 11:46:25.014686', '54');
INSERT INTO `goods_goods` VALUES ('102', '', '山西黑米农家黑米4斤', '0', '0', '0', '0', '11', '9', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/24_P_1448948023823.jpg', '0', '0', '2018-03-31 11:46:25.091789', '55');
INSERT INTO `goods_goods` VALUES ('103', '', '稻园牌稻米油粮油米糠油绿色植物油', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/25_P_1448947875346.jpg', '0', '0', '2018-03-31 11:46:25.159603', '47');
INSERT INTO `goods_goods` VALUES ('104', '', '融氏纯玉米胚芽油5l桶', '0', '0', '0', '0', '14', '12', '', '<p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"http://127.0.0.1:8000/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', '1', 'goods/images/29_P_1448947631994.jpg', '0', '0', '2018-03-31 11:46:25.227010', '41');

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goodsbrand
-- ----------------------------
INSERT INTO `goods_goodsbrand` VALUES ('1', 'asdfsa', 'fdasfasd', 'brands/lyfs-1_egCAPt9.jpg', '2018-03-31 10:37:00.000000', '1');
INSERT INTO `goods_goodsbrand` VALUES ('2', 'fasdfdsa', 'fdsafdsa', 'brands/scsg-2_s2g3L7M_WNrXMJ5.jpg', '2018-03-31 10:38:00.000000', '74');
INSERT INTO `goods_goodsbrand` VALUES ('3', 'fdsa', 'fsdafdasf', 'brands/scsg-3_MLD3Z5S.jpg', '2018-03-31 10:38:00.000000', null);
INSERT INTO `goods_goodsbrand` VALUES ('4', 'fdsa', 'fdsafsda', 'brands/sxsp-1_RHfBW8g.jpg', '2018-03-31 10:38:00.000000', '108');
INSERT INTO `goods_goodsbrand` VALUES ('5', 'fsda', 'treqrew', 'brands/sxsp-2_KEMHCls_Y3a7Zjj_gNTvMkv.jpg', '2018-03-31 10:38:00.000000', '74');
INSERT INTO `goods_goodsbrand` VALUES ('6', 'raf', 'fdsae', 'brands/sxsp-3_p6QnMEd_XVPqnaL_2ShWR65.jpg', '2018-03-31 10:38:00.000000', '117');

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `category_type` int(11) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` (`parent_category_id`),
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES ('1', '生鲜食品', 'sxsp', 'sxsp', '1', '1', '2018-03-27 17:31:00.000000', null);
INSERT INTO `goods_goodscategory` VALUES ('2', '精品肉类', 'jprl', '', '2', '0', '2018-03-27 17:31:12.496622', '1');
INSERT INTO `goods_goodscategory` VALUES ('3', '羊肉', 'yr', '', '3', '0', '2018-03-27 17:31:12.517698', '2');
INSERT INTO `goods_goodscategory` VALUES ('4', '禽类', 'ql', '', '3', '0', '2018-03-27 17:31:12.573757', '2');
INSERT INTO `goods_goodscategory` VALUES ('5', '猪肉', 'zr', '', '3', '0', '2018-03-27 17:31:12.595255', '2');
INSERT INTO `goods_goodscategory` VALUES ('6', '牛肉', 'nr', '', '3', '0', '2018-03-27 17:31:12.618292', '2');
INSERT INTO `goods_goodscategory` VALUES ('7', '海鲜水产', 'hxsc', '', '2', '0', '2018-03-27 17:31:12.639306', '1');
INSERT INTO `goods_goodscategory` VALUES ('8', '参鲍', 'cb', '', '3', '0', '2018-03-27 17:31:12.662324', '7');
INSERT INTO `goods_goodscategory` VALUES ('9', '鱼', 'yu', '', '3', '0', '2018-03-27 17:31:12.695352', '7');
INSERT INTO `goods_goodscategory` VALUES ('10', '虾', 'xia', '', '3', '0', '2018-03-27 17:31:12.728969', '7');
INSERT INTO `goods_goodscategory` VALUES ('11', '蟹/贝', 'xb', '', '3', '0', '2018-03-27 17:31:12.749984', '7');
INSERT INTO `goods_goodscategory` VALUES ('12', '蛋制品', 'dzp', '', '2', '0', '2018-03-27 17:31:12.784008', '1');
INSERT INTO `goods_goodscategory` VALUES ('13', '松花蛋/咸鸭蛋', 'xhd_xyd', '', '3', '0', '2018-03-27 17:31:12.806565', '12');
INSERT INTO `goods_goodscategory` VALUES ('14', '鸡蛋', 'jd', '', '3', '0', '2018-03-27 17:31:12.828582', '12');
INSERT INTO `goods_goodscategory` VALUES ('15', '叶菜类', 'ycl', '', '2', '0', '2018-03-27 17:31:12.850598', '1');
INSERT INTO `goods_goodscategory` VALUES ('16', '生菜', 'sc', '', '3', '0', '2018-03-27 17:31:12.873629', '15');
INSERT INTO `goods_goodscategory` VALUES ('17', '菠菜', 'bc', '', '3', '0', '2018-03-27 17:31:12.906472', '15');
INSERT INTO `goods_goodscategory` VALUES ('18', '圆椒', 'yj', '', '3', '0', '2018-03-27 17:31:12.935660', '15');
INSERT INTO `goods_goodscategory` VALUES ('19', '西兰花', 'xlh', '', '3', '0', '2018-03-27 17:31:12.950673', '15');
INSERT INTO `goods_goodscategory` VALUES ('20', '根茎类', 'gjl', '', '2', '0', '2018-03-27 17:31:12.973692', '1');
INSERT INTO `goods_goodscategory` VALUES ('21', '茄果类', 'qgl', '', '2', '0', '2018-03-27 17:31:13.006814', '1');
INSERT INTO `goods_goodscategory` VALUES ('22', '菌菇类', 'jgl', '', '2', '0', '2018-03-27 17:31:13.029819', '1');
INSERT INTO `goods_goodscategory` VALUES ('23', '进口生鲜', 'jksx', '', '2', '0', '2018-03-27 17:31:13.050905', '1');
INSERT INTO `goods_goodscategory` VALUES ('24', '酒水饮料', 'jsyl', 'jsyl', '1', '1', '2018-03-27 17:31:00.000000', null);
INSERT INTO `goods_goodscategory` VALUES ('25', '白酒', 'bk', '', '2', '0', '2018-03-27 17:31:13.096018', '24');
INSERT INTO `goods_goodscategory` VALUES ('26', '五粮液', 'wly', '', '3', '0', '2018-03-27 17:31:13.118980', '25');
INSERT INTO `goods_goodscategory` VALUES ('27', '泸州老窖', 'lzlj', '', '3', '0', '2018-03-27 17:31:13.140030', '25');
INSERT INTO `goods_goodscategory` VALUES ('28', '茅台', 'mt', '', '3', '0', '2018-03-27 17:31:13.164014', '25');
INSERT INTO `goods_goodscategory` VALUES ('29', '葡萄酒', 'ptj', '', '2', '0', '2018-03-27 17:31:13.214303', '24');
INSERT INTO `goods_goodscategory` VALUES ('30', '洋酒', 'yj', '', '2', '0', '2018-03-27 17:31:13.230317', '24');
INSERT INTO `goods_goodscategory` VALUES ('31', '啤酒', 'pj', '', '2', '0', '2018-03-27 17:31:13.252335', '24');
INSERT INTO `goods_goodscategory` VALUES ('32', '其他酒品', 'qtjp', '', '2', '0', '2018-03-27 17:31:13.297479', '24');
INSERT INTO `goods_goodscategory` VALUES ('33', '其他品牌', 'qtpp', '', '3', '0', '2018-03-27 17:31:13.318998', '32');
INSERT INTO `goods_goodscategory` VALUES ('34', '黄酒', 'hj', '', '3', '0', '2018-03-27 17:31:13.341014', '32');
INSERT INTO `goods_goodscategory` VALUES ('35', '养生酒', 'ysj', '', '3', '0', '2018-03-27 17:31:13.363032', '32');
INSERT INTO `goods_goodscategory` VALUES ('36', '饮料/水', 'yls', '', '2', '0', '2018-03-27 17:31:13.386043', '24');
INSERT INTO `goods_goodscategory` VALUES ('37', '红酒', 'hj', '', '2', '0', '2018-03-27 17:31:13.486275', '24');
INSERT INTO `goods_goodscategory` VALUES ('38', '白兰地', 'bld', '', '3', '0', '2018-03-27 17:31:13.508736', '37');
INSERT INTO `goods_goodscategory` VALUES ('39', '威士忌', 'wsj', '', '3', '0', '2018-03-27 17:31:13.530825', '37');
INSERT INTO `goods_goodscategory` VALUES ('40', '粮油副食', '粮油副食', '', '1', '0', '2018-03-27 17:31:13.552840', null);
INSERT INTO `goods_goodscategory` VALUES ('41', '食用油', '食用油', '', '2', '0', '2018-03-27 17:31:13.575856', '40');
INSERT INTO `goods_goodscategory` VALUES ('42', '其他食用油', '其他食用油', '', '3', '0', '2018-03-27 17:31:13.597461', '41');
INSERT INTO `goods_goodscategory` VALUES ('43', '菜仔油', '菜仔油', '', '3', '0', '2018-03-27 17:31:13.620170', '41');
INSERT INTO `goods_goodscategory` VALUES ('44', '花生油', '花生油', '', '3', '0', '2018-03-27 17:31:13.641186', '41');
INSERT INTO `goods_goodscategory` VALUES ('45', '橄榄油', '橄榄油', '', '3', '0', '2018-03-27 17:31:13.664202', '41');
INSERT INTO `goods_goodscategory` VALUES ('46', '礼盒', '礼盒', '', '3', '0', '2018-03-27 17:31:13.686217', '41');
INSERT INTO `goods_goodscategory` VALUES ('47', '米面杂粮', '米面杂粮', '', '2', '0', '2018-03-27 17:31:13.708957', '40');
INSERT INTO `goods_goodscategory` VALUES ('48', '面粉/面条', '面粉/面条', '', '3', '0', '2018-03-27 17:31:13.730453', '47');
INSERT INTO `goods_goodscategory` VALUES ('49', '大米', '大米', '', '3', '0', '2018-03-27 17:31:13.753469', '47');
INSERT INTO `goods_goodscategory` VALUES ('50', '意大利面', '意大利面', '', '3', '0', '2018-03-27 17:31:13.774493', '47');
INSERT INTO `goods_goodscategory` VALUES ('51', '厨房调料', '厨房调料', '', '2', '0', '2018-03-27 17:31:13.797626', '40');
INSERT INTO `goods_goodscategory` VALUES ('52', '调味油/汁', '调味油/汁', '', '3', '0', '2018-03-27 17:31:13.818915', '51');
INSERT INTO `goods_goodscategory` VALUES ('53', '酱油/醋', '酱油/醋', '', '3', '0', '2018-03-27 17:31:13.841903', '51');
INSERT INTO `goods_goodscategory` VALUES ('54', '南北干货', '南北干货', '', '2', '0', '2018-03-27 17:31:13.862919', '40');
INSERT INTO `goods_goodscategory` VALUES ('55', '方便速食', '方便速食', '', '2', '0', '2018-03-27 17:31:13.885935', '40');
INSERT INTO `goods_goodscategory` VALUES ('56', '调味品', '调味品', '', '2', '0', '2018-03-27 17:31:13.907485', '40');
INSERT INTO `goods_goodscategory` VALUES ('57', '蔬菜水果', '蔬菜水果', '', '1', '0', '2018-03-27 17:31:13.930008', null);
INSERT INTO `goods_goodscategory` VALUES ('58', '有机蔬菜', '有机蔬菜', '', '2', '0', '2018-03-27 17:31:13.951041', '57');
INSERT INTO `goods_goodscategory` VALUES ('59', '西红柿', '西红柿', '', '3', '0', '2018-03-27 17:31:13.974040', '58');
INSERT INTO `goods_goodscategory` VALUES ('60', '韭菜', '韭菜', '', '3', '0', '2018-03-27 17:31:13.995055', '58');
INSERT INTO `goods_goodscategory` VALUES ('61', '青菜', '青菜', '', '3', '0', '2018-03-27 17:31:14.018095', '58');
INSERT INTO `goods_goodscategory` VALUES ('62', '精选蔬菜', '精选蔬菜', '', '2', '0', '2018-03-27 17:31:14.040129', '57');
INSERT INTO `goods_goodscategory` VALUES ('63', '甘蓝', '甘蓝', '', '3', '0', '2018-03-27 17:31:14.062126', '62');
INSERT INTO `goods_goodscategory` VALUES ('64', '胡萝卜', '胡萝卜', '', '3', '0', '2018-03-27 17:31:14.084142', '62');
INSERT INTO `goods_goodscategory` VALUES ('65', '黄瓜', '黄瓜', '', '3', '0', '2018-03-27 17:31:14.107194', '62');
INSERT INTO `goods_goodscategory` VALUES ('66', '进口水果', '进口水果', '', '2', '0', '2018-03-27 17:31:14.128216', '57');
INSERT INTO `goods_goodscategory` VALUES ('67', '火龙果', '火龙果', '', '3', '0', '2018-03-27 17:31:14.162238', '66');
INSERT INTO `goods_goodscategory` VALUES ('68', '菠萝蜜', '菠萝蜜', '', '3', '0', '2018-03-27 17:31:14.184236', '66');
INSERT INTO `goods_goodscategory` VALUES ('69', '奇异果', '奇异果', '', '3', '0', '2018-03-27 17:31:14.207260', '66');
INSERT INTO `goods_goodscategory` VALUES ('70', '国产水果', '国产水果', '', '2', '0', '2018-03-27 17:31:14.228171', '57');
INSERT INTO `goods_goodscategory` VALUES ('71', '水果礼盒', '水果礼盒', '', '3', '0', '2018-03-27 17:31:14.251254', '70');
INSERT INTO `goods_goodscategory` VALUES ('72', '苹果', '苹果', '', '3', '0', '2018-03-27 17:31:14.273226', '70');
INSERT INTO `goods_goodscategory` VALUES ('73', '雪梨', '雪梨', '', '3', '0', '2018-03-27 17:31:14.295255', '70');
INSERT INTO `goods_goodscategory` VALUES ('74', '休闲食品', '休闲食品', '奶类食品', '1', '1', '2018-03-27 17:31:00.000000', null);
INSERT INTO `goods_goodscategory` VALUES ('75', '休闲零食', '休闲零食', '', '2', '0', '2018-03-27 17:31:14.341064', '74');
INSERT INTO `goods_goodscategory` VALUES ('76', '果冻', '果冻', '', '3', '0', '2018-03-27 17:31:14.362078', '75');
INSERT INTO `goods_goodscategory` VALUES ('77', '枣类', '枣类', '', '3', '0', '2018-03-27 17:31:14.385094', '75');
INSERT INTO `goods_goodscategory` VALUES ('78', '蜜饯', '蜜饯', '', '3', '0', '2018-03-27 17:31:14.432576', '75');
INSERT INTO `goods_goodscategory` VALUES ('79', '肉类零食', '肉类零食', '', '3', '0', '2018-03-27 17:31:14.507763', '75');
INSERT INTO `goods_goodscategory` VALUES ('80', '坚果炒货', '坚果炒货', '', '3', '0', '2018-03-27 17:31:14.540366', '75');
INSERT INTO `goods_goodscategory` VALUES ('81', '糖果', '糖果', '', '2', '0', '2018-03-27 17:31:14.563384', '74');
INSERT INTO `goods_goodscategory` VALUES ('82', '创意喜糖', '创意喜糖', '', '3', '0', '2018-03-27 17:31:14.585404', '81');
INSERT INTO `goods_goodscategory` VALUES ('83', '口香糖', '口香糖', '', '3', '0', '2018-03-27 17:31:14.607502', '81');
INSERT INTO `goods_goodscategory` VALUES ('84', '软糖', '软糖', '', '3', '0', '2018-03-27 17:31:14.629574', '81');
INSERT INTO `goods_goodscategory` VALUES ('85', '棒棒糖', '棒棒糖', '', '3', '0', '2018-03-27 17:31:14.652593', '81');
INSERT INTO `goods_goodscategory` VALUES ('86', '巧克力', '巧克力', '', '2', '0', '2018-03-27 17:31:14.674629', '74');
INSERT INTO `goods_goodscategory` VALUES ('87', '夹心巧克力', '夹心巧克力', '', '3', '0', '2018-03-27 17:31:14.697618', '86');
INSERT INTO `goods_goodscategory` VALUES ('88', '白巧克力', '白巧克力', '', '3', '0', '2018-03-27 17:31:14.719449', '86');
INSERT INTO `goods_goodscategory` VALUES ('89', '松露巧克力', '松露巧克力', '', '3', '0', '2018-03-27 17:31:14.742461', '86');
INSERT INTO `goods_goodscategory` VALUES ('90', '黑巧克力', '黑巧克力', '', '3', '0', '2018-03-27 17:31:14.763476', '86');
INSERT INTO `goods_goodscategory` VALUES ('91', '肉干肉脯/豆干', '肉干肉脯/豆干', '', '2', '0', '2018-03-27 17:31:14.814595', '74');
INSERT INTO `goods_goodscategory` VALUES ('92', '牛肉干', '牛肉干', '', '3', '0', '2018-03-27 17:31:14.830588', '91');
INSERT INTO `goods_goodscategory` VALUES ('93', '猪肉脯', '猪肉脯', '', '3', '0', '2018-03-27 17:31:14.853599', '91');
INSERT INTO `goods_goodscategory` VALUES ('94', '牛肉粒', '牛肉粒', '', '3', '0', '2018-03-27 17:31:14.875614', '91');
INSERT INTO `goods_goodscategory` VALUES ('95', '猪肉干', '猪肉干', '', '3', '0', '2018-03-27 17:31:14.898157', '91');
INSERT INTO `goods_goodscategory` VALUES ('96', '鱿鱼丝/鱼干', '鱿鱼丝/鱼干', '', '2', '0', '2018-03-27 17:31:14.919508', '74');
INSERT INTO `goods_goodscategory` VALUES ('97', '鱿鱼足', '鱿鱼足', '', '3', '0', '2018-03-27 17:31:14.942518', '96');
INSERT INTO `goods_goodscategory` VALUES ('98', '鱿鱼丝', '鱿鱼丝', '', '3', '0', '2018-03-27 17:31:14.963515', '96');
INSERT INTO `goods_goodscategory` VALUES ('99', '墨鱼/乌贼', '墨鱼/乌贼', '', '3', '0', '2018-03-27 17:31:14.986535', '96');
INSERT INTO `goods_goodscategory` VALUES ('100', '鱿鱼仔', '鱿鱼仔', '', '3', '0', '2018-03-27 17:31:15.008965', '96');
INSERT INTO `goods_goodscategory` VALUES ('101', '鱿鱼片', '鱿鱼片', '', '3', '0', '2018-03-27 17:31:15.030991', '96');
INSERT INTO `goods_goodscategory` VALUES ('102', '奶类食品', '奶类食品', '', '1', '0', '2018-03-27 17:31:15.053014', null);
INSERT INTO `goods_goodscategory` VALUES ('103', '进口奶品', '进口奶品', '', '2', '0', '2018-03-27 17:31:15.076047', '102');
INSERT INTO `goods_goodscategory` VALUES ('104', '国产奶品', '国产奶品', '', '2', '0', '2018-03-27 17:31:15.097043', '102');
INSERT INTO `goods_goodscategory` VALUES ('105', '奶粉', '奶粉', '', '2', '0', '2018-03-27 17:31:15.119654', '102');
INSERT INTO `goods_goodscategory` VALUES ('106', '有机奶', '有机奶', '', '2', '0', '2018-03-27 17:31:15.141691', '102');
INSERT INTO `goods_goodscategory` VALUES ('107', '原料奶', '原料奶', '', '2', '0', '2018-03-27 17:31:15.168708', '102');
INSERT INTO `goods_goodscategory` VALUES ('108', '天然干货', '天然干货', '', '1', '0', '2018-03-27 17:31:15.186702', null);
INSERT INTO `goods_goodscategory` VALUES ('109', '菌菇类', '菌菇类', '', '2', '0', '2018-03-27 17:31:15.207825', '108');
INSERT INTO `goods_goodscategory` VALUES ('110', '腌干海产', '腌干海产', '', '2', '0', '2018-03-27 17:31:15.231021', '108');
INSERT INTO `goods_goodscategory` VALUES ('111', '汤料', '汤料', '', '2', '0', '2018-03-27 17:31:15.252037', '108');
INSERT INTO `goods_goodscategory` VALUES ('112', '豆类', '豆类', '', '2', '0', '2018-03-27 17:31:15.286064', '108');
INSERT INTO `goods_goodscategory` VALUES ('113', '干菜/菜干', '干菜/菜干', '', '2', '0', '2018-03-27 17:31:15.307081', '108');
INSERT INTO `goods_goodscategory` VALUES ('114', '干果/果干', '干果/果干', '', '2', '0', '2018-03-27 17:31:15.329602', '108');
INSERT INTO `goods_goodscategory` VALUES ('115', '豆制品', '豆制品', '', '2', '0', '2018-03-27 17:31:15.351617', '108');
INSERT INTO `goods_goodscategory` VALUES ('116', '腊味', '腊味', '', '2', '0', '2018-03-27 17:31:15.373650', '108');
INSERT INTO `goods_goodscategory` VALUES ('117', '精选茗茶', '精选茗茶', '', '1', '0', '2018-03-27 17:31:15.451250', null);
INSERT INTO `goods_goodscategory` VALUES ('118', '白茶', '白茶', '', '2', '0', '2018-03-27 17:31:15.473286', '117');
INSERT INTO `goods_goodscategory` VALUES ('119', '红茶', '红茶', '', '2', '0', '2018-03-27 17:31:15.495282', '117');
INSERT INTO `goods_goodscategory` VALUES ('120', '绿茶', '绿茶', '', '2', '0', '2018-03-27 17:31:15.517815', '117');

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
INSERT INTO `goods_goodsimage` VALUES ('1', 'goods/images/1_P_1449024889889.jpg', '2018-03-27 17:35:22.315121', '1');
INSERT INTO `goods_goodsimage` VALUES ('2', 'goods/images/1_P_1449024889264.jpg', '2018-03-27 17:35:22.381174', '1');
INSERT INTO `goods_goodsimage` VALUES ('3', 'goods/images/1_P_1449024889726.jpg', '2018-03-27 17:35:22.414199', '1');
INSERT INTO `goods_goodsimage` VALUES ('4', 'goods/images/1_P_1449024889018.jpg', '2018-03-27 17:35:22.474740', '1');
INSERT INTO `goods_goodsimage` VALUES ('5', 'goods/images/1_P_1449024889287.jpg', '2018-03-27 17:35:22.496724', '1');
INSERT INTO `goods_goodsimage` VALUES ('6', 'goods/images/2_P_1448945810202.jpg', '2018-03-27 17:35:22.540756', '2');
INSERT INTO `goods_goodsimage` VALUES ('7', 'goods/images/2_P_1448945810814.jpg', '2018-03-27 17:35:22.571008', '2');
INSERT INTO `goods_goodsimage` VALUES ('8', 'goods/images/7_P_1448945104883.jpg', '2018-03-27 17:35:22.619041', '3');
INSERT INTO `goods_goodsimage` VALUES ('9', 'goods/images/7_P_1448945104734.jpg', '2018-03-27 17:35:22.641058', '3');
INSERT INTO `goods_goodsimage` VALUES ('10', 'goods/images/47_P_1448946213263.jpg', '2018-03-27 17:35:22.684728', '4');
INSERT INTO `goods_goodsimage` VALUES ('11', 'goods/images/47_P_1448946213157.jpg', '2018-03-27 17:35:22.707737', '4');
INSERT INTO `goods_goodsimage` VALUES ('12', 'goods/images/10_P_1448944572085.jpg', '2018-03-27 17:35:22.752144', '5');
INSERT INTO `goods_goodsimage` VALUES ('13', 'goods/images/10_P_1448944572532.jpg', '2018-03-27 17:35:22.774382', '5');
INSERT INTO `goods_goodsimage` VALUES ('14', 'goods/images/10_P_1448944572872.jpg', '2018-03-27 17:35:22.796449', '5');
INSERT INTO `goods_goodsimage` VALUES ('15', 'goods/images/4_P_1448945381985.jpg', '2018-03-27 17:35:22.841466', '6');
INSERT INTO `goods_goodsimage` VALUES ('16', 'goods/images/4_P_1448945381013.jpg', '2018-03-27 17:35:22.885687', '6');
INSERT INTO `goods_goodsimage` VALUES ('17', 'goods/images/8_P_1448945032810.jpg', '2018-03-27 17:35:22.940767', '7');
INSERT INTO `goods_goodsimage` VALUES ('18', 'goods/images/8_P_1448945032646.jpg', '2018-03-27 17:35:22.964314', '7');
INSERT INTO `goods_goodsimage` VALUES ('19', 'goods/images/11_P_1448944388277.jpg', '2018-03-27 17:35:23.008927', '8');
INSERT INTO `goods_goodsimage` VALUES ('20', 'goods/images/11_P_1448944388034.jpg', '2018-03-27 17:35:23.029937', '8');
INSERT INTO `goods_goodsimage` VALUES ('21', 'goods/images/11_P_1448944388201.jpg', '2018-03-27 17:35:23.053051', '8');
INSERT INTO `goods_goodsimage` VALUES ('22', 'goods/images/6_P_1448945167279.jpg', '2018-03-27 17:35:23.097133', '9');
INSERT INTO `goods_goodsimage` VALUES ('23', 'goods/images/6_P_1448945167015.jpg', '2018-03-27 17:35:23.120150', '9');
INSERT INTO `goods_goodsimage` VALUES ('24', 'goods/images/9_P_1448944791617.jpg', '2018-03-27 17:35:23.164448', '10');
INSERT INTO `goods_goodsimage` VALUES ('25', 'goods/images/9_P_1448944791129.jpg', '2018-03-27 17:35:23.186967', '10');
INSERT INTO `goods_goodsimage` VALUES ('26', 'goods/images/9_P_1448944791077.jpg', '2018-03-27 17:35:23.209007', '10');
INSERT INTO `goods_goodsimage` VALUES ('27', 'goods/images/9_P_1448944791229.jpg', '2018-03-27 17:35:23.231998', '10');
INSERT INTO `goods_goodsimage` VALUES ('28', 'goods/images/3_P_1448945490837.jpg', '2018-03-27 17:35:23.276168', '11');
INSERT INTO `goods_goodsimage` VALUES ('29', 'goods/images/3_P_1448945490084.jpg', '2018-03-27 17:35:23.297177', '11');
INSERT INTO `goods_goodsimage` VALUES ('30', 'goods/images/48_P_1448943988970.jpg', '2018-03-27 17:35:23.342210', '12');
INSERT INTO `goods_goodsimage` VALUES ('31', 'goods/images/48_P_1448943988898.jpg', '2018-03-27 17:35:23.365247', '12');
INSERT INTO `goods_goodsimage` VALUES ('32', 'goods/images/48_P_1448943988439.jpg', '2018-03-27 17:35:23.386841', '12');
INSERT INTO `goods_goodsimage` VALUES ('33', 'goods/images/5_P_1448945270390.jpg', '2018-03-27 17:35:23.430872', '13');
INSERT INTO `goods_goodsimage` VALUES ('34', 'goods/images/5_P_1448945270067.jpg', '2018-03-27 17:35:23.453893', '13');
INSERT INTO `goods_goodsimage` VALUES ('35', 'goods/images/5_P_1448945270432.jpg', '2018-03-27 17:35:23.475413', '13');
INSERT INTO `goods_goodsimage` VALUES ('36', 'images/201705/goods_img/53_P_1495068879687.jpg', '2018-03-27 17:35:23.542463', '14');
INSERT INTO `goods_goodsimage` VALUES ('37', 'goods/images/16_P_1448947194687.jpg', '2018-03-27 17:35:23.609533', '15');
INSERT INTO `goods_goodsimage` VALUES ('38', 'goods/images/14_P_1448947354031.jpg', '2018-03-27 17:35:23.654108', '16');
INSERT INTO `goods_goodsimage` VALUES ('39', 'goods/images/14_P_1448947354433.jpg', '2018-03-27 17:35:23.675621', '16');
INSERT INTO `goods_goodsimage` VALUES ('40', 'goods/images/12_P_1448947547989.jpg', '2018-03-27 17:35:23.719651', '17');
INSERT INTO `goods_goodsimage` VALUES ('41', 'goods/images/46_P_1448946598711.jpg', '2018-03-27 17:35:23.764185', '18');
INSERT INTO `goods_goodsimage` VALUES ('42', 'goods/images/46_P_1448946598301.jpg', '2018-03-27 17:35:23.786705', '18');
INSERT INTO `goods_goodsimage` VALUES ('43', 'goods/images/21_P_1448946793276.jpg', '2018-03-27 17:35:23.830806', '19');
INSERT INTO `goods_goodsimage` VALUES ('44', 'goods/images/21_P_1448946793153.jpg', '2018-03-27 17:35:23.853258', '19');
INSERT INTO `goods_goodsimage` VALUES ('45', 'goods/images/15_P_1448947257324.jpg', '2018-03-27 17:35:23.897481', '20');
INSERT INTO `goods_goodsimage` VALUES ('46', 'goods/images/15_P_1448947257580.jpg', '2018-03-27 17:35:23.919550', '20');
INSERT INTO `goods_goodsimage` VALUES ('47', 'goods/images/13_P_1448947460386.jpg', '2018-03-27 17:35:23.964828', '21');
INSERT INTO `goods_goodsimage` VALUES ('48', 'goods/images/13_P_1448947460276.jpg', '2018-03-27 17:35:23.985660', '21');
INSERT INTO `goods_goodsimage` VALUES ('49', 'goods/images/13_P_1448947460353.jpg', '2018-03-27 17:35:24.008598', '21');
INSERT INTO `goods_goodsimage` VALUES ('50', 'goods/images/50_P_1448946543091.jpg', '2018-03-27 17:35:24.053213', '22');
INSERT INTO `goods_goodsimage` VALUES ('51', 'goods/images/50_P_1448946542182.jpg', '2018-03-27 17:35:24.128890', '22');
INSERT INTO `goods_goodsimage` VALUES ('52', 'goods/images/51_P_1448946466595.jpg', '2018-03-27 17:35:24.230456', '23');
INSERT INTO `goods_goodsimage` VALUES ('53', 'goods/images/51_P_1448946466208.jpg', '2018-03-27 17:35:24.252472', '23');
INSERT INTO `goods_goodsimage` VALUES ('54', 'goods/images/17_P_1448947102246.jpg', '2018-03-27 17:35:24.297422', '24');
INSERT INTO `goods_goodsimage` VALUES ('55', 'goods/images/20_P_1448946850602.jpg', '2018-03-27 17:35:24.341455', '25');
INSERT INTO `goods_goodsimage` VALUES ('56', 'goods/images/19_P_1448946951581.jpg', '2018-03-27 17:35:24.385717', '26');
INSERT INTO `goods_goodsimage` VALUES ('57', 'goods/images/19_P_1448946951726.jpg', '2018-03-27 17:35:24.407655', '26');
INSERT INTO `goods_goodsimage` VALUES ('58', 'goods/images/18_P_1448947011435.jpg', '2018-03-27 17:35:24.546691', '27');
INSERT INTO `goods_goodsimage` VALUES ('59', 'goods/images/22_P_1448946729629.jpg', '2018-03-27 17:35:24.652165', '28');
INSERT INTO `goods_goodsimage` VALUES ('60', 'goods/images/45_P_1448946661303.jpg', '2018-03-27 17:35:24.697595', '29');
INSERT INTO `goods_goodsimage` VALUES ('61', 'goods/images/32_P_1448948525620.jpg', '2018-03-27 17:35:24.741697', '30');
INSERT INTO `goods_goodsimage` VALUES ('62', 'goods/images/30_P_1448948663450.jpg', '2018-03-27 17:35:24.786033', '31');
INSERT INTO `goods_goodsimage` VALUES ('63', 'goods/images/30_P_1448948662571.jpg', '2018-03-27 17:35:24.808999', '31');
INSERT INTO `goods_goodsimage` VALUES ('64', 'goods/images/30_P_1448948663221.jpg', '2018-03-27 17:35:24.830995', '31');
INSERT INTO `goods_goodsimage` VALUES ('65', 'goods/images/31_P_1448948598947.jpg', '2018-03-27 17:35:24.875051', '32');
INSERT INTO `goods_goodsimage` VALUES ('66', 'goods/images/31_P_1448948598475.jpg', '2018-03-27 17:35:24.898069', '32');
INSERT INTO `goods_goodsimage` VALUES ('67', 'goods/images/35_P_1448948333610.jpg', '2018-03-27 17:35:24.954114', '33');
INSERT INTO `goods_goodsimage` VALUES ('68', 'goods/images/35_P_1448948333313.jpg', '2018-03-27 17:35:24.976133', '33');
INSERT INTO `goods_goodsimage` VALUES ('69', 'goods/images/36_P_1448948234405.jpg', '2018-03-27 17:35:25.042181', '34');
INSERT INTO `goods_goodsimage` VALUES ('70', 'goods/images/36_P_1448948234250.jpg', '2018-03-27 17:35:25.064703', '34');
INSERT INTO `goods_goodsimage` VALUES ('71', 'goods/images/33_P_1448948479966.jpg', '2018-03-27 17:35:25.303240', '35');
INSERT INTO `goods_goodsimage` VALUES ('72', 'goods/images/33_P_1448948479886.jpg', '2018-03-27 17:35:25.353275', '35');
INSERT INTO `goods_goodsimage` VALUES ('73', 'goods/images/34_P_1448948399009.jpg', '2018-03-27 17:35:25.408247', '36');
INSERT INTO `goods_goodsimage` VALUES ('74', 'goods/images/43_P_1448948762645.jpg', '2018-03-27 17:35:25.463859', '37');
INSERT INTO `goods_goodsimage` VALUES ('75', 'goods/images/38_P_1448949220255.jpg', '2018-03-27 17:35:25.519052', '38');
INSERT INTO `goods_goodsimage` VALUES ('76', 'goods/images/44_P_1448948850187.jpg', '2018-03-27 17:35:25.577392', '39');
INSERT INTO `goods_goodsimage` VALUES ('77', 'goods/images/49_P_1448162819889.jpg', '2018-03-27 17:35:25.629453', '40');
INSERT INTO `goods_goodsimage` VALUES ('78', 'goods/images/40_P_1448949038702.jpg', '2018-03-27 17:35:25.684764', '41');
INSERT INTO `goods_goodsimage` VALUES ('79', 'goods/images/39_P_1448949115481.jpg', '2018-03-27 17:35:25.740805', '42');
INSERT INTO `goods_goodsimage` VALUES ('80', 'goods/images/41_P_1448948980358.jpg', '2018-03-27 17:35:25.796968', '43');
INSERT INTO `goods_goodsimage` VALUES ('81', 'goods/images/37_P_1448949284365.jpg', '2018-03-27 17:35:25.874763', '44');
INSERT INTO `goods_goodsimage` VALUES ('82', 'goods/images/42_P_1448948895193.jpg', '2018-03-27 17:35:25.929807', '45');
INSERT INTO `goods_goodsimage` VALUES ('83', 'goods/images/27_P_1448947771805.jpg', '2018-03-27 17:35:25.986250', '46');
INSERT INTO `goods_goodsimage` VALUES ('84', 'goods/images/23_P_1448948070348.jpg', '2018-03-27 17:35:26.042288', '47');
INSERT INTO `goods_goodsimage` VALUES ('85', 'goods/images/26_P_1448947825754.jpg', '2018-03-27 17:35:26.097393', '48');
INSERT INTO `goods_goodsimage` VALUES ('86', 'goods/images/28_P_1448947699948.jpg', '2018-03-27 17:35:26.152405', '49');
INSERT INTO `goods_goodsimage` VALUES ('87', 'goods/images/28_P_1448947699777.jpg', '2018-03-27 17:35:26.175436', '49');
INSERT INTO `goods_goodsimage` VALUES ('88', 'goods/images/24_P_1448948023823.jpg', '2018-03-27 17:35:26.231491', '50');
INSERT INTO `goods_goodsimage` VALUES ('89', 'goods/images/24_P_1448948023977.jpg', '2018-03-27 17:35:26.264000', '50');
INSERT INTO `goods_goodsimage` VALUES ('90', 'goods/images/25_P_1448947875346.jpg', '2018-03-27 17:35:26.319580', '51');
INSERT INTO `goods_goodsimage` VALUES ('91', 'goods/images/29_P_1448947631994.jpg', '2018-03-27 17:35:26.364615', '52');
INSERT INTO `goods_goodsimage` VALUES ('92', 'goods/images/1_P_1449024889889.jpg', '2018-03-31 11:46:20.380602', '53');
INSERT INTO `goods_goodsimage` VALUES ('93', 'goods/images/1_P_1449024889264.jpg', '2018-03-31 11:46:20.428544', '53');
INSERT INTO `goods_goodsimage` VALUES ('94', 'goods/images/1_P_1449024889726.jpg', '2018-03-31 11:46:20.447734', '53');
INSERT INTO `goods_goodsimage` VALUES ('95', 'goods/images/1_P_1449024889018.jpg', '2018-03-31 11:46:20.469867', '53');
INSERT INTO `goods_goodsimage` VALUES ('96', 'goods/images/1_P_1449024889287.jpg', '2018-03-31 11:46:20.492727', '53');
INSERT INTO `goods_goodsimage` VALUES ('97', 'goods/images/2_P_1448945810202.jpg', '2018-03-31 11:46:20.625956', '54');
INSERT INTO `goods_goodsimage` VALUES ('98', 'goods/images/2_P_1448945810814.jpg', '2018-03-31 11:46:20.647509', '54');
INSERT INTO `goods_goodsimage` VALUES ('99', 'goods/images/7_P_1448945104883.jpg', '2018-03-31 11:46:20.703162', '55');
INSERT INTO `goods_goodsimage` VALUES ('100', 'goods/images/7_P_1448945104734.jpg', '2018-03-31 11:46:20.737122', '55');
INSERT INTO `goods_goodsimage` VALUES ('101', 'goods/images/47_P_1448946213263.jpg', '2018-03-31 11:46:20.792528', '56');
INSERT INTO `goods_goodsimage` VALUES ('102', 'goods/images/47_P_1448946213157.jpg', '2018-03-31 11:46:20.814259', '56');
INSERT INTO `goods_goodsimage` VALUES ('103', 'goods/images/10_P_1448944572085.jpg', '2018-03-31 11:46:20.869888', '57');
INSERT INTO `goods_goodsimage` VALUES ('104', 'goods/images/10_P_1448944572532.jpg', '2018-03-31 11:46:20.916028', '57');
INSERT INTO `goods_goodsimage` VALUES ('105', 'goods/images/10_P_1448944572872.jpg', '2018-03-31 11:46:20.980209', '57');
INSERT INTO `goods_goodsimage` VALUES ('106', 'goods/images/4_P_1448945381985.jpg', '2018-03-31 11:46:21.061255', '58');
INSERT INTO `goods_goodsimage` VALUES ('107', 'goods/images/4_P_1448945381013.jpg', '2018-03-31 11:46:21.081269', '58');
INSERT INTO `goods_goodsimage` VALUES ('108', 'goods/images/8_P_1448945032810.jpg', '2018-03-31 11:46:21.136142', '59');
INSERT INTO `goods_goodsimage` VALUES ('109', 'goods/images/8_P_1448945032646.jpg', '2018-03-31 11:46:21.235341', '59');
INSERT INTO `goods_goodsimage` VALUES ('110', 'goods/images/11_P_1448944388277.jpg', '2018-03-31 11:46:21.350104', '60');
INSERT INTO `goods_goodsimage` VALUES ('111', 'goods/images/11_P_1448944388034.jpg', '2018-03-31 11:46:21.438779', '60');
INSERT INTO `goods_goodsimage` VALUES ('112', 'goods/images/11_P_1448944388201.jpg', '2018-03-31 11:46:21.504912', '60');
INSERT INTO `goods_goodsimage` VALUES ('113', 'goods/images/6_P_1448945167279.jpg', '2018-03-31 11:46:21.649364', '61');
INSERT INTO `goods_goodsimage` VALUES ('114', 'goods/images/6_P_1448945167015.jpg', '2018-03-31 11:46:21.705748', '61');
INSERT INTO `goods_goodsimage` VALUES ('115', 'goods/images/9_P_1448944791617.jpg', '2018-03-31 11:46:21.839266', '62');
INSERT INTO `goods_goodsimage` VALUES ('116', 'goods/images/9_P_1448944791129.jpg', '2018-03-31 11:46:21.930963', '62');
INSERT INTO `goods_goodsimage` VALUES ('117', 'goods/images/9_P_1448944791077.jpg', '2018-03-31 11:46:21.970125', '62');
INSERT INTO `goods_goodsimage` VALUES ('118', 'goods/images/9_P_1448944791229.jpg', '2018-03-31 11:46:21.992146', '62');
INSERT INTO `goods_goodsimage` VALUES ('119', 'goods/images/3_P_1448945490837.jpg', '2018-03-31 11:46:22.047231', '63');
INSERT INTO `goods_goodsimage` VALUES ('120', 'goods/images/3_P_1448945490084.jpg', '2018-03-31 11:46:22.070195', '63');
INSERT INTO `goods_goodsimage` VALUES ('121', 'goods/images/48_P_1448943988970.jpg', '2018-03-31 11:46:22.126201', '64');
INSERT INTO `goods_goodsimage` VALUES ('122', 'goods/images/48_P_1448943988898.jpg', '2018-03-31 11:46:22.147916', '64');
INSERT INTO `goods_goodsimage` VALUES ('123', 'goods/images/48_P_1448943988439.jpg', '2018-03-31 11:46:22.170599', '64');
INSERT INTO `goods_goodsimage` VALUES ('124', 'goods/images/5_P_1448945270390.jpg', '2018-03-31 11:46:22.226382', '65');
INSERT INTO `goods_goodsimage` VALUES ('125', 'goods/images/5_P_1448945270067.jpg', '2018-03-31 11:46:22.247691', '65');
INSERT INTO `goods_goodsimage` VALUES ('126', 'goods/images/5_P_1448945270432.jpg', '2018-03-31 11:46:22.271141', '65');
INSERT INTO `goods_goodsimage` VALUES ('127', 'images/201705/goods_img/53_P_1495068879687.jpg', '2018-03-31 11:46:22.326130', '66');
INSERT INTO `goods_goodsimage` VALUES ('128', 'goods/images/16_P_1448947194687.jpg', '2018-03-31 11:46:22.381543', '67');
INSERT INTO `goods_goodsimage` VALUES ('129', 'goods/images/14_P_1448947354031.jpg', '2018-03-31 11:46:22.507123', '68');
INSERT INTO `goods_goodsimage` VALUES ('130', 'goods/images/14_P_1448947354433.jpg', '2018-03-31 11:46:22.559206', '68');
INSERT INTO `goods_goodsimage` VALUES ('131', 'goods/images/12_P_1448947547989.jpg', '2018-03-31 11:46:22.614625', '69');
INSERT INTO `goods_goodsimage` VALUES ('132', 'goods/images/46_P_1448946598711.jpg', '2018-03-31 11:46:22.669777', '70');
INSERT INTO `goods_goodsimage` VALUES ('133', 'goods/images/46_P_1448946598301.jpg', '2018-03-31 11:46:22.691906', '70');
INSERT INTO `goods_goodsimage` VALUES ('134', 'goods/images/21_P_1448946793276.jpg', '2018-03-31 11:46:22.747322', '71');
INSERT INTO `goods_goodsimage` VALUES ('135', 'goods/images/21_P_1448946793153.jpg', '2018-03-31 11:46:22.769236', '71');
INSERT INTO `goods_goodsimage` VALUES ('136', 'goods/images/15_P_1448947257324.jpg', '2018-03-31 11:46:22.890821', '72');
INSERT INTO `goods_goodsimage` VALUES ('137', 'goods/images/15_P_1448947257580.jpg', '2018-03-31 11:46:22.914042', '72');
INSERT INTO `goods_goodsimage` VALUES ('138', 'goods/images/13_P_1448947460386.jpg', '2018-03-31 11:46:22.958419', '73');
INSERT INTO `goods_goodsimage` VALUES ('139', 'goods/images/13_P_1448947460276.jpg', '2018-03-31 11:46:22.979432', '73');
INSERT INTO `goods_goodsimage` VALUES ('140', 'goods/images/13_P_1448947460353.jpg', '2018-03-31 11:46:23.002871', '73');
INSERT INTO `goods_goodsimage` VALUES ('141', 'goods/images/50_P_1448946543091.jpg', '2018-03-31 11:46:23.058343', '74');
INSERT INTO `goods_goodsimage` VALUES ('142', 'goods/images/50_P_1448946542182.jpg', '2018-03-31 11:46:23.079539', '74');
INSERT INTO `goods_goodsimage` VALUES ('143', 'goods/images/51_P_1448946466595.jpg', '2018-03-31 11:46:23.135750', '75');
INSERT INTO `goods_goodsimage` VALUES ('144', 'goods/images/51_P_1448946466208.jpg', '2018-03-31 11:46:23.169830', '75');
INSERT INTO `goods_goodsimage` VALUES ('145', 'goods/images/17_P_1448947102246.jpg', '2018-03-31 11:46:23.225525', '76');
INSERT INTO `goods_goodsimage` VALUES ('146', 'goods/images/20_P_1448946850602.jpg', '2018-03-31 11:46:23.281203', '77');
INSERT INTO `goods_goodsimage` VALUES ('147', 'goods/images/19_P_1448946951581.jpg', '2018-03-31 11:46:23.336951', '78');
INSERT INTO `goods_goodsimage` VALUES ('148', 'goods/images/19_P_1448946951726.jpg', '2018-03-31 11:46:23.358178', '78');
INSERT INTO `goods_goodsimage` VALUES ('149', 'goods/images/18_P_1448947011435.jpg', '2018-03-31 11:46:23.414376', '79');
INSERT INTO `goods_goodsimage` VALUES ('150', 'goods/images/22_P_1448946729629.jpg', '2018-03-31 11:46:23.592477', '80');
INSERT INTO `goods_goodsimage` VALUES ('151', 'goods/images/45_P_1448946661303.jpg', '2018-03-31 11:46:23.648690', '81');
INSERT INTO `goods_goodsimage` VALUES ('152', 'goods/images/32_P_1448948525620.jpg', '2018-03-31 11:46:23.692911', '82');
INSERT INTO `goods_goodsimage` VALUES ('153', 'goods/images/30_P_1448948663450.jpg', '2018-03-31 11:46:23.814580', '83');
INSERT INTO `goods_goodsimage` VALUES ('154', 'goods/images/30_P_1448948662571.jpg', '2018-03-31 11:46:23.858923', '83');
INSERT INTO `goods_goodsimage` VALUES ('155', 'goods/images/30_P_1448948663221.jpg', '2018-03-31 11:46:23.903600', '83');
INSERT INTO `goods_goodsimage` VALUES ('156', 'goods/images/31_P_1448948598947.jpg', '2018-03-31 11:46:23.959002', '84');
INSERT INTO `goods_goodsimage` VALUES ('157', 'goods/images/31_P_1448948598475.jpg', '2018-03-31 11:46:23.992636', '84');
INSERT INTO `goods_goodsimage` VALUES ('158', 'goods/images/35_P_1448948333610.jpg', '2018-03-31 11:46:24.047870', '85');
INSERT INTO `goods_goodsimage` VALUES ('159', 'goods/images/35_P_1448948333313.jpg', '2018-03-31 11:46:24.105632', '85');
INSERT INTO `goods_goodsimage` VALUES ('160', 'goods/images/36_P_1448948234405.jpg', '2018-03-31 11:46:24.157876', '86');
INSERT INTO `goods_goodsimage` VALUES ('161', 'goods/images/36_P_1448948234250.jpg', '2018-03-31 11:46:24.181117', '86');
INSERT INTO `goods_goodsimage` VALUES ('162', 'goods/images/33_P_1448948479966.jpg', '2018-03-31 11:46:24.236433', '87');
INSERT INTO `goods_goodsimage` VALUES ('163', 'goods/images/33_P_1448948479886.jpg', '2018-03-31 11:46:24.257798', '87');
INSERT INTO `goods_goodsimage` VALUES ('164', 'goods/images/34_P_1448948399009.jpg', '2018-03-31 11:46:24.313271', '88');
INSERT INTO `goods_goodsimage` VALUES ('165', 'goods/images/43_P_1448948762645.jpg', '2018-03-31 11:46:24.368965', '89');
INSERT INTO `goods_goodsimage` VALUES ('166', 'goods/images/38_P_1448949220255.jpg', '2018-03-31 11:46:24.424072', '90');
INSERT INTO `goods_goodsimage` VALUES ('167', 'goods/images/44_P_1448948850187.jpg', '2018-03-31 11:46:24.479454', '91');
INSERT INTO `goods_goodsimage` VALUES ('168', 'goods/images/49_P_1448162819889.jpg', '2018-03-31 11:46:24.535527', '92');
INSERT INTO `goods_goodsimage` VALUES ('169', 'goods/images/40_P_1448949038702.jpg', '2018-03-31 11:46:24.591415', '93');
INSERT INTO `goods_goodsimage` VALUES ('170', 'goods/images/39_P_1448949115481.jpg', '2018-03-31 11:46:24.658028', '94');
INSERT INTO `goods_goodsimage` VALUES ('171', 'goods/images/41_P_1448948980358.jpg', '2018-03-31 11:46:24.713371', '95');
INSERT INTO `goods_goodsimage` VALUES ('172', 'goods/images/37_P_1448949284365.jpg', '2018-03-31 11:46:24.769749', '96');
INSERT INTO `goods_goodsimage` VALUES ('173', 'goods/images/42_P_1448948895193.jpg', '2018-03-31 11:46:24.825153', '97');
INSERT INTO `goods_goodsimage` VALUES ('174', 'goods/images/27_P_1448947771805.jpg', '2018-03-31 11:46:24.881249', '98');
INSERT INTO `goods_goodsimage` VALUES ('175', 'goods/images/23_P_1448948070348.jpg', '2018-03-31 11:46:24.936351', '99');
INSERT INTO `goods_goodsimage` VALUES ('176', 'goods/images/26_P_1448947825754.jpg', '2018-03-31 11:46:24.992700', '100');
INSERT INTO `goods_goodsimage` VALUES ('177', 'goods/images/28_P_1448947699948.jpg', '2018-03-31 11:46:25.047710', '101');
INSERT INTO `goods_goodsimage` VALUES ('178', 'goods/images/28_P_1448947699777.jpg', '2018-03-31 11:46:25.070745', '101');
INSERT INTO `goods_goodsimage` VALUES ('179', 'goods/images/24_P_1448948023823.jpg', '2018-03-31 11:46:25.114881', '102');
INSERT INTO `goods_goodsimage` VALUES ('180', 'goods/images/24_P_1448948023977.jpg', '2018-03-31 11:46:25.136934', '102');
INSERT INTO `goods_goodsimage` VALUES ('181', 'goods/images/25_P_1448947875346.jpg', '2018-03-31 11:46:25.192766', '103');
INSERT INTO `goods_goodsimage` VALUES ('182', 'goods/images/29_P_1448947631994.jpg', '2018-03-31 11:46:25.258719', '104');

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_hotsearchwords
-- ----------------------------
INSERT INTO `goods_hotsearchwords` VALUES ('1', '舒化奶', '1', '2018-03-31 10:41:00.000000');
INSERT INTO `goods_hotsearchwords` VALUES ('2', '潍坊萝卜', '2', '2018-03-31 10:41:00.000000');

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` (`category_id`),
  KEY `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`),
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_indexad
-- ----------------------------
INSERT INTO `goods_indexad` VALUES ('1', '1', '1');
INSERT INTO `goods_indexad` VALUES ('2', '24', '15');
INSERT INTO `goods_indexad` VALUES ('3', '46', '36');

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` (`goods_id`),
  KEY `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` (`order_id`),
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trade_ordergoods
-- ----------------------------

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) DEFAULT NULL,
  `trade_no` varchar(100) DEFAULT NULL,
  `pay_status` varchar(30) NOT NULL,
  `post_script` varchar(200) NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(20) NOT NULL,
  `singer_mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trade_orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for trade_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `trade_shoppingcart`;
CREATE TABLE `trade_shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_shoppingcart_user_id_goods_id_92225e66_uniq` (`user_id`,`goods_id`),
  KEY `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trade_shoppingcart
-- ----------------------------
INSERT INTO `trade_shoppingcart` VALUES ('1', '2', '2018-03-31 10:09:34.334735', '1', '7');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$36000$3dIsc3SxKjTb$rDfBMUMFgcxJWqMorlk2a09TuKSchLeos6hSpWbJGxY=', '2018-03-31 08:51:09.802358', '1', 'admin', '', '', '1', '1', '2018-03-27 18:01:05.524144', null, null, 'female', null, '1@1.com');
INSERT INTO `users_userprofile` VALUES ('7', 'pbkdf2_sha256$36000$Q1DvLHYQNVAG$V1sWHL7WeGDZgvLcmUgKLfubdbuh9q5eBiMcrBGleCY=', null, '0', '18364613435', '', '', '0', '1', '2018-03-31 10:04:39.171478', null, null, 'female', '18364613435', null);

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_verifycode`;
CREATE TABLE `users_verifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_verifycode
-- ----------------------------
INSERT INTO `users_verifycode` VALUES ('1', '4853', '15117904381', '2018-03-31 09:56:00.000000');
INSERT INTO `users_verifycode` VALUES ('2', '4206', '18364613435', '2018-03-31 10:04:04.631878');

-- ----------------------------
-- Table structure for user_operation_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_useraddress`;
CREATE TABLE `user_operation_useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(100) NOT NULL,
  `signer_mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_usera_user_id_fe128593_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_operation_useraddress
-- ----------------------------

-- ----------------------------
-- Table structure for user_operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userfav`;
CREATE TABLE `user_operation_userfav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_operation_userfav_user_id_goods_id_2dbadda7_uniq` (`user_id`,`goods_id`),
  KEY `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_operation_userfav
-- ----------------------------
INSERT INTO `user_operation_userfav` VALUES ('1', '2018-03-27 19:01:16.177575', '18', '1');

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_userl_user_id_70d909d6_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_operation_userleavingmessage
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-03-31 08:52:41.856776', '127.0.0.1', '74', '休闲食品', 'change', '修改 desc 和 is_tab', '6', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2018-03-31 08:53:12.481836', '127.0.0.1', '24', '酒水饮料', 'change', '修改 desc 和 is_tab', '6', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2018-03-31 08:53:28.635254', '127.0.0.1', '1', '生鲜食品', 'change', '修改 desc 和 is_tab', '6', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2018-03-31 08:55:10.817831', '127.0.0.1', '1', '新鲜水果甜蜜香脆单果约800克', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2018-03-31 08:55:25.071953', '127.0.0.1', '2', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2018-03-31 08:55:37.214543', '127.0.0.1', '3', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', 'create', '已添加', '11', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2018-03-31 08:56:07.670600', '127.0.0.1', '1', '新鲜水果甜蜜香脆单果约800克', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2018-03-31 08:56:30.207242', '127.0.0.1', '2', '52度茅台集团国隆双喜酒500mlx6', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2018-03-31 09:34:33.604281', '127.0.0.1', '1', '4853', 'change', '修改 add_time', '16', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2018-03-31 09:40:08.592205', '127.0.0.1', '1', '4853', 'change', '修改 add_time', '16', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2018-03-31 09:45:55.701251', '127.0.0.1', '2', '15117904381', 'delete', '', '15', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2018-03-31 09:46:15.318118', '127.0.0.1', '1', '4853', 'change', '修改 add_time', '16', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2018-03-31 09:54:18.623221', '127.0.0.1', '3', '15117904381', 'delete', '', '15', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2018-03-31 09:54:26.086307', '127.0.0.1', '1', '4853', 'change', '修改 add_time', '16', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2018-03-31 09:55:31.102359', '127.0.0.1', '4', '15117904381', 'delete', '', '15', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2018-03-31 09:56:05.884021', '127.0.0.1', '1', '4853', 'change', '修改 add_time', '16', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2018-03-31 09:58:04.786505', '127.0.0.1', '6', '15117904381', 'delete', '', '15', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2018-03-31 10:12:50.646771', '127.0.0.1', '4', 'fdsafas', 'delete', '', '18', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2018-03-31 10:12:56.250303', '127.0.0.1', '3', 'fdsafas', 'delete', '', '18', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2018-03-31 10:35:40.118598', '127.0.0.1', '52', '融氏纯玉米胚芽油5l桶', 'change', '修改 goods_sn，goods_brief 和 is_new', '8', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2018-03-31 10:36:05.834240', '127.0.0.1', '47', '糙米450gx3包粮油米面', 'change', '修改 goods_sn，goods_brief 和 is_new', '8', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2018-03-31 10:36:21.081337', '127.0.0.1', '35', '现摘芭乐番石榴台湾珍珠芭乐', 'change', '修改 goods_sn，goods_brief 和 is_new', '8', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2018-03-31 10:36:38.080751', '127.0.0.1', '31', '泰国菠萝蜜16-18斤1个装', 'change', '修改 goods_sn 和 is_new', '8', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2018-03-31 10:36:56.680804', '127.0.0.1', '23', '人头马CLUB特优香槟干邑350ml', 'change', '修改 goods_sn，goods_brief，is_new 和 is_hot', '8', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2018-03-31 10:37:15.629262', '127.0.0.1', '16', '52度水井坊臻酿八號500ml', 'change', '修改 goods_sn，goods_brief 和 is_new', '8', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2018-03-31 10:37:30.759926', '127.0.0.1', '37', '休闲零食膨化食品焦糖/奶油/椒麻味', 'change', '修改 goods_sn，goods_brief 和 is_new', '8', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2018-03-31 10:38:06.920360', '127.0.0.1', '1', 'asdfsa', 'create', '已添加', '5', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2018-03-31 10:38:17.657330', '127.0.0.1', '2', 'fasdfdsa', 'create', '已添加', '5', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2018-03-31 10:38:26.887079', '127.0.0.1', '3', 'fdsa', 'create', '已添加', '5', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2018-03-31 10:38:40.982708', '127.0.0.1', '4', 'fdsa', 'create', '已添加', '5', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2018-03-31 10:38:56.994351', '127.0.0.1', '5', 'fsda', 'create', '已添加', '5', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2018-03-31 10:39:10.029519', '127.0.0.1', '6', 'raf', 'create', '已添加', '5', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2018-03-31 10:41:37.652273', '127.0.0.1', '1', '舒化奶', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2018-03-31 10:42:04.593264', '127.0.0.1', '2', '潍坊萝卜', 'create', '已添加', '9', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2018-03-31 10:43:07.920108', '127.0.0.1', '3', '潍坊萝卜5斤/箱礼盒', 'create', '已添加', '10', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2018-03-31 10:43:24.647562', '127.0.0.1', '5', 'fdsa', 'delete', '', '18', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2018-03-31 10:43:28.085871', '127.0.0.1', '1', 'fdsafsa', 'delete', '', '18', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
