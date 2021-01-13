-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 09, 2020 at 11:24 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolreport`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
CREATE TABLE IF NOT EXISTS `addons` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_preferences`
--

DROP TABLE IF EXISTS `admin_preferences`;
CREATE TABLE IF NOT EXISTS `admin_preferences` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_panel` tinyint(1) NOT NULL DEFAULT 0,
  `sidebar_form` tinyint(1) NOT NULL DEFAULT 0,
  `messages_menu` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_menu` tinyint(1) NOT NULL DEFAULT 0,
  `tasks_menu` tinyint(1) NOT NULL DEFAULT 0,
  `user_menu` tinyint(1) NOT NULL DEFAULT 1,
  `ctrl_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `transition_page` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_preferences`
--

INSERT INTO `admin_preferences` (`id`, `user_id`, `user_panel`, `sidebar_form`, `messages_menu`, `notifications_menu`, `tasks_menu`, `user_menu`, `ctrl_sidebar`, `transition_page`) VALUES
(1, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(2, 11, 1, 1, 1, 1, 1, 1, 1, 0),
(3, 19, 1, 0, 0, 0, 0, 1, 0, 0),
(4, 21, 1, 1, 0, 1, 0, 1, 0, 0),
(5, 22, 0, 0, 0, 0, 0, 1, 0, 0),
(6, 23, 0, 0, 0, 0, 0, 1, 0, 0),
(7, 24, 1, 0, 0, 0, 0, 1, 0, 0),
(8, 29, 0, 0, 0, 0, 0, 1, 0, 0),
(9, 1, 0, 0, 0, 0, 0, 1, 0, 0),
(10, 26, 1, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
CREATE TABLE IF NOT EXISTS `assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) NOT NULL,
  `assignment` text NOT NULL,
  `due_date` varchar(225) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` varchar(225) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `batch_id`, `assignment`, `due_date`, `status`, `created_at`, `skill_id`) VALUES
(1, 1, '<p>is java a programing language ?<br>Answer by <mark class=\"pen-red\">yes </mark>or <mark class=\"pen-red\">no</mark></p>', '1590073860', 1, '1589987721', 15),
(2, 1, '<p>is PHPa programing language ?<br>Answer by <mark class=\"pen-red\">yes </mark>or <mark class=\"pen-red\">no</mark></p>', '1589990400', 1, '1589987780', 1);

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
CREATE TABLE IF NOT EXISTS `batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `code` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `program` varchar(225) DEFAULT NULL,
  `days` varchar(225) DEFAULT NULL,
  `time` varchar(225) DEFAULT NULL,
  `start_date` varchar(225) DEFAULT NULL,
  `end_date` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batches`
--

INSERT INTO classes (`id`, niveau, num_sale, `description`, `program`, `days`, `time`, `start_date`, `end_date`) VALUES
(1, 'BTC-0001', 'BATCH_0001_TEST', 'this batch is for testing perpose only', '', 'MWF', '9-11', '11/01/2019', '07/31/2020'),
(3, 'BTC-0002', 'BATCH_0002_TEST', 'This batch is for testing', '', 'TTS', '15-17', '05/15/2020', '12/13/2020'),
(7, 'BTC0003', 'BATCH_0003_TEST', 'test', '', 'MWF', '15-17', '12/14/2019', '02/11/2021'),
(10, 'guest', 'GHANA_CEDIS', 'programming language', '', 'TTS', '13-15', '05/13/2020', '05/03/2020');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_code` int(3) NOT NULL,
  `abreviation` varchar(2) NOT NULL,
  `alpha3` varchar(3) NOT NULL,
  `country_name` varchar(225) NOT NULL,
  `country_name_fr` varchar(45) NOT NULL,
  `coord` varchar(225) NOT NULL DEFAULT '0,0',
  `partener` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `abreviation` (`abreviation`),
  UNIQUE KEY `alpha3` (`alpha3`),
  UNIQUE KEY `code_unique` (`country_code`),
  KEY `country_id` (`country_id`),
  KEY `country_name` (`country_name_fr`),
  KEY `abreviation_2` (`abreviation`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_code`, `abreviation`, `alpha3`, `country_name`, `country_name_fr`, `coord`, `partener`) VALUES
(1, 4, 'AF', 'AFG', 'Afghanistan', 'Afghanistan', '33, 65', 0),
(2, 8, 'AL', 'ALB', 'Albania', 'Albanie', '41, 20', 0),
(3, 10, 'AQ', 'ATA', 'Antarctica', 'Antarctique', '0,0', 0),
(4, 12, 'DZ', 'DZA', 'Algeria', 'Algérie', '28, 3', 0),
(5, 16, 'AS', 'ASM', 'American Samoa', 'Samoa Américaines', '0,0', 0),
(6, 20, 'AD', 'AND', 'Andorra', 'Andorre', '0,0', 0),
(7, 24, 'AO', 'AGO', 'Angola', 'Angola', '-12.5, 18.5', 0),
(8, 28, 'AG', 'ATG', 'Antigua and Barbuda', 'Antigua-et-Barbuda', '0,0', 0),
(9, 31, 'AZ', 'AZE', 'Azerbaijan', 'Azerbaïdjan', '40.5, 47.5', 0),
(10, 32, 'AR', 'ARG', 'Argentina', 'Argentine', '-34, -64', 0),
(11, 36, 'AU', 'AUS', 'Australia', 'Australie', '-27, 133', 0),
(12, 40, 'AT', 'AUT', 'Austria', 'Autriche', '47.3333, 13.3333', 0),
(13, 44, 'BS', 'BHS', 'Bahamas', 'Bahamas', '24.25, -76', 0),
(14, 48, 'BH', 'BHR', 'Bahrain', 'Bahreïn', '0,0', 0),
(15, 50, 'BD', 'BGD', 'Bangladesh', 'Bangladesh', '24, 90', 0),
(16, 51, 'AM', 'ARM', 'Armenia', 'Arménie', '40, 45', 0),
(17, 52, 'BB', 'BRB', 'Barbados', 'Barbade', '0,0', 0),
(18, 56, 'BE', 'BEL', 'Belgium', 'Belgique', '50.8333, 4', 0),
(19, 60, 'BM', 'BMU', 'Bermuda', 'Bermudes', '0,0', 0),
(20, 64, 'BT', 'BTN', 'Bhutan', 'Bhoutan', '27.5, 90.5', 0),
(21, 68, 'BO', 'BOL', 'Bolivia', 'Bolivie', '-17, -65', 0),
(22, 70, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnie-Herzégovine', '44, 18', 0),
(23, 72, 'BW', 'BWA', 'Botswana', 'Botswana', '-22, 24', 0),
(24, 74, 'BV', 'BVT', 'Bouvet Island', 'Île Bouvet', '0,0', 0),
(25, 76, 'BR', 'BRA', 'Brazil', 'Brésil', '-10, -55', 0),
(26, 84, 'BZ', 'BLZ', 'Belize', 'Belize', '17.25, -88.75', 0),
(27, 86, 'IO', 'IOT', 'British Indian Ocean Territory', 'Territoire Britannique de l\'Océan Indien', '0,0', 0),
(28, 90, 'SB', 'SLB', 'Solomon Islands', 'Îles Salomon', '-8, 159', 0),
(29, 92, 'VG', 'VGB', 'British Virgin Islands', 'Îles Vierges Britanniques', '0,0', 0),
(30, 96, 'BN', 'BRN', 'Brunei Darussalam', 'Brunéi Darussalam', '4.5, 114.6667', 0),
(31, 100, 'BG', 'BGR', 'Bulgaria', 'Bulgarie', '43, 25', 0),
(32, 104, 'MM', 'MMR', 'Myanmar', 'Myanmar', '22, 98', 0),
(33, 108, 'BI', 'BDI', 'Burundi', 'Burundi', '-3.5, 30', 0),
(34, 112, 'BY', 'BLR', 'Belarus', 'Bélarus', '53, 28', 0),
(35, 116, 'KH', 'KHM', 'Cambodia', 'Cambodge', '13, 105', 0),
(36, 120, 'CM', 'CMR', 'Cameroon', 'Cameroun', '6, 12', 1),
(37, 124, 'CA', 'CAN', 'Canada', 'Canada', '60, -95', 0),
(38, 132, 'CV', 'CPV', 'Cape Verde', 'Cap-vert', '0,0', 0),
(39, 136, 'KY', 'CYM', 'Cayman Islands', 'Îles Caïmanes', '0,0', 0),
(40, 140, 'CF', 'CAF', 'Central African', 'République Centrafricaine', '7, 21', 0),
(41, 144, 'LK', 'LKA', 'Sri Lanka', 'Sri Lanka', '7, 81', 0),
(42, 148, 'TD', 'TCD', 'Chad', 'Tchad', '15, 19', 0),
(43, 152, 'CL', 'CHL', 'Chile', 'Chili', '-30, -71', 0),
(44, 156, 'CN', 'CHN', 'China', 'Chine', '35, 105', 0),
(45, 158, 'TW', 'TWN', 'Taiwan', 'Taïwan', '23.5, 121', 0),
(46, 162, 'CX', 'CXR', 'Christmas Island', 'Île Christmas', '0,0', 0),
(47, 166, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Îles Cocos (Keeling)', '0,0', 0),
(48, 170, 'CO', 'COL', 'Colombia', 'Colombie', '4, -72', 0),
(49, 174, 'KM', 'COM', 'Comoros', 'Comores', '0,0', 0),
(50, 175, 'YT', 'MYT', 'Mayotte', 'Mayotte', '0,0', 0),
(51, 178, 'CG', 'COG', 'Republic of the Congo', 'République du Congo', '-1, 15', 0),
(52, 180, 'CD', 'COD', 'The Democratic Republic Of The Congo', 'République Démocratique du Congo', '0, 25', 0),
(53, 184, 'CK', 'COK', 'Cook Islands', 'Îles Cook', '0,0', 0),
(54, 188, 'CR', 'CRI', 'Costa Rica', 'Costa Rica', '10, -84', 0),
(55, 191, 'HR', 'HRV', 'Croatia', 'Croatie', '45.1667, 15.5', 0),
(56, 192, 'CU', 'CUB', 'Cuba', 'Cuba', '21.5, -80', 0),
(57, 196, 'CY', 'CYP', 'Cyprus', 'Chypre', '35, 33', 0),
(58, 203, 'CZ', 'CZE', 'Czech Republic', 'République Tchèque', '49.75, 15.5', 0),
(59, 204, 'BJ', 'BEN', 'Benin', 'Bénin', '9.5, 2.25', 0),
(60, 208, 'DK', 'DNK', 'Denmark', 'Danemark', '56, 10', 0),
(61, 212, 'DM', 'DMA', 'Dominica', 'Dominique', '0,0', 0),
(62, 214, 'DO', 'DOM', 'Dominican Republic', 'République Dominicaine', '19, -70.6667', 0),
(63, 218, 'EC', 'ECU', 'Ecuador', 'Équateur', '-2, -77.5', 0),
(64, 222, 'SV', 'SLV', 'El Salvador', 'El Salvador', '13.8333, -88.9167', 0),
(65, 226, 'GQ', 'GNQ', 'Equatorial Guinea', 'Guinée Équatoriale', '2, 10', 0),
(66, 231, 'ET', 'ETH', 'Ethiopia', 'Éthiopie', '8, 38', 0),
(67, 232, 'ER', 'ERI', 'Eritrea', 'Érythrée', '15, 39', 0),
(68, 233, 'EE', 'EST', 'Estonia', 'Estonie', '59, 26', 0),
(69, 234, 'FO', 'FRO', 'Faroe Islands', 'Îles Féroé', '0,0', 0),
(70, 238, 'FK', 'FLK', 'Falkland Islands', 'Îles (malvinas) Falkland', '-51.75, -59', 0),
(71, 239, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'Géorgie du Sud et les Îles Sandwich du Sud', '0,0', 0),
(72, 242, 'FJ', 'FJI', 'Fiji', 'Fidji', '-18, 175', 0),
(73, 246, 'FI', 'FIN', 'Finland', 'Finlande', '64, 26', 0),
(74, 248, 'AX', 'ALA', 'Åland Islands', 'Îles Åland', '0,0', 0),
(75, 250, 'FR', 'FRA', 'France', 'France', '46, 2', 0),
(76, 254, 'GF', 'GUF', 'French Guiana', 'Guyane Française', '0,0', 0),
(77, 258, 'PF', 'PYF', 'French Polynesia', 'Polynésie Française', '0,0', 0),
(78, 260, 'TF', 'ATF', 'French Southern Territories', 'Terres Australes Françaises', '-43, 67', 0),
(79, 262, 'DJ', 'DJI', 'Djibouti', 'Djibouti', '11.5, 43', 0),
(80, 266, 'GA', 'GAB', 'Gabon', 'Gabon', '-1, 11.75', 0),
(81, 268, 'GE', 'GEO', 'Georgia', 'Géorgie', '42, 43.5', 0),
(82, 270, 'GM', 'GMB', 'Gambia', 'Gambie', '13.4667, -16.5667', 0),
(83, 275, 'PS', 'PSE', 'Occupied Palestinian Territory', 'Territoire Palestinien Occupé', '32, 35.25', 0),
(84, 276, 'DE', 'DEU', 'Germany', 'Allemagne', '51, 9', 0),
(85, 288, 'GH', 'GHA', 'Ghana', 'Ghana', '8, -2', 1),
(86, 292, 'GI', 'GIB', 'Gibraltar', 'Gibraltar', '0,0', 0),
(87, 296, 'KI', 'KIR', 'Kiribati', 'Kiribati', '0,0', 0),
(88, 300, 'GR', 'GRC', 'Greece', 'Grèce', '39, 22', 0),
(89, 304, 'GL', 'GRL', 'Greenland', 'Groenland', '72, -40', 0),
(90, 308, 'GD', 'GRD', 'Grenada', 'Grenade', '0,0', 0),
(91, 312, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe', '0,0', 0),
(92, 316, 'GU', 'GUM', 'Guam', 'Guam', '0,0', 0),
(93, 320, 'GT', 'GTM', 'Guatemala', 'Guatemala', '15.5, -90.25', 0),
(94, 324, 'GN', 'GIN', 'Guinea', 'Guinée', '11, -10', 0),
(95, 328, 'GY', 'GUY', 'Guyana', 'Guyana', '5, -59', 0),
(96, 332, 'HT', 'HTI', 'Haiti', 'Haïti', '19, -72.4167', 0),
(97, 334, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'Îles Heard et Mcdonald', '0,0', 0),
(98, 336, 'VA', 'VAT', 'Vatican City State', 'Saint-Siège (état de la Cité du Vatican)', '0,0', 0),
(99, 340, 'HN', 'HND', 'Honduras', 'Honduras', '15, -86.5', 0),
(100, 344, 'HK', 'HKG', 'Hong Kong', 'Hong-Kong', '0,0', 0),
(101, 348, 'HU', 'HUN', 'Hungary', 'Hongrie', '47, 20', 0),
(102, 352, 'IS', 'ISL', 'Iceland', 'Islande', '65, -18', 0),
(103, 356, 'IN', 'IND', 'India', 'Inde', '20, 77', 0),
(104, 360, 'ID', 'IDN', 'Indonesia', 'Indonésie', '-5, 120', 0),
(105, 364, 'IR', 'IRN', 'Islamic Republic of Iran', 'République Islamique d\'Iran', '32, 53', 0),
(106, 368, 'IQ', 'IRQ', 'Iraq', 'Iraq', '33, 44', 0),
(107, 372, 'IE', 'IRL', 'Ireland', 'Irlande', '53, -8', 0),
(108, 376, 'IL', 'ISR', 'Israel', 'Israël', '31.5, 34.75', 0),
(109, 380, 'IT', 'ITA', 'Italy', 'Italie', '42.8333, 12.8333', 0),
(110, 384, 'CI', 'CIV', 'Côte d\'Ivoire', 'Côte d\'Ivoire', '8, -5', 0),
(111, 388, 'JM', 'JAM', 'Jamaica', 'Jamaïque', '18.25, -77.5', 0),
(112, 392, 'JP', 'JPN', 'Japan', 'Japon', '36, 138', 0),
(113, 398, 'KZ', 'KAZ', 'Kazakhstan', 'Kazakhstan', '48, 68', 0),
(114, 400, 'JO', 'JOR', 'Jordan', 'Jordanie', '31, 36', 0),
(115, 404, 'KE', 'KEN', 'Kenya', 'Kenya', '1, 38', 0),
(116, 408, 'KP', 'PRK', 'Democratic People\'s Republic of Korea', 'République Populaire Démocratique de Corée', '40, 127', 0),
(117, 410, 'KR', 'KOR', 'Republic of Korea', 'République de Corée', '37, 127.5', 0),
(118, 414, 'KW', 'KWT', 'Kuwait', 'Koweït', '29.3375, 47.6581', 0),
(119, 417, 'KG', 'KGZ', 'Kyrgyzstan', 'Kirghizistan', '41, 75', 0),
(120, 418, 'LA', 'LAO', 'Lao People\'s Democratic Republic', 'République Démocratique Populaire Lao', '18, 105', 0),
(121, 422, 'LB', 'LBN', 'Lebanon', 'Liban', '33.8333, 35.8333', 0),
(122, 426, 'LS', 'LSO', 'Lesotho', 'Lesotho', '-29.5, 28.5', 0),
(123, 428, 'LV', 'LVA', 'Latvia', 'Lettonie', '57, 25', 0),
(124, 430, 'LR', 'LBR', 'Liberia', 'Libéria', '6.5, -9.5', 0),
(125, 434, 'LY', 'LBY', 'Libyan Arab Jamahiriya', 'Jamahiriya Arabe Libyenne', '25, 17', 0),
(126, 438, 'LI', 'LIE', 'Liechtenstein', 'Liechtenstein', '0,0', 0),
(127, 440, 'LT', 'LTU', 'Lithuania', 'Lituanie', '56, 24', 0),
(128, 442, 'LU', 'LUX', 'Luxembourg', 'Luxembourg', '49.75, 6.1667', 0),
(129, 446, 'MO', 'MAC', 'Macao', 'Macao', '0,0', 0),
(130, 450, 'MG', 'MDG', 'Madagascar', 'Madagascar', '-20, 47', 0),
(131, 454, 'MW', 'MWI', 'Malawi', 'Malawi', '-13.5, 34', 0),
(132, 458, 'MY', 'MYS', 'Malaysia', 'Malaisie', '2.5, 112.5', 0),
(133, 462, 'MV', 'MDV', 'Maldives', 'Maldives', '0,0', 0),
(134, 466, 'ML', 'MLI', 'Mali', 'Mali', '17, -4', 0),
(135, 470, 'MT', 'MLT', 'Malta', 'Malte', '0,0', 0),
(136, 474, 'MQ', 'MTQ', 'Martinique', 'Martinique', '0,0', 0),
(137, 478, 'MR', 'MRT', 'Mauritania', 'Mauritanie', '20, -12', 0),
(138, 480, 'MU', 'MUS', 'Mauritius', 'Maurice', '0,0', 0),
(139, 484, 'MX', 'MEX', 'Mexico', 'Mexique', '23, -102', 0),
(140, 492, 'MC', 'MCO', 'Monaco', 'Monaco', '0,0', 0),
(141, 496, 'MN', 'MNG', 'Mongolia', 'Mongolie', '46, 105', 0),
(142, 498, 'MD', 'MDA', 'Republic of Moldova', 'République de Moldova', '47, 29', 0),
(143, 500, 'MS', 'MSR', 'Montserrat', 'Montserrat', '0,0', 0),
(144, 504, 'MA', 'MAR', 'Morocco', 'Maroc', '32, -5', 0),
(145, 508, 'MZ', 'MOZ', 'Mozambique', 'Mozambique', '-18.25, 35', 0),
(146, 512, 'OM', 'OMN', 'Oman', 'Oman', '21, 57', 0),
(147, 516, 'NA', 'NAM', 'Namibia', 'Namibie', '-22, 17', 0),
(148, 520, 'NR', 'NRU', 'Nauru', 'Nauru', '0,0', 0),
(149, 524, 'NP', 'NPL', 'Nepal', 'Népal', '28, 84', 0),
(150, 528, 'NL', 'NLD', 'Netherlands', 'Pays-Bas', '52.5, 5.75', 0),
(151, 530, 'AN', 'ANT', 'Netherlands Antilles', 'Antilles Néerlandaises', '0,0', 0),
(152, 533, 'AW', 'ABW', 'Aruba', 'Aruba', '0,0', 0),
(153, 540, 'NC', 'NCL', 'New Caledonia', 'Nouvelle-Calédonie', '-21.5, 165.5', 0),
(154, 548, 'VU', 'VUT', 'Vanuatu', 'Vanuatu', '-16, 167', 0),
(155, 554, 'NZ', 'NZL', 'New Zealand', 'Nouvelle-Zélande', '-41, 174', 0),
(156, 558, 'NI', 'NIC', 'Nicaragua', 'Nicaragua', '13, -85', 0),
(157, 562, 'NE', 'NER', 'Niger', 'Niger', '16, 8', 0),
(158, 566, 'NG', 'NGA', 'Nigeria', 'Nigéria', '10, 8', 0),
(159, 570, 'NU', 'NIU', 'Niue', 'Niué', '0,0', 0),
(160, 574, 'NF', 'NFK', 'Norfolk Island', 'Île Norfolk', '0,0', 0),
(161, 578, 'NO', 'NOR', 'Norway', 'Norvège', '62, 10', 0),
(162, 580, 'MP', 'MNP', 'Northern Mariana Islands', 'Îles Mariannes du Nord', '0,0', 0),
(163, 581, 'UM', 'UMI', 'United States Minor Outlying Islands', 'Îles Mineures Éloignées des États-Unis', '0,0', 0),
(164, 583, 'FM', 'FSM', 'Federated States of Micronesia', 'États Fédérés de Micronésie', '0,0', 0),
(165, 584, 'MH', 'MHL', 'Marshall Islands', 'Îles Marshall', '0,0', 0),
(166, 585, 'PW', 'PLW', 'Palau', 'Palaos', '0,0', 0),
(167, 586, 'PK', 'PAK', 'Pakistan', 'Pakistan', '30, 70', 0),
(168, 591, 'PA', 'PAN', 'Panama', 'Panama', '9, -80', 0),
(169, 598, 'PG', 'PNG', 'Papua New Guinea', 'Papouasie-Nouvelle-Guinée', '-6, 147', 0),
(170, 600, 'PY', 'PRY', 'Paraguay', 'Paraguay', '-23, -58', 0),
(171, 604, 'PE', 'PER', 'Peru', 'Pérou', '-10, -76', 0),
(172, 608, 'PH', 'PHL', 'Philippines', 'Philippines', '13, 122', 0),
(173, 612, 'PN', 'PCN', 'Pitcairn', 'Pitcairn', '0,0', 0),
(174, 616, 'PL', 'POL', 'Poland', 'Pologne', '52, 20', 0),
(175, 620, 'PT', 'PRT', 'Portugal', 'Portugal', '39.5, -8', 0),
(176, 624, 'GW', 'GNB', 'Guinea-Bissau', 'Guinée-Bissau', '12, -15', 0),
(177, 626, 'TL', 'TLS', 'Timor-Leste', 'Timor-Leste', '0,0', 0),
(178, 630, 'PR', 'PRI', 'Puerto Rico', 'Porto Rico', '18.25, -66.5', 0),
(179, 634, 'QA', 'QAT', 'Qatar', 'Qatar', '25.5, 51.25', 0),
(180, 638, 'RE', 'REU', 'Réunion', 'Réunion', '0,0', 0),
(181, 642, 'RO', 'ROU', 'Romania', 'Roumanie', '46, 25', 0),
(182, 643, 'RU', 'RUS', 'Russian Federation', 'Fédération de Russie', '60, 100', 0),
(183, 646, 'RW', 'RWA', 'Rwanda', 'Rwanda', '-2, 30', 0),
(184, 654, 'SH', 'SHN', 'Saint Helena', 'Sainte-Hélène', '0,0', 0),
(185, 659, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Saint-Kitts-et-Nevis', '0,0', 0),
(186, 660, 'AI', 'AIA', 'Anguilla', 'Anguilla', '0,0', 0),
(187, 662, 'LC', 'LCA', 'Saint Lucia', 'Sainte-Lucie', '0,0', 0),
(188, 666, 'PM', 'SPM', 'Saint-Pierre and Miquelon', 'Saint-Pierre-et-Miquelon', '0,0', 0),
(189, 670, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint-Vincent-et-les Grenadines', '0,0', 0),
(190, 674, 'SM', 'SMR', 'San Marino', 'Saint-Marin', '0,0', 0),
(191, 678, 'ST', 'STP', 'Sao Tome and Principe', 'Sao Tomé-et-Principe', '0,0', 0),
(192, 682, 'SA', 'SAU', 'Saudi Arabia', 'Arabie Saoudite', '25, 45', 0),
(193, 686, 'SN', 'SEN', 'Senegal', 'Sénégal', '14, -14', 0),
(194, 690, 'SC', 'SYC', 'Seychelles', 'Seychelles', '0,0', 0),
(195, 694, 'SL', 'SLE', 'Sierra Leone', 'Sierra Leone', '8.5, -11.5', 0),
(196, 702, 'SG', 'SGP', 'Singapore', 'Singapour', '0,0', 0),
(197, 703, 'SK', 'SVK', 'Slovakia', 'Slovaquie', '48.6667, 19.5', 0),
(198, 704, 'VN', 'VNM', 'Vietnam', 'Viet Nam', '16, 106', 0),
(199, 705, 'SI', 'SVN', 'Slovenia', 'Slovénie', '46, 15', 0),
(200, 706, 'SO', 'SOM', 'Somalia', 'Somalie', '10, 49', 0),
(201, 710, 'ZA', 'ZAF', 'South Africa', 'Afrique du Sud', '-29, 24', 0),
(202, 716, 'ZW', 'ZWE', 'Zimbabwe', 'Zimbabwe', '-20, 30', 0),
(203, 724, 'ES', 'ESP', 'Spain', 'Espagne', '40, -4', 0),
(204, 732, 'EH', 'ESH', 'Western Sahara', 'Sahara Occidental', '24.5, -13', 0),
(205, 736, 'SD', 'SDN', 'Sudan', 'Soudan', '15, 30', 0),
(206, 740, 'SR', 'SUR', 'Suriname', 'Suriname', '4, -56', 0),
(207, 744, 'SJ', 'SJM', 'Svalbard and Jan Mayen', 'Svalbard etÎle Jan Mayen', '0,0', 0),
(208, 748, 'SZ', 'SWZ', 'Swaziland', 'Swaziland', '-26.5, 31.5', 0),
(209, 752, 'SE', 'SWE', 'Sweden', 'Suède', '62, 15', 0),
(210, 756, 'CH', 'CHE', 'Switzerland', 'Suisse', '47, 8', 0),
(211, 760, 'SY', 'SYR', 'Syrian Arab Republic', 'République Arabe Syrienne', '35, 38', 0),
(212, 762, 'TJ', 'TJK', 'Tajikistan', 'Tadjikistan', '39, 71', 0),
(213, 764, 'TH', 'THA', 'Thailand', 'Thaïlande', '15, 100', 0),
(214, 768, 'TG', 'TGO', 'Togo', 'Togo', '8, 1.1667', 0),
(215, 772, 'TK', 'TKL', 'Tokelau', 'Tokelau', '0,0', 0),
(216, 776, 'TO', 'TON', 'Tonga', 'Tonga', '0,0', 0),
(217, 780, 'TT', 'TTO', 'Trinidad and Tobago', 'Trinité-et-Tobago', '11, -61', 0),
(218, 784, 'AE', 'ARE', 'United Arab Emirates', 'Émirats Arabes Unis', '24, 54', 0),
(219, 788, 'TN', 'TUN', 'Tunisia', 'Tunisie', '34, 9', 0),
(220, 792, 'TR', 'TUR', 'Turkey', 'Turquie', '39, 35', 0),
(221, 795, 'TM', 'TKM', 'Turkmenistan', 'Turkménistan', '40, 60', 0),
(222, 796, 'TC', 'TCA', 'Turks and Caicos Islands', 'Îles Turks et Caïques', '0,0', 0),
(223, 798, 'TV', 'TUV', 'Tuvalu', 'Tuvalu', '0,0', 0),
(224, 800, 'UG', 'UGA', 'Uganda', 'Ouganda', '1, 32', 0),
(225, 804, 'UA', 'UKR', 'Ukraine', 'Ukraine', '49, 32', 0),
(226, 807, 'MK', 'MKD', 'The Former Yugoslav Republic of Macedonia', 'L\'ex-République Yougoslave de Macédoine', '41.8333, 22', 0),
(227, 818, 'EG', 'EGY', 'Egypt', 'Égypte', '27, 30', 0),
(228, 826, 'GB', 'GBR', 'United Kingdom', 'Royaume-Uni', '54, -2', 0),
(229, 833, 'IM', 'IMN', 'Isle of Man', 'Île de Man', '0,0', 0),
(230, 834, 'TZ', 'TZA', 'United Republic Of Tanzania', 'République-Unie de Tanzanie', '-6, 35', 0),
(231, 840, 'US', 'USA', 'United States', 'États-Unis', '38, -97', 1),
(232, 850, 'VI', 'VIR', 'U.S. Virgin Islands', 'Îles Vierges des États-Unis', '0,0', 0),
(233, 854, 'BF', 'BFA', 'Burkina Faso', 'Burkina Faso', '13, -2', 0),
(234, 858, 'UY', 'URY', 'Uruguay', 'Uruguay', '-33, -56', 0),
(235, 860, 'UZ', 'UZB', 'Uzbekistan', 'Ouzbékistan', '41, 64', 0),
(236, 862, 'VE', 'VEN', 'Venezuela', 'Venezuela', '8, -66', 0),
(237, 876, 'WF', 'WLF', 'Wallis and Futuna', 'Wallis et Futuna', '0,0', 0),
(238, 882, 'WS', 'WSM', 'Samoa', 'Samoa', '0,0', 0),
(239, 887, 'YE', 'YEM', 'Yemen', 'Yémen', '15, 48', 0),
(240, 891, 'CS', 'SCG', 'Serbia and Montenegro', 'Serbie-et-Monténégro', '0,0', 0),
(241, 894, 'ZM', 'ZMB', 'Zambia', 'Zambie', '-15, 30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendances`
--

DROP TABLE IF EXISTS `daily_attendances`;
CREATE TABLE IF NOT EXISTS `daily_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `faculty_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily_attendances`
--

INSERT INTO `daily_attendances` (`id`, `batch_id`, `faculty_id`, `student_id`, `date`, `time`, `status`) VALUES
(6, 1, '19', 21, '21-02-2020', 1582301585, 1),
(7, 1, '19', 22, '21-02-2020', 1582301585, 0),
(14, 1, '19', 21, '23-02-2020', 1582501124, 1),
(15, 1, '19', 22, '23-02-2020', 1582501124, 1),
(16, 3, '19', 21, '23-02-2020', 1582501186, 1),
(19, 1, '19', 21, '24-02-2020', 1582507445, 0),
(20, 1, '19', 22, '24-02-2020', 1582507445, 1),
(21, 3, '19', 21, '24-02-2020', 1582507585, 1),
(22, 3, '19', 21, '25-02-2020', 1582646981, 1),
(23, 1, '19', 21, '25-02-2020', 1582647001, 1),
(24, 1, '19', 22, '25-02-2020', 1582647001, 1),
(25, 1, '19', 21, '10-03-2020', 1583882176, 1),
(26, 1, '19', 22, '10-03-2020', 1583882176, 1),
(27, 3, '19', 21, '10-03-2020', 1583882862, 1),
(28, 1, '19', 21, '11-03-2020', 1583926621, 1),
(29, 1, '19', 22, '11-03-2020', 1583926621, 0),
(30, 3, '19', 21, '11-03-2020', 1583926743, 1),
(31, 1, '19', 21, '16-03-2020', 1584347771, 1),
(32, 1, '19', 22, '16-03-2020', 1584347771, 1),
(33, 1, '19', 24, '16-03-2020', 1584347771, 1),
(34, 1, '19', 21, '26-03-2020', 1585237638, 1),
(35, 1, '19', 22, '26-03-2020', 1585237638, 1),
(36, 1, '19', 24, '26-03-2020', 1585237638, 1),
(37, 3, '19', 21, '26-03-2020', 1585237648, 1),
(38, 1, '19', 21, '27-03-2020', 1585351535, 1),
(39, 1, '19', 22, '27-03-2020', 1585351535, 1),
(40, 1, '19', 24, '27-03-2020', 1585351535, 1),
(41, 1, '19', 21, '09-04-2020', 1586392931, 1),
(42, 1, '19', 22, '09-04-2020', 1586392931, 1),
(43, 1, '19', 24, '09-04-2020', 1586392931, 1),
(44, 1, '19', 21, '17-04-2020', 1587116228, 1),
(45, 1, '19', 22, '17-04-2020', 1587116228, 1),
(46, 1, '19', 24, '17-04-2020', 1587116228, 0),
(47, 3, '19', 21, '17-04-2020', 1587116254, 1),
(48, 1, '19', 21, '07-05-2020', 1588885933, 1),
(49, 1, '19', 22, '07-05-2020', 1588885933, 1),
(50, 1, '19', 24, '07-05-2020', 1588885933, 1),
(51, 3, '19', 21, '07-05-2020', 1588885947, 1),
(52, 1, '19', 21, '18-05-2020', 1589816542, 1),
(53, 1, '19', 22, '18-05-2020', 1589816542, 1),
(54, 1, '19', 24, '18-05-2020', 1589816542, 1),
(55, 1, '19', 21, '20-05-2020', 1589934107, 0),
(56, 1, '19', 22, '20-05-2020', 1589934107, 1),
(57, 1, '19', 24, '20-05-2020', 1589934107, 0);

-- --------------------------------------------------------

--
-- Table structure for table `electronic__pcpdesigner_answ`
--

DROP TABLE IF EXISTS `electronic__pcpdesigner_answ`;
CREATE TABLE IF NOT EXISTS `electronic__pcpdesigner_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `electronic__pcpdesigner_qst`
--

DROP TABLE IF EXISTS `electronic__pcpdesigner_qst`;
CREATE TABLE IF NOT EXISTS `electronic__pcpdesigner_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_groups`
--

DROP TABLE IF EXISTS `events_groups`;
CREATE TABLE IF NOT EXISTS `events_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_groups`
--

INSERT INTO `events_groups` (`id`, `event_id`, `group_id`) VALUES
(11, 18, 1),
(10, 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `fac_batches`
--

DROP TABLE IF EXISTS `fac_batches`;
CREATE TABLE IF NOT EXISTS `fac_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_batches`
--

INSERT INTO `fac_batches` (`id`, `fac_id`, `batch_id`) VALUES
(9, 19, 3),
(8, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fac_subject`
--

DROP TABLE IF EXISTS `fac_subject`;
CREATE TABLE IF NOT EXISTS `fac_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fac_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_subject`
--

INSERT INTO `fac_subject` (`id`, `fac_id`, `skill_id`) VALUES
(40, 19, 15),
(23, 8, 18),
(39, 19, 14),
(38, 19, 5),
(22, 8, 15),
(21, 8, 14),
(20, 8, 1),
(37, 19, 3),
(36, 19, 1),
(41, 19, 16),
(53, 26, 16),
(52, 26, 15),
(51, 26, 14),
(50, 26, 9),
(49, 26, 5),
(48, 26, 3),
(73, 11, 16),
(72, 11, 15),
(71, 11, 14),
(70, 11, 10),
(69, 11, 9),
(68, 11, 7),
(67, 11, 6),
(66, 11, 5),
(65, 11, 3),
(64, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

DROP TABLE IF EXISTS `frontend_settings`;
CREATE TABLE IF NOT EXISTS `frontend_settings` (
  `id` int(11) DEFAULT NULL,
  `about_us` blob DEFAULT NULL,
  `terms_conditions` blob DEFAULT NULL,
  `privacy_policy` blob DEFAULT NULL,
  `social_links` blob DEFAULT NULL,
  `copyright_text` blob DEFAULT NULL,
  `about_us_image` blob DEFAULT NULL,
  `slider_images` blob DEFAULT NULL,
  `theme` blob DEFAULT NULL,
  `homepage_note_title` blob DEFAULT NULL,
  `homepage_note_description` blob DEFAULT NULL,
  `website_title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `about_us`, `terms_conditions`, `privacy_policy`, `social_links`, `copyright_text`, `about_us_image`, `slider_images`, `theme`, `homepage_note_title`, `homepage_note_description`, `website_title`) VALUES
(1, 0x3c68313e41626f7574204f7572205363686f6f6c733c2f68313e3c703e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e266e6273703b49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e3c2f703e3c68333e4f7572207363686f6f6c20686973746f7279733c2f68333e3c703e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e3c2f703e3c68333e536f6d657468696e6720696e746572657374696e672061626f7574206f7572207363686f6f6c733c2f68333e3c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f20757365206120706173736167653c2f703e3c756c3e3c6c693e6d616b696e6720746869732074686520666972737420747275652067656e657261746f723c2f6c693e3c6c693e746f2067656e6572617465204c6f72656d20497073756d2077686963683c2f6c693e3c6c693e62757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f3c2f6c693e3c6c693e69732074686174206974206861732061206d6f72652d6f722d6c6573733c2f6c693e3c2f756c3e3c703e416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e3c2f703e, 0x3c68323e5465726d73206f66206f7572207363686f6f6c3c2f68323e3c703e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e266e6273703b49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e3c62723e266e6273703b3c2f703e3c68333e4f7572207363686f6f6c20686973746f72793c2f68333e3c703e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e3c2f703e3c68333e536f6d657468696e6720696e746572657374696e672061626f7574206f7572207363686f6f6c3c2f68333e3c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f20757365206120706173736167653c2f703e3c756c3e3c6c693e6d616b696e6720746869732074686520666972737420747275652067656e657261746f723c2f6c693e3c6c693e746f2067656e6572617465204c6f72656d20497073756d2077686963683c2f6c693e3c6c693e62757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f3c2f6c693e3c6c693e69732074686174206974206861732061206d6f72652d6f722d6c6573733c2f6c693e3c2f756c3e3c703e416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e3c2f703e, 0x3c68323e5072697661637920706f6c696379206f66206f7572207363686f6f6c3c2f68323e3c703e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e266e6273703b49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e3c62723e266e6273703b3c2f703e3c68333e4f7572207363686f6f6c20686973746f72793c2f68333e3c703e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e3c2f703e3c68333e536f6d657468696e6720696e746572657374696e672061626f7574206f7572207363686f6f6c3c2f68333e3c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f20757365206120706173736167653c2f703e3c756c3e3c6c693e6d616b696e6720746869732074686520666972737420747275652067656e657261746f723c2f6c693e3c6c693e746f2067656e6572617465204c6f72656d20497073756d2077686963683c2f6c693e3c6c693e62757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f3c2f6c693e3c6c693e69732074686174206974206861732061206d6f72652d6f722d6c6573733c2f6c693e3c2f756c3e3c703e416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e3c2f703e, 0x5b7b2266616365626f6f6b223a22687474703a5c2f5c2f7777772e66616365626f6f6b2e636f6d5c2f6e6969745f6b756d61737369222c2274776974746572223a22687474703a5c2f5c2f7777772e747769747465722e636f6d5c2f6e6969745f6b756d61737369222c226c696e6b6564696e223a22687474703a5c2f5c2f7777772e6c696e6b6564696e2e636f6d5c2f6e6969745f6b756d61737369222c22676f6f676c65223a22687474703a5c2f5c2f7777772e676f6f676c652e636f6d5c2f6e6969745f6b756d61737369222c22796f7574756265223a22687474703a5c2f5c2f7777772e796f75747562652e636f6d5c2f6e6969745f6b756d61737369222c22696e7374616772616d223a22687474703a5c2f5c2f7777772e696e7374616772616d2e636f6d5c2f6e6969745f6b756d61737369227d5d, 0x416c6c207468652072696768747320726573657276656420746f2043726561746976656974656d, NULL, 0x5b7b227469746c65223a22456475636174696f6e20697320746865206d6f737420706f77657266756c20776561706f6e222c226465736372697074696f6e223a222671756f743b596f752063616e2075736520656475636174696f6e20746f206368616e67652074686520776f726c642671756f743b202d20266c743b692667743b4e656c736f6e204d616e64656c61266c743b5c2f692667743b222c22696d616765223a22736c69646572312e6a7067227d2c7b227469746c65223a224b6e6f776c6564676520697320706f77657220222c226465736372697074696f6e223a222671756f743b456475636174696f6e20697320746865207072656d697365206f662070726f67726573732c20696e20657665727920736f63696574792c20696e2065766572792066616d696c792671756f743b202d20266c743b692667743b4b6f666920416e6e616e266c743b5c2f692667743b222c22696d616765223a22322e6a7067227d2c7b227469746c65223a224861766520616e2061696d20696e206c6966652c20636f6e74696e756f75736c792061637175697265206b6e6f776c65646765222c226465736372697074696f6e223a222671756f743b4e657665722073746f70206669676874696e6720756e74696c20796f752061727269766520617420796f75722064657374696e656420706c6163652671756f743b202d20266c743b692667743b412e502e4a2e20416264756c204b616c616d266c743b5c2f692667743b222c22696d616765223a22312e6a7067227d5d, 0x756c74696d617465, 0x57656c636f6d6520746f204e494954204b756d61737369, 0x4e494954204b756d6173736920697320612050726f66657373696f6e616c20207363686f6f6c20696e204b756d617373692c204768616e612e204974207365727665732073747564656e747320696e206772616465732039e28093313220696e2074686520736f75746865726e2070617274206f66207468652042656c6c65767565205363686f6f6c2044697374726963742c20696e636c7564696e6720746865206e65696768626f72686f6f6473206f662045617374676174652c20466163746f7269612c204e6577706f72742048696c6c732c204e6577706f72742053686f7265732c20536f6d65727365742c205468652053756d6d69742c20616e642053756e7365742e204173206f662074686520323031342d32303135207363686f6f6c20796561722c20746865207072696e636970616c2069732044696f6e205961686f7564792e20546865206d6173636f7420697320746865204b6e696768742c20616e6420746865207363686f6f6c20636f6c6f72732061726520736361726c657420616e6420676f6c642e, 'NIIT Kumassi');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) NOT NULL,
  `description` varchar(225) DEFAULT NULL,
  `cover_picture` varchar(225) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT 1,
  `created_at` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `description`, `cover_picture`, `visible`, `created_at`) VALUES
(1, 'Portfolio', 'School Portfolio', 'cover_158384240156X48Z9801247J.png', 1, 1583875149),
(10, 'items', 'test', 'cover_1583871933228O67V6881172K.png', 1, 1583875149),
(12, 'NIIT FACES', 'people who have been in NIIT', 'cover_1585233451131E93S991090M.png', 1, 1585233451);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `g_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `galleries_id` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `picture_name` varchar(225) NOT NULL,
  `posted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `type` varchar(225) NOT NULL DEFAULT 'item_image',
  PRIMARY KEY (`g_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`g_item_id`, `galleries_id`, `user_id`, `picture_name`, `posted_at`, `type`) VALUES
(2, 1, 1, '1555533034666891477.png', '2019-04-17 20:30:34', 'background_image'),
(4, 1, 1, '1555533034384491263.png', '2019-04-17 20:30:34', 'background_image'),
(11, 1, 1, '1555533058222051256.png', '2019-04-17 20:30:58', 'background_image'),
(12, 1, 1, '1555533058359251458.png', '2019-04-17 20:30:58', 'background_image'),
(13, 1, 1, '1555533058599611134.png', '2019-04-17 20:30:58', 'background_image'),
(14, 1, 1, '1555533058449411383.png', '2019-04-17 20:30:58', 'background_image'),
(15, 1, 1, '1555533058805211440.png', '2019-04-17 20:30:58', 'background_image'),
(16, 1, 1, '1555533058197131111.png', '2019-04-17 20:30:58', 'background_image'),
(17, 1, 1, '1555533058213281248.png', '2019-04-17 20:30:58', 'background_image'),
(18, 1, 1, '1555533058353971221.png', '2019-04-17 20:30:58', 'background_image'),
(19, 1, 1, '1555533058262151050.png', '2019-04-17 20:30:58', 'background_image'),
(21, 1, 1, '1555533058764401388.png', '2019-04-17 20:30:58', 'background_image'),
(22, 1, 1, '1555533058993371331.png', '2019-04-17 20:30:58', 'background_image'),
(23, 1, 1, '1555533058121051475.png', '2019-04-17 20:30:58', 'background_image'),
(24, 1, 1, '1555533058838821288.png', '2019-04-17 20:30:58', 'background_image'),
(26, 1, 11, '1.5660827586625E+18.png', '2019-08-17 22:59:18', 'background_image'),
(38, 10, 11, '158387197559381161.png', '2020-03-10 20:26:15', 'background_image'),
(39, 10, 11, '1583871975407861398.png', '2020-03-10 20:26:15', 'background_image'),
(40, 10, 11, '1583871975957371092.png', '2020-03-10 20:26:15', 'background_image'),
(41, 10, 11, '158387197582821471.png', '2020-03-10 20:26:15', 'background_image'),
(42, 10, 11, '158387197622251280.png', '2020-03-10 20:26:16', 'background_image'),
(43, 10, 11, '1583871976175361414.png', '2020-03-10 20:26:16', 'background_image'),
(44, 10, 11, '1583871976959961165.png', '2020-03-10 20:26:16', 'background_image'),
(45, 10, 11, '1583871976459021268.png', '2020-03-10 20:26:16', 'background_image'),
(46, 10, 11, '1583871976728981172.png', '2020-03-10 20:26:16', 'background_image'),
(47, 10, 11, '1583871976334821245.png', '2020-03-10 20:26:16', 'background_image'),
(48, 12, 1, '1585233483901921106.png', '2020-03-26 14:38:03', 'background_image'),
(49, 12, 1, '1585233483222341257.png', '2020-03-26 14:38:03', 'background_image'),
(50, 12, 1, '1585233483247741102.png', '2020-03-26 14:38:03', 'background_image'),
(51, 12, 1, '1585233483567571084.png', '2020-03-26 14:38:03', 'background_image'),
(52, 12, 1, '1585233483261921335.png', '2020-03-26 14:38:03', 'background_image'),
(53, 12, 1, '158523348351421246.png', '2020-03-26 14:38:03', 'background_image'),
(54, 12, 1, '1585233483495481403.png', '2020-03-26 14:38:03', 'background_image'),
(55, 12, 1, '1585233483532801065.png', '2020-03-26 14:38:03', 'background_image'),
(56, 12, 1, '1585233483216481134.png', '2020-03-26 14:38:03', 'background_image'),
(57, 12, 1, '1585233483985541286.png', '2020-03-26 14:38:03', 'background_image'),
(58, 12, 1, '1585233483617361219.png', '2020-03-26 14:38:03', 'background_image'),
(59, 12, 1, '1585233483707721198.png', '2020-03-26 14:38:03', 'background_image'),
(60, 12, 1, '1585233483159131330.png', '2020-03-26 14:38:03', 'background_image'),
(61, 12, 1, '1585233483574861265.png', '2020-03-26 14:38:03', 'background_image'),
(62, 12, 1, '1585233483734641252.png', '2020-03-26 14:38:03', 'background_image'),
(63, 12, 1, '1585233483341221247.png', '2020-03-26 14:38:03', 'background_image'),
(64, 12, 1, '1585233484997881502.png', '2020-03-26 14:38:04', 'background_image'),
(65, 12, 1, '1585233484833041326.png', '2020-03-26 14:38:04', 'background_image'),
(66, 12, 1, '1585233484542111457.png', '2020-03-26 14:38:04', 'background_image'),
(67, 12, 1, '1585233484242731230.png', '2020-03-26 14:38:04', 'background_image');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `bgcolor` char(7) NOT NULL DEFAULT '#607D8B',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `bgcolor`) VALUES
(1, 'admin', 'Administrator', '#f44336'),
(2, 'faculty', 'Teacher', '#2196f3'),
(3, 'operateur_saisie', 'operateur_saisie', '#673ab7'),
(4, 'students', 'students', '#e91e63'),
(6, 'services_managers', 'Manages services', '#2a9e16');

-- --------------------------------------------------------

--
-- Table structure for table `group_perm`
--

DROP TABLE IF EXISTS `group_perm`;
CREATE TABLE IF NOT EXISTS `group_perm` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_id` int(10) NOT NULL,
  `perm_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_perm`
--

INSERT INTO `group_perm` (`id`, `group_id`, `perm_id`) VALUES
(22, 5, 3),
(23, 5, 4),
(24, 5, 5),
(25, 5, 6),
(26, 5, 7),
(27, 5, 8),
(28, 5, 11),
(29, 5, 12),
(30, 5, 13),
(31, 5, 14),
(61, 6, 3),
(62, 6, 7),
(63, 6, 8),
(64, 6, 11),
(290, 1, 17),
(292, 1, 31),
(293, 1, 29),
(294, 1, 30),
(296, 1, 3),
(297, 1, 14),
(298, 1, 8),
(299, 1, 5),
(300, 1, 11),
(301, 1, 13),
(302, 1, 34),
(303, 1, 1),
(304, 1, 24),
(305, 1, 7),
(306, 1, 6),
(307, 1, 12),
(308, 1, 15),
(310, 1, 28),
(311, 1, 31),
(312, 1, 31),
(314, 1, 35),
(316, 1, 36),
(317, 1, 37),
(318, 1, 38),
(319, 1, 39),
(320, 1, 40),
(321, 1, 41),
(322, 1, 42),
(323, 2, 43),
(324, 1, 45),
(325, 2, 25),
(326, 2, 16),
(327, 2, 46),
(330, 2, 48),
(331, 1, 47),
(332, 2, 49),
(333, 2, 24),
(334, 4, 24),
(335, 4, 17),
(336, 4, 50),
(337, 1, 51),
(338, 4, 52),
(339, 4, 53),
(340, 2, 31),
(341, 4, 31),
(342, 1, 54),
(343, 3, 3),
(344, 3, 31),
(345, 1, 55);

-- --------------------------------------------------------

--
-- Table structure for table `lancer_preferences`
--

DROP TABLE IF EXISTS `lancer_preferences`;
CREATE TABLE IF NOT EXISTS `lancer_preferences` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `lancer_id` int(11) NOT NULL,
  `user_panel` tinyint(1) NOT NULL DEFAULT 0,
  `sidebar_form` tinyint(1) NOT NULL DEFAULT 0,
  `messages_menu` tinyint(1) NOT NULL DEFAULT 0,
  `notifications_menu` tinyint(1) NOT NULL DEFAULT 0,
  `tasks_menu` tinyint(1) NOT NULL DEFAULT 0,
  `user_menu` tinyint(1) NOT NULL DEFAULT 1,
  `ctrl_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `transition_page` tinyint(1) NOT NULL DEFAULT 0,
  `expanded_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `auto_expand_sidebar` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lancer_preferences`
--

INSERT INTO `lancer_preferences` (`id`, `lancer_id`, `user_panel`, `sidebar_form`, `messages_menu`, `notifications_menu`, `tasks_menu`, `user_menu`, `ctrl_sidebar`, `transition_page`, `expanded_sidebar`, `auto_expand_sidebar`) VALUES
(1, 6, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0),
(2, 7, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(3, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(4, 11, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(5, 12, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1),
(6, 13, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(8, 17, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(9, 18, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(10, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(11, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `language_id` int(3) DEFAULT NULL,
  `language` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language_id`, `language`) VALUES
(1, 'Acholi'),
(2, 'Afrikaans'),
(3, 'Akan'),
(4, 'Albanian'),
(5, 'Amharic'),
(6, 'Arabic'),
(7, 'Ashante'),
(8, 'Asl'),
(9, 'Assyrian'),
(10, 'Azerbaijani'),
(11, 'Azeri'),
(12, 'Bajuni'),
(13, 'Basque'),
(14, 'Behdini'),
(15, 'Belorussian'),
(16, 'Bengali'),
(17, 'Berber'),
(18, 'Bosnian'),
(19, 'Bravanese'),
(20, 'Bulgarian'),
(21, 'Burmese'),
(22, 'Cakchiquel'),
(23, 'Cambodian'),
(24, 'Cantonese'),
(25, 'Catalan'),
(26, 'Chaldean'),
(27, 'Chamorro'),
(28, 'Chao-chow'),
(29, 'Chavacano'),
(30, 'Chin'),
(31, 'Chuukese'),
(32, 'Cree'),
(33, 'Croatian'),
(34, 'Czech'),
(35, 'Dakota'),
(36, 'Danish'),
(37, 'Dari'),
(38, 'Dinka'),
(39, 'Diula'),
(40, 'Dutch'),
(41, 'Edo'),
(42, 'English'),
(43, 'Estonian'),
(44, 'Ewe'),
(45, 'Fante'),
(46, 'Farsi'),
(47, 'Fijian Hindi'),
(48, 'Finnish'),
(49, 'Flemish'),
(50, 'French'),
(51, 'French Canadian'),
(52, 'Fukienese'),
(53, 'Fula'),
(54, 'Fulani'),
(55, 'Fuzhou'),
(56, 'Ga'),
(57, 'Gaddang'),
(58, 'Gaelic'),
(59, 'Gaelic-irish'),
(60, 'Gaelic-scottish'),
(61, 'Georgian'),
(62, 'German'),
(63, 'Gorani'),
(64, 'Greek'),
(65, 'Gujarati'),
(66, 'Haitian Creole'),
(67, 'Hakka'),
(68, 'Hakka-chinese'),
(69, 'Hausa'),
(70, 'Hebrew'),
(71, 'Hindi'),
(72, 'Hmong'),
(73, 'Hungarian'),
(74, 'Ibanag'),
(75, 'Ibo'),
(76, 'Icelandic'),
(77, 'Igbo'),
(78, 'Ilocano'),
(79, 'Indonesian'),
(80, 'Inuktitut'),
(81, 'Italian'),
(82, 'Jakartanese'),
(83, 'Japanese'),
(84, 'Javanese'),
(85, 'Kanjobal'),
(86, 'Karen'),
(87, 'Karenni'),
(88, 'Kashmiri'),
(89, 'Kazakh'),
(90, 'Kikuyu'),
(91, 'Kinyarwanda'),
(92, 'Kirundi'),
(93, 'Korean'),
(94, 'Kosovan'),
(95, 'Kotokoli'),
(96, 'Krio'),
(97, 'Kurdish'),
(98, 'Kurmanji'),
(99, 'Kyrgyz'),
(100, 'Lakota'),
(101, 'Laotian'),
(102, 'Latvian'),
(103, 'Lingala'),
(104, 'Lithuanian'),
(105, 'Luganda'),
(106, 'Luo'),
(107, 'Maay'),
(108, 'Macedonian'),
(109, 'Malay'),
(110, 'Malayalam'),
(111, 'Maltese'),
(112, 'Mandarin'),
(113, 'Mandingo'),
(114, 'Mandinka'),
(115, 'Marathi'),
(116, 'Marshallese'),
(117, 'Mien'),
(118, 'Mina'),
(119, 'Mirpuri'),
(120, 'Mixteco'),
(121, 'Moldavan'),
(122, 'Mongolian'),
(123, 'Montenegrin'),
(124, 'Navajo'),
(125, 'Neapolitan'),
(126, 'Nepali'),
(127, 'Nigerian Pidgin'),
(128, 'Norwegian'),
(129, 'Oromo'),
(130, 'Pahari'),
(131, 'Papago'),
(132, 'Papiamento'),
(133, 'Pashto'),
(134, 'Patois'),
(135, 'Pidgin English'),
(136, 'Polish'),
(137, 'Portug.creole'),
(138, 'Portuguese'),
(139, 'Pothwari'),
(140, 'Pulaar'),
(141, 'Punjabi'),
(142, 'Putian'),
(143, 'Quichua'),
(144, 'Romanian'),
(145, 'Russian'),
(146, 'Samoan'),
(147, 'Serbian'),
(148, 'Shanghainese'),
(149, 'Shona'),
(150, 'Sichuan'),
(151, 'Sicilian'),
(152, 'Sinhalese'),
(153, 'Slovak'),
(154, 'Somali'),
(155, 'Sorani'),
(156, 'Spanish'),
(157, 'Sudanese Arabic'),
(158, 'Sundanese'),
(159, 'Susu'),
(160, 'Swahili'),
(161, 'Swedish'),
(162, 'Sylhetti'),
(163, 'Tagalog'),
(164, 'Taiwanese'),
(165, 'Tajik'),
(166, 'Tamil'),
(167, 'Telugu'),
(168, 'Thai'),
(169, 'Tibetan'),
(170, 'Tigre'),
(171, 'Tigrinya'),
(172, 'Toishanese'),
(173, 'Tongan'),
(174, 'Toucouleur'),
(175, 'Trique'),
(176, 'Tshiluba'),
(177, 'Turkish'),
(178, 'Twi'),
(179, 'Ukrainian'),
(180, 'Urdu'),
(181, 'Uyghur'),
(182, 'Uzbek'),
(183, 'Vietnamese'),
(184, 'Visayan'),
(185, 'Welsh'),
(186, 'Wolof'),
(187, 'Yiddish'),
(188, 'Yoruba'),
(189, 'Yupik');

-- --------------------------------------------------------

--
-- Table structure for table `link_country`
--

DROP TABLE IF EXISTS `link_country`;
CREATE TABLE IF NOT EXISTS `link_country` (
  `link_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`link_country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link_country`
--

INSERT INTO `link_country` (`link_country_id`, `country_id`) VALUES
(7, 0),
(20, 81),
(8, 53);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lp__about`
--

DROP TABLE IF EXISTS `lp__about`;
CREATE TABLE IF NOT EXISTS `lp__about` (
  `lp_about_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `slogan` varchar(225) NOT NULL,
  `about_text` text DEFAULT NULL,
  PRIMARY KEY (`lp_about_id`),
  KEY `lp__about_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lp__about`
--

INSERT INTO `lp__about` (`lp_about_id`, `user_id`, `slogan`, `about_text`) VALUES
(3, 6, 'THE NEXT BIG IDEA IS WAITING FOR ITS NEXT BIG CHANGER', 'I am experienced in leveraging agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition.'),
(4, 11, 'Professional Software develloper', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur.'),
(5, 12, 'Professional Ecommerce Website designer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(6, 13, 'BEST NIIT SOFTWARE DEVELOPPER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.'),
(7, 14, 'MOBILE APP DEVELOPER WITH 15 YEARS EXPERIENCE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(8, 15, 'Advanced WordPress Devellopper', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(9, 5, 'Advance mobile app Develloper', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(10, 10, '10 years+ experienced cardiologist', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!');

-- --------------------------------------------------------

--
-- Table structure for table `lp__contact`
--

DROP TABLE IF EXISTS `lp__contact`;
CREATE TABLE IF NOT EXISTS `lp__contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(225) DEFAULT NULL,
  `value` varchar(225) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lp__contact`
--

INSERT INTO `lp__contact` (`contact_id`, `user_id`, `type`, `value`) VALUES
(1, 11, 'facebook', 'tro jean cedric'),
(2, 11, 'address', 'somewhere in USA'),
(3, 11, 'email', 'tro.oppong@gmail.com ; tro.oppong369@gmail.co'),
(4, 11, 'phone', '+233276187686 ; +22543684385'),
(5, 11, 'whatsapp', '+2233276187686'),
(6, 11, 'instagram', 'tro jean cedric'),
(7, 5, 'facebook', 'trojeancedric'),
(8, 5, 'whatsapp', '0856874445'),
(9, 5, 'instagram', 'someinstagram@supercool'),
(10, 5, 'twitter', 'theowsometwiter'),
(11, 5, 'google', 'somegoogleplusowsome'),
(12, 5, 'address', 'some cool place'),
(13, 5, 'email', 'someone@gmail.com'),
(14, 5, 'phone', '796346546'),
(15, 1, 'whatsapp', '+233 27 618 7686');

-- --------------------------------------------------------

--
-- Table structure for table `lp__education`
--

DROP TABLE IF EXISTS `lp__education`;
CREATE TABLE IF NOT EXISTS `lp__education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `academy_year` varchar(225) NOT NULL,
  `certificate_title` varchar(225) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lp__education`
--

INSERT INTO `lp__education` (`education_id`, `user_id`, `academy_year`, `certificate_title`, `details`) VALUES
(1, 11, 'January 2018 - July 2019', 'SkillPay Expert-Project Certification', 'here is some details about how i got that certificate and i, can assure you that you also want to have that certificate '),
(2, 11, 'January 2018 - July 2019', 'SkillPay Expert-hacking Certification', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores aspernatur distinctio fugiat fugit, illo libero non quibusdam rem soluta tenetur? Cum eaque illo ipsum magnam provident quas quo repudiandae, voluptate.'),
(3, 11, 'January 2014 - December 2016', 'Google Assistant Certification', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores aspernatur distinctio fugiat fugit, illo libero non quibusdam rem soluta tenetur? Cum eaque illo ipsum magnam provident quas quo repudiandae, voluptate.'),
(4, 13, 'January 2017 - December 2017', 'MICROSOFT OFFICE CERTIFIED', 'got a microsoft certification at niit after 6 month of deep learning'),
(5, 15, 'January 2014 - March 2019', 'MICROSOFT OFFICE CERTIFIED', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, commodi dolores et, eveniet exercitationem harum illo, impedit laborum maxime neque nisi nobis porro quam quisquam quod reiciendis sapiente tempora ut.Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, commodi dolores et, eveniet'),
(6, 15, 'January 2014 - December 2014', 'Udemy CERTIFIED', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, commodi dolores et, eveniet exercitationem harum illo, impedit laborum maxime neque nisi nobis porro quam quisquam quod reiciendis sapiente tempora ut.Lorem ipsum dolor sit amet, consectetur adipisicing elit. A, commodi dolores et, eveniet'),
(7, 14, 'June 2018 - June 2019', 'BECE', 'Basic Education Certification Employ'),
(8, 14, 'January 2019 - September 2019', 'Professional GoBe Eater', 'i got this certificate for eating gobe every day in ghana'),
(9, 5, 'February 2016 - July 2016', 'ENGLISH CERTIFICATE FOR BEGINER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncill'),
(10, 5, 'August 2016 - December 2016', 'ENGLISH CERTIFICATE FOR UPPER INTERMEDIATE', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncill'),
(11, 1, 'May 2020 - June 2020', 'VAST-IT Best Employee', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncill');

-- --------------------------------------------------------

--
-- Table structure for table `lp__languages`
--

DROP TABLE IF EXISTS `lp__languages`;
CREATE TABLE IF NOT EXISTS `lp__languages` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `language` varchar(225) DEFAULT NULL,
  `level` varchar(225) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lp__languages`
--

INSERT INTO `lp__languages` (`language_id`, `user_id`, `language`, `level`) VALUES
(1, 11, 'english', 'conversational'),
(2, 11, 'french', 'native or bilingual'),
(4, 11, 'akan', 'basic'),
(6, 11, 'finnish', 'basic'),
(7, 5, 'english', 'conversational'),
(8, 5, 'twi', 'fluent'),
(9, 1, 'french', 'fluent'),
(10, 1, 'english', 'fluent');

-- --------------------------------------------------------

--
-- Table structure for table `lp__portfolio`
--

DROP TABLE IF EXISTS `lp__portfolio`;
CREATE TABLE IF NOT EXISTS `lp__portfolio` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `picture` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `date` varchar(225) NOT NULL,
  `service_group_id` int(11) NOT NULL,
  `client` varchar(225) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`portfolio_id`),
  KEY `user_id_ind` (`user_id`),
  KEY `service_group_id_ind` (`service_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lp__portfolio`
--

INSERT INTO `lp__portfolio` (`portfolio_id`, `user_id`, `picture`, `title`, `date`, `service_group_id`, `client`, `details`) VALUES
(2, 11, '1555955155130U85W1251303O.png', 'infotech project', '2019-04-23', 3, 'Tech soft wewewe', 'Our new Project every processes had become fragmented; meaning quality and service were inconsistent. This lack of standardization was adversely impacting operating costs, productivity and customer satisfaction. For several years now Payfast has worked strategically with innovations as a means of developing new solutions, products and services. In line with this vision, Success was approached to find new payments solutions to offer Payfast customers on their website, including open invoice and partial payments options.'),
(6, 7, '15560437310X77D1191209U.png', 'niit', '2019-04-26', 3, 'mr. samir', 'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.'),
(10, 6, '1558119970196B94F1341477L.png', 'our project', '2019-05-03', 1, 'Facebook', 'lorem'),
(11, 12, '155855453864K80Z7601134N.png', 'jurisPme project', '2019-01-10', 4, 'JurisPME', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(12, 12, '155857768352M58V6631315W.png', 'Vuclip', '2019-05-09', 3, 'Vuclip', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(13, 12, '1561718939356J64L2651290O.png', 'infotech project', '2019-06-26', 1, 'JurisPME', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(69, 13, '1574729429101O53T4811143G.png', 'E-COMMER APP DEV', 'March 2019', 3, 'AMAXOM', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.'),
(70, 13, '1574729519183J57F8391231Y.png', 'Event management', 'September 2019', 4, '2asoft', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.'),
(71, 13, '1574729597124X19X8861094J.png', 'Javascript Paint Library', 'August 2019', 3, 'Facexom', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.'),
(72, 13, '1574730313135W78G8971423U.png', 'ANDROID MATERIAL DESIGN', 'October 2019', 1, 'Tech soft', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam amet atque consequatur dicta eaque earum eum facere incidunt ipsum itaque libero nobis, quis recusandae sit, sunt totam! Dicta, sint.'),
(73, 15, '1574807529286N11S4111027W.png', 'Woocomerce ', 'May 2012', 4, 'SOftonix', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(74, 15, '157480764863D94Y1081412K.png', 'Bootswatch', 'August 2018', 4, 'Tech soft', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(75, 15, '157480776185R88V8221100F.png', 'GlobalPosition', 'February 2015', 1, 'Tech soft', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(76, 14, '157488302991Y17M8841195R.png', 'Admin panel v4', 'August 2018', 4, 'Tech soft', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!'),
(77, 14, '157488332455R30Q4991187J.png', 'origami', 'September 2019', 3, 'JurisPME', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\n'),
(78, 14, '157488353239Z20O5391124Z.png', 'Com Sell Away', 'April 2019', 5, 'Tech soft', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam delectus, dicta dolor dolorum eius expedita id inventore ipsam ipsum iure magni maxime modi molestiae omnis quasi quis repellendus totam, voluptatibus!\r\n'),
(80, 14, '1574886001345V85V8391005D.png', 'our project', 'May 2019', 4, 'JurisPME', 'getCroppedCanvas({\r\n                        width: 400,\r\n                        height: 344,\r\n                    });getCroppedCanvas({\r\n                        width: 400,\r\n                        height: 344,\r\n                    });getCroppedCanvas({\r\n                        width: 400,\r\n                        height: 344,\r\n                    });'),
(81, 14, '1574887109208F54C5411034U.png', 'est', 'dasdf', 3, 'asdfasdf', 'asdfasdfasdfasd'),
(82, 11, '1577057274189Z22Q2101297K.png', 'GOW', 'January 2019', 3, 'newage tech', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad architecto aspernatur at dolorum ea eaque, enim, est facere itaque laboriosam minima minus molestiae natus neque nesciunt nostrum omnis quasi recusandae!'),
(83, 11, '157705735863S74J3381035I.png', 'GOW 2', 'September 2019', 4, 'some client', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad architecto aspernatur at dolorum ea eaque, enim, est facere itaque laboriosam minima minus molestiae natus neque nesciunt nostrum omnis quasi recusandae!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad architecto aspernatur at dolorum ea eaque, enim, est facere itaque laboriosam minima minus molestiae natus neque nesciunt nostrum omnis quasi recusandae!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad architecto aspernatur at dolorum ea eaque, enim, est facere itaque laboriosam minima minus molestiae natus neque nesciunt nostrum omnis quasi recusandae!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad architecto aspernatur at dolorum ea eaque, enim, est facere itaque laboriosam minima minus molestiae natus neque nesciunt nostrum omnis quasi recusandae!'),
(84, 11, '1578283290337T13H9151325C.png', 'Mercedes Coches', 'May 2018', 3, 'infotecg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(85, 11, '1578283568137X89K4241399L.png', 'Porche Carera', 'June 2018', 1, 'most famous', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(86, 11, '1578283649202Y89T6831191A.png', 'monstermash', 'January 2020', 6, 'very rich', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(87, 11, '157828376936C87B6561227H.png', 'roro', 'February 2019', 5, 'very successfull', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!'),
(88, 11, '1581320087322G65P1571248R.png', 'Makoma Kids', 'February 2020', 3, 'Makoma', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(89, 1, '158514838814A52P6991247O.png', 'test services', 'February 2020', 3, 'somecompany', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias atque consequuntur dicta ea eligendi expedita ipsam libero nulla officia quae quia, quisquam saepe sapiente sint, temporibus totam unde veritatis, voluptas?'),
(90, 1, '1585157013157F45L4001374Y.png', 'welcome', 'January 2020', 3, 'somebigcompany', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias atque consequuntur dicta ea eligendi expedita ipsam libero nulla officia quae quia, quisquam saepe sapiente sint, temporibus totam unde veritatis, voluptas?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Alias atque consequuntur dicta ea eligendi expedita ipsam libero nulla officia quae quia, quisquam saepe sapiente sint, temporibus totam unde veritatis, voluptas?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Alias atque consequuntur dicta ea eligendi expedita ipsam libero nulla officia quae quia, quisquam saepe sapiente sint, temporibus totam unde veritatis, voluptas?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Alias atque consequuntur dicta ea eligendi expedita ipsam libero nulla officia quae quia, quisquam saepe sapiente sint, temporibus totam unde veritatis, voluptas?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Alias atque consequuntur dicta ea eligendi expedita ipsam libero nulla officia quae quia, quisquam saepe sapiente sint, temporibus totam unde veritatis, voluptas?'),
(91, 1, '1585174110278K60M3161183S.png', 'ABOUT ABA PA TRADING', 'January 2020', 5, 'jhjkhk', 'hgjkhklhkjhkj'),
(92, 5, '158522333983U57Z2091025V.png', 'invitation card', 'February 2020', 3, 'ANGELINA', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat '),
(93, 5, '1585224153135X53U7791002E.png', 'Upgrade for your uninstaller', 'February 2018', 5, 'Tech soft', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(94, 1, '158888568598P81E8341088U.png', 'adfsdfs', 'January 2020', 7, 'somecompany', 'lkfjdl;kjgd;slkfgj;ldkjfg;lkjdlf');

-- --------------------------------------------------------

--
-- Table structure for table `lp__skills`
--

DROP TABLE IF EXISTS `lp__skills`;
CREATE TABLE IF NOT EXISTS `lp__skills` (
  `lancer_skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_id_list` varchar(225) NOT NULL,
  `skills_level` varchar(225) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`lancer_skill_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lp__skills`
--

INSERT INTO `lp__skills` (`lancer_skill_id`, `skill_id_list`, `skills_level`, `user_id`) VALUES
(1, '2~3~5~6~4~7~1~14~16', '1:100,2:97,3:67,4:0', 11),
(2, '1~3', '1:89', 6),
(24, '7~3~6~1~5', '0', 12),
(29, '1~7~15~3~5~14~16', '1:100,3:100', 1),
(30, '1~3', '1:100,3:100', 5),
(27, '3', '0', 17),
(26, '9~7~10', '0', 15),
(25, '1', '0', 13);

-- --------------------------------------------------------

--
-- Table structure for table `notice_event`
--

DROP TABLE IF EXISTS `notice_event`;
CREATE TABLE IF NOT EXISTS `notice_event` (
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'event',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by_user` int(11) NOT NULL DEFAULT 0,
  `visible` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notice_event`
--

INSERT INTO `notice_event` (`type`, `id`, `title`, `date`, `content`, `image`, `created_by_user`, `visible`, `status`) VALUES
('event', 24, 'Celebrating', 1583452800, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium adipisci asperiores consequatur corporis, cumque ea eaque ex ipsa nesciunt non numquam pariatur provident quae, quas reiciendis reprehenderit rerum veritatis voluptatem?\r\n', '1583359101238U85W4821154I.png', 11, 1, 1),
('event', 26, 'event2', 1585267200, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium adipisci asperiores consequatur corporis, cumque ea eaque ex ipsa nesciunt non numquam pariatur provident quae, quas reiciendis reprehenderit rerum veritatis voluptatem?\r\n', '1583355049262K36O5191066D.png', 11, 1, 1),
('event', 27, 'test event2', 1585440000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium adipisci asperiores consequatur corporis, cumque ea eaque ex ipsa nesciunt non numquam pariatur provident quae, quas reiciendis reprehenderit rerum veritatis voluptatem?\r\n', '1583355106246A48S2221235Q.png', 11, 1, 1),
('notice', 28, 'notice 1', 1583366400, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis dolore dolorem eaque error itaque magnam nesciunt nisi nostrum, numquam quos repellendus repudiandae saepe sint totam veritatis! Dignissimos et officia repellendus!\r\n', '158336043921S11C2081046T.png', 11, 1, 1),
('notice', 29, 'motice 2', 1585440000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores cumque ducimus error ipsum libero numquam repudiandae similique voluptas. Adipisci atque aut doloremque enim explicabo fugit ipsam ipsum iste numquam tempora.\r\n', '15833605917R46V2081335Q.png', 11, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `perm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `perm_name` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order` int(11) NOT NULL DEFAULT 1,
  `visible` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`perm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perm_id`, `perm_name`, `menu_name`, `slug`, `level`, `parent_id`, `url`, `icon`, `created_at`, `order`, `visible`) VALUES
(5, 'Linked country', 'head', 'linked-country', 0, 0, 'admin/linked_country', 'fs-17 m-r-5 fa fa-link', '2020-07-09 10:53:13', 15, 1),
(6, 'Security Group', 'head', 'security-group', 0, 0, 'admin/groups', 'm-r-5 fa fa-shield', '2020-07-09 10:53:13', 29, 1),
(7, 'Ecoles', 'head', 'services-groups', 0, 0, 'admin/ecoles', 'm-r-5 mdi mdi-school', '2020-07-09 10:50:41', 2, 1),
(8, 'Matieres', 'head', 'skills', 0, 0, 'admin/skills', 'm-r-5 mdi mdi-steering fs-17', '2020-07-09 10:56:21', 4, 1),
(11, 'Professions', 'head', 'professions', 0, 0, 'admin/professions', 'm-r-5 fs-17 fas fa-diagnoses', '2020-07-09 10:53:13', 16, 1),
(12, 'Notices & Events', 'head', 'events', 0, 0, 'admin/notice_event/notice_event', 'm-r-5 fs-17 mdi mdi-calendar-multiple', '2020-07-09 10:53:13', 30, 1),
(13, 'Settings', 'head', 'preferences', 0, 0, '', 'fa fa-cogs m-r-5', '2020-07-09 10:53:13', 17, 1),
(14, 'Menus', 'head', 'menus', 0, 0, 'admin/menu', 'mdi mdi-menu fs-17 m-r-5', '2020-07-09 10:56:21', 14, 1),
(15, 'Classes', 'head', 'batches', 0, 0, 'admin/batches', 'fas fa-users fs-17 m-r-5', '2020-07-09 10:53:13', 3, 1),
(16, 'Quiz Management', 'head', 'quiz-management', 0, 0, 'faculty/quiz', 'fas fa-question fs-17', '2020-07-09 10:49:30', 32, 1),
(17, 'Dashboard', 'head', 'dashboard', 0, 0, 'admin/dashboard', 'mdi mdi-view-dashboard', '2020-07-09 10:49:30', 1, 1),
(24, 'Interface', 'head', 'interface', 0, 0, 'admin/prefs/interfaces', 'fas fa-laptop m-r-5', '2020-07-09 10:53:13', 28, 1),
(25, 'Batch Management', 'head', 'batch-management', 0, 0, 'faculty/batches', ' fas fa-users', '2020-07-09 10:56:21', 11, 1),
(26, 'Attendances Report', 'head', 'attendances-report', 0, 0, 'faculty/batches/attendance_report', 'fas fa-calendar-alt', '2020-07-09 10:56:21', 13, 1),
(28, 'Users', 'head', 'users', 0, 0, '', 'fa fa-users', '2020-07-09 10:56:21', 6, 1),
(29, 'List', 'sub', 'list', 1, 28, 'admin/users', 'mdi-account-circle mdi', '2020-07-09 10:56:26', 9, 1),
(30, 'Create', 'sub', 'create', 1, 28, 'admin/users/create', 'mdi-account-multiple-plus mdi', '2020-07-09 10:56:26', 10, 1),
(31, 'profile', 'sub', 'profile', 1, 28, 'admin/users/profile', 'fas fa-dot-circle', '2020-07-09 10:56:27', 8, 0),
(34, 'General', 'sub', 'general', 1, 13, 'admin/prefs', 'mdi-settings mdi', '2020-07-09 10:56:27', 19, 1),
(35, 'Homepage Slider', 'sub', 'homepage-slider', 1, 13, 'admin/prefs/homepage_slider', 'mdi-camera-burst mdi', '2020-07-09 10:56:27', 22, 1),
(36, 'Gallery', 'sub', 'gallery', 1, 13, 'admin/gallery', 'mdi-collage mdi', '2020-07-09 10:56:27', 20, 1),
(37, 'About Us', 'sub', 'about-page', 1, 13, 'admin/prefs/about_us', 'fa fa-question', '2020-07-09 10:56:27', 23, 1),
(38, 'Editor', 'head', 'editor', 0, 0, 'admin/prefs/editor', 'fa fa-edit', '2020-07-09 10:56:21', 5, 0),
(39, 'Terms & Conditions', 'sub', 'terms-conditions', 1, 13, 'admin/prefs/terms_conditions', ' fas fa-handshake', '2020-07-09 10:56:27', 25, 1),
(40, 'Privacy Policy', 'sub', 'privacy-policy', 1, 13, 'admin/prefs/privacy_policy', 'fas fa-user-secret', '2020-07-09 10:56:27', 26, 1),
(41, 'Gallery Images', 'sub', 'gallery-images', 1, 13, 'admin/gallery/gallery', 'fa fa-image', '2020-07-09 10:56:27', 21, 0),
(42, 'System Settings', 'sub', 'system-settings', 1, 13, 'admin/prefs/system_settings', 'fa fa-gear', '2020-07-09 10:56:27', 18, 1),
(43, 'Attendances Report', 'head', 'attendances-report', 0, 0, 'faculty/batches/attendance_report', 'mdi mdi-calendar', '2020-07-09 10:56:21', 12, 1),
(45, 'Batches Student', 'head', 'batches-student', 0, 0, 'admin/batches/student_batches', 'fa fa-users', '2020-07-09 10:49:30', 31, 0),
(46, 'Questions', 'head', 'questions', 0, 0, 'admin/skills/questions', 'fa fa-question', '2020-07-09 10:49:30', 33, 0),
(47, 'Manage Questions', 'head', 'manage-questions', 0, 0, 'admin/skills/questions', 'fa fa-question', '2020-07-09 10:49:30', 34, 0),
(51, 'edit users', 'sub', 'edit-users', 1, 28, 'admin/users/edit', 'fa fa-user', '2020-07-09 10:56:27', 7, 0),
(54, 'Faculties', 'sub', 'faculties', 1, 13, 'admin/prefs/faculties', 'fas fa-dot-circle', '2020-07-09 10:56:27', 27, 0),
(55, 'Language', 'sub', 'language', 1, 13, 'admin/prefs/language', 'fa fa-language', '2020-07-09 10:56:27', 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
CREATE TABLE IF NOT EXISTS `professions` (
  `profession_id` int(11) NOT NULL AUTO_INCREMENT,
  `profession_title` varchar(255) NOT NULL,
  `description` varchar(225) NOT NULL DEFAULT 'give some description',
  PRIMARY KEY (`profession_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`profession_id`, `profession_title`, `description`) VALUES
(1, 'Programmers', 'give some description'),
(2, 'Doctor', 'give some description'),
(3, 'Entrepreneur', 'give some description'),
(4, 'consultant', 'give some description'),
(6, 'nurses', 'give some description'),
(7, 'teacher', 'give some description');

-- --------------------------------------------------------

--
-- Table structure for table `programing__angularjs_answ`
--

DROP TABLE IF EXISTS `programing__angularjs_answ`;
CREATE TABLE IF NOT EXISTS `programing__angularjs_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__angularjs_qst`
--

DROP TABLE IF EXISTS `programing__angularjs_qst`;
CREATE TABLE IF NOT EXISTS `programing__angularjs_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__css3_answ`
--

DROP TABLE IF EXISTS `programing__css3_answ`;
CREATE TABLE IF NOT EXISTS `programing__css3_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programing__css3_answ`
--

INSERT INTO `programing__css3_answ` (`id`, `question_id`, `option`, `option_state`) VALUES
(1, 1, '2', 'true'),
(2, 1, '1', 'false'),
(3, 1, '122', 'false'),
(4, 2, 'a game', 'false'),
(5, 2, 'a desktop application', 'false'),
(6, 2, 'a programing language', 'true'),
(7, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab atque cupiditate dignissimos dolorem doloribus eius esse labore libero magni molestias nemo nobis quae repellendus, saepe similique tempore, tenetur, unde voluptatem!', 'false'),
(8, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab atque cupiditate dignissimos dolorem doloribus eius esse labore libero magni molestias nemo nobis quae repellendus, saepe similique tempore, tenetur, unde voluptatem!', 'true'),
(9, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab atque cupiditate dignissimos dolorem doloribus eius esse labore libero magni molestias nemo nobis quae repellendus, saepe similique tempore, tenetur, unde voluptatem!', 'false'),
(10, 4, 'a programming language', 'true'),
(11, 4, 'a spoken language', 'false'),
(12, 4, 'a native language', 'false'),
(13, 5, '5', 'false'),
(14, 5, '4', 'true'),
(15, 5, '22', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `programing__css3_qst`
--

DROP TABLE IF EXISTS `programing__css3_qst`;
CREATE TABLE IF NOT EXISTS `programing__css3_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programing__css3_qst`
--

INSERT INTO `programing__css3_qst` (`id`, `question`, `type`, `user_id`) VALUES
(1, '1+1 = ?', 'exam', 11),
(2, 'what is php', 'exam', 11),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!', 'exam', 11),
(4, 'what is css', 'exam', 11),
(5, 'how many is 2+2', 'exam', 11);

-- --------------------------------------------------------

--
-- Table structure for table `programing__html5_answ`
--

DROP TABLE IF EXISTS `programing__html5_answ`;
CREATE TABLE IF NOT EXISTS `programing__html5_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__html5_qst`
--

DROP TABLE IF EXISTS `programing__html5_qst`;
CREATE TABLE IF NOT EXISTS `programing__html5_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__java_answ`
--

DROP TABLE IF EXISTS `programing__java_answ`;
CREATE TABLE IF NOT EXISTS `programing__java_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__java_qst`
--

DROP TABLE IF EXISTS `programing__java_qst`;
CREATE TABLE IF NOT EXISTS `programing__java_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__jquery_answ`
--

DROP TABLE IF EXISTS `programing__jquery_answ`;
CREATE TABLE IF NOT EXISTS `programing__jquery_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__jquery_qst`
--

DROP TABLE IF EXISTS `programing__jquery_qst`;
CREATE TABLE IF NOT EXISTS `programing__jquery_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__nodejs_answ`
--

DROP TABLE IF EXISTS `programing__nodejs_answ`;
CREATE TABLE IF NOT EXISTS `programing__nodejs_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__nodejs_qst`
--

DROP TABLE IF EXISTS `programing__nodejs_qst`;
CREATE TABLE IF NOT EXISTS `programing__nodejs_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__php_answ`
--

DROP TABLE IF EXISTS `programing__php_answ`;
CREATE TABLE IF NOT EXISTS `programing__php_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programing__php_answ`
--

INSERT INTO `programing__php_answ` (`id`, `question_id`, `option`, `option_state`) VALUES
(1, 1, '<?php ?>', 'true'),
(2, 1, '<?php php?>', 'false'),
(3, 1, '<!php !>', 'false'),
(4, 2, 'const username = John Doe', 'false'),
(5, 2, 'define(\"username\" , \"John Doe\");', 'true'),
(6, 2, 'username = const(John Doe)', 'false'),
(14, 3, 'February', 'false'),
(13, 3, 'january', 'false'),
(15, 3, 'March', 'true'),
(16, 4, 'a computer is an electronic device that takes an input process it and produce an output', 'true'),
(17, 4, 'a computer is a laptop', 'false'),
(18, 4, 'a computer is a program', 'false'),
(19, 5, '1', 'false'),
(20, 5, '11', 'true'),
(21, 5, '111', 'false'),
(22, 6, '2', 'false'),
(23, 6, '222', 'false'),
(24, 6, '22', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `programing__php_qst`
--

DROP TABLE IF EXISTS `programing__php_qst`;
CREATE TABLE IF NOT EXISTS `programing__php_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 11,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programing__php_qst`
--

INSERT INTO `programing__php_qst` (`id`, `question`, `user_id`, `type`) VALUES
(1, 'what is the default coding block of a php program', 11, 'exam'),
(2, 'which one of the following option represent a valid way of declaring a constant variable in PHP', 11, 'exam'),
(3, 'what is ghana indepedance month<?php ?> lalololol', 19, 'exam'),
(4, 'what is a computer', 19, 'exam'),
(5, '111111111', 19, 'quiz'),
(6, '222222222', 19, 'quiz');

-- --------------------------------------------------------

--
-- Table structure for table `programing__python_answ`
--

DROP TABLE IF EXISTS `programing__python_answ`;
CREATE TABLE IF NOT EXISTS `programing__python_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__python_qst`
--

DROP TABLE IF EXISTS `programing__python_qst`;
CREATE TABLE IF NOT EXISTS `programing__python_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__sqladministration_answ`
--

DROP TABLE IF EXISTS `programing__sqladministration_answ`;
CREATE TABLE IF NOT EXISTS `programing__sqladministration_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__sqladministration_qst`
--

DROP TABLE IF EXISTS `programing__sqladministration_qst`;
CREATE TABLE IF NOT EXISTS `programing__sqladministration_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__sqlmanagement_answ`
--

DROP TABLE IF EXISTS `programing__sqlmanagement_answ`;
CREATE TABLE IF NOT EXISTS `programing__sqlmanagement_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programing__sqlmanagement_answ`
--

INSERT INTO `programing__sqlmanagement_answ` (`id`, `question_id`, `option`, `option_state`) VALUES
(1, 1, '1', 'true'),
(2, 1, '2', 'false'),
(3, 1, '3', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `programing__sqlmanagement_qst`
--

DROP TABLE IF EXISTS `programing__sqlmanagement_qst`;
CREATE TABLE IF NOT EXISTS `programing__sqlmanagement_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programing__sqlmanagement_qst`
--

INSERT INTO `programing__sqlmanagement_qst` (`id`, `question`, `type`, `user_id`) VALUES
(1, '1+0', 'exam', 11);

-- --------------------------------------------------------

--
-- Table structure for table `programing__swift_answ`
--

DROP TABLE IF EXISTS `programing__swift_answ`;
CREATE TABLE IF NOT EXISTS `programing__swift_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__swift_qst`
--

DROP TABLE IF EXISTS `programing__swift_qst`;
CREATE TABLE IF NOT EXISTS `programing__swift_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__wordpress_answ`
--

DROP TABLE IF EXISTS `programing__wordpress_answ`;
CREATE TABLE IF NOT EXISTS `programing__wordpress_answ` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `option_state` varchar(7) NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programing__wordpress_qst`
--

DROP TABLE IF EXISTS `programing__wordpress_qst`;
CREATE TABLE IF NOT EXISTS `programing__wordpress_qst` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'exam',
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pro_clients`
--

DROP TABLE IF EXISTS `pro_clients`;
CREATE TABLE IF NOT EXISTS `pro_clients` (
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `prefession_id` int(11) NOT NULL,
  `specialisation_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `public_preferences`
--

DROP TABLE IF EXISTS `public_preferences`;
CREATE TABLE IF NOT EXISTS `public_preferences` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `transition_page` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `public_preferences`
--

INSERT INTO `public_preferences` (`id`, `transition_page`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_params`
--

DROP TABLE IF EXISTS `quiz_params`;
CREATE TABLE IF NOT EXISTS `quiz_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_id` varchar(225) NOT NULL,
  `max_question` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `random_question` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `due_date` varchar(30) NOT NULL DEFAULT '1584403200',
  `status` varchar(225) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_params`
--

INSERT INTO `quiz_params` (`id`, `skill_id`, `max_question`, `time`, `random_question`, `batch_id`, `created_at`, `due_date`, `status`) VALUES
(10, '1', 2, 5, 1, 3, '1584348548', '1584403200', 'pending'),
(16, '1', 1, 30, 1, 3, '1584583741', '1584584880', 'pending'),
(19, '1', 1, 5, 1, 1, '1589981458', '1590067800', 'pending'),
(8, '1', 2, 10, 1, 1, '1584276072', '1584403200', 'pending'),
(9, '1', 2, 5, 1, 1, '1584317555', '1584403200', 'pending'),
(17, '1', 2, 30, 1, 1, '1584584031', '1584583980', 'pending'),
(18, '1', 2, 30, 1, 1, '1585237448', '1585237500', 'pending'),
(14, '1', 1, 30, 1, 1, '1584580889', '1584580980', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_result`
--

DROP TABLE IF EXISTS `quiz_result`;
CREATE TABLE IF NOT EXISTS `quiz_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `score` varchar(30) NOT NULL,
  `total_mistakes` int(11) NOT NULL,
  `total_correct` int(11) NOT NULL,
  `attempted` int(11) NOT NULL,
  `not_attempted` int(11) NOT NULL,
  `skill_name` varchar(225) DEFAULT NULL,
  `total_question` int(11) DEFAULT NULL,
  `grade` varchar(225) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_result`
--

INSERT INTO `quiz_result` (`id`, `user_id`, `quiz_id`, `score`, `total_mistakes`, `total_correct`, `attempted`, `not_attempted`, `skill_name`, `total_question`, `grade`, `date`) VALUES
(1, 21, 8, '100', 0, 2, 2, 0, 'php', 2, 'Outstanding', 1584304892),
(2, 21, 9, '50', 1, 1, 2, 0, 'php', 2, 'Satisfactory', 1584318018),
(3, 22, 10, '100', 0, 2, 2, 0, 'php', 2, 'Outstanding', 1584354065),
(4, 22, 9, '50', 1, 1, 2, 0, 'php', 2, 'Satisfactory', 1584354097),
(5, 21, 16, '100', 0, 1, 1, 0, 'php', 1, 'Outstanding', 1584584874),
(6, 21, 18, '100', 0, 2, 2, 0, 'php', 2, 'Outstanding', 1585237478),
(7, 21, 19, '100', 0, 1, 1, 0, 'php', 1, 'Outstanding', 1589994193),
(8, 24, 19, '100', 0, 1, 1, 0, 'php', 1, 'Outstanding', 1589994259);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
CREATE TABLE IF NOT EXISTS `schools` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(21845) DEFAULT NULL,
  `phone` varchar(21845) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Hiro Nakamura', 'School Address', '+123123123123'),
(2, 'shcool 2', 'shcool Address', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `ecoles`
--

DROP TABLE IF EXISTS `ecoles`;
CREATE TABLE IF NOT EXISTS `ecoles` (
  `service_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `service_title` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon` varchar(225) NOT NULL DEFAULT 'fas fa-hand-holding',
  `type` varchar(225) NOT NULL DEFAULT 'user_defined',
  PRIMARY KEY (`service_group_id`),
  KEY `service_user_id_ind` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecoles`
--

INSERT INTO `ecoles` (`service_group_id`, `user_id`, `service_title`, `description`, `icon`, `type`) VALUES
(1, 11, 'Mobile Apps', 'develope mobile apps', 'fas fa-mobile-alt', 'computer science'),
(3, 11, 'Graphic Design', 'graphical art', 'fas fa-paint-brush', 'computer science'),
(4, 11, 'Web Design', 'create web site', 'fab fa-wordpress', 'computer science'),
(5, 11, 'Desktop Apps', 'Create desktop application for window and Mac', 'fas fa-desktop', 'computer science'),
(6, 11, 'Web Development', 'create web application', 'fas fas fa-code', 'computer science'),
(7, 11, 'Accountant & Consulting', 'consult', 'mdi mdi-calculator fs-17', 'business'),
(8, 11, 'Admin support', 'get help from admin', 'fas fa-hand-holding fs-17', 'default'),
(9, 11, 'Customer Service', 'custom', 'fas fa-hand-holding-usd fs-17', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(225) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `interface` varchar(225) NOT NULL,
  `label` varchar(224) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 11,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `interface`, `label`, `user_id`) VALUES
(1, 'skill_test_max_question', '20', 'lancer', 'skill test max questions', 11),
(2, 'sidebar_menu_color', 'orange', 'admin', 'sidebar active menu color', 11),
(3, 'sidebar_bg_color', 'white', 'admin', 'sidebar active background color', 11),
(4, 'sidebar_bg_img', 'sidebar-3.jpg', 'admin', 'sidebar active background color', 11);

-- --------------------------------------------------------

--
-- Table structure for table `skill_list`
--

DROP TABLE IF EXISTS `skill_list`;
CREATE TABLE IF NOT EXISTS `skill_list` (
  `skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `skill_name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon` varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL,
  `qst_table_name` varchar(225) NOT NULL DEFAULT 'none',
  `answ_table_name` varchar(225) NOT NULL DEFAULT 'none',
  `exam_time` int(11) NOT NULL DEFAULT 20,
  `max_exam_question` int(11) NOT NULL DEFAULT 20,
  PRIMARY KEY (`skill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill_list`
--

INSERT INTO `skill_list` (`skill_id`, `user_id`, `skill_name`, `description`, `icon`, `type`, `qst_table_name`, `answ_table_name`, `exam_time`, `max_exam_question`) VALUES
(1, 11, 'php', 'programming language for creating web application', 'mdi-language-php mdi fs-20', 'programing', 'programing__php_qst', 'programing__php_answ', 20, 2),
(2, 11, 'python', 'programming language', 'mdi-language-python mdi fs-20', 'programing', 'programing__python_qst', 'programing__python_answ', 20, 20),
(3, 11, 'css3', 'programming language html styling sheet language', 'mdi-language-css3 mdi fs-20', 'programing', 'programing__css3_qst', 'programing__css3_answ', 20, 3),
(4, 11, 'swift', 'programming language', 'mdi-language-swift mdi fs-20', 'programing', 'programing__swift_qst', 'programing__swift_answ', 20, 20),
(5, 11, 'html 5', 'programming language for creating web design', 'mdi mdi-language-html5 fs-20', 'programing', 'programing__html5_qst', 'programing__html5_answ', 35, 20),
(6, 11, 'JQuery', 'programming language JavaScript library', 'mdi-code-not-equal-variant mdi fs-20', 'programing', 'programing__jquery_qst', 'programing__jquery_answ', 21, 20),
(7, 11, 'Angular Js', 'programming language JavaScript library', 'mdi-angular mdi fs-20', 'programing', 'programing__angularjs_qst', 'programing__angularjs_answ', 31, 30),
(8, 11, 'PCP Designer', 'someone who designes PCP', 'mdi-apps mdi fs-17', 'Electronic', 'electronic__pcpdesigner_qst', 'electronic__pcpdesigner_answ', 20, 20),
(9, 11, 'WordPress', 'create web application using wordpress', 'mdi mdi-wordpress fs-17', 'programing', 'programing__wordpress_qst', 'programing__wordpress_answ', 20, 20),
(10, 11, 'Node js', 'Devellop applications using javascript framework', 'mdi mdi-nodejs fs-17', 'programing', 'programing__nodejs_qst', 'programing__nodejs_answ', 20, 20),
(14, 11, 'SQL Management', 'SQL Management', 'mdi-database mdi', 'programing', 'programing__sqlmanagement_qst', 'programing__sqlmanagement_answ', 20, 20),
(15, 11, 'java', 'java', 'mdi mdi-coffee', 'programing', 'programing__java_qst', 'programing__java_answ', 20, 20),
(16, 11, 'sql administration', 'SQL Administration', 'mdi-database-plus mdi', 'programing', 'programing__sqladministration_qst', 'programing__sqladministration_answ', 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `skill_test_date`
--

DROP TABLE IF EXISTS `skill_test_date`;
CREATE TABLE IF NOT EXISTS `skill_test_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill_test_date`
--

INSERT INTO `skill_test_date` (`id`, `user_id`, `skill_id`, `date`) VALUES
(1, 1, 1, 1593759369),
(2, 1, 3, 1588884167),
(4, 5, 1, 1585224031),
(5, 5, 3, 1585224076);

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

DROP TABLE IF EXISTS `smtp_settings`;
CREATE TABLE IF NOT EXISTS `smtp_settings` (
  `id` int(11) DEFAULT NULL,
  `mail_sender` varchar(255) DEFAULT NULL,
  `smtp_protocol` varchar(255) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_secure` varchar(255) DEFAULT NULL,
  `smtp_set_from` varchar(255) DEFAULT NULL,
  `smtp_debug` varchar(255) DEFAULT NULL,
  `smtp_show_error` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `specialisation`
--

DROP TABLE IF EXISTS `specialisation`;
CREATE TABLE IF NOT EXISTS `specialisation` (
  `specialisation_id` int(11) NOT NULL AUTO_INCREMENT,
  `profession_id` int(11) NOT NULL,
  `specialisation_title` varchar(255) NOT NULL,
  `description` varchar(225) NOT NULL DEFAULT 'give some description',
  PRIMARY KEY (`specialisation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialisation`
--

INSERT INTO `specialisation` (`specialisation_id`, `profession_id`, `specialisation_title`, `description`) VALUES
(1, 1, 'Web designer', 'maybe the description lenght is too long'),
(2, 1, 'Android Developers', 'give some description'),
(3, 2, 'cardiologist ', 'give some description'),
(4, 2, 'psychiatrist ', 'give some description'),
(5, 2, 'neurologist ', 'give some description'),
(11, 1, 'database developpers', 'give some description'),
(12, 4, 'financial consultant', 'give some description'),
(13, 6, 'general nurse', 'give some description'),
(14, 6, 'midwife', 'give some description'),
(15, 7, 'english', 'give some description'),
(16, 7, 'maths', 'give some description'),
(17, 7, 'frensh', 'give some description'),
(18, 7, 'science', 'give some description'),
(19, 1, 'plugin developers', 'develop plgins'),
(23, 1, 'new specialisation', 'descriotion'),
(24, 7, 'biology', 'teaches biology'),
(25, 7, 'history', 'history'),
(26, 7, 'geography', 'teaches geography'),
(28, 3, 'spec1', 'test'),
(29, 3, 'spec3', 'test3'),
(30, 3, ' some spec', 'over here');

-- --------------------------------------------------------

--
-- Table structure for table `student_batches`
--

DROP TABLE IF EXISTS `student_batches`;
CREATE TABLE IF NOT EXISTS `student_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_batches`
--

INSERT INTO `student_batches` (`id`, `batch_id`, `user_id`) VALUES
(1, 1, 21),
(2, 1, 22),
(5, 3, 21),
(6, 1, 24);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `system_title` varchar(255) DEFAULT NULL,
  `system_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(21845) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `system_currency` varchar(255) DEFAULT NULL,
  `currency_position` varchar(255) DEFAULT NULL,
  `running_session` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `paypal_active` varchar(255) DEFAULT NULL,
  `paypal_mode` varchar(255) DEFAULT NULL,
  `paypal_client_id_sandbox` varchar(255) DEFAULT NULL,
  `paypal_client_id_production` varchar(255) DEFAULT NULL,
  `paypal_currency` varchar(255) DEFAULT NULL,
  `stripe_active` varchar(255) DEFAULT NULL,
  `stripe_mode` varchar(255) DEFAULT NULL,
  `stripe_test_secret_key` varchar(255) DEFAULT NULL,
  `stripe_test_public_key` varchar(255) DEFAULT NULL,
  `stripe_live_secret_key` varchar(255) DEFAULT NULL,
  `stripe_live_public_key` varchar(255) DEFAULT NULL,
  `stripe_currency` varchar(255) DEFAULT NULL,
  `student_email_verification` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `footer_link` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `date_of_last_updated_attendance` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `school_id`, `system_name`, `system_title`, `system_email`, `phone`, `address`, `purchase_code`, `system_currency`, `currency_position`, `running_session`, `language`, `paypal_active`, `paypal_mode`, `paypal_client_id_sandbox`, `paypal_client_id_production`, `paypal_currency`, `stripe_active`, `stripe_mode`, `stripe_test_secret_key`, `stripe_test_public_key`, `stripe_live_secret_key`, `stripe_live_public_key`, `stripe_currency`, `student_email_verification`, `footer_text`, `footer_link`, `version`, `fax`, `date_of_last_updated_attendance`, `timezone`) VALUES
(1, 1, 'NIIT', 'NIIT SCHOOL', 'niit@example.com', '+8812345678', 'Ghana Kumassi Asokwa', '1234', 'USD', 'left', '1', 'french', 'no', 'sandbox', 'AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R', '123', 'USD', 'yes', 'on', 'sk_test_iatnshcHhQVRXdygXw3L2Pp2', 'pk_test_CAC3cB1mhgkJqXtypYBTGb4f', '12345', '123456', 'USD', NULL, 'By 2ASOFT', 'http://2asoft.com/', '7.0', '1234567890', '1577017315', 'Africa/Accra');

-- --------------------------------------------------------

--
-- Table structure for table `taken_quiz`
--

DROP TABLE IF EXISTS `taken_quiz`;
CREATE TABLE IF NOT EXISTS `taken_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taken_quiz`
--

INSERT INTO `taken_quiz` (`id`, `quiz_id`, `user_id`, `date`) VALUES
(1, 8, 21, 1584304892),
(2, 9, 21, 1584318018),
(3, 10, 22, 1584354065),
(4, 9, 22, 1584354097),
(5, 16, 21, 1584584874),
(6, 18, 21, 1585237478),
(7, 19, 21, 1589994193),
(8, 19, 24, 1589994259);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(225) NOT NULL,
  `content` varchar(225) NOT NULL,
  `page` varchar(225) NOT NULL,
  `date` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL COMMENT 'author of the task or error report',
  PRIMARY KEY (`task_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `type`, `content`, `page`, `date`, `status`, `user_id`) VALUES
(11, 'bug', 'Not enough questions found for this subject(html 5)', 'operateur_saisie/profile_setup/skills', 1585179840, 0, 1),
(10, 'bug', 'Not enough questions found for this subject(sql administration)', 'operateur_saisie/profile_setup/skills', 1584305221, 0, 11),
(9, 'bug', 'Not enough questions found for this subject(JQuery)', 'operateur_saisie/profile_setup/skills', 1583946164, 0, 11),
(8, 'bug', 'Not enough questions found for this subject(html 5)', 'operateur_saisie/profile_setup/skills', 1583946009, 0, 11),
(12, 'bug', 'Not enough questions found for this subject(java)', 'operateur_saisie/profile_setup/skills', 1585179850, 0, 1),
(13, 'bug', 'Not enough questions found for this subject(Angular Js)', 'operateur_saisie/profile_setup/skills', 1592519855, 0, 1),
(14, 'bug', 'popup automatically appears and disappears when trying to update a portfolio', 'operateur_saisie/profile_setup/portfolio', 1592520765, 0, 1),
(17, 'bug', 'user can only enter a limiter amount of text to describe the certificate . I suggest you allow him to enter a long text but only display what is necessary then display the full text if user click on box of the certificate', 'operateur_saisie/profile_setup/education', 1593759633, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

DROP TABLE IF EXISTS `test_result`;
CREATE TABLE IF NOT EXISTS `test_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `score` tinytext NOT NULL,
  `total_mistakes` int(11) NOT NULL,
  `total_correct` int(11) NOT NULL,
  `attempted` int(11) NOT NULL,
  `not_attempted` int(11) NOT NULL,
  `skill_name` varchar(225) NOT NULL,
  `total_question` int(11) NOT NULL,
  `grade` varchar(225) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_result`
--

INSERT INTO `test_result` (`id`, `user_id`, `skill_id`, `score`, `total_mistakes`, `total_correct`, `attempted`, `not_attempted`, `skill_name`, `total_question`, `grade`, `date`) VALUES
(1, 11, 3, '67', 1, 2, 3, 0, 'css3', 3, 'Very Good', 1584313138),
(2, 1, 1, '100', 0, 2, 2, 0, 'php', 2, 'Outstanding', 1585179690),
(3, 1, 3, '100', 0, 3, 3, 0, 'css3', 3, 'Outstanding', 1585179765),
(4, 5, 1, '100', 0, 2, 2, 0, 'php', 2, 'Outstanding', 1585223879),
(5, 5, 3, '100', 0, 3, 3, 0, 'css3', 3, 'Outstanding', 1585224076);

-- --------------------------------------------------------

--
-- Table structure for table `test_states`
--

DROP TABLE IF EXISTS `test_states`;
CREATE TABLE IF NOT EXISTS `test_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_states`
--

INSERT INTO `test_states` (`id`, `user_id`, `test_id`, `time`, `content`, `type`) VALUES
(18, 1, 3, 1199, '<div class=\"container bg-white text-black exam-panel\" style=\"min-height: 35em;\"><ul class=\"nav nav-tabs dis-none\"><li class=\"nav-item active\"><a class=\"nav-link text-white bg-prime\" data-toggle=\"tab\" id=\"tab_1\" href=\"#qst_1\" aria-expanded=\"true\">1</a></li><li class=\"nav-item\"><a class=\"nav-link text-white bg-prime\" data-toggle=\"tab\" id=\"tab_2\" href=\"#qst_2\">2</a></li><li class=\"nav-item\"><a class=\"nav-link text-white bg-prime\" data-toggle=\"tab\" id=\"tab_3\" href=\"#qst_3\">3</a></li></ul><!--//===================================================================\\\\--><form id=\"test_form\" method=\"post\" action=\"http://skillpay.com:8080/operateur_saisie/skill_test/mark\" style=\"background-color:white;\"><input type=\"hidden\" name=\"skill_name\" value=\"css3\"><div id=\"myTabContent\" class=\"tab-content\"><input type=\"hidden\" name=\"question_id_1\" value=\"2\"><div class=\"tab-pane active\" id=\"qst_1\"><div class=\"box\"><div class=\"box-header p-0 p-l-10\"><div class=\"dis-block text-center\"><h3 class=\"dis-inline-block v-align-top m-0 pull-left\"> Question 1 </h3><!--navigation button--><div class=\"dis-inline-block v-aligh-top\"><button type=\"button\" class=\"btn-link\" onclick=\"activate_tab(\'tab_2\')\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Next\"><span class=\"fas fa-arrow-right\"></span></button></div><div class=\"btn-group pull-right p-0 m-0\"><button class=\"btn-link dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"fas fa-cog\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a class=\"show_review\" href=\"##\"><i class=\"fa fa-eye m-r-3\"></i> Review</a></li><li><a class=\"show_bookmark\" href=\"##\"><i class=\"fas fa-bookmark m-r-3\"></i> Bookmark</a></li></ul></div><button type=\"button\" class=\"btn-link bookmar_question pull-right\" data-id=\"2\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Bookmark this question\"><i class=\"text-gray fas fa-bookmark\"></i></button></div><div class=\"clearfix\"></div></div><div class=\"box-body question_area\" style=\"overflow:auto;display:block;min-height: 12em;\"><div class=\"question-container\">what is php</div></div></div><label for=\"customRadio_4\" class=\"box answer_area answ_for_qst_2\" data-id=\"2\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">A</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_1\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"2\" id=\"customRadio_4\" value=\"4\"><label for=\"customRadio_4\" class=\"qst_opt\">a game</label></div></div></div></label><label for=\"customRadio_6\" class=\"box answer_area answ_for_qst_2\" data-id=\"2\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">B</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_1\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"2\" id=\"customRadio_6\" value=\"6\"><label for=\"customRadio_6\" class=\"qst_opt\">a programing language</label></div></div></div></label><label for=\"customRadio_5\" class=\"box answer_area answ_for_qst_2\" data-id=\"2\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">C</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_1\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"2\" id=\"customRadio_5\" value=\"5\"><label for=\"customRadio_5\" class=\"qst_opt\">a desktop application</label></div></div></div></label><div class=\"text-center\"><button type=\"button\" class=\"btn-link\" onclick=\"activate_tab(\'tab_2\')\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Next\"><span class=\"fas fa-arrow-right\"></span></button></div></div><input type=\"hidden\" name=\"question_id_2\" value=\"3\"><div class=\"tab-pane\" id=\"qst_2\"><div class=\"box\"><div class=\"box-header p-0 p-l-10\"><div class=\"dis-block text-center\"><h3 class=\"dis-inline-block v-align-top m-0 pull-left\"> Question 2 </h3><!--navigation button--><div class=\"dis-inline-block v-aligh-top\"><button type=\"button\" class=\"btn-link\" onclick=\"activate_tab(\'tab_1\')\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Previous\"><span class=\"fas fa-arrow-left\"></span></button><button type=\"button\" class=\"btn-link\" onclick=\"activate_tab(\'tab_3\')\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Next\"><span class=\"fas fa-arrow-right\"></span></button></div><div class=\"btn-group pull-right p-0 m-0\"><button class=\"btn-link dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"fas fa-cog\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a class=\"show_review\" href=\"##\"><i class=\"fa fa-eye m-r-3\"></i> Review</a></li><li><a class=\"show_bookmark\" href=\"##\"><i class=\"fas fa-bookmark m-r-3\"></i> Bookmark</a></li></ul></div><button type=\"button\" class=\"btn-link bookmar_question pull-right\" data-id=\"3\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Bookmark this question\"><i class=\"text-gray fas fa-bookmark\"></i></button></div><div class=\"clearfix\"></div></div><div class=\"box-body question_area\" style=\"overflow:auto;display:block;min-height: 12em;\"><div class=\"question-container\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi blanditiis cumque enim esse exercitationem explicabo fuga iusto laudantium maxime minima, modi omnis porro quia recusandae repellat sequi temporibus veniam voluptates!</div></div></div><label for=\"customRadio_7\" class=\"box answer_area answ_for_qst_3\" data-id=\"3\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">A</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_2\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"3\" id=\"customRadio_7\" value=\"7\"><label for=\"customRadio_7\" class=\"qst_opt\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab atque cupiditate dignissimos dolorem doloribus eius esse labore libero magni molestias nemo nobis quae repellendus, saepe similique tempore, tenetur, unde voluptatem!</label></div></div></div></label><label for=\"customRadio_8\" class=\"box answer_area answ_for_qst_3\" data-id=\"3\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">B</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_2\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"3\" id=\"customRadio_8\" value=\"8\"><label for=\"customRadio_8\" class=\"qst_opt\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab atque cupiditate dignissimos dolorem doloribus eius esse labore libero magni molestias nemo nobis quae repellendus, saepe similique tempore, tenetur, unde voluptatem!</label></div></div></div></label><label for=\"customRadio_9\" class=\"box answer_area answ_for_qst_3\" data-id=\"3\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">C</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_2\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"3\" id=\"customRadio_9\" value=\"9\"><label for=\"customRadio_9\" class=\"qst_opt\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab atque cupiditate dignissimos dolorem doloribus eius esse labore libero magni molestias nemo nobis quae repellendus, saepe similique tempore, tenetur, unde voluptatem!</label></div></div></div></label><div class=\"text-center\"><button type=\"button\" class=\"btn-link\" onclick=\"activate_tab(\'tab_1\')\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Previous\"><span class=\"fas fa-arrow-left\"></span></button><button type=\"button\" class=\"btn-link\" onclick=\"activate_tab(\'tab_3\')\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Next\"><span class=\"fas fa-arrow-right\"></span></button></div></div><input type=\"hidden\" name=\"question_id_3\" value=\"4\"><div class=\"tab-pane\" id=\"qst_3\"><div class=\"box\"><div class=\"box-header p-0 p-l-10\"><div class=\"dis-block text-center\"><h3 class=\"dis-inline-block v-align-top m-0 pull-left\"> Question 3 </h3><!--navigation button--><div class=\"dis-inline-block v-aligh-top\"><button type=\"button\" class=\"btn-link\" onclick=\"activate_tab(\'tab_2\')\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Previous\"><span class=\"fas fa-arrow-left\"></span></button></div><div class=\"btn-group pull-right p-0 m-0\"><button class=\"btn-link dropdown-toggle\" data-toggle=\"dropdown\" aria-expanded=\"false\"><span class=\"fas fa-cog\"></span></button><ul class=\"dropdown-menu\" role=\"menu\"><li><a class=\"show_review\" href=\"##\"><i class=\"fa fa-eye m-r-3\"></i> Review</a></li><li><a class=\"show_bookmark\" href=\"##\"><i class=\"fas fa-bookmark m-r-3\"></i> Bookmark</a></li></ul></div><button type=\"button\" class=\"btn-link bookmar_question pull-right\" data-id=\"4\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Bookmark this question\"><i class=\"text-gray fas fa-bookmark\"></i></button></div><div class=\"clearfix\"></div></div><div class=\"box-body question_area\" style=\"overflow:auto;display:block;min-height: 12em;\"><div class=\"question-container\">what is css</div></div></div><label for=\"customRadio_10\" class=\"box answer_area answ_for_qst_4\" data-id=\"4\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">A</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_3\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"4\" id=\"customRadio_10\" value=\"10\"><label for=\"customRadio_10\" class=\"qst_opt\">a programming language</label></div></div></div></label><label for=\"customRadio_11\" class=\"box answer_area answ_for_qst_4\" data-id=\"4\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">B</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_3\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"4\" id=\"customRadio_11\" value=\"11\"><label for=\"customRadio_11\" class=\"qst_opt\">a spoken language</label></div></div></div></label><label for=\"customRadio_12\" class=\"box answer_area answ_for_qst_4\" data-id=\"4\"><div class=\"box-header p-0 p-l-10\"><h3 class=\"box-title answer_leter\">C</h3> </div><div class=\"box-body answer_box p-0 p-l-10\"><div class=\"m-b-15\"><div class=\"\"><input name=\"answer_3\" type=\"radio\" class=\"choice_btn\" data-qst_id=\"4\" id=\"customRadio_12\" value=\"12\"><label for=\"customRadio_12\" class=\"qst_opt\">a native language</label></div></div></div></label><div class=\"text-center\"><button type=\"button\" class=\"btn-link\" onclick=\"activate_tab(\'tab_2\')\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\" data-original-title=\"Previous\"><span class=\"fas fa-arrow-left\"></span></button></div></div><input type=\"hidden\" name=\"answer_table\" value=\"programing__css3_answ\"><input type=\"hidden\" name=\"question_table\" value=\"programing__css3_qst\"><div class=\"m-b-10\"><button id=\"submit_exam\" class=\"dis-none\">submit_exam</button><button class=\"btn-danger btn btn-flat pull-right\" id=\"end_exam_btn\" type=\"button\"><i class=\"mdi-alert mdi\"></i>END THE EXAM</button></div></div></form><div id=\"review_container\" style=\"display: none\"><div style=\"max-width: 20em\" class=\"container\"><div class=\"btn-group\"><button id=\"activator_for_2\" class=\"btn m-r-5 btn-default tab_activator\" data-target=\"tab_1\">1</button></div><div class=\"btn-group\"><button id=\"activator_for_3\" class=\"btn m-r-5 btn-default tab_activator\" data-target=\"tab_2\">2</button></div><div class=\"btn-group\"><button id=\"activator_for_4\" class=\"btn m-r-5 btn-default tab_activator\" data-target=\"tab_3\">3</button></div></div></div></div><a href=\"##\" id=\"attention_model_btn\" data-toggle=\"modal\" data-target=\"#modal\" data-title=\"Feedback\"></a><div id=\"modal\" class=\"modal fade\" style=\"height: 100%; overflow: hidden; display: none;\"><div class=\"modal-dialog modal-full\" role=\"document\" style=\"height: 100%;\"><div class=\"modal-content\" style=\"height: 100%;\"><div class=\"modal-header\"><h5 class=\"modal-title\">Read Carefully </h5><button style=\"display: none;\" type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button></div><div class=\"modal-body\" style=\"height: 90%;\"><div class=\"\" style=\"border-bottom:none\"><div class=\"box-header with-border\"><h3 class=\" text-center\">Title</h3></div><div class=\"box-body\"><div class=\"container\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt fugit illo, itaque nemo quas suscipit totam. Aliquid architecto doloribus eaque eos error exercitationem, inventore neque quidem repellendus sunt, velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt fugit illo, itaque nemo quas suscipit totam. Aliquid architecto doloribus eaque eos error exercitationem, inventore neque quidem repellendus sunt, velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt fugit illo, itaque nemo quas suscipit totam. Aliquid architecto doloribus eaque eos error exercitationem, inventore neque quidem repellendus sunt, velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt fugit illo, itaque nemo quas suscipit totam. Aliquid architecto doloribus eaque eos error exercitationem, inventore neque quidem repellendus sunt, velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt fugit illo, itaque nemo quas suscipit totam. Aliquid architecto doloribus eaque eos error exercitationem, inventore neque quidem repellendus sunt, velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt fugit illo, itaque nemo quas suscipit totam. Aliquid architecto doloribus eaque eos error exercitationem, inventore neque quidem repellendus sunt, velit!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deserunt fugit illo, itaque nemo quas suscipit totam. Aliquid architecto doloribus eaque eos error exercitationem, inventore neque quidem repellendus sunt, velit!</div></div><div class=\"box-footer\"><div class=\"row text-center\"><div id=\"start_exam\" class=\"btn btn-prime btn-lg btn-flat\">Start</div></div></div></div></div></div></div></div>', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `picture` varchar(225) NOT NULL DEFAULT 'unknow.png',
  `background` varchar(225) NOT NULL DEFAULT 'unknow_bg.png',
  `country_id` int(11) NOT NULL DEFAULT 85,
  `city` varchar(60) DEFAULT 'kumassi',
  `specialisation_id` int(11) DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `about` text DEFAULT NULL,
  `designation` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `picture`, `background`, `country_id`, `city`, `specialisation_id`, `available`, `about`, `designation`, `status`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'tro.oppong@gmail.com', '', NULL, NULL, 'Aj.RVSGjEV9o2xROXfymbe', 1268889823, 1594290296, 1, 'Admin', 'istrator', 'ADMIN', '023980398', '1.png', 'unknow_bg.png', 85, 'kumassi', 1, 1, NULL, NULL, 1),
(5, '::1', 'user2 tester', '$2y$08$vx71P2PhwTJxg/RKfkicTOc4ghiWUon/qBckoJHno5.IMHtgt6E8.', NULL, 'user2@gmail.com', NULL, NULL, NULL, NULL, 1554503051, 1585223129, 1, 'user2', 'tester', 'citi', '+2230276187686', '5.png', 'unknow_bg.png', 85, 'kumassi', 2, 1, NULL, NULL, 1),
(6, '::1', 'Johndon Bossen', '$2y$08$qrBemDNh.jUstZnX8fswJuMRvZbS3lOGq0EnEkEYefskwELquwgwG', NULL, 'user1@gmail.com', NULL, NULL, NULL, NULL, 1554542790, 1578278723, 1, 'Johndon', 'Bossen', '', '', '6.png', '1555110598956151109.png', 85, 'kumassi', 12, 1, NULL, NULL, 1),
(7, '::1', 'user3 tester', '$2y$08$CoosLbotlso0aJ..O3oaJO2n5QXIJsyYck3yesa1pUh/l8.QRBdjq', NULL, 'user3@gmail.com', NULL, NULL, NULL, NULL, 1554642117, 1578186624, 1, 'user3', 'tester', '', '', '7.png', '1555109408372361105.png', 85, 'kumassi', 12, 1, NULL, NULL, 1),
(8, '::1', 'user4 tester', '$2y$08$EIOqqGP58AE3IcMb9kfeEuvqNp4JN65nEe4GpxNjs8FqyE6QWvz/m', NULL, 'meritt@gmail.com', NULL, NULL, NULL, NULL, 1554658788, NULL, 1, 'Mss', 'Meritt', 'NIIT', '023546865', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, 'Networking', 2),
(10, '::1', 'user5@gmail.com tester', '$2y$08$oYMLTWj2wj4.oxkKtDFs3OALL7X/Gpp9biYEmI4dx7n0/I9ziRSh2', NULL, 'user5@gmail.com', NULL, NULL, NULL, NULL, 1555293059, 1578186667, 1, 'user5@gmail.com', 'tester', 'niit', '+2230276187686', '10.png', 'unknow_bg.png', 85, 'kumassi', 3, 1, NULL, NULL, 1),
(11, '::1', 'John Cedric', '$2y$08$.SE0WvO6zRVQt./0jKVilu35Fu21btM4SRGzPOQ3PZ/qW2LKNzGfe', NULL, 'johncedric@gmail.com', NULL, NULL, NULL, NULL, 1555465605, 1589988267, 1, 'Mr. John', 'Cedric', 'NIIT', '026187686', '11.png', '1555110598398111260.png', 85, 'kumassi', 2, 1, NULL, 'SOFTWARE', 2),
(12, '::1', 'user8 lancer', '$2y$08$XBXQ8olKzGoCYhjDnFdGBuO0rJg7EPtzRkiVPeIKD3hwDFBShoUr.', NULL, 'user8@gmail.com', NULL, NULL, NULL, NULL, 1558554069, 1574903236, 1, 'user8', 'lancer', 'Linkit.com', '0276187686', '12.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1),
(13, '::1', 'test user1', '$2y$08$LEtmDYfaRtfw94HH1qIiNOTsYxkBi4re1T89zROvJSRepZD5PDbQK', NULL, 'testuser1@gmail.com', NULL, NULL, NULL, NULL, 1574728776, 1574906490, 1, 'test', 'user1', 'niit', '01010101', '13.png', 'unknow_bg.png', 85, 'kumassi', 1, 1, NULL, NULL, 1),
(14, '::1', 'test user2', '$2y$08$XlkGAxXedPafcRDAqFn5cOh8Exzxui/9y0VkCEzsAvIdozlmBIv8C', NULL, 'testuser2@gmail.com', NULL, NULL, NULL, NULL, 1574804668, 1574906336, 1, 'test', 'user2', 'NIIT', '02020202', '14.png', 'unknow_bg.png', 85, 'kumassi', 17, 1, NULL, NULL, 1),
(15, '::1', 'test user3', '$2y$08$cb8RqQu3bupl3SNIDN3f3uVNNVI4ulHrZjO.N3n.DEIJWe1gRJRk6', NULL, 'testuser3@gmail.com', NULL, NULL, NULL, NULL, 1574805777, 1574906460, 1, 'test', 'user3', 'niit', '030303030000', '15.png', 'unknow_bg.png', 85, 'Accra', 4, 1, NULL, NULL, 1),
(16, '::1', 'duppon lamber', '$2y$08$Bd3LjwVroeDPowVUpbo.Xuzwp.qkH.bIm41xk5iZWyP/0AyoD7rwC', NULL, 'dupponlampber@gmail.com', NULL, NULL, NULL, NULL, 1578279346, 1578279347, 1, 'Duppon', 'Lamber', 'none', '021456358', 'unknow.png', 'unknow_bg.png', 85, 'Accra', 2, 1, NULL, NULL, 1),
(17, '::1', 'User9 test', '$2y$08$DQEYjj27QQR6bKG.cXptSOI3RKxHwmS7ZNUPUbDN6gx00KITVNBe.', NULL, 'user9@gmail.com', NULL, NULL, NULL, NULL, 1580970896, 1581114145, 1, 'User9', 'test', 'NIIT', '0205376780', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(18, '::1', 'user10 test', '$2y$08$K78cm7aTFv2QNh0XiN2H9eK9MH9pEqB15SMueDIbtrgMTRVHbbOHq', NULL, 'user10@gmail.com', NULL, NULL, NULL, NULL, 1580971943, 1580971944, 1, 'user10', 'test', 'NIIT', '0548568885', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(19, '::1', 'Sir Eugene', '$2y$08$5HjFoYfvjG.cXcy1qff0x.a9gzTVf2qqMlmigyHa1CN7fy8KlXVxu', NULL, 'eugene@gmail.com', NULL, NULL, NULL, NULL, 1581353074, 1590529256, 1, 'Sir', 'Eugene', 'NIIT', '1234567858666', '19.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, 'My name Sir eugene and I am a great software engenier', 'SOFTWARE', 2),
(20, '::1', 'services manager 1', '$2y$08$WAv0tWVVG0UOLMwcxSzSLe9xC1UlRNEE/tssNcIuy.S9Iu1LmiwHS', NULL, 'services_mgr1@gmail.com', NULL, NULL, NULL, NULL, 1581792768, 1581792885, 1, 'Services', 'Manager 1', 'NIIT', '0205376780', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1),
(21, '::1', 'student 1 test', '$2y$08$RNPMDfkqItgnOcDi5lXejOIJ3/QyLoC46i5zft0lL5EZUMUgeqkK6', NULL, 'student1@gmail.com', NULL, NULL, NULL, NULL, 1581935629, 1594292301, 1, 'student', '1 test', 'NIIT', '0111111111', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(22, '::1', 'student 2 test', '$2y$08$1w9/cSzM3N1m1fi6bBmCCerk1daqDzHR15YbrQB71.H13L8EM63oi', NULL, 'student2@gmail.com', NULL, NULL, NULL, NULL, 1581935828, 1584354001, 1, 'student', '2 test', 'NIIT', '0222222222222222', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(23, '::1', 'joshua hendricks', '$2y$08$AlgAxQLVKa6atCUAjyJDZ.Vjf.mvLG.RpPBundB5fgAmLo2vnwr0m', NULL, 'joemens442@gmail.com', NULL, NULL, NULL, NULL, 1584028128, 1584028673, 1, 'Samuel', 'Hendricks', 'NIIT', '65132156656', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(24, '::1', 'student 3 test', '$2y$08$w1SrKIKQjb6zTnW/.6VoX.fywzWiDn2iZ9WKKNY9lSEA8n.Cxx0sG', NULL, 'student3@gmail.com', NULL, NULL, NULL, NULL, 1584346086, 1589994237, 1, 'Student 3', 'test', 'NIIT', '0256187686', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(25, '::1', 'mr. max', '$2y$08$5qmeGkSGrdwPw3IqOiZriesAH.wiIpUr.8KSnm.BC0wvE.tsiK0TS', NULL, 'max@gmail.com', NULL, NULL, NULL, NULL, 1584873473, NULL, 1, 'Mr.', 'Max', 'NIIT', '02345687965', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, 'NETWORKING', 2),
(26, '::1', 'mr. joshua', '$2y$08$U2hebLB/y.VZJ5p6dEUpP.RCrVOoMX6ITKOefc2xwtFXxGkalHQV6', NULL, 'josh@gmail.com', NULL, NULL, NULL, NULL, 1584878050, 1589988305, 1, 'Mr.', 'Joshua', 'NIIT', '5484651456', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, 'SOFTWARE', 1),
(27, '::1', 'student4 test', '$2y$08$KLl774OvDNsVdGNSgq8jxuc1uvWENu6.kgaV6aJ2FdMFvAokhI8JK', NULL, 'student4@gmail.com', NULL, NULL, NULL, NULL, 1584994974, NULL, 1, 'student4', 'test', 'NIIT', '86456465', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(28, '::1', 'student5 test', '$2y$08$NGprMpKRoEu6O6UgVwqyV.fEh.Ni5Wb7AYPEkUSLaiBXhXqLHTuyG', NULL, 'student5@gmail.com', NULL, NULL, NULL, NULL, 1584995005, NULL, 1, 'student5', 'test', 'NIIT', '86456465', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(29, '::1', 'student6 test', '$2y$08$VplXE5510jIJ9ejErhiRXuUDy/K4YIHz6sMG1PWuYrT0DWqvlvvJO', NULL, 'student6@gmail.com', NULL, NULL, NULL, NULL, 1584995151, 1589994327, 1, 'student6', 'test', 'NIIT', '87687689768769', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(30, '::1', 'student7 test', '$2y$08$BtpQLMEQQbwmFcEjFhCxAeqUU5n11IY4seo8gFZLOSZQMkUp4op0K', NULL, 'student7@gmail.com', NULL, NULL, NULL, NULL, 1585000351, 1585000352, 1, 'student7', 'test', 'NIIT', '96564546', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1),
(31, '::1', 'student8 test', '$2y$08$6VKUOVpx5PxA9dmLhtv4lOJzT1qk/EKqGRmt7mOd1aNo2Vep7M1JG', NULL, 'student8@gmail.com', NULL, NULL, NULL, NULL, 1585147787, 1585147790, 1, 'student8', 'test', 'NIIT', '4131354654', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(72, 1, 1),
(73, 1, 3),
(20, 5, 3),
(7, 6, 1),
(8, 6, 3),
(9, 7, 3),
(62, 8, 2),
(21, 10, 3),
(78, 11, 1),
(79, 11, 2),
(80, 11, 3),
(81, 11, 4),
(14, 12, 3),
(17, 13, 3),
(18, 14, 3),
(19, 15, 3),
(22, 16, 3),
(23, 17, 3),
(24, 18, 3),
(46, 19, 2),
(44, 20, 6),
(47, 21, 4),
(48, 22, 4),
(67, 23, 4),
(50, 24, 4),
(51, 25, 2),
(66, 26, 2),
(68, 27, 4),
(69, 28, 4),
(70, 29, 4),
(71, 30, 4),
(82, 31, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
