/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 25/05/2023 12:55:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 3, 'Admin', 'fa-tasks', '', NULL, NULL, '2023-05-24 21:08:02');
INSERT INTO `admin_menu` VALUES (3, 2, 4, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2023-05-24 21:08:02');
INSERT INTO `admin_menu` VALUES (4, 2, 5, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2023-05-24 21:08:02');
INSERT INTO `admin_menu` VALUES (5, 2, 6, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2023-05-24 21:08:02');
INSERT INTO `admin_menu` VALUES (6, 2, 7, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2023-05-24 21:08:02');
INSERT INTO `admin_menu` VALUES (7, 2, 8, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2023-05-24 21:08:02');
INSERT INTO `admin_menu` VALUES (8, 0, 2, '休闲运动报告', 'fa-bars', '/sport_admin', '*', '2023-05-24 21:07:41', '2023-05-24 21:08:02');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-24 20:18:21', '2023-05-24 20:18:21');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-24 20:19:51', '2023-05-24 20:19:51');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 20:19:57', '2023-05-24 20:19:57');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 20:20:03', '2023-05-24 20:20:03');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 20:20:05', '2023-05-24 20:20:05');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 20:20:06', '2023-05-24 20:20:06');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 20:20:13', '2023-05-24 20:20:13');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 20:20:14', '2023-05-24 20:20:14');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 20:20:15', '2023-05-24 20:20:15');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 20:20:15', '2023-05-24 20:20:15');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-05-24 20:46:40', '2023-05-24 20:46:40');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-24 21:06:38', '2023-05-24 21:06:38');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 21:06:46', '2023-05-24 21:06:46');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f11\\u95f2\\u8fd0\\u52a8\\u62a5\\u544a\",\"icon\":\"fa-bars\",\"uri\":\"\\/sport_admin\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"P0M9IxYNFHDzjgBcvXEa8S67LaWh9AbOuTi4Neso\"}', '2023-05-24 21:07:41', '2023-05-24 21:07:41');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-24 21:07:42', '2023-05-24 21:07:42');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-24 21:07:55', '2023-05-24 21:07:55');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"P0M9IxYNFHDzjgBcvXEa8S67LaWh9AbOuTi4Neso\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-05-24 21:08:02', '2023-05-24 21:08:02');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 21:08:03', '2023-05-24 21:08:03');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-24 21:08:04', '2023-05-24 21:08:04');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-24 21:42:55', '2023-05-24 21:42:55');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-05-24 21:43:11', '2023-05-24 21:43:11');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 21:43:13', '2023-05-24 21:43:13');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 21:44:45', '2023-05-24 21:44:45');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 21:48:54', '2023-05-24 21:48:54');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 21:49:00', '2023-05-24 21:49:00');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 21:49:17', '2023-05-24 21:49:17');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 21:51:22', '2023-05-24 21:51:22');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 21:51:30', '2023-05-24 21:51:30');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 21:51:45', '2023-05-24 21:51:45');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 21:51:50', '2023-05-24 21:51:50');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 21:54:59', '2023-05-24 21:54:59');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 21:56:03', '2023-05-24 21:56:03');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 21:59:50', '2023-05-24 21:59:50');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 21:59:54', '2023-05-24 21:59:54');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 22:02:09', '2023-05-24 22:02:09');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 22:02:39', '2023-05-24 22:02:39');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/sport_admin/1', 'PUT', '127.0.0.1', '{\"sport\":\"football\",\"activity_type\":\"3\",\"headcount\":\"2\",\"date\":\"2023-05-24\",\"_token\":\"P0M9IxYNFHDzjgBcvXEa8S67LaWh9AbOuTi4Neso\",\"_method\":\"PUT\"}', '2023-05-24 22:02:46', '2023-05-24 22:02:46');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 22:02:46', '2023-05-24 22:02:46');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/sport_admin/1', 'PUT', '127.0.0.1', '{\"sport\":\"football\",\"activity_type\":\"3\",\"headcount\":\"2\",\"date\":\"2023-05-24\",\"_token\":\"P0M9IxYNFHDzjgBcvXEa8S67LaWh9AbOuTi4Neso\",\"_method\":\"PUT\"}', '2023-05-24 22:04:23', '2023-05-24 22:04:23');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 22:04:24', '2023-05-24 22:04:24');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/sport_admin/1', 'PUT', '127.0.0.1', '{\"sport\":\"football\",\"activity_type\":\"3\",\"headcount\":\"2\",\"date\":\"2023-05-24\",\"_token\":\"P0M9IxYNFHDzjgBcvXEa8S67LaWh9AbOuTi4Neso\",\"_method\":\"PUT\"}', '2023-05-24 22:05:08', '2023-05-24 22:05:08');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 22:05:09', '2023-05-24 22:05:09');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/sport_admin/1', 'PUT', '127.0.0.1', '{\"sport\":\"football\",\"activity_type\":\"3\",\"headcount\":\"2\",\"date\":\"2023-05-24\",\"createtime\":\"2023-05-24 12:43:53\",\"updatetime\":\"2023-05-24 12:43:53\",\"_token\":\"P0M9IxYNFHDzjgBcvXEa8S67LaWh9AbOuTi4Neso\",\"_method\":\"PUT\"}', '2023-05-24 22:05:12', '2023-05-24 22:05:12');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '[]', '2023-05-24 22:05:13', '2023-05-24 22:05:13');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/sport_admin/1', 'PUT', '127.0.0.1', '{\"sport\":\"football\",\"activity_type\":\"3\",\"headcount\":\"2\",\"date\":\"2023-05-24\",\"createtime\":\"2023-05-24 12:43:53\",\"updatetime\":\"2023-05-24 12:43:53\",\"_token\":\"P0M9IxYNFHDzjgBcvXEa8S67LaWh9AbOuTi4Neso\",\"_method\":\"PUT\"}', '2023-05-24 22:06:45', '2023-05-24 22:06:45');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 22:06:46', '2023-05-24 22:06:46');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/sport_admin/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:07:42', '2023-05-24 22:07:42');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/sport_admin/1', 'PUT', '127.0.0.1', '{\"sport\":\"football\",\"activity_type\":\"1\",\"headcount\":\"2\",\"date\":\"2023-05-24\",\"createtime\":\"2023-05-24 12:43:53\",\"updatetime\":\"2023-05-24 12:43:53\",\"_token\":\"P0M9IxYNFHDzjgBcvXEa8S67LaWh9AbOuTi4Neso\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sport\\/admin\\/sport_admin\"}', '2023-05-24 22:07:46', '2023-05-24 22:07:46');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '[]', '2023-05-24 22:07:47', '2023-05-24 22:07:47');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/sport_admin/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:08:39', '2023-05-24 22:08:39');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:08:44', '2023-05-24 22:08:44');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:08:56', '2023-05-24 22:08:56');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-24 22:14:04', '2023-05-24 22:14:04');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:14:11', '2023-05-24 22:14:11');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-24 22:15:25', '2023-05-24 22:15:25');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:15:27', '2023-05-24 22:15:27');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/sport_admin/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:30:37', '2023-05-24 22:30:37');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:30:57', '2023-05-24 22:30:57');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/sport_admin/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:31:02', '2023-05-24 22:31:02');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:31:09', '2023-05-24 22:31:09');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/sport_admin/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:31:14', '2023-05-24 22:31:14');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:31:16', '2023-05-24 22:31:16');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/sport_admin/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:31:22', '2023-05-24 22:31:22');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/sport_admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 22:31:27', '2023-05-24 22:31:27');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2023-05-24 20:17:30', '2023-05-24 20:17:30');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$Ok5SnG.cDYbM6tpSiD31yOZm4fsGA/4Bwiz8l9Pqmb5LD3t8zfale', 'Administrator', NULL, '0XStcwY8Gk74sjb8NE7gMkuMJ7zGg52xgWS7qeHp4cNkzGmpjc4yj5M7K7ks', '2023-05-24 20:17:30', '2023-05-24 20:17:30');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sport
-- ----------------------------
DROP TABLE IF EXISTS `sport`;
CREATE TABLE `sport`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sport` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `activity_type` tinyint(2) NULL DEFAULT 0 COMMENT '活动类型：0=>无;1=>5-a-side football;2=>adult football;3=>junior football',
  `headcount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人数统计',
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `createtime` bigint(16) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sport
-- ----------------------------
INSERT INTO `sport` VALUES (1, 'football', 1, '2', '2023-05-24', 1684903433, 1684903433);
INSERT INTO `sport` VALUES (2, 'football', 1, '23', '2023-05-23', 1684817124, 1684817124);
INSERT INTO `sport` VALUES (3, 'football', 1, '89', '2023-05-22', 1684730724, 1684730724);
INSERT INTO `sport` VALUES (4, 'football', 2, '89', '2023-05-22', 1684730724, 1684730724);
INSERT INTO `sport` VALUES (5, 'football', 2, '122', '2023-05-23', 1684817124, 1684817124);
INSERT INTO `sport` VALUES (6, 'football', 3, '89', '2023-05-24', 1684903433, 1684903433);
INSERT INTO `sport` VALUES (7, 'football', 2, '5', '2023-05-24', 1684903433, 1684903433);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
