-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2023 at 02:34 AM
-- Server version: 10.3.37-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banglar2_hrmtmss`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A(+ve)', 1, NULL, NULL, NULL, NULL),
(2, 'A(-ve)', 1, NULL, NULL, NULL, NULL),
(3, 'AB(+ve)', 1, NULL, NULL, NULL, NULL),
(4, 'AB(-ve)', 1, NULL, NULL, NULL, NULL),
(5, 'B(+ve)', 1, NULL, NULL, NULL, NULL),
(6, 'B(-ve)', 1, NULL, NULL, NULL, NULL),
(7, 'O(+ve)', 1, NULL, NULL, NULL, NULL),
(8, 'O(-ve)', 1, NULL, NULL, NULL, NULL),
(9, 'N/I', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `customer_image` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A&F', 1, NULL, NULL, NULL, NULL),
(2, 'Admin', 1, NULL, NULL, NULL, NULL),
(3, 'AIMS', 1, NULL, NULL, NULL, NULL),
(4, 'Audit', 1, NULL, NULL, NULL, NULL),
(5, 'C&F', 1, NULL, NULL, NULL, NULL),
(6, 'Eng', 1, NULL, NULL, NULL, NULL),
(7, 'HEM', 1, NULL, NULL, NULL, NULL),
(8, 'HR-M', 1, NULL, NULL, NULL, NULL),
(9, 'IICD', 1, NULL, NULL, NULL, NULL),
(10, 'Land', 1, NULL, NULL, NULL, NULL),
(11, 'Monitoring', 1, NULL, NULL, NULL, NULL),
(12, 'PRP', 1, NULL, NULL, NULL, NULL),
(13, 'Program', 1, NULL, NULL, NULL, NULL),
(14, 'RCH', 1, NULL, NULL, NULL, NULL),
(15, 'THS', 1, NULL, NULL, NULL, NULL),
(16, 'TD', 1, NULL, NULL, NULL, NULL),
(17, 'Utpadon', 1, NULL, NULL, NULL, NULL),
(18, 'Welding', 1, NULL, NULL, NULL, NULL),
(19, 'DEDS', 1, NULL, NULL, NULL, NULL),
(20, 'ES', 1, NULL, NULL, NULL, NULL),
(21, 'IA', 1, NULL, NULL, NULL, NULL),
(22, 'SDP', 1, NULL, NULL, NULL, NULL),
(23, 'NNP', 1, NULL, NULL, NULL, NULL),
(24, 'Documentation', 1, NULL, NULL, NULL, NULL),
(25, 'PP', 1, NULL, NULL, NULL, NULL),
(26, 'WM', 1, NULL, NULL, NULL, NULL),
(27, 'PRC', 1, NULL, NULL, NULL, NULL),
(28, 'TUF', 1, NULL, NULL, NULL, NULL),
(29, 'Fisheries', 1, NULL, NULL, NULL, NULL),
(30, 'Livestock', 1, NULL, NULL, NULL, NULL),
(31, 'PLDP', 1, NULL, NULL, NULL, NULL),
(32, 'C&MIS', 1, NULL, NULL, NULL, NULL),
(33, 'E&E', 1, NULL, NULL, NULL, NULL),
(34, 'BADP', 1, NULL, NULL, NULL, NULL),
(35, 'FSFFP', 1, NULL, NULL, NULL, NULL),
(36, 'FIS', 1, NULL, NULL, NULL, NULL),
(37, 'HR&G', 1, NULL, NULL, NULL, NULL),
(38, 'P-1', 1, NULL, NULL, NULL, NULL),
(39, 'P-2', 1, NULL, NULL, NULL, NULL),
(40, 'BCL', 1, NULL, NULL, NULL, NULL),
(41, 'Nursery', 1, NULL, NULL, NULL, NULL),
(42, 'TDS', 1, NULL, NULL, NULL, NULL),
(43, 'PMD', 1, NULL, NULL, NULL, NULL),
(44, 'FSVGD', 1, NULL, NULL, NULL, NULL),
(45, 'P-3', 1, NULL, NULL, NULL, NULL),
(46, 'Operation', 1, NULL, NULL, NULL, NULL),
(47, 'LEAD', 1, NULL, NULL, NULL, NULL),
(48, 'TPP', 1, NULL, NULL, NULL, NULL),
(49, 'TH', 1, NULL, NULL, NULL, NULL),
(50, 'MFI', 1, NULL, NULL, NULL, NULL),
(51, 'LL', 1, NULL, NULL, NULL, NULL),
(52, 'TF', 1, NULL, NULL, NULL, NULL),
(53, 'PRS', 1, NULL, NULL, NULL, NULL),
(54, 'TSM', 1, NULL, NULL, NULL, NULL),
(55, 'TBSS', 1, NULL, NULL, NULL, NULL),
(56, 'HRD', 1, NULL, NULL, NULL, NULL),
(57, 'PR&D', 1, NULL, NULL, NULL, NULL),
(58, 'THSED', 1, NULL, NULL, NULL, NULL),
(59, 'PHE&SP (Primary Health Education & Service Program)', 1, NULL, NULL, NULL, NULL),
(60, 'TMTI', 1, NULL, NULL, NULL, NULL),
(61, 'TNC', 1, NULL, NULL, NULL, NULL),
(62, 'TMATS', 1, NULL, NULL, NULL, NULL),
(63, 'TMIRT', 1, NULL, NULL, NULL, NULL),
(64, 'TIMF', 1, NULL, NULL, NULL, NULL),
(65, 'BPMD', 1, NULL, NULL, NULL, NULL),
(66, 'LST', 1, NULL, NULL, NULL, NULL),
(67, 'TCS', 1, NULL, NULL, NULL, NULL),
(68, 'TMMH', 1, NULL, NULL, NULL, NULL),
(69, 'TMC', 1, NULL, NULL, NULL, NULL),
(70, 'TNRA', 1, NULL, NULL, NULL, NULL),
(71, 'A&C', 1, NULL, NULL, NULL, NULL),
(72, 'TTI', 1, NULL, NULL, NULL, NULL),
(73, 'Sawmill & Furniture', 1, NULL, NULL, NULL, NULL),
(74, 'Forestry', 1, NULL, NULL, NULL, NULL),
(75, 'TDM', 1, NULL, NULL, NULL, NULL),
(76, 'P-4', 1, NULL, NULL, NULL, NULL),
(77, 'Social Forestry', 1, NULL, NULL, NULL, NULL),
(78, 'TCPI', 1, NULL, NULL, NULL, NULL),
(79, 'TTTTI', 1, NULL, NULL, NULL, NULL),
(80, 'TPIN', 1, NULL, NULL, NULL, NULL),
(81, 'A&E', 1, NULL, NULL, NULL, NULL),
(82, 'TFR', 1, NULL, NULL, NULL, NULL),
(83, 'F&A', 1, NULL, NULL, NULL, NULL),
(84, 'TSAL', 1, NULL, NULL, NULL, NULL),
(85, 'TEC', 1, NULL, NULL, NULL, NULL),
(86, 'Verifying', 1, NULL, NULL, NULL, NULL),
(87, 'LFP', 1, NULL, NULL, NULL, NULL),
(88, 'RCPI', 1, NULL, NULL, NULL, NULL),
(89, 'TPSC (Bogura)', 1, NULL, NULL, NULL, NULL),
(90, 'TEID', 1, NULL, NULL, NULL, NULL),
(91, 'FIMT&M', 1, NULL, NULL, NULL, NULL),
(92, 'ICT', 1, NULL, NULL, NULL, NULL),
(93, 'TCSC', 1, NULL, NULL, NULL, NULL),
(94, 'Agri. Infrastructure Dev. Mitigation & Social Affairs', 1, NULL, NULL, NULL, NULL),
(95, 'Training Sub Center, Joypurhat', 1, NULL, NULL, NULL, NULL),
(96, 'GG', 1, NULL, NULL, NULL, NULL),
(97, 'Procurement Department', 1, NULL, NULL, NULL, NULL),
(98, 'TTEI', 1, NULL, NULL, NULL, NULL),
(99, 'TEDA', 1, NULL, NULL, NULL, NULL),
(100, 'SEDP', 1, NULL, NULL, NULL, NULL),
(101, 'PUST', 1, NULL, NULL, NULL, NULL),
(102, 'LTD', 1, NULL, NULL, NULL, NULL),
(103, 'Env', 1, NULL, NULL, NULL, NULL),
(104, 'CD', 1, NULL, NULL, NULL, NULL),
(105, 'A&C (HEM)', 1, NULL, NULL, NULL, NULL),
(106, 'Training Center, Rangpur', 1, NULL, NULL, NULL, NULL),
(107, 'TTTL', 1, NULL, NULL, NULL, NULL),
(108, 'FT (VGD)', 1, NULL, NULL, NULL, NULL),
(109, 'Financial Expart', 1, NULL, NULL, NULL, NULL),
(110, 'TECSL', 1, NULL, NULL, NULL, NULL),
(111, 'TFAUMCH', 1, NULL, NULL, NULL, NULL),
(112, 'MS-MATS', 1, NULL, NULL, NULL, NULL),
(113, 'TMSS Community Policing', 1, NULL, NULL, NULL, NULL),
(114, 'EE&LS', 1, NULL, NULL, NULL, NULL),
(115, 'TDEA', 1, NULL, NULL, NULL, NULL),
(116, 'Training Center, Natore', 1, NULL, NULL, NULL, NULL),
(117, 'DED-1 Office', 1, NULL, NULL, NULL, NULL),
(118, 'Business Venture', 1, NULL, NULL, NULL, NULL),
(119, 'LPG Ltd.', 1, NULL, NULL, NULL, NULL),
(120, 'TRES', 1, NULL, NULL, NULL, NULL),
(121, 'TTI Canteen', 1, NULL, NULL, NULL, NULL),
(122, 'TMATI', 1, NULL, NULL, NULL, NULL),
(123, 'LLS', 1, NULL, NULL, NULL, NULL),
(124, 'R&MIS', 1, NULL, NULL, NULL, NULL),
(125, 'LCS', 1, NULL, NULL, NULL, NULL),
(126, 'M-MATS', 1, NULL, NULL, NULL, NULL),
(127, 'P-2 & 3', 1, NULL, NULL, NULL, NULL),
(128, 'Land-LCD', 1, NULL, NULL, NULL, NULL),
(129, 'Agriculture', 1, NULL, NULL, NULL, NULL),
(130, 'P-5', 1, NULL, NULL, NULL, NULL),
(131, 'Furniture', 1, NULL, NULL, NULL, NULL),
(132, 'Momo Inn Ltd.', 1, NULL, NULL, NULL, NULL),
(133, 'ARM & GG', 1, NULL, NULL, NULL, NULL),
(134, 'TCNGL', 1, NULL, NULL, NULL, NULL),
(135, 'HR-M&A', 1, NULL, NULL, NULL, NULL),
(136, 'HR-M & Admin', 1, NULL, NULL, NULL, NULL),
(137, 'THSS', 1, NULL, NULL, NULL, NULL),
(138, 'HEM-Enterprise', 1, NULL, NULL, NULL, NULL),
(139, 'GGIC', 1, NULL, NULL, NULL, NULL),
(140, 'MIS & D(THS)', 1, NULL, NULL, NULL, NULL),
(141, 'TTF', 1, NULL, NULL, NULL, NULL),
(142, 'HEM (MIS)', 1, NULL, NULL, NULL, NULL),
(143, 'TISI', 1, NULL, NULL, NULL, NULL),
(144, 'BOD', 1, NULL, NULL, NULL, NULL),
(145, 'TID', 1, NULL, NULL, NULL, NULL),
(146, 'HEM (LLS)', 1, NULL, NULL, NULL, NULL),
(147, 'Religious Complex', 1, NULL, NULL, NULL, NULL),
(148, 'LDS', 1, NULL, NULL, NULL, NULL),
(149, 'BCL Paper Mill', 1, NULL, NULL, NULL, NULL),
(150, 'Agriculture Production', 1, NULL, NULL, NULL, NULL),
(151, 'Seed Dept', 1, NULL, NULL, NULL, NULL),
(152, 'Day Care Center', 1, NULL, NULL, NULL, NULL),
(153, 'SP-WV', 1, NULL, NULL, NULL, NULL),
(154, 'BLP', 1, NULL, NULL, NULL, NULL),
(155, 'TPIR', 1, NULL, NULL, NULL, NULL),
(156, 'Food & Beverage', 1, NULL, NULL, NULL, NULL),
(157, 'Automation Cell (HEM)', 1, NULL, NULL, NULL, NULL),
(158, 'Auto Center', 1, NULL, NULL, NULL, NULL),
(159, 'TMSS Cold Storage', 1, NULL, NULL, NULL, NULL),
(160, 'ECD', 1, NULL, NULL, NULL, NULL),
(161, 'TMC-DU', 1, NULL, NULL, NULL, NULL),
(162, 'TMBA', 1, NULL, NULL, NULL, NULL),
(163, 'TPIJ', 1, NULL, NULL, NULL, NULL),
(164, 'TMSS Electronics, Dupchancia', 1, NULL, NULL, NULL, NULL),
(165, 'TMMH (HO)', 1, NULL, NULL, NULL, NULL),
(166, 'TSWH&RC', 1, NULL, NULL, NULL, NULL),
(167, 'EICD', 1, NULL, NULL, NULL, NULL),
(168, 'PUB', 1, NULL, NULL, NULL, NULL),
(169, 'Finance Intelligence Division', 1, NULL, NULL, NULL, NULL),
(170, 'Development', 1, NULL, NULL, NULL, NULL),
(171, 'TMC & RCH', 1, NULL, NULL, NULL, NULL),
(172, 'EST', 1, NULL, NULL, NULL, NULL),
(173, 'Spices', 1, NULL, NULL, NULL, NULL),
(174, 'DEACA', 1, NULL, NULL, NULL, NULL),
(175, 'TDSC-Dinajpur', 1, NULL, NULL, NULL, NULL),
(176, 'TDSC-Rangpur', 1, NULL, NULL, NULL, NULL),
(177, 'TDSC-Bogura', 1, NULL, NULL, NULL, NULL),
(178, 'TDSC-Noongola', 1, NULL, NULL, NULL, NULL),
(179, 'TDSC-FO', 1, NULL, NULL, NULL, NULL),
(180, 'TDSC-Gaibandha', 1, NULL, NULL, NULL, NULL),
(181, 'FZHCC', 1, NULL, NULL, NULL, NULL),
(182, 'P-6', 1, NULL, NULL, NULL, NULL),
(183, 'TPSC (Joypurhat)', 1, NULL, NULL, NULL, NULL),
(184, 'Enterprise Cell', 1, NULL, NULL, NULL, NULL),
(185, 'TMSS Apparels Limited', 1, NULL, NULL, NULL, NULL),
(186, 'TMPN', 1, NULL, NULL, NULL, NULL),
(187, 'TDSC-Dupchahia', 1, NULL, NULL, NULL, NULL),
(188, 'TDSC-HO', 1, NULL, NULL, NULL, NULL),
(189, 'TNI (TMSS Nursing Institute)', 1, NULL, NULL, NULL, NULL),
(190, 'MBJ', 1, NULL, NULL, NULL, NULL),
(191, 'BCL Aviation LTD.', 1, NULL, NULL, NULL, NULL),
(192, 'Operation Monitoring Team (OMT)', 1, NULL, NULL, NULL, NULL),
(193, 'Prundro CTV', 1, NULL, NULL, NULL, NULL),
(194, 'TMAF', 1, NULL, NULL, NULL, NULL),
(195, 'TMBJSC', 1, NULL, NULL, NULL, NULL),
(196, 'TDSC-Joypurhat', 1, NULL, NULL, NULL, NULL),
(197, 'PC', 1, NULL, NULL, NULL, NULL),
(198, 'WKFNI', 1, NULL, NULL, NULL, NULL),
(199, 'Marketing & Branding', 1, NULL, NULL, NULL, NULL),
(200, 'TCC (TMSS Cancer Centre)', 1, NULL, NULL, NULL, NULL),
(201, 'TBS', 1, NULL, NULL, NULL, NULL),
(202, 'OCT', 1, NULL, NULL, NULL, NULL),
(203, 'TFZH', 1, NULL, NULL, NULL, NULL),
(204, 'CMSME (Cottage Micro & Small Medium Enterprise)', 1, NULL, NULL, NULL, NULL),
(205, 'LIGA', 1, NULL, NULL, NULL, NULL),
(206, 'JFNI', 1, NULL, NULL, NULL, NULL),
(207, 'Sujabad Educational Complex', 1, NULL, NULL, NULL, NULL),
(208, 'SQAR', 1, NULL, NULL, NULL, NULL),
(209, 'OP & IT', 1, NULL, NULL, NULL, NULL),
(210, 'Mituli Family Trust', 1, NULL, NULL, NULL, NULL),
(211, 'RDP (Research Development and Publication)', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `grade`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Executive Director', 1, 1, NULL, NULL, NULL, NULL),
(2, 'Deputy Executive Director', 2, 1, NULL, NULL, NULL, NULL),
(3, 'Director', 3, 1, NULL, NULL, NULL, NULL),
(4, 'Joint Director', 4, 1, NULL, NULL, NULL, NULL),
(5, 'Deputy Director', 5, 1, NULL, NULL, NULL, NULL),
(6, 'Senior Assistant Director', 6, 1, NULL, NULL, NULL, NULL),
(7, 'Assistant Director', 7, 1, NULL, NULL, NULL, NULL),
(8, 'Senior Zonal Manager', 8, 1, NULL, NULL, NULL, NULL),
(9, 'Zonal Manager', 9, 1, NULL, NULL, NULL, NULL),
(10, 'Asst. Zonal Manager', 10, 1, NULL, NULL, NULL, NULL),
(11, 'Area Manager', 11, 1, NULL, NULL, NULL, NULL),
(12, 'Additional Area Manager', 12, 1, NULL, NULL, NULL, NULL),
(13, 'Deputy Area Manager', 13, 1, NULL, NULL, NULL, NULL),
(14, 'Junior Area Manager', 14, 1, NULL, NULL, NULL, NULL),
(15, 'Senior Branch Manager', 15, 1, NULL, NULL, NULL, NULL),
(16, 'Deputy Sr. Branch Manager', 16, 1, NULL, NULL, NULL, NULL),
(17, 'Branch Manager', 17, 1, NULL, NULL, NULL, NULL),
(18, 'Asst. Branch Manager', 18, 1, NULL, NULL, NULL, NULL),
(19, 'Senior Supervisor', 19, 1, NULL, NULL, NULL, NULL),
(20, 'Deputy Senior Supervisor', 20, 1, NULL, NULL, NULL, NULL),
(21, 'Field Supervisor', 21, 1, NULL, NULL, NULL, NULL),
(22, 'Asst. Field Supervisor', 22, 1, NULL, NULL, NULL, NULL),
(23, 'Senior Village Organizer', 23, 1, NULL, NULL, NULL, NULL),
(24, 'Deputy Sr. Village Organizer', 24, 1, NULL, NULL, NULL, NULL),
(25, 'Village Organizer', 25, 1, NULL, NULL, NULL, NULL),
(26, 'SWA', 26, 1, NULL, NULL, NULL, NULL),
(27, 'WA', 27, 1, NULL, NULL, NULL, NULL),
(28, 'JWA', 28, 1, NULL, NULL, NULL, NULL),
(29, 'Unit Manager', 17, 1, NULL, NULL, NULL, NULL),
(30, 'IT Specialist', 7, 1, NULL, NULL, NULL, NULL),
(31, 'N/A', 0, 1, NULL, NULL, NULL, NULL),
(32, 'Senior Skilled Driver', 15, 1, NULL, NULL, NULL, NULL),
(33, 'Senior Driver', 16, 1, NULL, NULL, NULL, NULL),
(34, 'Assistant Skilled Senior Driver', 17, 1, NULL, NULL, NULL, NULL),
(35, 'Assistant Senior Driver', 18, 1, NULL, NULL, NULL, NULL),
(36, 'Skilled Driver', 19, 1, NULL, NULL, NULL, NULL),
(37, 'Driver', 20, 1, NULL, NULL, NULL, NULL),
(38, 'Junior Skilled Driver', 21, 1, NULL, NULL, NULL, NULL),
(39, 'Junior Driver', 22, 1, NULL, NULL, NULL, NULL),
(40, 'Assistant Nurse', 21, 1, NULL, NULL, NULL, NULL),
(41, 'Branch Accountant Cum Computer Operator', 18, 1, NULL, NULL, NULL, NULL),
(42, 'Accounts Officer', 15, 1, NULL, NULL, NULL, NULL),
(43, 'Site Engineer', 11, 1, NULL, NULL, NULL, NULL),
(44, 'Computer Operator', 18, 1, NULL, NULL, NULL, NULL),
(45, 'Accountant', 17, 1, NULL, NULL, NULL, NULL),
(46, 'Biniyog Kormi', 21, 1, NULL, NULL, NULL, NULL),
(48, 'Assistant Staff Nurse', 21, 1, NULL, NULL, NULL, NULL),
(49, 'Medical Assistant', 17, 1, NULL, NULL, NULL, NULL),
(50, 'Architect', 7, 1, NULL, NULL, NULL, NULL),
(53, 'Computer Operator', 17, 1, NULL, NULL, NULL, NULL),
(54, 'Chief Medical Physicist', 4, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_bn` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'Bagerhat', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(2, 1, 'Bandarban', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(3, 4, 'Barguna', '??????????????????', 1, NULL, NULL, NULL, NULL),
(4, 4, 'Barishal', '??????????????????', 1, NULL, NULL, NULL, NULL),
(5, 4, 'Bhola', '????????????', 1, NULL, NULL, NULL, NULL),
(6, 2, 'Bogura', '???????????????', 1, NULL, NULL, NULL, NULL),
(7, 1, 'Brahmanbaria', '????????????????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(8, 1, 'Chandpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(9, 2, 'Chapainawabganj', '??????????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(10, 1, 'Chattogram', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(11, 3, 'Chuadanga', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(12, 1, 'Coxsbazar', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(13, 1, 'Cumilla', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(14, 6, 'Dhaka', '????????????', 1, NULL, NULL, NULL, NULL),
(15, 7, 'Dinajpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(16, 6, 'Faridpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(17, 1, 'Feni', '????????????', 1, NULL, NULL, NULL, NULL),
(18, 7, 'Gaibandha', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(19, 6, 'Gazipur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(20, 6, 'Gopalganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(21, 5, 'Habiganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(22, 8, 'Jamalpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(23, 3, 'Jashore', '????????????', 1, NULL, NULL, NULL, NULL),
(24, 4, 'Jhalakathi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(25, 3, 'Jhenaidah', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(26, 2, 'Joypurhat', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(27, 1, 'Khagrachhari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(28, 3, 'Khulna', '???????????????', 1, NULL, NULL, NULL, NULL),
(29, 6, 'Kishoreganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(30, 7, 'Kurigram', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(31, 3, 'Kushtia', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(32, 1, 'Lakshmipur', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(33, 7, 'Lalmonirhat', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(34, 6, 'Madaripur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(35, 3, 'Magura', '??????????????????', 1, NULL, NULL, NULL, NULL),
(36, 6, 'Manikganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(37, 3, 'Meherpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(38, 5, 'Moulvibazar', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(39, 6, 'Munshiganj', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(40, 8, 'Mymensingh', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(41, 2, 'Naogaon', '???????????????', 1, NULL, NULL, NULL, NULL),
(42, 3, 'Narail', '??????????????????', 1, NULL, NULL, NULL, NULL),
(43, 6, 'Narayanganj', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(44, 6, 'Narsingdi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(45, 2, 'Natore', '???????????????', 1, NULL, NULL, NULL, NULL),
(46, 8, 'Netrokona', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(47, 7, 'Nilphamari', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(48, 1, 'Noakhali', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(49, 2, 'Pabna', '???????????????', 1, NULL, NULL, NULL, NULL),
(50, 7, 'Panchagarh', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(51, 4, 'Patuakhali', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(52, 4, 'Pirojpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(53, 6, 'Rajbari', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(54, 2, 'Rajshahi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(55, 1, 'Rangamati', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(56, 7, 'Rangpur', '???????????????', 1, NULL, NULL, NULL, NULL),
(57, 3, 'Satkhira', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(58, 6, 'Shariatpur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(59, 8, 'Sherpur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(60, 2, 'Sirajganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(61, 5, 'Sunamganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(62, 5, 'Sylhet', '???????????????', 1, NULL, NULL, NULL, NULL),
(63, 6, 'Tangail', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(64, 7, 'Thakurgaon', '???????????????????????????', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_bn` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Chattogram', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(2, 'Rajshahi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(3, 'Khulna', '???????????????', 1, NULL, NULL, NULL, NULL),
(4, 'Barishal', '??????????????????', 1, NULL, NULL, NULL, NULL),
(5, 'Sylhet', '???????????????', 1, NULL, NULL, NULL, NULL),
(6, 'Dhaka', '????????????', 1, NULL, NULL, NULL, NULL),
(7, 'Rangpur', '???????????????', 1, NULL, NULL, NULL, NULL),
(8, 'Mymensingh', '????????????????????????', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `sector_id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, 'N/A', 1, NULL, NULL, NULL, NULL),
(2, 5, 'N/I', 1, NULL, NULL, NULL, NULL),
(3, 3, 'ES', 1, NULL, NULL, NULL, NULL),
(4, 2, 'THS', 1, NULL, NULL, NULL, NULL),
(5, 3, 'A&F', 1, NULL, NULL, NULL, NULL),
(6, 1, 'P-1', 1, NULL, NULL, NULL, NULL),
(7, 3, 'P-2', 1, NULL, NULL, NULL, NULL),
(8, 8, 'P-3', 1, NULL, NULL, NULL, NULL),
(9, 7, 'P-4', 1, NULL, NULL, NULL, NULL),
(10, 3, 'HRM&A', 1, NULL, NULL, NULL, NULL),
(11, 8, 'HRD', 1, NULL, NULL, NULL, NULL),
(12, 1, 'HEM', 1, NULL, NULL, NULL, NULL),
(13, 8, 'TD', 1, NULL, NULL, NULL, NULL),
(14, 8, 'HRD&T', 1, NULL, NULL, NULL, NULL),
(15, 3, 'CV', 1, NULL, NULL, NULL, NULL),
(16, 3, 'A&C', 1, NULL, NULL, NULL, NULL),
(17, 4, 'Education', 1, NULL, NULL, NULL, NULL),
(18, 9, 'ICT', 1, NULL, NULL, NULL, NULL),
(19, 6, 'Program', 1, NULL, NULL, NULL, NULL),
(20, 4, 'Construction', 1, NULL, NULL, NULL, NULL),
(21, 3, 'GG', 1, NULL, NULL, NULL, NULL),
(22, 3, 'ES & LS', 1, NULL, NULL, NULL, NULL),
(23, 4, 'Agriculture Department (AD)', 1, NULL, NULL, NULL, NULL),
(24, 6, 'P-5', 1, NULL, NULL, NULL, NULL),
(25, 1, 'HEM-OP-1 (Bogura)', 1, NULL, NULL, NULL, NULL),
(26, 1, 'HEM-OP-2 (Dhaka)', 1, NULL, NULL, NULL, NULL),
(27, 1, 'HEM-OP-3 (Rajshahi)', 1, NULL, NULL, NULL, NULL),
(28, 3, 'BCL', 1, NULL, NULL, NULL, NULL),
(29, 3, 'Agriculture Domain (AD)', 1, NULL, NULL, NULL, NULL),
(30, 1, 'HEM-ARM & GG', 1, NULL, NULL, NULL, NULL),
(31, 1, 'TIMF', 1, NULL, NULL, NULL, NULL),
(32, 1, 'HEM-OP-4 (Rangpur)', 1, NULL, NULL, NULL, NULL),
(33, 1, 'HEM-OP-5 (Chattogram)', 1, NULL, NULL, NULL, NULL),
(34, 1, 'HEM-OP-6 (Khulna)', 1, NULL, NULL, NULL, NULL),
(35, 1, 'HEM-OP-7 (Sylhet)', 1, NULL, NULL, NULL, NULL),
(36, 1, 'HEM-OP-8 (Barishal)', 1, NULL, NULL, NULL, NULL),
(37, 8, 'Religious Complex', 1, NULL, NULL, NULL, NULL),
(38, 8, 'P-6', 1, NULL, NULL, NULL, NULL),
(39, 1, 'HEM-OP-9 (Dinajpur)', 1, NULL, NULL, NULL, NULL),
(40, 1, 'HEM-OP-10 (Cumilla)', 1, NULL, NULL, NULL, NULL),
(41, 7, 'TBS', 1, NULL, NULL, NULL, NULL),
(42, 1, 'HEM-OP-11 (Natore)', 1, NULL, NULL, NULL, NULL),
(43, 9, 'P-7', 1, NULL, NULL, NULL, NULL),
(44, 1, 'HEM-OP-12 (Mymensingh)', 1, NULL, NULL, NULL, NULL),
(45, 1, 'HEM Grand Sector', 1, NULL, NULL, NULL, NULL),
(46, 2, 'Grand Health Sector', 1, NULL, NULL, NULL, NULL),
(47, 2, 'Medical Service Domain', 1, NULL, NULL, NULL, NULL),
(48, 2, 'Medical Education-1 Domain', 1, NULL, NULL, NULL, NULL),
(49, 2, 'Medical Education-2 Domain', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `form_file` varchar(255) DEFAULT NULL,
  `form_type` varchar(255) DEFAULT NULL,
  `form_name_english` varchar(255) DEFAULT NULL,
  `form_name_bangla` varchar(255) DEFAULT NULL,
  `form_category` varchar(255) DEFAULT NULL,
  `form_type_doc` varchar(255) DEFAULT NULL,
  `form_type_pdf` varchar(255) DEFAULT NULL,
  `form_type_xls` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `form_name`, `form_file`, `form_type`, `form_name_english`, `form_name_bangla`, `form_category`, `form_type_doc`, `form_type_pdf`, `form_type_xls`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, '??????????????? ???????????????????????? ?????????', '202302260429Nomini .pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 22:29:19', NULL),
(7, '??????????????? ???????????????????????? ????????? (?????????????????? ???????????????????????????)', '202302260429Nomini - with guardian.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 22:29:53', NULL),
(8, '??????????????????????????? ???????????????????????? ?????????', '202302260430Guardian Update.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 22:30:13', NULL),
(9, '?????????????????? ?????????', '202302270535TMSS joining form-last updated-05-2-23_2.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-27 13:35:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `educational_qualifications`
--

CREATE TABLE `educational_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `educational_qualifications`
--

INSERT INTO `educational_qualifications` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Class One', 1, NULL, NULL, NULL, NULL),
(2, 'Class Two', 1, NULL, NULL, NULL, NULL),
(3, 'Class Three', 1, NULL, NULL, NULL, NULL),
(4, 'Class Four', 1, NULL, NULL, NULL, NULL),
(5, 'Class Five', 1, NULL, NULL, NULL, NULL),
(6, 'Class Six', 1, NULL, NULL, NULL, NULL),
(7, 'Class Seven', 1, NULL, NULL, NULL, NULL),
(8, 'Class Eight', 1, NULL, NULL, NULL, NULL),
(9, 'Class Nine', 1, NULL, NULL, NULL, NULL),
(10, 'Class Ten', 1, NULL, NULL, NULL, NULL),
(11, 'DAKHIL', 1, NULL, NULL, NULL, NULL),
(12, 'HSC', 1, NULL, NULL, NULL, NULL),
(13, 'ALIM', 1, NULL, NULL, NULL, NULL),
(14, 'Diploma in Commerce', 1, NULL, NULL, NULL, NULL),
(15, 'Paramedics', 1, NULL, NULL, NULL, NULL),
(16, 'Diploma Eng', 1, NULL, NULL, NULL, NULL),
(17, 'Diploma in Ag', 1, NULL, NULL, NULL, NULL),
(18, 'Higher Diploma Eng', 1, NULL, NULL, NULL, NULL),
(19, 'PGD', 1, NULL, NULL, NULL, NULL),
(20, 'CA(CC)', 1, NULL, NULL, NULL, NULL),
(21, 'BA', 1, NULL, NULL, NULL, NULL),
(22, 'FAZIL', 1, NULL, NULL, NULL, NULL),
(23, 'B Com', 1, NULL, NULL, NULL, NULL),
(24, 'B Sc', 1, NULL, NULL, NULL, NULL),
(25, 'BBS', 1, NULL, NULL, NULL, NULL),
(26, 'Hons', 1, NULL, NULL, NULL, NULL),
(27, 'BBA', 1, NULL, NULL, NULL, NULL),
(28, 'LLB', 1, NULL, NULL, NULL, NULL),
(29, 'B Ed', 1, NULL, NULL, NULL, NULL),
(30, 'MBBS', 1, NULL, NULL, NULL, NULL),
(31, 'DVM', 1, NULL, NULL, NULL, NULL),
(32, 'FCPS', 1, NULL, NULL, NULL, NULL),
(33, 'FRCS', 1, NULL, NULL, NULL, NULL),
(34, 'BSS', 1, NULL, NULL, NULL, NULL),
(35, 'B Ag', 1, NULL, NULL, NULL, NULL),
(36, 'BSC Eng', 1, NULL, NULL, NULL, NULL),
(37, 'BSC Agri Eng', 1, NULL, NULL, NULL, NULL),
(38, 'MA Ag', 1, NULL, NULL, NULL, NULL),
(39, 'MS in Ag', 1, NULL, NULL, NULL, NULL),
(40, 'MBA', 1, NULL, NULL, NULL, NULL),
(41, 'MBS', 1, NULL, NULL, NULL, NULL),
(42, 'MA', 1, NULL, NULL, NULL, NULL),
(43, 'KAMIL', 1, NULL, NULL, NULL, NULL),
(44, 'MSS', 1, NULL, NULL, NULL, NULL),
(45, 'M Sc', 1, NULL, NULL, NULL, NULL),
(46, 'M Com', 1, NULL, NULL, NULL, NULL),
(47, 'M Phil', 1, NULL, NULL, NULL, NULL),
(48, 'Ph D', 1, NULL, NULL, NULL, NULL),
(49, 'Matriculation', 1, NULL, NULL, NULL, NULL),
(50, 'N/I', 1, NULL, NULL, NULL, NULL),
(51, 'BA(Hons)', 1, NULL, NULL, NULL, NULL),
(52, 'B Ed', 1, NULL, NULL, NULL, NULL),
(53, 'Diploma in Medical Technology', 1, NULL, NULL, NULL, NULL),
(54, 'Diploma in Midwifery', 1, NULL, NULL, NULL, NULL),
(55, 'Fazil B.A. (Special)', 1, NULL, NULL, NULL, NULL),
(56, 'Bachelor of Laws', 1, NULL, NULL, NULL, NULL),
(57, 'Master of Laws', 1, NULL, NULL, NULL, NULL),
(58, 'BA (Special)', 1, NULL, NULL, NULL, NULL),
(59, 'Research', 1, NULL, NULL, NULL, NULL),
(60, 'General', 1, NULL, NULL, NULL, NULL),
(61, 'BSC (Pass)', 1, NULL, NULL, NULL, NULL),
(62, 'B.Com (Pass)', 1, NULL, NULL, NULL, NULL),
(63, 'SSC', 1, NULL, NULL, NULL, NULL),
(64, 'Diploma in Computer Engineering', 1, NULL, NULL, NULL, NULL),
(65, 'MPH', 1, NULL, NULL, NULL, NULL),
(66, 'Diploma in Elec.', 1, NULL, NULL, NULL, NULL),
(67, 'Diploma in MATS', 1, NULL, NULL, NULL, NULL),
(68, 'Bangladesh Nursing Council', 1, NULL, NULL, NULL, NULL),
(69, 'BBM', 1, NULL, NULL, NULL, NULL),
(70, 'Dipolma in Paramedical', 1, NULL, NULL, NULL, NULL),
(71, 'Diploma in Textile Engg', 1, NULL, NULL, NULL, NULL),
(72, 'MEd', 1, NULL, NULL, NULL, NULL),
(73, 'Diploma in Nursing', 1, NULL, NULL, NULL, NULL),
(74, 'B.SC Fisheries (Hons)', 1, NULL, NULL, NULL, NULL),
(75, 'B.Sc in CSE', 1, NULL, NULL, NULL, NULL),
(76, 'BSS(Honours)', 1, NULL, NULL, NULL, NULL),
(77, 'BBS(Honours)', 1, NULL, NULL, NULL, NULL),
(78, 'BSc(Honours)', 1, NULL, NULL, NULL, NULL),
(79, 'BNS (Bachelor of Nursing Science)', 1, NULL, NULL, NULL, NULL),
(80, 'B. Pharma (Honours)', 1, NULL, NULL, NULL, NULL),
(81, 'BSc in Nursing', 1, NULL, NULL, NULL, NULL),
(82, 'Diploma in Medical Faculty', 1, NULL, NULL, NULL, NULL),
(83, 'Bachelor of Computer Science & Information Technology', 1, NULL, NULL, NULL, NULL),
(84, 'Masters in Computer Science & Engineering', 1, NULL, NULL, NULL, NULL),
(85, 'Diploma in Library and Information Science', 1, NULL, NULL, NULL, NULL),
(86, 'Diploma in Lab Medicine', 1, NULL, NULL, NULL, NULL),
(87, 'Diploma in Nursing Science & Midwifery', 1, NULL, NULL, NULL, NULL),
(88, 'Diploma in Nursing Science & Orthopedic Nursing', 1, NULL, NULL, NULL, NULL),
(89, 'Diploma in Dental Technology', 1, NULL, NULL, NULL, NULL),
(90, 'Diploma in Pharmacy', 1, NULL, NULL, NULL, NULL),
(91, 'Diploma in Laboratory Medicine', 1, NULL, NULL, NULL, NULL),
(92, 'Diploma in Laboratory Technology', 1, NULL, NULL, NULL, NULL),
(93, 'B.T.I.S (Honours)', 1, NULL, NULL, NULL, NULL),
(94, 'M.T.I.S', 1, NULL, NULL, NULL, NULL),
(95, 'EMBA', 1, NULL, NULL, NULL, NULL),
(96, 'MS', 1, NULL, NULL, NULL, NULL),
(97, 'MBS(Honours)', 1, NULL, NULL, NULL, NULL),
(98, 'BBA(Honours)', 1, NULL, NULL, NULL, NULL),
(99, 'MATC', 1, NULL, NULL, NULL, NULL),
(100, 'JSC', 1, NULL, NULL, NULL, NULL),
(101, 'BDS', 1, NULL, NULL, NULL, NULL),
(102, 'Diploma-In-Health Technology', 1, NULL, NULL, NULL, NULL),
(103, 'Sr. Certificate in Nursing', 1, NULL, NULL, NULL, NULL),
(104, 'Sr. Certificate in Midwifery', 1, NULL, NULL, NULL, NULL),
(105, 'Community Paramedic', 1, NULL, NULL, NULL, NULL),
(106, 'Bachelor of Science in Agriculture (Honours)', 1, NULL, NULL, NULL, NULL),
(107, 'Bachelor of Science in Computer Science and Engineering', 1, NULL, NULL, NULL, NULL),
(108, 'M.Sc in ICT', 1, NULL, NULL, NULL, NULL),
(109, 'B Com(Honours)', 1, NULL, NULL, NULL, NULL),
(110, 'CCD', 1, NULL, NULL, NULL, NULL),
(111, 'FCGP', 1, NULL, NULL, NULL, NULL),
(112, 'Diploma in Ophthalmalogy', 1, NULL, NULL, NULL, NULL),
(113, 'DLO', 1, NULL, NULL, NULL, NULL),
(114, 'MCPS', 1, NULL, NULL, NULL, NULL),
(115, 'DGO', 1, NULL, NULL, NULL, NULL),
(116, 'Chittagong University', 1, NULL, NULL, NULL, NULL),
(117, 'Diploma in Anaesthesiology', 1, NULL, NULL, NULL, NULL),
(118, 'MD', 1, NULL, NULL, NULL, NULL),
(119, 'Bachelor of Science in Computer Science and Engineering', 1, NULL, NULL, NULL, NULL),
(120, 'Diploma in Forestry', 1, NULL, NULL, NULL, NULL),
(121, 'BDS/MS', 1, NULL, NULL, NULL, NULL),
(122, 'B.Sc in Textile Eng.', 1, NULL, NULL, NULL, NULL),
(123, 'DTCD', 1, NULL, NULL, NULL, NULL),
(124, 'D-ORTHO', 1, NULL, NULL, NULL, NULL),
(125, 'BSc Agri. (Hons)', 1, NULL, NULL, NULL, NULL),
(126, 'MFA', 1, NULL, NULL, NULL, NULL),
(127, 'BFA', 1, NULL, NULL, NULL, NULL),
(128, 'Diploma in Medical', 1, NULL, NULL, NULL, NULL),
(129, 'BFA (Honours)', 1, NULL, NULL, NULL, NULL),
(130, 'Bachelor of Physical Education', 1, NULL, NULL, NULL, NULL),
(131, 'B.Sc in Electronics & Telecommunication Engineering (ETE)', 1, NULL, NULL, NULL, NULL),
(132, 'Bachelor of Technology in IT', 1, NULL, NULL, NULL, NULL),
(133, 'Diploma in Dermatology', 1, NULL, NULL, NULL, NULL),
(134, 'Diploma in Forensic Medicine', 1, NULL, NULL, NULL, NULL),
(135, 'Diploma in Medical Radiotherapy.', 1, NULL, NULL, NULL, NULL),
(136, 'Bachelor in Electrical and Electronics Engineering (EEE)', 1, NULL, NULL, NULL, NULL),
(137, 'Master of Surgery', 1, NULL, NULL, NULL, NULL),
(138, 'Bachelor of Agricultural Education', 1, NULL, NULL, NULL, NULL),
(139, 'Bachelor of Architechture', 1, NULL, NULL, NULL, NULL),
(140, 'Bachelor of Ayurbedic Medicine and Surgery', 1, NULL, NULL, NULL, NULL),
(141, 'Bsc in Physiotherapy', 1, NULL, NULL, NULL, NULL),
(142, 'Bsc in Health Technology', 1, NULL, NULL, NULL, NULL),
(143, 'Mass Education', 1, NULL, NULL, NULL, NULL),
(144, 'Bachelor of Unani Medicine and Surgery', 1, NULL, NULL, NULL, NULL),
(145, 'PGD in Medical Ultrasound Diagnostic', 1, NULL, NULL, NULL, NULL),
(146, 'PGD in Orthopedics', 1, NULL, NULL, NULL, NULL),
(147, 'Msc in Aquaculture', 1, NULL, NULL, NULL, NULL),
(148, 'LLM', 1, NULL, NULL, NULL, NULL),
(149, 'Fazil Honors', 1, NULL, NULL, NULL, NULL),
(150, 'Diploma in Business Studies', 1, NULL, NULL, NULL, NULL),
(151, 'Doctor of Medicine', 1, NULL, NULL, NULL, NULL),
(152, 'Bachelor in Optometry Programme', 1, NULL, NULL, NULL, NULL),
(153, 'Diploma in Optometry and Low Vision', 1, NULL, NULL, NULL, NULL),
(154, 'Diploma in Electro-Medical', 1, NULL, NULL, NULL, NULL),
(155, 'JDC', 1, NULL, NULL, NULL, NULL),
(156, 'Bachelor of Science in Fisheries', 1, NULL, NULL, NULL, NULL),
(157, 'LLB (Honors)', 1, NULL, NULL, NULL, NULL),
(158, 'Bsc of Leather Technology', 1, NULL, NULL, NULL, NULL),
(159, 'PGD in Personnel Management', 1, NULL, NULL, NULL, NULL),
(160, 'Master of Medical Science', 1, NULL, NULL, NULL, NULL),
(161, 'BBA in Agribusiness', 1, NULL, NULL, NULL, NULL),
(162, 'Senior Certificate in Nursing', 1, NULL, NULL, NULL, NULL),
(163, 'Senior Midwife Certificate', 1, NULL, NULL, NULL, NULL),
(164, 'Diploma in Computer Science and Engineering', 1, NULL, NULL, NULL, NULL),
(165, 'B.Sc in Mechanical Engineering', 1, NULL, NULL, NULL, NULL),
(166, 'Master of Development Studies', 1, NULL, NULL, NULL, NULL),
(167, 'Diploma in Clinical Pathology', 1, NULL, NULL, NULL, NULL),
(168, 'PGD in Cardiology', 1, NULL, NULL, NULL, NULL),
(169, 'PGT', 1, NULL, NULL, NULL, NULL),
(170, 'Bachelor of Agricultural Economics', 1, NULL, NULL, NULL, NULL),
(171, 'Master of Agricultural Economics', 1, NULL, NULL, NULL, NULL),
(172, 'Diploma in Medical Ultrasound', 1, NULL, NULL, NULL, NULL),
(173, 'Master of Science in Aquaculture', 1, NULL, NULL, NULL, NULL),
(174, 'Bachelor of Science in Optometry', 1, NULL, NULL, NULL, NULL),
(175, 'Diploma in Fisheries', 1, NULL, NULL, NULL, NULL),
(176, 'Master in Nursing', 1, NULL, NULL, NULL, NULL),
(177, 'Master in Public Health', 1, NULL, NULL, NULL, NULL),
(178, 'Diploma in Primary Health Care', 1, NULL, NULL, NULL, NULL),
(179, 'Master in Early Childhood Development', 1, NULL, NULL, NULL, NULL),
(180, 'Bsc in Mechatronics Engineering', 1, NULL, NULL, NULL, NULL),
(181, 'B.Sc in Public Health Nursing', 1, NULL, NULL, NULL, NULL),
(182, 'Fadil', 1, NULL, NULL, NULL, NULL),
(183, 'Diploma in Indo-Allopathy Medicine (DIAM)', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `efiles`
--

CREATE TABLE `efiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_types`
--

CREATE TABLE `employee_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee_types`
--

INSERT INTO `employee_types` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'SR-TMSS (101)', 1, NULL, NULL, NULL, NULL),
(2, 'Pay Scale-THS (102)', 1, NULL, NULL, NULL, NULL),
(3, 'Pay Scale-TIT (103)', 1, NULL, NULL, NULL, NULL),
(4, 'Pay Scale-TPSC (104)', 1, NULL, NULL, NULL, NULL),
(5, 'Contract Based (201)', 1, NULL, NULL, NULL, NULL),
(6, 'Project Staff (301)', 1, NULL, NULL, NULL, NULL),
(7, 'Consultant (601)', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Male', 1, NULL, NULL, NULL, NULL),
(2, 'Female', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_statuses`
--

CREATE TABLE `job_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marital_statuses`
--

CREATE TABLE `marital_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `marital_statuses`
--

INSERT INTO `marital_statuses` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Married', 1, NULL, NULL, NULL, NULL),
(2, 'Unmarried', 1, NULL, NULL, NULL, NULL),
(3, 'Widow', 1, NULL, NULL, NULL, NULL),
(4, 'Divorcee', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_16_094302_create_suppliers_table', 1),
(6, '2022_04_16_181230_create_customers_table', 1),
(7, '2022_04_16_202829_create_units_table', 1),
(8, '2022_04_17_055455_create_categories_table', 1),
(9, '2022_04_17_194251_create_products_table', 1),
(10, '2022_04_18_184636_create_purchases_table', 1),
(11, '2022_04_23_204340_create_invoices_table', 1),
(12, '2022_04_23_204653_create_invoice_details_table', 1),
(13, '2022_04_23_204725_create_payments_table', 1),
(14, '2022_04_23_204757_create_payment_details_table', 1),
(15, '2023_01_30_020542_create_sectors_table', 1),
(16, '2023_02_01_122029_create_setups_table', 1),
(17, '2023_02_01_125547_create_domains_table', 1),
(18, '2023_02_01_154211_create_designations_table', 1),
(19, '2023_02_02_052820_create_divisions_table', 1),
(20, '2023_02_02_053155_create_districts_table', 1),
(21, '2023_02_02_053211_create_upazillas_table', 1),
(22, '2023_02_02_084353_create_employee_types_table', 1),
(23, '2023_02_02_085205_create_zones_table', 1),
(24, '2023_02_02_085528_create_areas_table', 1),
(25, '2023_02_02_085754_create_branches_table', 1),
(26, '2023_02_02_085900_create_departments_table', 1),
(27, '2023_02_02_085958_create_educational_qualifications_table', 1),
(28, '2023_02_02_090035_create_job_statuses_table', 1),
(29, '2023_02_02_090044_create_genders_table', 1),
(30, '2023_02_02_090109_create_marital_statuses_table', 1),
(31, '2023_02_02_090127_create_religions_table', 1),
(32, '2023_02_02_090147_create_blood_groups_table', 1),
(33, '2023_02_02_162311_create_new_employees_table', 1),
(34, '2023_02_15_054806_create_efiles_table', 1),
(35, '2023_02_16_151423_create_downloads_table', 2),
(36, '2023_02_17_141925_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20);

-- --------------------------------------------------------

--
-- Table structure for table `new_employees`
--

CREATE TABLE `new_employees` (
  `id` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation_id` varchar(255) DEFAULT 'N/I',
  `joiningdate` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `domain_id` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `marital_status_id` varchar(255) DEFAULT NULL,
  `birth_place_district_id` varchar(255) DEFAULT NULL,
  `present_village` varchar(255) DEFAULT NULL,
  `present_post` varchar(255) DEFAULT NULL,
  `present_postal_code` varchar(255) DEFAULT NULL,
  `present_division_id` varchar(255) DEFAULT NULL,
  `present_district_id` varchar(255) DEFAULT NULL,
  `present_upazilla_id` varchar(255) DEFAULT NULL,
  `permanent_village` varchar(255) DEFAULT NULL,
  `permanent_post` varchar(255) DEFAULT NULL,
  `permanent_postal_code` varchar(255) DEFAULT NULL,
  `permanent_division_id` varchar(255) DEFAULT NULL,
  `permanent_district_id` varchar(255) DEFAULT NULL,
  `permanent_upazilla_id` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `smartcard` varchar(255) DEFAULT NULL,
  `blood_groups_id` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `educational_qualification_id` varchar(255) DEFAULT NULL,
  `employee_type_id` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `new_employees`
--

INSERT INTO `new_employees` (`id`, `name`, `designation_id`, `joiningdate`, `date_of_birth`, `domain_id`, `father_name`, `mother_name`, `marital_status_id`, `birth_place_district_id`, `present_village`, `present_post`, `present_postal_code`, `present_division_id`, `present_district_id`, `present_upazilla_id`, `permanent_village`, `permanent_post`, `permanent_postal_code`, `permanent_division_id`, `permanent_district_id`, `permanent_upazilla_id`, `nid`, `smartcard`, `blood_groups_id`, `mobile`, `email`, `educational_qualification_id`, `employee_type_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('10135970', 'Md. Mr. Zinnah', '19', '2023-02-26', '1994-09-20', '39', 'Md. Nurul Islam', 'Most. Jobeda Khatun', '1', '47', 'South Bahageli Kacharipara', 'Moynakuri', '5300', '7', '47', '426', 'South Bahageli Kacharipara', 'Moynakuri', '5300', '7', '47', '426', NULL, '8250534867', '8', '01755721617', 'mdtousifzinnah49@gmail.com', '40', '1', 0, 9, 1, '2023-02-28 11:24:10', '2023-02-28 16:10:20'),
('10135971', 'Md. Samirul Islam', '19', '2023-02-26', '1996-12-10', '39', 'Md. Ramjan Ali', 'Mst. Parul Begum', '1', '64', 'KARNAI', 'KARNAI', '5110', '7', '64', '438', 'KARNAI', 'KARNAI', '5110', '7', '64', '438', '6893788304', '6893788304', '7', '01774286303', 'mdtousifzinnah49@gmail.com', '42', '1', 0, 9, 1, '2023-02-28 11:36:33', '2023-02-28 16:09:22'),
('10135972', 'Sumon Chandra Barmon', '19', '2023-02-26', '1992-06-10', '39', 'Karthik Chandra Barman', 'Minoti Rani', '2', '50', 'Barasingya', 'Barasfalupara', '5103', '7', '50', '400', 'Barasingya', 'Barasfalupara', '5103', '7', '50', '400', '5959674317', '5959674317', '3', '01750455588', 'sumonc210@gmail.com', '42', '1', 0, 9, 1, '2023-02-28 14:28:30', '2023-02-28 16:08:42'),
('10135973', 'Md. Hapijul Islam', '19', '2023-02-26', '1994-04-04', '39', 'Md. Atab Uddin', 'Hamida Begum', '2', '15', 'Uttar Horirampur', 'Jhanzira', '5200', '7', '15', '410', 'Uttar Horirampur', 'Jhanzira', '5200', '7', '15', '410', '2813430044', '2813430044', '1', '01783030717', 'mhapijul420@gmail.com', '42', '1', 0, 9, 1, '2023-02-28 14:47:09', '2023-02-28 16:08:30'),
('10135974', 'Ramkrishno Chandra Pal', '19', '2023-02-26', '1992-04-03', '39', 'Santosh Kumer Pal', 'Joba Rani Pal', '2', '15', 'Nasaratpur', 'Chirirbandor', '5240', '7', '15', '410', 'Nasaratpur', 'Chirirbandor', '5240', '7', '15', '410', '7339810546', '7339810546', '7', '01741698504', 'ramkrisnopalgemil@gmail.com', '44', '1', 0, 9, 1, '2023-02-28 14:55:35', '2023-02-28 16:08:06'),
('10135975', 'Md. Maminul Islam', '21', '2023-02-26', '1997-08-09', '39', 'Md. Sahab Ali', 'Mst. Mayana', '1', '64', 'Daulotpur', 'Kutgaon', '5110', '7', '64', '438', 'Daulotpur', 'Kutgaon', '5110', '7', '64', '438', '2402039917', '2402039917', '9', '01770076995', 'mdmominul6467@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 14:59:44', NULL),
('10135976', 'Md. Abdus Shadik', '21', '2023-02-26', '1997-12-15', '39', 'Md. Abdur Razzak', 'Most. Rebeka Sultana', '2', '47', 'Nijvhokdabari', 'Domar', '5340', '7', '47', '424', 'Nijvhokdabari', 'Domar', '5340', '7', '47', '424', '7802628870', '7802628870', '7', '01708986073', 'shadikshawon1480@gmail.com', '21', '1', 0, 9, NULL, '2023-02-28 15:06:26', NULL),
('10135977', 'Lablur Rahman', '21', '2023-02-26', '1988-12-31', '39', 'Md. Abdur Rasid', 'Laily', '1', '47', 'Purbo Khutamara', 'Purbo Khutamara', '5330', '7', '47', '425', 'Purbo Khutamara', 'Purbo Khutamara', '5330', '7', '47', '425', '5531617784', '5531617784', '8', '01714486887', 'www.lablurrahman@gmail.com', '34', '1', 0, 9, NULL, '2023-02-28 15:12:34', NULL),
('10135978', 'Md. Omar Faruk', '21', '2023-02-26', '1994-12-23', '39', 'Md. Mojibar Rahman', 'Mst. Parul Begum', '1', '15', 'Gobindapura', 'Manmathpur', '5250', '7', '15', '417', 'Gobindapura', 'Manmathpur', '5250', '7', '15', '417', '19942717760000026', NULL, '1', '01740186971', 'omarmdfaruk958@gmail.com', '21', '1', 0, 9, NULL, '2023-02-28 15:25:04', NULL),
('10135979', 'Md. Razu Ahmed', '21', '2023-02-26', '1993-09-15', '39', 'Late Samaj Uddin', 'Mst. Anjuara Begum', '2', '15', 'Goaldihi', 'Goaldihi', '5230', '7', '15', '415', 'Goaldihi', 'Goaldihi', '5230', '7', '15', '415', '19932716079000237', NULL, '9', '01759430869', 'omarmdfaruk958@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 15:33:22', NULL),
('10135980', 'Md. Idrish Ali Sohag', '21', '2023-02-26', '1997-02-05', '39', 'Md. Ramjan Ali', 'Mst. Rpwsanara Begum', '1', '64', 'Koshadangipara', 'Kosharaniganj', '5110', '7', '64', '446', 'Koshadangipara', 'Kosharaniganj', '5110', '7', '64', '446', '2852015631', NULL, '5', '01750665813', 'md4932582@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 15:38:03', NULL),
('10135981', 'Md. Abdur Rahim', '21', '2023-02-26', '1994-02-01', '39', 'Md. Hossain Ali', 'Mst. Mrina Begum', '2', '15', 'Uttar Polashbari', 'Chirirbandor', '5240', '7', '15', '409', 'Uttar Polashbari', 'Chirirbandor', '5240', '7', '15', '409', '5522538627', NULL, '7', '01757888257', 'md4932582@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 15:42:28', NULL),
('10135982', 'Harinath Roy', '21', '2023-02-26', '1996-10-23', '39', 'Sree Paresh Chandro Roy', 'Sre Moti Jutika Rani', '2', '56', 'Lalchandpur Sarkarpara', 'Sadar', '5400', '7', '56', '447', 'Lalchandpur Sarkarpara', 'Sadar', '5400', '7', '56', '447', '7776157237', NULL, '5', '01761314399', 'harnathray399@gmail.com', '25', '1', 0, 9, NULL, '2023-02-28 15:48:19', NULL),
('10135983', 'Shahadot Hossain', '21', '2023-02-26', '1988-06-02', '39', 'Momataz Ali', 'Shahida Begum', '1', '15', 'Dokkhin Mornai', 'Shialkate', '5250', '7', '15', '417', 'Dokkhin Mornai', 'Shialkate', '5250', '7', '15', '417', '2394314351', NULL, '3', '01751843213', 'shahadathossain261988@gmail.com', '42', '1', 0, 9, NULL, '2023-02-28 15:54:22', NULL),
('10135984', 'Md. Abdullah Al Mamun', '21', '2023-02-26', '1997-12-28', '39', 'Md. Foyez Uddin', 'Mst. Asma Begum', '2', '64', 'Sandharoi', 'Ranisonkail', '5120', '7', '64', '439', 'Sandharoi', 'Ranisonkail', '5120', '7', '64', '439', '2852174842', NULL, '5', '01778951875', 'md4932582@gmail.com', '12', '1', 0, 9, NULL, '2023-02-28 16:00:09', NULL),
('10135985', 'Md. Biplob  Hossain', '21', '2023-02-26', '1999-06-13', '34', 'Md. Sadbar Ali', 'Fulmoti Khatun', '1', '31', 'Betai', 'Gannabazar', NULL, '3', '25', '225', 'Betai', 'Gannabazar', NULL, '3', '25', '225', NULL, '6455020732', '1', '01777182925', 'biplobhossin@.com', '12', '1', 0, 15, 15, '2023-03-02 13:02:32', '2023-03-02 13:04:52'),
('10135986', 'Shamim Hossen', '21', '2023-02-26', '1999-06-03', '34', 'Md. Ziaul Hossen', 'Rebeka Khatun', '1', '23', 'Kashadanga', 'Jadobpur', NULL, '3', '23', '178', 'Kashadanga', 'Jadobpur', NULL, '3', '23', '178', NULL, '7354607310', '7', '01950146550', NULL, '12', '1', 0, 15, NULL, '2023-03-02 13:10:39', NULL),
('10135987', 'Kallol Kumar Biswas', '21', '2023-02-26', '1997-11-05', '34', 'Kartic Chandro Biswas', 'Minnoti Rani Biswas', '2', '23', 'Jaforpur', 'Rajghat', NULL, '3', '23', '171', 'Jaforpur', 'Rajghat', NULL, '3', '23', '171', NULL, '1027145075', '1', '01934262057', 'kallol262057@gmail.com', '12', '1', 0, 15, NULL, '2023-03-02 13:17:47', NULL),
('10135988', 'S.M. Sabbir Mahmud', '21', '2023-02-26', '2002-01-08', '34', 'S.M. Kamal Hossain', 'Mst. Shahana Aktar Saju', '2', '1', 'Baruikhali', 'Kachua', NULL, '3', '1', '56', 'Baruikhali', 'Kachua', NULL, '3', '1', '56', NULL, '3762904294', '5', '01316964554', 'rafinsanto775@gmail.com', '12', '1', 0, 15, NULL, '2023-03-02 13:30:06', NULL),
('10135989', 'Md. Muzahidul Islam', '21', '2023-02-26', '1998-11-25', '34', 'Md. Babul Hossain', 'Mst. Anzura Begum', '2', '23', 'Osmanpur', 'Fulbari', NULL, '3', '23', '174', 'Osmanpur', 'Fulbari', NULL, '3', '23', '174', NULL, '8255029491', '7', '01777986019', 'rimongm1@gmail.com', '12', '1', 0, 15, NULL, '2023-03-02 13:36:33', NULL),
('10135990', 'Md. Alamin Sheikh', '21', '2023-02-26', '1999-05-07', '34', 'Md. Mostofa Kamal', 'Most. Parul Begum', '2', '28', 'Moniber Bari Stadiumer Dhokkhin Pase, Boira', 'Khulna GPO 9000', NULL, '3', '28', 'Select Upazilla', 'Moniber Bari Stadiumer Dhokkhin Pase, Boira', 'Khulna GPO 9000', NULL, '3', '28', 'Select Upazilla', NULL, '7809809671', '5', '01977141325', NULL, '12', '1', 0, 15, NULL, '2023-03-02 13:45:06', NULL),
('10136015', 'Suruzzaman', '21', '2023-02-26', '2001-04-03', '26', 'Shohidul Islam', 'Sukhi Begam', '2', '63', 'Punglipara', '0', '0', '6', '63', '335', 'Punglipara', '0', '0', '6', '63', '335', NULL, '6012839525', '3', '01772660421', 'mdsuruzzaman840@gmail.com', '12', '1', 0, 17, 17, '2023-02-28 16:29:56', '2023-02-28 16:32:45'),
('10136016', 'Beauty Khatun', '21', '2023-02-26', '2001-02-05', '26', 'Barek Mondol', 'Sabina Begum', '2', '63', 'Polisha', '0', '0', 'Select Division', '63', '335', 'Polisha', '0', '0', 'Select Division', '63', '335', '0', '8714859611', '1', '01308283421', 'beautyahmedo1308@gmail.com', '12', '1', 0, 17, 17, '2023-02-28 13:54:12', '2023-02-28 14:08:30'),
('10136017', 'Md. Gulam Muktadir Billa', '21', '2023-02-26', '1997-12-15', '26', 'Md. Mutahar Housen Sordar', 'Jharna Aktar', '1', '22', 'Palobandha', '0', '0', '8', '22', '478', 'Palobandha', '0', '0', '8', '22', '478', NULL, '6908054874', '3', '01910603531', '0', '12', '1', 0, 17, 17, '2023-02-28 16:55:21', '2023-02-28 17:37:48'),
('10136018', 'Md. Sumon Mia', '21', '2023-02-26', '1999-05-25', '26', 'Md. Nasir Uddin', 'Kolpona', '2', '22', 'Dolvity', '0', '0', '8', '22', '482', 'Dolvity', '0', '0', '8', '22', '482', NULL, '6904096812', '1', '01721499977', 'sumonkobir482@gmail.com', '12', '1', 0, 17, NULL, '2023-02-28 17:23:55', NULL),
('10136019', 'Md. Azizur Rahman', '21', '2023-02-26', '1996-12-22', '26', 'Md. Zural Islam', 'Razia Begum', '1', '22', 'Bajiter Para', '0', '0', '8', '22', '480', 'Bajiter Para', '0', '0', '8', '22', '480', '2853772925', NULL, '5', '01780272425', 'md.azizurrahman675@gmail.com', '12', '1', 0, 17, NULL, '2023-02-28 17:35:54', NULL),
('10136020', 'Md. Joynal Abedin', '21', '2023-02-26', '1997-01-01', '26', 'Md. Abdur Rashid', 'Mst. Jamila Begom', '1', '22', 'Polobardha', '0', '0', '8', '22', '478', 'Polobardha', '0', '0', '8', '22', '478', '9579101909', NULL, '1', '01625473899', NULL, '71', '1', 0, 17, 17, '2023-02-28 18:03:44', '2023-02-28 18:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_title` varchar(255) DEFAULT NULL,
  `notice_description` longtext DEFAULT NULL,
  `notice_category` varchar(255) DEFAULT NULL,
  `notice_file` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `paid_status` varchar(51) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.menu', 'web', 'dashboard', '2023-02-18 10:22:24', '2023-02-18 12:36:09'),
(2, 'settings.menu', 'web', 'settings', '2023-02-18 10:28:21', '2023-02-18 10:28:21'),
(4, 'settings.all', 'web', 'settings', '2023-02-18 10:31:17', '2023-02-18 10:31:17'),
(5, 'formformats.menu', 'web', 'form-formats', '2023-02-18 10:31:44', '2023-02-18 12:52:40'),
(6, 'formformats.all', 'web', 'form-formats', '2023-02-18 10:31:52', '2023-02-18 12:52:43'),
(7, 'formformats.add', 'web', 'form-formats', '2023-02-18 10:32:03', '2023-02-18 12:52:46'),
(8, 'formformats.edit', 'web', 'form-formats', '2023-02-18 10:32:14', '2023-02-18 12:52:49'),
(9, 'formformats.delete', 'web', 'form-formats', '2023-02-18 10:32:25', '2023-02-18 12:52:52'),
(10, 'newemployee.all', 'web', 'new-employee', '2023-02-18 10:33:29', '2023-02-18 12:57:34'),
(11, 'newemployee.add', 'web', 'new-employee', '2023-02-18 10:33:38', '2023-02-18 12:57:42'),
(12, 'newemployee.edit', 'web', 'new-employee', '2023-02-18 10:33:47', '2023-02-18 12:52:34'),
(13, 'newemployee.delete', 'web', 'new-employee', '2023-02-18 10:33:57', '2023-02-18 12:52:37'),
(14, 'usermanagement.menu', 'web', 'roles', '2023-02-18 10:34:50', '2023-02-18 13:01:02'),
(15, 'allemployee.module', 'web', 'module', '2023-02-18 12:45:54', '2023-02-18 12:47:25'),
(16, 'newemployee.module', 'web', 'module', '2023-02-18 12:46:15', '2023-02-18 12:46:15'),
(17, 'efile.module', 'web', 'module', '2023-02-18 12:47:44', '2023-02-18 12:47:44'),
(18, 'settings.module', 'web', 'settings', '2023-02-18 12:48:05', '2023-02-20 01:10:50'),
(19, 'usermanagement.module', 'web', 'module', '2023-02-18 12:51:59', '2023-02-18 12:51:59'),
(20, 'sector.module', 'web', 'sector', '2023-02-20 00:29:31', '2023-02-20 00:56:34'),
(21, 'domain.module', 'web', 'domain', '2023-02-20 00:30:02', '2023-02-20 01:11:26'),
(22, 'designation.module', 'web', 'designation', '2023-02-20 00:30:34', '2023-02-20 01:11:39'),
(23, 'division.module', 'web', 'division', '2023-02-20 00:31:02', '2023-02-20 01:11:42'),
(24, 'district.module', 'web', 'district', '2023-02-20 00:31:48', '2023-02-20 01:11:47'),
(25, 'upazilla.module', 'web', 'upazilla', '2023-02-20 00:32:06', '2023-02-20 01:11:52'),
(26, 'bloodgroup.module', 'web', 'bloodgroup', '2023-02-20 00:32:29', '2023-02-20 01:11:56'),
(27, 'department.module', 'web', 'department', '2023-02-20 00:32:46', '2023-02-20 01:12:06'),
(28, 'educationalqualification.module', 'web', 'eduqualification', '2023-02-20 00:33:06', '2023-02-20 01:13:24'),
(29, 'employeetype.module', 'web', 'employeetype', '2023-02-20 00:33:23', '2023-02-20 01:13:32'),
(30, 'gender.module', 'web', 'gender', '2023-02-20 00:33:42', '2023-02-20 01:25:00'),
(31, 'jobstatus.module', 'web', 'jobstatus', '2023-02-20 00:33:57', '2023-02-20 01:25:02'),
(32, 'maritalstatus.module', 'web', 'maritalstatus', '2023-02-20 00:34:12', '2023-02-20 01:22:50'),
(33, 'religion.module', 'web', 'religion', '2023-02-20 00:34:31', '2023-02-20 01:22:46'),
(34, 'zone.module', 'web', 'zone', '2023-02-20 00:34:47', '2023-02-20 01:22:42'),
(35, 'area.module', 'web', 'area', '2023-02-20 00:49:12', '2023-02-20 01:22:36'),
(36, 'branch.module', 'web', 'branch', '2023-02-20 00:49:26', '2023-02-20 01:22:31'),
(37, 'sector.all', 'web', 'sector', '2023-02-20 00:52:14', '2023-02-20 00:52:14'),
(38, 'sector.add', 'web', 'sector', '2023-02-20 00:53:52', '2023-02-20 00:53:52'),
(39, 'sector.edit', 'web', 'sector', '2023-02-20 00:53:59', '2023-02-20 00:53:59'),
(40, 'sector.delete', 'web', 'sector', '2023-02-20 00:54:08', '2023-02-20 00:54:08'),
(41, 'domain.all', 'web', 'domain', '2023-02-20 01:30:29', '2023-02-20 01:30:29'),
(42, 'domain.add', 'web', 'domain', '2023-02-20 01:30:37', '2023-02-20 01:30:37'),
(43, 'domain.edit', 'web', 'domain', '2023-02-20 01:30:46', '2023-02-20 01:30:46'),
(44, 'domain.delete', 'web', 'domain', '2023-02-20 01:30:53', '2023-02-20 01:30:53'),
(45, 'designation.all', 'web', 'designation', '2023-02-20 01:31:13', '2023-02-20 01:31:13'),
(46, 'designation.add', 'web', 'designation', '2023-02-20 01:31:22', '2023-02-20 01:31:22'),
(47, 'designation.edit', 'web', 'designation', '2023-02-20 01:31:31', '2023-02-20 01:31:31'),
(48, 'designation.delete', 'web', 'designation', '2023-02-20 01:31:40', '2023-02-20 01:31:40'),
(49, 'division.all', 'web', 'division', '2023-02-20 01:32:29', '2023-02-20 01:32:29'),
(50, 'division.add', 'web', 'division', '2023-02-20 01:32:38', '2023-02-20 01:32:38'),
(51, 'division.edit', 'web', 'division', '2023-02-20 01:32:46', '2023-02-20 01:32:46'),
(52, 'division.delete', 'web', 'division', '2023-02-20 01:32:56', '2023-02-20 01:32:56'),
(53, 'district.all', 'web', 'district', '2023-02-20 01:33:05', '2023-02-20 01:33:05'),
(54, 'district.add', 'web', 'district', '2023-02-20 01:33:13', '2023-02-20 01:33:13'),
(55, 'district.edit', 'web', 'district', '2023-02-20 01:33:22', '2023-02-20 01:33:22'),
(56, 'district.delete', 'web', 'district', '2023-02-20 01:33:32', '2023-02-20 01:33:32'),
(57, 'upazilla.all', 'web', 'upazilla', '2023-02-20 01:33:52', '2023-02-20 01:33:52'),
(58, 'upazilla.add', 'web', 'upazilla', '2023-02-20 01:33:59', '2023-02-20 01:33:59'),
(59, 'upazilla.edit', 'web', 'upazilla', '2023-02-20 01:34:06', '2023-02-20 01:34:06'),
(60, 'upazilla.delete', 'web', 'upazilla', '2023-02-20 01:34:13', '2023-02-20 01:34:13'),
(61, 'bloodgroup.all', 'web', 'bloodgroup', '2023-02-20 01:34:43', '2023-02-20 01:34:43'),
(62, 'bloodgroup.add', 'web', 'bloodgroup', '2023-02-20 01:34:50', '2023-02-20 01:34:50'),
(63, 'bloodgroup.edit', 'web', 'bloodgroup', '2023-02-20 01:34:57', '2023-02-20 01:34:57'),
(64, 'bloodgroup.delete', 'web', 'bloodgroup', '2023-02-20 01:35:04', '2023-02-20 01:35:04'),
(65, 'department.all', 'web', 'department', '2023-02-20 01:36:43', '2023-02-20 01:36:43'),
(66, 'department.add', 'web', 'department', '2023-02-20 01:36:52', '2023-02-20 01:36:52'),
(67, 'department.edit', 'web', 'department', '2023-02-20 01:37:01', '2023-02-20 01:37:01'),
(68, 'department.delete', 'web', 'department', '2023-02-20 01:37:09', '2023-02-20 01:37:09'),
(69, 'educationalqualification.all', 'web', 'eduqualification', '2023-02-20 01:37:57', '2023-02-20 01:37:57'),
(70, 'educationalqualification.add', 'web', 'eduqualification', '2023-02-20 01:38:05', '2023-02-20 01:38:05'),
(71, 'educationalqualification.edit', 'web', 'eduqualification', '2023-02-20 01:38:13', '2023-02-20 01:38:13'),
(72, 'educationalqualification.delete', 'web', 'eduqualification', '2023-02-20 01:38:22', '2023-02-20 01:38:22'),
(73, 'employeetype.all', 'web', 'employeetype', '2023-02-20 01:39:18', '2023-02-20 01:39:18'),
(74, 'employeetype.add', 'web', 'employeetype', '2023-02-20 01:39:30', '2023-02-20 01:39:30'),
(75, 'employeetype.edit', 'web', 'employeetype', '2023-02-20 01:39:39', '2023-02-20 01:39:39'),
(76, 'employeetype.delete', 'web', 'employeetype', '2023-02-20 01:39:45', '2023-02-20 01:39:45'),
(77, 'gender.all', 'web', 'gender', '2023-02-20 01:39:53', '2023-02-20 01:39:53'),
(78, 'gender.add', 'web', 'gender', '2023-02-20 01:40:02', '2023-02-20 01:40:02'),
(79, 'gender.edit', 'web', 'gender', '2023-02-20 01:40:11', '2023-02-20 01:40:11'),
(80, 'gender.delete', 'web', 'gender', '2023-02-20 01:40:17', '2023-02-20 01:40:17'),
(81, 'jobstatus.all', 'web', 'jobstatus', '2023-02-20 01:40:25', '2023-02-20 01:40:25'),
(82, 'jobstatus.add', 'web', 'jobstatus', '2023-02-20 01:40:35', '2023-02-20 01:40:35'),
(83, 'jobstatus.edit', 'web', 'jobstatus', '2023-02-20 01:40:43', '2023-02-20 01:40:43'),
(84, 'jobstatus.delete', 'web', 'jobstatus', '2023-02-20 01:40:50', '2023-02-20 01:40:50'),
(85, 'maritalstatus.all', 'web', 'maritalstatus', '2023-02-20 01:41:25', '2023-02-20 01:41:25'),
(86, 'maritalstatus.add', 'web', 'maritalstatus', '2023-02-20 01:41:32', '2023-02-20 01:41:32'),
(87, 'maritalstatus.edit', 'web', 'maritalstatus', '2023-02-20 01:41:41', '2023-02-20 01:41:41'),
(88, 'maritalstatus.delete', 'web', 'maritalstatus', '2023-02-20 01:41:48', '2023-02-20 01:41:48'),
(89, 'religion.all', 'web', 'religion', '2023-02-20 01:42:09', '2023-02-20 01:42:09'),
(90, 'religion.add', 'web', 'religion', '2023-02-20 01:42:17', '2023-02-20 01:42:17'),
(91, 'religion.edit', 'web', 'religion', '2023-02-20 01:42:25', '2023-02-20 01:42:25'),
(92, 'religion.delete', 'web', 'religion', '2023-02-20 01:42:34', '2023-02-20 01:42:34'),
(93, 'zone.all', 'web', 'zone', '2023-02-20 01:42:43', '2023-02-20 01:42:43'),
(94, 'zone.add', 'web', 'zone', '2023-02-20 01:42:49', '2023-02-20 01:42:49'),
(95, 'zone.edit', 'web', 'zone', '2023-02-20 01:42:57', '2023-02-20 01:42:57'),
(96, 'zone.delete', 'web', 'zone', '2023-02-20 01:43:06', '2023-02-20 01:43:06'),
(97, 'area.all', 'web', 'area', '2023-02-20 01:43:34', '2023-02-20 01:43:34'),
(98, 'area.add', 'web', 'area', '2023-02-20 01:43:41', '2023-02-20 01:43:41'),
(99, 'area.edit', 'web', 'area', '2023-02-20 01:43:48', '2023-02-20 01:43:48'),
(100, 'area.delete', 'web', 'area', '2023-02-20 01:43:56', '2023-02-20 01:43:56'),
(101, 'branch.all', 'web', 'branch', '2023-02-20 01:44:04', '2023-02-20 01:44:04'),
(102, 'branch.add', 'web', 'branch', '2023-02-20 01:44:12', '2023-02-20 01:44:12'),
(103, 'branch.edit', 'web', 'branch', '2023-02-20 01:44:19', '2023-02-20 01:44:19'),
(104, 'branch.delete', 'web', 'branch', '2023-02-20 01:44:27', '2023-02-20 01:44:27'),
(105, 'newemployee.show', 'web', 'new-employee', '2023-02-20 09:47:06', '2023-02-20 09:47:06'),
(106, 'ewemployee.export', 'web', 'new-employee', '2023-02-22 09:53:29', '2023-02-22 09:53:29'),
(107, 'employee.all', 'web', 'all-employee', '2023-02-23 03:23:32', '2023-02-23 03:28:19'),
(108, 'employee.add', 'web', 'all-employee', '2023-02-23 03:28:32', '2023-02-23 03:28:32'),
(109, 'employee.edit', 'web', 'all-employee', '2023-02-23 03:28:42', '2023-02-23 03:28:42'),
(110, 'employee.show', 'web', 'all-employee', '2023-02-23 03:28:53', '2023-02-23 03:28:53'),
(111, 'employee.delete', 'web', 'all-employee', '2023-02-23 03:29:04', '2023-02-23 03:29:04'),
(112, 'formformats.show', 'web', 'form-formats', '2023-02-26 00:50:45', '2023-02-26 00:50:45'),
(113, 'staffprofile.menu', 'web', 'dashboard', '2023-02-27 10:14:11', '2023-02-27 10:14:11'),
(114, 'notice.menu', 'web', 'dashboard', '2023-02-28 18:32:24', '2023-02-28 18:32:24'),
(115, 'notice.all', 'web', 'notice', '2023-03-01 16:32:32', '2023-03-01 16:32:32'),
(116, 'notice.add', 'web', 'notice', '2023-03-01 16:37:27', '2023-03-01 16:37:27'),
(117, 'notice.show', 'web', 'notice', '2023-03-01 16:37:50', '2023-03-01 16:37:50'),
(118, 'notice.edit', 'web', 'notice', '2023-03-01 16:38:11', '2023-03-01 16:38:11'),
(119, 'notice.delete', 'web', 'notice', '2023-03-01 16:38:20', '2023-03-01 16:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 1, NULL, NULL, NULL, NULL),
(2, 'Bahai', 1, NULL, NULL, NULL, NULL),
(3, 'Buddhism', 1, NULL, NULL, NULL, NULL),
(4, 'Christianity', 1, NULL, NULL, NULL, NULL),
(5, 'Confucianism', 1, NULL, NULL, NULL, NULL),
(6, 'Druze', 1, NULL, NULL, NULL, NULL),
(7, 'Hinduism', 1, NULL, NULL, NULL, NULL),
(8, 'Jainism', 1, NULL, NULL, NULL, NULL),
(9, 'Judaism', 1, NULL, NULL, NULL, NULL),
(10, 'Shinto', 1, NULL, NULL, NULL, NULL),
(11, 'Sikhism', 1, NULL, NULL, NULL, NULL),
(12, 'Taoism', 1, NULL, NULL, NULL, NULL),
(13, 'Zoroastrianism', 1, NULL, NULL, NULL, NULL),
(14, 'Others', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2023-02-18 10:36:45', '2023-02-18 10:36:45'),
(2, 'Admin', 'web', '2023-02-18 10:41:07', '2023-02-18 10:41:07'),
(3, 'HRO', 'web', '2023-02-18 10:41:15', '2023-02-18 10:41:15'),
(4, 'User', 'web', '2023-02-19 04:02:17', '2023-02-19 04:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(14, 1),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(105, 3),
(106, 1),
(107, 1),
(107, 3),
(108, 1),
(108, 3),
(109, 1),
(109, 3),
(110, 1),
(110, 3),
(111, 1),
(112, 1),
(112, 3),
(113, 1),
(113, 3),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'HEM Grand Sector', 1, NULL, NULL, NULL, NULL),
(2, 'Grand Health Sector', 1, NULL, NULL, NULL, NULL),
(3, 'Others', 1, NULL, NULL, NULL, NULL),
(4, 'N/A', 1, NULL, NULL, NULL, NULL),
(5, 'N/I', 1, NULL, NULL, NULL, NULL),
(6, 'Program Sector', 1, NULL, NULL, NULL, NULL),
(7, 'Trade Business Sector', 1, NULL, NULL, NULL, NULL),
(8, 'Training & Education Sector', 1, NULL, NULL, NULL, NULL),
(9, 'ICT & Environment Sector', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setups`
--

CREATE TABLE `setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_bn` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `division_id`, `district_id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 'Barura', '???????????????', 1, NULL, NULL, NULL, NULL),
(2, 1, 13, 'Brahmanpara', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(3, 1, 13, 'Burichang', '??????????????????', 1, NULL, NULL, NULL, NULL),
(4, 1, 13, 'Chandina', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(5, 1, 13, 'Chauddagram', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(6, 1, 13, 'Cumillasadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(7, 1, 13, 'Daudkandi', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(8, 1, 13, 'Debidwar', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(9, 1, 13, 'Homna', '???????????????', 1, NULL, NULL, NULL, NULL),
(10, 1, 13, 'Laksam', '??????????????????', 1, NULL, NULL, NULL, NULL),
(11, 1, 13, 'Lalmai', '??????????????????', 1, NULL, NULL, NULL, NULL),
(12, 1, 13, 'Meghna', '???????????????', 1, NULL, NULL, NULL, NULL),
(13, 1, 13, 'Monohargonj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(14, 1, 13, 'Muradnagar', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(15, 1, 13, 'Nangalkot', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(16, 1, 13, 'Sadarsouth', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(17, 1, 13, 'Titas', '???????????????', 1, NULL, NULL, NULL, NULL),
(18, 1, 17, 'Chhagalnaiya', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(19, 1, 17, 'Daganbhuiyan', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(20, 1, 17, 'Feni Sadar', '???????????? ?????????', 1, NULL, NULL, NULL, NULL),
(21, 1, 17, 'Fulgazi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(22, 1, 17, 'Parshuram', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(23, 1, 17, 'Sonagazi', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(24, 1, 7, 'Akhaura', '??????????????????', 1, NULL, NULL, NULL, NULL),
(25, 1, 7, 'Ashuganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(26, 1, 7, 'Bancharampur', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(27, 1, 7, 'Bijoynagar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(28, 1, 7, 'Brahmanbaria Sadar', '?????????????????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(29, 1, 7, 'Kasba', '????????????', 1, NULL, NULL, NULL, NULL),
(30, 1, 7, 'Nabinagar', '??????????????????', 1, NULL, NULL, NULL, NULL),
(31, 1, 7, 'Nasirnagar', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(32, 1, 7, 'Sarail', '???????????????', 1, NULL, NULL, NULL, NULL),
(33, 1, 55, 'Baghaichari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(34, 1, 55, 'Barkal', '????????????', 1, NULL, NULL, NULL, NULL),
(35, 1, 55, 'Belaichari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(36, 1, 55, 'Juraichari', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(37, 1, 55, 'Kaptai', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(38, 1, 55, 'Kawkhali', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(39, 1, 55, 'Langadu', '???????????????', 1, NULL, NULL, NULL, NULL),
(40, 1, 55, 'Naniarchar', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(41, 1, 55, 'Rajasthali', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(42, 1, 55, 'Rangamati Sadar', '?????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(43, 1, 48, 'Begumganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(44, 1, 48, 'Chatkhil', '??????????????????', 1, NULL, NULL, NULL, NULL),
(45, 1, 48, 'Companiganj', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(46, 1, 48, 'Hatia', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(47, 1, 48, 'Kabirhat', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(48, 1, 48, 'Noakhali Sadar', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(49, 1, 48, 'Senbug', '??????????????????', 1, NULL, NULL, NULL, NULL),
(50, 1, 48, 'Sonaimuri', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(51, 1, 48, 'Subarnachar', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(52, 1, 8, 'Chandpur Sadar', '????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(53, 1, 8, 'Faridgonj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(54, 1, 8, 'Haimchar', '??????????????????', 1, NULL, NULL, NULL, NULL),
(55, 1, 8, 'Hajiganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(56, 1, 8, 'Kachua', '??????????????????', 1, NULL, NULL, NULL, NULL),
(57, 1, 8, 'Matlabnorth', '????????????', 1, NULL, NULL, NULL, NULL),
(58, 1, 8, 'Matlabsouth', '????????????', 1, NULL, NULL, NULL, NULL),
(59, 1, 8, 'Shahrasti', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(60, 1, 32, 'Kamalnagar', '??????????????????', 1, NULL, NULL, NULL, NULL),
(61, 1, 32, 'Lakshmipur Sadar', '?????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(62, 1, 32, 'Raipur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(63, 1, 32, 'Ramganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(64, 1, 32, 'Ramgati', '??????????????????', 1, NULL, NULL, NULL, NULL),
(65, 1, 10, 'Anwara', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(66, 1, 10, 'Banshkhali', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(67, 1, 10, 'Boalkhali', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(68, 1, 10, 'Chandanaish', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(69, 1, 10, 'Fatikchhari', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(70, 1, 10, 'Hathazari', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(71, 1, 10, 'Karnafuli', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(72, 1, 10, 'Lohagara', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(73, 1, 10, 'Mirsharai', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(74, 1, 10, 'Patiya', '???????????????', 1, NULL, NULL, NULL, NULL),
(75, 1, 10, 'Rangunia', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(76, 1, 10, 'Raozan', '??????????????????', 1, NULL, NULL, NULL, NULL),
(77, 1, 10, 'Sandwip', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(78, 1, 10, 'Satkania', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(79, 1, 10, 'Sitakunda', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(80, 1, 12, 'Chakaria', '??????????????????', 1, NULL, NULL, NULL, NULL),
(81, 1, 12, 'Coxsbazar Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(82, 1, 12, 'Kutubdia', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(83, 1, 12, 'Moheshkhali', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(84, 1, 12, 'Pekua', '??????????????????', 1, NULL, NULL, NULL, NULL),
(85, 1, 12, 'Ramu', '????????????', 1, NULL, NULL, NULL, NULL),
(86, 1, 12, 'Teknaf', '??????????????????', 1, NULL, NULL, NULL, NULL),
(87, 1, 12, 'Ukhiya', '???????????????', 1, NULL, NULL, NULL, NULL),
(88, 1, 27, 'Dighinala', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(89, 1, 27, 'Guimara', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(90, 1, 27, 'Khagrachhari Sadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(91, 1, 27, 'Laxmichhari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(92, 1, 27, 'Manikchari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(93, 1, 27, 'Matiranga', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(94, 1, 27, 'Mohalchari', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(95, 1, 27, 'Panchari', '??????????????????', 1, NULL, NULL, NULL, NULL),
(96, 1, 27, 'Ramgarh', '???????????????', 1, NULL, NULL, NULL, NULL),
(97, 1, 2, 'Alikadam', '??????????????????', 1, NULL, NULL, NULL, NULL),
(98, 1, 2, 'Bandarban Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(99, 1, 2, 'Lama', '????????????', 1, NULL, NULL, NULL, NULL),
(100, 1, 2, 'Naikhongchhari', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(101, 1, 2, 'Rowangchhari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(102, 1, 2, 'Ruma', '????????????', 1, NULL, NULL, NULL, NULL),
(103, 1, 2, 'Thanchi', '???????????????', 1, NULL, NULL, NULL, NULL),
(104, 2, 60, 'Belkuchi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(105, 2, 60, 'Chauhali', '??????????????????', 1, NULL, NULL, NULL, NULL),
(106, 2, 60, 'Kamarkhand', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(107, 2, 60, 'Kazipur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(108, 2, 60, 'Raigonj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(109, 2, 60, 'Shahjadpur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(110, 2, 60, 'Sirajganjsadar', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(111, 2, 60, 'Tarash', '???????????????', 1, NULL, NULL, NULL, NULL),
(112, 2, 60, 'Ullapara', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(113, 2, 49, 'Atghoria', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(114, 2, 49, 'Bera', '????????????', 1, NULL, NULL, NULL, NULL),
(115, 2, 49, 'Bhangura', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(116, 2, 49, 'Chatmohar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(117, 2, 49, 'Faridpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(118, 2, 49, 'Ishurdi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(119, 2, 49, 'Pabnasadar', '??????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(120, 2, 49, 'Santhia', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(121, 2, 49, 'Sujanagar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(122, 2, 6, 'Adamdighi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(123, 2, 6, 'Bogura Sadar', '??????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(124, 2, 6, 'Dhunot', '????????????', 1, NULL, NULL, NULL, NULL),
(125, 2, 6, 'Dupchanchia', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(126, 2, 6, 'Gabtali', '??????????????????', 1, NULL, NULL, NULL, NULL),
(127, 2, 6, 'Kahaloo', '??????????????????', 1, NULL, NULL, NULL, NULL),
(128, 2, 6, 'Nondigram', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(129, 2, 6, 'Shajahanpur', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(130, 2, 6, 'Shariakandi', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(131, 2, 6, 'Sherpur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(132, 2, 6, 'Shibganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(133, 2, 6, 'Sonatala', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(134, 2, 54, 'Bagha', '????????????', 1, NULL, NULL, NULL, NULL),
(135, 2, 54, 'Bagmara', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(136, 2, 54, 'Charghat', '??????????????????', 1, NULL, NULL, NULL, NULL),
(137, 2, 54, 'Durgapur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(138, 2, 54, 'Godagari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(139, 2, 54, 'Mohonpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(140, 2, 54, 'Paba', '?????????', 1, NULL, NULL, NULL, NULL),
(141, 2, 54, 'Puthia', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(142, 2, 54, 'Tanore', '???????????????', 1, NULL, NULL, NULL, NULL),
(143, 2, 45, 'Bagatipara', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(144, 2, 45, 'Baraigram', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(145, 2, 45, 'Gurudaspur', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(146, 2, 45, 'Lalpur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(147, 2, 45, 'Naldanga', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(148, 2, 45, 'Natore Sadar', '??????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(149, 2, 45, 'Singra', '???????????????', 1, NULL, NULL, NULL, NULL),
(150, 2, 26, 'Akkelpur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(151, 2, 26, 'Joypurhat Sadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(152, 2, 26, 'Kalai', '???????????????', 1, NULL, NULL, NULL, NULL),
(153, 2, 26, 'Khetlal', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(154, 2, 26, 'Panchbibi', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(155, 2, 9, 'Bholahat', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(156, 2, 9, 'Chapainawabganj Sadar', '?????????????????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(157, 2, 9, 'Gomostapur', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(158, 2, 9, 'Nachol', '???????????????', 1, NULL, NULL, NULL, NULL),
(159, 2, 9, 'Shibganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(160, 2, 41, 'Atrai', '??????????????????', 1, NULL, NULL, NULL, NULL),
(161, 2, 41, 'Badalgachi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(162, 2, 41, 'Dhamoirhat', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(163, 2, 41, 'Manda', '??????????????????', 1, NULL, NULL, NULL, NULL),
(164, 2, 41, 'Mohadevpur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(165, 2, 41, 'Naogaon Sadar', '??????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(166, 2, 41, 'Niamatpur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(167, 2, 41, 'Patnitala', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(168, 2, 41, 'Porsha', '???????????????', 1, NULL, NULL, NULL, NULL),
(169, 2, 41, 'Raninagar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(170, 2, 41, 'Sapahar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(171, 3, 23, 'Abhaynagar', '??????????????????', 1, NULL, NULL, NULL, NULL),
(172, 3, 23, 'Bagherpara', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(173, 3, 23, 'Chougachha', '??????????????????', 1, NULL, NULL, NULL, NULL),
(174, 3, 23, 'Jashore Sadar', '???????????? ?????????', 1, NULL, NULL, NULL, NULL),
(175, 3, 23, 'Jhikargacha', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(176, 3, 23, 'Keshabpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(177, 3, 23, 'Manirampur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(178, 3, 23, 'Sharsha', '??????????????????', 1, NULL, NULL, NULL, NULL),
(179, 3, 57, 'Assasuni', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(180, 3, 57, 'Debhata', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(181, 3, 57, 'Kalaroa', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(182, 3, 57, 'Kaliganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(183, 3, 57, 'Satkhira Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(184, 3, 57, 'Shyamnagar', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(185, 3, 57, 'Tala', '????????????', 1, NULL, NULL, NULL, NULL),
(186, 3, 37, 'Gangni', '???????????????', 1, NULL, NULL, NULL, NULL),
(187, 3, 37, 'Meherpursadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(188, 3, 37, 'Mujibnagar', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(189, 3, 42, 'Kalia', '??????????????????', 1, NULL, NULL, NULL, NULL),
(190, 3, 42, 'Lohagara', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(191, 3, 42, 'Narail Sadar', '??????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(192, 3, 11, 'Alamdanga', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(193, 3, 11, 'Chuadanga Sadar', '????????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(194, 3, 11, 'Damurhuda', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(195, 3, 11, 'Jibannagar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(196, 3, 31, 'Bheramara', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(197, 3, 31, 'Daulatpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(198, 3, 31, 'Khoksa', '???????????????', 1, NULL, NULL, NULL, NULL),
(199, 3, 31, 'Kumarkhali', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(200, 3, 31, 'Kushtia Sadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(201, 3, 31, 'Mirpurkushtia', '??????????????????', 1, NULL, NULL, NULL, NULL),
(202, 3, 35, 'Magura Sadar', '?????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(203, 3, 35, 'Mohammadpur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(204, 3, 35, 'Shalikha', '??????????????????', 1, NULL, NULL, NULL, NULL),
(205, 3, 35, 'Sreepur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(206, 3, 28, 'Botiaghata', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(207, 3, 28, 'Dakop', '???????????????', 1, NULL, NULL, NULL, NULL),
(208, 3, 28, 'Digholia', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(209, 3, 28, 'Dumuria', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(210, 3, 28, 'Fultola', '??????????????????', 1, NULL, NULL, NULL, NULL),
(211, 3, 28, 'Koyra', '????????????', 1, NULL, NULL, NULL, NULL),
(212, 3, 28, 'Paikgasa', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(213, 3, 28, 'Rupsha', '???????????????', 1, NULL, NULL, NULL, NULL),
(214, 3, 28, 'Terokhada', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(215, 3, 1, 'Chitalmari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(216, 3, 1, 'Fakirhat', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(217, 3, 1, 'Kachua', '???????????????', 1, NULL, NULL, NULL, NULL),
(218, 3, 1, 'Mollahat', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(219, 3, 1, 'Mongla', '???????????????', 1, NULL, NULL, NULL, NULL),
(220, 3, 1, 'Morrelganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(221, 3, 1, 'Rampal', '??????????????????', 1, NULL, NULL, NULL, NULL),
(222, 3, 1, 'Sadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(223, 3, 1, 'Sarankhola', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(224, 3, 25, 'Harinakundu', '?????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(225, 3, 25, 'Jhenaidah Sadar', '????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(226, 3, 25, 'Kaliganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(227, 3, 25, 'Kot8', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(228, 3, 25, 'Moheshpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(229, 3, 25, 'Shailkupa', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(230, 4, 51, 'Bauphal', '???????????????', 1, NULL, NULL, NULL, NULL),
(231, 4, 24, 'Jhalakathi Sadar', '????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(232, 4, 24, 'Kathalia', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(233, 4, 24, 'Nalchity', '??????????????????', 1, NULL, NULL, NULL, NULL),
(234, 4, 24, 'Rajapur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(235, 4, 51, 'Dashmina', '??????????????????', 1, NULL, NULL, NULL, NULL),
(236, 4, 51, 'Dumki', '???????????????', 1, NULL, NULL, NULL, NULL),
(237, 4, 51, 'Galachipa', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(238, 4, 51, 'Kalapara', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(239, 4, 51, 'Mirzaganj', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(240, 4, 51, 'Patuakhali Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(241, 4, 51, 'Rangabali', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(242, 4, 52, 'Bhandaria', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(243, 4, 52, 'Indurkani', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(244, 4, 52, 'Kawkhali', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(245, 4, 52, 'Mathbaria', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(246, 4, 52, 'Nazirpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(247, 4, 52, 'Nesarabad', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(248, 4, 52, 'Pirojpur Sadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(249, 4, 4, 'Agailjhara', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(250, 4, 4, 'Babuganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(251, 4, 4, 'Bakerganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(252, 4, 4, 'Banaripara', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(253, 4, 4, 'Barishal Sadar', '?????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(254, 4, 4, 'Gournadi', '??????????????????', 1, NULL, NULL, NULL, NULL),
(255, 4, 4, 'Hizla', '???????????????', 1, NULL, NULL, NULL, NULL),
(256, 4, 4, 'Mehendiganj', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(257, 4, 4, 'Muladi', '??????????????????', 1, NULL, NULL, NULL, NULL),
(258, 4, 4, 'Wazirpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(259, 4, 5, 'Bhola Sadar', '???????????? ?????????', 1, NULL, NULL, NULL, NULL),
(260, 4, 5, 'Borhanuddin', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(261, 4, 5, 'Charfesson', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(262, 4, 5, 'Doulatkhan', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(263, 4, 5, 'Lalmohan', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(264, 4, 5, 'Monpura', '??????????????????', 1, NULL, NULL, NULL, NULL),
(265, 4, 5, 'Tazumuddin', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(266, 4, 3, 'Amtali', '???????????????', 1, NULL, NULL, NULL, NULL),
(267, 4, 3, 'Bamna', '???????????????', 1, NULL, NULL, NULL, NULL),
(268, 4, 3, 'Betagi', '??????????????????', 1, NULL, NULL, NULL, NULL),
(269, 4, 3, 'Pathorghata', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(270, 4, 3, 'Sadar', '?????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(271, 4, 3, 'Taltali', '??????????????????', 1, NULL, NULL, NULL, NULL),
(272, 5, 62, 'Balaganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(273, 5, 62, 'Beanibazar', '?????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(274, 5, 62, 'Bishwanath', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(275, 5, 62, 'Companiganj', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(276, 5, 62, 'Dakshinsurma', '?????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(277, 5, 62, 'Fenchuganj', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(278, 5, 62, 'Golapganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(279, 5, 62, 'Gowainghat', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(280, 5, 62, 'Jaintiapur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(281, 5, 62, 'Kanaighat', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(282, 5, 62, 'Osmaninagar', '??????????????????', 1, NULL, NULL, NULL, NULL),
(283, 5, 62, 'Sylhet Sadar', '??????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(284, 5, 62, 'Zakiganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(285, 5, 38, 'Barlekha', '??????????????????', 1, NULL, NULL, NULL, NULL),
(286, 5, 38, 'Juri', '????????????', 1, NULL, NULL, NULL, NULL),
(287, 5, 38, 'Kamolganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(288, 5, 38, 'Kulaura', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(289, 5, 38, 'Moulvibazar Sadar', '?????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(290, 5, 38, 'Rajnagar', '??????????????????', 1, NULL, NULL, NULL, NULL),
(291, 5, 38, 'Sreemangal', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(292, 5, 21, 'Ajmiriganj', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(293, 5, 21, 'Bahubal', '??????????????????', 1, NULL, NULL, NULL, NULL),
(294, 5, 21, 'Baniachong', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(295, 5, 21, 'Chunarughat', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(296, 5, 21, 'Habiganj Sadar', '????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(297, 5, 21, 'Lakhai', '???????????????', 1, NULL, NULL, NULL, NULL),
(298, 5, 21, 'Madhabpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(299, 5, 21, 'Nabiganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(300, 5, 21, 'Shayestaganj', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(301, 5, 61, 'Bishwambarpur', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(302, 5, 61, 'Chhatak', '????????????', 1, NULL, NULL, NULL, NULL),
(303, 5, 61, 'Derai', '???????????????', 1, NULL, NULL, NULL, NULL),
(304, 5, 61, 'Dharmapasha', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(305, 5, 61, 'Dowarabazar', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(306, 5, 61, 'Jagannathpur', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(307, 5, 61, 'Jamalganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(308, 5, 61, 'Shalla', '??????????????????', 1, NULL, NULL, NULL, NULL),
(309, 5, 61, 'South Sunamganj', '?????????????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(310, 5, 61, 'Sunamganj Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(311, 5, 61, 'Tahirpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(312, 6, 44, 'Belabo', '??????????????????', 1, NULL, NULL, NULL, NULL),
(313, 6, 44, 'Monohardi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(314, 6, 44, 'Narsingdisadar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(315, 6, 44, 'Palash', '????????????', 1, NULL, NULL, NULL, NULL),
(316, 6, 44, 'Raipura', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(317, 6, 44, 'Shibpur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(318, 6, 19, 'Kaliakair', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(319, 6, 19, 'Kaliganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(320, 6, 19, 'Kapasia', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(321, 6, 19, 'Sadar', '????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(322, 6, 19, 'Sreepur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(323, 6, 58, 'Bhedarganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(324, 6, 58, 'Damudya', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(325, 6, 58, 'Gosairhat', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(326, 6, 58, 'Naria', '???????????????', 1, NULL, NULL, NULL, NULL),
(327, 6, 58, 'Shariatpur Sadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(328, 6, 58, 'Zajira', '??????????????????', 1, NULL, NULL, NULL, NULL),
(329, 6, 43, 'Araihazar', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(330, 6, 43, 'Bandar', '???????????????', 1, NULL, NULL, NULL, NULL),
(331, 6, 43, 'Narayanganj Sadar', '?????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(332, 6, 43, 'Rupganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(333, 6, 43, 'Sonargaon', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(334, 6, 63, 'Basail', '??????????????????', 1, NULL, NULL, NULL, NULL),
(335, 6, 63, 'Bhuapur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(336, 6, 63, 'Delduar', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(337, 6, 63, 'Dhanbari', '??????????????????', 1, NULL, NULL, NULL, NULL),
(338, 6, 63, 'Ghatail', '??????????????????', 1, NULL, NULL, NULL, NULL),
(339, 6, 63, 'Gopalpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(340, 6, 63, 'Kalihati', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(341, 6, 63, 'Madhupur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(342, 6, 63, 'Mirzapur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(343, 6, 63, 'Nagarpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(344, 6, 63, 'Sakhipur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(345, 6, 63, 'Tangailsadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(346, 6, 29, 'Austagram', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(347, 6, 29, 'Bajitpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(348, 6, 29, 'Bhairab', '????????????', 1, NULL, NULL, NULL, NULL),
(349, 6, 29, 'Hossainpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(350, 6, 29, 'Itna', '????????????', 1, NULL, NULL, NULL, NULL),
(351, 6, 29, 'Karimgonj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(352, 6, 29, 'Katiadi', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(353, 6, 29, 'Kishoreganj Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(354, 6, 29, 'Kuliarchar', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(355, 6, 29, 'Mithamoin', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(356, 6, 29, 'Nikli', '???????????????', 1, NULL, NULL, NULL, NULL),
(357, 6, 29, 'Pakundia', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(358, 6, 29, 'Tarail', '??????????????????', 1, NULL, NULL, NULL, NULL),
(359, 6, 36, 'Doulatpur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(360, 6, 36, 'Gior', '????????????', 1, NULL, NULL, NULL, NULL),
(361, 6, 36, 'Harirampur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(362, 6, 36, 'Manikganj Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(363, 6, 36, 'Saturia', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(364, 6, 36, 'Shibaloy', '??????????????????', 1, NULL, NULL, NULL, NULL),
(365, 6, 36, 'Singiar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(366, 6, 14, 'Dhamrai', '??????????????????', 1, NULL, NULL, NULL, NULL),
(367, 6, 14, 'Dohar', '???????????????', 1, NULL, NULL, NULL, NULL),
(368, 6, 14, 'Keraniganj', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(369, 6, 14, 'Nawabganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(370, 6, 14, 'Savar', '???????????????', 1, NULL, NULL, NULL, NULL),
(371, 6, 39, 'Gajaria', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(372, 6, 39, 'Louhajanj', '???????????????', 1, NULL, NULL, NULL, NULL),
(373, 6, 39, 'Munshiganj Sadar', '?????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(374, 6, 39, 'Sirajdikhan', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(375, 6, 39, 'Sreenagar', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(376, 6, 39, 'Tongibari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(377, 6, 53, 'Baliakandi', '???????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(378, 6, 53, 'Goalanda', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(379, 6, 53, 'Kalukhali', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(380, 6, 53, 'Pangsa', '???????????????', 1, NULL, NULL, NULL, NULL),
(381, 6, 53, 'Rajbari Sadar', '????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(382, 6, 34, 'Kalkini', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(383, 6, 34, 'Madaripur Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(384, 6, 34, 'Rajoir', '???????????????', 1, NULL, NULL, NULL, NULL),
(385, 6, 34, 'Shibchar', '???????????????', 1, NULL, NULL, NULL, NULL),
(386, 6, 20, 'Gopalganj Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(387, 6, 20, 'Kashiani', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(388, 6, 20, 'Kotalipara', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(389, 6, 20, 'Muksudpur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(390, 6, 20, 'Tungipara', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(391, 6, 16, 'Alfadanga', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(392, 6, 16, 'Bhanga', '??????????????????', 1, NULL, NULL, NULL, NULL),
(393, 6, 16, 'Boalmari', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(394, 6, 16, 'Charbhadrasan', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(395, 6, 16, 'Faridpur Sadar', '????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(396, 6, 16, 'Madhukhali', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(397, 6, 16, 'Nagarkanda', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(398, 6, 16, 'Sadarpur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(399, 6, 16, 'Saltha', '???????????????', 1, NULL, NULL, NULL, NULL),
(400, 7, 50, 'Atwari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(401, 7, 50, 'Boda', '????????????', 1, NULL, NULL, NULL, NULL),
(402, 7, 50, 'Debiganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(403, 7, 50, 'Panchagarh Sadar', '?????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(404, 7, 50, 'Tetulia', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(405, 7, 15, 'Birampur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(406, 7, 15, 'Birganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(407, 7, 15, 'Birol', '????????????', 1, NULL, NULL, NULL, NULL),
(408, 7, 15, 'Bochaganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(409, 7, 15, 'Chirirbandar', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(410, 7, 15, 'Dinajpursadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(411, 7, 15, 'Fulbari', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(412, 7, 15, 'Ghoraghat', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(413, 7, 15, 'Hakimpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(414, 7, 15, 'Kaharol', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(415, 7, 15, 'Khansama', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(416, 7, 15, 'Nawabganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(417, 7, 15, 'Parbatipur', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(418, 7, 33, 'Aditmari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(419, 7, 33, 'Hatibandha', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(420, 7, 33, 'Kaliganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(421, 7, 33, 'Lalmonirhat Sadar', '?????????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(422, 7, 33, 'Patgram', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(423, 7, 47, 'Dimla', '???????????????', 1, NULL, NULL, NULL, NULL),
(424, 7, 47, 'Domar', '???????????????', 1, NULL, NULL, NULL, NULL),
(425, 7, 47, 'Jaldhaka', '??????????????????', 1, NULL, NULL, NULL, NULL),
(426, 7, 47, 'Kishorganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(427, 7, 47, 'Nilphamarisadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(428, 7, 47, 'Syedpur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(429, 7, 18, 'Gaibandha Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(430, 7, 18, 'Gobindaganj', '?????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(431, 7, 18, 'Palashbari', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(432, 7, 18, 'Phulchari', '??????????????????', 1, NULL, NULL, NULL, NULL),
(433, 7, 18, 'Sadullapur', '?????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(434, 7, 18, 'Saghata', '??????????????????', 1, NULL, NULL, NULL, NULL),
(435, 7, 18, 'Sundarganj', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(436, 7, 64, 'Baliadangi', '???????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(437, 7, 64, 'Haripur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(438, 7, 64, 'Pirganj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(439, 7, 64, 'Ranisankail', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(440, 7, 64, 'Thakurgaon Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(441, 7, 56, 'Badargonj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(442, 7, 56, 'Gangachara', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(443, 7, 56, 'Kaunia', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(444, 7, 56, 'Mithapukur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(445, 7, 56, 'Pirgacha', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(446, 7, 56, 'Pirgonj', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(447, 7, 56, 'Rangpur Sadar', '??????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(448, 7, 56, 'Taragonj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(449, 6, 30, 'Bhurungamari', '????????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(450, 7, 30, 'Charrajibpur', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(451, 7, 30, 'Chilmari', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(452, 7, 30, 'Kurigram Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(453, 7, 30, 'Nageshwari', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(454, 7, 30, 'Phulbari', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(455, 7, 30, 'Rajarhat', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(456, 7, 30, 'Rowmari', '??????????????????', 1, NULL, NULL, NULL, NULL),
(457, 7, 30, 'Ulipur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(458, 8, 59, 'Jhenaigati', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(459, 8, 59, 'Nalitabari', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(460, 8, 59, 'Nokla', '????????????', 1, NULL, NULL, NULL, NULL),
(461, 8, 59, 'Sherpur Sadar', '?????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(462, 8, 59, 'Sreebordi', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(463, 8, 40, 'Bhaluka', '??????????????????', 1, NULL, NULL, NULL, NULL),
(464, 8, 40, 'Dhobaura', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(465, 8, 40, 'Fulbaria', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(466, 8, 40, 'Gafargaon', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(467, 8, 40, 'Gouripur', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(468, 8, 40, 'Haluaghat', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(469, 8, 40, 'Iswarganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(470, 8, 40, 'Muktagacha', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(471, 8, 40, 'Mymensinghsadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(472, 8, 40, 'Nandail', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(473, 8, 40, 'Phulpur', '??????????????????', 1, NULL, NULL, NULL, NULL),
(474, 8, 40, 'Tarakanda', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(475, 8, 40, 'Trishal', '?????????????????????', 1, NULL, NULL, NULL, NULL),
(476, 8, 22, 'Bokshiganj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(477, 8, 22, 'Dewangonj', '?????????????????????????????????', 1, NULL, NULL, NULL, NULL),
(478, 8, 22, 'Islampur', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(479, 8, 22, 'Jamalpur Sadar', '???????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(480, 8, 22, 'Madarganj', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(481, 8, 22, 'Melandah', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(482, 8, 22, 'Sarishabari', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(483, 8, 46, 'Atpara', '??????????????????', 1, NULL, NULL, NULL, NULL),
(484, 8, 46, 'Barhatta', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(485, 8, 46, 'Durgapur', '???????????????????????????', 1, NULL, NULL, NULL, NULL),
(486, 8, 46, 'Kalmakanda', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(487, 8, 46, 'Kendua', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(488, 8, 46, 'Khaliajuri', '??????????????????????????????', 1, NULL, NULL, NULL, NULL),
(489, 8, 46, 'Madan', '?????????', 1, NULL, NULL, NULL, NULL),
(490, 8, 46, 'Mohongonj', '????????????????????????', 1, NULL, NULL, NULL, NULL),
(491, 8, 46, 'Netrokona Sadar', '??????????????????????????? ?????????', 1, NULL, NULL, NULL, NULL),
(492, 8, 46, 'Purbadhala', '????????????????????????', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nafiur Rahman', 'nafiur@outlook.com', 'nafiur', NULL, '$2y$10$TgoQc18r.WmyCHcjUw7TTeLk/dmet0WbC9ZnIAsdvA.DdDkVMFhcS', '202302011156IMG_20220923_153727_889.jpg', NULL, NULL, NULL),
(7, 'Nafiur Rahman', 'devnafiur@gmail.com', 'nafiurrahman', '2023-02-27 10:34:47', '$2y$10$gHGeHRwr8UyPpLlUMKusGuRrVR6uCWN/XcTqljyOOElwfp.ALbaNq', '202302270235IMG_20220923_153727_889.jpg', NULL, '2023-02-27 10:34:27', '2023-02-27 10:35:13'),
(8, 'HEM-OP-10', 'op10fhrma.tmss@gmail.com', 'op10fhrma.tmss', '2023-02-27 13:44:56', '$2y$10$Lj8CRf8DaHBngWb2ur9yj.JMERVlxKrYCQjZATDGF.2MiNYp334E6', '202302270523unnamed.jpg', NULL, '2023-02-27 13:21:30', '2023-02-27 13:44:56'),
(9, 'Ziaur Rahamn', 'op9frhma.tmss@gmail.com', 'hro.op9.tmss', NULL, '$2y$10$i2FS8CGQn..AlOfKKlBd9.xw5buT9D63NAMuiPyxMzZhQmH0DpjrO', '202302270534Zia.JPG', NULL, '2023-02-27 13:31:01', '2023-02-27 13:34:24'),
(10, 'Md.Ziaul Haque', 'hr.ziaulhaque@gmail.com', 'ziaul', '2023-02-27 13:45:05', '$2y$10$mrnbmXyqij5yxwGRGMpMQ.6dHPeoAq5uN.sQFkd7OUmq1cUJbkckG', '202302270547unnamed.jpg', NULL, '2023-02-27 13:43:28', '2023-02-27 13:47:18'),
(11, 'Md. Tanveer Islam', 'op7fhrma.tmss@gmail.com', 'tanveerislam', '2023-02-27 14:06:34', '$2y$10$x8RPUuOZLO7V8uaMKPo3dOg7AzX2CC3KttXq6fL5MDH215UcJ8Pjy', '20230227060645141926_1946980005419178_607320388677926912_n.jpg', NULL, '2023-02-27 14:03:36', '2023-02-27 14:06:34'),
(12, 'Md. Ashraful ALam', 'op1fhrma.tmss@gmail.com', 'Ashraful Alam', '2023-02-27 14:07:30', '$2y$10$L7c5jm1Y/J/rNVbprkeXeuepj4rUjoT5vl50es0Iaw77hE3rPc3nu', '202302270613WhatsApp Image 2023-02-27 at 12.10.32 PM.jpeg', NULL, '2023-02-27 14:04:34', '2023-02-27 14:13:24'),
(13, 'Ferdous', 'op4fhrma.tmss@gmail.com', 'HRO(Op-4)', '2023-02-27 14:26:41', '$2y$10$1dIfB6Sto6fHtDSpb4TFaeqxIc7T4IBT2rAtqZ3P7ZuCNYJ8R1/Yi', NULL, NULL, '2023-02-27 14:18:20', '2023-02-27 14:26:41'),
(14, 'Khandakar Farhan Ahmad', 'hrfarhaneco@gmail.com', 'hrfarhan', '2023-02-27 16:52:32', '$2y$10$cpgWeauikMItiUpHxRBhnO0cQ86Q69rp5F/Yt/ngKpE.ruE3cIUha', NULL, NULL, '2023-02-27 16:11:08', '2023-02-27 16:52:32'),
(15, 'Md. Nehed Ali', 'nehedali4@gmail.com', 'md. nehed ali', NULL, '$2y$10$J7ugInRXLW0keWVwarqnreFmGvCTJK007fj0FTucu82jergpfe0Hm', '202302271154PICTURE.jpg', NULL, '2023-02-27 19:53:40', '2023-02-28 12:04:11'),
(16, 'Eyal Roy', 'op12fhrma.tmss@gmail.com', 'Eyal HR, OP-12', '2023-02-28 00:15:20', '$2y$10$hx5h7fSOwtu4q3zs8O4pfuhjitnCgDSr2yKOQa1ydsvengpeMJuKa', '20230227162120221127_115049.jpg', NULL, '2023-02-28 00:08:52', '2023-02-28 00:21:46'),
(17, 'Fahim Rahman', 'op2fhrma.tmss@gmail.com', 'Fahim Rahman', '2023-02-28 11:49:11', '$2y$10$BNd3kRAeDHzaMvMdIW3jC.xuJPG0vpzIhgdWCGm7GDSnJAIA80QZu', '20230228035227336754_1833261503414045_6313493831627011708_n.jpg', NULL, '2023-02-28 11:48:51', '2023-02-28 11:52:54'),
(18, 'Md.Anwar Hossain Siddiqi', 'op11fhrma.tmss@gmail.com', 'anwarhossain', '2023-02-28 13:42:26', '$2y$10$u/J/S7Bb0ZStn4GlVivcReS/B.qtMiT0yNfzE/uxeoSxPSmAoOiCG', '202302280540Anwar-Photograph.jpg', NULL, '2023-02-28 13:39:08', '2023-02-28 13:42:26'),
(19, 'Md. Alfaz', 'op5fhrma.tmss@gmail.com', 'mdalfaz', '2023-02-28 16:34:10', '$2y$10$1I36RGsxyIWHPTJy5Za7vucoh8YjkZKBsoLSJ6UFKr3z8Hco1vnUK', '202302280838PP.JPG', NULL, '2023-02-28 16:33:33', '2023-02-28 16:38:18'),
(20, 'Md Yeasin (Rana)', 'op8fhrma.tmss@gmail.com', 'YeasinRana', '2023-02-28 16:41:14', '$2y$10$nusxLtOcL/EmpmDxY1QBmepneaVNwLyDlcu00/rPUMYi7ZpsoaLeG', '202302280905300.jpg', NULL, '2023-02-28 16:40:02', '2023-02-28 17:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` int(11) NOT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `domain_id`, `sector_id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 'Bogra Central ', 1, NULL, NULL, NULL, NULL),
(2, 7, 1, 'Bogura North', 1, NULL, NULL, NULL, NULL),
(3, 7, 1, 'Bogura South', 1, NULL, NULL, NULL, NULL),
(4, 7, 1, 'Joypurhat', 1, NULL, NULL, NULL, NULL),
(5, 7, 1, 'Sirajgonj', 1, NULL, NULL, NULL, NULL),
(6, 8, 1, 'Dhaka North ', 1, NULL, NULL, NULL, NULL),
(7, 8, 1, 'Dhaka South ', 1, NULL, NULL, NULL, NULL),
(8, 8, 1, 'Savar ', 1, NULL, NULL, NULL, NULL),
(9, 8, 1, 'Narshingdi', 1, NULL, NULL, NULL, NULL),
(10, 9, 1, 'Chapainawabganj', 1, NULL, NULL, NULL, NULL),
(11, 9, 1, 'Naogaon', 1, NULL, NULL, NULL, NULL),
(12, 9, 1, 'Nozipur ', 1, NULL, NULL, NULL, NULL),
(13, 10, 1, 'Gaibandha', 1, NULL, NULL, NULL, NULL),
(14, 10, 1, 'Rangpur', 1, NULL, NULL, NULL, NULL),
(15, 10, 1, 'Kurigram', 1, NULL, NULL, NULL, NULL),
(16, 10, 1, 'Lalmonirhat', 1, NULL, NULL, NULL, NULL),
(17, 10, 1, 'Polashbari', 1, NULL, NULL, NULL, NULL),
(18, 11, 1, 'Chittagong North', 1, NULL, NULL, NULL, NULL),
(19, 11, 1, 'Chattagram South', 1, NULL, NULL, NULL, NULL),
(20, 11, 1, 'Satkania', 1, NULL, NULL, NULL, NULL),
(21, 11, 1, 'Feni ', 1, NULL, NULL, NULL, NULL),
(22, 11, 1, 'Noakhali', 1, NULL, NULL, NULL, NULL),
(23, 11, 1, 'Satkhira ', 1, NULL, NULL, NULL, NULL),
(24, 12, 1, 'Jessore', 1, NULL, NULL, NULL, NULL),
(25, 12, 1, 'Khulna ', 1, NULL, NULL, NULL, NULL),
(26, 12, 1, 'Kushtia', 1, NULL, NULL, NULL, NULL),
(27, 13, 1, 'Moulvibazar', 1, NULL, NULL, NULL, NULL),
(28, 13, 1, 'Sylhet ', 1, NULL, NULL, NULL, NULL),
(29, 13, 1, 'Beanibazar ', 1, NULL, NULL, NULL, NULL),
(30, 13, 1, 'Hobigonj', 1, NULL, NULL, NULL, NULL),
(31, 14, 1, 'Faridpur  ', 1, NULL, NULL, NULL, NULL),
(32, 14, 1, ' Barisal ', 1, NULL, NULL, NULL, NULL),
(33, 14, 1, 'Madaripur', 1, NULL, NULL, NULL, NULL),
(34, 15, 1, 'Dinajpur ', 1, NULL, NULL, NULL, NULL),
(35, 15, 1, 'Saidpur', 1, NULL, NULL, NULL, NULL),
(36, 15, 1, 'Thakurgaon', 1, NULL, NULL, NULL, NULL),
(37, 15, 1, 'Panchagarh', 1, NULL, NULL, NULL, NULL),
(38, 16, 1, 'Laxmipur ', 1, NULL, NULL, NULL, NULL),
(39, 16, 1, 'Comilla East ', 1, NULL, NULL, NULL, NULL),
(40, 16, 1, 'Cumilla West ', 1, NULL, NULL, NULL, NULL),
(41, 16, 1, 'Chandpur', 1, NULL, NULL, NULL, NULL),
(42, 17, 1, 'Pabna', 1, NULL, NULL, NULL, NULL),
(43, 17, 1, 'Chatmohor', 1, NULL, NULL, NULL, NULL),
(44, 17, 1, 'Puthia', 1, NULL, NULL, NULL, NULL),
(45, 17, 1, 'Natore', 1, NULL, NULL, NULL, NULL),
(46, 18, 1, 'Gazipur ', 1, NULL, NULL, NULL, NULL),
(47, 18, 1, 'Tangail', 1, NULL, NULL, NULL, NULL),
(48, 18, 1, 'Netrokona', 1, NULL, NULL, NULL, NULL),
(49, 18, 1, 'Jamalpur', 1, NULL, NULL, NULL, NULL),
(50, 25, NULL, 'N/A', 1, NULL, NULL, NULL, NULL),
(51, 26, NULL, 'N/I', 1, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `efiles`
--
ALTER TABLE `efiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_types`
--
ALTER TABLE `employee_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_statuses`
--
ALTER TABLE `job_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `new_employees`
--
ALTER TABLE `new_employees`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setups`
--
ALTER TABLE `setups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazillas`
--
ALTER TABLE `upazillas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `efiles`
--
ALTER TABLE `efiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_types`
--
ALTER TABLE `employee_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_statuses`
--
ALTER TABLE `job_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setups`
--
ALTER TABLE `setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upazillas`
--
ALTER TABLE `upazillas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
