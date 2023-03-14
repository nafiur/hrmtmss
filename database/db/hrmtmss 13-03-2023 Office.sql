-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 13, 2023 at 11:29 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrmtmss`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `domain_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basic_infos`
--

CREATE TABLE `basic_infos` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` int DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `joiningdate` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `domain_id` int DEFAULT NULL,
  `father_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status_id` int DEFAULT NULL,
  `birth_place_district_id` int DEFAULT NULL,
  `present_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_division_id` int DEFAULT NULL,
  `present_district_id` int DEFAULT NULL,
  `present_upazilla_id` int DEFAULT NULL,
  `permanent_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_division_id` int DEFAULT NULL,
  `permanent_district_id` int DEFAULT NULL,
  `permanent_upazilla_id` int DEFAULT NULL,
  `nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smartcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_groups_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_qualification_id` int DEFAULT NULL,
  `employee_type_id` int DEFAULT NULL,
  `employee_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_infos`
--

INSERT INTO `basic_infos` (`id`, `name`, `designation_id`, `gender_id`, `joiningdate`, `date_of_birth`, `domain_id`, `father_name`, `mother_name`, `marital_status_id`, `birth_place_district_id`, `present_village`, `present_post`, `present_postal_code`, `present_division_id`, `present_district_id`, `present_upazilla_id`, `permanent_village`, `permanent_post`, `permanent_postal_code`, `permanent_division_id`, `permanent_district_id`, `permanent_upazilla_id`, `nid`, `smartcard`, `blood_groups_id`, `mobile`, `email`, `educational_qualification_id`, `employee_type_id`, `employee_photo`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(10100004, 'Bogura Central', 1, NULL, '1999-03-04', '2023-02-26', 1, 'Md. Saiful Islam', 'Mst. Nasima Banu', 1, 1, 'Quaerat dolor debiti', 'Sheker Kola', '5800', 2, 1, 1, 'Quaerat dolor debiti', 'Sheker Kola', '5800', 1, 1, 1, 'Culpa eius non quis', '5855110', '5', '01713377093', 'nafiur@outlook.com', 1, NULL, NULL, 0, 1, 1, '2023-03-04 11:03:04', '2023-03-11 00:16:32'),
(10118707, 'Nafiur Rahman', 10, 1, '2015-01-01', '1989-12-20', 10, 'Md. Saiful Islam', 'Mst. Nasima Banu', 1, 6, 'Dakshin Bhag', 'Sheker Kola', '5800', 2, 6, 123, 'Dakshin Bhag', 'Sheker Kola', '5800', 2, 6, 123, '52141210', '54151211', '1', '01812005166', 'super@nafiur.com', 75, 1, NULL, 0, 1, 1, '2023-03-05 10:01:22', '2023-03-11 22:56:38'),
(10119800, 'Kutub Uddin', 1, 1, NULL, NULL, 3, 'Salam Ali', 'Samantha Yeasmin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1, 1, '2023-03-05 09:43:04', '2023-03-05 10:00:43'),
(10200004, 'Oprah Griffith', 12, NULL, '2010-07-12', '1983-10-20', 30, 'Clio Nichols', 'Adara Oneal', 3, 63, 'Totam cum assumenda', 'Non tempore eos et', 'Veritatis officia es', 3, 43, 490, 'Ut sed autem cupidat', 'Ea aute eaque tempor', 'Quos veritatis reici', 8, 25, 429, 'Aut dolor et dolor a', 'Possimus enim ut si', '1', 'Aut exercitation qui', 'lune@mailinator.com', 42, 2, NULL, 0, 1, 1, '2023-03-04 10:47:57', '2023-03-05 04:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `board_universities`
--

CREATE TABLE `board_universities` (
  `id` bigint UNSIGNED NOT NULL,
  `board_university_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `board_universities`
--

INSERT INTO `board_universities` (`id`, `board_university_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', NULL, NULL, NULL, NULL),
(2, 'Chittagong', NULL, NULL, NULL, NULL),
(3, 'Rajshahi', NULL, NULL, NULL, NULL),
(4, 'Comillah', NULL, NULL, NULL, NULL),
(5, 'Sylhet', NULL, NULL, NULL, NULL),
(6, 'Dinajpur', NULL, NULL, NULL, NULL),
(7, 'Jessore', NULL, NULL, NULL, NULL),
(8, 'Barisal', NULL, NULL, NULL, NULL),
(9, 'Dhaka University', NULL, NULL, NULL, NULL),
(10, 'Chittagong University', NULL, NULL, NULL, NULL),
(11, 'Rajshahi University', NULL, NULL, NULL, NULL),
(12, 'Bangladesh Agricultural University', NULL, NULL, NULL, NULL),
(13, 'National University', NULL, NULL, NULL, NULL),
(14, 'Jahangirnagar University', NULL, NULL, NULL, NULL),
(15, 'Bangladesh Islamic University', NULL, NULL, NULL, NULL),
(16, 'Shahjalal University of Science & Technology', NULL, NULL, NULL, NULL),
(17, 'Asian University', NULL, NULL, NULL, NULL),
(18, 'Open University', NULL, NULL, NULL, NULL),
(19, 'Queens University', NULL, NULL, NULL, NULL),
(20, 'Bhuiyan Academy', NULL, NULL, NULL, NULL),
(21, 'Stamford University', NULL, NULL, NULL, NULL),
(22, 'North South University', NULL, NULL, NULL, NULL),
(23, 'Northern University', NULL, NULL, NULL, NULL),
(24, 'East West University', NULL, NULL, NULL, NULL),
(25, 'Calcutta University', NULL, NULL, NULL, NULL),
(26, 'ATISH DIPANKAR UNIVERSITY', NULL, NULL, NULL, NULL),
(27, 'BUET', NULL, NULL, NULL, NULL),
(28, 'CUET', NULL, NULL, NULL, NULL),
(29, 'RUET', NULL, NULL, NULL, NULL),
(30, 'KUET', NULL, NULL, NULL, NULL),
(31, 'N/A', NULL, NULL, NULL, NULL),
(32, 'N/I', NULL, NULL, NULL, NULL),
(33, 'Dhaka International University', NULL, NULL, NULL, NULL),
(34, 'Darul Ahsan University', NULL, NULL, NULL, NULL),
(35, 'University of Caltutta (India)', NULL, NULL, NULL, NULL),
(36, 'Jagannath University', NULL, NULL, NULL, NULL),
(37, 'American World University', NULL, NULL, NULL, NULL),
(38, 'University of East London', NULL, NULL, NULL, NULL),
(39, 'University of Information Technology & Science', NULL, NULL, NULL, NULL),
(40, 'General', NULL, NULL, NULL, NULL),
(41, 'Edward University', NULL, NULL, NULL, NULL),
(42, 'Technical Education Board, Dhaka', NULL, NULL, NULL, NULL),
(43, 'Madrasah Board, Dhaka', NULL, NULL, NULL, NULL),
(44, 'University of Madraj, India', NULL, NULL, NULL, NULL),
(45, 'UITS', NULL, NULL, NULL, NULL),
(46, 'IUBAT', NULL, NULL, NULL, NULL),
(47, 'Daffodil University', NULL, NULL, NULL, NULL),
(48, 'Bangladesh University', NULL, NULL, NULL, NULL),
(49, 'BGC Trust University', NULL, NULL, NULL, NULL),
(50, 'DUET', NULL, NULL, NULL, NULL),
(51, 'Prime University', NULL, NULL, NULL, NULL),
(52, 'Bangalore University, India', NULL, NULL, NULL, NULL),
(53, 'Khulna University', NULL, NULL, NULL, NULL),
(54, 'Ahsanullah University of Science and Technology', NULL, NULL, NULL, NULL),
(55, 'Independent University, Bangladesh', NULL, NULL, NULL, NULL),
(56, 'ASA University', NULL, NULL, NULL, NULL),
(57, 'State Medical Faculty of Bangladesh', NULL, NULL, NULL, NULL),
(58, 'South East University', NULL, NULL, NULL, NULL),
(59, 'Eastern University', NULL, NULL, NULL, NULL),
(60, 'Oxford Brooks University', NULL, NULL, NULL, NULL),
(61, 'Uttara University', NULL, NULL, NULL, NULL),
(62, 'University of Liberal Arts Bangladesh', NULL, NULL, NULL, NULL),
(63, 'IBAISU', NULL, NULL, NULL, NULL),
(64, 'World University', NULL, NULL, NULL, NULL),
(65, 'Leading University', NULL, NULL, NULL, NULL),
(66, 'BNC', NULL, NULL, NULL, NULL),
(67, 'Dhaka Internation University', NULL, NULL, NULL, NULL),
(68, 'United Internation University', NULL, NULL, NULL, NULL),
(69, 'The University of Comilla, Bangladesh', NULL, NULL, NULL, NULL),
(70, 'Pharmacy Council of Bangladesh', NULL, NULL, NULL, NULL),
(71, 'PUST', NULL, NULL, NULL, NULL),
(72, 'Southern University', NULL, NULL, NULL, NULL),
(73, 'Bangabandhu Sheikh Mujib Medical University', NULL, NULL, NULL, NULL),
(74, 'Peoples Frienship University', NULL, NULL, NULL, NULL),
(75, 'USSR', NULL, NULL, NULL, NULL),
(76, 'BCPS, Dhaka', NULL, NULL, NULL, NULL),
(77, 'ITS University', NULL, NULL, NULL, NULL),
(78, 'BSMRSTU', NULL, NULL, NULL, NULL),
(79, 'Mawlana Bhashani Science and Technology University', NULL, NULL, NULL, NULL),
(80, 'BSMMU', NULL, NULL, NULL, NULL),
(81, 'Royal University', NULL, NULL, NULL, NULL),
(82, 'America Bangladesh University', NULL, NULL, NULL, NULL),
(83, 'Hajee Mohammad Danesh Science And Technology University', NULL, NULL, NULL, NULL),
(84, 'Gono Bishwabidyalay', NULL, NULL, NULL, NULL),
(85, 'Jatiya Kabi Kazi Nazrul Islam University', NULL, NULL, NULL, NULL),
(86, 'University of Development Alternative (UODA)', NULL, NULL, NULL, NULL),
(87, 'EIILM UNIVERSITY, SIKKIM', NULL, NULL, NULL, NULL),
(88, 'Primeasia University', NULL, NULL, NULL, NULL),
(89, 'BRAC University', NULL, NULL, NULL, NULL),
(90, 'Sylhet International University', NULL, NULL, NULL, NULL),
(91, 'Metropolitan University, Syhlet', NULL, NULL, NULL, NULL),
(92, 'City University', NULL, NULL, NULL, NULL),
(93, 'Noakhali Science and Technology University', NULL, NULL, NULL, NULL),
(94, 'Bangladesh Open University', NULL, NULL, NULL, NULL),
(95, 'Begum Rokeya University, Rangpur', NULL, NULL, NULL, NULL),
(96, 'Patuakhali Science and Technology University', NULL, NULL, NULL, NULL),
(97, 'Prince of Songkla University, Thailand', NULL, NULL, NULL, NULL),
(98, 'Premier University', NULL, NULL, NULL, NULL),
(99, 'North Bengal International University', NULL, NULL, NULL, NULL),
(100, 'Sonargaon University', NULL, NULL, NULL, NULL),
(101, 'Varendra University', NULL, NULL, NULL, NULL),
(102, 'International Islamic University Chittagong', NULL, NULL, NULL, NULL),
(103, 'Bangladesh University of Business and Technology', NULL, NULL, NULL, NULL),
(104, 'Z.H SIKDER UNIVFRSITY OF SCIENCE & TECHNOLOGY', NULL, NULL, NULL, NULL),
(105, 'Victoria University of Bangladesh', NULL, NULL, NULL, NULL),
(106, 'University of South Asia', NULL, NULL, NULL, NULL),
(107, 'University of Science and Technology, Chittagong', NULL, NULL, NULL, NULL),
(108, 'University of Global Village', NULL, NULL, NULL, NULL),
(109, 'University of Creative Technology, Chittagong', NULL, NULL, NULL, NULL),
(110, 'Times University, Bangladesh', NULL, NULL, NULL, NULL),
(111, 'The University of Asia Pacific', NULL, NULL, NULL, NULL),
(112, 'The Peoples University of Bangladesh', NULL, NULL, NULL, NULL),
(113, 'The Millenium University', NULL, NULL, NULL, NULL),
(114, 'The International University of Scholars', NULL, NULL, NULL, NULL),
(115, 'Sylhet Agricultural University', NULL, NULL, NULL, NULL),
(116, 'State University of Bangladesh', NULL, NULL, NULL, NULL),
(117, 'Southern University of Bangladesh, Chittagong', NULL, NULL, NULL, NULL),
(118, 'South Asian University', NULL, NULL, NULL, NULL),
(119, 'Sher-e-Bangla Agricultural University', NULL, NULL, NULL, NULL),
(120, 'Sheikh Fazilatunnesa Mujib University', NULL, NULL, NULL, NULL),
(121, 'Shanto Mariam University of Creative Technology', NULL, NULL, NULL, NULL),
(122, 'Ranoda Prashad Shaha University', NULL, NULL, NULL, NULL),
(123, 'Rangamati Science and Technology University', NULL, NULL, NULL, NULL),
(124, 'Rajshahi University of Engineering and Technology', NULL, NULL, NULL, NULL),
(125, 'Rajshahi Science & Technology University (RSTU), Natore', NULL, NULL, NULL, NULL),
(126, 'Rajshahi Medical University', NULL, NULL, NULL, NULL),
(127, 'Rabindra University, Bangladesh', NULL, NULL, NULL, NULL),
(128, 'Pundra University of Science and Technology', NULL, NULL, NULL, NULL),
(129, 'Presidency University', NULL, NULL, NULL, NULL),
(130, 'Port City International University', NULL, NULL, NULL, NULL),
(131, 'Pabna University of Science and Technology', NULL, NULL, NULL, NULL),
(132, 'Chittagong Veterinary and Animal Science University', NULL, NULL, NULL, NULL),
(133, 'Islamic University, Khustia', NULL, NULL, NULL, NULL),
(134, 'Bangladesh University of Professionals', NULL, NULL, NULL, NULL),
(135, 'The State Medical Faculty of Bangladesh', NULL, NULL, NULL, NULL),
(136, 'Charles Darwin University', NULL, NULL, NULL, NULL),
(137, 'European University of Bangladesh', NULL, NULL, NULL, NULL),
(138, 'First Capital University Bangladesh', NULL, NULL, NULL, NULL),
(139, 'Nababharat Shikkha Parishad (NSP) India', NULL, NULL, NULL, NULL),
(140, 'Comilla University', NULL, NULL, NULL, NULL),
(141, 'Green University of Bangladesh', NULL, NULL, NULL, NULL),
(142, 'Coventry University, UK', NULL, NULL, NULL, NULL),
(143, 'Segi University, Malaysia', NULL, NULL, NULL, NULL),
(144, 'University of Asia Pacific', NULL, NULL, NULL, NULL),
(145, 'Bangladesh University of Textiles', NULL, NULL, NULL, NULL),
(146, 'Bangladesh Institute of Management', NULL, NULL, NULL, NULL),
(147, 'Yonsei University, Korea', NULL, NULL, NULL, NULL),
(148, 'International Islamic University Malaysia', NULL, NULL, NULL, NULL),
(149, 'University of Adelaide, Australia', NULL, NULL, NULL, NULL),
(150, 'Tokyo Medical and Dental University, Japan', NULL, NULL, NULL, NULL),
(151, 'Heriot-Watt University, UK', NULL, NULL, NULL, NULL),
(152, 'Islamic University of Technology, Dhaka', NULL, NULL, NULL, NULL),
(153, 'Islamic Arabic University, Dhaka', NULL, NULL, NULL, NULL),
(154, 'North East University Bangladesh', NULL, NULL, NULL, NULL),
(155, 'Bangladesh Nursing & Midwifery Council', NULL, NULL, NULL, NULL),
(156, 'University of Barisal', NULL, NULL, NULL, NULL),
(157, 'Shinsu University', NULL, NULL, NULL, NULL),
(158, 'Bangladesh Institute of technology, Rajshahi', NULL, NULL, NULL, NULL),
(159, 'Soochow University, China', NULL, NULL, NULL, NULL),
(160, 'McMaster University, Canada', NULL, NULL, NULL, NULL),
(161, 'Desh Bhagat University, Punjab, India', NULL, NULL, NULL, NULL),
(162, 'Sofia Medical Academy, Bulgeria', NULL, NULL, NULL, NULL),
(163, 'Bangladesh College of Physicians and Surgeons (BCPS)', NULL, NULL, NULL, NULL),
(164, 'West Bengal', NULL, NULL, NULL, NULL),
(165, 'Odessa National Medical, Ukraine', NULL, NULL, NULL, NULL),
(166, 'American Independent University, California', NULL, NULL, NULL, NULL),
(167, 'American International University, Bangladesh', NULL, NULL, NULL, NULL),
(168, 'Bangabandhu Sheikh Mujibur Rahman Agricultural University (BSMRAU)', NULL, NULL, NULL, NULL),
(169, 'Central Board Of Secondary Education. India', NULL, NULL, NULL, NULL),
(170, 'Liceo de Cagayan University, Philippines', NULL, NULL, NULL, NULL),
(171, 'Ateneo de Davao University, Philippine', NULL, NULL, NULL, NULL),
(172, 'West Visayas State University, Philippine', NULL, NULL, NULL, NULL),
(173, 'Lupon, Davao Oriental, Philippine', NULL, NULL, NULL, NULL),
(174, 'Queen Margaret University, Edinburgh, UK', NULL, NULL, NULL, NULL),
(175, 'Public university in Manchester, England, UK', NULL, NULL, NULL, NULL),
(176, 'Peoples\' Friendship University of Russia', NULL, NULL, NULL, NULL),
(177, 'Rabindra Bharati University, Kolkata, India', NULL, NULL, NULL, NULL),
(178, 'Bangladesh Army University of Science and Technology', NULL, NULL, NULL, NULL),
(179, 'Sunamganj Science and Technology University', NULL, NULL, NULL, NULL),
(180, 'Kurigram Agricultural University', NULL, NULL, NULL, NULL),
(181, 'Sheikh Hasina Medical University, Khulna', NULL, NULL, NULL, NULL),
(182, 'Hobiganj Agricultural University', NULL, NULL, NULL, NULL),
(183, 'Bangabandhu Sheikh Mujibur Rahman University, Kishoreganj', NULL, NULL, NULL, NULL),
(184, 'Chandpur Science and Technology University', NULL, NULL, NULL, NULL),
(185, 'Bangabandhu Sheikh Mujibur Rahman Aviation And Aerospace University (BSMRAAU)', NULL, NULL, NULL, NULL),
(186, 'Sylhet Medical University', NULL, NULL, NULL, NULL),
(187, 'Bangamata Sheikh Fojilatunnesa Mujib Science and Technology University', NULL, NULL, NULL, NULL),
(188, 'Khulna Agricultural University', NULL, NULL, NULL, NULL),
(189, 'Sheikh Hasina University', NULL, NULL, NULL, NULL),
(190, 'Bangabandhu Sheikh Mujibur Rahman Digital University, Bangladesh', NULL, NULL, NULL, NULL),
(191, 'Bangabandhu Sheikh Mujibur Rahman Maritime University, Bangladesh', NULL, NULL, NULL, NULL),
(192, 'University of Barishal', NULL, NULL, NULL, NULL),
(193, 'Bangabandhu Sheikh Mujibur Rahman Science & Technology University', NULL, NULL, NULL, NULL),
(194, 'IBAIS University', NULL, NULL, NULL, NULL),
(195, 'Sheikh Hasina University of Science and Technology', NULL, NULL, NULL, NULL),
(196, 'R.T.M Al-Kabir Technical University', NULL, NULL, NULL, NULL),
(197, 'University of Skill Enrichment and Technology', NULL, NULL, NULL, NULL),
(198, 'University of Brahmanbaria', NULL, NULL, NULL, NULL),
(199, 'International Standard University', NULL, NULL, NULL, NULL),
(200, 'Trust University, Barishal', NULL, NULL, NULL, NULL),
(201, 'Bandarban University', NULL, NULL, NULL, NULL),
(202, 'Khulna Khan Bahadur Ahsanullah University', NULL, NULL, NULL, NULL),
(203, 'ZNRF University of Management Sciences', NULL, NULL, NULL, NULL),
(204, 'Anwer Khan Modern University', NULL, NULL, NULL, NULL),
(205, 'Tagore University of Creative Arts, Uttara, Dhaka, Bangladesh', NULL, NULL, NULL, NULL),
(206, 'Central University of Science and Technology', NULL, NULL, NULL, NULL),
(207, 'Rabindra Maitree University, Kushtia', NULL, NULL, NULL, NULL),
(208, 'Northern University of Business & Technology, Khulna', NULL, NULL, NULL, NULL),
(209, 'N.P.I University of Bangladesh', NULL, NULL, NULL, NULL),
(210, 'Canadian University of Bangladesh', NULL, NULL, NULL, NULL),
(211, 'Bangladesh Army International University of Science & Technology(BAIUST) ,Comilla', NULL, NULL, NULL, NULL),
(212, 'Bangladesh Army University of Engineering and Technology (BAUET), Qadirabad', NULL, NULL, NULL, NULL),
(213, 'Bangladesh Army University of Science and Technology(BAUST), Saidpur', NULL, NULL, NULL, NULL),
(214, 'CCN University of Science & Technology', NULL, NULL, NULL, NULL),
(215, 'Global University Bangladesh', NULL, NULL, NULL, NULL),
(216, 'German University Bangladesh', NULL, NULL, NULL, NULL),
(217, 'Ranada Prasad Shaha University', NULL, NULL, NULL, NULL),
(218, 'Cox\'s Bazar International University', NULL, NULL, NULL, NULL),
(219, 'Fareast International University', NULL, NULL, NULL, NULL),
(220, 'Notre Dame University Bangladesh', NULL, NULL, NULL, NULL),
(221, 'Chittagong Independent University', NULL, NULL, NULL, NULL),
(222, 'Bangladesh University of Health Sciences', NULL, NULL, NULL, NULL),
(223, 'Feni University', NULL, NULL, NULL, NULL),
(224, 'Khwaja Yunus Ali University', NULL, NULL, NULL, NULL),
(225, 'North Western University', NULL, NULL, NULL, NULL),
(226, 'Exim Bank Agricultural University, Bangladesh', NULL, NULL, NULL, NULL),
(227, 'Z.H Sikder University of Science & Technology', NULL, NULL, NULL, NULL),
(228, 'Ishakha International University, Bangladesh', NULL, NULL, NULL, NULL),
(229, 'First Capital University of Bangladesh', NULL, NULL, NULL, NULL),
(230, 'BGMEA University of Fashion & Technology(BUFT)', NULL, NULL, NULL, NULL),
(231, 'Hamdard University Bangladesh', NULL, NULL, NULL, NULL),
(232, 'The Calcutta Alternative Medical College', NULL, NULL, NULL, NULL),
(233, 'Mymensingh', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `domain_id` int NOT NULL,
  `zone_id` int NOT NULL,
  `area_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 1, NULL, NULL, NULL, NULL),
(2, 'Albania', 1, NULL, NULL, NULL, NULL),
(3, 'Algeria', 1, NULL, NULL, NULL, NULL),
(4, 'Andorra', 1, NULL, NULL, NULL, NULL),
(5, 'Angola', 1, NULL, NULL, NULL, NULL),
(6, 'Antigua and Barbuda', 1, NULL, NULL, NULL, NULL),
(7, 'Argentina', 1, NULL, NULL, NULL, NULL),
(8, 'Armenia', 1, NULL, NULL, NULL, NULL),
(9, 'Australia', 1, NULL, NULL, NULL, NULL),
(10, 'Austria', 1, NULL, NULL, NULL, NULL),
(11, 'Azerbaijan', 1, NULL, NULL, NULL, NULL),
(12, 'Bahamas', 1, NULL, NULL, NULL, NULL),
(13, 'Bahrain', 1, NULL, NULL, NULL, NULL),
(14, 'Bangladesh', 1, NULL, NULL, NULL, NULL),
(15, 'Barbados', 1, NULL, NULL, NULL, NULL),
(16, 'Belarus', 1, NULL, NULL, NULL, NULL),
(17, 'Belgium', 1, NULL, NULL, NULL, NULL),
(18, 'Belize', 1, NULL, NULL, NULL, NULL),
(19, 'Benin', 1, NULL, NULL, NULL, NULL),
(20, 'Bhutan', 1, NULL, NULL, NULL, NULL),
(21, 'Bolivia', 1, NULL, NULL, NULL, NULL),
(22, 'Bosnia and Herzegovina', 1, NULL, NULL, NULL, NULL),
(23, 'Botswana', 1, NULL, NULL, NULL, NULL),
(24, 'Brazil', 1, NULL, NULL, NULL, NULL),
(25, 'Brunei', 1, NULL, NULL, NULL, NULL),
(26, 'Bulgaria', 1, NULL, NULL, NULL, NULL),
(27, 'Burkina Faso', 1, NULL, NULL, NULL, NULL),
(28, 'Burundi', 1, NULL, NULL, NULL, NULL),
(29, 'Côte d\'Ivoire', 1, NULL, NULL, NULL, NULL),
(30, 'Cabo Verde', 1, NULL, NULL, NULL, NULL),
(31, 'Cambodia', 1, NULL, NULL, NULL, NULL),
(32, 'Cameroon', 1, NULL, NULL, NULL, NULL),
(33, 'Canada', 1, NULL, NULL, NULL, NULL),
(34, 'Central African Republic', 1, NULL, NULL, NULL, NULL),
(35, 'Chad', 1, NULL, NULL, NULL, NULL),
(36, 'Chile', 1, NULL, NULL, NULL, NULL),
(37, 'China', 1, NULL, NULL, NULL, NULL),
(38, 'Colombia', 1, NULL, NULL, NULL, NULL),
(39, 'Comoros', 1, NULL, NULL, NULL, NULL),
(40, 'Congo (Congo-Brazzaville)', 1, NULL, NULL, NULL, NULL),
(41, 'Costa Rica', 1, NULL, NULL, NULL, NULL),
(42, 'Croatia', 1, NULL, NULL, NULL, NULL),
(43, 'Cuba', 1, NULL, NULL, NULL, NULL),
(44, 'Cyprus', 1, NULL, NULL, NULL, NULL),
(45, 'Czechia (Czech Republic)', 1, NULL, NULL, NULL, NULL),
(46, 'Democratic Republic of the Congo', 1, NULL, NULL, NULL, NULL),
(47, 'Denmark', 1, NULL, NULL, NULL, NULL),
(48, 'Djibouti', 1, NULL, NULL, NULL, NULL),
(49, 'Dominica', 1, NULL, NULL, NULL, NULL),
(50, 'Dominican Republic', 1, NULL, NULL, NULL, NULL),
(51, 'Ecuador', 1, NULL, NULL, NULL, NULL),
(52, 'Egypt', 1, NULL, NULL, NULL, NULL),
(53, 'El Salvador', 1, NULL, NULL, NULL, NULL),
(54, 'Equatorial Guinea', 1, NULL, NULL, NULL, NULL),
(55, 'Eritrea', 1, NULL, NULL, NULL, NULL),
(56, 'Estonia', 1, NULL, NULL, NULL, NULL),
(57, 'Eswatini (fmr. \"Swaziland\")', 1, NULL, NULL, NULL, NULL),
(58, 'Ethiopia', 1, NULL, NULL, NULL, NULL),
(59, 'Fiji', 1, NULL, NULL, NULL, NULL),
(60, 'Finland', 1, NULL, NULL, NULL, NULL),
(61, 'France', 1, NULL, NULL, NULL, NULL),
(62, 'Gabon', 1, NULL, NULL, NULL, NULL),
(63, 'Gambia', 1, NULL, NULL, NULL, NULL),
(64, 'Georgia', 1, NULL, NULL, NULL, NULL),
(65, 'Germany', 1, NULL, NULL, NULL, NULL),
(66, 'Ghana', 1, NULL, NULL, NULL, NULL),
(67, 'Greece', 1, NULL, NULL, NULL, NULL),
(68, 'Grenada', 1, NULL, NULL, NULL, NULL),
(69, 'Guatemala', 1, NULL, NULL, NULL, NULL),
(70, 'Guinea', 1, NULL, NULL, NULL, NULL),
(71, 'Guinea-Bissau', 1, NULL, NULL, NULL, NULL),
(72, 'Guyana', 1, NULL, NULL, NULL, NULL),
(73, 'Haiti', 1, NULL, NULL, NULL, NULL),
(74, 'Holy See', 1, NULL, NULL, NULL, NULL),
(75, 'Honduras', 1, NULL, NULL, NULL, NULL),
(76, 'Hungary', 1, NULL, NULL, NULL, NULL),
(77, 'Iceland', 1, NULL, NULL, NULL, NULL),
(78, 'India', 1, NULL, NULL, NULL, NULL),
(79, 'Indonesia', 1, NULL, NULL, NULL, NULL),
(80, 'Iran', 1, NULL, NULL, NULL, NULL),
(81, 'Iraq', 1, NULL, NULL, NULL, NULL),
(82, 'Ireland', 1, NULL, NULL, NULL, NULL),
(83, 'Israel', 1, NULL, NULL, NULL, NULL),
(84, 'Italy', 1, NULL, NULL, NULL, NULL),
(85, 'Jamaica', 1, NULL, NULL, NULL, NULL),
(86, 'Japan', 1, NULL, NULL, NULL, NULL),
(87, 'Jordan', 1, NULL, NULL, NULL, NULL),
(88, 'Kazakhstan', 1, NULL, NULL, NULL, NULL),
(89, 'Kenya', 1, NULL, NULL, NULL, NULL),
(90, 'Kiribati', 1, NULL, NULL, NULL, NULL),
(91, 'Kuwait', 1, NULL, NULL, NULL, NULL),
(92, 'Kyrgyzstan', 1, NULL, NULL, NULL, NULL),
(93, 'Laos', 1, NULL, NULL, NULL, NULL),
(94, 'Latvia', 1, NULL, NULL, NULL, NULL),
(95, 'Lebanon', 1, NULL, NULL, NULL, NULL),
(96, 'Lesotho', 1, NULL, NULL, NULL, NULL),
(97, 'Liberia', 1, NULL, NULL, NULL, NULL),
(98, 'Libya', 1, NULL, NULL, NULL, NULL),
(99, 'Liechtenstein', 1, NULL, NULL, NULL, NULL),
(100, 'Lithuania', 1, NULL, NULL, NULL, NULL),
(101, 'Luxembourg', 1, NULL, NULL, NULL, NULL),
(102, 'Madagascar', 1, NULL, NULL, NULL, NULL),
(103, 'Malawi', 1, NULL, NULL, NULL, NULL),
(104, 'Malaysia', 1, NULL, NULL, NULL, NULL),
(105, 'Maldives', 1, NULL, NULL, NULL, NULL),
(106, 'Mali', 1, NULL, NULL, NULL, NULL),
(107, 'Malta', 1, NULL, NULL, NULL, NULL),
(108, 'Marshall Islands', 1, NULL, NULL, NULL, NULL),
(109, 'Mauritania', 1, NULL, NULL, NULL, NULL),
(110, 'Mauritius', 1, NULL, NULL, NULL, NULL),
(111, 'Mexico', 1, NULL, NULL, NULL, NULL),
(112, 'Micronesia', 1, NULL, NULL, NULL, NULL),
(113, 'Moldova', 1, NULL, NULL, NULL, NULL),
(114, 'Monaco', 1, NULL, NULL, NULL, NULL),
(115, 'Mongolia', 1, NULL, NULL, NULL, NULL),
(116, 'Montenegro', 1, NULL, NULL, NULL, NULL),
(117, 'Morocco', 1, NULL, NULL, NULL, NULL),
(118, 'Mozambique', 1, NULL, NULL, NULL, NULL),
(119, 'Myanmar (formerly Burma)', 1, NULL, NULL, NULL, NULL),
(120, 'Namibia', 1, NULL, NULL, NULL, NULL),
(121, 'Nauru', 1, NULL, NULL, NULL, NULL),
(122, 'Nepal', 1, NULL, NULL, NULL, NULL),
(123, 'Netherlands', 1, NULL, NULL, NULL, NULL),
(124, 'New Zealand', 1, NULL, NULL, NULL, NULL),
(125, 'Nicaragua', 1, NULL, NULL, NULL, NULL),
(126, 'Niger', 1, NULL, NULL, NULL, NULL),
(127, 'Nigeria', 1, NULL, NULL, NULL, NULL),
(128, 'North Korea', 1, NULL, NULL, NULL, NULL),
(129, 'North Macedonia', 1, NULL, NULL, NULL, NULL),
(130, 'Norway', 1, NULL, NULL, NULL, NULL),
(131, 'Oman', 1, NULL, NULL, NULL, NULL),
(132, 'Pakistan', 1, NULL, NULL, NULL, NULL),
(133, 'Palau', 1, NULL, NULL, NULL, NULL),
(134, 'Palestine State', 1, NULL, NULL, NULL, NULL),
(135, 'Panama', 1, NULL, NULL, NULL, NULL),
(136, 'Papua New Guinea', 1, NULL, NULL, NULL, NULL),
(137, 'Paraguay', 1, NULL, NULL, NULL, NULL),
(138, 'Peru', 1, NULL, NULL, NULL, NULL),
(139, 'Philippines', 1, NULL, NULL, NULL, NULL),
(140, 'Poland', 1, NULL, NULL, NULL, NULL),
(141, 'Portugal', 1, NULL, NULL, NULL, NULL),
(142, 'Qatar', 1, NULL, NULL, NULL, NULL),
(143, 'Romania', 1, NULL, NULL, NULL, NULL),
(144, 'Russia', 1, NULL, NULL, NULL, NULL),
(145, 'Rwanda', 1, NULL, NULL, NULL, NULL),
(146, 'Saint Kitts and Nevis', 1, NULL, NULL, NULL, NULL),
(147, 'Saint Lucia', 1, NULL, NULL, NULL, NULL),
(148, 'Saint Vincent and the Grenadines', 1, NULL, NULL, NULL, NULL),
(149, 'Samoa', 1, NULL, NULL, NULL, NULL),
(150, 'San Marino', 1, NULL, NULL, NULL, NULL),
(151, 'Sao Tome and Principe', 1, NULL, NULL, NULL, NULL),
(152, 'Saudi Arabia', 1, NULL, NULL, NULL, NULL),
(153, 'Senegal', 1, NULL, NULL, NULL, NULL),
(154, 'Serbia', 1, NULL, NULL, NULL, NULL),
(155, 'Seychelles', 1, NULL, NULL, NULL, NULL),
(156, 'Sierra Leone', 1, NULL, NULL, NULL, NULL),
(157, 'Singapore', 1, NULL, NULL, NULL, NULL),
(158, 'Slovakia', 1, NULL, NULL, NULL, NULL),
(159, 'Slovenia', 1, NULL, NULL, NULL, NULL),
(160, 'Solomon Islands', 1, NULL, NULL, NULL, NULL),
(161, 'Somalia', 1, NULL, NULL, NULL, NULL),
(162, 'South Africa', 1, NULL, NULL, NULL, NULL),
(163, 'South Korea', 1, NULL, NULL, NULL, NULL),
(164, 'South Sudan', 1, NULL, NULL, NULL, NULL),
(165, 'Spain', 1, NULL, NULL, NULL, NULL),
(166, 'Sri Lanka', 1, NULL, NULL, NULL, NULL),
(167, 'Sudan', 1, NULL, NULL, NULL, NULL),
(168, 'Suriname', 1, NULL, NULL, NULL, NULL),
(169, 'Sweden', 1, NULL, NULL, NULL, NULL),
(170, 'Switzerland', 1, NULL, NULL, NULL, NULL),
(171, 'Syria', 1, NULL, NULL, NULL, NULL),
(172, 'Tajikistan', 1, NULL, NULL, NULL, NULL),
(173, 'Tanzania', 1, NULL, NULL, NULL, NULL),
(174, 'Thailand', 1, NULL, NULL, NULL, NULL),
(175, 'Timor-Leste', 1, NULL, NULL, NULL, NULL),
(176, 'Togo', 1, NULL, NULL, NULL, NULL),
(177, 'Tonga', 1, NULL, NULL, NULL, NULL),
(178, 'Trinidad and Tobago', 1, NULL, NULL, NULL, NULL),
(179, 'Tunisia', 1, NULL, NULL, NULL, NULL),
(180, 'Turkey', 1, NULL, NULL, NULL, NULL),
(181, 'Turkmenistan', 1, NULL, NULL, NULL, NULL),
(182, 'Tuvalu', 1, NULL, NULL, NULL, NULL),
(183, 'Uganda', 1, NULL, NULL, NULL, NULL),
(184, 'Ukraine', 1, NULL, NULL, NULL, NULL),
(185, 'United Arab Emirates', 1, NULL, NULL, NULL, NULL),
(186, 'United Kingdom', 1, NULL, NULL, NULL, NULL),
(187, 'United States of America', 1, NULL, NULL, NULL, NULL),
(188, 'Uruguay', 1, NULL, NULL, NULL, NULL),
(189, 'Uzbekistan', 1, NULL, NULL, NULL, NULL),
(190, 'Vanuatu', 1, NULL, NULL, NULL, NULL),
(191, 'Venezuela', 1, NULL, NULL, NULL, NULL),
(192, 'Vietnam', 1, NULL, NULL, NULL, NULL),
(193, 'Yemen', 1, NULL, NULL, NULL, NULL),
(194, 'Zambia', 1, NULL, NULL, NULL, NULL),
(195, 'Zimbabwe', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL, NULL, NULL),
(2, 'Albania', NULL, NULL, NULL, NULL),
(3, 'Algeria', NULL, NULL, NULL, NULL),
(4, 'Andorra', NULL, NULL, NULL, NULL),
(5, 'Angola', NULL, NULL, NULL, NULL),
(6, 'Antigua and Barbuda', NULL, NULL, NULL, NULL),
(7, 'Argentina', NULL, NULL, NULL, NULL),
(8, 'Armenia', NULL, NULL, NULL, NULL),
(9, 'Australia', NULL, NULL, NULL, NULL),
(10, 'Austria', NULL, NULL, NULL, NULL),
(11, 'Azerbaijan', NULL, NULL, NULL, NULL),
(12, 'Bahamas', NULL, NULL, NULL, NULL),
(13, 'Bahrain', NULL, NULL, NULL, NULL),
(14, 'Bangladesh', NULL, NULL, NULL, NULL),
(15, 'Barbados', NULL, NULL, NULL, NULL),
(16, 'Belarus', NULL, NULL, NULL, NULL),
(17, 'Belgium', NULL, NULL, NULL, NULL),
(18, 'Belize', NULL, NULL, NULL, NULL),
(19, 'Benin', NULL, NULL, NULL, NULL),
(20, 'Bhutan', NULL, NULL, NULL, NULL),
(21, 'Bolivia', NULL, NULL, NULL, NULL),
(22, 'Bosnia and Herzegovina', NULL, NULL, NULL, NULL),
(23, 'Botswana', NULL, NULL, NULL, NULL),
(24, 'Brazil', NULL, NULL, NULL, NULL),
(25, 'Brunei', NULL, NULL, NULL, NULL),
(26, 'Bulgaria', NULL, NULL, NULL, NULL),
(27, 'Burkina Faso', NULL, NULL, NULL, NULL),
(28, 'Burundi', NULL, NULL, NULL, NULL),
(29, 'Côte d\'Ivoire', NULL, NULL, NULL, NULL),
(30, 'Cabo Verde', NULL, NULL, NULL, NULL),
(31, 'Cambodia', NULL, NULL, NULL, NULL),
(32, 'Cameroon', NULL, NULL, NULL, NULL),
(33, 'Canada', NULL, NULL, NULL, NULL),
(34, 'Central African Republic', NULL, NULL, NULL, NULL),
(35, 'Chad', NULL, NULL, NULL, NULL),
(36, 'Chile', NULL, NULL, NULL, NULL),
(37, 'China', NULL, NULL, NULL, NULL),
(38, 'Colombia', NULL, NULL, NULL, NULL),
(39, 'Comoros', NULL, NULL, NULL, NULL),
(40, 'Congo (Congo-Brazzaville)', NULL, NULL, NULL, NULL),
(41, 'Costa Rica', NULL, NULL, NULL, NULL),
(42, 'Croatia', NULL, NULL, NULL, NULL),
(43, 'Cuba', NULL, NULL, NULL, NULL),
(44, 'Cyprus', NULL, NULL, NULL, NULL),
(45, 'Czechia (Czech Republic)', NULL, NULL, NULL, NULL),
(46, 'Democratic Republic of the Congo', NULL, NULL, NULL, NULL),
(47, 'Denmark', NULL, NULL, NULL, NULL),
(48, 'Djibouti', NULL, NULL, NULL, NULL),
(49, 'Dominica', NULL, NULL, NULL, NULL),
(50, 'Dominican Republic', NULL, NULL, NULL, NULL),
(51, 'Ecuador', NULL, NULL, NULL, NULL),
(52, 'Egypt', NULL, NULL, NULL, NULL),
(53, 'El Salvador', NULL, NULL, NULL, NULL),
(54, 'Equatorial Guinea', NULL, NULL, NULL, NULL),
(55, 'Eritrea', NULL, NULL, NULL, NULL),
(56, 'Estonia', NULL, NULL, NULL, NULL),
(57, 'Eswatini (fmr. \"Swaziland\")', NULL, NULL, NULL, NULL),
(58, 'Ethiopia', NULL, NULL, NULL, NULL),
(59, 'Fiji', NULL, NULL, NULL, NULL),
(60, 'Finland', NULL, NULL, NULL, NULL),
(61, 'France', NULL, NULL, NULL, NULL),
(62, 'Gabon', NULL, NULL, NULL, NULL),
(63, 'Gambia', NULL, NULL, NULL, NULL),
(64, 'Georgia', NULL, NULL, NULL, NULL),
(65, 'Germany', NULL, NULL, NULL, NULL),
(66, 'Ghana', NULL, NULL, NULL, NULL),
(67, 'Greece', NULL, NULL, NULL, NULL),
(68, 'Grenada', NULL, NULL, NULL, NULL),
(69, 'Guatemala', NULL, NULL, NULL, NULL),
(70, 'Guinea', NULL, NULL, NULL, NULL),
(71, 'Guinea-Bissau', NULL, NULL, NULL, NULL),
(72, 'Guyana', NULL, NULL, NULL, NULL),
(73, 'Haiti', NULL, NULL, NULL, NULL),
(74, 'Holy See', NULL, NULL, NULL, NULL),
(75, 'Honduras', NULL, NULL, NULL, NULL),
(76, 'Hungary', NULL, NULL, NULL, NULL),
(77, 'Iceland', NULL, NULL, NULL, NULL),
(78, 'India', NULL, NULL, NULL, NULL),
(79, 'Indonesia', NULL, NULL, NULL, NULL),
(80, 'Iran', NULL, NULL, NULL, NULL),
(81, 'Iraq', NULL, NULL, NULL, NULL),
(82, 'Ireland', NULL, NULL, NULL, NULL),
(83, 'Israel', NULL, NULL, NULL, NULL),
(84, 'Italy', NULL, NULL, NULL, NULL),
(85, 'Jamaica', NULL, NULL, NULL, NULL),
(86, 'Japan', NULL, NULL, NULL, NULL),
(87, 'Jordan', NULL, NULL, NULL, NULL),
(88, 'Kazakhstan', NULL, NULL, NULL, NULL),
(89, 'Kenya', NULL, NULL, NULL, NULL),
(90, 'Kiribati', NULL, NULL, NULL, NULL),
(91, 'Kuwait', NULL, NULL, NULL, NULL),
(92, 'Kyrgyzstan', NULL, NULL, NULL, NULL),
(93, 'Laos', NULL, NULL, NULL, NULL),
(94, 'Latvia', NULL, NULL, NULL, NULL),
(95, 'Lebanon', NULL, NULL, NULL, NULL),
(96, 'Lesotho', NULL, NULL, NULL, NULL),
(97, 'Liberia', NULL, NULL, NULL, NULL),
(98, 'Libya', NULL, NULL, NULL, NULL),
(99, 'Liechtenstein', NULL, NULL, NULL, NULL),
(100, 'Lithuania', NULL, NULL, NULL, NULL),
(101, 'Luxembourg', NULL, NULL, NULL, NULL),
(102, 'Madagascar', NULL, NULL, NULL, NULL),
(103, 'Malawi', NULL, NULL, NULL, NULL),
(104, 'Malaysia', NULL, NULL, NULL, NULL),
(105, 'Maldives', NULL, NULL, NULL, NULL),
(106, 'Mali', NULL, NULL, NULL, NULL),
(107, 'Malta', NULL, NULL, NULL, NULL),
(108, 'Marshall Islands', NULL, NULL, NULL, NULL),
(109, 'Mauritania', NULL, NULL, NULL, NULL),
(110, 'Mauritius', NULL, NULL, NULL, NULL),
(111, 'Mexico', NULL, NULL, NULL, NULL),
(112, 'Micronesia', NULL, NULL, NULL, NULL),
(113, 'Moldova', NULL, NULL, NULL, NULL),
(114, 'Monaco', NULL, NULL, NULL, NULL),
(115, 'Mongolia', NULL, NULL, NULL, NULL),
(116, 'Montenegro', NULL, NULL, NULL, NULL),
(117, 'Morocco', NULL, NULL, NULL, NULL),
(118, 'Mozambique', NULL, NULL, NULL, NULL),
(119, 'Myanmar (formerly Burma)', NULL, NULL, NULL, NULL),
(120, 'Namibia', NULL, NULL, NULL, NULL),
(121, 'Nauru', NULL, NULL, NULL, NULL),
(122, 'Nepal', NULL, NULL, NULL, NULL),
(123, 'Netherlands', NULL, NULL, NULL, NULL),
(124, 'New Zealand', NULL, NULL, NULL, NULL),
(125, 'Nicaragua', NULL, NULL, NULL, NULL),
(126, 'Niger', NULL, NULL, NULL, NULL),
(127, 'Nigeria', NULL, NULL, NULL, NULL),
(128, 'North Korea', NULL, NULL, NULL, NULL),
(129, 'North Macedonia', NULL, NULL, NULL, NULL),
(130, 'Norway', NULL, NULL, NULL, NULL),
(131, 'Oman', NULL, NULL, NULL, NULL),
(132, 'Pakistan', NULL, NULL, NULL, NULL),
(133, 'Palau', NULL, NULL, NULL, NULL),
(134, 'Palestine State', NULL, NULL, NULL, NULL),
(135, 'Panama', NULL, NULL, NULL, NULL),
(136, 'Papua New Guinea', NULL, NULL, NULL, NULL),
(137, 'Paraguay', NULL, NULL, NULL, NULL),
(138, 'Peru', NULL, NULL, NULL, NULL),
(139, 'Philippines', NULL, NULL, NULL, NULL),
(140, 'Poland', NULL, NULL, NULL, NULL),
(141, 'Portugal', NULL, NULL, NULL, NULL),
(142, 'Qatar', NULL, NULL, NULL, NULL),
(143, 'Romania', NULL, NULL, NULL, NULL),
(144, 'Russia', NULL, NULL, NULL, NULL),
(145, 'Rwanda', NULL, NULL, NULL, NULL),
(146, 'Saint Kitts and Nevis', NULL, NULL, NULL, NULL),
(147, 'Saint Lucia', NULL, NULL, NULL, NULL),
(148, 'Saint Vincent and the Grenadines', NULL, NULL, NULL, NULL),
(149, 'Samoa', NULL, NULL, NULL, NULL),
(150, 'San Marino', NULL, NULL, NULL, NULL),
(151, 'Sao Tome and Principe', NULL, NULL, NULL, NULL),
(152, 'Saudi Arabia', NULL, NULL, NULL, NULL),
(153, 'Senegal', NULL, NULL, NULL, NULL),
(154, 'Serbia', NULL, NULL, NULL, NULL),
(155, 'Seychelles', NULL, NULL, NULL, NULL),
(156, 'Sierra Leone', NULL, NULL, NULL, NULL),
(157, 'Singapore', NULL, NULL, NULL, NULL),
(158, 'Slovakia', NULL, NULL, NULL, NULL),
(159, 'Slovenia', NULL, NULL, NULL, NULL),
(160, 'Solomon Islands', NULL, NULL, NULL, NULL),
(161, 'Somalia', NULL, NULL, NULL, NULL),
(162, 'South Africa', NULL, NULL, NULL, NULL),
(163, 'South Korea', NULL, NULL, NULL, NULL),
(164, 'South Sudan', NULL, NULL, NULL, NULL),
(165, 'Spain', NULL, NULL, NULL, NULL),
(166, 'Sri Lanka', NULL, NULL, NULL, NULL),
(167, 'Sudan', NULL, NULL, NULL, NULL),
(168, 'Suriname', NULL, NULL, NULL, NULL),
(169, 'Sweden', NULL, NULL, NULL, NULL),
(170, 'Switzerland', NULL, NULL, NULL, NULL),
(171, 'Syria', NULL, NULL, NULL, NULL),
(172, 'Tajikistan', NULL, NULL, NULL, NULL),
(173, 'Tanzania', NULL, NULL, NULL, NULL),
(174, 'Thailand', NULL, NULL, NULL, NULL),
(175, 'Timor-Leste', NULL, NULL, NULL, NULL),
(176, 'Togo', NULL, NULL, NULL, NULL),
(177, 'Tonga', NULL, NULL, NULL, NULL),
(178, 'Trinidad and Tobago', NULL, NULL, NULL, NULL),
(179, 'Tunisia', NULL, NULL, NULL, NULL),
(180, 'Turkey', NULL, NULL, NULL, NULL),
(181, 'Turkmenistan', NULL, NULL, NULL, NULL),
(182, 'Tuvalu', NULL, NULL, NULL, NULL),
(183, 'Uganda', NULL, NULL, NULL, NULL),
(184, 'Ukraine', NULL, NULL, NULL, NULL),
(185, 'United Arab Emirates', NULL, NULL, NULL, NULL),
(186, 'United Kingdom', NULL, NULL, NULL, NULL),
(187, 'United States of America', NULL, NULL, NULL, NULL),
(188, 'Uruguay', NULL, NULL, NULL, NULL),
(189, 'Uzbekistan', NULL, NULL, NULL, NULL),
(190, 'Vanuatu', NULL, NULL, NULL, NULL),
(191, 'Venezuela', NULL, NULL, NULL, NULL),
(192, 'Vietnam', NULL, NULL, NULL, NULL),
(193, 'Yemen', NULL, NULL, NULL, NULL),
(194, 'Zambia', NULL, NULL, NULL, NULL),
(195, 'Zimbabwe', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_institute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_passing_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_grade_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `employee_id`, `course_name`, `name_of_institute`, `course_subject`, `course_duration`, `course_passing_year`, `course_grade_class`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10100004, 'ABCD', 'HNKKBNKB Uni', 'SAHJ', '4', '65', 'A+', 1, 1, '2023-03-07 01:08:38', '2023-03-10 23:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint UNSIGNED NOT NULL,
  `division_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'Bagerhat', 'বাগেরহাট', 1, NULL, NULL, NULL, NULL),
(2, 1, 'Bandarban', 'বান্দরবান', 1, NULL, NULL, NULL, NULL),
(3, 4, 'Barguna', 'বরগুনা', 1, NULL, NULL, NULL, NULL),
(4, 4, 'Barishal', 'বরিশাল', 1, NULL, NULL, NULL, NULL),
(5, 4, 'Bhola', 'ভোলা', 1, NULL, NULL, NULL, NULL),
(6, 2, 'Bogura', 'বগুড়া', 1, NULL, NULL, NULL, NULL),
(7, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, NULL, NULL, NULL, NULL),
(8, 1, 'Chandpur', 'চাঁদপুর', 1, NULL, NULL, NULL, NULL),
(9, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(10, 1, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(11, 3, 'Chuadanga', 'চুয়াডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(12, 1, 'Coxsbazar', 'কক্সবাজার', 1, NULL, NULL, NULL, NULL),
(13, 1, 'Cumilla', 'কুমিল্লা', 1, NULL, NULL, NULL, NULL),
(14, 6, 'Dhaka', 'ঢাকা', 1, NULL, NULL, NULL, NULL),
(15, 7, 'Dinajpur', 'দিনাজপুর', 1, NULL, NULL, NULL, NULL),
(16, 6, 'Faridpur', 'ফরিদপুর', 1, NULL, NULL, NULL, NULL),
(17, 1, 'Feni', 'ফেনী', 1, NULL, NULL, NULL, NULL),
(18, 7, 'Gaibandha', 'গাইবান্ধা', 1, NULL, NULL, NULL, NULL),
(19, 6, 'Gazipur', 'গাজীপুর', 1, NULL, NULL, NULL, NULL),
(20, 6, 'Gopalganj', 'গোপালগঞ্জ', 1, NULL, NULL, NULL, NULL),
(21, 5, 'Habiganj', 'হবিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(22, 8, 'Jamalpur', 'জামালপুর', 1, NULL, NULL, NULL, NULL),
(23, 3, 'Jashore', 'যশোর', 1, NULL, NULL, NULL, NULL),
(24, 4, 'Jhalakathi', 'ঝালকাঠি', 1, NULL, NULL, NULL, NULL),
(25, 3, 'Jhenaidah', 'ঝিনাইদহ', 1, NULL, NULL, NULL, NULL),
(26, 2, 'Joypurhat', 'জয়পুরহাট', 1, NULL, NULL, NULL, NULL),
(27, 1, 'Khagrachhari', 'খাগড়াছড়ি', 1, NULL, NULL, NULL, NULL),
(28, 3, 'Khulna', 'খুলনা', 1, NULL, NULL, NULL, NULL),
(29, 6, 'Kishoreganj', 'কিশোরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(30, 7, 'Kurigram', 'কুড়িগ্রাম', 1, NULL, NULL, NULL, NULL),
(31, 3, 'Kushtia', 'কুষ্টিয়া', 1, NULL, NULL, NULL, NULL),
(32, 1, 'Lakshmipur', 'লক্ষ্মীপুর', 1, NULL, NULL, NULL, NULL),
(33, 7, 'Lalmonirhat', 'লালমনিরহাট', 1, NULL, NULL, NULL, NULL),
(34, 6, 'Madaripur', 'মাদারীপুর', 1, NULL, NULL, NULL, NULL),
(35, 3, 'Magura', 'মাগুরা', 1, NULL, NULL, NULL, NULL),
(36, 6, 'Manikganj', 'মানিকগঞ্জ', 1, NULL, NULL, NULL, NULL),
(37, 3, 'Meherpur', 'মেহেরপুর', 1, NULL, NULL, NULL, NULL),
(38, 5, 'Moulvibazar', 'মৌলভীবাজার', 1, NULL, NULL, NULL, NULL),
(39, 6, 'Munshiganj', 'মুন্সিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(40, 8, 'Mymensingh', 'ময়মনসিংহ', 1, NULL, NULL, NULL, NULL),
(41, 2, 'Naogaon', 'নওগাঁ', 1, NULL, NULL, NULL, NULL),
(42, 3, 'Narail', 'নড়াইল', 1, NULL, NULL, NULL, NULL),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', 1, NULL, NULL, NULL, NULL),
(44, 6, 'Narsingdi', 'নরসিংদী', 1, NULL, NULL, NULL, NULL),
(45, 2, 'Natore', 'নাটোর', 1, NULL, NULL, NULL, NULL),
(46, 8, 'Netrokona', 'নেত্রকোণা', 1, NULL, NULL, NULL, NULL),
(47, 7, 'Nilphamari', 'নীলফামারী', 1, NULL, NULL, NULL, NULL),
(48, 1, 'Noakhali', 'নোয়াখালী', 1, NULL, NULL, NULL, NULL),
(49, 2, 'Pabna', 'পাবনা', 1, NULL, NULL, NULL, NULL),
(50, 7, 'Panchagarh', 'পঞ্চগড়', 1, NULL, NULL, NULL, NULL),
(51, 4, 'Patuakhali', 'পটুয়াখালী', 1, NULL, NULL, NULL, NULL),
(52, 4, 'Pirojpur', 'পিরোজপুর', 1, NULL, NULL, NULL, NULL),
(53, 6, 'Rajbari', 'রাজবাড়ী', 1, NULL, NULL, NULL, NULL),
(54, 2, 'Rajshahi', 'রাজশাহী', 1, NULL, NULL, NULL, NULL),
(55, 1, 'Rangamati', 'রাঙ্গামাটি', 1, NULL, NULL, NULL, NULL),
(56, 7, 'Rangpur', 'রংপুর', 1, NULL, NULL, NULL, NULL),
(57, 3, 'Satkhira', 'সাতক্ষীরা', 1, NULL, NULL, NULL, NULL),
(58, 6, 'Shariatpur', 'শরীয়তপুর', 1, NULL, NULL, NULL, NULL),
(59, 8, 'Sherpur', 'শেরপুর', 1, NULL, NULL, NULL, NULL),
(60, 2, 'Sirajganj', 'সিরাজগঞ্জ', 1, NULL, NULL, NULL, NULL),
(61, 5, 'Sunamganj', 'সুনামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(62, 5, 'Sylhet', 'সিলেট', 1, NULL, NULL, NULL, NULL),
(63, 6, 'Tangail', 'টাঙ্গাইল', 1, NULL, NULL, NULL, NULL),
(64, 7, 'Thakurgaon', 'ঠাকুরগাঁও', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(2, 'Rajshahi', 'রাজশাহী', 1, NULL, NULL, NULL, NULL),
(3, 'Khulna', 'খুলনা', 1, NULL, NULL, NULL, NULL),
(4, 'Barishal', 'বরিশাল', 1, NULL, NULL, NULL, NULL),
(5, 'Sylhet', 'সিলেট', 1, NULL, NULL, NULL, NULL),
(6, 'Dhaka', 'ঢাকা', 1, NULL, NULL, NULL, NULL),
(7, 'Rangpur', 'রংপুর', 1, NULL, NULL, NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int UNSIGNED NOT NULL,
  `sector_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` int UNSIGNED NOT NULL,
  `form_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_name_english` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_name_bangla` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_type_doc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_type_pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_type_xls` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `form_name`, `form_file`, `form_type`, `form_name_english`, `form_name_bangla`, `form_category`, `form_type_doc`, `form_type_pdf`, `form_type_xls`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'যোগদান ফরম', '202302221758100DaysNailedIt.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, '2023-02-23 00:37:25'),
(2, 'sdsdsdsdsd', '100DaysCounterISurvived.png202302221826', 'ppt', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2023-02-22 12:26:50', '2023-02-23 00:38:49'),
(3, 'All You Need Coffee', '202302221848All I need is coffee and Jesus.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-22 12:48:00', NULL),
(4, 'All You Need Coffee Word File', '202302221848All You Need Coffee.docx', 'doc', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2023-02-22 12:48:42', '2023-02-22 22:29:43'),
(5, 'Final Settelement', '202302221849Final Settelement Date.xlsx', 'xls', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-22 12:49:46', NULL),
(6, 'নমিনি পরিবর্তন ফরম', '202302260429Nomini .pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 22:29:19', NULL),
(7, 'নমিনি পরিবর্তন ফরম (নমিনির অভিভাবকসহ)', '202302260429Nomini - with guardian.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 22:29:53', NULL),
(8, 'জিম্মাদার পরিবর্তন ফরম', '202302260430Guardian Update.pdf', 'pdf', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-02-25 22:30:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `durations`
--

CREATE TABLE `durations` (
  `id` bigint UNSIGNED NOT NULL,
  `duration_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `durations`
--

INSERT INTO `durations` (`id`, `duration_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '3-days', NULL, NULL, NULL, NULL),
(2, '5-days', NULL, NULL, NULL, NULL),
(3, '7-days', NULL, NULL, NULL, NULL),
(4, '10-days', NULL, NULL, NULL, NULL),
(5, '15-days', NULL, NULL, NULL, NULL),
(6, '19-days', NULL, NULL, NULL, NULL),
(7, '25-days', NULL, NULL, NULL, NULL),
(8, '1-Month', NULL, NULL, NULL, NULL),
(9, '2-Months', NULL, NULL, NULL, NULL),
(10, '3-Months', NULL, NULL, NULL, NULL),
(11, '4-Months', NULL, NULL, NULL, NULL),
(12, '5-Months', NULL, NULL, NULL, NULL),
(13, '6-Months', NULL, NULL, NULL, NULL),
(14, '7-Months', NULL, NULL, NULL, NULL),
(15, '8-Months', NULL, NULL, NULL, NULL),
(16, '9-Months', NULL, NULL, NULL, NULL),
(17, '10-Months', NULL, NULL, NULL, NULL),
(18, '11-Months', NULL, NULL, NULL, NULL),
(19, '1-Year', NULL, NULL, NULL, NULL),
(20, '2-Years', NULL, NULL, NULL, NULL),
(21, '3-Years', NULL, NULL, NULL, NULL),
(22, '4-Years', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `educational_qualification_id` int DEFAULT NULL,
  `education_year_id` int DEFAULT NULL,
  `educational_subjects_id` int DEFAULT NULL,
  `education_groups_id` int DEFAULT NULL,
  `name_of_institute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thesis_topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_university_id` int DEFAULT NULL,
  `total_marks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_class` int DEFAULT NULL,
  `gpa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `employee_id`, `educational_qualification_id`, `education_year_id`, `educational_subjects_id`, `education_groups_id`, `name_of_institute`, `thesis_topic`, `board_university_id`, `total_marks`, `grade_class`, `gpa`, `documents`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10100004, 2, 63, 3, 1, 'HNKKBNKB 23521321', 'HNBLKMJN 2311032', 2, '354', 3, '4.50', 'no', 1, 1, '2023-03-07 04:31:35', '2023-03-11 00:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `educational_qualifications`
--

CREATE TABLE `educational_qualifications` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `education_grade_classes`
--

CREATE TABLE `education_grade_classes` (
  `id` bigint UNSIGNED NOT NULL,
  `grade_class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_grade_classes`
--

INSERT INTO `education_grade_classes` (`id`, `grade_class_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A+', NULL, NULL, NULL, NULL),
(2, 'A', NULL, NULL, NULL, NULL),
(3, 'A-', NULL, NULL, NULL, NULL),
(4, 'B+', NULL, NULL, NULL, NULL),
(5, 'B', NULL, NULL, NULL, NULL),
(6, 'B-', NULL, NULL, NULL, NULL),
(7, 'C+', NULL, NULL, NULL, NULL),
(8, 'C', NULL, NULL, NULL, NULL),
(9, 'C-', NULL, NULL, NULL, NULL),
(10, 'D', NULL, NULL, NULL, NULL),
(11, 'F', NULL, NULL, NULL, NULL),
(12, '1st Division', NULL, NULL, NULL, NULL),
(13, '2nd Division', NULL, NULL, NULL, NULL),
(14, '3rd Division', NULL, NULL, NULL, NULL),
(15, '1st Class', NULL, NULL, NULL, NULL),
(16, '2nd Class', NULL, NULL, NULL, NULL),
(17, '3rd Class', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_groups`
--

CREATE TABLE `education_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_groups`
--

INSERT INTO `education_groups` (`id`, `group_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Arts', NULL, NULL, NULL, NULL),
(2, 'Science', NULL, NULL, NULL, NULL),
(3, 'Commerce', NULL, NULL, NULL, NULL),
(4, 'Humanetics', NULL, NULL, NULL, NULL),
(5, 'Medical', NULL, NULL, NULL, NULL),
(6, 'General', NULL, NULL, NULL, NULL),
(7, 'Vocational', NULL, NULL, NULL, NULL),
(8, 'Business Management', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education_subjects`
--

CREATE TABLE `education_subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `subject_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_subjects`
--

INSERT INTO `education_subjects` (`id`, `subject_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', NULL, NULL, NULL, NULL),
(2, 'English', NULL, NULL, NULL, NULL),
(3, 'Economics', NULL, NULL, NULL, NULL),
(4, 'HRM', NULL, NULL, NULL, NULL),
(5, 'Accounting', NULL, NULL, NULL, NULL),
(6, 'N/A', NULL, NULL, NULL, NULL),
(7, 'N/I', NULL, NULL, NULL, NULL),
(8, 'Political Science', NULL, NULL, NULL, NULL),
(9, 'Geography & Environment', NULL, NULL, NULL, NULL),
(10, 'History', NULL, NULL, NULL, NULL),
(11, 'Chemistry', NULL, NULL, NULL, NULL),
(12, 'Accounting & Information System', NULL, NULL, NULL, NULL),
(13, 'Adob', NULL, NULL, NULL, NULL),
(14, 'Agri Economics', NULL, NULL, NULL, NULL),
(15, 'Agri', NULL, NULL, NULL, NULL),
(16, 'Al-Hadith & Islamic Studies', NULL, NULL, NULL, NULL),
(17, 'Applied Mathmatics', NULL, NULL, NULL, NULL),
(18, 'Arabic', NULL, NULL, NULL, NULL),
(19, 'Arabic Subsitiary', NULL, NULL, NULL, NULL),
(20, 'Auto Diesel', NULL, NULL, NULL, NULL),
(21, 'Banking', NULL, NULL, NULL, NULL),
(22, 'Bengali', NULL, NULL, NULL, NULL),
(23, 'Building Maintenance', NULL, NULL, NULL, NULL),
(24, 'Botany', NULL, NULL, NULL, NULL),
(25, 'Business', NULL, NULL, NULL, NULL),
(26, 'Business Administration', NULL, NULL, NULL, NULL),
(27, 'Business Management', NULL, NULL, NULL, NULL),
(28, 'Business Studies', NULL, NULL, NULL, NULL),
(29, 'Chartered Account', NULL, NULL, NULL, NULL),
(30, 'Child Development & Family Relation', NULL, NULL, NULL, NULL),
(31, 'Civil', NULL, NULL, NULL, NULL),
(32, 'Computer Operation', NULL, NULL, NULL, NULL),
(33, 'Computer', NULL, NULL, NULL, NULL),
(34, 'Computer Science', NULL, NULL, NULL, NULL),
(35, 'Computer Science & Eng', NULL, NULL, NULL, NULL),
(36, 'Computer Technology', NULL, NULL, NULL, NULL),
(37, 'Daurah & Islamic Studies', NULL, NULL, NULL, NULL),
(38, 'Dentist', NULL, NULL, NULL, NULL),
(39, 'Diploma in Business Studies', NULL, NULL, NULL, NULL),
(40, 'Diploma in Power', NULL, NULL, NULL, NULL),
(41, 'Diploma-In-Business & Office Management', NULL, NULL, NULL, NULL),
(42, 'Economics', NULL, NULL, NULL, NULL),
(43, 'Electrical', NULL, NULL, NULL, NULL),
(44, 'Electrical Engineering', NULL, NULL, NULL, NULL),
(45, 'Electrical Trade', NULL, NULL, NULL, NULL),
(46, 'Electronics', NULL, NULL, NULL, NULL),
(47, 'Electrical Work & Maintenance', NULL, NULL, NULL, NULL),
(48, 'Engineering', NULL, NULL, NULL, NULL),
(49, 'English Language & Literature', NULL, NULL, NULL, NULL),
(50, 'Farm Machinery', NULL, NULL, NULL, NULL),
(51, 'Fiqh', NULL, NULL, NULL, NULL),
(52, 'Food Processing & Preservation', NULL, NULL, NULL, NULL),
(53, 'Forestry', NULL, NULL, NULL, NULL),
(54, 'General Mechanics', NULL, NULL, NULL, NULL),
(55, 'General Electrical', NULL, NULL, NULL, NULL),
(56, 'Geology & Mining', NULL, NULL, NULL, NULL),
(57, 'General Electrical Work', NULL, NULL, NULL, NULL),
(58, 'Islamic Studies', NULL, NULL, NULL, NULL),
(59, 'Geography', NULL, NULL, NULL, NULL),
(60, 'Geography & Environment Studies', NULL, NULL, NULL, NULL),
(61, 'Govt. & Political Science', NULL, NULL, NULL, NULL),
(62, 'Government & Politics', NULL, NULL, NULL, NULL),
(63, 'HRM', NULL, NULL, NULL, NULL),
(64, 'Hadith', NULL, NULL, NULL, NULL),
(65, 'Industrial Electrical', NULL, NULL, NULL, NULL),
(66, 'International Relation', NULL, NULL, NULL, NULL),
(67, 'Irrigation & Water Management', NULL, NULL, NULL, NULL),
(68, 'Islamic History & Culture', NULL, NULL, NULL, NULL),
(69, 'Islamic History & Civilization', NULL, NULL, NULL, NULL),
(70, 'Journalism & Mass Communication', NULL, NULL, NULL, NULL),
(71, 'Law', NULL, NULL, NULL, NULL),
(72, 'Mechanical', NULL, NULL, NULL, NULL),
(73, 'Management', NULL, NULL, NULL, NULL),
(74, 'Management Studies', NULL, NULL, NULL, NULL),
(75, 'Marketing', NULL, NULL, NULL, NULL),
(76, 'Mathematics', NULL, NULL, NULL, NULL),
(77, 'Medicine & Surgery', NULL, NULL, NULL, NULL),
(78, 'Philosophy', NULL, NULL, NULL, NULL),
(79, 'Physics', NULL, NULL, NULL, NULL),
(80, 'Politics & Public Administration', NULL, NULL, NULL, NULL),
(81, 'Power', NULL, NULL, NULL, NULL),
(82, 'Psychology', NULL, NULL, NULL, NULL),
(83, 'Refrigeration & Air Conditioning', NULL, NULL, NULL, NULL),
(84, 'Accounting', NULL, NULL, NULL, NULL),
(85, 'Secretarial Science', NULL, NULL, NULL, NULL),
(86, 'Social Welfare', NULL, NULL, NULL, NULL),
(87, 'Sociology', NULL, NULL, NULL, NULL),
(88, 'Sociology & Anthropology', NULL, NULL, NULL, NULL),
(89, 'Statistics', NULL, NULL, NULL, NULL),
(90, 'Strategic & International Management', NULL, NULL, NULL, NULL),
(91, 'Tafsir', NULL, NULL, NULL, NULL),
(92, 'WR Development', NULL, NULL, NULL, NULL),
(93, 'Zoology', NULL, NULL, NULL, NULL),
(94, 'Social Work', NULL, NULL, NULL, NULL),
(95, 'Environmental Technology', NULL, NULL, NULL, NULL),
(96, 'Bachelor of Laws', NULL, NULL, NULL, NULL),
(97, 'Zoology', NULL, NULL, NULL, NULL),
(98, 'Social Science', NULL, NULL, NULL, NULL),
(99, 'Political Science', NULL, NULL, NULL, NULL),
(100, 'Islamic History', NULL, NULL, NULL, NULL),
(101, 'Master of Business Studies', NULL, NULL, NULL, NULL),
(102, 'Information Technology', NULL, NULL, NULL, NULL),
(103, 'Dhakhil', NULL, NULL, NULL, NULL),
(104, 'General', NULL, NULL, NULL, NULL),
(105, 'Hospital Management', NULL, NULL, NULL, NULL),
(106, 'Public Health', NULL, NULL, NULL, NULL),
(107, 'Micro Finance as a device for Developing Health St', NULL, NULL, NULL, NULL),
(108, 'Diploma in Computer Engineering', NULL, NULL, NULL, NULL),
(109, 'Electrical', NULL, NULL, NULL, NULL),
(110, 'Diploma in MATS', NULL, NULL, NULL, NULL),
(111, 'Finance & Banking', NULL, NULL, NULL, NULL),
(112, 'Public Administration', NULL, NULL, NULL, NULL),
(113, 'Home Management & Accounting', NULL, NULL, NULL, NULL),
(114, 'Finance', NULL, NULL, NULL, NULL),
(115, 'Computer Technology', NULL, NULL, NULL, NULL),
(116, 'MA', NULL, NULL, NULL, NULL),
(117, 'Agriculture', NULL, NULL, NULL, NULL),
(118, 'Diploma in Nursing', NULL, NULL, NULL, NULL),
(119, 'BSS (Honours)', NULL, NULL, NULL, NULL),
(120, 'Sanskrit', NULL, NULL, NULL, NULL),
(121, 'Diploma in Lab Medicine', NULL, NULL, NULL, NULL),
(122, 'Pharmacy', NULL, NULL, NULL, NULL),
(123, 'Diploma in Midwifery', NULL, NULL, NULL, NULL),
(124, 'Information Science & Library Management', NULL, NULL, NULL, NULL),
(125, 'Tecnoligist', NULL, NULL, NULL, NULL),
(126, 'Mining and Mine Survey Technology', NULL, NULL, NULL, NULL),
(127, 'Diploma in Laboratory Technology', NULL, NULL, NULL, NULL),
(128, 'Radiology', NULL, NULL, NULL, NULL),
(129, 'Diploma in Laboratory Medicine', NULL, NULL, NULL, NULL),
(130, 'Garments Design and Pattern Making Technology', NULL, NULL, NULL, NULL),
(131, 'Al-Quran & Islamic Studies', NULL, NULL, NULL, NULL),
(132, 'BBA(Honours)', NULL, NULL, NULL, NULL),
(133, 'Limguistics', NULL, NULL, NULL, NULL),
(134, 'Accounting & Finance', NULL, NULL, NULL, NULL),
(135, 'Derss Making and Tailoring', NULL, NULL, NULL, NULL),
(136, 'Fisheries', NULL, NULL, NULL, NULL),
(137, 'Folklore', NULL, NULL, NULL, NULL),
(138, 'Population Science & Human Resource Development', NULL, NULL, NULL, NULL),
(139, 'Biochemistry & Molecular Biology', NULL, NULL, NULL, NULL),
(140, 'Physiotherapy', NULL, NULL, NULL, NULL),
(141, 'Lab Technology', NULL, NULL, NULL, NULL),
(142, 'Pharmacology', NULL, NULL, NULL, NULL),
(143, 'Information and Communication Technologies', NULL, NULL, NULL, NULL),
(144, 'Computer Science & Engineering', NULL, NULL, NULL, NULL),
(145, 'Ophthalmology', NULL, NULL, NULL, NULL),
(146, 'Architecture & Interior Design', NULL, NULL, NULL, NULL),
(147, 'Anatomy', NULL, NULL, NULL, NULL),
(148, 'Paediatrics', NULL, NULL, NULL, NULL),
(149, 'Psychiatry', NULL, NULL, NULL, NULL),
(150, 'General Surgery', NULL, NULL, NULL, NULL),
(151, 'Health Service Management & Polioy', NULL, NULL, NULL, NULL),
(152, 'Graphic Designee & Multimedia', NULL, NULL, NULL, NULL),
(153, 'Oral & Maxillofacial Surgery', NULL, NULL, NULL, NULL),
(154, 'Radiology & Imaging', NULL, NULL, NULL, NULL),
(155, 'Clinical Pathology', NULL, NULL, NULL, NULL),
(156, 'Pathology', NULL, NULL, NULL, NULL),
(157, 'Physiology', NULL, NULL, NULL, NULL),
(158, 'Electrical & Electronic Engineering (EEE)', NULL, NULL, NULL, NULL),
(159, 'Food Technology and Nutritional Science', NULL, NULL, NULL, NULL),
(160, 'Textile', NULL, NULL, NULL, NULL),
(161, 'BDS/MS', NULL, NULL, NULL, NULL),
(162, 'Veterinary Medicine', NULL, NULL, NULL, NULL),
(163, 'Fine Arts', NULL, NULL, NULL, NULL),
(164, 'Community Medicine', NULL, NULL, NULL, NULL),
(165, 'Tuberculous', NULL, NULL, NULL, NULL),
(166, 'Medical Science', NULL, NULL, NULL, NULL),
(167, 'Physical Education', NULL, NULL, NULL, NULL),
(168, 'Vocal Music', NULL, NULL, NULL, NULL),
(169, 'Seed Science and Technology', NULL, NULL, NULL, NULL),
(170, 'Electronics & Telecommunication Engineering (ETE)', NULL, NULL, NULL, NULL),
(171, 'Patient Care Technology', NULL, NULL, NULL, NULL),
(172, 'Necial Music', NULL, NULL, NULL, NULL),
(173, 'test', NULL, NULL, NULL, NULL),
(174, 'Microbiology', NULL, NULL, NULL, NULL),
(175, 'Bachelor of Agricultural Education', NULL, NULL, NULL, NULL),
(176, 'Architechture', NULL, NULL, NULL, NULL),
(177, 'Home Management & Housing', NULL, NULL, NULL, NULL),
(178, 'Crop Botany', NULL, NULL, NULL, NULL),
(179, 'Soil Science', NULL, NULL, NULL, NULL),
(180, 'Marine and coastal Resource Management', NULL, NULL, NULL, NULL),
(181, 'Marine Science', NULL, NULL, NULL, NULL),
(182, 'Occupational Therapy', NULL, NULL, NULL, NULL),
(183, 'Laboratory', NULL, NULL, NULL, NULL),
(184, 'Insectology', NULL, NULL, NULL, NULL),
(185, 'Agro Technology', NULL, NULL, NULL, NULL),
(186, 'Animal Husbandry', NULL, NULL, NULL, NULL),
(187, 'Anthropology', NULL, NULL, NULL, NULL),
(188, 'Applied Chemistry', NULL, NULL, NULL, NULL),
(189, 'Applied Physics', NULL, NULL, NULL, NULL),
(190, 'Archaeology', NULL, NULL, NULL, NULL),
(191, 'Arts', NULL, NULL, NULL, NULL),
(192, 'Automobile', NULL, NULL, NULL, NULL),
(193, 'Biochemistry', NULL, NULL, NULL, NULL),
(194, 'Glass & Ceramic Engineering', NULL, NULL, NULL, NULL),
(195, 'Finance & Banking and HRM', NULL, NULL, NULL, NULL),
(196, 'Ultrasound', NULL, NULL, NULL, NULL),
(197, 'Orthopedics', NULL, NULL, NULL, NULL),
(198, 'Fisheries & Marine Resource Technology', NULL, NULL, NULL, NULL),
(199, 'Ceramics', NULL, NULL, NULL, NULL),
(200, 'Tourism & Hotel Management', NULL, NULL, NULL, NULL),
(201, 'Accounting & International Business', NULL, NULL, NULL, NULL),
(202, 'Computer Engineering', NULL, NULL, NULL, NULL),
(203, 'Al Hadith & Islamic Studies', NULL, NULL, NULL, NULL),
(204, 'Printing Technology', NULL, NULL, NULL, NULL),
(205, 'Nephrology', NULL, NULL, NULL, NULL),
(206, 'Politics & Governance', NULL, NULL, NULL, NULL),
(207, 'Optometry Programme', NULL, NULL, NULL, NULL),
(208, 'Optometry and Low Vision', NULL, NULL, NULL, NULL),
(209, 'Community Ophthalmology', NULL, NULL, NULL, NULL),
(210, 'Applied Physics & Electronics', NULL, NULL, NULL, NULL),
(211, 'Electro-Medical', NULL, NULL, NULL, NULL),
(212, 'Innovative Management', NULL, NULL, NULL, NULL),
(213, 'Biotechnology & Genetic Engineering', NULL, NULL, NULL, NULL),
(214, 'Leather Technology', NULL, NULL, NULL, NULL),
(215, 'Personnel Management', NULL, NULL, NULL, NULL),
(216, 'Persian Language and Literature', NULL, NULL, NULL, NULL),
(217, 'Applied Nutrition & Food Technology', NULL, NULL, NULL, NULL),
(218, 'Women & Gender Studies', NULL, NULL, NULL, NULL),
(219, 'Aqua Culture', NULL, NULL, NULL, NULL),
(220, 'Fashion Design', NULL, NULL, NULL, NULL),
(221, 'Mechanical Engineering', NULL, NULL, NULL, NULL),
(222, 'Masters of LAW', NULL, NULL, NULL, NULL),
(223, 'Horticulture', NULL, NULL, NULL, NULL),
(224, 'Udru', NULL, NULL, NULL, NULL),
(225, 'MD (Internal Medicine)', NULL, NULL, NULL, NULL),
(226, 'Cardiology', NULL, NULL, NULL, NULL),
(227, 'Warning with Allowance Held up', NULL, NULL, NULL, NULL),
(228, 'Hard Warning with Allowance Held up', NULL, NULL, NULL, NULL),
(229, 'Covid Vaccine Certificate', NULL, NULL, NULL, NULL),
(230, 'Sustainable Agriculture', NULL, NULL, NULL, NULL),
(231, 'Environment Science', NULL, NULL, NULL, NULL),
(232, 'Environment Science & Resource Management', NULL, NULL, NULL, NULL),
(233, 'Medical Ultrasound', NULL, NULL, NULL, NULL),
(234, 'Aquaculture', NULL, NULL, NULL, NULL),
(235, 'Optometry', NULL, NULL, NULL, NULL),
(236, 'Arabic Language & Literature', NULL, NULL, NULL, NULL),
(237, 'Nursing', NULL, NULL, NULL, NULL),
(238, 'Otolaryngology', NULL, NULL, NULL, NULL),
(239, 'Medical Physics and Biomedical Engineering', NULL, NULL, NULL, NULL),
(240, 'Theatre and Music', NULL, NULL, NULL, NULL),
(241, 'Mechatronics Engineering', NULL, NULL, NULL, NULL),
(242, 'Orthotics & Prosthetics', NULL, NULL, NULL, NULL),
(243, 'Nutrition & Food Science', NULL, NULL, NULL, NULL),
(244, 'Urology', NULL, NULL, NULL, NULL),
(245, 'Educational Pschology (Applied)', NULL, NULL, NULL, NULL),
(246, 'Farsi', NULL, NULL, NULL, NULL),
(247, 'World Religious & Culture', NULL, NULL, NULL, NULL),
(248, 'Business & Economics', NULL, NULL, NULL, NULL),
(249, 'Endocrinology and Metabolism', NULL, NULL, NULL, NULL),
(250, 'Allopathy Medicine', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `efiles`
--

CREATE TABLE `efiles` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_types`
--

CREATE TABLE `employee_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `organization_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_nature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_from` date DEFAULT NULL,
  `experience_to` date DEFAULT NULL,
  `total_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `employee_id`, `organization_name`, `job_nature`, `post_name`, `experience_from`, `experience_to`, `total_experience`, `documents`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10100004, 'William and Griffin LLC', 'Sequi at saepe ut si', 'Miriam Mercer', '2008-11-08', '2022-05-11', '4932', 'yes', 1, NULL, '2023-03-07 11:09:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_brother_sisters`
--

CREATE TABLE `family_brother_sisters` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `brother_sister_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_types_id` int NOT NULL,
  `profession_id` int NOT NULL,
  `depend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brother_sister_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brother_sister_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brother_sister_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brother_sister_division_id` int DEFAULT NULL,
  `brother_sister_district_id` int DEFAULT NULL,
  `brother_sister_upazilla_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_brother_sisters`
--

INSERT INTO `family_brother_sisters` (`id`, `employee_id`, `brother_sister_name`, `relation_types_id`, `profession_id`, `depend`, `brother_sister_village`, `brother_sister_post`, `brother_sister_postal_code`, `brother_sister_division_id`, `brother_sister_district_id`, `brother_sister_upazilla_id`, `created_at`, `created_by`, `updated_by`, `updated_at`) VALUES
(1, 10100004, 'Pandora Guy', 1, 7, 'yes', 'Voluptate aliquid nu', 'Est delectus porro', '5800', 1, 51, 258, '2023-03-07 12:09:45', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_children`
--

CREATE TABLE `family_children` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `child_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `child_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_division_id` int DEFAULT NULL,
  `child_district_id` int DEFAULT NULL,
  `child_upazilla_id` int DEFAULT NULL,
  `profession_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_children`
--

INSERT INTO `family_children` (`id`, `employee_id`, `child_name`, `date_of_birth`, `gender_id`, `child_village`, `child_post`, `child_postal_code`, `child_division_id`, `child_district_id`, `child_upazilla_id`, `profession_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10100004, 'Shelly Terrell 2033', '2023-11-28', 2, 'Dolor sit a repudia f', 'Ut dolorum pariatur f', '50801', 6, 9, 199, 2, 1, 1, '2023-03-07 22:43:17', '2023-03-07 22:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `family_spouces`
--

CREATE TABLE `family_spouces` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `spouce_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `spouce_present_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouce_present_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouce_present_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouce_present_division_id` int DEFAULT NULL,
  `spouce_present_district_id` int DEFAULT NULL,
  `spouce_present_upazilla_id` int DEFAULT NULL,
  `spouce_permanent_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouce_permanent_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouce_permanent_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouce_permanent_division_id` int DEFAULT NULL,
  `spouce_permanent_district_id` int DEFAULT NULL,
  `spouce_permanent_upazilla_id` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_spouces`
--

INSERT INTO `family_spouces` (`id`, `employee_id`, `spouce_name`, `spouce_present_village`, `spouce_present_post`, `spouce_present_postal_code`, `spouce_present_division_id`, `spouce_present_district_id`, `spouce_present_upazilla_id`, `spouce_permanent_village`, `spouce_permanent_post`, `spouce_permanent_postal_code`, `spouce_permanent_division_id`, `spouce_permanent_district_id`, `spouce_permanent_upazilla_id`, `email`, `mobile`, `profession_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 10100004, 'Kaitlin West retr', 'Rerum reprehenderit', 'Et numquam velit vol5454', '511345454', 1, 1, 224, 'Commodi quidem tempo', 'Elit voluptas paria454', '1131454', 7, 3, 29, 'laxoxax52ux@mailinator.com', '4563511314545', 8, '2023-03-08 00:46:44', '2023-03-08 00:59:01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Male', 1, NULL, NULL, NULL, NULL),
(2, 'Female', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `guardian_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_father_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mother_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation_types_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_profession_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_monthly_income` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_present_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_present_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_present_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_present_division_id` int DEFAULT NULL,
  `guardian_present_district_id` int DEFAULT NULL,
  `guardian_present_upazilla_id` int DEFAULT NULL,
  `guardian_permanent_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_permanent_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_permanent_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_permanent_division_id` int DEFAULT NULL,
  `guardian_permanent_district_id` int DEFAULT NULL,
  `guardian_permanent_upazilla_id` int DEFAULT NULL,
  `guardian_working_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `employee_id`, `guardian_name`, `guardian_father_name`, `guardian_mother_name`, `guardian_relation_types_id`, `guardian_profession_id`, `guardian_monthly_income`, `guardian_present_village`, `guardian_present_post`, `guardian_present_postal_code`, `guardian_present_division_id`, `guardian_present_district_id`, `guardian_present_upazilla_id`, `guardian_permanent_village`, `guardian_permanent_post`, `guardian_permanent_postal_code`, `guardian_permanent_division_id`, `guardian_permanent_district_id`, `guardian_permanent_upazilla_id`, `guardian_working_address`, `guardian_nid`, `guardian_mobile`, `guardian_phone`, `guardian_fax`, `guardian_email`, `guardian_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10100004, 'Asad Hasan', 'Asas JJ', 'Mother Name', '1', '3', '15000', 'Village-Name', 'Postoffice-Name', '5800', 2, 3, 2, 'Village-Name', 'Postoffice-Name', '5800', 3, 3, 2, NULL, '513201351413', '01812005166', NULL, '514114', 'nrsd@ffdfd.dfd', NULL, 0, 1, 1, '2023-03-05 22:53:46', '2023-03-06 02:20:18'),
(2, 10100004, 'Sajib Rahman', 'dsfcdfd', 'Mother Namedfddd ', '2', '3', '15000', 'Village-Name', 'Postoffice-Name', '5800', 2, 3, 2, 'Village-Name', 'Postoffice-Name', '5800', 3, 3, 2, NULL, '513201351413', '01812005166', NULL, '514114', 'nrsd@ffdfd.dfd', NULL, 0, 1, 1, '2023-03-09 22:53:46', '2023-03-06 02:20:18'),
(3, 10118707, 'Saiful Islam', 'Boyen Ali', 'Jorina Khatun', '1', NULL, '18200', 'sdsdsd', 'ssdsss', '531', 1, 1, 1, 'sdsdsd', 'ssdsss', '531', 3, 4, 3, NULL, '513201351413', '01812005166', NULL, '514114', 'nrsd@ffdfd.dfd', NULL, 0, 1, 1, '2023-03-12 02:38:21', '2023-03-12 03:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Pending, 1=Approved',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_statuses`
--

CREATE TABLE `job_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marital_statuses`
--

CREATE TABLE `marital_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(36, '2023_02_17_141925_create_permission_tables', 3),
(37, '2023_02_28_095204_create_notices_table', 4),
(38, '2023_03_01_092215_create_permission_groups_table', 5),
(39, '2023_03_02_092622_create_reports_table', 6),
(40, '2023_03_04_062304_create_basic_infos_table', 7),
(41, '2023_03_04_063025_create_education_table', 7),
(42, '2023_03_04_063040_create_experiences_table', 7),
(43, '2023_03_04_063902_create_family_brother_sisters_table', 8),
(44, '2023_03_04_064016_create_family_children_table', 8),
(45, '2023_03_04_064107_create_family_spouces_table', 8),
(46, '2023_03_04_064138_create_guardians_table', 8),
(47, '2023_03_04_064149_create_nominees_table', 8),
(48, '2023_03_04_064202_create_trainings_table', 8),
(49, '2023_03_04_064222_create_courses_table', 8),
(50, '2023_03_04_082230_create_education_subjects_table', 8),
(51, '2023_03_04_083302_create_professions_table', 8),
(52, '2023_03_04_090156_create_board_universities_table', 8),
(53, '2023_03_04_090843_create_relation_types_table', 8),
(54, '2023_03_07_075721_create_durations_table', 9),
(55, '2023_03_07_080833_create_countries_table', 9),
(56, '2023_03_07_084511_create_years_table', 9),
(57, '2023_03_07_100648_create_education_grade_classes_table', 10),
(58, '2023_03_07_151433_create_education_groups_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `new_employees`
--

CREATE TABLE `new_employees` (
  `id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N/I',
  `joiningdate` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `domain_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place_district_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_division_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_district_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_upazilla_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_division_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_district_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_upazilla_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smartcard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_groups_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_qualification_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_type_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_employees`
--

INSERT INTO `new_employees` (`id`, `name`, `designation_id`, `joiningdate`, `date_of_birth`, `domain_id`, `father_name`, `mother_name`, `marital_status_id`, `birth_place_district_id`, `present_village`, `present_post`, `present_postal_code`, `present_division_id`, `present_district_id`, `present_upazilla_id`, `permanent_village`, `permanent_post`, `permanent_postal_code`, `permanent_division_id`, `permanent_district_id`, `permanent_upazilla_id`, `nid`, `smartcard`, `blood_groups_id`, `mobile`, `email`, `educational_qualification_id`, `employee_type_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('10100001', 'Burke Blevins', '8', '1975-10-07', '2021-11-30', '1', 'Knox Pace', 'Rhona Fuller', '1', '48', 'Ea eos explicabo Ul', 'Officiis harum reici', 'Ratione rerum porro', '7', '10', '226', 'Enim cupidatat eu do', 'Delectus eu ipsam e', 'Commodo in nesciunt', '3', '18', '163', 'Impedit ut cum quod', 'Quam nisi nulla veli', '6', 'Quia et qui et quam', 'dimimutab@mailinator.com', '19', '6', 0, 1, 1, '2023-02-22 09:40:22', '2023-02-22 09:44:16'),
('10110235', 'Oscar Simpson', '54', '2016-04-21', '1996-07-25', '9', 'Quyn Cote', 'Orlando Armstrong', '3', '37', 'Ea cillum ea quis qu', 'Cillum est autem quo', 'Sed necessitatibus q', '8', '14', '170', 'Eum molestias libero', 'Obcaecati perferendi', 'Vitae quam sit arch', '1', '44', '140', 'Aliquip fuga Conseq', 'Rerum vitae facilis', '8', 'Aut dolorum sunt ea', 'doxazufa@mailinator.com', '10', '4', 0, 1, 1, '2023-02-20 07:41:31', '2023-02-22 09:28:09'),
('10112123', 'Rebekah Woods', '40', '1971-10-31', '2008-11-18', '49', 'Florence Hernandez', 'Owen Underwood', '3', '13', 'Beatae consequatur', 'Ut ut dolor sed simi', 'Id saepe tempora occ', '8', '34', '200', 'Earum provident nec', 'Blanditiis ipsam nos', 'Quis laborum Omnis', '2', '44', '475', 'In aut ad inventore', 'Sed sint quia persp', '9', 'Dolore id vero aut c', 'qidefat@mailinator.com', '29', '7', 0, 1, 1, '2023-02-22 09:31:19', '2023-02-27 00:56:29'),
('10114785', 'Eugenia Ayers', '31', '2016-05-16', '1988-01-19', '43', 'Erin Hood', 'Brock Orr', '1', '7', 'Cum incidunt quis s', 'Repudiandae est lab', 'Voluptate aut omnis', '6', '41', '294', 'Duis sed minim commo', 'Expedita beatae fugi', 'Nulla odio repudiand', '4', '36', '459', 'Eiusmod itaque conse', 'Repellendus Ut qui', '1', 'Ex molestias Nam aut', 'wixu@mailinator.com', NULL, '3', 0, 5, NULL, '2023-02-20 11:45:45', NULL),
('10114789', 'Thor Baxter', '19', '1989-11-07', '2006-05-19', '44', 'Tanner Zimmerman', 'Bernard Newton', '2', '12', 'Reprehenderit obcaec', 'Modi doloribus volup', 'In explicabo Explic', '7', '34', '183', 'Quia sit similique', 'Eu ullamco sint quia', 'Asperiores aliquid m', '6', '15', '283', 'Consequat Non amet', 'Et quia nulla ullam', '4', 'Ut facilis quasi qui', 'pehix@mailinator.com', NULL, '4', 0, 5, NULL, '2023-02-20 11:45:12', NULL),
('10115000', 'Roary Guy', '1', '1980-06-07', '1991-05-20', '26', 'Gary Barlow', 'Maxine Shepard', '3', '48', 'Deserunt reiciendis', 'Cupidatat quo perspi', 'Enim et minim earum', '6', '11', '61', 'Hic consequatur vita', 'Dicta dolores perfer', 'Fugit aliquid est m', '5', '30', '316', 'Molestiae accusamus', 'Id ratione qui dign', '4', 'Quae cum sunt quos', 'qafaqej@mailinator.com', '1', '7', 0, 1, 1, '2023-02-22 09:38:14', '2023-02-22 09:46:35'),
('10118700', 'Kendall Underwood', '37', '2010-07-06', '2006-08-31', '8', 'Rhonda Glover', 'Hamilton Leonard', '4', '52', 'Ut dolores qui tempo', 'Nesciunt vel nulla', 'Laboriosam lorem ei', '7', '27', '298', 'Dignissimos vel dolo', 'Qui explicabo Harum', 'Consectetur excepte', '2', '57', '252', 'Tenetur ut id ea aut', 'Sed impedit eaque h', '7', 'Ab ipsum nulla assum', 'lucalaz@mailinator.com', '1', '5', 0, 1, 1, '2023-02-20 07:40:34', '2023-02-22 09:26:51'),
('10118707', 'Md. Nafiur Rahman', '10', '2015-01-01', '1989-12-20', '10', 'Md. Saiful Islam', 'Mst. Nasima Banu', '1', '6', 'Dakshin Bhag', 'Sheker Kola', '5800', '2', '6', '123', 'Dakshin Bhag', 'Sheker Kola', '5800', '2', '6', '123', '1012086318752', '5855110', '1', '01713377093', 'nafiur@outlook.com', '12', '1', 0, 1, 1, '2023-02-19 09:12:17', '2023-02-22 09:20:10'),
('10119800', 'Evan Deleon', '4', '1976-01-01', '1974-09-01', '19', 'Daphne Houston', 'Audrey Key', '1', '1', 'Officiis saepe volup', 'Et molestiae sint om', 'Iusto anim molestiae', '2', '16', '13', 'In repellendus Sit', 'Proident nobis cill', 'Animi eos modi corp', '2', '3', '2', 'Fuga Laboris est a', 'In debitis aspernatu', '5', 'Sint velit et nulla', 'hetipyfyl@mailinator.com', NULL, NULL, 0, 1, 1, '2023-02-15 11:44:00', '2023-02-19 09:32:51'),
('10119808', 'Karly Richardson2', '11', '2013-10-14', '2014-07-11', '6', 'Yardley Chapman', 'Melodie Guerra', '3', '15', 'Aspernatur ullam ani', 'Velit autem vero dol', 'Ad tempor veniam au', '7', '58', '412', 'Rerum quae autem par', 'Eius id eos nisi es', 'Doloremque pariatur', '1', '42', '338', '12121215131153201', '421120', '8', 'Irure magnam ex sed', 'depowohilo@mailinator.com', NULL, NULL, 0, 1, 1, '2023-02-19 09:25:44', '2023-02-19 09:27:49'),
('10120123', 'LoLa WilkerSon', '48', '1985-12-12', '1994-10-14', '24', 'Leroy Browning', 'Danielle Mills', '1', '29', 'Quia aut pariatur I', 'Totam eligendi delen', 'Fuga Officia ut off', '6', '61', '196', 'Nemo porro cillum vi', 'Est dolorem et ducim', 'Nobis exercitationem', '4', '27', '9', 'Quas proident tempo', 'Aspernatur soluta do', '9', 'Proident voluptas a', 'zipuwotyx@mailinator.com', '3', '6', 0, 1, 1, '2023-02-22 09:48:27', '2023-02-27 23:37:02'),
('10135939', 'Abu Baker Siddik', '21', '2023-02-22', '1997-06-01', '26', 'Abdul Latif', 'Momtaz Pervin', '1', '63', 'Agterillah', 'Dhubalia', 'N/I', '8', '63', '335', 'Agterillah', 'Dhubalia', 'N/I', '8', '63', '335', 'N/A', '1953971593', '9', '01953971593', 'masudrana652368@gmail.com', '12', '1', 0, 1, 1, '2023-02-23 00:04:28', '2023-02-23 00:29:25'),
('10135940', 'Md. Sabuz Mia', '21', '2023-02-22', '1998-02-15', '26', 'Abdus Salam', 'Sufia Begum', '2', '22', 'sthaoll', 'jannatgonj hat', 'N/I', '8', '22', '482', 'sthaoll', 'jannatgonj hat', 'N/I', '8', '22', '482', '5104091169', 'N/a', '1', '01922772300', 'shsabujk@gmail.com', '27', '1', 0, 1, NULL, '2023-02-23 00:32:59', NULL),
('10144445', 'Fulton Palmer', '33', '2022-09-05', '2018-09-30', '29', 'Amelia Ross', 'Christen Rivas', '3', '50', 'Consequat Voluptatu', 'Est dolore sunt eius', 'Qui officia aut omni', '6', '27', '178', 'Amet ab ab architec', 'Consequat Fugit si', 'Est temporibus nequ', '7', '5', '345', 'Ipsum labore veniam', 'Dolore aperiam aut q', '9', 'Dolore deleniti sed', NULL, '52', '6', 0, 1, NULL, '2023-02-28 02:05:05', NULL),
('10199999', 'Haviva Wood', '50', '2002-03-10', '1993-12-18', '24', 'Hiroko Hawkins', 'Tamekah Justice', 'Select Marital Status', '47', 'Incididunt est elige', 'Sed accusamus ration', 'Nihil reprehenderit', '8', '38', '488', 'Voluptate cum cillum', 'Explicabo Quam volu', 'Quidem eu beatae rat', '8', '64', '307', 'Voluptatibus nihil e', 'Amet est voluptas o', '4', 'Nostrud corporis con', 'nynoviryno@mailinator.com', '114', 'Select Employee Type', 0, 1, 1, '2023-02-27 04:05:30', '2023-02-27 04:12:11'),
('10201523', 'PRISHILA KHTA', '30', '1972-09-01', '2001-06-18', '18', 'Ariana Lara', 'Neville Walsh', '3', '11', 'Voluptatibus odit iu', 'Soluta aperiam nihil', 'Aliquid facilis enim', '7', '12', '161', 'Tempore porro exped', 'Qui ut eu ad aute ut', 'Laborum quis sint vo', 'Select Division', '8', '50', 'Animi modi sit min', 'Facilis molestias et', '5', 'Voluptas iste labori', 'poxud@mailinator.com', '13', 'Select Employee Type', 0, 1, 1, '2023-02-20 07:21:24', '2023-02-27 23:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `nominees`
--

CREATE TABLE `nominees` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `nominee_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominee_relation_types_id` int DEFAULT NULL,
  `nominee_percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_permanent_village` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_permanent_post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_permanent_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_permanent_division_id` int DEFAULT NULL,
  `nominee_permanent_district_id` int DEFAULT NULL,
  `nominee_permanent_upazilla_id` int DEFAULT NULL,
  `nominee_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominee_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nominees`
--

INSERT INTO `nominees` (`id`, `employee_id`, `nominee_name`, `nominee_relation_types_id`, `nominee_percentage`, `nominee_permanent_village`, `nominee_permanent_post`, `nominee_permanent_postal_code`, `nominee_permanent_division_id`, `nominee_permanent_district_id`, `nominee_permanent_upazilla_id`, `nominee_nid`, `nominee_mobile`, `nominee_image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10100004, 'Francesca Wallace', 1, '50%', 'Numquam qui temporib', 'Voluptas enim elit', '5800', 2, 10, 376, '2012151012100', '0142102154', NULL, 0, 1, 1, '2023-03-06 05:17:47', '2023-03-06 05:32:25'),
(2, 10100004, 'Susan Wise', 9, '50', 'Temporibus quisquam', 'Quis quo voluptatem', '415513', 1, 64, 25, '5461512112', '51111', NULL, 0, 1, 1, '2023-03-10 22:59:03', '2023-03-10 22:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `notice_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notice_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `paid_status` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name_id` int NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name_id`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.menu', 'web', 1, 'dashboard', '2023-02-18 10:22:24', '2023-03-01 04:13:46'),
(2, 'settings.menu', 'web', 2, 'settings', '2023-02-18 10:28:21', '2023-03-01 04:18:21'),
(4, 'settings.all', 'web', 2, 'settings', '2023-02-18 10:31:17', '2023-02-18 10:31:17'),
(5, 'formformats.menu', 'web', 3, 'form-formats', '2023-02-18 10:31:44', '2023-02-18 12:52:40'),
(6, 'formformats.all', 'web', 3, 'form-formats', '2023-02-18 10:31:52', '2023-02-18 12:52:43'),
(7, 'formformats.add', 'web', 3, 'form-formats', '2023-02-18 10:32:03', '2023-02-18 12:52:46'),
(8, 'formformats.edit', 'web', 3, 'form-formats', '2023-02-18 10:32:14', '2023-02-18 12:52:49'),
(9, 'formformats.delete', 'web', 3, 'form-formats', '2023-02-18 10:32:25', '2023-02-18 12:52:52'),
(10, 'newemployee.all', 'web', 6, 'new-employee', '2023-02-18 10:33:29', '2023-02-18 12:57:34'),
(11, 'newemployee.add', 'web', 6, 'new-employee', '2023-02-18 10:33:38', '2023-02-18 12:57:42'),
(12, 'newemployee.edit', 'web', 6, 'new-employee', '2023-02-18 10:33:47', '2023-02-18 12:52:34'),
(13, 'newemployee.delete', 'web', 6, 'new-employee', '2023-02-18 10:33:57', '2023-02-18 12:52:37'),
(14, 'usermanagement.menu', 'web', 17, 'roles', '2023-02-18 10:34:50', '2023-02-18 13:01:02'),
(15, 'allemployee.module', 'web', 18, 'module', '2023-02-18 12:45:54', '2023-02-18 12:47:25'),
(16, 'newemployee.module', 'web', 18, 'module', '2023-02-18 12:46:15', '2023-02-18 12:46:15'),
(17, 'efile.module', 'web', 7, 'efile', '2023-02-18 12:47:44', '2023-02-18 12:47:44'),
(18, 'settings.module', 'web', 2, 'settings', '2023-02-18 12:48:05', '2023-02-20 01:10:50'),
(19, 'usermanagement.module', 'web', 18, 'module', '2023-02-18 12:51:59', '2023-02-18 12:51:59'),
(20, 'sector.module', 'web', 8, 'sector', '2023-02-20 00:29:31', '2023-02-20 00:56:34'),
(21, 'domain.module', 'web', 9, 'domain', '2023-02-20 00:30:02', '2023-02-20 01:11:26'),
(22, 'designation.module', 'web', 11, 'designation', '2023-02-20 00:30:34', '2023-02-20 01:11:39'),
(23, 'division.module', 'web', 12, 'division', '2023-02-20 00:31:02', '2023-02-20 01:11:42'),
(24, 'district.module', 'web', 13, 'district', '2023-02-20 00:31:48', '2023-02-20 01:11:47'),
(25, 'upazilla.module', 'web', 14, 'upazilla', '2023-02-20 00:32:06', '2023-02-20 01:11:52'),
(26, 'bloodgroup.module', 'web', 15, 'bloodgroup', '2023-02-20 00:32:29', '2023-02-20 01:11:56'),
(27, 'department.module', 'web', 10, 'department', '2023-02-20 00:32:46', '2023-02-20 01:12:06'),
(28, 'educationalqualification.module', 'web', 19, 'eduqualification', '2023-02-20 00:33:06', '2023-02-20 01:13:24'),
(29, 'employeetype.module', 'web', 16, 'employeetype', '2023-02-20 00:33:23', '2023-02-20 01:13:32'),
(30, 'gender.module', 'web', 20, 'gender', '2023-02-20 00:33:42', '2023-02-20 01:25:00'),
(31, 'jobstatus.module', 'web', 21, 'jobstatus', '2023-02-20 00:33:57', '2023-02-20 01:25:02'),
(32, 'maritalstatus.module', 'web', 22, 'maritalstatus', '2023-02-20 00:34:12', '2023-02-20 01:22:50'),
(33, 'religion.module', 'web', 23, 'religion', '2023-02-20 00:34:31', '2023-02-20 01:22:46'),
(34, 'zone.module', 'web', 24, 'zone', '2023-02-20 00:34:47', '2023-02-20 01:22:42'),
(35, 'area.module', 'web', 25, 'area', '2023-02-20 00:49:12', '2023-02-20 01:22:36'),
(36, 'branch.module', 'web', 26, 'branch', '2023-02-20 00:49:26', '2023-02-20 01:22:31'),
(37, 'sector.all', 'web', 8, 'sector', '2023-02-20 00:52:14', '2023-02-20 00:52:14'),
(38, 'sector.add', 'web', 8, 'sector', '2023-02-20 00:53:52', '2023-02-20 00:53:52'),
(39, 'sector.edit', 'web', 8, 'sector', '2023-02-20 00:53:59', '2023-02-20 00:53:59'),
(40, 'sector.delete', 'web', 8, 'sector', '2023-02-20 00:54:08', '2023-02-20 00:54:08'),
(41, 'domain.all', 'web', 9, 'domain', '2023-02-20 01:30:29', '2023-02-20 01:30:29'),
(42, 'domain.add', 'web', 9, 'domain', '2023-02-20 01:30:37', '2023-02-20 01:30:37'),
(43, 'domain.edit', 'web', 9, 'domain', '2023-02-20 01:30:46', '2023-02-20 01:30:46'),
(44, 'domain.delete', 'web', 9, 'domain', '2023-02-20 01:30:53', '2023-02-20 01:30:53'),
(45, 'designation.all', 'web', 11, 'designation', '2023-02-20 01:31:13', '2023-02-20 01:31:13'),
(46, 'designation.add', 'web', 11, 'designation', '2023-02-20 01:31:22', '2023-02-20 01:31:22'),
(47, 'designation.edit', 'web', 11, 'designation', '2023-02-20 01:31:31', '2023-02-20 01:31:31'),
(48, 'designation.delete', 'web', 11, 'designation', '2023-02-20 01:31:40', '2023-02-20 01:31:40'),
(49, 'division.all', 'web', 12, 'division', '2023-02-20 01:32:29', '2023-02-20 01:32:29'),
(50, 'division.add', 'web', 12, 'division', '2023-02-20 01:32:38', '2023-02-20 01:32:38'),
(51, 'division.edit', 'web', 12, 'division', '2023-02-20 01:32:46', '2023-02-20 01:32:46'),
(52, 'division.delete', 'web', 12, 'division', '2023-02-20 01:32:56', '2023-02-20 01:32:56'),
(53, 'district.all', 'web', 13, 'district', '2023-02-20 01:33:05', '2023-02-20 01:33:05'),
(54, 'district.add', 'web', 13, 'district', '2023-02-20 01:33:13', '2023-02-20 01:33:13'),
(55, 'district.edit', 'web', 13, 'district', '2023-02-20 01:33:22', '2023-02-20 01:33:22'),
(56, 'district.delete', 'web', 13, 'district', '2023-02-20 01:33:32', '2023-02-20 01:33:32'),
(57, 'upazilla.all', 'web', 14, 'upazilla', '2023-02-20 01:33:52', '2023-02-20 01:33:52'),
(58, 'upazilla.add', 'web', 14, 'upazilla', '2023-02-20 01:33:59', '2023-02-20 01:33:59'),
(59, 'upazilla.edit', 'web', 14, 'upazilla', '2023-02-20 01:34:06', '2023-02-20 01:34:06'),
(60, 'upazilla.delete', 'web', 14, 'upazilla', '2023-02-20 01:34:13', '2023-02-20 01:34:13'),
(61, 'bloodgroup.all', 'web', 15, 'bloodgroup', '2023-02-20 01:34:43', '2023-02-20 01:34:43'),
(62, 'bloodgroup.add', 'web', 15, 'bloodgroup', '2023-02-20 01:34:50', '2023-02-20 01:34:50'),
(63, 'bloodgroup.edit', 'web', 15, 'bloodgroup', '2023-02-20 01:34:57', '2023-02-20 01:34:57'),
(64, 'bloodgroup.delete', 'web', 15, 'bloodgroup', '2023-02-20 01:35:04', '2023-02-20 01:35:04'),
(65, 'department.all', 'web', 10, 'department', '2023-02-20 01:36:43', '2023-02-20 01:36:43'),
(66, 'department.add', 'web', 10, 'department', '2023-02-20 01:36:52', '2023-02-20 01:36:52'),
(67, 'department.edit', 'web', 10, 'department', '2023-02-20 01:37:01', '2023-02-20 01:37:01'),
(68, 'department.delete', 'web', 10, 'department', '2023-02-20 01:37:09', '2023-02-20 01:37:09'),
(69, 'educationalqualification.all', 'web', 19, 'eduqualification', '2023-02-20 01:37:57', '2023-02-20 01:37:57'),
(70, 'educationalqualification.add', 'web', 19, 'eduqualification', '2023-02-20 01:38:05', '2023-02-20 01:38:05'),
(71, 'educationalqualification.edit', 'web', 19, 'eduqualification', '2023-02-20 01:38:13', '2023-02-20 01:38:13'),
(72, 'educationalqualification.delete', 'web', 19, 'eduqualification', '2023-02-20 01:38:22', '2023-02-20 01:38:22'),
(73, 'employeetype.all', 'web', 16, 'employeetype', '2023-02-20 01:39:18', '2023-02-20 01:39:18'),
(74, 'employeetype.add', 'web', 16, 'employeetype', '2023-02-20 01:39:30', '2023-02-20 01:39:30'),
(75, 'employeetype.edit', 'web', 16, 'employeetype', '2023-02-20 01:39:39', '2023-02-20 01:39:39'),
(76, 'employeetype.delete', 'web', 16, 'employeetype', '2023-02-20 01:39:45', '2023-02-20 01:39:45'),
(77, 'gender.all', 'web', 20, 'gender', '2023-02-20 01:39:53', '2023-02-20 01:39:53'),
(78, 'gender.add', 'web', 20, 'gender', '2023-02-20 01:40:02', '2023-02-20 01:40:02'),
(79, 'gender.edit', 'web', 20, 'gender', '2023-02-20 01:40:11', '2023-02-20 01:40:11'),
(80, 'gender.delete', 'web', 20, 'gender', '2023-02-20 01:40:17', '2023-02-20 01:40:17'),
(81, 'jobstatus.all', 'web', 21, 'jobstatus', '2023-02-20 01:40:25', '2023-02-20 01:40:25'),
(82, 'jobstatus.add', 'web', 21, 'jobstatus', '2023-02-20 01:40:35', '2023-02-20 01:40:35'),
(83, 'jobstatus.edit', 'web', 21, 'jobstatus', '2023-02-20 01:40:43', '2023-02-20 01:40:43'),
(84, 'jobstatus.delete', 'web', 21, 'jobstatus', '2023-02-20 01:40:50', '2023-02-20 01:40:50'),
(85, 'maritalstatus.all', 'web', 22, 'maritalstatus', '2023-02-20 01:41:25', '2023-02-20 01:41:25'),
(86, 'maritalstatus.add', 'web', 22, 'maritalstatus', '2023-02-20 01:41:32', '2023-02-20 01:41:32'),
(87, 'maritalstatus.edit', 'web', 22, 'maritalstatus', '2023-02-20 01:41:41', '2023-02-20 01:41:41'),
(88, 'maritalstatus.delete', 'web', 22, 'maritalstatus', '2023-02-20 01:41:48', '2023-02-20 01:41:48'),
(89, 'religion.all', 'web', 23, 'religion', '2023-02-20 01:42:09', '2023-02-20 01:42:09'),
(90, 'religion.add', 'web', 23, 'religion', '2023-02-20 01:42:17', '2023-02-20 01:42:17'),
(91, 'religion.edit', 'web', 23, 'religion', '2023-02-20 01:42:25', '2023-02-20 01:42:25'),
(92, 'religion.delete', 'web', 23, 'religion', '2023-02-20 01:42:34', '2023-02-20 01:42:34'),
(93, 'zone.all', 'web', 24, 'zone', '2023-02-20 01:42:43', '2023-02-20 01:42:43'),
(94, 'zone.add', 'web', 24, 'zone', '2023-02-20 01:42:49', '2023-02-20 01:42:49'),
(95, 'zone.edit', 'web', 24, 'zone', '2023-02-20 01:42:57', '2023-02-20 01:42:57'),
(96, 'zone.delete', 'web', 24, 'zone', '2023-02-20 01:43:06', '2023-02-20 01:43:06'),
(97, 'area.all', 'web', 25, 'area', '2023-02-20 01:43:34', '2023-02-20 01:43:34'),
(98, 'area.add', 'web', 25, 'area', '2023-02-20 01:43:41', '2023-02-20 01:43:41'),
(99, 'area.edit', 'web', 25, 'area', '2023-02-20 01:43:48', '2023-02-20 01:43:48'),
(100, 'area.delete', 'web', 25, 'area', '2023-02-20 01:43:56', '2023-02-20 01:43:56'),
(101, 'branch.all', 'web', 26, 'branch', '2023-02-20 01:44:04', '2023-02-20 01:44:04'),
(102, 'branch.add', 'web', 26, 'branch', '2023-02-20 01:44:12', '2023-02-20 01:44:12'),
(103, 'branch.edit', 'web', 26, 'branch', '2023-02-20 01:44:19', '2023-02-20 01:44:19'),
(104, 'branch.delete', 'web', 26, 'branch', '2023-02-20 01:44:27', '2023-02-20 01:44:27'),
(105, 'newemployee.show', 'web', 6, 'new-employee', '2023-02-20 09:47:06', '2023-02-20 09:47:06'),
(106, 'ewemployee.export', 'web', 6, 'new-employee', '2023-02-22 09:53:29', '2023-02-22 09:53:29'),
(107, 'employee.all', 'web', 5, 'all-employee', '2023-02-23 03:23:32', '2023-02-23 03:28:19'),
(108, 'employee.add', 'web', 5, 'all-employee', '2023-02-23 03:28:32', '2023-02-23 03:28:32'),
(109, 'employee.edit', 'web', 5, 'all-employee', '2023-02-23 03:28:42', '2023-02-23 03:28:42'),
(110, 'employee.show', 'web', 5, 'all-employee', '2023-02-23 03:28:53', '2023-02-23 03:28:53'),
(111, 'employee.delete', 'web', 5, 'all-employee', '2023-02-23 03:29:04', '2023-02-23 03:29:04'),
(112, 'formformats.show', 'web', 3, 'form-formats', '2023-02-26 00:50:45', '2023-02-26 00:50:45'),
(113, 'staffprofile.menu', 'web', 1, 'dashboard', '2023-02-27 01:30:03', '2023-02-27 01:30:03'),
(114, 'notice.menu', 'web', 4, 'notice', '2023-02-28 04:31:59', '2023-02-28 04:38:53'),
(115, 'notice.all', 'web', 4, 'notice', '2023-02-28 04:40:01', '2023-02-28 04:40:01'),
(116, 'notice.add', 'web', 4, 'notice', '2023-02-28 04:40:34', '2023-02-28 04:40:34'),
(117, 'notice.show', 'web', 4, 'notice', '2023-02-28 04:40:56', '2023-02-28 04:40:56'),
(118, 'notice.edit', 'web', 4, 'notice', '2023-02-28 04:41:09', '2023-02-28 04:41:09'),
(119, 'notice.delete', 'web', 4, 'notice', '2023-02-28 04:41:36', '2023-02-28 04:41:36'),
(120, 'notice.module', 'web', 0, 'notice', '2023-03-02 04:06:14', '2023-03-02 04:06:14'),
(121, 'report.module', 'web', 0, 'report', '2023-03-02 04:07:08', '2023-03-02 04:07:08'),
(122, 'report.all', 'web', 0, 'report', '2023-03-02 04:07:19', '2023-03-02 04:07:19'),
(123, 'report.show', 'web', 0, 'report', '2023-03-02 04:07:32', '2023-03-02 04:07:32'),
(124, 'report.add', 'web', 0, 'report', '2023-03-02 04:07:42', '2023-03-02 04:07:42'),
(125, 'report.edit', 'web', 0, 'report', '2023-03-02 04:08:55', '2023-03-02 04:08:55'),
(126, 'report.delete', 'web', 0, 'report', '2023-03-02 04:09:13', '2023-03-02 04:09:13'),
(127, 'report.menu', 'web', 0, 'report', '2023-03-02 04:24:24', '2023-03-02 04:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `group_name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 0, NULL, NULL, '2023-03-01 04:54:35', '2023-03-01 04:58:21'),
(2, 'Settings', 0, NULL, NULL, '2023-03-01 04:58:09', '2023-03-01 04:58:09'),
(3, 'Form & Formats', 0, NULL, NULL, '2023-03-01 04:58:31', '2023-03-01 04:58:31'),
(4, 'Notice', 0, NULL, NULL, '2023-03-01 04:58:38', '2023-03-01 04:58:38'),
(5, 'All Employee', 0, NULL, NULL, '2023-03-01 04:58:45', '2023-03-01 04:58:45'),
(6, 'New Employee', 0, NULL, NULL, '2023-03-01 04:58:51', '2023-03-01 04:58:51'),
(7, 'eFile', 0, NULL, NULL, '2023-03-01 04:58:59', '2023-03-01 04:58:59'),
(8, 'Sector', 0, NULL, NULL, '2023-03-01 04:59:14', '2023-03-01 04:59:14'),
(9, 'Domain', 0, NULL, NULL, '2023-03-01 04:59:21', '2023-03-01 04:59:21'),
(10, 'Department', 0, NULL, NULL, '2023-03-01 04:59:28', '2023-03-01 04:59:28'),
(11, 'Designation', 0, NULL, NULL, '2023-03-01 04:59:35', '2023-03-01 04:59:35'),
(12, 'Division', 0, NULL, NULL, '2023-03-01 04:59:42', '2023-03-01 04:59:42'),
(13, 'District', 0, NULL, NULL, '2023-03-01 04:59:50', '2023-03-01 04:59:50'),
(14, 'Upazilla', 0, NULL, NULL, '2023-03-01 04:59:56', '2023-03-01 04:59:56'),
(15, 'Bloodgroup', 0, NULL, NULL, '2023-03-01 05:00:09', '2023-03-01 05:00:09'),
(16, 'Employeetype', 0, NULL, NULL, '2023-03-01 05:17:46', '2023-03-01 05:17:46'),
(17, 'Roles', 0, NULL, NULL, '2023-03-01 05:17:52', '2023-03-01 05:17:52'),
(18, 'Module', 0, NULL, NULL, '2023-03-01 05:17:59', '2023-03-01 05:17:59'),
(19, 'Edu Qualification', 0, NULL, NULL, '2023-03-01 05:18:06', '2023-03-01 05:18:06'),
(20, 'Gender', 0, NULL, NULL, '2023-03-01 05:18:13', '2023-03-01 05:18:13'),
(21, 'Job Status', 0, NULL, NULL, '2023-03-01 05:18:22', '2023-03-01 05:18:22'),
(22, 'Marital Status', 0, NULL, NULL, '2023-03-01 05:18:31', '2023-03-01 05:18:31'),
(23, 'Religion', 0, NULL, NULL, '2023-03-01 05:18:37', '2023-03-01 05:18:37'),
(24, 'Zone', 0, NULL, NULL, '2023-03-01 05:18:44', '2023-03-01 05:18:44'),
(25, 'Area', 0, NULL, NULL, '2023-03-01 05:18:50', '2023-03-01 05:18:50'),
(26, 'Branch', 0, NULL, NULL, '2023-03-01 05:18:58', '2023-03-01 05:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` int UNSIGNED NOT NULL,
  `profession_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `profession_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Student', NULL, NULL, NULL, NULL),
(2, 'Housewife', NULL, NULL, NULL, NULL),
(3, 'Business', NULL, NULL, NULL, NULL),
(4, 'Farmer', NULL, NULL, NULL, NULL),
(5, 'N/I', NULL, NULL, NULL, NULL),
(6, 'N/A', NULL, NULL, NULL, NULL),
(7, 'Service', NULL, NULL, NULL, NULL),
(8, 'Doctor', NULL, NULL, NULL, NULL),
(9, 'Teacher', NULL, NULL, NULL, NULL),
(10, 'Tailor', NULL, NULL, NULL, NULL),
(11, 'Fisherman', NULL, NULL, NULL, NULL),
(12, 'Driver', NULL, NULL, NULL, NULL),
(13, 'Carpenter', NULL, NULL, NULL, NULL),
(14, 'Eng.', NULL, NULL, NULL, NULL),
(15, 'Banker', NULL, NULL, NULL, NULL),
(16, 'Painter', NULL, NULL, NULL, NULL),
(17, 'Laborer', NULL, NULL, NULL, NULL),
(18, 'Day Laborer', NULL, NULL, NULL, NULL),
(19, 'Retired Teacher', NULL, NULL, NULL, NULL),
(20, 'Mechanics', NULL, NULL, NULL, NULL),
(21, 'Potter', NULL, NULL, NULL, NULL),
(22, 'Housekeeping', NULL, NULL, NULL, NULL),
(23, 'Soldier', NULL, NULL, NULL, NULL),
(24, 'Retired', NULL, NULL, NULL, NULL),
(25, 'Journalist', NULL, NULL, NULL, NULL),
(26, 'Rickshaw-puller', NULL, NULL, NULL, NULL),
(27, 'Electrician', NULL, NULL, NULL, NULL),
(28, 'Technician', NULL, NULL, NULL, NULL),
(29, 'Agriculture', NULL, NULL, NULL, NULL),
(30, 'Expatriates', NULL, NULL, NULL, NULL),
(31, 'Wright', NULL, NULL, NULL, NULL),
(32, 'Survey', NULL, NULL, NULL, NULL),
(33, 'Vetenary Doctor', NULL, NULL, NULL, NULL),
(34, 'Blacksmith', NULL, NULL, NULL, NULL),
(35, 'Woodcarver', NULL, NULL, NULL, NULL),
(36, 'Mason', NULL, NULL, NULL, NULL),
(37, 'Raising Cattle', NULL, NULL, NULL, NULL),
(38, 'Lawyer', NULL, NULL, NULL, NULL),
(39, 'Lawyer Assistant', NULL, NULL, NULL, NULL),
(40, 'Lecturer', NULL, NULL, NULL, NULL),
(41, 'Rural Physician', NULL, NULL, NULL, NULL),
(42, 'Professor', NULL, NULL, NULL, NULL),
(43, 'Assistant Professor', NULL, NULL, NULL, NULL),
(44, 'Associate Professor', NULL, NULL, NULL, NULL),
(45, 'Government Services', NULL, NULL, NULL, NULL),
(46, 'Cook', NULL, NULL, NULL, NULL),
(47, 'Rod Mistry', NULL, NULL, NULL, NULL),
(48, 'Writer', NULL, NULL, NULL, NULL),
(49, 'Village Doctor', NULL, NULL, NULL, NULL),
(50, 'Cobbler', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `supplier_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_id` int NOT NULL,
  `purchase_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=Pending, 1=Approved',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relation_types`
--

CREATE TABLE `relation_types` (
  `id` bigint UNSIGNED NOT NULL,
  `relation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relation_types`
--

INSERT INTO `relation_types` (`id`, `relation_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Father', NULL, NULL, NULL, NULL),
(2, 'Mother', NULL, NULL, NULL, NULL),
(3, 'Son', NULL, NULL, NULL, NULL),
(4, 'Daughter', NULL, NULL, NULL, NULL),
(5, 'Brother', NULL, NULL, NULL, NULL),
(6, 'Sister', NULL, NULL, NULL, NULL),
(7, 'Husband', NULL, NULL, NULL, NULL),
(8, 'Wife', NULL, NULL, NULL, NULL),
(9, 'Paternal Uncle', NULL, NULL, NULL, NULL),
(10, 'Maternal Uncle', NULL, NULL, NULL, NULL),
(11, 'Paternal Aunt', NULL, NULL, NULL, NULL),
(12, 'Maternal Aunt', NULL, NULL, NULL, NULL),
(13, 'Paternal Grant Father', NULL, NULL, NULL, NULL),
(14, 'Maternal Grant Mother', NULL, NULL, NULL, NULL),
(15, 'Father-in-Law', NULL, NULL, NULL, NULL),
(16, 'Mother-in-Law', NULL, NULL, NULL, NULL),
(17, 'Brother-in-Law', NULL, NULL, NULL, NULL),
(18, 'Sister-in-Law', NULL, NULL, NULL, NULL),
(19, 'Cousin', NULL, NULL, NULL, NULL),
(20, 'Nephew', NULL, NULL, NULL, NULL),
(21, 'N/I', NULL, NULL, NULL, NULL),
(22, 'Maternal Grant Father', NULL, NULL, NULL, NULL),
(23, 'Paternal Grant Mother', NULL, NULL, NULL, NULL),
(24, 'Uncle', NULL, NULL, NULL, NULL),
(25, 'Aunt', NULL, NULL, NULL, NULL),
(26, 'N/A', NULL, NULL, NULL, NULL),
(27, 'Grant Father', NULL, NULL, NULL, NULL),
(28, 'Daughter-in-Law', NULL, NULL, NULL, NULL),
(29, 'Uncle in Law', NULL, NULL, NULL, NULL),
(30, 'Son-in-Law', NULL, NULL, NULL, NULL),
(31, 'Friend', NULL, NULL, NULL, NULL),
(32, 'Grand Son', NULL, NULL, NULL, NULL),
(33, 'Grand Daughter', NULL, NULL, NULL, NULL),
(34, 'Grand Mother', NULL, NULL, NULL, NULL),
(35, 'Stepmother', NULL, NULL, NULL, NULL),
(36, 'dependent', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `report_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `report_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report_title`, `report_description`, `report_category`, `report_file`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'কর্মী যোগদান ও অব্যহতি রিপোর্ট জানুয়ারি 2022 থেকে ডিসেম্বর 2022 পর্যন্ত----', '<p>কর্মী যোগদান ও অব্যহতি রিপোর্ট<strong> জানুয়ারি</strong> 2022 থেকে ডিসেম্বর 2022 পর্যন্ত</p>', NULL, '202303121405202303021802Month Wise Staff Joining & Resign Information (Year of 2022).xls', 0, 1, 1, '2023-03-12 08:05:43', '2023-03-12 09:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2023-02-18 10:36:45', '2023-02-18 10:36:45'),
(2, 'Admin', 'web', '2023-02-18 10:41:07', '2023-02-18 10:41:07'),
(3, 'HRO', 'web', '2023-02-18 10:41:15', '2023-02-18 10:41:15'),
(4, 'User', 'web', '2023-02-19 04:02:17', '2023-02-19 04:02:17'),
(5, 'Central User', 'web', '2023-03-02 04:25:27', '2023-03-02 04:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
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
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(1, 2),
(2, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(1, 3),
(5, 3),
(6, 3),
(10, 3),
(11, 3),
(12, 3),
(15, 3),
(16, 3),
(105, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(112, 3),
(113, 3),
(1, 5),
(2, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(20, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(41, 5),
(45, 5),
(49, 5),
(53, 5),
(57, 5),
(61, 5),
(65, 5),
(69, 5),
(73, 5),
(77, 5),
(81, 5),
(85, 5),
(89, 5),
(93, 5),
(97, 5),
(101, 5),
(107, 5),
(110, 5),
(112, 5),
(113, 5),
(114, 5),
(115, 5),
(116, 5),
(117, 5),
(118, 5),
(120, 5),
(121, 5),
(122, 5),
(123, 5),
(124, 5),
(125, 5),
(127, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sheet1`
--

CREATE TABLE `sheet1` (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Group_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sheet1`
--

INSERT INTO `sheet1` (`ID`, `Group_Name`) VALUES
('1', 'Arts'),
('2', 'Science'),
('3', 'Commerce'),
('4', 'Humanetics'),
('5', 'Medical'),
('6', 'General'),
('7', 'Vocational'),
('8', 'Business Management');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint UNSIGNED NOT NULL,
  `employee_id` int NOT NULL,
  `training_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `domestic_overseas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `sponsor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `employee_id`, `training_name`, `date_from`, `date_to`, `domestic_overseas`, `place`, `country_id`, `sponsor`, `venue`, `documents`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10100004, '10100004', '1992-11-25', '2000-06-09', 'overseas', 'Minima sit sunt et a', 152, 'Quidem ex quia repre', 'Maiores facilis quos', 'yes', 0, 1, 1, '2023-03-08 01:37:08', '2023-03-08 03:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` int NOT NULL,
  `district_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `division_id`, `district_id`, `name`, `name_bn`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 'Barura', 'বরুড়া', 1, NULL, NULL, NULL, NULL),
(2, 1, 13, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 1, NULL, NULL, NULL, NULL),
(3, 1, 13, 'Burichang', 'বুড়িচং', 1, NULL, NULL, NULL, NULL),
(4, 1, 13, 'Chandina', 'চান্দিনা', 1, NULL, NULL, NULL, NULL),
(5, 1, 13, 'Chauddagram', 'চৌদ্দগ্রাম', 1, NULL, NULL, NULL, NULL),
(6, 1, 13, 'Cumillasadar', 'কুমিল্লা সদর', 1, NULL, NULL, NULL, NULL),
(7, 1, 13, 'Daudkandi', 'দাউদকান্দি', 1, NULL, NULL, NULL, NULL),
(8, 1, 13, 'Debidwar', 'দেবিদ্বার', 1, NULL, NULL, NULL, NULL),
(9, 1, 13, 'Homna', 'হোমনা', 1, NULL, NULL, NULL, NULL),
(10, 1, 13, 'Laksam', 'লাকসাম', 1, NULL, NULL, NULL, NULL),
(11, 1, 13, 'Lalmai', 'লালমাই', 1, NULL, NULL, NULL, NULL),
(12, 1, 13, 'Meghna', 'মেঘনা', 1, NULL, NULL, NULL, NULL),
(13, 1, 13, 'Monohargonj', 'মনোহরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(14, 1, 13, 'Muradnagar', 'মুরাদনগর', 1, NULL, NULL, NULL, NULL),
(15, 1, 13, 'Nangalkot', 'নাঙ্গলকোট', 1, NULL, NULL, NULL, NULL),
(16, 1, 13, 'Cumilla Sadar South', 'সদরদক্ষিণ', 1, NULL, 1, NULL, '2023-03-06 01:50:32'),
(17, 1, 13, 'Titas', 'তিতাস', 1, NULL, NULL, NULL, NULL),
(18, 1, 17, 'Chhagalnaiya', 'ছাগলনাইয়া', 1, NULL, NULL, NULL, NULL),
(19, 1, 17, 'Daganbhuiyan', 'দাগনভূঞা', 1, NULL, NULL, NULL, NULL),
(20, 1, 17, 'Feni Sadar', 'ফেনী সদর', 1, NULL, NULL, NULL, NULL),
(21, 1, 17, 'Fulgazi', 'ফুলগাজী', 1, NULL, NULL, NULL, NULL),
(22, 1, 17, 'Parshuram', 'পরশুরাম', 1, NULL, NULL, NULL, NULL),
(23, 1, 17, 'Sonagazi', 'সোনাগাজী', 1, NULL, NULL, NULL, NULL),
(24, 1, 7, 'Akhaura', 'আখাউড়া', 1, NULL, NULL, NULL, NULL),
(25, 1, 7, 'Ashuganj', 'আশুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(26, 1, 7, 'Bancharampur', 'বাঞ্ছারামপুর', 1, NULL, NULL, NULL, NULL),
(27, 1, 7, 'Bijoynagar', 'বিজয়নগর', 1, NULL, NULL, NULL, NULL),
(28, 1, 7, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 1, NULL, NULL, NULL, NULL),
(29, 1, 7, 'Kasba', 'কসবা', 1, NULL, NULL, NULL, NULL),
(30, 1, 7, 'Nabinagar', 'নবীনগর', 1, NULL, NULL, NULL, NULL),
(31, 1, 7, 'Nasirnagar', 'নাসিরনগর', 1, NULL, NULL, NULL, NULL),
(32, 1, 7, 'Sarail', 'সরাইল', 1, NULL, NULL, NULL, NULL),
(33, 1, 55, 'Baghaichari', 'বাঘাইছড়ি', 1, NULL, NULL, NULL, NULL),
(34, 1, 55, 'Barkal', 'বরকল', 1, NULL, NULL, NULL, NULL),
(35, 1, 55, 'Belaichari', 'বিলাইছড়ি', 1, NULL, NULL, NULL, NULL),
(36, 1, 55, 'Juraichari', 'জুরাছড়ি', 1, NULL, NULL, NULL, NULL),
(37, 1, 55, 'Kaptai', 'কাপ্তাই', 1, NULL, NULL, NULL, NULL),
(38, 1, 55, 'Kawkhali', 'কাউখালী', 1, NULL, NULL, NULL, NULL),
(39, 1, 55, 'Langadu', 'লংগদু', 1, NULL, NULL, NULL, NULL),
(40, 1, 55, 'Naniarchar', 'নানিয়ারচর', 1, NULL, NULL, NULL, NULL),
(41, 1, 55, 'Rajasthali', 'রাজস্থলী', 1, NULL, NULL, NULL, NULL),
(42, 1, 55, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 1, NULL, NULL, NULL, NULL),
(43, 1, 48, 'Begumganj', 'বেগমগঞ্জ', 1, NULL, NULL, NULL, NULL),
(44, 1, 48, 'Chatkhil', 'চাটখিল', 1, NULL, NULL, NULL, NULL),
(45, 1, 48, 'Companiganj', 'কোম্পানীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(46, 1, 48, 'Hatia', 'হাতিয়া', 1, NULL, NULL, NULL, NULL),
(47, 1, 48, 'Kabirhat', 'কবিরহাট', 1, NULL, NULL, NULL, NULL),
(48, 1, 48, 'Noakhali Sadar', 'নোয়াখালী', 1, NULL, NULL, NULL, NULL),
(49, 1, 48, 'Senbug', 'সেনবাগ', 1, NULL, NULL, NULL, NULL),
(50, 1, 48, 'Sonaimuri', 'সোনাইমুড়ী', 1, NULL, NULL, NULL, NULL),
(51, 1, 48, 'Subarnachar', 'সুবর্ণচর', 1, NULL, NULL, NULL, NULL),
(52, 1, 8, 'Chandpur Sadar', 'চাঁদপুর সদর', 1, NULL, NULL, NULL, NULL),
(53, 1, 8, 'Faridgonj', 'ফরিদগঞ্জ', 1, NULL, NULL, NULL, NULL),
(54, 1, 8, 'Haimchar', 'হাইমচর', 1, NULL, NULL, NULL, NULL),
(55, 1, 8, 'Hajiganj', 'হাজীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(56, 1, 8, 'Kachua', 'কচুয়া', 1, NULL, NULL, NULL, NULL),
(57, 1, 8, 'Matlabnorth', 'মতলব', 1, NULL, NULL, NULL, NULL),
(58, 1, 8, 'Matlabsouth', 'মতলব', 1, NULL, NULL, NULL, NULL),
(59, 1, 8, 'Shahrasti', 'শাহরাস্তি', 1, NULL, NULL, NULL, NULL),
(60, 1, 32, 'Kamalnagar', 'কমলনগর', 1, NULL, NULL, NULL, NULL),
(61, 1, 32, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 1, NULL, NULL, NULL, NULL),
(62, 1, 32, 'Raipur', 'রায়পুর', 1, NULL, NULL, NULL, NULL),
(63, 1, 32, 'Ramganj', 'রামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(64, 1, 32, 'Ramgati', 'রামগতি', 1, NULL, NULL, NULL, NULL),
(65, 1, 10, 'Anwara', 'আনোয়ারা', 1, NULL, NULL, NULL, NULL),
(66, 1, 10, 'Banshkhali', 'বাঁশখালী', 1, NULL, NULL, NULL, NULL),
(67, 1, 10, 'Boalkhali', 'বোয়ালখালী', 1, NULL, NULL, NULL, NULL),
(68, 1, 10, 'Chandanaish', 'চন্দনাইশ', 1, NULL, NULL, NULL, NULL),
(69, 1, 10, 'Fatikchhari', 'ফটিকছড়ি', 1, NULL, NULL, NULL, NULL),
(70, 1, 10, 'Hathazari', 'হাটহাজারী', 1, NULL, NULL, NULL, NULL),
(71, 1, 10, 'Karnafuli', 'কর্ণফুলী', 1, NULL, NULL, NULL, NULL),
(72, 1, 10, 'Lohagara', 'লোহাগাড়া', 1, NULL, NULL, NULL, NULL),
(73, 1, 10, 'Mirsharai', 'মীরসরাই', 1, NULL, NULL, NULL, NULL),
(74, 1, 10, 'Patiya', 'পটিয়া', 1, NULL, NULL, NULL, NULL),
(75, 1, 10, 'Rangunia', 'রাঙ্গুনিয়া', 1, NULL, NULL, NULL, NULL),
(76, 1, 10, 'Raozan', 'রাউজান', 1, NULL, NULL, NULL, NULL),
(77, 1, 10, 'Sandwip', 'সন্দ্বীপ', 1, NULL, NULL, NULL, NULL),
(78, 1, 10, 'Satkania', 'সাতকানিয়া', 1, NULL, NULL, NULL, NULL),
(79, 1, 10, 'Sitakunda', 'সীতাকুন্ড', 1, NULL, NULL, NULL, NULL),
(80, 1, 12, 'Chakaria', 'চকরিয়া', 1, NULL, NULL, NULL, NULL),
(81, 1, 12, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 1, NULL, NULL, NULL, NULL),
(82, 1, 12, 'Kutubdia', 'কুতুবদিয়া', 1, NULL, NULL, NULL, NULL),
(83, 1, 12, 'Moheshkhali', 'মহেশখালী', 1, NULL, NULL, NULL, NULL),
(84, 1, 12, 'Pekua', 'পেকুয়া', 1, NULL, NULL, NULL, NULL),
(85, 1, 12, 'Ramu', 'রামু', 1, NULL, NULL, NULL, NULL),
(86, 1, 12, 'Teknaf', 'টেকনাফ', 1, NULL, NULL, NULL, NULL),
(87, 1, 12, 'Ukhiya', 'উখিয়া', 1, NULL, NULL, NULL, NULL),
(88, 1, 27, 'Dighinala', 'দিঘীনালা', 1, NULL, NULL, NULL, NULL),
(89, 1, 27, 'Guimara', 'গুইমারা', 1, NULL, NULL, NULL, NULL),
(90, 1, 27, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 1, NULL, NULL, NULL, NULL),
(91, 1, 27, 'Laxmichhari', 'লক্ষীছড়ি', 1, NULL, NULL, NULL, NULL),
(92, 1, 27, 'Manikchari', 'মানিকছড়ি', 1, NULL, NULL, NULL, NULL),
(93, 1, 27, 'Matiranga', 'মাটিরাঙ্গা', 1, NULL, NULL, NULL, NULL),
(94, 1, 27, 'Mohalchari', 'মহালছড়ি', 1, NULL, NULL, NULL, NULL),
(95, 1, 27, 'Panchari', 'পানছড়ি', 1, NULL, NULL, NULL, NULL),
(96, 1, 27, 'Ramgarh', 'রামগড়', 1, NULL, NULL, NULL, NULL),
(97, 1, 2, 'Alikadam', 'আলীকদম', 1, NULL, NULL, NULL, NULL),
(98, 1, 2, 'Bandarban Sadar', 'বান্দরবান সদর', 1, NULL, NULL, NULL, NULL),
(99, 1, 2, 'Lama', 'লামা', 1, NULL, NULL, NULL, NULL),
(100, 1, 2, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 1, NULL, NULL, NULL, NULL),
(101, 1, 2, 'Rowangchhari', 'রোয়াংছড়ি', 1, NULL, NULL, NULL, NULL),
(102, 1, 2, 'Ruma', 'রুমা', 1, NULL, NULL, NULL, NULL),
(103, 1, 2, 'Thanchi', 'থানচি', 1, NULL, NULL, NULL, NULL),
(104, 2, 60, 'Belkuchi', 'বেলকুচি', 1, NULL, NULL, NULL, NULL),
(105, 2, 60, 'Chauhali', 'চৌহালি', 1, NULL, NULL, NULL, NULL),
(106, 2, 60, 'Kamarkhand', 'কামারখন্দ', 1, NULL, NULL, NULL, NULL),
(107, 2, 60, 'Kazipur', 'কাজীপুর', 1, NULL, NULL, NULL, NULL),
(108, 2, 60, 'Raigonj', 'রায়গঞ্জ', 1, NULL, NULL, NULL, NULL),
(109, 2, 60, 'Shahjadpur', 'শাহজাদপুর', 1, NULL, NULL, NULL, NULL),
(110, 2, 60, 'Sirajganj Sadar', 'সিরাজগঞ্জ', 1, NULL, 1, NULL, '2023-03-06 01:49:22'),
(111, 2, 60, 'Tarash', 'তাড়াশ', 1, NULL, NULL, NULL, NULL),
(112, 2, 60, 'Ullapara', 'উল্লাপাড়া', 1, NULL, NULL, NULL, NULL),
(113, 2, 49, 'Atghoria', 'আটঘরিয়া', 1, NULL, NULL, NULL, NULL),
(114, 2, 49, 'Bera', 'বেড়া', 1, NULL, NULL, NULL, NULL),
(115, 2, 49, 'Bhangura', 'ভাঙ্গুড়া', 1, NULL, NULL, NULL, NULL),
(116, 2, 49, 'Chatmohar', 'চাটমোহর', 1, NULL, NULL, NULL, NULL),
(117, 2, 49, 'Faridpur', 'ফরিদপুর', 1, NULL, NULL, NULL, NULL),
(118, 2, 49, 'Ishurdi', 'ঈশ্বরদী', 1, NULL, NULL, NULL, NULL),
(119, 2, 49, 'Pabna Sadar', 'পাবনা সদর', 1, NULL, 1, NULL, '2023-03-06 01:49:15'),
(120, 2, 49, 'Santhia', 'সাঁথিয়া', 1, NULL, NULL, NULL, NULL),
(121, 2, 49, 'Sujanagar', 'সুজানগর', 1, NULL, NULL, NULL, NULL),
(122, 2, 6, 'Adamdighi', 'আদমদিঘি', 1, NULL, NULL, NULL, NULL),
(123, 2, 6, 'Bogura Sadar', 'বগুড়া সদর', 1, NULL, NULL, NULL, NULL),
(124, 2, 6, 'Dhunot', 'ধুনট', 1, NULL, NULL, NULL, NULL),
(125, 2, 6, 'Dupchanchia', 'দুপচাচিঁয়া', 1, NULL, NULL, NULL, NULL),
(126, 2, 6, 'Gabtali', 'গাবতলী', 1, NULL, NULL, NULL, NULL),
(127, 2, 6, 'Kahaloo', 'কাহালু', 1, NULL, NULL, NULL, NULL),
(128, 2, 6, 'Nondigram', 'নন্দিগ্রাম', 1, NULL, NULL, NULL, NULL),
(129, 2, 6, 'Shajahanpur', 'শাজাহানপুর', 1, NULL, NULL, NULL, NULL),
(130, 2, 6, 'Shariakandi', 'সারিয়াকান্দি', 1, NULL, NULL, NULL, NULL),
(131, 2, 6, 'Sherpur', 'শেরপুর', 1, NULL, NULL, NULL, NULL),
(132, 2, 6, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(133, 2, 6, 'Sonatala', 'সোনাতলা', 1, NULL, NULL, NULL, NULL),
(134, 2, 54, 'Bagha', 'বাঘা', 1, NULL, NULL, NULL, NULL),
(135, 2, 54, 'Bagmara', 'বাগমারা', 1, NULL, NULL, NULL, NULL),
(136, 2, 54, 'Charghat', 'চারঘাট', 1, NULL, NULL, NULL, NULL),
(137, 2, 54, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL, NULL, NULL),
(138, 2, 54, 'Godagari', 'গোদাগাড়ী', 1, NULL, NULL, NULL, NULL),
(139, 2, 54, 'Mohonpur', 'মোহনপুর', 1, NULL, NULL, NULL, NULL),
(140, 2, 54, 'Paba', 'পবা', 1, NULL, NULL, NULL, NULL),
(141, 2, 54, 'Puthia', 'পুঠিয়া', 1, NULL, NULL, NULL, NULL),
(142, 2, 54, 'Tanore', 'তানোর', 1, NULL, NULL, NULL, NULL),
(143, 2, 45, 'Bagatipara', 'বাগাতিপাড়া', 1, NULL, NULL, NULL, NULL),
(144, 2, 45, 'Baraigram', 'বড়াইগ্রাম', 1, NULL, NULL, NULL, NULL),
(145, 2, 45, 'Gurudaspur', 'গুরুদাসপুর', 1, NULL, NULL, NULL, NULL),
(146, 2, 45, 'Lalpur', 'লালপুর', 1, NULL, NULL, NULL, NULL),
(147, 2, 45, 'Naldanga', 'নলডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(148, 2, 45, 'Natore Sadar', 'নাটোর সদর', 1, NULL, NULL, NULL, NULL),
(149, 2, 45, 'Singra', 'সিংড়া', 1, NULL, NULL, NULL, NULL),
(150, 2, 26, 'Akkelpur', 'আক্কেলপুর', 1, NULL, NULL, NULL, NULL),
(151, 2, 26, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 1, NULL, NULL, NULL, NULL),
(152, 2, 26, 'Kalai', 'কালাই', 1, NULL, NULL, NULL, NULL),
(153, 2, 26, 'Khetlal', 'ক্ষেতলাল', 1, NULL, NULL, NULL, NULL),
(154, 2, 26, 'Panchbibi', 'পাঁচবিবি', 1, NULL, NULL, NULL, NULL),
(155, 2, 9, 'Bholahat', 'ভোলাহাট', 1, NULL, NULL, NULL, NULL),
(156, 2, 9, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(157, 2, 9, 'Gomostapur', 'গোমস্তাপুর', 1, NULL, NULL, NULL, NULL),
(158, 2, 9, 'Nachol', 'নাচোল', 1, NULL, NULL, NULL, NULL),
(159, 2, 9, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(160, 2, 41, 'Atrai', 'আত্রাই', 1, NULL, NULL, NULL, NULL),
(161, 2, 41, 'Badalgachi', 'বদলগাছী', 1, NULL, NULL, NULL, NULL),
(162, 2, 41, 'Dhamoirhat', 'ধামইরহাট', 1, NULL, NULL, NULL, NULL),
(163, 2, 41, 'Manda', 'মান্দা', 1, NULL, NULL, NULL, NULL),
(164, 2, 41, 'Mohadevpur', 'মহাদেবপুর', 1, NULL, NULL, NULL, NULL),
(165, 2, 41, 'Naogaon Sadar', 'নওগাঁ সদর', 1, NULL, NULL, NULL, NULL),
(166, 2, 41, 'Niamatpur', 'নিয়ামতপুর', 1, NULL, NULL, NULL, NULL),
(167, 2, 41, 'Patnitala', 'পত্নিতলা', 1, NULL, NULL, NULL, NULL),
(168, 2, 41, 'Porsha', 'পোরশা', 1, NULL, NULL, NULL, NULL),
(169, 2, 41, 'Raninagar', 'রাণীনগর', 1, NULL, NULL, NULL, NULL),
(170, 2, 41, 'Sapahar', 'সাপাহার', 1, NULL, NULL, NULL, NULL),
(171, 3, 23, 'Abhaynagar', 'অভয়নগর', 1, NULL, NULL, NULL, NULL),
(172, 3, 23, 'Bagherpara', 'বাঘারপাড়া', 1, NULL, NULL, NULL, NULL),
(173, 3, 23, 'Chougachha', 'চৌগাছা', 1, NULL, NULL, NULL, NULL),
(174, 3, 23, 'Jashore Sadar', 'যশোর সদর', 1, NULL, NULL, NULL, NULL),
(175, 3, 23, 'Jhikargacha', 'ঝিকরগাছা', 1, NULL, NULL, NULL, NULL),
(176, 3, 23, 'Keshabpur', 'কেশবপুর', 1, NULL, NULL, NULL, NULL),
(177, 3, 23, 'Manirampur', 'মণিরামপুর', 1, NULL, NULL, NULL, NULL),
(178, 3, 23, 'Sharsha', 'শার্শা', 1, NULL, NULL, NULL, NULL),
(179, 3, 57, 'Assasuni', 'আশাশুনি', 1, NULL, NULL, NULL, NULL),
(180, 3, 57, 'Debhata', 'দেবহাটা', 1, NULL, NULL, NULL, NULL),
(181, 3, 57, 'Kalaroa', 'কলারোয়া', 1, NULL, NULL, NULL, NULL),
(182, 3, 57, 'Kaliganj', 'কালিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(183, 3, 57, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 1, NULL, NULL, NULL, NULL),
(184, 3, 57, 'Shyamnagar', 'শ্যামনগর', 1, NULL, NULL, NULL, NULL),
(185, 3, 57, 'Tala', 'তালা', 1, NULL, NULL, NULL, NULL),
(186, 3, 37, 'Gangni', 'গাংনী', 1, NULL, NULL, NULL, NULL),
(187, 3, 37, 'Meherpur Sadar', 'মেহেরপুর সদর', 1, NULL, 1, NULL, '2023-03-06 01:49:31'),
(188, 3, 37, 'Mujibnagar', 'মুজিবনগর', 1, NULL, NULL, NULL, NULL),
(189, 3, 42, 'Kalia', 'কালিয়া', 1, NULL, NULL, NULL, NULL),
(190, 3, 42, 'Lohagara', 'লোহাগড়া', 1, NULL, NULL, NULL, NULL),
(191, 3, 42, 'Narail Sadar', 'নড়াইল সদর', 1, NULL, NULL, NULL, NULL),
(192, 3, 11, 'Alamdanga', 'আলমডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(193, 3, 11, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 1, NULL, NULL, NULL, NULL),
(194, 3, 11, 'Damurhuda', 'দামুড়হুদা', 1, NULL, NULL, NULL, NULL),
(195, 3, 11, 'Jibannagar', 'জীবননগর', 1, NULL, NULL, NULL, NULL),
(196, 3, 31, 'Bheramara', 'ভেড়ামারা', 1, NULL, NULL, NULL, NULL),
(197, 3, 31, 'Daulatpur', 'দৌলতপুর', 1, NULL, NULL, NULL, NULL),
(198, 3, 31, 'Khoksa', 'খোকসা', 1, NULL, NULL, NULL, NULL),
(199, 3, 31, 'Kumarkhali', 'কুমারখালী', 1, NULL, NULL, NULL, NULL),
(200, 3, 31, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 1, NULL, NULL, NULL, NULL),
(201, 3, 31, 'Mirpurkushtia', 'মিরপুর', 1, NULL, NULL, NULL, NULL),
(202, 3, 35, 'Magura Sadar', 'মাগুরা সদর', 1, NULL, NULL, NULL, NULL),
(203, 3, 35, 'Mohammadpur', 'মহম্মদপুর', 1, NULL, NULL, NULL, NULL),
(204, 3, 35, 'Shalikha', 'শালিখা', 1, NULL, NULL, NULL, NULL),
(205, 3, 35, 'Sreepur', 'শ্রীপুর', 1, NULL, NULL, NULL, NULL),
(206, 3, 28, 'Botiaghata', 'বটিয়াঘাটা', 1, NULL, NULL, NULL, NULL),
(207, 3, 28, 'Dakop', 'দাকোপ', 1, NULL, NULL, NULL, NULL),
(208, 3, 28, 'Digholia', 'দিঘলিয়া', 1, NULL, NULL, NULL, NULL),
(209, 3, 28, 'Dumuria', 'ডুমুরিয়া', 1, NULL, NULL, NULL, NULL),
(210, 3, 28, 'Fultola', 'ফুলতলা', 1, NULL, NULL, NULL, NULL),
(211, 3, 28, 'Koyra', 'কয়রা', 1, NULL, NULL, NULL, NULL),
(212, 3, 28, 'Paikgasa', 'পাইকগাছা', 1, NULL, NULL, NULL, NULL),
(213, 3, 28, 'Rupsha', 'রূপসা', 1, NULL, NULL, NULL, NULL),
(214, 3, 28, 'Terokhada', 'তেরখাদা', 1, NULL, NULL, NULL, NULL),
(215, 3, 1, 'Chitalmari', 'চিতলমারী', 1, NULL, NULL, NULL, NULL),
(216, 3, 1, 'Fakirhat', 'ফকিরহাট', 1, NULL, NULL, NULL, NULL),
(217, 3, 1, 'Kachua', 'কচুয়া', 1, NULL, NULL, NULL, NULL),
(218, 3, 1, 'Mollahat', 'মোল্লাহাট', 1, NULL, NULL, NULL, NULL),
(219, 3, 1, 'Mongla', 'মোংলা', 1, NULL, NULL, NULL, NULL),
(220, 3, 1, 'Morrelganj', 'মোড়েলগঞ্জ', 1, NULL, NULL, NULL, NULL),
(221, 3, 1, 'Rampal', 'রামপাল', 1, NULL, NULL, NULL, NULL),
(222, 3, 1, 'Bagerhat Sadar', 'বাগেরহাট সদর', 1, NULL, 1, NULL, '2023-03-06 01:48:09'),
(223, 3, 1, 'Sarankhola', 'শরণখোলা', 1, NULL, NULL, NULL, NULL),
(224, 3, 25, 'Harinakundu', 'হরিণাকুন্ডু', 1, NULL, NULL, NULL, NULL),
(225, 3, 25, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 1, NULL, NULL, NULL, NULL),
(226, 3, 25, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(227, 3, 25, 'Kot8', 'কোটচাঁদপুর', 1, NULL, NULL, NULL, NULL),
(228, 3, 25, 'Moheshpur', 'মহেশপুর', 1, NULL, NULL, NULL, NULL),
(229, 3, 25, 'Shailkupa', 'শৈলকুপা', 1, NULL, NULL, NULL, NULL),
(230, 4, 51, 'Bauphal', 'বাউফল', 1, NULL, NULL, NULL, NULL),
(231, 4, 24, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 1, NULL, NULL, NULL, NULL),
(232, 4, 24, 'Kathalia', 'কাঠালিয়া', 1, NULL, NULL, NULL, NULL),
(233, 4, 24, 'Nalchity', 'নলছিটি', 1, NULL, NULL, NULL, NULL),
(234, 4, 24, 'Rajapur', 'রাজাপুর', 1, NULL, NULL, NULL, NULL),
(235, 4, 51, 'Dashmina', 'দশমিনা', 1, NULL, NULL, NULL, NULL),
(236, 4, 51, 'Dumki', 'দুমকি', 1, NULL, NULL, NULL, NULL),
(237, 4, 51, 'Galachipa', 'গলাচিপা', 1, NULL, NULL, NULL, NULL),
(238, 4, 51, 'Kalapara', 'কলাপাড়া', 1, NULL, NULL, NULL, NULL),
(239, 4, 51, 'Mirzaganj', 'মির্জাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(240, 4, 51, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 1, NULL, NULL, NULL, NULL),
(241, 4, 51, 'Rangabali', 'রাঙ্গাবালী', 1, NULL, NULL, NULL, NULL),
(242, 4, 52, 'Bhandaria', 'ভান্ডারিয়া', 1, NULL, NULL, NULL, NULL),
(243, 4, 52, 'Indurkani', 'ইন্দুরকানী', 1, NULL, NULL, NULL, NULL),
(244, 4, 52, 'Kawkhali', 'কাউখালী', 1, NULL, NULL, NULL, NULL),
(245, 4, 52, 'Mathbaria', 'মঠবাড়ীয়া', 1, NULL, NULL, NULL, NULL),
(246, 4, 52, 'Nazirpur', 'নাজিরপুর', 1, NULL, NULL, NULL, NULL),
(247, 4, 52, 'Nesarabad', 'নেছারাবাদ', 1, NULL, NULL, NULL, NULL),
(248, 4, 52, 'Pirojpur Sadar', 'পিরোজপুর সদর', 1, NULL, NULL, NULL, NULL),
(249, 4, 4, 'Agailjhara', 'আগৈলঝাড়া', 1, NULL, NULL, NULL, NULL),
(250, 4, 4, 'Babuganj', 'বাবুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(251, 4, 4, 'Bakerganj', 'বাকেরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(252, 4, 4, 'Banaripara', 'বানারীপাড়া', 1, NULL, NULL, NULL, NULL),
(253, 4, 4, 'Barishal Sadar', 'বরিশাল সদর', 1, NULL, NULL, NULL, NULL),
(254, 4, 4, 'Gournadi', 'গৌরনদী', 1, NULL, NULL, NULL, NULL),
(255, 4, 4, 'Hizla', 'হিজলা', 1, NULL, NULL, NULL, NULL),
(256, 4, 4, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(257, 4, 4, 'Muladi', 'মুলাদী', 1, NULL, NULL, NULL, NULL),
(258, 4, 4, 'Wazirpur', 'উজিরপুর', 1, NULL, NULL, NULL, NULL),
(259, 4, 5, 'Bhola Sadar', 'ভোলা সদর', 1, NULL, NULL, NULL, NULL),
(260, 4, 5, 'Borhanuddin', 'বোরহানউদ্দিন', 1, NULL, NULL, NULL, NULL),
(261, 4, 5, 'Charfesson', 'চরফ্যাশন', 1, NULL, NULL, NULL, NULL),
(262, 4, 5, 'Doulatkhan', 'দৌলতখান', 1, NULL, NULL, NULL, NULL),
(263, 4, 5, 'Lalmohan', 'লালমোহন', 1, NULL, NULL, NULL, NULL),
(264, 4, 5, 'Monpura', 'মনপুরা', 1, NULL, NULL, NULL, NULL),
(265, 4, 5, 'Tazumuddin', 'তজুমদ্দিন', 1, NULL, NULL, NULL, NULL),
(266, 4, 3, 'Amtali', 'আমতলী', 1, NULL, NULL, NULL, NULL),
(267, 4, 3, 'Bamna', 'বামনা', 1, NULL, NULL, NULL, NULL),
(268, 4, 3, 'Betagi', 'বেতাগী', 1, NULL, NULL, NULL, NULL),
(269, 4, 3, 'Pathorghata', 'পাথরঘাটা', 1, NULL, NULL, NULL, NULL),
(270, 4, 3, 'Barguna Sadar', 'বরগুনা সদর', 1, NULL, 1, NULL, '2023-03-06 01:49:52'),
(271, 4, 3, 'Taltali', 'তালতলি', 1, NULL, NULL, NULL, NULL),
(272, 5, 62, 'Balaganj', 'বালাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(273, 5, 62, 'Beanibazar', 'বিয়ানীবাজার', 1, NULL, NULL, NULL, NULL),
(274, 5, 62, 'Bishwanath', 'বিশ্বনাথ', 1, NULL, NULL, NULL, NULL),
(275, 5, 62, 'Companiganj', 'কোম্পানীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(276, 5, 62, 'Dakshinsurma', 'দক্ষিণসুরমা', 1, NULL, NULL, NULL, NULL),
(277, 5, 62, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 1, NULL, NULL, NULL, NULL),
(278, 5, 62, 'Golapganj', 'গোলাপগঞ্জ', 1, NULL, NULL, NULL, NULL),
(279, 5, 62, 'Gowainghat', 'গোয়াইনঘাট', 1, NULL, NULL, NULL, NULL),
(280, 5, 62, 'Jaintiapur', 'জৈন্তাপুর', 1, NULL, NULL, NULL, NULL),
(281, 5, 62, 'Kanaighat', 'কানাইঘাট', 1, NULL, NULL, NULL, NULL),
(282, 5, 62, 'Osmaninagar', 'ওসমানী', 1, NULL, NULL, NULL, NULL),
(283, 5, 62, 'Sylhet Sadar', 'সিলেট সদর', 1, NULL, NULL, NULL, NULL),
(284, 5, 62, 'Zakiganj', 'জকিগঞ্জ', 1, NULL, NULL, NULL, NULL),
(285, 5, 38, 'Barlekha', 'বড়লেখা', 1, NULL, NULL, NULL, NULL),
(286, 5, 38, 'Juri', 'জুড়ী', 1, NULL, NULL, NULL, NULL),
(287, 5, 38, 'Kamolganj', 'কমলগঞ্জ', 1, NULL, NULL, NULL, NULL),
(288, 5, 38, 'Kulaura', 'কুলাউড়া', 1, NULL, NULL, NULL, NULL),
(289, 5, 38, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 1, NULL, NULL, NULL, NULL),
(290, 5, 38, 'Rajnagar', 'রাজনগর', 1, NULL, NULL, NULL, NULL),
(291, 5, 38, 'Sreemangal', 'শ্রীমঙ্গল', 1, NULL, NULL, NULL, NULL),
(292, 5, 21, 'Ajmiriganj', 'আজমিরীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(293, 5, 21, 'Bahubal', 'বাহুবল', 1, NULL, NULL, NULL, NULL),
(294, 5, 21, 'Baniachong', 'বানিয়াচং', 1, NULL, NULL, NULL, NULL),
(295, 5, 21, 'Chunarughat', 'চুনারুঘাট', 1, NULL, NULL, NULL, NULL),
(296, 5, 21, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(297, 5, 21, 'Lakhai', 'লাখাই', 1, NULL, NULL, NULL, NULL),
(298, 5, 21, 'Madhabpur', 'মাধবপুর', 1, NULL, NULL, NULL, NULL),
(299, 5, 21, 'Nabiganj', 'নবীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(300, 5, 21, 'Shayestaganj', 'শায়েস্তাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(301, 5, 61, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 1, NULL, NULL, NULL, NULL),
(302, 5, 61, 'Chhatak', 'ছাতক', 1, NULL, NULL, NULL, NULL),
(303, 5, 61, 'Derai', 'দিরাই', 1, NULL, NULL, NULL, NULL),
(304, 5, 61, 'Dharmapasha', 'ধর্মপাশা', 1, NULL, NULL, NULL, NULL),
(305, 5, 61, 'Dowarabazar', 'দোয়ারাবাজার', 1, NULL, NULL, NULL, NULL),
(306, 5, 61, 'Jagannathpur', 'জগন্নাথপুর', 1, NULL, NULL, NULL, NULL),
(307, 5, 61, 'Jamalganj', 'জামালগঞ্জ', 1, NULL, NULL, NULL, NULL),
(308, 5, 61, 'Shalla', 'শাল্লা', 1, NULL, NULL, NULL, NULL),
(309, 5, 61, 'South Sunamganj', 'দক্ষিণসুনামগঞ্জ', 1, NULL, NULL, NULL, NULL),
(310, 5, 61, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(311, 5, 61, 'Tahirpur', 'তাহিরপুর', 1, NULL, NULL, NULL, NULL),
(312, 6, 44, 'Belabo', 'বেলাবো', 1, NULL, NULL, NULL, NULL),
(313, 6, 44, 'Monohardi', 'মনোহরদী', 1, NULL, NULL, NULL, NULL),
(314, 6, 44, 'Narsingdisadar', 'নরসিংদী', 1, NULL, NULL, NULL, NULL),
(315, 6, 44, 'Palash', 'পলাশ', 1, NULL, NULL, NULL, NULL),
(316, 6, 44, 'Raipura', 'রায়পুরা', 1, NULL, NULL, NULL, NULL),
(317, 6, 44, 'Shibpur', 'শিবপুর', 1, NULL, NULL, NULL, NULL),
(318, 6, 19, 'Kaliakair', 'কালিয়াকৈর', 1, NULL, NULL, NULL, NULL),
(319, 6, 19, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(320, 6, 19, 'Kapasia', 'কাপাসিয়া', 1, NULL, NULL, NULL, NULL),
(321, 6, 19, 'Gazipur Sadar', 'গাজীপুর সদর', 1, NULL, 1, NULL, '2023-03-06 01:50:02'),
(322, 6, 19, 'Sreepur', 'শ্রীপুর', 1, NULL, NULL, NULL, NULL),
(323, 6, 58, 'Bhedarganj', 'ভেদরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(324, 6, 58, 'Damudya', 'ডামুড্যা', 1, NULL, NULL, NULL, NULL),
(325, 6, 58, 'Gosairhat', 'গোসাইরহাট', 1, NULL, NULL, NULL, NULL),
(326, 6, 58, 'Naria', 'নড়িয়া', 1, NULL, NULL, NULL, NULL),
(327, 6, 58, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 1, NULL, NULL, NULL, NULL),
(328, 6, 58, 'Zajira', 'জাজিরা', 1, NULL, NULL, NULL, NULL),
(329, 6, 43, 'Araihazar', 'আড়াইহাজার', 1, NULL, NULL, NULL, NULL),
(330, 6, 43, 'Bandar', 'বন্দর', 1, NULL, NULL, NULL, NULL),
(331, 6, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(332, 6, 43, 'Rupganj', 'রূপগঞ্জ', 1, NULL, NULL, NULL, NULL),
(333, 6, 43, 'Sonargaon', 'সোনারগাঁ', 1, NULL, NULL, NULL, NULL),
(334, 6, 63, 'Basail', 'বাসাইল', 1, NULL, NULL, NULL, NULL),
(335, 6, 63, 'Bhuapur', 'ভুয়াপুর', 1, NULL, NULL, NULL, NULL),
(336, 6, 63, 'Delduar', 'দেলদুয়ার', 1, NULL, NULL, NULL, NULL),
(337, 6, 63, 'Dhanbari', 'ধনবাড়ী', 1, NULL, NULL, NULL, NULL),
(338, 6, 63, 'Ghatail', 'ঘাটাইল', 1, NULL, NULL, NULL, NULL),
(339, 6, 63, 'Gopalpur', 'গোপালপুর', 1, NULL, NULL, NULL, NULL),
(340, 6, 63, 'Kalihati', 'কালিহাতী', 1, NULL, NULL, NULL, NULL),
(341, 6, 63, 'Madhupur', 'মধুপুর', 1, NULL, NULL, NULL, NULL),
(342, 6, 63, 'Mirzapur', 'মির্জাপুর', 1, NULL, NULL, NULL, NULL),
(343, 6, 63, 'Nagarpur', 'নাগরপুর', 1, NULL, NULL, NULL, NULL),
(344, 6, 63, 'Sakhipur', 'সখিপুর', 1, NULL, NULL, NULL, NULL),
(345, 6, 63, 'Tangail Sadar', 'টাঙ্গাইল সদর', 1, NULL, 1, NULL, '2023-03-06 01:51:05'),
(346, 6, 29, 'Austagram', 'অষ্টগ্রাম', 1, NULL, NULL, NULL, NULL),
(347, 6, 29, 'Bajitpur', 'বাজিতপুর', 1, NULL, NULL, NULL, NULL),
(348, 6, 29, 'Bhairab', 'ভৈরব', 1, NULL, NULL, NULL, NULL),
(349, 6, 29, 'Hossainpur', 'হোসেনপুর', 1, NULL, NULL, NULL, NULL),
(350, 6, 29, 'Itna', 'ইটনা', 1, NULL, NULL, NULL, NULL),
(351, 6, 29, 'Karimgonj', 'করিমগঞ্জ', 1, NULL, NULL, NULL, NULL),
(352, 6, 29, 'Katiadi', 'কটিয়াদী', 1, NULL, NULL, NULL, NULL),
(353, 6, 29, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(354, 6, 29, 'Kuliarchar', 'কুলিয়ারচর', 1, NULL, NULL, NULL, NULL),
(355, 6, 29, 'Mithamoin', 'মিঠামইন', 1, NULL, NULL, NULL, NULL),
(356, 6, 29, 'Nikli', 'নিকলী', 1, NULL, NULL, NULL, NULL),
(357, 6, 29, 'Pakundia', 'পাকুন্দিয়া', 1, NULL, NULL, NULL, NULL),
(358, 6, 29, 'Tarail', 'তাড়াইল', 1, NULL, NULL, NULL, NULL),
(359, 6, 36, 'Doulatpur', 'দৌলতপুর', 1, NULL, NULL, NULL, NULL),
(360, 6, 36, 'Gior', 'ঘিওর', 1, NULL, NULL, NULL, NULL),
(361, 6, 36, 'Harirampur', 'হরিরামপুর', 1, NULL, NULL, NULL, NULL),
(362, 6, 36, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(363, 6, 36, 'Saturia', 'সাটুরিয়া', 1, NULL, NULL, NULL, NULL),
(364, 6, 36, 'Shibaloy', 'শিবালয়', 1, NULL, NULL, NULL, NULL),
(365, 6, 36, 'Singiar', 'সিংগাইর', 1, NULL, NULL, NULL, NULL),
(366, 6, 14, 'Dhamrai', 'ধামরাই', 1, NULL, NULL, NULL, NULL),
(367, 6, 14, 'Dohar', 'দোহার', 1, NULL, NULL, NULL, NULL),
(368, 6, 14, 'Keraniganj', 'কেরাণীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(369, 6, 14, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(370, 6, 14, 'Savar', 'সাভার', 1, NULL, NULL, NULL, NULL),
(371, 6, 39, 'Gajaria', 'গজারিয়া', 1, NULL, NULL, NULL, NULL),
(372, 6, 39, 'Louhajanj', 'লৌহজং', 1, NULL, NULL, NULL, NULL),
(373, 6, 39, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(374, 6, 39, 'Sirajdikhan', 'সিরাজদিখান', 1, NULL, NULL, NULL, NULL),
(375, 6, 39, 'Sreenagar', 'শ্রীনগর', 1, NULL, NULL, NULL, NULL),
(376, 6, 39, 'Tongibari', 'টংগীবাড়ি', 1, NULL, NULL, NULL, NULL),
(377, 6, 53, 'Baliakandi', 'বালিয়াকান্দি', 1, NULL, NULL, NULL, NULL),
(378, 6, 53, 'Goalanda', 'গোয়ালন্দ', 1, NULL, NULL, NULL, NULL),
(379, 6, 53, 'Kalukhali', 'কালুখালী', 1, NULL, NULL, NULL, NULL),
(380, 6, 53, 'Pangsa', 'পাংশা', 1, NULL, NULL, NULL, NULL),
(381, 6, 53, 'Rajbari Sadar', 'রাজবাড়ী সদর', 1, NULL, NULL, NULL, NULL),
(382, 6, 34, 'Kalkini', 'কালকিনি', 1, NULL, NULL, NULL, NULL),
(383, 6, 34, 'Madaripur Sadar', 'মাদারীপুর সদর', 1, NULL, NULL, NULL, NULL),
(384, 6, 34, 'Rajoir', 'রাজৈর', 1, NULL, NULL, NULL, NULL),
(385, 6, 34, 'Shibchar', 'শিবচর', 1, NULL, NULL, NULL, NULL),
(386, 6, 20, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 1, NULL, NULL, NULL, NULL),
(387, 6, 20, 'Kashiani', 'কাশিয়ানী', 1, NULL, NULL, NULL, NULL),
(388, 6, 20, 'Kotalipara', 'কোটালীপাড়া', 1, NULL, NULL, NULL, NULL),
(389, 6, 20, 'Muksudpur', 'মুকসুদপুর', 1, NULL, NULL, NULL, NULL),
(390, 6, 20, 'Tungipara', 'টুংগীপাড়া', 1, NULL, NULL, NULL, NULL),
(391, 6, 16, 'Alfadanga', 'আলফাডাঙ্গা', 1, NULL, NULL, NULL, NULL),
(392, 6, 16, 'Bhanga', 'ভাঙ্গা', 1, NULL, NULL, NULL, NULL),
(393, 6, 16, 'Boalmari', 'বোয়ালমারী', 1, NULL, NULL, NULL, NULL),
(394, 6, 16, 'Charbhadrasan', 'চরভদ্রাসন', 1, NULL, NULL, NULL, NULL),
(395, 6, 16, 'Faridpur Sadar', 'ফরিদপুর সদর', 1, NULL, NULL, NULL, NULL),
(396, 6, 16, 'Madhukhali', 'মধুখালী', 1, NULL, NULL, NULL, NULL),
(397, 6, 16, 'Nagarkanda', 'নগরকান্দা', 1, NULL, NULL, NULL, NULL),
(398, 6, 16, 'Sadarpur', 'সদরপুর', 1, NULL, NULL, NULL, NULL),
(399, 6, 16, 'Saltha', 'সালথা', 1, NULL, NULL, NULL, NULL),
(400, 7, 50, 'Atwari', 'আটোয়ারী', 1, NULL, NULL, NULL, NULL),
(401, 7, 50, 'Boda', 'বোদা', 1, NULL, NULL, NULL, NULL),
(402, 7, 50, 'Debiganj', 'দেবীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(403, 7, 50, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 1, NULL, NULL, NULL, NULL),
(404, 7, 50, 'Tetulia', 'তেতুলিয়া', 1, NULL, NULL, NULL, NULL),
(405, 7, 15, 'Birampur', 'বিরামপুর', 1, NULL, NULL, NULL, NULL),
(406, 7, 15, 'Birganj', 'বীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(407, 7, 15, 'Birol', 'বিরল', 1, NULL, NULL, NULL, NULL),
(408, 7, 15, 'Bochaganj', 'বোচাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(409, 7, 15, 'Chirirbandar', 'চিরিরবন্দর', 1, NULL, NULL, NULL, NULL),
(410, 7, 15, 'Dinajpur Sadar', 'দিনাজপুর সদর', 1, NULL, 1, NULL, '2023-03-06 01:51:27'),
(411, 7, 15, 'Fulbari', 'ফুলবাড়ী', 1, NULL, NULL, NULL, NULL),
(412, 7, 15, 'Ghoraghat', 'ঘোড়াঘাট', 1, NULL, NULL, NULL, NULL),
(413, 7, 15, 'Hakimpur', 'হাকিমপুর', 1, NULL, NULL, NULL, NULL),
(414, 7, 15, 'Kaharol', 'কাহারোল', 1, NULL, NULL, NULL, NULL),
(415, 7, 15, 'Khansama', 'খানসামা', 1, NULL, NULL, NULL, NULL),
(416, 7, 15, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL, NULL, NULL),
(417, 7, 15, 'Parbatipur', 'পার্বতীপুর', 1, NULL, NULL, NULL, NULL),
(418, 7, 33, 'Aditmari', 'আদিতমারী', 1, NULL, NULL, NULL, NULL),
(419, 7, 33, 'Hatibandha', 'হাতীবান্ধা', 1, NULL, NULL, NULL, NULL),
(420, 7, 33, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(421, 7, 33, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 1, NULL, NULL, NULL, NULL),
(422, 7, 33, 'Patgram', 'পাটগ্রাম', 1, NULL, NULL, NULL, NULL),
(423, 7, 47, 'Dimla', 'ডিমলা', 1, NULL, NULL, NULL, NULL),
(424, 7, 47, 'Domar', 'ডোমার', 1, NULL, NULL, NULL, NULL),
(425, 7, 47, 'Jaldhaka', 'জলঢাকা', 1, NULL, NULL, NULL, NULL),
(426, 7, 47, 'Kishorganj', 'কিশোরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(427, 7, 47, 'Nilphamari Sadar', 'নীলফামারী সদর', 1, NULL, 1, NULL, '2023-03-06 01:51:23'),
(428, 7, 47, 'Syedpur', 'সৈয়দপুর', 1, NULL, NULL, NULL, NULL),
(429, 7, 18, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 1, NULL, NULL, NULL, NULL),
(430, 7, 18, 'Gobindaganj', 'গোবিন্দগঞ্জ', 1, NULL, NULL, NULL, NULL),
(431, 7, 18, 'Palashbari', 'পলাশবাড়ী', 1, NULL, NULL, NULL, NULL),
(432, 7, 18, 'Phulchari', 'ফুলছড়ি', 1, NULL, NULL, NULL, NULL),
(433, 7, 18, 'Sadullapur', 'সাদুল্লাপুর', 1, NULL, NULL, NULL, NULL),
(434, 7, 18, 'Saghata', 'সাঘাটা', 1, NULL, NULL, NULL, NULL),
(435, 7, 18, 'Sundarganj', 'সুন্দরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(436, 7, 64, 'Baliadangi', 'বালিয়াডাঙ্গী', 1, NULL, NULL, NULL, NULL),
(437, 7, 64, 'Haripur', 'হরিপুর', 1, NULL, NULL, NULL, NULL),
(438, 7, 64, 'Pirganj', 'পীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(439, 7, 64, 'Ranisankail', 'রাণীশংকৈল', 1, NULL, NULL, NULL, NULL),
(440, 7, 64, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 1, NULL, NULL, NULL, NULL),
(441, 7, 56, 'Badargonj', 'বদরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(442, 7, 56, 'Gangachara', 'গংগাচড়া', 1, NULL, NULL, NULL, NULL),
(443, 7, 56, 'Kaunia', 'কাউনিয়া', 1, NULL, NULL, NULL, NULL),
(444, 7, 56, 'Mithapukur', 'মিঠাপুকুর', 1, NULL, NULL, NULL, NULL),
(445, 7, 56, 'Pirgacha', 'পীরগাছা', 1, NULL, NULL, NULL, NULL),
(446, 7, 56, 'Pirgonj', 'পীরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(447, 7, 56, 'Rangpur Sadar', 'রংপুর সদর', 1, NULL, NULL, NULL, NULL),
(448, 7, 56, 'Taragonj', 'তারাগঞ্জ', 1, NULL, NULL, NULL, NULL),
(449, 6, 30, 'Bhurungamari', 'ভুরুঙ্গামারী', 1, NULL, NULL, NULL, NULL),
(450, 7, 30, 'Charrajibpur', 'চররাজিবপুর', 1, NULL, NULL, NULL, NULL),
(451, 7, 30, 'Chilmari', 'চিলমারী', 1, NULL, NULL, NULL, NULL),
(452, 7, 30, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 1, NULL, NULL, NULL, NULL),
(453, 7, 30, 'Nageshwari', 'নাগেশ্বরী', 1, NULL, NULL, NULL, NULL),
(454, 7, 30, 'Phulbari', 'ফুলবাড়ী', 1, NULL, NULL, NULL, NULL),
(455, 7, 30, 'Rajarhat', 'রাজারহাট', 1, NULL, NULL, NULL, NULL),
(456, 7, 30, 'Rowmari', 'রৌমারী', 1, NULL, NULL, NULL, NULL),
(457, 7, 30, 'Ulipur', 'উলিপুর', 1, NULL, NULL, NULL, NULL),
(458, 8, 59, 'Jhenaigati', 'ঝিনাইগাতী', 1, NULL, NULL, NULL, NULL),
(459, 8, 59, 'Nalitabari', 'নালিতাবাড়ী', 1, NULL, NULL, NULL, NULL),
(460, 8, 59, 'Nokla', 'নকলা', 1, NULL, NULL, NULL, NULL),
(461, 8, 59, 'Sherpur Sadar', 'শেরপুর সদর', 1, NULL, NULL, NULL, NULL),
(462, 8, 59, 'Sreebordi', 'শ্রীবরদী', 1, NULL, NULL, NULL, NULL),
(463, 8, 40, 'Bhaluka', 'ভালুকা', 1, NULL, NULL, NULL, NULL),
(464, 8, 40, 'Dhobaura', 'ধোবাউড়া', 1, NULL, NULL, NULL, NULL),
(465, 8, 40, 'Fulbaria', 'ফুলবাড়ীয়া', 1, NULL, NULL, NULL, NULL),
(466, 8, 40, 'Gafargaon', 'গফরগাঁও', 1, NULL, NULL, NULL, NULL),
(467, 8, 40, 'Gouripur', 'গৌরীপুর', 1, NULL, NULL, NULL, NULL),
(468, 8, 40, 'Haluaghat', 'হালুয়াঘাট', 1, NULL, NULL, NULL, NULL),
(469, 8, 40, 'Iswarganj', 'ঈশ্বরগঞ্জ', 1, NULL, NULL, NULL, NULL),
(470, 8, 40, 'Muktagacha', 'মুক্তাগাছা', 1, NULL, NULL, NULL, NULL),
(471, 8, 40, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 1, NULL, 1, NULL, '2023-03-06 01:51:13'),
(472, 8, 40, 'Nandail', 'নান্দাইল', 1, NULL, NULL, NULL, NULL),
(473, 8, 40, 'Phulpur', 'ফুলপুর', 1, NULL, NULL, NULL, NULL),
(474, 8, 40, 'Tarakanda', 'তারাকান্দা', 1, NULL, NULL, NULL, NULL),
(475, 8, 40, 'Trishal', 'ত্রিশাল', 1, NULL, NULL, NULL, NULL),
(476, 8, 22, 'Bokshiganj', 'বকশীগঞ্জ', 1, NULL, NULL, NULL, NULL),
(477, 8, 22, 'Dewangonj', 'দেওয়ানগঞ্জ', 1, NULL, NULL, NULL, NULL),
(478, 8, 22, 'Islampur', 'ইসলামপুর', 1, NULL, NULL, NULL, NULL),
(479, 8, 22, 'Jamalpur Sadar', 'জামালপুর সদর', 1, NULL, NULL, NULL, NULL),
(480, 8, 22, 'Madarganj', 'মাদারগঞ্জ', 1, NULL, NULL, NULL, NULL),
(481, 8, 22, 'Melandah', 'মেলান্দহ', 1, NULL, NULL, NULL, NULL),
(482, 8, 22, 'Sarishabari', 'সরিষাবাড়ী', 1, NULL, NULL, NULL, NULL),
(483, 8, 46, 'Atpara', 'আটপাড়া', 1, NULL, NULL, NULL, NULL),
(484, 8, 46, 'Barhatta', 'বারহাট্টা', 1, NULL, NULL, NULL, NULL),
(485, 8, 46, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL, NULL, NULL),
(486, 8, 46, 'Kalmakanda', 'কলমাকান্দা', 1, NULL, NULL, NULL, NULL),
(487, 8, 46, 'Kendua', 'কেন্দুয়া', 1, NULL, NULL, NULL, NULL),
(488, 8, 46, 'Khaliajuri', 'খালিয়াজুরী', 1, NULL, NULL, NULL, NULL),
(489, 8, 46, 'Madan', 'মদন', 1, NULL, NULL, NULL, NULL),
(490, 8, 46, 'Mohongonj', 'মোহনগঞ্জ', 1, NULL, NULL, NULL, NULL),
(491, 8, 46, 'Netrokona Sadar', 'নেত্রকোণা সদর', 1, NULL, NULL, NULL, NULL),
(492, 8, 46, 'Purbadhala', 'পূর্বধলা', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nafiur Rahman', 'nafiur@outlook.com', 'nafiur', NULL, '$2y$10$TgoQc18r.WmyCHcjUw7TTeLk/dmet0WbC9ZnIAsdvA.DdDkVMFhcS', '202302011156IMG_20220923_153727_889.jpg', NULL, NULL, NULL),
(2, 'Donna Anthony', 'hrmtmss@gmail.com', 'kecije', NULL, '$2y$10$W9GeUPwwmI1T1cHStxTF1e8Dy5ajtZvBOtgBH1E.lZxsNhFwikeYC', NULL, NULL, '2023-02-16 02:22:39', '2023-02-16 02:22:39'),
(3, 'Sharon Wall', 'qyjujonuce@mailinator.com', 'petani', NULL, '$2y$10$.JvfBs5TZ6wBtHfVQKysm.BxWzLbtdtMR4dVUnjP9T/Shon/iWsf6', NULL, NULL, '2023-02-16 02:23:30', '2023-02-16 02:23:30'),
(4, 'Illiana Acostaww', 'baxifuqaw@mailinator.com', 'vucyrunuhy2', NULL, '$2y$10$2TDUbHkK9pTAtgcW25saAOt.UOn4ICMa6quDfpr2LOZApkPWySBUu', '202302181753IMG_20211223_173406_718.jpg', NULL, '2023-02-18 11:20:55', '2023-02-18 11:53:17'),
(5, 'Sajib Rahman', 'sajib@gmail.com', 'sajib', NULL, '$2y$10$V67yvElJ3K8pionsCt8m0O0qhcfkcOmFIJlSbjresNdmHIqv48sIO', '202302190453262418429_5081051551924525_8298862277810444994_n.jpg', NULL, '2023-02-18 22:50:21', '2023-02-18 22:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint UNSIGNED NOT NULL,
  `year_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1950', NULL, NULL, NULL, NULL),
(2, '1951', NULL, NULL, NULL, NULL),
(3, '1952', NULL, NULL, NULL, NULL),
(4, '1953', NULL, NULL, NULL, NULL),
(5, '1954', NULL, NULL, NULL, NULL),
(6, '1955', NULL, NULL, NULL, NULL),
(7, '1956', NULL, NULL, NULL, NULL),
(8, '1957', NULL, NULL, NULL, NULL),
(9, '1958', NULL, NULL, NULL, NULL),
(10, '1959', NULL, NULL, NULL, NULL),
(11, '1960', NULL, NULL, NULL, NULL),
(12, '1961', NULL, NULL, NULL, NULL),
(13, '1962', NULL, NULL, NULL, NULL),
(14, '1963', NULL, NULL, NULL, NULL),
(15, '1964', NULL, NULL, NULL, NULL),
(16, '1965', NULL, NULL, NULL, NULL),
(17, '1966', NULL, NULL, NULL, NULL),
(18, '1967', NULL, NULL, NULL, NULL),
(19, '1968', NULL, NULL, NULL, NULL),
(20, '1969', NULL, NULL, NULL, NULL),
(21, '1970', NULL, NULL, NULL, NULL),
(22, '1971', NULL, NULL, NULL, NULL),
(23, '1972', NULL, NULL, NULL, NULL),
(24, '1973', NULL, NULL, NULL, NULL),
(25, '1974', NULL, NULL, NULL, NULL),
(26, '1975', NULL, NULL, NULL, NULL),
(27, '1976', NULL, NULL, NULL, NULL),
(28, '1977', NULL, NULL, NULL, NULL),
(29, '1978', NULL, NULL, NULL, NULL),
(30, '1979', NULL, NULL, NULL, NULL),
(31, '1980', NULL, NULL, NULL, NULL),
(32, '1981', NULL, NULL, NULL, NULL),
(33, '1982', NULL, NULL, NULL, NULL),
(34, '1983', NULL, NULL, NULL, NULL),
(35, '1984', NULL, NULL, NULL, NULL),
(36, '1985', NULL, NULL, NULL, NULL),
(37, '1986', NULL, NULL, NULL, NULL),
(38, '1987', NULL, NULL, NULL, NULL),
(39, '1988', NULL, NULL, NULL, NULL),
(40, '1989', NULL, NULL, NULL, NULL),
(41, '1990', NULL, NULL, NULL, NULL),
(42, '1991', NULL, NULL, NULL, NULL),
(43, '1992', NULL, NULL, NULL, NULL),
(44, '1993', NULL, NULL, NULL, NULL),
(45, '1994', NULL, NULL, NULL, NULL),
(46, '1995', NULL, NULL, NULL, NULL),
(47, '1996', NULL, NULL, NULL, NULL),
(48, '1997', NULL, NULL, NULL, NULL),
(49, '1998', NULL, NULL, NULL, NULL),
(50, '1999', NULL, NULL, NULL, NULL),
(51, '2000', NULL, NULL, NULL, NULL),
(52, '2001', NULL, NULL, NULL, NULL),
(53, '2002', NULL, NULL, NULL, NULL),
(54, '2003', NULL, NULL, NULL, NULL),
(55, '2004', NULL, NULL, NULL, NULL),
(56, '2005', NULL, NULL, NULL, NULL),
(57, '2006', NULL, NULL, NULL, NULL),
(58, '2007', NULL, NULL, NULL, NULL),
(59, '2008', NULL, NULL, NULL, NULL),
(60, '2009', NULL, NULL, NULL, NULL),
(61, '2010', NULL, NULL, NULL, NULL),
(62, '2011', NULL, NULL, NULL, NULL),
(63, '2012', NULL, NULL, NULL, NULL),
(64, '2013', NULL, NULL, NULL, NULL),
(65, '2014', NULL, NULL, NULL, NULL),
(66, '2015', NULL, NULL, NULL, NULL),
(67, '2016', NULL, NULL, NULL, NULL),
(68, '2017', NULL, NULL, NULL, NULL),
(69, '2018', NULL, NULL, NULL, NULL),
(70, '2019', NULL, NULL, NULL, NULL),
(71, '2020', NULL, NULL, NULL, NULL),
(72, '2021', NULL, NULL, NULL, NULL),
(73, '2022', NULL, NULL, NULL, NULL),
(74, '2023', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint UNSIGNED NOT NULL,
  `domain_id` int NOT NULL,
  `sector_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `basic_infos`
--
ALTER TABLE `basic_infos`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board_universities`
--
ALTER TABLE `board_universities`
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
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
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
-- Indexes for table `durations`
--
ALTER TABLE `durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_grade_classes`
--
ALTER TABLE `education_grade_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_groups`
--
ALTER TABLE `education_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_subjects`
--
ALTER TABLE `education_subjects`
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
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `family_brother_sisters`
--
ALTER TABLE `family_brother_sisters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_children`
--
ALTER TABLE `family_children`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_spouces`
--
ALTER TABLE `family_spouces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

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
-- Indexes for table `nominees`
--
ALTER TABLE `nominees`
  ADD PRIMARY KEY (`id`) USING BTREE;

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
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relation_types`
--
ALTER TABLE `relation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
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
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
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
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `board_universities`
--
ALTER TABLE `board_universities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `durations`
--
ALTER TABLE `durations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `education_grade_classes`
--
ALTER TABLE `education_grade_classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `education_groups`
--
ALTER TABLE `education_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `education_subjects`
--
ALTER TABLE `education_subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `efiles`
--
ALTER TABLE `efiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_types`
--
ALTER TABLE `employee_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_brother_sisters`
--
ALTER TABLE `family_brother_sisters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `family_children`
--
ALTER TABLE `family_children`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `family_spouces`
--
ALTER TABLE `family_spouces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_statuses`
--
ALTER TABLE `job_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `nominees`
--
ALTER TABLE `nominees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relation_types`
--
ALTER TABLE `relation_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setups`
--
ALTER TABLE `setups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upazillas`
--
ALTER TABLE `upazillas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
