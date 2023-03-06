/*
 Navicat Premium Data Transfer

 Source Server         : 104.250.144.170
 Source Server Type    : MySQL
 Source Server Version : 100337 (10.3.37-MariaDB)
 Source Host           : 104.250.144.170:3306
 Source Schema         : banglar2_hrmtmss

 Target Server Type    : MySQL
 Target Server Version : 100337 (10.3.37-MariaDB)
 File Encoding         : 65001

 Date: 06/03/2023 13:53:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `domain_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areas
-- ----------------------------

-- ----------------------------
-- Table structure for blood_groups
-- ----------------------------
DROP TABLE IF EXISTS `blood_groups`;
CREATE TABLE `blood_groups`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blood_groups
-- ----------------------------
INSERT INTO `blood_groups` VALUES (1, 'A(+ve)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `blood_groups` VALUES (2, 'A(-ve)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `blood_groups` VALUES (3, 'AB(+ve)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `blood_groups` VALUES (4, 'AB(-ve)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `blood_groups` VALUES (5, 'B(+ve)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `blood_groups` VALUES (6, 'B(-ve)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `blood_groups` VALUES (7, 'O(+ve)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `blood_groups` VALUES (8, 'O(-ve)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `blood_groups` VALUES (9, 'N/I', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for branches
-- ----------------------------
DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `domain_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `area_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of branches
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'A&F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (2, 'Admin', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (3, 'AIMS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (4, 'Audit', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (5, 'C&F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (6, 'Eng', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (7, 'HEM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (8, 'HR-M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (9, 'IICD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (10, 'Land', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (11, 'Monitoring', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (12, 'PRP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (13, 'Program', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (14, 'RCH', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (15, 'THS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (16, 'TD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (17, 'Utpadon', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (18, 'Welding', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (19, 'DEDS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (20, 'ES', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (21, 'IA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (22, 'SDP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (23, 'NNP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (24, 'Documentation', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (25, 'PP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (26, 'WM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (27, 'PRC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (28, 'TUF', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (29, 'Fisheries', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (30, 'Livestock', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (31, 'PLDP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (32, 'C&MIS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (33, 'E&E', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (34, 'BADP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (35, 'FSFFP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (36, 'FIS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (37, 'HR&G', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (38, 'P-1', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (39, 'P-2', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (40, 'BCL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (41, 'Nursery', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (42, 'TDS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (43, 'PMD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (44, 'FSVGD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (45, 'P-3', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (46, 'Operation', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (47, 'LEAD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (48, 'TPP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (49, 'TH', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (50, 'MFI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (51, 'LL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (52, 'TF', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (53, 'PRS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (54, 'TSM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (55, 'TBSS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (56, 'HRD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (57, 'PR&D', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (58, 'THSED', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (59, 'PHE&SP (Primary Health Education & Service Program)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (60, 'TMTI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (61, 'TNC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (62, 'TMATS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (63, 'TMIRT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (64, 'TIMF', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (65, 'BPMD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (66, 'LST', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (67, 'TCS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (68, 'TMMH', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (69, 'TMC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (70, 'TNRA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (71, 'A&C', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (72, 'TTI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (73, 'Sawmill & Furniture', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (74, 'Forestry', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (75, 'TDM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (76, 'P-4', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (77, 'Social Forestry', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (78, 'TCPI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (79, 'TTTTI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (80, 'TPIN', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (81, 'A&E', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (82, 'TFR', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (83, 'F&A', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (84, 'TSAL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (85, 'TEC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (86, 'Verifying', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (87, 'LFP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (88, 'RCPI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (89, 'TPSC (Bogura)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (90, 'TEID', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (91, 'FIMT&M', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (92, 'ICT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (93, 'TCSC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (94, 'Agri. Infrastructure Dev. Mitigation & Social Affairs', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (95, 'Training Sub Center, Joypurhat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (96, 'GG', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (97, 'Procurement Department', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (98, 'TTEI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (99, 'TEDA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (100, 'SEDP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (101, 'PUST', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (102, 'LTD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (103, 'Env', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (104, 'CD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (105, 'A&C (HEM)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (106, 'Training Center, Rangpur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (107, 'TTTL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (108, 'FT (VGD)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (109, 'Financial Expart', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (110, 'TECSL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (111, 'TFAUMCH', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (112, 'MS-MATS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (113, 'TMSS Community Policing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (114, 'EE&LS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (115, 'TDEA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (116, 'Training Center, Natore', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (117, 'DED-1 Office', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (118, 'Business Venture', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (119, 'LPG Ltd.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (120, 'TRES', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (121, 'TTI Canteen', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (122, 'TMATI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (123, 'LLS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (124, 'R&MIS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (125, 'LCS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (126, 'M-MATS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (127, 'P-2 & 3', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (128, 'Land-LCD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (129, 'Agriculture', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (130, 'P-5', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (131, 'Furniture', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (132, 'Momo Inn Ltd.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (133, 'ARM & GG', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (134, 'TCNGL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (135, 'HR-M&A', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (136, 'HR-M & Admin', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (137, 'THSS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (138, 'HEM-Enterprise', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (139, 'GGIC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (140, 'MIS & D(THS)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (141, 'TTF', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (142, 'HEM (MIS)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (143, 'TISI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (144, 'BOD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (145, 'TID', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (146, 'HEM (LLS)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (147, 'Religious Complex', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (148, 'LDS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (149, 'BCL Paper Mill', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (150, 'Agriculture Production', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (151, 'Seed Dept', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (152, 'Day Care Center', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (153, 'SP-WV', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (154, 'BLP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (155, 'TPIR', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (156, 'Food & Beverage', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (157, 'Automation Cell (HEM)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (158, 'Auto Center', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (159, 'TMSS Cold Storage', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (160, 'ECD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (161, 'TMC-DU', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (162, 'TMBA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (163, 'TPIJ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (164, 'TMSS Electronics, Dupchancia', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (165, 'TMMH (HO)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (166, 'TSWH&RC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (167, 'EICD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (168, 'PUB', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (169, 'Finance Intelligence Division', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (170, 'Development', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (171, 'TMC & RCH', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (172, 'EST', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (173, 'Spices', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (174, 'DEACA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (175, 'TDSC-Dinajpur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (176, 'TDSC-Rangpur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (177, 'TDSC-Bogura', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (178, 'TDSC-Noongola', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (179, 'TDSC-FO', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (180, 'TDSC-Gaibandha', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (181, 'FZHCC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (182, 'P-6', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (183, 'TPSC (Joypurhat)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (184, 'Enterprise Cell', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (185, 'TMSS Apparels Limited', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (186, 'TMPN', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (187, 'TDSC-Dupchahia', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (188, 'TDSC-HO', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (189, 'TNI (TMSS Nursing Institute)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (190, 'MBJ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (191, 'BCL Aviation LTD.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (192, 'Operation Monitoring Team (OMT)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (193, 'Prundro CTV', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (194, 'TMAF', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (195, 'TMBJSC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (196, 'TDSC-Joypurhat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (197, 'PC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (198, 'WKFNI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (199, 'Marketing & Branding', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (200, 'TCC (TMSS Cancer Centre)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (201, 'TBS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (202, 'OCT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (203, 'TFZH', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (204, 'CMSME (Cottage Micro & Small Medium Enterprise)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (205, 'LIGA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (206, 'JFNI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (207, 'Sujabad Educational Complex', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (208, 'SQAR', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (209, 'OP & IT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (210, 'Mituli Family Trust', 1, NULL, NULL, NULL, NULL);
INSERT INTO `departments` VALUES (211, 'RDP (Research Development and Publication)', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for designations
-- ----------------------------
DROP TABLE IF EXISTS `designations`;
CREATE TABLE `designations`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of designations
-- ----------------------------
INSERT INTO `designations` VALUES (1, 'Executive Director', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (2, 'Deputy Executive Director', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (3, 'Director', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (4, 'Joint Director', 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (5, 'Deputy Director', 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (6, 'Senior Assistant Director', 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (7, 'Assistant Director', 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (8, 'Senior Zonal Manager', 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (9, 'Zonal Manager', 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (10, 'Asst. Zonal Manager', 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (11, 'Area Manager', 11, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (12, 'Additional Area Manager', 12, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (13, 'Deputy Area Manager', 13, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (14, 'Junior Area Manager', 14, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (15, 'Senior Branch Manager', 15, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (16, 'Deputy Sr. Branch Manager', 16, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (17, 'Branch Manager', 17, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (18, 'Asst. Branch Manager', 18, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (19, 'Senior Supervisor', 19, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (20, 'Deputy Senior Supervisor', 20, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (21, 'Field Supervisor', 21, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (22, 'Asst. Field Supervisor', 22, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (23, 'Senior Village Organizer', 23, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (24, 'Deputy Sr. Village Organizer', 24, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (25, 'Village Organizer', 25, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (26, 'SWA', 26, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (27, 'WA', 27, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (28, 'JWA', 28, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (29, 'Unit Manager', 17, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (30, 'IT Specialist', 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (31, 'N/A', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (32, 'Senior Skilled Driver', 15, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (33, 'Senior Driver', 16, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (34, 'Assistant Skilled Senior Driver', 17, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (35, 'Assistant Senior Driver', 18, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (36, 'Skilled Driver', 19, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (37, 'Driver', 20, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (38, 'Junior Skilled Driver', 21, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (39, 'Junior Driver', 22, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (40, 'Assistant Nurse', 21, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (41, 'Branch Accountant Cum Computer Operator', 18, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (42, 'Accounts Officer', 15, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (43, 'Site Engineer', 11, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (44, 'Computer Operator', 18, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (45, 'Accountant', 17, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (46, 'Biniyog Kormi', 21, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (48, 'Assistant Staff Nurse', 21, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (49, 'Medical Assistant', 17, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (50, 'Architect', 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (53, 'Computer Operator', 17, 1, NULL, NULL, NULL, NULL);
INSERT INTO `designations` VALUES (54, 'Chief Medical Physicist', 4, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of districts
-- ----------------------------
INSERT INTO `districts` VALUES (1, 3, 'Bagerhat', 'বাগেরহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (2, 1, 'Bandarban', 'বান্দরবান', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (3, 4, 'Barguna', 'বরগুনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (4, 4, 'Barishal', 'বরিশাল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (5, 4, 'Bhola', 'ভোলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (6, 2, 'Bogura', 'বগুড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (7, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (8, 1, 'Chandpur', 'চাঁদপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (9, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (10, 1, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (11, 3, 'Chuadanga', 'চুয়াডাঙ্গা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (12, 1, 'Coxsbazar', 'কক্সবাজার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (13, 1, 'Cumilla', 'কুমিল্লা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (14, 6, 'Dhaka', 'ঢাকা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (15, 7, 'Dinajpur', 'দিনাজপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (16, 6, 'Faridpur', 'ফরিদপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (17, 1, 'Feni', 'ফেনী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (18, 7, 'Gaibandha', 'গাইবান্ধা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (19, 6, 'Gazipur', 'গাজীপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (20, 6, 'Gopalganj', 'গোপালগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (21, 5, 'Habiganj', 'হবিগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (22, 8, 'Jamalpur', 'জামালপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (23, 3, 'Jashore', 'যশোর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (24, 4, 'Jhalakathi', 'ঝালকাঠি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (25, 3, 'Jhenaidah', 'ঝিনাইদহ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (26, 2, 'Joypurhat', 'জয়পুরহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (27, 1, 'Khagrachhari', 'খাগড়াছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (28, 3, 'Khulna', 'খুলনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (29, 6, 'Kishoreganj', 'কিশোরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (30, 7, 'Kurigram', 'কুড়িগ্রাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (31, 3, 'Kushtia', 'কুষ্টিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (32, 1, 'Lakshmipur', 'লক্ষ্মীপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (33, 7, 'Lalmonirhat', 'লালমনিরহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (34, 6, 'Madaripur', 'মাদারীপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (35, 3, 'Magura', 'মাগুরা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (36, 6, 'Manikganj', 'মানিকগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (37, 3, 'Meherpur', 'মেহেরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (38, 5, 'Moulvibazar', 'মৌলভীবাজার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (39, 6, 'Munshiganj', 'মুন্সিগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (40, 8, 'Mymensingh', 'ময়মনসিংহ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (41, 2, 'Naogaon', 'নওগাঁ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (42, 3, 'Narail', 'নড়াইল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (44, 6, 'Narsingdi', 'নরসিংদী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (45, 2, 'Natore', 'নাটোর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (46, 8, 'Netrokona', 'নেত্রকোণা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (47, 7, 'Nilphamari', 'নীলফামারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (48, 1, 'Noakhali', 'নোয়াখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (49, 2, 'Pabna', 'পাবনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (50, 7, 'Panchagarh', 'পঞ্চগড়', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (51, 4, 'Patuakhali', 'পটুয়াখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (52, 4, 'Pirojpur', 'পিরোজপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (53, 6, 'Rajbari', 'রাজবাড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (54, 2, 'Rajshahi', 'রাজশাহী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (55, 1, 'Rangamati', 'রাঙ্গামাটি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (56, 7, 'Rangpur', 'রংপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (57, 3, 'Satkhira', 'সাতক্ষীরা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (58, 6, 'Shariatpur', 'শরীয়তপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (59, 8, 'Sherpur', 'শেরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (60, 2, 'Sirajganj', 'সিরাজগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (61, 5, 'Sunamganj', 'সুনামগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (62, 5, 'Sylhet', 'সিলেট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (63, 6, 'Tangail', 'টাঙ্গাইল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `districts` VALUES (64, 7, 'Thakurgaon', 'ঠাকুরগাঁও', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for divisions
-- ----------------------------
DROP TABLE IF EXISTS `divisions`;
CREATE TABLE `divisions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of divisions
-- ----------------------------
INSERT INTO `divisions` VALUES (1, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `divisions` VALUES (2, 'Rajshahi', 'রাজশাহী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `divisions` VALUES (3, 'Khulna', 'খুলনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `divisions` VALUES (4, 'Barishal', 'বরিশাল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `divisions` VALUES (5, 'Sylhet', 'সিলেট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `divisions` VALUES (6, 'Dhaka', 'ঢাকা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `divisions` VALUES (7, 'Rangpur', 'রংপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `divisions` VALUES (8, 'Mymensingh', 'ময়মনসিংহ', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for domains
-- ----------------------------
DROP TABLE IF EXISTS `domains`;
CREATE TABLE `domains`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sector_id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of domains
-- ----------------------------
INSERT INTO `domains` VALUES (1, 4, 'N/A', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (2, 5, 'N/I', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (3, 3, 'ES', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (4, 2, 'THS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (5, 3, 'A&F', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (6, 1, 'P-1', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (7, 3, 'P-2', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (8, 8, 'P-3', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (9, 7, 'P-4', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (10, 3, 'HRM&A', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (11, 8, 'HRD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (12, 1, 'HEM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (13, 8, 'TD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (14, 8, 'HRD&T', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (15, 3, 'CV', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (16, 3, 'A&C', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (17, 4, 'Education', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (18, 9, 'ICT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (19, 6, 'Program', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (20, 4, 'Construction', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (21, 3, 'GG', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (22, 3, 'ES & LS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (23, 4, 'Agriculture Department (AD)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (24, 6, 'P-5', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (25, 1, 'HEM-OP-1 (Bogura)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (26, 1, 'HEM-OP-2 (Dhaka)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (27, 1, 'HEM-OP-3 (Rajshahi)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (28, 3, 'BCL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (29, 3, 'Agriculture Domain (AD)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (30, 1, 'HEM-ARM & GG', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (31, 1, 'TIMF', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (32, 1, 'HEM-OP-4 (Rangpur)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (33, 1, 'HEM-OP-5 (Chattogram)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (34, 1, 'HEM-OP-6 (Khulna)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (35, 1, 'HEM-OP-7 (Sylhet)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (36, 1, 'HEM-OP-8 (Barishal)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (37, 8, 'Religious Complex', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (38, 8, 'P-6', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (39, 1, 'HEM-OP-9 (Dinajpur)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (40, 1, 'HEM-OP-10 (Cumilla)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (41, 7, 'TBS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (42, 1, 'HEM-OP-11 (Natore)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (43, 9, 'P-7', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (44, 1, 'HEM-OP-12 (Mymensingh)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (45, 1, 'HEM Grand Sector', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (46, 2, 'Grand Health Sector', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (47, 2, 'Medical Service Domain', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (48, 2, 'Medical Education-1 Domain', 1, NULL, NULL, NULL, NULL);
INSERT INTO `domains` VALUES (49, 2, 'Medical Education-2 Domain', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for downloads
-- ----------------------------
DROP TABLE IF EXISTS `downloads`;
CREATE TABLE `downloads`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_name_english` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_name_bangla` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_type_doc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_type_pdf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_type_xls` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 0,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of downloads
-- ----------------------------
INSERT INTO `downloads` VALUES (6, 'নমিনি পরিবর্তন ফরম', '202302260429Nomini .pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 14:29:19', NULL);
INSERT INTO `downloads` VALUES (7, 'নমিনি পরিবর্তন ফরম (নমিনির অভিভাবকসহ)', '202302260429Nomini - with guardian.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 14:29:53', NULL);
INSERT INTO `downloads` VALUES (8, 'জিম্মাদার পরিবর্তন ফরম', '202302260430Guardian Update.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 14:30:13', NULL);
INSERT INTO `downloads` VALUES (9, 'যোগদান ফরম', '202302270535TMSS joining form-last updated-05-2-23_2.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-27 05:35:17', NULL);
INSERT INTO `downloads` VALUES (10, 'Employee Resigned Info', '202303040954Employee Resigned Info Nafiur.xls', 'xls', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-03-04 09:54:27', NULL);

-- ----------------------------
-- Table structure for educational_qualifications
-- ----------------------------
DROP TABLE IF EXISTS `educational_qualifications`;
CREATE TABLE `educational_qualifications`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of educational_qualifications
-- ----------------------------
INSERT INTO `educational_qualifications` VALUES (1, 'Class One', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (2, 'Class Two', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (3, 'Class Three', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (4, 'Class Four', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (5, 'Class Five', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (6, 'Class Six', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (7, 'Class Seven', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (8, 'Class Eight', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (9, 'Class Nine', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (10, 'Class Ten', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (11, 'DAKHIL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (12, 'HSC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (13, 'ALIM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (14, 'Diploma in Commerce', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (15, 'Paramedics', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (16, 'Diploma Eng', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (17, 'Diploma in Ag', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (18, 'Higher Diploma Eng', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (19, 'PGD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (20, 'CA(CC)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (21, 'BA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (22, 'FAZIL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (23, 'B Com', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (24, 'B Sc', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (25, 'BBS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (26, 'Hons', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (27, 'BBA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (28, 'LLB', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (29, 'B Ed', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (30, 'MBBS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (31, 'DVM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (32, 'FCPS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (33, 'FRCS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (34, 'BSS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (35, 'B Ag', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (36, 'BSC Eng', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (37, 'BSC Agri Eng', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (38, 'MA Ag', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (39, 'MS in Ag', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (40, 'MBA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (41, 'MBS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (42, 'MA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (43, 'KAMIL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (44, 'MSS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (45, 'M Sc', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (46, 'M Com', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (47, 'M Phil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (48, 'Ph D', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (49, 'Matriculation', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (50, 'N/I', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (51, 'BA(Hons)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (52, 'B Ed', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (53, 'Diploma in Medical Technology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (54, 'Diploma in Midwifery', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (55, 'Fazil B.A. (Special)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (56, 'Bachelor of Laws', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (57, 'Master of Laws', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (58, 'BA (Special)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (59, 'Research', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (60, 'General', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (61, 'BSC (Pass)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (62, 'B.Com (Pass)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (63, 'SSC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (64, 'Diploma in Computer Engineering', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (65, 'MPH', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (66, 'Diploma in Elec.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (67, 'Diploma in MATS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (68, 'Bangladesh Nursing Council', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (69, 'BBM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (70, 'Dipolma in Paramedical', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (71, 'Diploma in Textile Engg', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (72, 'MEd', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (73, 'Diploma in Nursing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (74, 'B.SC Fisheries (Hons)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (75, 'B.Sc in CSE', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (76, 'BSS(Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (77, 'BBS(Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (78, 'BSc(Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (79, 'BNS (Bachelor of Nursing Science)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (80, 'B. Pharma (Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (81, 'BSc in Nursing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (82, 'Diploma in Medical Faculty', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (83, 'Bachelor of Computer Science & Information Technology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (84, 'Masters in Computer Science & Engineering', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (85, 'Diploma in Library and Information Science', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (86, 'Diploma in Lab Medicine', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (87, 'Diploma in Nursing Science & Midwifery', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (88, 'Diploma in Nursing Science & Orthopedic Nursing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (89, 'Diploma in Dental Technology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (90, 'Diploma in Pharmacy', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (91, 'Diploma in Laboratory Medicine', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (92, 'Diploma in Laboratory Technology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (93, 'B.T.I.S (Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (94, 'M.T.I.S', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (95, 'EMBA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (96, 'MS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (97, 'MBS(Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (98, 'BBA(Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (99, 'MATC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (100, 'JSC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (101, 'BDS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (102, 'Diploma-In-Health Technology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (103, 'Sr. Certificate in Nursing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (104, 'Sr. Certificate in Midwifery', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (105, 'Community Paramedic', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (106, 'Bachelor of Science in Agriculture (Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (107, 'Bachelor of Science in Computer Science and Engineering', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (108, 'M.Sc in ICT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (109, 'B Com(Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (110, 'CCD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (111, 'FCGP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (112, 'Diploma in Ophthalmalogy', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (113, 'DLO', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (114, 'MCPS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (115, 'DGO', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (116, 'Chittagong University', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (117, 'Diploma in Anaesthesiology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (118, 'MD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (119, 'Bachelor of Science in Computer Science and Engineering', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (120, 'Diploma in Forestry', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (121, 'BDS/MS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (122, 'B.Sc in Textile Eng.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (123, 'DTCD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (124, 'D-ORTHO', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (125, 'BSc Agri. (Hons)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (126, 'MFA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (127, 'BFA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (128, 'Diploma in Medical', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (129, 'BFA (Honours)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (130, 'Bachelor of Physical Education', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (131, 'B.Sc in Electronics & Telecommunication Engineering (ETE)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (132, 'Bachelor of Technology in IT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (133, 'Diploma in Dermatology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (134, 'Diploma in Forensic Medicine', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (135, 'Diploma in Medical Radiotherapy.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (136, 'Bachelor in Electrical and Electronics Engineering (EEE)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (137, 'Master of Surgery', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (138, 'Bachelor of Agricultural Education', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (139, 'Bachelor of Architechture', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (140, 'Bachelor of Ayurbedic Medicine and Surgery', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (141, 'Bsc in Physiotherapy', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (142, 'Bsc in Health Technology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (143, 'Mass Education', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (144, 'Bachelor of Unani Medicine and Surgery', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (145, 'PGD in Medical Ultrasound Diagnostic', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (146, 'PGD in Orthopedics', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (147, 'Msc in Aquaculture', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (148, 'LLM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (149, 'Fazil Honors', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (150, 'Diploma in Business Studies', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (151, 'Doctor of Medicine', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (152, 'Bachelor in Optometry Programme', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (153, 'Diploma in Optometry and Low Vision', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (154, 'Diploma in Electro-Medical', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (155, 'JDC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (156, 'Bachelor of Science in Fisheries', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (157, 'LLB (Honors)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (158, 'Bsc of Leather Technology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (159, 'PGD in Personnel Management', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (160, 'Master of Medical Science', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (161, 'BBA in Agribusiness', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (162, 'Senior Certificate in Nursing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (163, 'Senior Midwife Certificate', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (164, 'Diploma in Computer Science and Engineering', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (165, 'B.Sc in Mechanical Engineering', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (166, 'Master of Development Studies', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (167, 'Diploma in Clinical Pathology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (168, 'PGD in Cardiology', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (169, 'PGT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (170, 'Bachelor of Agricultural Economics', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (171, 'Master of Agricultural Economics', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (172, 'Diploma in Medical Ultrasound', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (173, 'Master of Science in Aquaculture', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (174, 'Bachelor of Science in Optometry', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (175, 'Diploma in Fisheries', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (176, 'Master in Nursing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (177, 'Master in Public Health', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (178, 'Diploma in Primary Health Care', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (179, 'Master in Early Childhood Development', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (180, 'Bsc in Mechatronics Engineering', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (181, 'B.Sc in Public Health Nursing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (182, 'Fadil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `educational_qualifications` VALUES (183, 'Diploma in Indo-Allopathy Medicine (DIAM)', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for efiles
-- ----------------------------
DROP TABLE IF EXISTS `efiles`;
CREATE TABLE `efiles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of efiles
-- ----------------------------

-- ----------------------------
-- Table structure for employee_types
-- ----------------------------
DROP TABLE IF EXISTS `employee_types`;
CREATE TABLE `employee_types`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_types
-- ----------------------------
INSERT INTO `employee_types` VALUES (1, 'SR-TMSS (101)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_types` VALUES (2, 'Pay Scale-THS (102)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_types` VALUES (3, 'Pay Scale-TIT (103)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_types` VALUES (4, 'Pay Scale-TPSC (104)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_types` VALUES (5, 'Contract Based (201)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_types` VALUES (6, 'Project Staff (301)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `employee_types` VALUES (7, 'Consultant (601)', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `connection` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `queue` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for genders
-- ----------------------------
DROP TABLE IF EXISTS `genders`;
CREATE TABLE `genders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of genders
-- ----------------------------
INSERT INTO `genders` VALUES (1, 'Male', 1, NULL, NULL, NULL, NULL);
INSERT INTO `genders` VALUES (2, 'Female', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for invoice_details
-- ----------------------------
DROP TABLE IF EXISTS `invoice_details`;
CREATE TABLE `invoice_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NULL DEFAULT NULL,
  `invoice_id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `selling_qty` double NULL DEFAULT NULL,
  `unit_price` double NULL DEFAULT NULL,
  `selling_price` double NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice_details
-- ----------------------------

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoices
-- ----------------------------

-- ----------------------------
-- Table structure for job_statuses
-- ----------------------------
DROP TABLE IF EXISTS `job_statuses`;
CREATE TABLE `job_statuses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_statuses
-- ----------------------------

-- ----------------------------
-- Table structure for marital_statuses
-- ----------------------------
DROP TABLE IF EXISTS `marital_statuses`;
CREATE TABLE `marital_statuses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of marital_statuses
-- ----------------------------
INSERT INTO `marital_statuses` VALUES (1, 'Married', 1, NULL, NULL, NULL, NULL);
INSERT INTO `marital_statuses` VALUES (2, 'Unmarried', 1, NULL, NULL, NULL, NULL);
INSERT INTO `marital_statuses` VALUES (3, 'Widow', 1, NULL, NULL, NULL, NULL);
INSERT INTO `marital_statuses` VALUES (4, 'Divorcee', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_04_16_094302_create_suppliers_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_04_16_181230_create_customers_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_04_16_202829_create_units_table', 1);
INSERT INTO `migrations` VALUES (8, '2022_04_17_055455_create_categories_table', 1);
INSERT INTO `migrations` VALUES (9, '2022_04_17_194251_create_products_table', 1);
INSERT INTO `migrations` VALUES (10, '2022_04_18_184636_create_purchases_table', 1);
INSERT INTO `migrations` VALUES (11, '2022_04_23_204340_create_invoices_table', 1);
INSERT INTO `migrations` VALUES (12, '2022_04_23_204653_create_invoice_details_table', 1);
INSERT INTO `migrations` VALUES (13, '2022_04_23_204725_create_payments_table', 1);
INSERT INTO `migrations` VALUES (14, '2022_04_23_204757_create_payment_details_table', 1);
INSERT INTO `migrations` VALUES (15, '2023_01_30_020542_create_sectors_table', 1);
INSERT INTO `migrations` VALUES (16, '2023_02_01_122029_create_setups_table', 1);
INSERT INTO `migrations` VALUES (17, '2023_02_01_125547_create_domains_table', 1);
INSERT INTO `migrations` VALUES (18, '2023_02_01_154211_create_designations_table', 1);
INSERT INTO `migrations` VALUES (19, '2023_02_02_052820_create_divisions_table', 1);
INSERT INTO `migrations` VALUES (20, '2023_02_02_053155_create_districts_table', 1);
INSERT INTO `migrations` VALUES (21, '2023_02_02_053211_create_upazillas_table', 1);
INSERT INTO `migrations` VALUES (22, '2023_02_02_084353_create_employee_types_table', 1);
INSERT INTO `migrations` VALUES (23, '2023_02_02_085205_create_zones_table', 1);
INSERT INTO `migrations` VALUES (24, '2023_02_02_085528_create_areas_table', 1);
INSERT INTO `migrations` VALUES (25, '2023_02_02_085754_create_branches_table', 1);
INSERT INTO `migrations` VALUES (26, '2023_02_02_085900_create_departments_table', 1);
INSERT INTO `migrations` VALUES (27, '2023_02_02_085958_create_educational_qualifications_table', 1);
INSERT INTO `migrations` VALUES (28, '2023_02_02_090035_create_job_statuses_table', 1);
INSERT INTO `migrations` VALUES (29, '2023_02_02_090044_create_genders_table', 1);
INSERT INTO `migrations` VALUES (30, '2023_02_02_090109_create_marital_statuses_table', 1);
INSERT INTO `migrations` VALUES (31, '2023_02_02_090127_create_religions_table', 1);
INSERT INTO `migrations` VALUES (32, '2023_02_02_090147_create_blood_groups_table', 1);
INSERT INTO `migrations` VALUES (33, '2023_02_02_162311_create_new_employees_table', 1);
INSERT INTO `migrations` VALUES (34, '2023_02_15_054806_create_efiles_table', 1);
INSERT INTO `migrations` VALUES (35, '2023_02_16_151423_create_downloads_table', 2);
INSERT INTO `migrations` VALUES (36, '2023_02_17_141925_create_permission_tables', 3);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 4);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 5);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 8);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 9);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 10);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 11);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 13);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 15);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 16);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 17);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 18);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 19);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 20);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 7);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 14);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 21);

-- ----------------------------
-- Table structure for new_employees
-- ----------------------------
DROP TABLE IF EXISTS `new_employees`;
CREATE TABLE `new_employees`  (
  `id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `designation_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N/I',
  `joiningdate` date NULL DEFAULT NULL,
  `date_of_birth` date NULL DEFAULT NULL,
  `domain_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `father_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mother_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marital_status_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth_place_district_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `present_village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `present_post` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `present_postal_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `present_division_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `present_district_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `present_upazilla_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permanent_village` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permanent_post` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permanent_postal_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permanent_division_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permanent_district_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permanent_upazilla_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smartcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blood_groups_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `educational_qualification_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employee_type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 0,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of new_employees
-- ----------------------------
INSERT INTO `new_employees` VALUES ('10135970', 'Md. Mr. Zinnah', '19', '2023-02-26', '1994-09-20', '39', 'Md. Nurul Islam', 'Most. Jobeda Khatun', '1', '47', 'South Bahageli Kacharipara', 'Moynakuri', '5300', '7', '47', '426', 'South Bahageli Kacharipara', 'Moynakuri', '5300', '7', '47', '426', NULL, '8250534867', '8', '01755721617', 'mdtousifzinnah49@gmail.com', '40', '1', 0, 9, 1, '2023-02-28 03:24:10', '2023-02-28 08:10:20');
INSERT INTO `new_employees` VALUES ('10135971', 'Md. Samirul Islam', '19', '2023-02-26', '1996-12-10', '39', 'Md. Ramjan Ali', 'Mst. Parul Begum', '1', '64', 'KARNAI', 'KARNAI', '5110', '7', '64', '438', 'KARNAI', 'KARNAI', '5110', '7', '64', '438', '6893788304', '6893788304', '7', '01774286303', 'mdtousifzinnah49@gmail.com', '42', '1', 0, 9, 1, '2023-02-28 03:36:33', '2023-02-28 08:09:22');
INSERT INTO `new_employees` VALUES ('10135972', 'Sumon Chandra Barmon', '19', '2023-02-26', '1992-06-10', '39', 'Karthik Chandra Barman', 'Minoti Rani', '2', '50', 'Barasingya', 'Barasfalupara', '5103', '7', '50', '400', 'Barasingya', 'Barasfalupara', '5103', '7', '50', '400', '5959674317', '5959674317', '3', '01750455588', 'sumonc210@gmail.com', '42', '1', 0, 9, 1, '2023-02-28 06:28:30', '2023-02-28 08:08:42');
INSERT INTO `new_employees` VALUES ('10135973', 'Md. Hapijul Islam', '19', '2023-02-26', '1994-04-04', '39', 'Md. Atab Uddin', 'Hamida Begum', '2', '15', 'Uttar Horirampur', 'Jhanzira', '5200', '7', '15', '410', 'Uttar Horirampur', 'Jhanzira', '5200', '7', '15', '410', '2813430044', '2813430044', '1', '01783030717', 'mhapijul420@gmail.com', '42', '1', 0, 9, 1, '2023-02-28 06:47:09', '2023-02-28 08:08:30');
INSERT INTO `new_employees` VALUES ('10135974', 'Ramkrishno Chandra Pal', '19', '2023-02-26', '1992-04-03', '39', 'Santosh Kumer Pal', 'Joba Rani Pal', '2', '15', 'Nasaratpur', 'Chirirbandor', '5240', '7', '15', '410', 'Nasaratpur', 'Chirirbandor', '5240', '7', '15', '410', '7339810546', '7339810546', '7', '01741698504', 'ramkrisnopalgemil@gmail.com', '44', '1', 0, 9, 1, '2023-02-28 06:55:35', '2023-02-28 08:08:06');
INSERT INTO `new_employees` VALUES ('10135975', 'Md. Maminul Islam', '21', '2023-02-26', '1997-08-09', '39', 'Md. Sahab Ali', 'Mst. Mayana', '1', '64', 'Daulotpur', 'Kutgaon', '5110', '7', '64', '438', 'Daulotpur', 'Kutgaon', '5110', '7', '64', '438', '2402039917', '2402039917', '9', '01770076995', 'mdmominul6467@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 06:59:44', NULL);
INSERT INTO `new_employees` VALUES ('10135976', 'Md. Abdus Shadik', '21', '2023-02-26', '1997-12-15', '39', 'Md. Abdur Razzak', 'Most. Rebeka Sultana', '2', '47', 'Nijvhokdabari', 'Domar', '5340', '7', '47', '424', 'Nijvhokdabari', 'Domar', '5340', '7', '47', '424', '7802628870', '7802628870', '7', '01708986073', 'shadikshawon1480@gmail.com', '21', '1', 0, 9, NULL, '2023-02-28 07:06:26', NULL);
INSERT INTO `new_employees` VALUES ('10135977', 'Lablur Rahman', '21', '2023-02-26', '1988-12-31', '39', 'Md. Abdur Rasid', 'Laily', '1', '47', 'Purbo Khutamara', 'Purbo Khutamara', '5330', '7', '47', '425', 'Purbo Khutamara', 'Purbo Khutamara', '5330', '7', '47', '425', '5531617784', '5531617784', '8', '01714486887', 'www.lablurrahman@gmail.com', '34', '1', 0, 9, NULL, '2023-02-28 07:12:34', NULL);
INSERT INTO `new_employees` VALUES ('10135978', 'Md. Omar Faruk', '21', '2023-02-26', '1994-12-23', '39', 'Md. Mojibar Rahman', 'Mst. Parul Begum', '1', '15', 'Gobindapura', 'Manmathpur', '5250', '7', '15', '417', 'Gobindapura', 'Manmathpur', '5250', '7', '15', '417', '19942717760000026', NULL, '1', '01740186971', 'omarmdfaruk958@gmail.com', '21', '1', 0, 9, NULL, '2023-02-28 07:25:04', NULL);
INSERT INTO `new_employees` VALUES ('10135979', 'Md. Razu Ahmed', '21', '2023-02-26', '1993-09-15', '39', 'Late Samaj Uddin', 'Mst. Anjuara Begum', '2', '15', 'Goaldihi', 'Goaldihi', '5230', '7', '15', '415', 'Goaldihi', 'Goaldihi', '5230', '7', '15', '415', '19932716079000237', NULL, '9', '01759430869', 'omarmdfaruk958@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 07:33:22', NULL);
INSERT INTO `new_employees` VALUES ('10135980', 'Md. Idrish Ali Sohag', '21', '2023-02-26', '1997-02-05', '39', 'Md. Ramjan Ali', 'Mst. Rpwsanara Begum', '1', '64', 'Koshadangipara', 'Kosharaniganj', '5110', '7', '64', '446', 'Koshadangipara', 'Kosharaniganj', '5110', '7', '64', '446', '2852015631', NULL, '5', '01750665813', 'md4932582@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 07:38:03', NULL);
INSERT INTO `new_employees` VALUES ('10135981', 'Md. Abdur Rahim', '21', '2023-02-26', '1994-02-01', '39', 'Md. Hossain Ali', 'Mst. Mrina Begum', '2', '15', 'Uttar Polashbari', 'Chirirbandor', '5240', '7', '15', '409', 'Uttar Polashbari', 'Chirirbandor', '5240', '7', '15', '409', '5522538627', NULL, '7', '01757888257', 'md4932582@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 07:42:28', NULL);
INSERT INTO `new_employees` VALUES ('10135982', 'Harinath Roy', '21', '2023-02-26', '1996-10-23', '39', 'Sree Paresh Chandro Roy', 'Sre Moti Jutika Rani', '2', '56', 'Lalchandpur Sarkarpara', 'Sadar', '5400', '7', '56', '447', 'Lalchandpur Sarkarpara', 'Sadar', '5400', '7', '56', '447', '7776157237', NULL, '5', '01761314399', 'harnathray399@gmail.com', '25', '1', 0, 9, NULL, '2023-02-28 07:48:19', NULL);
INSERT INTO `new_employees` VALUES ('10135983', 'Shahadot Hossain', '21', '2023-02-26', '1988-06-02', '39', 'Momataz Ali', 'Shahida Begum', '1', '15', 'Dokkhin Mornai', 'Shialkate', '5250', '7', '15', '417', 'Dokkhin Mornai', 'Shialkate', '5250', '7', '15', '417', '2394314351', NULL, '3', '01751843213', 'shahadathossain261988@gmail.com', '42', '1', 0, 9, NULL, '2023-02-28 07:54:22', NULL);
INSERT INTO `new_employees` VALUES ('10135984', 'Md. Abdullah Al Mamun', '21', '2023-02-26', '1997-12-28', '39', 'Md. Foyez Uddin', 'Mst. Asma Begum', '2', '64', 'Sandharoi', 'Ranisonkail', '5120', '7', '64', '439', 'Sandharoi', 'Ranisonkail', '5120', '7', '64', '439', '2852174842', NULL, '5', '01778951875', 'md4932582@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 08:00:09', NULL);
INSERT INTO `new_employees` VALUES ('10135985', 'Md. Biplob  Hossain', '21', '2023-02-26', '1999-06-13', '34', 'Md. Sadbar Ali', 'Fulmoti Khatun', '1', '31', 'Betai', 'Gannabazar', NULL, '3', '25', '225', 'Betai', 'Gannabazar', NULL, '3', '25', '225', NULL, '6455020732', '1', '01777182925', 'biplobhossin@.com', '12', '1', 0, 15, 15, '2023-03-02 05:02:32', '2023-03-02 05:04:52');
INSERT INTO `new_employees` VALUES ('10135986', 'Shamim Hossen', '21', '2023-02-26', '1999-06-03', '34', 'Md. Ziaul Hossen', 'Rebeka Khatun', '1', '23', 'Kashadanga', 'Jadobpur', NULL, '3', '23', '178', 'Kashadanga', 'Jadobpur', NULL, '3', '23', '178', NULL, '7354607310', '7', '01950146550', NULL, '12', '1', 0, 15, NULL, '2023-03-02 05:10:39', NULL);
INSERT INTO `new_employees` VALUES ('10135987', 'Kallol Kumar Biswas', '21', '2023-02-26', '1997-11-05', '34', 'Kartic Chandro Biswas', 'Minnoti Rani Biswas', '2', '23', 'Jaforpur', 'Rajghat', NULL, '3', '23', '171', 'Jaforpur', 'Rajghat', NULL, '3', '23', '171', NULL, '1027145075', '1', '01934262057', 'kallol262057@gmail.com', '12', '1', 0, 15, NULL, '2023-03-02 05:17:47', NULL);
INSERT INTO `new_employees` VALUES ('10135988', 'S.M. Sabbir Mahmud', '21', '2023-02-26', '2002-01-08', '34', 'S.M. Kamal Hossain', 'Mst. Shahana Aktar Saju', '2', '1', 'Baruikhali', 'Kachua', NULL, '3', '1', '56', 'Baruikhali', 'Kachua', NULL, '3', '1', '56', NULL, '3762904294', '5', '01316964554', 'rafinsanto775@gmail.com', '12', '1', 0, 15, NULL, '2023-03-02 05:30:06', NULL);
INSERT INTO `new_employees` VALUES ('10135989', 'Md. Muzahidul Islam', '21', '2023-02-26', '1998-11-25', '34', 'Md. Babul Hossain', 'Mst. Anzura Begum', '2', '23', 'Osmanpur', 'Fulbari', NULL, '3', '23', '174', 'Osmanpur', 'Fulbari', NULL, '3', '23', '174', NULL, '8255029491', '7', '01777986019', 'rimongm1@gmail.com', '12', '1', 0, 15, NULL, '2023-03-02 05:36:33', NULL);
INSERT INTO `new_employees` VALUES ('10135990', 'Md. Alamin Sheikh', '21', '2023-02-26', '1999-05-07', '34', 'Md. Mostofa Kamal', 'Most. Parul Begum', '2', '28', 'Moniber Bari Stadiumer Dhokkhin Pase, Boira', 'Khulna GPO 9000', NULL, '3', '28', 'Select Upazilla', 'Moniber Bari Stadiumer Dhokkhin Pase, Boira', 'Khulna GPO 9000', NULL, '3', '28', 'Select Upazilla', NULL, '7809809671', '5', '01977141325', NULL, '12', '1', 0, 15, NULL, '2023-03-02 05:45:06', NULL);
INSERT INTO `new_employees` VALUES ('10136015', 'Suruzzaman', '21', '2023-02-26', '2001-04-03', '26', 'Shohidul Islam', 'Sukhi Begam', '2', '63', 'Punglipara', '0', '0', '6', '63', '335', 'Punglipara', '0', '0', '6', '63', '335', NULL, '6012839525', '3', '01772660421', 'mdsuruzzaman840@gmail.com', '12', '1', 0, 17, 17, '2023-02-28 08:29:56', '2023-02-28 08:32:45');
INSERT INTO `new_employees` VALUES ('10136016', 'Beauty Khatun', '21', '2023-02-26', '2001-02-05', '26', 'Barek Mondol', 'Sabina Begum', '2', '63', 'Polisha', '0', '0', 'Select Division', '63', '335', 'Polisha', '0', '0', 'Select Division', '63', '335', '0', '8714859611', '1', '01308283421', 'beautyahmedo1308@gmail.com', '12', '1', 0, 17, 17, '2023-02-28 05:54:12', '2023-02-28 06:08:30');
INSERT INTO `new_employees` VALUES ('10136017', 'Md. Gulam Muktadir Billa', '21', '2023-02-26', '1997-12-15', '26', 'Md. Mutahar Housen Sordar', 'Jharna Aktar', '1', '22', 'Palobandha', '0', '0', '8', '22', '478', 'Palobandha', '0', '0', '8', '22', '478', NULL, '6908054874', '3', '01910603531', '0', '12', '1', 0, 17, 17, '2023-02-28 08:55:21', '2023-02-28 09:37:48');
INSERT INTO `new_employees` VALUES ('10136018', 'Md. Sumon Mia', '21', '2023-02-26', '1999-05-25', '26', 'Md. Nasir Uddin', 'Kolpona', '2', '22', 'Dolvity', '0', '0', '8', '22', '482', 'Dolvity', '0', '0', '8', '22', '482', NULL, '6904096812', '1', '01721499977', 'sumonkobir482@gmail.com', '12', '1', 0, 17, NULL, '2023-02-28 09:23:55', NULL);
INSERT INTO `new_employees` VALUES ('10136019', 'Md. Azizur Rahman', '21', '2023-02-26', '1996-12-22', '26', 'Md. Zural Islam', 'Razia Begum', '1', '22', 'Bajiter Para', '0', '0', '8', '22', '480', 'Bajiter Para', '0', '0', '8', '22', '480', '2853772925', NULL, '5', '01780272425', 'md.azizurrahman675@gmail.com', '12', '1', 0, 17, NULL, '2023-02-28 09:35:54', NULL);
INSERT INTO `new_employees` VALUES ('10136020', 'Md. Joynal Abedin', '21', '2023-02-26', '1997-01-01', '26', 'Md. Abdur Rashid', 'Mst. Jamila Begom', '1', '22', 'Polobardha', '0', '0', '8', '22', '478', 'Polobardha', '0', '0', '8', '22', '478', '9579101909', NULL, '1', '01625473899', NULL, '71', '1', 0, 17, 17, '2023-02-28 10:03:44', '2023-02-28 10:05:09');
INSERT INTO `new_employees` VALUES ('10136025', 'atikul islam', '21', '2023-03-01', '1998-01-20', '27', 'Md. Meser Ali', 'Mst. Aklima Begum', '2', '54', 'Mohodipur', 'Bodolgachi', NULL, '2', '41', '161', 'Mohodipur', 'Bodolgachi', NULL, '2', '41', '161', NULL, '1505407138', '5', '01768532459', NULL, '21', '1', 0, 10, NULL, '2023-03-04 08:23:15', NULL);
INSERT INTO `new_employees` VALUES ('10136026', 'Md.Rezaul Karim', '21', '2023-03-01', '1982-10-06', '27', 'Mazed Ali', 'Sahema', '1', '41', 'Tankashibpur', 'Dariapur', NULL, '2', '41', '164', 'Tankashibpur', 'Dariapur', NULL, '2', '41', '164', NULL, '8690211449', '3', '01790525925', NULL, '21', '1', 0, 10, NULL, '2023-03-04 08:38:37', NULL);
INSERT INTO `new_employees` VALUES ('10136027', 'Md. Saidul Islam', '21', '2023-03-01', '1993-11-08', '27', 'Harun ar Rasid', 'Most. Mofala Khatun', '1', '60', 'Chadpur', 'Bogmogasa', NULL, '2', '60', '108', 'Chadpur', 'Bogmogasa', NULL, '2', '60', '108', '1913482228', NULL, '7', '01739772252', NULL, '12', '1', 0, 10, NULL, '2023-03-04 08:43:08', NULL);
INSERT INTO `new_employees` VALUES ('10136028', 'Md. Zahid Hasan', '21', '2023-03-01', '2001-12-03', '27', 'Md. Zakir Hossin', 'Bulbuli Begum', '2', '54', 'Chakkirshnopur', 'Nandangachi', NULL, '2', '54', '141', 'Chakkirshnopur', 'Nandangachi', NULL, '2', '54', '141', NULL, '7811904916', '7', '01754975466', NULL, '12', '1', 0, 10, NULL, '2023-03-04 08:46:45', NULL);
INSERT INTO `new_employees` VALUES ('10136029', 'Md. Tomir Uddin', '21', '2023-03-01', '1989-08-18', '27', 'Late Md. Khobir Uddin', 'Most. Tohmina begum', '1', '45', 'Khatkhauir', 'Lokmanpur', NULL, '2', '45', '143', 'Khatkhauir', 'Lokmanpur', NULL, '2', '45', '143', NULL, '8240576267', '1', '01751655351', NULL, '12', '1', 0, 10, NULL, '2023-03-04 08:52:36', NULL);
INSERT INTO `new_employees` VALUES ('10136030', 'Md.Golam Rabbi', '21', '2023-03-01', '1996-06-25', '27', 'Md. Monsur Rahaman', 'Mst.Shahanaj Yesmin', '1', '6', 'Shimabire', 'Chandaikona', NULL, '2', '6', '131', 'Shimabire', 'Chandaikona', NULL, '2', '6', '131', '7348434502', NULL, '7', '01710257227', NULL, '12', '1', 0, 10, NULL, '2023-03-04 08:56:29', NULL);
INSERT INTO `new_employees` VALUES ('10136031', 'Md.Sohel Rana', '21', '2023-03-01', '2002-02-10', '27', 'Md. Abdul Mozid', 'Ms.Shefali Bibi', '2', '54', 'Konda', 'Khalgram', NULL, '2', '54', '135', 'Konda', 'Khalgram', NULL, '2', '54', '135', '4212904207', NULL, '7', '01723876423', NULL, '12', '1', 0, 10, NULL, '2023-03-04 08:59:37', NULL);
INSERT INTO `new_employees` VALUES ('10136032', 'Md. Matiur Rahman', '21', '2023-03-01', '1993-06-20', '27', 'Md. Anisur Rahman', 'Most. Raoshanara Begum', '1', '54', 'Damnash', 'Damnash Hat', NULL, '2', '54', '135', 'Damnash', 'Damnash Hat', NULL, '2', '54', '135', '19938111244000084', NULL, '7', '01794729807', NULL, '12', '1', 0, 10, NULL, '2023-03-04 09:03:00', NULL);
INSERT INTO `new_employees` VALUES ('10136033', 'Md. Torikul Islam', '21', '2023-03-01', '1997-01-20', '27', 'Md. Khalil Bapari', 'Md. Anowara Begum', '2', '54', 'Meherchondi', 'Padma Abasik', NULL, '2', '54', '381', 'Meherchondi', 'Padma Abasik', NULL, '2', '54', '381', NULL, '8252483600', '5', '01829881500', NULL, '12', '1', 0, 10, NULL, '2023-03-04 09:06:29', NULL);
INSERT INTO `new_employees` VALUES ('10136034', 'Aman Ullha', '21', '2023-03-01', '1993-10-26', '27', 'Emaz Uddin', 'Zaheda', '1', '41', 'Paranpur', 'Fetgram', '61511', '2', '41', '163', 'Paranpur', 'Fetgram', '61511', '2', '41', '163', '19936414781000086', NULL, '3', '01743869996', NULL, '34', '1', 0, 10, NULL, '2023-03-04 09:09:48', NULL);
INSERT INTO `new_employees` VALUES ('10136035', 'Ratan kumar Urao', '21', '2023-03-01', '1992-10-10', '27', 'Sukra Uraw', 'Aroti Rani', '1', '41', 'Dewanpur', 'Mhisbatan', NULL, '2', '41', '164', 'Dewanpur', 'Mhisbatan', NULL, '2', '41', '164', '6892393510', NULL, '5', '01764176672', NULL, '21', '1', 0, 10, NULL, '2023-03-04 09:14:34', NULL);
INSERT INTO `new_employees` VALUES ('10136036', 'Md. Zakir Hossain', '21', '2023-03-01', '1995-01-07', '27', 'Md. Mozaffar Hosain', 'Mst. Mina Begum', '2', '45', 'Barbaria', 'saiampur', NULL, '2', '45', '146', 'Barbaria', 'saiampur', NULL, '2', '45', '146', '3303232726', NULL, '7', '01705080547', NULL, '21', '1', 0, 10, NULL, '2023-03-04 09:17:40', NULL);
INSERT INTO `new_employees` VALUES ('10136037', 'Kartik Das', '21', '2023-03-01', '1996-04-06', '27', 'Niranjan Das', 'Renu Bala', '2', '41', 'Bawoichand', 'Hazinagar', NULL, '2', '41', '166', 'Bawoichand', 'Hazinagar', NULL, '2', '41', '166', NULL, '1502820283', '5', '01791190571', NULL, '25', '1', 0, 10, NULL, '2023-03-04 09:21:05', NULL);
INSERT INTO `new_employees` VALUES ('10136038', 'Md. Jwel Rana', '21', '2023-03-01', '1998-01-08', '27', 'Md. Sekekder Ali', 'Mst. Rozina Begum', '1', '54', 'Mokterpur', 'Mokterpur', NULL, '2', '54', '136', 'Mokterpur', 'Mokterpur', NULL, '2', '54', '136', '1028381489', NULL, '5', '01761090055', NULL, '34', '1', 0, 10, NULL, '2023-03-04 09:24:04', NULL);
INSERT INTO `new_employees` VALUES ('10136039', 'Md. Rakib Hasan', '21', '2023-03-01', '1998-04-03', '27', 'Md. Motiur Rahman', 'Mst. Reabek Begum', '1', '54', 'Rajabarihat', 'Godagari', NULL, '2', '54', '138', 'Rajabarihat', 'Godagari', NULL, '2', '54', '138', '5568619968', NULL, '5', '01787298167', NULL, '12', '1', 0, 10, NULL, '2023-03-04 09:27:06', NULL);
INSERT INTO `new_employees` VALUES ('10136040', 'Md. Sohag Ali', '21', '2023-03-01', '1996-11-03', '27', 'Md.Arej Uddin', 'Mst. Anowara Begum', '1', '54', 'Saibar', 'Kathalbaria', NULL, '2', '54', '137', 'Saibar', 'Kathalbaria', NULL, '2', '54', '137', NULL, '2814906620', '3', '01303716902', NULL, '21', '1', 0, 10, NULL, '2023-03-04 09:29:57', NULL);
INSERT INTO `new_employees` VALUES ('10136041', 'Md.Farhad Ali', '21', '2023-03-01', '1993-12-10', '27', 'Akram Ali', 'Most. Feroza Begum', '1', '45', 'Bansuag', 'Patul', NULL, '2', '54', '147', 'Bansuag', 'Patul', NULL, '2', '54', '147', '6880248783', NULL, '5', '01867702664', NULL, '12', '1', 0, 10, NULL, '2023-03-04 09:33:05', NULL);
INSERT INTO `new_employees` VALUES ('10136042', 'Md. Abu Zahed', '21', '2023-03-01', '1996-07-10', '27', 'Md. Dulal Pk', 'Mst. Shahana Begum', '1', '6', 'Moria', 'Moria', NULL, '2', '6', '126', 'Moria', 'Moria', NULL, '2', '6', '126', NULL, '2394056424', '7', '01735704602', NULL, '21', '1', 0, 10, NULL, '2023-03-04 09:36:11', NULL);
INSERT INTO `new_employees` VALUES ('10136043', 'Md. Masum Babu', '21', '2023-03-01', '1994-12-31', '27', 'Md. Zahangir Alam', 'Mst. Robeda Begum', '1', '41', 'Gundali', 'Karidaha', NULL, '2', '41', '168', 'Gundali', 'Karidaha', NULL, '2', '41', '168', NULL, '2821992134', '5', '01719393131', NULL, '12', '1', 0, 10, NULL, '2023-03-04 09:38:58', NULL);
INSERT INTO `new_employees` VALUES ('10136044', 'Md. Arif Hossain', '21', '2023-03-01', '1995-02-10', '27', 'Md .Setu', 'Mst.Angura Banu', '1', '41', 'Rangmati', 'Napitpur', NULL, '2', '41', '163', 'Rangmati', 'Napitpur', NULL, '2', '41', '163', '8220522869', NULL, '1', '01754011522', NULL, '21', '1', 0, 10, NULL, '2023-03-04 09:41:51', NULL);
INSERT INTO `new_employees` VALUES ('10136045', 'Md Roni Islam', '21', '2023-03-01', '2000-03-05', '27', 'Md. Hasem Ali', 'Mst. Baby Begum', '1', '54', 'Askorpur', 'Sardhah', NULL, '2', '54', '136', 'Askorpur', 'Sardhah', NULL, '2', '54', '136', NULL, '1513022176', '1', '01737495696', NULL, '12', '1', 0, 10, NULL, '2023-03-04 09:44:32', NULL);
INSERT INTO `new_employees` VALUES ('10136046', 'Tanvir Rana', '21', '2023-03-01', '1995-11-10', '27', 'Md. Mahbub Alom', 'Mst. Anowara Begum', '1', '41', 'Kujagari', 'Katkhoir', NULL, '2', '41', '165', 'Kujagari', 'Katkhoir', NULL, '2', '41', '165', NULL, '4635527767', '5', '01303577870', NULL, '12', '1', 0, 10, NULL, '2023-03-04 09:47:18', NULL);
INSERT INTO `new_employees` VALUES ('10136047', 'Md. Ariful Islam', '21', '2023-03-01', '1999-10-12', '27', 'Md. Jamir Ali', 'Mst. Bilkis', '2', '6', 'Aghora', 'Maloncho', NULL, '2', '6', '127', 'Aghora', 'Maloncho', NULL, '2', '6', '127', '3307623722', NULL, '5', '01724301444', NULL, '12', '1', 0, 10, NULL, '2023-03-04 09:49:58', NULL);
INSERT INTO `new_employees` VALUES ('10136048', 'Md.Tariqul Islam', '21', '2023-03-01', '1987-11-25', '27', 'Md. Abdul Jabbar', 'Momotaz Begum', '1', '41', 'Lohachura', 'Raninagar', NULL, '2', '41', '169', 'Lohachura', 'Raninagar', NULL, '2', '41', '169', NULL, '5075032044', '1', '01734162930', NULL, '61', '1', 0, 10, NULL, '2023-03-04 09:53:00', NULL);
INSERT INTO `new_employees` VALUES ('10136049', 'Md. Masum Rana', '21', '2023-03-01', '1997-06-15', 'Select Domain', 'Md.Giyas Uddin', 'Fulbas Bibi', '2', '54', 'Suvodanga', 'Machmoil', NULL, '2', '54', '135', 'Suvodanga', 'Machmoil', NULL, '2', '54', '135', '9155399356', NULL, '7', '01749250571', NULL, '76', '1', 0, 10, NULL, '2023-03-04 09:57:18', NULL);
INSERT INTO `new_employees` VALUES ('10136066', 'Md. Abu Said', '21', '2023-03-05', '1997-02-10', '34', 'Md. Abdus Sattar Howlader', 'Mst. Nahar yasmin', '1', '28', 'Hatbati', 'Batiaghata', NULL, '3', '28', '206', 'Hatbati', 'Batiaghata', NULL, '3', '28', '206', NULL, '3302450659', '5', '01939117075', NULL, '12', '1', 0, 15, NULL, '2023-03-06 03:51:58', NULL);
INSERT INTO `new_employees` VALUES ('10136067', 'Md. Shajon Babu', '21', '2023-03-05', '1994-09-12', '34', 'Md. Suhrawardy', 'Rahana Khutun', '1', '23', 'Ragunat nagor', 'Rogunut nagor', NULL, '3', '23', '175', 'Ragunat nagor', 'Rogunut nagor', NULL, '3', '23', '175', '19944112371000168', NULL, '7', '01747453630', NULL, '12', '1', 0, 15, NULL, '2023-03-06 03:17:00', NULL);
INSERT INTO `new_employees` VALUES ('10136068', 'Sajal Kumar Biswas', '21', '2023-03-05', '1991-10-10', '34', 'Subash Kumar Biswas', 'Kakoli Kumar Biswas', '1', '28', 'Kamarol', 'Patla', NULL, '3', '28', '214', 'Kamarol', 'Patla', NULL, '3', '28', '214', '19914719454000047', NULL, '5', '01946497551', NULL, '42', '1', 0, 15, NULL, '2023-03-06 04:00:44', NULL);
INSERT INTO `new_employees` VALUES ('10136069', 'Anit Kumar Das', '21', '2023-03-05', '1995-08-12', '34', 'Anath Das', 'Sadana Das', '2', '57', 'Khanpur', 'tala', NULL, '3', '57', '185', 'Khanpur', 'tala', NULL, '3', '57', '185', NULL, '6443419640', '5', '01768188469', 'dasanit572@gmail.com', '42', '1', 0, 15, NULL, '2023-03-06 06:30:06', NULL);
INSERT INTO `new_employees` VALUES ('10136070', 'Biswas Md. Ariful Islam', '21', '2023-03-05', '1998-10-29', '34', 'Md. Islam Biswas', 'Panna Begum', '1', '1', 'Rasulpur', 'Rakhilgachi', NULL, '3', '1', 'Select Upazilla', 'Rasulpur', 'Rakhilgachi', NULL, '3', '1', 'Select Upazilla', NULL, '7804137169', '5', '01872215961', NULL, '17', '1', 0, 15, 15, '2023-03-06 06:47:38', '2023-03-06 06:53:15');
INSERT INTO `new_employees` VALUES ('10136071', 'Md. Shamim Molla', '21', '2023-03-05', '2001-07-20', '34', 'Din Islam Molla', 'Lakhi Khatun', '2', '28', 'Terokhada', 'Terokhada', NULL, '3', '28', '214', 'Terokhada', 'Terokhada', NULL, '3', '28', '214', NULL, '7364060389', '5', '01993418465', NULL, '12', '1', 0, 15, NULL, '2023-03-06 07:04:35', NULL);
INSERT INTO `new_employees` VALUES ('10136072', 'Sabuz Sheikh', '21', '2023-03-05', '1999-08-21', '34', 'Islam Sheikh', 'Fatema Begum', '1', '28', 'Barata', 'Barata', NULL, '3', '28', '209', 'Barata', 'Barata', NULL, '3', '28', '209', NULL, '7804289226', '1', '01910525230', NULL, '27', '1', 0, 15, NULL, '2023-03-06 07:09:09', NULL);
INSERT INTO `new_employees` VALUES ('10136073', 'Md.l Atiqur Rahman', '21', '2023-03-05', '1995-10-03', '34', 'Md. Nayeb Ali Mridha', 'Sukjan Nesa', '1', '31', 'Laxmipur', 'Imanpur', NULL, '3', '31', '200', 'Laxmipur', 'Imanpur', NULL, '3', '31', '200', NULL, '7809889731', '7', '01911291387', NULL, '12', '1', 0, 15, NULL, '2023-03-06 07:13:24', NULL);
INSERT INTO `new_employees` VALUES ('10136077', 'Md. Abdus Shahid', '21', '2023-03-05', '1992-11-08', '34', 'Md. Haider Ali Sheikh', 'Firoja Begum', '1', '57', 'Shirasuni', 'Shirasuni', NULL, '3', '57', '185', 'Shirasuni', 'Shirasuni', NULL, '3', '57', '185', NULL, '1946737804', '7', '01675-295851', NULL, '40', '1', 0, 15, 15, '2023-03-06 03:08:51', '2023-03-06 03:40:01');

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice_description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `notice_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 0,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notices
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for payment_details
-- ----------------------------
DROP TABLE IF EXISTS `payment_details`;
CREATE TABLE `payment_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` int NULL DEFAULT NULL,
  `current_paid_amount` double NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_details
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `invoice_id` int NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `paid_status` varchar(51) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paid_amount` double NULL DEFAULT NULL,
  `due_amount` double NULL DEFAULT NULL,
  `total_amount` double NULL DEFAULT NULL,
  `discount_amount` double NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'dashboard.menu', 'web', 'dashboard', '2023-02-18 02:22:24', '2023-02-18 04:36:09');
INSERT INTO `permissions` VALUES (2, 'settings.menu', 'web', 'settings', '2023-02-18 02:28:21', '2023-02-18 02:28:21');
INSERT INTO `permissions` VALUES (4, 'settings.all', 'web', 'settings', '2023-02-18 02:31:17', '2023-02-18 02:31:17');
INSERT INTO `permissions` VALUES (5, 'formformats.menu', 'web', 'form-formats', '2023-02-18 02:31:44', '2023-02-18 04:52:40');
INSERT INTO `permissions` VALUES (6, 'formformats.all', 'web', 'form-formats', '2023-02-18 02:31:52', '2023-02-18 04:52:43');
INSERT INTO `permissions` VALUES (7, 'formformats.add', 'web', 'form-formats', '2023-02-18 02:32:03', '2023-02-18 04:52:46');
INSERT INTO `permissions` VALUES (8, 'formformats.edit', 'web', 'form-formats', '2023-02-18 02:32:14', '2023-02-18 04:52:49');
INSERT INTO `permissions` VALUES (9, 'formformats.delete', 'web', 'form-formats', '2023-02-18 02:32:25', '2023-02-18 04:52:52');
INSERT INTO `permissions` VALUES (10, 'newemployee.all', 'web', 'new-employee', '2023-02-18 02:33:29', '2023-02-18 04:57:34');
INSERT INTO `permissions` VALUES (11, 'newemployee.add', 'web', 'new-employee', '2023-02-18 02:33:38', '2023-02-18 04:57:42');
INSERT INTO `permissions` VALUES (12, 'newemployee.edit', 'web', 'new-employee', '2023-02-18 02:33:47', '2023-02-18 04:52:34');
INSERT INTO `permissions` VALUES (13, 'newemployee.delete', 'web', 'new-employee', '2023-02-18 02:33:57', '2023-02-18 04:52:37');
INSERT INTO `permissions` VALUES (14, 'usermanagement.menu', 'web', 'roles', '2023-02-18 02:34:50', '2023-02-18 05:01:02');
INSERT INTO `permissions` VALUES (15, 'allemployee.module', 'web', 'module', '2023-02-18 04:45:54', '2023-02-18 04:47:25');
INSERT INTO `permissions` VALUES (16, 'newemployee.module', 'web', 'module', '2023-02-18 04:46:15', '2023-02-18 04:46:15');
INSERT INTO `permissions` VALUES (17, 'efile.module', 'web', 'module', '2023-02-18 04:47:44', '2023-02-18 04:47:44');
INSERT INTO `permissions` VALUES (18, 'settings.module', 'web', 'settings', '2023-02-18 04:48:05', '2023-02-19 17:10:50');
INSERT INTO `permissions` VALUES (19, 'usermanagement.module', 'web', 'module', '2023-02-18 04:51:59', '2023-02-18 04:51:59');
INSERT INTO `permissions` VALUES (20, 'sector.module', 'web', 'sector', '2023-02-19 16:29:31', '2023-02-19 16:56:34');
INSERT INTO `permissions` VALUES (21, 'domain.module', 'web', 'domain', '2023-02-19 16:30:02', '2023-02-19 17:11:26');
INSERT INTO `permissions` VALUES (22, 'designation.module', 'web', 'designation', '2023-02-19 16:30:34', '2023-02-19 17:11:39');
INSERT INTO `permissions` VALUES (23, 'division.module', 'web', 'division', '2023-02-19 16:31:02', '2023-02-19 17:11:42');
INSERT INTO `permissions` VALUES (24, 'district.module', 'web', 'district', '2023-02-19 16:31:48', '2023-02-19 17:11:47');
INSERT INTO `permissions` VALUES (25, 'upazilla.module', 'web', 'upazilla', '2023-02-19 16:32:06', '2023-02-19 17:11:52');
INSERT INTO `permissions` VALUES (26, 'bloodgroup.module', 'web', 'bloodgroup', '2023-02-19 16:32:29', '2023-02-19 17:11:56');
INSERT INTO `permissions` VALUES (27, 'department.module', 'web', 'department', '2023-02-19 16:32:46', '2023-02-19 17:12:06');
INSERT INTO `permissions` VALUES (28, 'educationalqualification.module', 'web', 'eduqualification', '2023-02-19 16:33:06', '2023-02-19 17:13:24');
INSERT INTO `permissions` VALUES (29, 'employeetype.module', 'web', 'employeetype', '2023-02-19 16:33:23', '2023-02-19 17:13:32');
INSERT INTO `permissions` VALUES (30, 'gender.module', 'web', 'gender', '2023-02-19 16:33:42', '2023-02-19 17:25:00');
INSERT INTO `permissions` VALUES (31, 'jobstatus.module', 'web', 'jobstatus', '2023-02-19 16:33:57', '2023-02-19 17:25:02');
INSERT INTO `permissions` VALUES (32, 'maritalstatus.module', 'web', 'maritalstatus', '2023-02-19 16:34:12', '2023-02-19 17:22:50');
INSERT INTO `permissions` VALUES (33, 'religion.module', 'web', 'religion', '2023-02-19 16:34:31', '2023-02-19 17:22:46');
INSERT INTO `permissions` VALUES (34, 'zone.module', 'web', 'zone', '2023-02-19 16:34:47', '2023-02-19 17:22:42');
INSERT INTO `permissions` VALUES (35, 'area.module', 'web', 'area', '2023-02-19 16:49:12', '2023-02-19 17:22:36');
INSERT INTO `permissions` VALUES (36, 'branch.module', 'web', 'branch', '2023-02-19 16:49:26', '2023-02-19 17:22:31');
INSERT INTO `permissions` VALUES (37, 'sector.all', 'web', 'sector', '2023-02-19 16:52:14', '2023-02-19 16:52:14');
INSERT INTO `permissions` VALUES (38, 'sector.add', 'web', 'sector', '2023-02-19 16:53:52', '2023-02-19 16:53:52');
INSERT INTO `permissions` VALUES (39, 'sector.edit', 'web', 'sector', '2023-02-19 16:53:59', '2023-02-19 16:53:59');
INSERT INTO `permissions` VALUES (40, 'sector.delete', 'web', 'sector', '2023-02-19 16:54:08', '2023-02-19 16:54:08');
INSERT INTO `permissions` VALUES (41, 'domain.all', 'web', 'domain', '2023-02-19 17:30:29', '2023-02-19 17:30:29');
INSERT INTO `permissions` VALUES (42, 'domain.add', 'web', 'domain', '2023-02-19 17:30:37', '2023-02-19 17:30:37');
INSERT INTO `permissions` VALUES (43, 'domain.edit', 'web', 'domain', '2023-02-19 17:30:46', '2023-02-19 17:30:46');
INSERT INTO `permissions` VALUES (44, 'domain.delete', 'web', 'domain', '2023-02-19 17:30:53', '2023-02-19 17:30:53');
INSERT INTO `permissions` VALUES (45, 'designation.all', 'web', 'designation', '2023-02-19 17:31:13', '2023-02-19 17:31:13');
INSERT INTO `permissions` VALUES (46, 'designation.add', 'web', 'designation', '2023-02-19 17:31:22', '2023-02-19 17:31:22');
INSERT INTO `permissions` VALUES (47, 'designation.edit', 'web', 'designation', '2023-02-19 17:31:31', '2023-02-19 17:31:31');
INSERT INTO `permissions` VALUES (48, 'designation.delete', 'web', 'designation', '2023-02-19 17:31:40', '2023-02-19 17:31:40');
INSERT INTO `permissions` VALUES (49, 'division.all', 'web', 'division', '2023-02-19 17:32:29', '2023-02-19 17:32:29');
INSERT INTO `permissions` VALUES (50, 'division.add', 'web', 'division', '2023-02-19 17:32:38', '2023-02-19 17:32:38');
INSERT INTO `permissions` VALUES (51, 'division.edit', 'web', 'division', '2023-02-19 17:32:46', '2023-02-19 17:32:46');
INSERT INTO `permissions` VALUES (52, 'division.delete', 'web', 'division', '2023-02-19 17:32:56', '2023-02-19 17:32:56');
INSERT INTO `permissions` VALUES (53, 'district.all', 'web', 'district', '2023-02-19 17:33:05', '2023-02-19 17:33:05');
INSERT INTO `permissions` VALUES (54, 'district.add', 'web', 'district', '2023-02-19 17:33:13', '2023-02-19 17:33:13');
INSERT INTO `permissions` VALUES (55, 'district.edit', 'web', 'district', '2023-02-19 17:33:22', '2023-02-19 17:33:22');
INSERT INTO `permissions` VALUES (56, 'district.delete', 'web', 'district', '2023-02-19 17:33:32', '2023-02-19 17:33:32');
INSERT INTO `permissions` VALUES (57, 'upazilla.all', 'web', 'upazilla', '2023-02-19 17:33:52', '2023-02-19 17:33:52');
INSERT INTO `permissions` VALUES (58, 'upazilla.add', 'web', 'upazilla', '2023-02-19 17:33:59', '2023-02-19 17:33:59');
INSERT INTO `permissions` VALUES (59, 'upazilla.edit', 'web', 'upazilla', '2023-02-19 17:34:06', '2023-02-19 17:34:06');
INSERT INTO `permissions` VALUES (60, 'upazilla.delete', 'web', 'upazilla', '2023-02-19 17:34:13', '2023-02-19 17:34:13');
INSERT INTO `permissions` VALUES (61, 'bloodgroup.all', 'web', 'bloodgroup', '2023-02-19 17:34:43', '2023-02-19 17:34:43');
INSERT INTO `permissions` VALUES (62, 'bloodgroup.add', 'web', 'bloodgroup', '2023-02-19 17:34:50', '2023-02-19 17:34:50');
INSERT INTO `permissions` VALUES (63, 'bloodgroup.edit', 'web', 'bloodgroup', '2023-02-19 17:34:57', '2023-02-19 17:34:57');
INSERT INTO `permissions` VALUES (64, 'bloodgroup.delete', 'web', 'bloodgroup', '2023-02-19 17:35:04', '2023-02-19 17:35:04');
INSERT INTO `permissions` VALUES (65, 'department.all', 'web', 'department', '2023-02-19 17:36:43', '2023-02-19 17:36:43');
INSERT INTO `permissions` VALUES (66, 'department.add', 'web', 'department', '2023-02-19 17:36:52', '2023-02-19 17:36:52');
INSERT INTO `permissions` VALUES (67, 'department.edit', 'web', 'department', '2023-02-19 17:37:01', '2023-02-19 17:37:01');
INSERT INTO `permissions` VALUES (68, 'department.delete', 'web', 'department', '2023-02-19 17:37:09', '2023-02-19 17:37:09');
INSERT INTO `permissions` VALUES (69, 'educationalqualification.all', 'web', 'eduqualification', '2023-02-19 17:37:57', '2023-02-19 17:37:57');
INSERT INTO `permissions` VALUES (70, 'educationalqualification.add', 'web', 'eduqualification', '2023-02-19 17:38:05', '2023-02-19 17:38:05');
INSERT INTO `permissions` VALUES (71, 'educationalqualification.edit', 'web', 'eduqualification', '2023-02-19 17:38:13', '2023-02-19 17:38:13');
INSERT INTO `permissions` VALUES (72, 'educationalqualification.delete', 'web', 'eduqualification', '2023-02-19 17:38:22', '2023-02-19 17:38:22');
INSERT INTO `permissions` VALUES (73, 'employeetype.all', 'web', 'employeetype', '2023-02-19 17:39:18', '2023-02-19 17:39:18');
INSERT INTO `permissions` VALUES (74, 'employeetype.add', 'web', 'employeetype', '2023-02-19 17:39:30', '2023-02-19 17:39:30');
INSERT INTO `permissions` VALUES (75, 'employeetype.edit', 'web', 'employeetype', '2023-02-19 17:39:39', '2023-02-19 17:39:39');
INSERT INTO `permissions` VALUES (76, 'employeetype.delete', 'web', 'employeetype', '2023-02-19 17:39:45', '2023-02-19 17:39:45');
INSERT INTO `permissions` VALUES (77, 'gender.all', 'web', 'gender', '2023-02-19 17:39:53', '2023-02-19 17:39:53');
INSERT INTO `permissions` VALUES (78, 'gender.add', 'web', 'gender', '2023-02-19 17:40:02', '2023-02-19 17:40:02');
INSERT INTO `permissions` VALUES (79, 'gender.edit', 'web', 'gender', '2023-02-19 17:40:11', '2023-02-19 17:40:11');
INSERT INTO `permissions` VALUES (80, 'gender.delete', 'web', 'gender', '2023-02-19 17:40:17', '2023-02-19 17:40:17');
INSERT INTO `permissions` VALUES (81, 'jobstatus.all', 'web', 'jobstatus', '2023-02-19 17:40:25', '2023-02-19 17:40:25');
INSERT INTO `permissions` VALUES (82, 'jobstatus.add', 'web', 'jobstatus', '2023-02-19 17:40:35', '2023-02-19 17:40:35');
INSERT INTO `permissions` VALUES (83, 'jobstatus.edit', 'web', 'jobstatus', '2023-02-19 17:40:43', '2023-02-19 17:40:43');
INSERT INTO `permissions` VALUES (84, 'jobstatus.delete', 'web', 'jobstatus', '2023-02-19 17:40:50', '2023-02-19 17:40:50');
INSERT INTO `permissions` VALUES (85, 'maritalstatus.all', 'web', 'maritalstatus', '2023-02-19 17:41:25', '2023-02-19 17:41:25');
INSERT INTO `permissions` VALUES (86, 'maritalstatus.add', 'web', 'maritalstatus', '2023-02-19 17:41:32', '2023-02-19 17:41:32');
INSERT INTO `permissions` VALUES (87, 'maritalstatus.edit', 'web', 'maritalstatus', '2023-02-19 17:41:41', '2023-02-19 17:41:41');
INSERT INTO `permissions` VALUES (88, 'maritalstatus.delete', 'web', 'maritalstatus', '2023-02-19 17:41:48', '2023-02-19 17:41:48');
INSERT INTO `permissions` VALUES (89, 'religion.all', 'web', 'religion', '2023-02-19 17:42:09', '2023-02-19 17:42:09');
INSERT INTO `permissions` VALUES (90, 'religion.add', 'web', 'religion', '2023-02-19 17:42:17', '2023-02-19 17:42:17');
INSERT INTO `permissions` VALUES (91, 'religion.edit', 'web', 'religion', '2023-02-19 17:42:25', '2023-02-19 17:42:25');
INSERT INTO `permissions` VALUES (92, 'religion.delete', 'web', 'religion', '2023-02-19 17:42:34', '2023-02-19 17:42:34');
INSERT INTO `permissions` VALUES (93, 'zone.all', 'web', 'zone', '2023-02-19 17:42:43', '2023-02-19 17:42:43');
INSERT INTO `permissions` VALUES (94, 'zone.add', 'web', 'zone', '2023-02-19 17:42:49', '2023-02-19 17:42:49');
INSERT INTO `permissions` VALUES (95, 'zone.edit', 'web', 'zone', '2023-02-19 17:42:57', '2023-02-19 17:42:57');
INSERT INTO `permissions` VALUES (96, 'zone.delete', 'web', 'zone', '2023-02-19 17:43:06', '2023-02-19 17:43:06');
INSERT INTO `permissions` VALUES (97, 'area.all', 'web', 'area', '2023-02-19 17:43:34', '2023-02-19 17:43:34');
INSERT INTO `permissions` VALUES (98, 'area.add', 'web', 'area', '2023-02-19 17:43:41', '2023-02-19 17:43:41');
INSERT INTO `permissions` VALUES (99, 'area.edit', 'web', 'area', '2023-02-19 17:43:48', '2023-02-19 17:43:48');
INSERT INTO `permissions` VALUES (100, 'area.delete', 'web', 'area', '2023-02-19 17:43:56', '2023-02-19 17:43:56');
INSERT INTO `permissions` VALUES (101, 'branch.all', 'web', 'branch', '2023-02-19 17:44:04', '2023-02-19 17:44:04');
INSERT INTO `permissions` VALUES (102, 'branch.add', 'web', 'branch', '2023-02-19 17:44:12', '2023-02-19 17:44:12');
INSERT INTO `permissions` VALUES (103, 'branch.edit', 'web', 'branch', '2023-02-19 17:44:19', '2023-02-19 17:44:19');
INSERT INTO `permissions` VALUES (104, 'branch.delete', 'web', 'branch', '2023-02-19 17:44:27', '2023-02-19 17:44:27');
INSERT INTO `permissions` VALUES (105, 'newemployee.show', 'web', 'new-employee', '2023-02-20 01:47:06', '2023-02-20 01:47:06');
INSERT INTO `permissions` VALUES (106, 'ewemployee.export', 'web', 'new-employee', '2023-02-22 01:53:29', '2023-02-22 01:53:29');
INSERT INTO `permissions` VALUES (107, 'employee.all', 'web', 'all-employee', '2023-02-22 19:23:32', '2023-02-22 19:28:19');
INSERT INTO `permissions` VALUES (108, 'employee.add', 'web', 'all-employee', '2023-02-22 19:28:32', '2023-02-22 19:28:32');
INSERT INTO `permissions` VALUES (109, 'employee.edit', 'web', 'all-employee', '2023-02-22 19:28:42', '2023-02-22 19:28:42');
INSERT INTO `permissions` VALUES (110, 'employee.show', 'web', 'all-employee', '2023-02-22 19:28:53', '2023-02-22 19:28:53');
INSERT INTO `permissions` VALUES (111, 'employee.delete', 'web', 'all-employee', '2023-02-22 19:29:04', '2023-02-22 19:29:04');
INSERT INTO `permissions` VALUES (112, 'formformats.show', 'web', 'form-formats', '2023-02-25 16:50:45', '2023-02-25 16:50:45');
INSERT INTO `permissions` VALUES (113, 'staffprofile.menu', 'web', 'dashboard', '2023-02-27 02:14:11', '2023-02-27 02:14:11');
INSERT INTO `permissions` VALUES (114, 'notice.menu', 'web', 'dashboard', '2023-02-28 10:32:24', '2023-02-28 10:32:24');
INSERT INTO `permissions` VALUES (115, 'notice.all', 'web', 'notice', '2023-03-01 08:32:32', '2023-03-01 08:32:32');
INSERT INTO `permissions` VALUES (116, 'notice.add', 'web', 'notice', '2023-03-01 08:37:27', '2023-03-01 08:37:27');
INSERT INTO `permissions` VALUES (117, 'notice.show', 'web', 'notice', '2023-03-01 08:37:50', '2023-03-01 08:37:50');
INSERT INTO `permissions` VALUES (118, 'notice.edit', 'web', 'notice', '2023-03-01 08:38:11', '2023-03-01 08:38:11');
INSERT INTO `permissions` VALUES (119, 'notice.delete', 'web', 'notice', '2023-03-01 08:38:20', '2023-03-01 08:38:20');
INSERT INTO `permissions` VALUES (120, 'notice.module', 'web', 'notice', '2023-03-02 15:48:13', '2023-03-02 15:48:13');
INSERT INTO `permissions` VALUES (121, 'report.module', 'web', 'report', '2023-03-02 15:48:25', '2023-03-02 15:48:25');
INSERT INTO `permissions` VALUES (122, 'report.all', 'web', 'report', '2023-03-02 15:48:42', '2023-03-02 15:48:42');
INSERT INTO `permissions` VALUES (123, 'report.show', 'web', 'report', '2023-03-02 15:48:52', '2023-03-02 15:48:52');
INSERT INTO `permissions` VALUES (124, 'report.add', 'web', 'report', '2023-03-02 15:49:01', '2023-03-02 15:49:01');
INSERT INTO `permissions` VALUES (125, 'report.edit', 'web', 'report', '2023-03-02 15:49:11', '2023-03-02 15:49:11');
INSERT INTO `permissions` VALUES (126, 'report.delete', 'web', 'report', '2023-03-02 15:49:20', '2023-03-02 15:49:20');
INSERT INTO `permissions` VALUES (127, 'report.menu', 'web', 'report', '2023-03-02 15:49:31', '2023-03-02 15:49:31');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `abilities` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for purchases
-- ----------------------------
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE `purchases`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_id` int NOT NULL,
  `purchase_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchases
-- ----------------------------

-- ----------------------------
-- Table structure for religions
-- ----------------------------
DROP TABLE IF EXISTS `religions`;
CREATE TABLE `religions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of religions
-- ----------------------------
INSERT INTO `religions` VALUES (1, 'Islam', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (2, 'Bahai', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (3, 'Buddhism', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (4, 'Christianity', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (5, 'Confucianism', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (6, 'Druze', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (7, 'Hinduism', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (8, 'Jainism', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (9, 'Judaism', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (10, 'Shinto', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (11, 'Sikhism', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (12, 'Taoism', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (13, 'Zoroastrianism', 1, NULL, NULL, NULL, NULL);
INSERT INTO `religions` VALUES (14, 'Others', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `report_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `report_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `report_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `report_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 0,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reports
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (1, 3);
INSERT INTO `role_has_permissions` VALUES (1, 5);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (2, 2);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (4, 2);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (5, 2);
INSERT INTO `role_has_permissions` VALUES (5, 3);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (6, 2);
INSERT INTO `role_has_permissions` VALUES (6, 3);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (7, 2);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (8, 2);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (9, 2);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (10, 2);
INSERT INTO `role_has_permissions` VALUES (10, 3);
INSERT INTO `role_has_permissions` VALUES (10, 5);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (11, 2);
INSERT INTO `role_has_permissions` VALUES (11, 3);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (12, 2);
INSERT INTO `role_has_permissions` VALUES (12, 3);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (13, 2);
INSERT INTO `role_has_permissions` VALUES (14, 1);
INSERT INTO `role_has_permissions` VALUES (15, 1);
INSERT INTO `role_has_permissions` VALUES (15, 3);
INSERT INTO `role_has_permissions` VALUES (15, 5);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (16, 3);
INSERT INTO `role_has_permissions` VALUES (16, 5);
INSERT INTO `role_has_permissions` VALUES (17, 1);
INSERT INTO `role_has_permissions` VALUES (17, 5);
INSERT INTO `role_has_permissions` VALUES (18, 1);
INSERT INTO `role_has_permissions` VALUES (19, 1);
INSERT INTO `role_has_permissions` VALUES (20, 1);
INSERT INTO `role_has_permissions` VALUES (21, 1);
INSERT INTO `role_has_permissions` VALUES (22, 1);
INSERT INTO `role_has_permissions` VALUES (23, 1);
INSERT INTO `role_has_permissions` VALUES (24, 1);
INSERT INTO `role_has_permissions` VALUES (25, 1);
INSERT INTO `role_has_permissions` VALUES (26, 1);
INSERT INTO `role_has_permissions` VALUES (27, 1);
INSERT INTO `role_has_permissions` VALUES (28, 1);
INSERT INTO `role_has_permissions` VALUES (29, 1);
INSERT INTO `role_has_permissions` VALUES (30, 1);
INSERT INTO `role_has_permissions` VALUES (31, 1);
INSERT INTO `role_has_permissions` VALUES (32, 1);
INSERT INTO `role_has_permissions` VALUES (33, 1);
INSERT INTO `role_has_permissions` VALUES (34, 1);
INSERT INTO `role_has_permissions` VALUES (35, 1);
INSERT INTO `role_has_permissions` VALUES (36, 1);
INSERT INTO `role_has_permissions` VALUES (37, 1);
INSERT INTO `role_has_permissions` VALUES (38, 1);
INSERT INTO `role_has_permissions` VALUES (39, 1);
INSERT INTO `role_has_permissions` VALUES (40, 1);
INSERT INTO `role_has_permissions` VALUES (41, 1);
INSERT INTO `role_has_permissions` VALUES (42, 1);
INSERT INTO `role_has_permissions` VALUES (43, 1);
INSERT INTO `role_has_permissions` VALUES (44, 1);
INSERT INTO `role_has_permissions` VALUES (45, 1);
INSERT INTO `role_has_permissions` VALUES (46, 1);
INSERT INTO `role_has_permissions` VALUES (47, 1);
INSERT INTO `role_has_permissions` VALUES (48, 1);
INSERT INTO `role_has_permissions` VALUES (49, 1);
INSERT INTO `role_has_permissions` VALUES (50, 1);
INSERT INTO `role_has_permissions` VALUES (51, 1);
INSERT INTO `role_has_permissions` VALUES (52, 1);
INSERT INTO `role_has_permissions` VALUES (53, 1);
INSERT INTO `role_has_permissions` VALUES (54, 1);
INSERT INTO `role_has_permissions` VALUES (55, 1);
INSERT INTO `role_has_permissions` VALUES (56, 1);
INSERT INTO `role_has_permissions` VALUES (57, 1);
INSERT INTO `role_has_permissions` VALUES (58, 1);
INSERT INTO `role_has_permissions` VALUES (59, 1);
INSERT INTO `role_has_permissions` VALUES (60, 1);
INSERT INTO `role_has_permissions` VALUES (61, 1);
INSERT INTO `role_has_permissions` VALUES (62, 1);
INSERT INTO `role_has_permissions` VALUES (63, 1);
INSERT INTO `role_has_permissions` VALUES (64, 1);
INSERT INTO `role_has_permissions` VALUES (65, 1);
INSERT INTO `role_has_permissions` VALUES (66, 1);
INSERT INTO `role_has_permissions` VALUES (67, 1);
INSERT INTO `role_has_permissions` VALUES (68, 1);
INSERT INTO `role_has_permissions` VALUES (69, 1);
INSERT INTO `role_has_permissions` VALUES (70, 1);
INSERT INTO `role_has_permissions` VALUES (71, 1);
INSERT INTO `role_has_permissions` VALUES (72, 1);
INSERT INTO `role_has_permissions` VALUES (73, 1);
INSERT INTO `role_has_permissions` VALUES (74, 1);
INSERT INTO `role_has_permissions` VALUES (75, 1);
INSERT INTO `role_has_permissions` VALUES (76, 1);
INSERT INTO `role_has_permissions` VALUES (77, 1);
INSERT INTO `role_has_permissions` VALUES (78, 1);
INSERT INTO `role_has_permissions` VALUES (79, 1);
INSERT INTO `role_has_permissions` VALUES (80, 1);
INSERT INTO `role_has_permissions` VALUES (81, 1);
INSERT INTO `role_has_permissions` VALUES (82, 1);
INSERT INTO `role_has_permissions` VALUES (83, 1);
INSERT INTO `role_has_permissions` VALUES (84, 1);
INSERT INTO `role_has_permissions` VALUES (85, 1);
INSERT INTO `role_has_permissions` VALUES (86, 1);
INSERT INTO `role_has_permissions` VALUES (87, 1);
INSERT INTO `role_has_permissions` VALUES (88, 1);
INSERT INTO `role_has_permissions` VALUES (89, 1);
INSERT INTO `role_has_permissions` VALUES (90, 1);
INSERT INTO `role_has_permissions` VALUES (91, 1);
INSERT INTO `role_has_permissions` VALUES (92, 1);
INSERT INTO `role_has_permissions` VALUES (93, 1);
INSERT INTO `role_has_permissions` VALUES (94, 1);
INSERT INTO `role_has_permissions` VALUES (95, 1);
INSERT INTO `role_has_permissions` VALUES (96, 1);
INSERT INTO `role_has_permissions` VALUES (97, 1);
INSERT INTO `role_has_permissions` VALUES (98, 1);
INSERT INTO `role_has_permissions` VALUES (99, 1);
INSERT INTO `role_has_permissions` VALUES (100, 1);
INSERT INTO `role_has_permissions` VALUES (101, 1);
INSERT INTO `role_has_permissions` VALUES (102, 1);
INSERT INTO `role_has_permissions` VALUES (103, 1);
INSERT INTO `role_has_permissions` VALUES (104, 1);
INSERT INTO `role_has_permissions` VALUES (105, 1);
INSERT INTO `role_has_permissions` VALUES (105, 3);
INSERT INTO `role_has_permissions` VALUES (105, 5);
INSERT INTO `role_has_permissions` VALUES (106, 1);
INSERT INTO `role_has_permissions` VALUES (107, 1);
INSERT INTO `role_has_permissions` VALUES (107, 3);
INSERT INTO `role_has_permissions` VALUES (107, 5);
INSERT INTO `role_has_permissions` VALUES (108, 1);
INSERT INTO `role_has_permissions` VALUES (108, 3);
INSERT INTO `role_has_permissions` VALUES (109, 1);
INSERT INTO `role_has_permissions` VALUES (109, 3);
INSERT INTO `role_has_permissions` VALUES (110, 1);
INSERT INTO `role_has_permissions` VALUES (110, 3);
INSERT INTO `role_has_permissions` VALUES (110, 5);
INSERT INTO `role_has_permissions` VALUES (111, 1);
INSERT INTO `role_has_permissions` VALUES (112, 1);
INSERT INTO `role_has_permissions` VALUES (112, 3);
INSERT INTO `role_has_permissions` VALUES (113, 1);
INSERT INTO `role_has_permissions` VALUES (113, 3);
INSERT INTO `role_has_permissions` VALUES (113, 5);
INSERT INTO `role_has_permissions` VALUES (114, 1);
INSERT INTO `role_has_permissions` VALUES (114, 5);
INSERT INTO `role_has_permissions` VALUES (115, 1);
INSERT INTO `role_has_permissions` VALUES (115, 5);
INSERT INTO `role_has_permissions` VALUES (116, 1);
INSERT INTO `role_has_permissions` VALUES (116, 5);
INSERT INTO `role_has_permissions` VALUES (117, 1);
INSERT INTO `role_has_permissions` VALUES (117, 5);
INSERT INTO `role_has_permissions` VALUES (118, 1);
INSERT INTO `role_has_permissions` VALUES (118, 5);
INSERT INTO `role_has_permissions` VALUES (119, 1);
INSERT INTO `role_has_permissions` VALUES (120, 1);
INSERT INTO `role_has_permissions` VALUES (120, 5);
INSERT INTO `role_has_permissions` VALUES (121, 1);
INSERT INTO `role_has_permissions` VALUES (121, 5);
INSERT INTO `role_has_permissions` VALUES (122, 1);
INSERT INTO `role_has_permissions` VALUES (122, 5);
INSERT INTO `role_has_permissions` VALUES (123, 1);
INSERT INTO `role_has_permissions` VALUES (123, 5);
INSERT INTO `role_has_permissions` VALUES (124, 1);
INSERT INTO `role_has_permissions` VALUES (124, 5);
INSERT INTO `role_has_permissions` VALUES (125, 1);
INSERT INTO `role_has_permissions` VALUES (125, 5);
INSERT INTO `role_has_permissions` VALUES (126, 1);
INSERT INTO `role_has_permissions` VALUES (127, 1);
INSERT INTO `role_has_permissions` VALUES (127, 5);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Super Admin', 'web', '2023-02-18 02:36:45', '2023-02-18 02:36:45');
INSERT INTO `roles` VALUES (2, 'Admin', 'web', '2023-02-18 02:41:07', '2023-02-18 02:41:07');
INSERT INTO `roles` VALUES (3, 'HRO', 'web', '2023-02-18 02:41:15', '2023-02-18 02:41:15');
INSERT INTO `roles` VALUES (4, 'User', 'web', '2023-02-18 20:02:17', '2023-02-18 20:02:17');
INSERT INTO `roles` VALUES (5, 'Central User', 'web', '2023-03-02 16:52:33', '2023-03-02 16:52:33');

-- ----------------------------
-- Table structure for sectors
-- ----------------------------
DROP TABLE IF EXISTS `sectors`;
CREATE TABLE `sectors`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sectors
-- ----------------------------
INSERT INTO `sectors` VALUES (1, 'HEM Grand Sector', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sectors` VALUES (2, 'Grand Health Sector', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sectors` VALUES (3, 'Others', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sectors` VALUES (4, 'N/A', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sectors` VALUES (5, 'N/I', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sectors` VALUES (6, 'Program Sector', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sectors` VALUES (7, 'Trade Business Sector', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sectors` VALUES (8, 'Training & Education Sector', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sectors` VALUES (9, 'ICT & Environment Sector', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for setups
-- ----------------------------
DROP TABLE IF EXISTS `setups`;
CREATE TABLE `setups`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setups
-- ----------------------------

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of units
-- ----------------------------

-- ----------------------------
-- Table structure for upazillas
-- ----------------------------
DROP TABLE IF EXISTS `upazillas`;
CREATE TABLE `upazillas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` int NOT NULL,
  `district_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 493 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upazillas
-- ----------------------------
INSERT INTO `upazillas` VALUES (1, 1, 13, 'Barura', 'বরুড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (2, 1, 13, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (3, 1, 13, 'Burichang', 'বুড়িচং', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (4, 1, 13, 'Chandina', 'চান্দিনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (5, 1, 13, 'Chauddagram', 'চৌদ্দগ্রাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (6, 1, 13, 'Cumillasadar', 'কুমিল্লা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (7, 1, 13, 'Daudkandi', 'দাউদকান্দি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (8, 1, 13, 'Debidwar', 'দেবিদ্বার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (9, 1, 13, 'Homna', 'হোমনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (10, 1, 13, 'Laksam', 'লাকসাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (11, 1, 13, 'Lalmai', 'লালমাই', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (12, 1, 13, 'Meghna', 'মেঘনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (13, 1, 13, 'Monohargonj', 'মনোহরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (14, 1, 13, 'Muradnagar', 'মুরাদনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (15, 1, 13, 'Nangalkot', 'নাঙ্গলকোট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (16, 1, 13, 'Sadarsouth', 'সদরদক্ষিণ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (17, 1, 13, 'Titas', 'তিতাস', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (18, 1, 17, 'Chhagalnaiya', 'ছাগলনাইয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (19, 1, 17, 'Daganbhuiyan', 'দাগনভূঞা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (20, 1, 17, 'Feni Sadar', 'ফেনী সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (21, 1, 17, 'Fulgazi', 'ফুলগাজী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (22, 1, 17, 'Parshuram', 'পরশুরাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (23, 1, 17, 'Sonagazi', 'সোনাগাজী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (24, 1, 7, 'Akhaura', 'আখাউড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (25, 1, 7, 'Ashuganj', 'আশুগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (26, 1, 7, 'Bancharampur', 'বাঞ্ছারামপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (27, 1, 7, 'Bijoynagar', 'বিজয়নগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (28, 1, 7, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (29, 1, 7, 'Kasba', 'কসবা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (30, 1, 7, 'Nabinagar', 'নবীনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (31, 1, 7, 'Nasirnagar', 'নাসিরনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (32, 1, 7, 'Sarail', 'সরাইল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (33, 1, 55, 'Baghaichari', 'বাঘাইছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (34, 1, 55, 'Barkal', 'বরকল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (35, 1, 55, 'Belaichari', 'বিলাইছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (36, 1, 55, 'Juraichari', 'জুরাছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (37, 1, 55, 'Kaptai', 'কাপ্তাই', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (38, 1, 55, 'Kawkhali', 'কাউখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (39, 1, 55, 'Langadu', 'লংগদু', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (40, 1, 55, 'Naniarchar', 'নানিয়ারচর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (41, 1, 55, 'Rajasthali', 'রাজস্থলী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (42, 1, 55, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (43, 1, 48, 'Begumganj', 'বেগমগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (44, 1, 48, 'Chatkhil', 'চাটখিল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (45, 1, 48, 'Companiganj', 'কোম্পানীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (46, 1, 48, 'Hatia', 'হাতিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (47, 1, 48, 'Kabirhat', 'কবিরহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (48, 1, 48, 'Noakhali Sadar', 'নোয়াখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (49, 1, 48, 'Senbug', 'সেনবাগ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (50, 1, 48, 'Sonaimuri', 'সোনাইমুড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (51, 1, 48, 'Subarnachar', 'সুবর্ণচর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (52, 1, 8, 'Chandpur Sadar', 'চাঁদপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (53, 1, 8, 'Faridgonj', 'ফরিদগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (54, 1, 8, 'Haimchar', 'হাইমচর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (55, 1, 8, 'Hajiganj', 'হাজীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (56, 1, 8, 'Kachua', 'কচুয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (57, 1, 8, 'Matlabnorth', 'মতলব', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (58, 1, 8, 'Matlabsouth', 'মতলব', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (59, 1, 8, 'Shahrasti', 'শাহরাস্তি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (60, 1, 32, 'Kamalnagar', 'কমলনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (61, 1, 32, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (62, 1, 32, 'Raipur', 'রায়পুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (63, 1, 32, 'Ramganj', 'রামগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (64, 1, 32, 'Ramgati', 'রামগতি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (65, 1, 10, 'Anwara', 'আনোয়ারা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (66, 1, 10, 'Banshkhali', 'বাঁশখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (67, 1, 10, 'Boalkhali', 'বোয়ালখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (68, 1, 10, 'Chandanaish', 'চন্দনাইশ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (69, 1, 10, 'Fatikchhari', 'ফটিকছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (70, 1, 10, 'Hathazari', 'হাটহাজারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (71, 1, 10, 'Karnafuli', 'কর্ণফুলী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (72, 1, 10, 'Lohagara', 'লোহাগাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (73, 1, 10, 'Mirsharai', 'মীরসরাই', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (74, 1, 10, 'Patiya', 'পটিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (75, 1, 10, 'Rangunia', 'রাঙ্গুনিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (76, 1, 10, 'Raozan', 'রাউজান', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (77, 1, 10, 'Sandwip', 'সন্দ্বীপ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (78, 1, 10, 'Satkania', 'সাতকানিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (79, 1, 10, 'Sitakunda', 'সীতাকুন্ড', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (80, 1, 12, 'Chakaria', 'চকরিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (81, 1, 12, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (82, 1, 12, 'Kutubdia', 'কুতুবদিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (83, 1, 12, 'Moheshkhali', 'মহেশখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (84, 1, 12, 'Pekua', 'পেকুয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (85, 1, 12, 'Ramu', 'রামু', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (86, 1, 12, 'Teknaf', 'টেকনাফ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (87, 1, 12, 'Ukhiya', 'উখিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (88, 1, 27, 'Dighinala', 'দিঘীনালা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (89, 1, 27, 'Guimara', 'গুইমারা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (90, 1, 27, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (91, 1, 27, 'Laxmichhari', 'লক্ষীছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (92, 1, 27, 'Manikchari', 'মানিকছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (93, 1, 27, 'Matiranga', 'মাটিরাঙ্গা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (94, 1, 27, 'Mohalchari', 'মহালছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (95, 1, 27, 'Panchari', 'পানছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (96, 1, 27, 'Ramgarh', 'রামগড়', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (97, 1, 2, 'Alikadam', 'আলীকদম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (98, 1, 2, 'Bandarban Sadar', 'বান্দরবান সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (99, 1, 2, 'Lama', 'লামা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (100, 1, 2, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (101, 1, 2, 'Rowangchhari', 'রোয়াংছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (102, 1, 2, 'Ruma', 'রুমা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (103, 1, 2, 'Thanchi', 'থানচি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (104, 2, 60, 'Belkuchi', 'বেলকুচি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (105, 2, 60, 'Chauhali', 'চৌহালি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (106, 2, 60, 'Kamarkhand', 'কামারখন্দ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (107, 2, 60, 'Kazipur', 'কাজীপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (108, 2, 60, 'Raigonj', 'রায়গঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (109, 2, 60, 'Shahjadpur', 'শাহজাদপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (110, 2, 60, 'Sirajganjsadar', 'সিরাজগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (111, 2, 60, 'Tarash', 'তাড়াশ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (112, 2, 60, 'Ullapara', 'উল্লাপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (113, 2, 49, 'Atghoria', 'আটঘরিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (114, 2, 49, 'Bera', 'বেড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (115, 2, 49, 'Bhangura', 'ভাঙ্গুড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (116, 2, 49, 'Chatmohar', 'চাটমোহর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (117, 2, 49, 'Faridpur', 'ফরিদপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (118, 2, 49, 'Ishurdi', 'ঈশ্বরদী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (119, 2, 49, 'Pabnasadar', 'পাবনা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (120, 2, 49, 'Santhia', 'সাঁথিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (121, 2, 49, 'Sujanagar', 'সুজানগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (122, 2, 6, 'Adamdighi', 'আদমদিঘি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (123, 2, 6, 'Bogura Sadar', 'বগুড়া সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (124, 2, 6, 'Dhunot', 'ধুনট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (125, 2, 6, 'Dupchanchia', 'দুপচাচিঁয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (126, 2, 6, 'Gabtali', 'গাবতলী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (127, 2, 6, 'Kahaloo', 'কাহালু', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (128, 2, 6, 'Nondigram', 'নন্দিগ্রাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (129, 2, 6, 'Shajahanpur', 'শাজাহানপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (130, 2, 6, 'Shariakandi', 'সারিয়াকান্দি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (131, 2, 6, 'Sherpur', 'শেরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (132, 2, 6, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (133, 2, 6, 'Sonatala', 'সোনাতলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (134, 2, 54, 'Bagha', 'বাঘা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (135, 2, 54, 'Bagmara', 'বাগমারা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (136, 2, 54, 'Charghat', 'চারঘাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (137, 2, 54, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (138, 2, 54, 'Godagari', 'গোদাগাড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (139, 2, 54, 'Mohonpur', 'মোহনপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (140, 2, 54, 'Paba', 'পবা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (141, 2, 54, 'Puthia', 'পুঠিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (142, 2, 54, 'Tanore', 'তানোর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (143, 2, 45, 'Bagatipara', 'বাগাতিপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (144, 2, 45, 'Baraigram', 'বড়াইগ্রাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (145, 2, 45, 'Gurudaspur', 'গুরুদাসপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (146, 2, 45, 'Lalpur', 'লালপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (147, 2, 45, 'Naldanga', 'নলডাঙ্গা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (148, 2, 45, 'Natore Sadar', 'নাটোর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (149, 2, 45, 'Singra', 'সিংড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (150, 2, 26, 'Akkelpur', 'আক্কেলপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (151, 2, 26, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (152, 2, 26, 'Kalai', 'কালাই', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (153, 2, 26, 'Khetlal', 'ক্ষেতলাল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (154, 2, 26, 'Panchbibi', 'পাঁচবিবি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (155, 2, 9, 'Bholahat', 'ভোলাহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (156, 2, 9, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (157, 2, 9, 'Gomostapur', 'গোমস্তাপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (158, 2, 9, 'Nachol', 'নাচোল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (159, 2, 9, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (160, 2, 41, 'Atrai', 'আত্রাই', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (161, 2, 41, 'Badalgachi', 'বদলগাছী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (162, 2, 41, 'Dhamoirhat', 'ধামইরহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (163, 2, 41, 'Manda', 'মান্দা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (164, 2, 41, 'Mohadevpur', 'মহাদেবপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (165, 2, 41, 'Naogaon Sadar', 'নওগাঁ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (166, 2, 41, 'Niamatpur', 'নিয়ামতপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (167, 2, 41, 'Patnitala', 'পত্নিতলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (168, 2, 41, 'Porsha', 'পোরশা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (169, 2, 41, 'Raninagar', 'রাণীনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (170, 2, 41, 'Sapahar', 'সাপাহার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (171, 3, 23, 'Abhaynagar', 'অভয়নগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (172, 3, 23, 'Bagherpara', 'বাঘারপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (173, 3, 23, 'Chougachha', 'চৌগাছা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (174, 3, 23, 'Jashore Sadar', 'যশোর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (175, 3, 23, 'Jhikargacha', 'ঝিকরগাছা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (176, 3, 23, 'Keshabpur', 'কেশবপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (177, 3, 23, 'Manirampur', 'মণিরামপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (178, 3, 23, 'Sharsha', 'শার্শা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (179, 3, 57, 'Assasuni', 'আশাশুনি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (180, 3, 57, 'Debhata', 'দেবহাটা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (181, 3, 57, 'Kalaroa', 'কলারোয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (182, 3, 57, 'Kaliganj', 'কালিগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (183, 3, 57, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (184, 3, 57, 'Shyamnagar', 'শ্যামনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (185, 3, 57, 'Tala', 'তালা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (186, 3, 37, 'Gangni', 'গাংনী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (187, 3, 37, 'Meherpursadar', 'মেহেরপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (188, 3, 37, 'Mujibnagar', 'মুজিবনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (189, 3, 42, 'Kalia', 'কালিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (190, 3, 42, 'Lohagara', 'লোহাগড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (191, 3, 42, 'Narail Sadar', 'নড়াইল সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (192, 3, 11, 'Alamdanga', 'আলমডাঙ্গা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (193, 3, 11, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (194, 3, 11, 'Damurhuda', 'দামুড়হুদা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (195, 3, 11, 'Jibannagar', 'জীবননগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (196, 3, 31, 'Bheramara', 'ভেড়ামারা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (197, 3, 31, 'Daulatpur', 'দৌলতপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (198, 3, 31, 'Khoksa', 'খোকসা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (199, 3, 31, 'Kumarkhali', 'কুমারখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (200, 3, 31, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (201, 3, 31, 'Mirpurkushtia', 'মিরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (202, 3, 35, 'Magura Sadar', 'মাগুরা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (203, 3, 35, 'Mohammadpur', 'মহম্মদপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (204, 3, 35, 'Shalikha', 'শালিখা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (205, 3, 35, 'Sreepur', 'শ্রীপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (206, 3, 28, 'Botiaghata', 'বটিয়াঘাটা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (207, 3, 28, 'Dakop', 'দাকোপ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (208, 3, 28, 'Digholia', 'দিঘলিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (209, 3, 28, 'Dumuria', 'ডুমুরিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (210, 3, 28, 'Fultola', 'ফুলতলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (211, 3, 28, 'Koyra', 'কয়রা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (212, 3, 28, 'Paikgasa', 'পাইকগাছা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (213, 3, 28, 'Rupsha', 'রূপসা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (214, 3, 28, 'Terokhada', 'তেরখাদা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (215, 3, 1, 'Chitalmari', 'চিতলমারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (216, 3, 1, 'Fakirhat', 'ফকিরহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (217, 3, 1, 'Kachua', 'কচুয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (218, 3, 1, 'Mollahat', 'মোল্লাহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (219, 3, 1, 'Mongla', 'মোংলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (220, 3, 1, 'Morrelganj', 'মোড়েলগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (221, 3, 1, 'Rampal', 'রামপাল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (222, 3, 1, 'Sadar', 'বাগেরহাট সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (223, 3, 1, 'Sarankhola', 'শরণখোলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (224, 3, 25, 'Harinakundu', 'হরিণাকুন্ডু', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (225, 3, 25, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (226, 3, 25, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (227, 3, 25, 'Kot8', 'কোটচাঁদপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (228, 3, 25, 'Moheshpur', 'মহেশপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (229, 3, 25, 'Shailkupa', 'শৈলকুপা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (230, 4, 51, 'Bauphal', 'বাউফল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (231, 4, 24, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (232, 4, 24, 'Kathalia', 'কাঠালিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (233, 4, 24, 'Nalchity', 'নলছিটি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (234, 4, 24, 'Rajapur', 'রাজাপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (235, 4, 51, 'Dashmina', 'দশমিনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (236, 4, 51, 'Dumki', 'দুমকি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (237, 4, 51, 'Galachipa', 'গলাচিপা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (238, 4, 51, 'Kalapara', 'কলাপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (239, 4, 51, 'Mirzaganj', 'মির্জাগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (240, 4, 51, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (241, 4, 51, 'Rangabali', 'রাঙ্গাবালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (242, 4, 52, 'Bhandaria', 'ভান্ডারিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (243, 4, 52, 'Indurkani', 'ইন্দুরকানী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (244, 4, 52, 'Kawkhali', 'কাউখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (245, 4, 52, 'Mathbaria', 'মঠবাড়ীয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (246, 4, 52, 'Nazirpur', 'নাজিরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (247, 4, 52, 'Nesarabad', 'নেছারাবাদ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (248, 4, 52, 'Pirojpur Sadar', 'পিরোজপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (249, 4, 4, 'Agailjhara', 'আগৈলঝাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (250, 4, 4, 'Babuganj', 'বাবুগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (251, 4, 4, 'Bakerganj', 'বাকেরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (252, 4, 4, 'Banaripara', 'বানারীপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (253, 4, 4, 'Barishal Sadar', 'বরিশাল সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (254, 4, 4, 'Gournadi', 'গৌরনদী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (255, 4, 4, 'Hizla', 'হিজলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (256, 4, 4, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (257, 4, 4, 'Muladi', 'মুলাদী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (258, 4, 4, 'Wazirpur', 'উজিরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (259, 4, 5, 'Bhola Sadar', 'ভোলা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (260, 4, 5, 'Borhanuddin', 'বোরহানউদ্দিন', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (261, 4, 5, 'Charfesson', 'চরফ্যাশন', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (262, 4, 5, 'Doulatkhan', 'দৌলতখান', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (263, 4, 5, 'Lalmohan', 'লালমোহন', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (264, 4, 5, 'Monpura', 'মনপুরা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (265, 4, 5, 'Tazumuddin', 'তজুমদ্দিন', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (266, 4, 3, 'Amtali', 'আমতলী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (267, 4, 3, 'Bamna', 'বামনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (268, 4, 3, 'Betagi', 'বেতাগী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (269, 4, 3, 'Pathorghata', 'পাথরঘাটা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (270, 4, 3, 'Sadar', 'বরগুনা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (271, 4, 3, 'Taltali', 'তালতলি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (272, 5, 62, 'Balaganj', 'বালাগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (273, 5, 62, 'Beanibazar', 'বিয়ানীবাজার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (274, 5, 62, 'Bishwanath', 'বিশ্বনাথ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (275, 5, 62, 'Companiganj', 'কোম্পানীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (276, 5, 62, 'Dakshinsurma', 'দক্ষিণসুরমা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (277, 5, 62, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (278, 5, 62, 'Golapganj', 'গোলাপগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (279, 5, 62, 'Gowainghat', 'গোয়াইনঘাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (280, 5, 62, 'Jaintiapur', 'জৈন্তাপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (281, 5, 62, 'Kanaighat', 'কানাইঘাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (282, 5, 62, 'Osmaninagar', 'ওসমানী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (283, 5, 62, 'Sylhet Sadar', 'সিলেট সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (284, 5, 62, 'Zakiganj', 'জকিগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (285, 5, 38, 'Barlekha', 'বড়লেখা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (286, 5, 38, 'Juri', 'জুড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (287, 5, 38, 'Kamolganj', 'কমলগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (288, 5, 38, 'Kulaura', 'কুলাউড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (289, 5, 38, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (290, 5, 38, 'Rajnagar', 'রাজনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (291, 5, 38, 'Sreemangal', 'শ্রীমঙ্গল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (292, 5, 21, 'Ajmiriganj', 'আজমিরীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (293, 5, 21, 'Bahubal', 'বাহুবল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (294, 5, 21, 'Baniachong', 'বানিয়াচং', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (295, 5, 21, 'Chunarughat', 'চুনারুঘাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (296, 5, 21, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (297, 5, 21, 'Lakhai', 'লাখাই', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (298, 5, 21, 'Madhabpur', 'মাধবপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (299, 5, 21, 'Nabiganj', 'নবীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (300, 5, 21, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (301, 5, 61, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (302, 5, 61, 'Chhatak', 'ছাতক', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (303, 5, 61, 'Derai', 'দিরাই', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (304, 5, 61, 'Dharmapasha', 'ধর্মপাশা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (305, 5, 61, 'Dowarabazar', 'দোয়ারাবাজার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (306, 5, 61, 'Jagannathpur', 'জগন্নাথপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (307, 5, 61, 'Jamalganj', 'জামালগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (308, 5, 61, 'Shalla', 'শাল্লা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (309, 5, 61, 'South Sunamganj', 'দক্ষিণসুনামগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (310, 5, 61, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (311, 5, 61, 'Tahirpur', 'তাহিরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (312, 6, 44, 'Belabo', 'বেলাবো', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (313, 6, 44, 'Monohardi', 'মনোহরদী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (314, 6, 44, 'Narsingdisadar', 'নরসিংদী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (315, 6, 44, 'Palash', 'পলাশ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (316, 6, 44, 'Raipura', 'রায়পুরা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (317, 6, 44, 'Shibpur', 'শিবপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (318, 6, 19, 'Kaliakair', 'কালিয়াকৈর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (319, 6, 19, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (320, 6, 19, 'Kapasia', 'কাপাসিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (321, 6, 19, 'Sadar', 'গাজীপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (322, 6, 19, 'Sreepur', 'শ্রীপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (323, 6, 58, 'Bhedarganj', 'ভেদরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (324, 6, 58, 'Damudya', 'ডামুড্যা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (325, 6, 58, 'Gosairhat', 'গোসাইরহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (326, 6, 58, 'Naria', 'নড়িয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (327, 6, 58, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (328, 6, 58, 'Zajira', 'জাজিরা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (329, 6, 43, 'Araihazar', 'আড়াইহাজার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (330, 6, 43, 'Bandar', 'বন্দর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (331, 6, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (332, 6, 43, 'Rupganj', 'রূপগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (333, 6, 43, 'Sonargaon', 'সোনারগাঁ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (334, 6, 63, 'Basail', 'বাসাইল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (335, 6, 63, 'Bhuapur', 'ভুয়াপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (336, 6, 63, 'Delduar', 'দেলদুয়ার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (337, 6, 63, 'Dhanbari', 'ধনবাড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (338, 6, 63, 'Ghatail', 'ঘাটাইল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (339, 6, 63, 'Gopalpur', 'গোপালপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (340, 6, 63, 'Kalihati', 'কালিহাতী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (341, 6, 63, 'Madhupur', 'মধুপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (342, 6, 63, 'Mirzapur', 'মির্জাপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (343, 6, 63, 'Nagarpur', 'নাগরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (344, 6, 63, 'Sakhipur', 'সখিপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (345, 6, 63, 'Tangailsadar', 'টাঙ্গাইল সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (346, 6, 29, 'Austagram', 'অষ্টগ্রাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (347, 6, 29, 'Bajitpur', 'বাজিতপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (348, 6, 29, 'Bhairab', 'ভৈরব', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (349, 6, 29, 'Hossainpur', 'হোসেনপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (350, 6, 29, 'Itna', 'ইটনা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (351, 6, 29, 'Karimgonj', 'করিমগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (352, 6, 29, 'Katiadi', 'কটিয়াদী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (353, 6, 29, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (354, 6, 29, 'Kuliarchar', 'কুলিয়ারচর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (355, 6, 29, 'Mithamoin', 'মিঠামইন', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (356, 6, 29, 'Nikli', 'নিকলী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (357, 6, 29, 'Pakundia', 'পাকুন্দিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (358, 6, 29, 'Tarail', 'তাড়াইল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (359, 6, 36, 'Doulatpur', 'দৌলতপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (360, 6, 36, 'Gior', 'ঘিওর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (361, 6, 36, 'Harirampur', 'হরিরামপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (362, 6, 36, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (363, 6, 36, 'Saturia', 'সাটুরিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (364, 6, 36, 'Shibaloy', 'শিবালয়', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (365, 6, 36, 'Singiar', 'সিংগাইর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (366, 6, 14, 'Dhamrai', 'ধামরাই', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (367, 6, 14, 'Dohar', 'দোহার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (368, 6, 14, 'Keraniganj', 'কেরাণীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (369, 6, 14, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (370, 6, 14, 'Savar', 'সাভার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (371, 6, 39, 'Gajaria', 'গজারিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (372, 6, 39, 'Louhajanj', 'লৌহজং', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (373, 6, 39, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (374, 6, 39, 'Sirajdikhan', 'সিরাজদিখান', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (375, 6, 39, 'Sreenagar', 'শ্রীনগর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (376, 6, 39, 'Tongibari', 'টংগীবাড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (377, 6, 53, 'Baliakandi', 'বালিয়াকান্দি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (378, 6, 53, 'Goalanda', 'গোয়ালন্দ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (379, 6, 53, 'Kalukhali', 'কালুখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (380, 6, 53, 'Pangsa', 'পাংশা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (381, 6, 53, 'Rajbari Sadar', 'রাজবাড়ী সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (382, 6, 34, 'Kalkini', 'কালকিনি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (383, 6, 34, 'Madaripur Sadar', 'মাদারীপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (384, 6, 34, 'Rajoir', 'রাজৈর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (385, 6, 34, 'Shibchar', 'শিবচর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (386, 6, 20, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (387, 6, 20, 'Kashiani', 'কাশিয়ানী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (388, 6, 20, 'Kotalipara', 'কোটালীপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (389, 6, 20, 'Muksudpur', 'মুকসুদপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (390, 6, 20, 'Tungipara', 'টুংগীপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (391, 6, 16, 'Alfadanga', 'আলফাডাঙ্গা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (392, 6, 16, 'Bhanga', 'ভাঙ্গা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (393, 6, 16, 'Boalmari', 'বোয়ালমারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (394, 6, 16, 'Charbhadrasan', 'চরভদ্রাসন', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (395, 6, 16, 'Faridpur Sadar', 'ফরিদপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (396, 6, 16, 'Madhukhali', 'মধুখালী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (397, 6, 16, 'Nagarkanda', 'নগরকান্দা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (398, 6, 16, 'Sadarpur', 'সদরপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (399, 6, 16, 'Saltha', 'সালথা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (400, 7, 50, 'Atwari', 'আটোয়ারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (401, 7, 50, 'Boda', 'বোদা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (402, 7, 50, 'Debiganj', 'দেবীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (403, 7, 50, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (404, 7, 50, 'Tetulia', 'তেতুলিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (405, 7, 15, 'Birampur', 'বিরামপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (406, 7, 15, 'Birganj', 'বীরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (407, 7, 15, 'Birol', 'বিরল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (408, 7, 15, 'Bochaganj', 'বোচাগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (409, 7, 15, 'Chirirbandar', 'চিরিরবন্দর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (410, 7, 15, 'Dinajpursadar', 'দিনাজপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (411, 7, 15, 'Fulbari', 'ফুলবাড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (412, 7, 15, 'Ghoraghat', 'ঘোড়াঘাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (413, 7, 15, 'Hakimpur', 'হাকিমপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (414, 7, 15, 'Kaharol', 'কাহারোল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (415, 7, 15, 'Khansama', 'খানসামা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (416, 7, 15, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (417, 7, 15, 'Parbatipur', 'পার্বতীপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (418, 7, 33, 'Aditmari', 'আদিতমারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (419, 7, 33, 'Hatibandha', 'হাতীবান্ধা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (420, 7, 33, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (421, 7, 33, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (422, 7, 33, 'Patgram', 'পাটগ্রাম', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (423, 7, 47, 'Dimla', 'ডিমলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (424, 7, 47, 'Domar', 'ডোমার', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (425, 7, 47, 'Jaldhaka', 'জলঢাকা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (426, 7, 47, 'Kishorganj', 'কিশোরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (427, 7, 47, 'Nilphamarisadar', 'নীলফামারী সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (428, 7, 47, 'Syedpur', 'সৈয়দপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (429, 7, 18, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (430, 7, 18, 'Gobindaganj', 'গোবিন্দগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (431, 7, 18, 'Palashbari', 'পলাশবাড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (432, 7, 18, 'Phulchari', 'ফুলছড়ি', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (433, 7, 18, 'Sadullapur', 'সাদুল্লাপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (434, 7, 18, 'Saghata', 'সাঘাটা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (435, 7, 18, 'Sundarganj', 'সুন্দরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (436, 7, 64, 'Baliadangi', 'বালিয়াডাঙ্গী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (437, 7, 64, 'Haripur', 'হরিপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (438, 7, 64, 'Pirganj', 'পীরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (439, 7, 64, 'Ranisankail', 'রাণীশংকৈল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (440, 7, 64, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (441, 7, 56, 'Badargonj', 'বদরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (442, 7, 56, 'Gangachara', 'গংগাচড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (443, 7, 56, 'Kaunia', 'কাউনিয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (444, 7, 56, 'Mithapukur', 'মিঠাপুকুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (445, 7, 56, 'Pirgacha', 'পীরগাছা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (446, 7, 56, 'Pirgonj', 'পীরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (447, 7, 56, 'Rangpur Sadar', 'রংপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (448, 7, 56, 'Taragonj', 'তারাগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (449, 6, 30, 'Bhurungamari', 'ভুরুঙ্গামারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (450, 7, 30, 'Charrajibpur', 'চররাজিবপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (451, 7, 30, 'Chilmari', 'চিলমারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (452, 7, 30, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (453, 7, 30, 'Nageshwari', 'নাগেশ্বরী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (454, 7, 30, 'Phulbari', 'ফুলবাড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (455, 7, 30, 'Rajarhat', 'রাজারহাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (456, 7, 30, 'Rowmari', 'রৌমারী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (457, 7, 30, 'Ulipur', 'উলিপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (458, 8, 59, 'Jhenaigati', 'ঝিনাইগাতী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (459, 8, 59, 'Nalitabari', 'নালিতাবাড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (460, 8, 59, 'Nokla', 'নকলা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (461, 8, 59, 'Sherpur Sadar', 'শেরপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (462, 8, 59, 'Sreebordi', 'শ্রীবরদী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (463, 8, 40, 'Bhaluka', 'ভালুকা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (464, 8, 40, 'Dhobaura', 'ধোবাউড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (465, 8, 40, 'Fulbaria', 'ফুলবাড়ীয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (466, 8, 40, 'Gafargaon', 'গফরগাঁও', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (467, 8, 40, 'Gouripur', 'গৌরীপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (468, 8, 40, 'Haluaghat', 'হালুয়াঘাট', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (469, 8, 40, 'Iswarganj', 'ঈশ্বরগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (470, 8, 40, 'Muktagacha', 'মুক্তাগাছা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (471, 8, 40, 'Mymensinghsadar', 'ময়মনসিংহ সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (472, 8, 40, 'Nandail', 'নান্দাইল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (473, 8, 40, 'Phulpur', 'ফুলপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (474, 8, 40, 'Tarakanda', 'তারাকান্দা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (475, 8, 40, 'Trishal', 'ত্রিশাল', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (476, 8, 22, 'Bokshiganj', 'বকশীগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (477, 8, 22, 'Dewangonj', 'দেওয়ানগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (478, 8, 22, 'Islampur', 'ইসলামপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (479, 8, 22, 'Jamalpur Sadar', 'জামালপুর সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (480, 8, 22, 'Madarganj', 'মাদারগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (481, 8, 22, 'Melandah', 'মেলান্দহ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (482, 8, 22, 'Sarishabari', 'সরিষাবাড়ী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (483, 8, 46, 'Atpara', 'আটপাড়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (484, 8, 46, 'Barhatta', 'বারহাট্টা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (485, 8, 46, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (486, 8, 46, 'Kalmakanda', 'কলমাকান্দা', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (487, 8, 46, 'Kendua', 'কেন্দুয়া', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (488, 8, 46, 'Khaliajuri', 'খালিয়াজুরী', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (489, 8, 46, 'Madan', 'মদন', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (490, 8, 46, 'Mohongonj', 'মোহনগঞ্জ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (491, 8, 46, 'Netrokona Sadar', 'নেত্রকোণা সদর', 1, NULL, NULL, NULL, NULL);
INSERT INTO `upazillas` VALUES (492, 8, 46, 'Purbadhala', 'পূর্বধলা', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Nafiur Rahman', 'nafiur@outlook.com', 'nafiur', NULL, '$2y$10$TgoQc18r.WmyCHcjUw7TTeLk/dmet0WbC9ZnIAsdvA.DdDkVMFhcS', '202302011156IMG_20220923_153727_889.jpg', NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, 'Nafiur Rahman', 'devnafiur@gmail.com', 'nafiurrahman', '2023-02-27 02:34:47', '$2y$10$gHGeHRwr8UyPpLlUMKusGuRrVR6uCWN/XcTqljyOOElwfp.ALbaNq', '202302270235IMG_20220923_153727_889.jpg', NULL, '2023-02-27 02:34:27', '2023-02-27 02:35:13');
INSERT INTO `users` VALUES (8, 'HEM-OP-10', 'op10fhrma.tmss@gmail.com', 'op10fhrma.tmss', '2023-02-27 05:44:56', '$2y$10$Lj8CRf8DaHBngWb2ur9yj.JMERVlxKrYCQjZATDGF.2MiNYp334E6', '202302270523unnamed.jpg', NULL, '2023-02-27 05:21:30', '2023-02-27 05:44:56');
INSERT INTO `users` VALUES (9, 'Ziaur Rahamn', 'op9frhma.tmss@gmail.com', 'hro.op9.tmss', NULL, '$2y$10$i2FS8CGQn..AlOfKKlBd9.xw5buT9D63NAMuiPyxMzZhQmH0DpjrO', '202302270534Zia.JPG', NULL, '2023-02-27 05:31:01', '2023-02-27 05:34:24');
INSERT INTO `users` VALUES (10, 'Md.Ziaul Haque', 'hr.ziaulhaque@gmail.com', 'ziaul', '2023-02-27 05:45:05', '$2y$10$mrnbmXyqij5yxwGRGMpMQ.6dHPeoAq5uN.sQFkd7OUmq1cUJbkckG', '202302270547unnamed.jpg', NULL, '2023-02-27 05:43:28', '2023-02-27 05:47:18');
INSERT INTO `users` VALUES (11, 'Md. Tanveer Islam', 'op7fhrma.tmss@gmail.com', 'tanveerislam', '2023-02-27 06:06:34', '$2y$10$x8RPUuOZLO7V8uaMKPo3dOg7AzX2CC3KttXq6fL5MDH215UcJ8Pjy', '20230227060645141926_1946980005419178_607320388677926912_n.jpg', NULL, '2023-02-27 06:03:36', '2023-02-27 06:06:34');
INSERT INTO `users` VALUES (12, 'Md. Ashraful ALam', 'op1fhrma.tmss@gmail.com', 'Ashraful Alam', '2023-02-27 06:07:30', '$2y$10$L7c5jm1Y/J/rNVbprkeXeuepj4rUjoT5vl50es0Iaw77hE3rPc3nu', '202302270613WhatsApp Image 2023-02-27 at 12.10.32 PM.jpeg', NULL, '2023-02-27 06:04:34', '2023-02-27 06:13:24');
INSERT INTO `users` VALUES (13, 'Ferdous', 'op4fhrma.tmss@gmail.com', 'HRO(Op-4)', '2023-02-27 06:26:41', '$2y$10$1dIfB6Sto6fHtDSpb4TFaeqxIc7T4IBT2rAtqZ3P7ZuCNYJ8R1/Yi', NULL, NULL, '2023-02-27 06:18:20', '2023-02-27 06:26:41');
INSERT INTO `users` VALUES (14, 'Khandakar Farhan Ahmad', 'hrfarhaneco@gmail.com', 'hrfarhan', '2023-02-27 08:52:32', '$2y$10$cpgWeauikMItiUpHxRBhnO0cQ86Q69rp5F/Yt/ngKpE.ruE3cIUha', NULL, NULL, '2023-02-27 08:11:08', '2023-02-27 08:52:32');
INSERT INTO `users` VALUES (15, 'Md. Nehed Ali', 'nehedali4@gmail.com', 'md. nehed ali', NULL, '$2y$10$J7ugInRXLW0keWVwarqnreFmGvCTJK007fj0FTucu82jergpfe0Hm', '202302271154PICTURE.jpg', NULL, '2023-02-27 11:53:40', '2023-02-28 04:04:11');
INSERT INTO `users` VALUES (16, 'Eyal Roy', 'op12fhrma.tmss@gmail.com', 'Eyal HR, OP-12', '2023-02-27 16:15:20', '$2y$10$hx5h7fSOwtu4q3zs8O4pfuhjitnCgDSr2yKOQa1ydsvengpeMJuKa', '20230227162120221127_115049.jpg', NULL, '2023-02-27 16:08:52', '2023-02-27 16:21:46');
INSERT INTO `users` VALUES (17, 'Fahim Rahman', 'op2fhrma.tmss@gmail.com', 'Fahim Rahman', '2023-02-28 03:49:11', '$2y$10$BNd3kRAeDHzaMvMdIW3jC.xuJPG0vpzIhgdWCGm7GDSnJAIA80QZu', '20230228035227336754_1833261503414045_6313493831627011708_n.jpg', NULL, '2023-02-28 03:48:51', '2023-02-28 03:52:54');
INSERT INTO `users` VALUES (18, 'Md.Anwar Hossain Siddiqi', 'op11fhrma.tmss@gmail.com', 'anwarhossain', '2023-02-28 05:42:26', '$2y$10$u/J/S7Bb0ZStn4GlVivcReS/B.qtMiT0yNfzE/uxeoSxPSmAoOiCG', '202302280540Anwar-Photograph.jpg', NULL, '2023-02-28 05:39:08', '2023-02-28 05:42:26');
INSERT INTO `users` VALUES (19, 'Md. Alfaz', 'op5fhrma.tmss@gmail.com', 'mdalfaz', '2023-02-28 08:34:10', '$2y$10$1I36RGsxyIWHPTJy5Za7vucoh8YjkZKBsoLSJ6UFKr3z8Hco1vnUK', '202302280838PP.JPG', NULL, '2023-02-28 08:33:33', '2023-02-28 08:38:18');
INSERT INTO `users` VALUES (20, 'Md Yeasin (Rana)', 'op8fhrma.tmss@gmail.com', 'YeasinRana', '2023-02-28 08:41:14', '$2y$10$nusxLtOcL/EmpmDxY1QBmepneaVNwLyDlcu00/rPUMYi7ZpsoaLeG', '202302280905300.jpg', NULL, '2023-02-28 08:40:02', '2023-02-28 09:05:21');
INSERT INTO `users` VALUES (21, 'Naznin Akter', 'nazninakter6150@gmail.com', 'nazsha06*', NULL, '$2y$10$NXv5xLSy7ZHXyO.DgLhxHOyrwf2Rvynlxu4GYMaCltQMTBZHRQudm', NULL, NULL, '2023-03-05 09:45:19', '2023-03-05 09:45:19');

-- ----------------------------
-- Table structure for zones
-- ----------------------------
DROP TABLE IF EXISTS `zones`;
CREATE TABLE `zones`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `domain_id` int NOT NULL,
  `sector_id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_by` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zones
-- ----------------------------
INSERT INTO `zones` VALUES (1, 7, 1, 'Bogra Central ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (2, 7, 1, 'Bogura North', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (3, 7, 1, 'Bogura South', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (4, 7, 1, 'Joypurhat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (5, 7, 1, 'Sirajgonj', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (6, 8, 1, 'Dhaka North ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (7, 8, 1, 'Dhaka South ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (8, 8, 1, 'Savar ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (9, 8, 1, 'Narshingdi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (10, 9, 1, 'Chapainawabganj', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (11, 9, 1, 'Naogaon', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (12, 9, 1, 'Nozipur ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (13, 10, 1, 'Gaibandha', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (14, 10, 1, 'Rangpur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (15, 10, 1, 'Kurigram', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (16, 10, 1, 'Lalmonirhat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (17, 10, 1, 'Polashbari', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (18, 11, 1, 'Chittagong North', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (19, 11, 1, 'Chattagram South', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (20, 11, 1, 'Satkania', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (21, 11, 1, 'Feni ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (22, 11, 1, 'Noakhali', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (23, 11, 1, 'Satkhira ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (24, 12, 1, 'Jessore', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (25, 12, 1, 'Khulna ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (26, 12, 1, 'Kushtia', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (27, 13, 1, 'Moulvibazar', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (28, 13, 1, 'Sylhet ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (29, 13, 1, 'Beanibazar ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (30, 13, 1, 'Hobigonj', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (31, 14, 1, 'Faridpur  ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (32, 14, 1, ' Barisal ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (33, 14, 1, 'Madaripur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (34, 15, 1, 'Dinajpur ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (35, 15, 1, 'Saidpur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (36, 15, 1, 'Thakurgaon', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (37, 15, 1, 'Panchagarh', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (38, 16, 1, 'Laxmipur ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (39, 16, 1, 'Comilla East ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (40, 16, 1, 'Cumilla West ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (41, 16, 1, 'Chandpur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (42, 17, 1, 'Pabna', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (43, 17, 1, 'Chatmohor', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (44, 17, 1, 'Puthia', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (45, 17, 1, 'Natore', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (46, 18, 1, 'Gazipur ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (47, 18, 1, 'Tangail', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (48, 18, 1, 'Netrokona', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (49, 18, 1, 'Jamalpur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (50, 25, NULL, 'N/A', 1, NULL, NULL, NULL, NULL);
INSERT INTO `zones` VALUES (51, 26, NULL, 'N/I', 1, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
