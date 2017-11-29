/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100211
 Source Host           : localhost:3306
 Source Schema         : ppcarcenter

 Target Server Type    : MySQL
 Target Server Version : 100211
 File Encoding         : 65001

 Date: 29/11/2017 23:06:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, 'pp');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 19);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 20);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 21);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 22);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 23);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 24);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add car', 7, 'add_car');
INSERT INTO `auth_permission` VALUES (20, 'Can change car', 7, 'change_car');
INSERT INTO `auth_permission` VALUES (21, 'Can delete car', 7, 'delete_car');
INSERT INTO `auth_permission` VALUES (22, 'Can add maintenance', 8, 'add_maintenance');
INSERT INTO `auth_permission` VALUES (23, 'Can change maintenance', 8, 'change_maintenance');
INSERT INTO `auth_permission` VALUES (24, 'Can delete maintenance', 8, 'delete_maintenance');
INSERT INTO `auth_permission` VALUES (25, 'Can add ผู้ติดต่อ', 9, 'add_contact');
INSERT INTO `auth_permission` VALUES (26, 'Can change ผู้ติดต่อ', 9, 'change_contact');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ผู้ติดต่อ', 9, 'delete_contact');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$36000$Hl7VYOrqHnrL$NdtYRv6beA7u0hs56KcVNOObR+rBViEuZTdsJK87Exo=', '2017-11-29 13:47:27.429335', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2017-11-29 06:36:30.089707');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$36000$vamc8hcKYSeD$mfepeOCg6YvprZ2CVt5aKKPzx0GViKUlFPrExppsDd0=', '2017-11-29 08:16:54.142707', 0, 'pp', '', '', '', 1, 1, '2017-11-29 08:13:49.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES (1, 2, 1);

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2017-11-29 06:52:38.438707', '1', 'Car object', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2017-11-29 06:56:26.040707', '2', 'Maintenance object', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (3, '2017-11-29 07:52:51.056707', '3', 'Change Color', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (4, '2017-11-29 08:11:02.855707', '2', '2กก8111', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2017-11-29 08:11:36.731707', '4', 'ซ่อมช่วงล่าง', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (6, '2017-11-29 08:13:07.751707', '1', 'ีpp', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (7, '2017-11-29 08:13:16.979707', '1', 'pp', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (8, '2017-11-29 08:13:49.728707', '2', 'pp', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (9, '2017-11-29 08:14:09.613707', '2', 'pp', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (10, '2017-11-29 08:15:17.994707', '2', 'pp', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (11, '2017-11-29 08:16:04.738707', '2', 'pp', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (12, '2017-11-29 08:16:49.189707', '2', 'pp', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (13, '2017-11-29 14:06:20.585110', '3', '2กภ8336', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (14, '2017-11-29 14:06:30.171549', '3', '2กภ8336', 2, '[]', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2017-11-29 14:09:25.603031', '5', 'Wash', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (16, '2017-11-29 15:40:08.975978', '2', 'อนุชา พัฒนจันทร์', 1, '[{\"added\": {}}]', 9, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'ppcarcenter', 'car');
INSERT INTO `django_content_type` VALUES (9, 'ppcarcenter', 'contact');
INSERT INTO `django_content_type` VALUES (8, 'ppcarcenter', 'maintenance');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2017-11-29 06:35:03.567707');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2017-11-29 06:35:10.998707');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2017-11-29 06:35:12.730707');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2017-11-29 06:35:12.792707');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2017-11-29 06:35:13.599707');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2017-11-29 06:35:14.205707');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2017-11-29 06:35:14.863707');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2017-11-29 06:35:14.939707');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2017-11-29 06:35:15.511707');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2017-11-29 06:35:15.577707');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2017-11-29 06:35:15.634707');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2017-11-29 06:35:16.572707');
INSERT INTO `django_migrations` VALUES (13, 'sessions', '0001_initial', '2017-11-29 06:35:17.001707');
INSERT INTO `django_migrations` VALUES (14, 'ppcarcenter', '0001_initial', '2017-11-29 06:50:28.671707');
INSERT INTO `django_migrations` VALUES (15, 'ppcarcenter', '0002_auto_20171129_2058', '2017-11-29 13:58:28.735360');
INSERT INTO `django_migrations` VALUES (16, 'ppcarcenter', '0003_car_model', '2017-11-29 14:05:39.090882');
INSERT INTO `django_migrations` VALUES (17, 'ppcarcenter', '0004_auto_20171129_2105', '2017-11-29 14:05:39.144474');
INSERT INTO `django_migrations` VALUES (18, 'ppcarcenter', '0005_auto_20171129_2224', '2017-11-29 15:24:40.747392');
INSERT INTO `django_migrations` VALUES (19, 'ppcarcenter', '0002_auto_20171129_2238', '2017-11-29 15:38:16.996734');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('bfz292k3lbqzvhgxvsyox5rhzktojevl', 'ODVjYzVmNmFkMzdiNjI0YTM5NGI4OWY3ZDM1ZDc4ZmY5Nzc3ZTNkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDEzMDNhZGMwYjhiZjExODIxMDcxYTdjZGMxNDk2MjgxNWUzYWIyIn0=', '2017-12-13 08:15:40.316707');
INSERT INTO `django_session` VALUES ('bxd8d11gelvxxh3wboqhole1ykbk47m3', 'ODVjYzVmNmFkMzdiNjI0YTM5NGI4OWY3ZDM1ZDc4ZmY5Nzc3ZTNkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDEzMDNhZGMwYjhiZjExODIxMDcxYTdjZGMxNDk2MjgxNWUzYWIyIn0=', '2017-12-13 13:47:27.434523');
INSERT INTO `django_session` VALUES ('ovfszze4t7kx1v5rixpfru3bl84c5uu8', 'YTE4OTJkZTIyMmMyYjg0YmRhODhiYjk0ZThhYWNiY2RjMDBhN2FiMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMjJhZTBjYWY0M2IxM2NmNTUxNzA5YzE1M2VkNThiNjRjYTI1NTVlIn0=', '2017-12-13 08:16:54.167707');

-- ----------------------------
-- Table structure for ppcarcenter_car
-- ----------------------------
DROP TABLE IF EXISTS `ppcarcenter_car`;
CREATE TABLE `ppcarcenter_car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `chassis_no` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `engine_no` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `equipments` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ppcarcenter_car
-- ----------------------------
INSERT INTO `ppcarcenter_car` VALUES (3, '2กภ8336', 'เทา', 680000, 2013, 'MAZDA 2', '', '', '');

-- ----------------------------
-- Table structure for ppcarcenter_contact
-- ----------------------------
DROP TABLE IF EXISTS `ppcarcenter_contact`;
CREATE TABLE `ppcarcenter_contact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `house_no` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `road` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_district` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_place` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_date` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ppcarcenter_contact
-- ----------------------------
INSERT INTO `ppcarcenter_contact` VALUES (2, 'อนุชา พัฒนจันทร์', 29, '41 หมู่ 7', '', 'ปากกราน', 'อยุธยา', 'อยุธยา', '13000', '087 565 1868', 'ประชาชน', '1149900128271', 'อยุธยา', '2015-07-08');

-- ----------------------------
-- Table structure for ppcarcenter_maintenance
-- ----------------------------
DROP TABLE IF EXISTS `ppcarcenter_maintenance`;
CREATE TABLE `ppcarcenter_maintenance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charges` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ppcarcenter_maintenance_car_id_bb2644a5_fk_ppcarcenter_car_id`(`car_id`) USING BTREE,
  CONSTRAINT `ppcarcenter_maintenance_car_id_bb2644a5_fk_ppcarcenter_car_id` FOREIGN KEY (`car_id`) REFERENCES `ppcarcenter_car` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ppcarcenter_maintenance
-- ----------------------------
INSERT INTO `ppcarcenter_maintenance` VALUES (5, 'Wash', 120, 3);

SET FOREIGN_KEY_CHECKS = 1;
