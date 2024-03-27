-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 01:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_qualification`
--

CREATE TABLE `tbl_academic_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  `transcript` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '1123', 'You have been registered successfully', 'success'),
(2, '4568', 'Unknown error occurred while performing your request', 'danger'),
(3, '0927', 'Email address is already registered', 'warning'),
(4, '0346', 'Invalid email or password', 'danger'),
(5, '9837', 'Your profile have been updated successfully', 'success'),
(6, '9564', 'Password updated successfully', 'success'),
(9, '2305', 'Professional qualification was added successfully', 'success'),
(11, '0521', 'Qualification was deleted successfully', 'success'),
(13, '9367', 'language have been added', 'success'),
(14, '0591', 'Language was deleted successfully', 'success'),
(15, '8763', 'Language have been updated', 'success'),
(16, '6734', 'Professional qualification was updated', 'success'),
(17, '9843', 'Your job advertise have been posted successfully', 'success'),
(18, '1964', 'Training / Workshop have been added successfully', 'success'),
(20, '9210', 'working experience have been added', 'success'),
(22, '9215', 'working experience updated successfully', 'success'),
(24, '0593', 'working experience was deleted', 'success'),
(26, '9522', 'Training / workshop record have been deleted', 'success'),
(28, '2303', 'Academic qualification have been added successfully', 'success'),
(30, '1521', 'Academic qualification was deleted', 'success'),
(32, '3214', 'Academic qualification have been updated', 'success'),
(34, '2380', 'Referee was added successfully', 'success'),
(36, '7642', 'Referee information have been updated', 'success'),
(38, '0173', 'Job Ad have been deleted', 'success'),
(40, '0369', 'Job Ad has been updated successfully', 'success'),
(42, '2974', 'An error occurred while sending your message', 'danger'),
(43, '5634', 'Your message was sent successfully', 'success'),
(44, '3091', 'You have successfully changed your password', 'success'),
(45, '3591', 'An error occurred while updating your password', 'danger'),
(46, '2290', 'Your certificate size must be less or equal to <strong>1MB</strong>', 'warning'),
(47, '2490', 'Your transcript size must be less or equal to <strong>1MB</strong>', 'warning'),
(48, '5790', 'Training information was updated', 'success'),
(50, '3478', 'Your image size must be less or equal to <strong>1MB</strong>', 'warning'),
(51, '6789', 'Attachment was added successfully', 'success'),
(53, '6784', 'Attachment was deleted successfully', 'success'),
(55, '7764', 'Attachment was updated successfully', 'success'),
(57, '9517', 'Referee have been deleted', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Accounting'),
(2, 'Auditing'),
(3, 'Banking and Financial Services'),
(4, 'CEO and General Management'),
(5, 'Community and Social Devt'),
(6, 'Creative and Design'),
(7, 'Education and Training'),
(8, 'Engineering and Construction'),
(9, 'Farming and Agribusiness'),
(10, 'Healthcare and Pharmaceutical'),
(11, 'HR & Administration'),
(12, 'IT and Telecoms'),
(13, 'Legal'),
(14, 'Manufacturing'),
(15, 'Marketing,Media and Brand'),
(16, 'Mining and Natural Resources'),
(17, 'Project & Programme Mngmnt'),
(18, 'Research,Science and Biotech'),
(19, 'Security'),
(20, 'Strategy and Consulting'),
(21, 'Tourism and Travel'),
(22, 'Trades and Services'),
(23, 'Transport and Logistics'),
(24, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `supervisor_phone` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_experience`
--

INSERT INTO `tbl_experience` (`id`, `member_no`, `title`, `institution`, `supervisor`, `supervisor_phone`, `start_date`, `end_date`, `duties`) VALUES
(1, 'EM888888888', 'Junior Developer', 'ZOHOO', 'Santhosh Kumar', '8520369741', '2022', '2023', ' Software Development');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `closing_date` varchar(255) NOT NULL,
  `enc_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `title`, `city`, `country`, `category`, `type`, `experience`, `description`, `responsibility`, `requirements`, `company`, `date_posted`, `closing_date`, `enc_id`) VALUES
('8888888888', 'Junior Software Developer', 'Vaniyambadi', 'India', 'IT and Telecoms', 'Full-time', '2 Years', 'At Magna, we create technology that disrupts the industry and solves big problems for consumers, our customers, and the world around us. We’re the only mobility technology company and supplier with complete expertise across the entire vehicle.\r\n\r\nWe are committed to quality and continuous improvement because our products impact millions of people every day. But we’re more than what we make. We are a group of entrepreneurial-minded people whose collective expertise gives us a competitive advantage. World Class Manufacturing is a journey and it’s our talented people who lead us on this journey.<br>', 'Magna is looking for a talented, self-motivated full stack junior software developer to join our rapidly growing company and contribute to future digitization initiatives. Job responsibilities will include working as independently and with a team on developing, upgrading, maintaining new and existing applications, which will leverage generative AI, machine...<br>', 'B.E(CSE), B.Tech, BCA, MCA, MSC', 'CM577777777', 'March 19, 2024', '30/05/2024', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_applications`
--

CREATE TABLE `tbl_job_applications` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_job_applications`
--

INSERT INTO `tbl_job_applications` (`id`, `member_no`, `job_id`, `application_date`) VALUES
(1, 'EM888888888', '8888888888', '03/19/2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `speak` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `writing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `member_no`, `language`, `speak`, `reading`, `writing`) VALUES
(1, 'EM888888888', 'English', 'Fair', 'Fair', 'Fair'),
(2, 'EM888888888', 'Tamil', 'Fair', 'Fair', 'Fair');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_attachments`
--

CREATE TABLE `tbl_other_attachments` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `attachment` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professional_qualification`
--

CREATE TABLE `tbl_professional_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_professional_qualification`
--

INSERT INTO `tbl_professional_qualification` (`id`, `member_no`, `country`, `institution`, `title`, `timeframe`, `certificate`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referees`
--

CREATE TABLE `tbl_referees` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_mail` varchar(255) NOT NULL,
  `ref_title` varchar(255) NOT NULL,
  `ref_phone` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_referees`
--

INSERT INTO `tbl_referees` (`id`, `member_no`, `ref_name`, `ref_mail`, `ref_title`, `ref_phone`, `institution`) VALUES
(1, 'EM888888888', 'Dr.Harish.Ph.d', 'harish@gmail.com', 'Professor', '7894561230', 'SRM UNIVERSITY');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tokens`
--

CREATE TABLE `tbl_tokens` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_training`
--

INSERT INTO `tbl_training` (`id`, `member_no`, `training`, `institution`, `timeframe`, `certificate`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `bdate` varchar(255) NOT NULL DEFAULT '-',
  `bmonth` varchar(255) NOT NULL DEFAULT '-',
  `byear` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL DEFAULT '-',
  `title` varchar(255) NOT NULL DEFAULT 'Your professional',
  `city` varchar(255) NOT NULL DEFAULT '-',
  `street` varchar(255) NOT NULL DEFAULT '-',
  `zip` varchar(255) NOT NULL DEFAULT '-',
  `country` varchar(255) NOT NULL DEFAULT '-',
  `phone` varchar(255) NOT NULL DEFAULT '-',
  `about` longtext DEFAULT NULL,
  `avatar` longblob DEFAULT NULL,
  `services` longtext DEFAULT NULL,
  `expertise` longtext DEFAULT NULL,
  `people` varchar(255) NOT NULL DEFAULT '-',
  `last_login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `video_cv` varchar(1100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`, `video_cv`) VALUES
('SIIT Technoogies', '', '-', '-', '-', '2017', 'siit@gmail.com', '-', 'Software Development', 'Vaniyambadi', 'Vaniyambadi', '635751', 'India', '9159900094', 'We are Running Our Company from 2017 at Vaniyambadi,Thirupathur Dt and now we opened our new Branch in Vellore', 0xffd8ffe000104a46494600010102001c001c0000ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc20011080118011803012200021101031101ffc4001c0001000301010101010000000000000000000405060307020108ffc400190101000301010000000000000000000000000102030405ffda000c03010002100310000001f5400000000000000000000000000000000000000000000000000000000000000001cabad5b6507e5aba0525856658adc000000000000000001ca9ab74ca6d649b8be79acc7a057ed861ff0074503a70ace77d649a7bca08b96bea53fc6749cfd1e84e3db9ba01200000000000f83f3cc6251f6f0db6da96d269a8ed5361c7db5f9ad7546b9632bac61f671c0b9a6d84cfde7beaa96b5aab7a04dc7aaf8e4aceded8abb4e0ee0890000000007976bbc7fa39beeee4f5ece18b771fea1ae8f1b23cfd37149f1f9a65a8a687a38b67edafb077ad2717e2fae836f9cbc47e16ff0090faf63f0adf65a6fc70f6800000002966be75c205efa5e54debf3944e97a42a8969a1e7b4b59991e5634d5d9e57d233be3fea9aab6cf635b6fd39fa2be2e7ac3ab9ae3eb3128d27d524fcb4df5863765c5dc19ea000000c0efbc836c292ff0029a7edf3acea6e6826dbaebe696159d2c19999adb4991b9a6d29a9a69d8ccf4f40ca68f39ae5b2894795e6e9f51fdcce92196d76464ef8dcc1a1b099d0fa179def39ba240e5eb00000078ffb07947472e3fa74ebbf35c6ba873a9d0febeccd6833dabdb3a881afc6d67418fd87dd2f1e9aff003dae5332de9f8ce6e8afda56cad295d779ed7e94c7469bca2da0df79efa0e3b5a8e2ed00000078cfb37976dcf89b6a599d1c9baa79d269a52f1babc4d740d779de5ae828bf6c35ce16b23fc433dcf4bc2f4fb8ca8ace873b06c56f8d455e9ab68155b8f9cb5c6eeb3faeb47e8c770000006475dc6d4fe7c95b985d5c516d686ef9fa68ee2b3a56d69defb0516b5a1b6cac4ec23f29e8e92e2596b963ee2b2d72d5d3bc729ef335b1970d8e0f62536d296eaf019e8000000079fe33db7c7fab8ecee715fb33657b9abaade676baafcaf5b03653aac741df41964eef956cc55dd57c598b9ed95e568b0b6ccc1bc696db1fea48b9fa397a8000000001027a6309134fe4fd7c9bce9e7bf169f5bce5771a5a65ce66d34cecbf61d54c4aa0b3b299c174b7ad974edc639bacae96e211f7270f5052e00000000002aed131e3dd3d6f31d5cf8ab585a298c468b3fdf4ae932f3eb0933693917f1a92dacaee7bad9e57a3d39c9b856c000000000000000acb34d72f45e8ad29e7767b15a31307d11139ad0756770ad8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003ffc4002c100002020201030205050101010000000002030104000511121314153006212335402224333436701026ffda0008010100010502ff009e9b01705b1a839ead5b3d5ab60ed2a4e2eca19f96c602c5db38c8758b277930186874e78c79e31e769985dd1ca77ba213b9219ad6d367f1dfb01eb654634829f189542f1dc72786f5629bc9f9ab83258301b4b8c9adcc1031534770612968383f09862b0da6e0ac153029caac98202eac98f93a24719cf2f5086516f43edfd42d49b7a6d14ad1e58c2dd6ff004f247142fb2bb68dc5db0fc032801dc6ccae35218a8158a263941f549ce11c74b950d1bbd4213da16409939a3da48ec788517ee5c88251acbb8c8fa752c928a85b1b6af7fe24d9f59a1132298984c8f2c514aa29b3917db18c3b47da1b46a6a2daed0dbd748b2aabaad6c4e20497d19cc0950fa956c531c69111c9719afb6752c21a2f57bbbcbbe1d4581114aa7c4ae5ca560a1371a632b1c45473fe66de9a5e3f915e85429c5d8ec1002593b55941cc942c3e6ca49ecd70b9f52d94c2de9eec48c90695f286fbbb777996a88f10944da93752a99eab817691cc6dc7a76c0becd82af440368a0c0d92badb53b9b3f52524cf7027893afb11d7a535f5deaabe9f36ae7a9273d515c55b55ecd891092a0eefd6f6f70ff1e8558e583c2f2db26aeb40648bd26df0e531259b2fb6ec6abad64fca6ad37bb39fdd5ba6f5647ce7514dd5dbb057675319629beb800c99d8aaead9a8fb884fd7d41f6ed7b7f13ba304be7527aebef2398d73c6b5b15c349ab9729bada6acb8fac41a97776f37f952f9afa33da30a1cd276917fc9b4bbd8b8abe8b28f4fa62bdc385fafa5fdcd9be935d57d392da870d219959fb7f119f5ecb2b4824156116c2d556d63c4ddb09c55a56c06dabc56e86c93364dfe53f9fc3cb631390d276817fc9f12fdce33577e565b6e8f4da5fdcdb27ab631ce51380691c10d73ee57f6b6aaebb9111390dfd08d4b1ca4059006d8a10c2a2a72f36dd5675df0fc71b66ff21ff9fe391adfe757fc9f12fdcf130246f9e7454bfb9b1205da69474817d6498458d5fce87b5b2708b9a002dec0f3b48fda47e99f3d36017729d5ff00cb089f48fdaea88a792a96d1153c157ad5bb68f1467828f136ecb14a539a3acb758bb714daa83edba66bec5721d78c0e329244c755fd0f6b7c303b203e30522c46c90d75756bacb0dbafb4b91a760a68ea7a67796391da21afcf06d6052b5d7d3ffd03295a967836b34b5dc973fb7cea920ab3e0dacf06d6696b317166974c9d6c5f546501e9a5ed7c50be9b7893e89aecb3e3b0df0b51595656b6e32b46d11bd12520db29c5b2f77b9b3d52b30986d99c373e73aed8c59613f3e49632d5b5e20ee96218de787144d78e2e322022388f6be25afdda443312b1829da91955a3d55d1441ada9b3b2ce68f7d3b5d4358cdae8dac6d2d5de7cebec59657d0479546f30d8bdf9cf6904cbc8a1b3eaae74a1abdaeb9ac6ecaa2ec5d76e1cda3aba0bbd4f62f9e57543bbb0f6dcb86aa555990dd44ce5949a74b113d7a3f21556cc89586bc0ee5555c6edfe1ce7d3b8eceab65fe4f6ff0071b9feab63f6bbdfe4b6ff0072ab66d7aee978f57a036bbb620360bd6b9e9b15a0b8d68471ee7c4954865575ab2731bb2d675aa029a367591b3a536235f46dc5ed6d36d6d8ea28baad4f4b74fc3ecd793f4aba57996afd6bcdd8574dbb34a759b0346d2b15c9a352d8ded7d36a3609abb2acdd956f268aa1c17c1adb6c18811f71cb16aaceadaab315583908673e3b32ba5b19f53c65b6d60791cfcf248630aea466c6dc1267bce727747393b974e1ecdc53e53272099202d39c475b17abab2857bd6d12c8b3b090846d20e3d4d59ea795ad1342dec8871178e4c5d331ddc627beb2d73a22dd32544c4e0e718a0eb385f0abb5a119a2a25d1f81b4d70dc0b696248386418e68db22ed820fc9ae866244827989c36c812efb3adce920243db1c74e4ccc60b4e26a98e55a1e433f0afd155d5d9d73a91b47a8698fd4dd473152dcf2062665f2063bf52457184ce8c3d874e36cc34182c30a48635d43590bfc528828b3a902c7d23537b7e4502a7f522974e4cb606f27a535c7a124c9c575319e244e53d31c857aeaae1f90745332dd61ce33557a25756f2f212de98a96a447e1e222ada6ac985ac163ff005fffc400281100020103030303050100000000000000010200031131121321041020223032414250515261ffda0008010301013f01fc59603266ea7ee075383ef1a9fccb16cca83bab918895ff00a99f6ab56bf0253680f11d75621e332fc5a01d91ca40430b8f62b3fdb19af03467b289b93701e1a14b41de93e936f363a45e3313984edf0330bd45e4c572e0de547653c6253bb0f546ab501b41ab46a3376a4dda998ac592e6526d4be55cfa6388f7bee08b557eb1adf66255f80990255f908731828436944fa0de5f8b09d31c8f2eab02711aa8436b4269b4a3f595ed6020f50169558168cc331880a651e574cb4e9fe5e5d462f08be21a0ac6e4c1d229facd8551a418dd3ab1b9316904c187a74fdc34b0019b01858994fa65537bc6a329a80de4eba96d341238809d227ddded187225bb1ed4c717f3aa9a5ae20a86d69b9fe42d354bcd626e086acdd97350dbd822fc462c86c66a309369cf7b4b4b5f8111348f64807830d2231179e3c3102168aa171ee150733684d9ff0066d08100c7e7bfffc40029110002020103030304030100000000000001020011031221310413201030413250516122425271ffda0008010201013f01fb58527813b4ff0088518723de09fea6a0bc4c67f336f438c1e63f4ffe7dbc58ab73322c23788d5cc5372b787d32630fff0061054d1f630a7f68a2a11152d8cedcd057758b92fc3363d42fcd46a351408abdcdcf1063c4db08f8d508d3312238fdccb4a6962e1c6c2e1d3af489dac6399dac7750a857a132ae96f2c2378a66322bb661c0df062837fcf998beb33e4cc3f49837511757706a9985b88177b9d48e0f974ff3378984e45bb80655e266f8982c92d09d24dcc208537101e0c02d854cbb36a973a8fa7cb07244ba8b9d945010f58e3e20cecc75344ea1945011b297e441d4bfe20cc6cb113be54d8132752cc288899ee646257c91b4b5cd601a3081667c7adc53b197e9504c877af3c6c18519da53bdcecfee689a6699db69d930603074ff00b8546217ec035bc408fc4edac0a3554a1e83d4b051663b9737ec8246e22660798fb10de2d99563396367dc048e20ccd3be7f13bed0b96e7efdffc4004210000103020305020a070704030000000001000203111204213113224151613271051014233040527281913334426282a1c14353707392b1d1243583f0a2b2c2ffda0008010100063f02fe1ed5ee6b7bcafa607bb359179fc2bf69fd2be929ded2bcdcac77c7d6ee91c1ade65798657ef3b20a8647d3933742a42c6d7da3995db2bb6ef9aedbbe6b27b96f5a7e0a97cb19e14351f25495a241cd9915e69f9fb3c7d5f67872d278bcf647f9579936a7daff00ba2decd55699ae48e79a0d6d5cdd7356482cebc1662a179b269cb55aa19f72b311578ffc820f89c1cdf532e79a3471462c3e51ff0075756a5007559f8fb44146b9929f9f444dd470e14547f638553dedcd026a73d16f45f9adee1987710b2750f1e4555b9386ade5ea25ce3468d4ad9c66d847e6865c6992a9d5171f1ef68ab0e7d112f6e616ed2f145683992aa75458457aa3bd91578154d66aeef573fe91993826c919a10aa3278ed37d43c9a13ba3b45179d0216eba95a9547d2aaa57353679214350bcf64ee7c5199a6e69e2137eef141b5a649a5dbcd7e9429d911c153e0ae88d1c1024699129a0009a47c3a8e49b233b27d31b7e91f905cdee4e6f1a26d35d0d55c755591c7a27b9b5234cd1e28dd4b9e720a3731c6ee415ce7dbd07144134e7545d0d2ee4af352ed3b95aead2b5080c893cd1bbbeab7b952a9a1a2ae7b95cd6d0eab3d468844f3e6e4d0f5f4ce703ba326f722f2ade1c55ac66ddfcce8beab0d1565c286b8694d15be4adb795561f111b046641980a06792b242e65d52b730718ee285306c19f341af15c3eb4443306c1434c8adfc2b4f795344ec2b19465d50a4c4cb876c8ebed01fc953c8d94e555fedd0a1fe8a3cb454f23653bd3623838c5e755247a00683a26b8f6b4777fa491dc4ee85bc9deca8a26e524b9b88e4835a2a4f00ab60eeb95b2b0b4f5f1607dd5877c0db9bb31c550a6c91b2acaeb5f13e4919465dad7c52ba765ad2ca27b6b517023c41d332d072d506b75390436ccb6ba287bd622ee1214f88e8f170eff0049147f88a251cabdeb0afe165136478ddd16d219c48351bcb678c8cf47373a2df9640a18584b9910d4a16dc230da06d724fef2af6fef16e33e3c9173abf49c537bd6cf33956954ec3e2de5a6b505a84bb590b147232b697f150fbe16c71323d8f8cf0084d1cd212ce8a770e2f27e6a197d877e5e91c3d914f136a779c1791cceb4fecdfd55256fc781f16e4aeee39ad94fe6e6fb2e1c51da37309ada00da1e09fde57fcab71d445cfd76944def47dc1e20c7e6d3910545b2ec5ea1f7c2c53f9103f254f82315333c5399cc151bfda683e8f1123ab4b8e6b5a2a3aa4704c99f3471df980e423f28c3ceda761fc51662b072c1271b539f819afa6ac76be2c24df6eb61ea9a33ada6a9fde50fe6afbd5d13bf9a9bde8fb83c5bc48587d7b675f8a87df0b15b4cee769f05bac21a98eea995e2143eed3d1cac7f676c6aaac358937ce0b48d5603f97fe102dc8841b8fc3ed48d1c354e383c3b848452ae3e2c343f69cebfb943e64ba62dadf544f32861a784c80babaaf26a1d8d2ea553b0b04263177340a903a02d96dedd5769ae1cd3b6c2b6b6ec8a6c1044636b5d54c79ced3558891b016cad15af35bdb806815734d91fa850f77a39ebaea15350bcdbb306ab07b2617d199daad31b99d5cb385c7ab73594127c9093154cbec0479f0e8b0ce8a373c6c86617d5e4f926f98935e483bee7e89f481fa9e0beaf27c94a658dcd16714e63b76bcd3ec73092c390d57d5e4f92fabc9f25389e3730380d51e4b3d13ad69b68a01f707a3649c1cdf171cf920d806229c1d441923f100e95a6abcdf9553a841a75ea11ad9f055922c450f1b54710763180e4d0acae2c9eab7a5907457b89aeb55734ca5a9b49651f15573f105bd559e71e3932886e62229781d0aab9f8e0399599c653a856970bb93953cd7e6b7e88c310a17ee7cd507a30f1ab0acc2169de4fc5e1f19332c0c698864a50fc64b2cd261f6803bece4a29e6f096223bdc406e6745876615c6238b90d5fc69a293018899d3c765e1cee0bc24d91ee7358fdd04e99ac5ba491ce731eeb4935a6eaf083649642fd95ec717661418a6b899dcc0c0e39d3aac1c73e25d888b15da6b960206c8ed9ecf36d723aa931368be18c90a1f091c63dfb476719d161a0c11d8bb16fa970e039293018a94e218d6ed18e7f02bc22d91ee735b336d04e9bcb18e38e9e26c725b404950eca476d5d48f6a7551c6f964c4e19eda979fb2554267dcdf3e91f1bb470a2d9cde6e66ee9e55574643c7dd58c1257b4c4d3c3c87ff009504aec6471612f358dc35e6bc0e63ec191d4fea5e4cd9ad980b8b69c3bd7847c8676c243f7aa35cd636badeeaff004ac34c3f682485cb07f87f55e06ffbc9607dcff2b1a386cd613de1faaf037c3f452e1710e6165a5c2838705e14afef07fecb1cfc362d98660977aee3aa92395cdf27764d7d69bdd13bc1b8b359182b13f9846ec9bd54937ef0eefbbe95b898bb9ca977c54f05cdda55a5b73a95430e6ddbec2cbaecab4d132011e0dd1835df702a07605f10960755a382931d8db36a5b606b163a69400c99dbb9f558a8e6003a4712dcfa2184706f9435f78177551609c43656341e955879fc2263b30dd90cd5cb0d8cc23197323d1c78ac445e116c6c73f7459c947839e4846123756eae6b0efc1b8367c39ddbf8a7e371b6999c2c0d67058e965b4325787377baac46c198673257ddbee0541197c3162d86fa7d9aaf2ef08c90ed5adb58c8cd6a9b0826afed1e41003203d2ba378ab5d927b1b9d3f30b36ad101a214cba2cbb4166d2aaef951676aae5f2598a77a20357642ca9f25aaed3be6b329c782a9179d51735ac6b4157c9f4afd7a74f4e1d19b666764fe88df463c645a47144c8d60ef6ad58dfc2a82caa7e5a0e0880e3fd912f392c8d56ab56f7f25da8de3d9a2b8474e8aaa9e2b5b52ac6d28851e6a78264d3e83b0dfd7d46addd946855b20b5c3509a24d468572eee2830b8da724403f02b7f2ee46a41f110dad7f24d69cf3a538a70015766401cd51c28b2f9a6dae20744ee14ccd4a134eda463b2d3c7afa9db20cf83b92a38563e0f0836dab472d42b98fabbba954d95a3b42a831e72540412894438d1576b5a744d0d20139d4e6a8d68239954b59f109c6b56b3aab58d24f45b4c451d26b4e1eab470a855c39b4fb274574ad730f3e1f345aedeb78ab556292c72b6575cdf680408cf3d51a76ddfd91a941ac04941ad0e9253c1a74549fcdb4ea0664ab616068f59ab418ddce336adc9ebefb564f8dea9e4ed3dc42fa9babdeda2a0818dea5cab2cc07766b3b9fde55236868e83f8c1fffc4002910010002020102050403010100000000000100112131415161718191a1b130c1d1f01040e1f170ffda0008010100013f21ff00cf6a0cea44def86bf08dbe80e75bdd9c8df69f69bd6e81bfedb304e4a9a4e7fe71b6661ce1f7b73175cc2e7c59b43f0c4b5cc544558e979ce0cceb496ce9b2cff753f60ac543b03cd60797f5d1c034feaf09d9895c781a865765d58624c9356ec00d82e9531b4a71d0eb0b000a47b42d7abae51562796f0e4ca6fc35519327ba9f266311dbfa5c5e0393fa6034b6ae25d36b5fbbf1142d9fa492548d025b395e263e47bcd5fdde7fd9d210a17be988843905f061314261b438702e274774152ae0bc30215ba507feb1b62701f749dc2ef7fe3fa23f8b69c44ca5e0f94b07a78c8abc013a60887420eae53cd4b668f7c595ae79ca71b7986d10486085b3083d034733460c4137872557da55b24f28c168a3a98a8db7595c33e0db3fc98ff81d07f1fd044cf7072cb13aaf3cc33374b3a5c0b1cef58d503cdc2e702e59065d221166141d6263e170c641a0d3c99eb3cb71b9534c66529f38e4bb977e205202bda3b4a9740749360516edb25ab08bcb962fbe34dc7ed459cc5b3cdea23d3637e1dbeb675e93c7560f6ae6bef2b1d7d4cedaa8c1b23863c2c56c28d22ed40148189ca1d82f001d6280e8ae0b3bf1388a6bb579847e2f03895c4ae4bf10bbb6d14d41010f288103a84105960bb625e0499b0f37b9959014668cc154ad78fa9eb15f7cbacb757977fbfacd900abb399ce8fb4127bd7689af3c2987695d74f5528149e46f481a8fc8fc47b91f06510e56fb80a0af63ed2b2934b3abca28cb195e6b5e10b9aeb51af280206ef2fda5c4086f13552984dc0613b2bae0af49fb27e26659c565a3d205476dff001017e97d18f08b5b7d0dc70fbe937f52be68fcc7fcb8988ee10b76113403f1089cdd406e7d8b2e765ce3f8cbc67c432ae2b01029b0698755dc4e1cca566fd668e5c40806d6a6c210b1e672e68ed705a06dc4b12aa3473026b7a3bcf588867bb7c311dea6785c7f8b65bf6f8fa845dc021ec7de579e268942c8354a383bfa92fb42d56cbe631cc4182305d5f747e31ba76aff00711c560a32c502749f827e8bac2dbee4bde7e6d0c7a685ed573d8fe61db6e20503c637f440e3a4ac2d3667ed357a2529c593f4bd662e7557dd84d94f53bfb437aab618b8a6fc587e7ea38d900fa4b6eaf1d6333372888c36da7b22270707e4828d8a3d489187d4a7bca543e349460229a3996455e88fd1758692186ccf211481230f29ec7f314954dcf0db20c279cb1ef3f4bd6587a13359a4ba8730ff00e55ddd40267eca7fd880fa780aa80e29a84264e231a670257d35ee6a69532cb576619f0d5b88b999bc230b1c5892abb553397e9ef2d8a1109a67eabac54e0af1eb1b6b765702affde27b1fcff1d20a00de372eb6bce47e97acc8625e1299847704caddcaf41057621b2adde3165f1ec63e9e948e6f6370d31b23a699d7b48cd3d21026437f286aab5626c883dd0b803a391bde2daaf8cba44b4f57e66433df76773bde33b6aca658b5ab8dc18bab94362fd1633b148c000d71e47043ecb3a041e4b14851a6116c807903539a995d056dec809c83d79c665ef0c66ee7da7ba7cbf4c40524e86ae216b6ec8533e2126b87d0f08742378b128c4780956b9deb131b6464f58600438446fc9037fc40ce900f7447914392c58f37f185eba822adb96326d7e7020493635fce301f0429bdc5525d30f7865df0775099deb3c51b9d492cf4fa77e5eff89fa4d66548a4c15e65b29e8d3c22fd8e157ed9643a5b474af321a05ff6c4e380bda0319281417a413259c0f4c4ac4a38c41f688d5d793a9590e6ddc2aaee4d4102a19ab7acbf22e6b4ca5d86a4dfcc5b5118848b2d0002fa4607ab7fca5231de5cc805e30d0d1d6a72a22e5d211e80a3e9b19fb77f494e420923e86e5d229081d758726b45ccd8dc77f0265f5468f6a8a2107e631fb1bc45309ef2d933eba4bf3644b26ba434aad06869a667b02d2cabe2c4a098acf0bad5f8c361c60f46e4bad3a0eba2e3f929e1f3e5c4d78d7652a876cc08090b254cb0afac9db95839b685efda5e1194ea816be729e374b28ebfbbfe19a3a62ff01eefd4ddc4532ed1d54399a0636f32bf9aefc59a83deb85cb10051ec8735263b4d97085df68d8701752d5c328dec879e281e3cd8d93dec3df1f302bc4fc4ba09417da7ebbacfbef942ca504ef965e10ae0dfe7698b03b3b2d3865e1c892826c3b97ce127171e1511555dc56a51e9983d72f9fd5c055e9ebc30a717540da6305039cb0c0ab59c1cb51c92c5997be63b55dfe54fc93042da60c67d08128ab2d793e50207e05b164af9b292bcde0c2e751bb05793c60219de4d1e1e04a92e08cacacaf3869215aec6fd6613d8f219fcb2e08018071f895d93cb83197c896a2d34c8365ba911cd35cf788108cd4b992fb54ec96adad6d86f393d6e0874a80e0fab4a216206fc86366981568de2715af0975160d7481dc8e7fd4f3f4b3e5aa59668fd333bbe7a81e573a4081d38c20c5c34358670bcd22981aed9a6678622730103f24b8aa32b50d50991c54e67c7596210d4f678fae07d91f3aecccbc2a1be0ff6143cc58469d8ef0590b05e08ed4bb0bdc4d12717699b7b9cd9e24b552ed1ea44be02bc96dbac3380e50010f90d9e338ca22bc0860591482c8357026d4ab2f68e32b3f55ebfe8b7405e2f6630b62b44a555a0220d96d2c560f522d8eb3162770b59ef8759e42c62370e6275d3ae5034c9b06913ed71ccf45a0a96479a4417d08bc01ba81a9103a72c27cca367bddbb43063fa5823260dc56133c4f7e18287102f4facaaa09b4c83f3371808f99725961662eee482a2803335a3c779808a2e8d60eea01c22aedd1573012f3c12ef7290cabef002f6ab91eb2bfd149eaf57faaa489844b18e26f1bf2f2425786efc10a047a5b8f183916bbde65859e245ff00b0824a9f5e86a6365e1e91bcfbdee5902987a96fa2511aa09b4782e84eba81e5f17fb08253a895ebf60c4bd7c064f52a5d07e0599f13c37ccb132b67e64108ba2c7a5c6d7aca17f0944eeb01e84edabeaffd83ffda000c03010002000300000010f3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf38c3bf3cf3cf3cf3cf3cf3cf34153068596dfcf3cf3cf3cf3cd79e32b969c967cf3cf3cf3cf3af8e97f141fc5adcf3cf3cf3cefa39e59d4ca798132ffcf3cf3ca5592255fbf104baf0cfcf3cf3cfb15b5207d46ae6b2a47cf3cf3cb83b42dc91f273695debcf3cf3caf1e755028f92ea68e53cf3cf3cf1b838333c634ca11ff3cf3cf3cf2c342e41b5d8cab94f3cf3cf3cf3cf3c23941f47cfbcf3cf3cf3cf3cf3c7eeb3cbbcf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cf3cffc40029110100020103000b000301000000000000010011213141512030617181a1b1c1d1e1f0105091f1ffda0008010301013f10feaf4f09d9e61c1f1ebaec1bf4fbfd982b3f63f77ca5c1515818cc0f3afdc4d93e241059d4ad6589c5f5fa89cc3c98020e44697f0022b8d38f886341ea0ef86ff1f31338e4a64b43d5d15f6450bd4978cccbb47d7a62af68c3ba6015c601c7741eda7bcab8ad989409dcac4b531e11f200c18536ec8308d0ec9aa1ccaf5d74e9540e5fbf69442004b5839f1262c0b4080f2c4f004b65e0829ae476941eb100a965c6f428943e27ef2e95b0732d1995179a076d7bc75d8a8805c92aa7c108d375534370c425d704a35b3770a6b053eef73a471e0c545aa6b0ddf1bdbe31a35fec77e720945adeb2c5bafb483426396249b1db0493fec03224615b1ebff3a5752d841acd63b2195b206594d21b7c428d44d620418b9a952e59f8e9a6c0fac0844b2dc53b4b331bb65356c641c477840dd26fddf7d419b4b21dcfede0dbc416e2a81cca3f906b720546bd49b45933799e7f7fb5880ef952a046b54ece3f6df304aeb1a4ae2fa29e3f3729cbcbe21bcafeeca99b1fdf7fffc40029110100020102020a03010000000000000001001121314151612030718191a1b1d1e1f01050c1f1ffda0008010201013f10fd5ebe339d9aa87775d4e5572dfe3ee252c73e2fdec98cb5c2c4d348dd9bfbc653977ca2234f5217821f19e9f3025743f0400486a45c2305e1c5ef1c064ea12b8b6f7f6838c3659384a11f484039d49898de3ca62da9e9d3501bc3054c87afad6641cf26683adfe4bcb9dd981cbb37995467be3c8e14f98b8353cd8905abcdf79a2b2a5f869af4ae6f03e3fb01897cff00095b1634d99886d3ed9298f810c61dd9b5e2ca80c244ad5e62d26a865162acf40fbe7d2a5da00c92c1f245eadea43af7bff60a2619573adb2b255b04d549104346d8d2a62aa5269bcff8f49768214365cd17bb20bbfba54c7c203c4397cc4adb44c1c608a34f265896781055d9e2457e5626089055eefa7fbd2a082018d684aa6d470198cb78461e582882c125c055cb07063dfa7be53d22846a89aa92f79d234de09d083b8213dc32cc316f65dbef2ea1dd20163b49ca876895684ec96fcdc8c4bc3a976ca661317cbe2601a41bfc0d41b98832f978fb4bb3d66aaa82d69eef6a9ca79fbc7600fbcee6b4bfdf7fffc4002910010002020202020104030101010000000100112131415161718191a130b1c1f040d1e11070f1ffda0008010100013f10ff00e7be38d87f2c711a3fb2187405dd3fcd4ed03b60f82c71f90c22208396fa5dff0097b1fa8c7db28bc04afbe8fc47b84c66a6a1e367f70ea90a7f926c58baf8a20fc12d06bed3863e6f058e153660fd4c972b2b2af728adfeea04af550e937360ed6d2fa4986f8bfb3967e4b3fc6502dc1105eb66b39aacaf1876c25cf503ebacf45f99542ce56d860e868f32da9acd46ea90aab63b8c068556521b474416d68c1ce70d18fb99d960928e15320fa951d38a70fd4744f3600f866b1f3356756ffde58a9b6b6fc3cc36385528fb4d1f3bf2cd455df9e9363e1cff00876f6e2d023262b5b4fb7af1f9ea3970452d14ebd1e09652696b063f31f07c6612a8184160a0f30907604cad752ca0ea0c48bf87290157ca095ad0b6d9e3bc214c2077d32dfec88a5ecfef11306b8cd1cb2b153a3f05ebf32a290c4b23675507f8f309d17c3c476ba01a0f5dde4cc76d4cbb69df95c3fb7f82d4e0cd00dac4012c94a316f3fb7bb822ba61561e2cfe62342b82d3fec3a0d3a7dbd4115a8675d07994a025af03df11431991af0aee3c673ab2d38479aa8e1246ce530f9c30cbac2cc2ade7c44994d4ef59f5dc7082acae93d77f865fec373ac1a74954c4015c2f80e6044a02053fad15dcb0804dab52c7b3863257e1335e9397c9f535d96d5dda4ed70ffaff0002d559d75f1e8fdf3c12a50db68ab01de798e9187279abb7f682ad83035e283c4c3106354340f9a80d8569e0c442fbf0c57b62b320cc04dd1f0333a581439ce20e9d0654bd0e067996018d645e1e93a8607752489a073ee06ab288b2da27372c5dcab8697c13a48ab11c1b05e6eb1ac3f116ac85dfb1f31b9da5c8de5bf1180d22012eafb7311b20af1d7c9c331607454339f174f0d4c5fe97b5cae91b1f5fac1a4e9ac8ff00a51e5f104f7a7901dbc4b415839af920300578e3029dc6461b014bee5ce760aa0780fde2e62850b7975e08d44566ab108fceb8378ebc4b999643c6bdb8468a1b792d664f923c7f6a962e2c70fc4b318909be6d73ea0c05b500d262686a89ca6c7a4970d416e0c6d57144a60fd613bbe82a62bb26a39017d9894f18b4b51857c40a8d6980380e92d5ddc201eb34260ec5471463d707c87eaa80ab412f375f3a66fe597e61d156d0bba18f89971798b4767c3d4d5b939e23aaf00fb8059b85b90eb52f93e3a5610557ba6a2e5c6d232aea128259d8027ce7a8ada62f75bbb18d57ad002f70b146a4b2d4bf6962ee9487f29c5f71420009e4978f083a568647bb8b71a1388480aa80a9806c07220aaba80a376da2dd2b8457fd305d5626adb1487021314680a22b7b034aacde0671dc587763e384f587e22b33289c62fb6cf09fa9daf2b9d2d7ab258f23039471fccaac28578031ae22705e1130c3e10f860eeb5e15d0414d16aedff27e673944a16763a4f51869f67f84bd0f242f0f2c3729c1d234c66a08d0d1a2de235aba2ad79ad455a5aac6dd06f3047b103b5688d8161bca3587ab8b97fe77147e2267c80f6c601b5028b587c4a55fd8ab4d0431b169b4ade9f3ff009697d3d9b63f8dc421dfb5a69ed0fea09b79e96ff07da284b9f0bbfc11420a6437abf8800253d6808d7e630a324588aa1e22bb34294e1ffa115a9d3a85969af759e6045c1c1c55c1920952da28ef5b8c7b00528da30b3fb6ef16e4b9a69a5cd7d4be87726f4e337e656aab1a4056f8ccfed7a448cefc1d39ed7d4bb895510d96c8275f989120a1804cd218436c356c296571927f4dd62f4dac05e588365575134f12eab09554ee3f8271721957e257e65e777ed7ea1a94497b68bf9582a18936e215b152bb2f7ee2d10a9403f8eebce4dd4b32aa35f90fe0e67992453f71eab7b6fc5a02037d0ca74f87e184f83936e1b78771194cb8440e773faeef29ddb433e58949390c298cc45035e54edf73fb1e918ad4ff004b140289cca63ca2c2e87af72f7b645d9634f86e7f4dd65bfc42d0dfcbeab1cc190951277e63ac09d025aaf57f50f729eba6e9f484cd36abec1fd3aab41ebb627edf705954ab69adc2484aa2811fda147cd6af83e38d41c03627c0369f231802b216eca4b3c854af91be855e35f933dc42529626113f98adf7ec7387cda833746a91293e27f7dde218ab53c9c4ba02c0c15b1cf98851fdb1fdaf48337f5a653528341b676e2be63a78058a548c9dcfe9bac4eb6a8e21f5f72df24304de1fde1b8aa2d9b6edbf9a86334dd2b3f317960fb1fe1fa602a9410a95e3a88eb8a367053c9fc41ae25f0017af71b209046c83d1230e869198156aabf793f0fc4569a0942fc97d47459553f96597d3352690a6f87cc11bae55b806dacf886708023c5abfcc4098d05c031bc43b491aaf2ae6abfc4dd1f60710bde6a12a28e87348ff00138760c23801a6af492ffc24f17e7a71a6351cc682886533cc4b2a0392eeb9cadc73279a908688123e8782d50c551528ba0a043c503c9dcd1a28af22b256848d09729e0e7e936de5beff004a62ce5d0f20afddc6205e435e4e996ea560dcec78e22a5d96506beba611d5a2c285829dea390ed05df5023be48fb688fcd91ec9325f55e082aeaca80751a1b8502da67f55fee3b62d5d005bb97a201f6db114a5c1b0a467f61fee38d5d6d41a3ea06b14aa007238dd0b1e9ad2d17652f52cfeafde7f65fee3c8c2afb2bee08dac2714a13c4b55620167e25629c4f212fe84770a4fd90bfbfe9808a029ca23f88eab4bc37a65295d03e19e3b95a948300bda4aef512ac2d2ceeea9e82595dde830329e0cc61c0c0c3e6cd139219e35410d7cc3e29b436859958f88802be03c3c4bd9c031fda28b21a47e81f89299fba6f6b884acd64b87a8addb624be09bf504724733b4304a3865442d952a99b3e2330916a3f05f108991eab54bff00ea1fbdc6918f883aacf4fe5a8ac00e9150019e0be6a1d74986d11b7065c431a8c1d063f4ec28056bac7f3061838a4a8930000d7839ea002584f0344a6517044d41c3466959cd629c4aca8a3da5e4e63cca79720032cc82daacf9879315714e557944b4d45ae0e859aad686a5177671c635bdb89b73dd504cd9b35d44be59daba9e941945acbdc11c8e92895a711927410864d0b83ea5d12122d3146b17a829b062a6e29761b94055e23b6e34ea8a0c816d1b96edf6350a2aa58a25c28c282d6d1c1a35d47471b5257a034184b80cc6acc9b457316b11b5a1325ac873906258b0861ae258c393eb187de4f8fd4107e1a12acf26e32154a9a8239070fcca109c028786b70dd66a9aa0d5f70045aa22e1667d443933219546f777dcdc4c1b08d6ff006e25c9829c34b4aa4ac5c094aa504a868a6fee00a8401de54f98972e80dec7e57ea7f6fd7fe6ed4abc51678434fba7fe40e7ea485d4f6090520d8b24055540d7053f351cf6170302b8349f30ce48f12d652da4e46326440a0aefda0d5e4a460708a275477f11dcf40672aff461faa4d21003a52fb317e0ee5e2de83578cca2024255b894988f39aac0642f27372d8664532c2ff18e13b244243a13d0dc69dac368a2ab056005cb0fbe8d637033826e034a2280da60ca6e37783050e5bd169f538acea371e04a592c22161d4ac766c5ad6a3d09139ea89168912ab4d0d952da51f8837ba0491541b5d021bdc363fc32e14e4b138770df2bb6c02c600ec6e665b1229365d984dc45b768b48c11588ab82b0ada34b0e13d4b218ad0080480b37960ec86ce0715e94c7b612f0b5c0501f1fab6685f09e4f26c8601bf38509d70f4e261d680058ae11e3cca2c43436bbe2bc4c03676abf44de653d7705dbe4da6446a0abdd5416a96b2b7ee2136dc12fe50a8561e915e274569d4ea4686c9415b513e518217c0caca72431fb1a8ca66e809fb09664d8aa69ea9bb657125cb05799629b52a06701aaddfc422570e4474794e3cb2a04214c8e8f5b7caf5fae8959698cfc92c27a788e9652601b58d72688c41460205eae521c381532eeaa84013baa89814385ab788ad03379f9070cb8dd48a83fb5e4b21e070aae78b736ea38cd4b010d0ae7f72521db908f2af3e77060aabe33362f26b572f96dd5aa6012ca65ba876256b073fcc6d62a6b145e55951278a0bbffb01d2c8846dbc8fb6e2c710e28e839f17efaff06a28c1c04c9e1e9e3d627c16c334a6b3b13e25ca0110b07561bcf3b87b28d157143df5f88be12d472571ec9b33428669c20ee0f33712ede7fe417cf61d9ecee3aea5738b3ee6359d95e8b252f9adbc9bc244e302a01578ed752a812ab45caaae5a957932e250b4243fe4a5c483759ce3981614c0791d51c7989e4f127e9e3a2cbce3600000600ff092da40ff00fec787f0e66e9ea9037829f43f9dc6dc67108edb62cf1f51fd31c3d9bc239aa97b0540a5740786c820b797e78b7a95e48559ae6e15818af1dcad72e69a0f7e7cb2a4ad415b71bf985a7d73a38a0d307d754d82eea0469eff008128f0823458baaa1abcd9095f2bc1b41d14ed71dc658b4a33e79f7b83839ff14747d181d23b8c3765b13d8fc367885c652e2fd60fba60bf1ab5b3381d352db90b51871659f257a80a40d893d6425a19a0b479fe446a5dba49478c7c4a5900ba54de0e550cf043a6f26592f134eee5f12964580bdd603aeda210125311abe9f56bcc3f81a82fca997fc844028a44b19b379253ecc9f231206fc17edafc45222da2578c84c4a4dada1e98c709e564fcff00180b70d2395e81da5c45a84cf962843ba3afd17f2b031e710fe3ff00b07fffd9, 'Software Training <br>Software Development<br>Mobile App Development<br><br>', 'Big Data, Cloud', '1-10', '19-03-2024 02:03 PM [EAT +03:00]', 'employer', 'www.siittechnologies.com', '1e191d851b3b49a248f4ea62f6b06410', 'CM577777777', '0'),
('Dhamrendhar', 'G V', 'Male', '01', '01', '2000', 'dharma@gmail.com', 'BCA', 'Computer Application', 'Chennai', '3rd Street', '6000010', 'India', '9512368740', '', NULL, NULL, NULL, '-', '19-03-2024 02:03 PM [EAT +03:00]', 'employee', '-', 'f5bb0c8de146c67b44babbf4e6584cc0', 'EM888888888', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`enc_id`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`member_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `enc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;