-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 26, 2020 at 05:26 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_projetecole`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

DROP TABLE IF EXISTS `absences`;
CREATE TABLE IF NOT EXISTS `absences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temps` varchar(100) DEFAULT NULL,
  `date` varchar(150) DEFAULT NULL,
  `eleve_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `absences_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `absences`
--

INSERT INTO `absences` (`id`, `temps`, `date`, `eleve_id`, `session_id`, `user_id`, `created_at`, `status`) VALUES
(1, '5', 'du 02  au 10 aout', 92, 1, 32, 1603201601, 1),
(2, '2', 'du 02  au 10 aout', 93, 1, 32, 1603201601, 1),
(3, '2', 'du 02  au 10 aout', 94, 1, 32, 1603201601, 1),
(4, '2', 'du 02  au 10 aout', 95, 1, 32, 1603201601, 1),
(5, '2', 'du 02  au 10 aout', 107, 1, 32, 1603201602, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_preferences`
--

INSERT INTO `admin_preferences` (`id`, `user_id`, `user_panel`, `sidebar_form`, `messages_menu`, `notifications_menu`, `tasks_menu`, `user_menu`, `ctrl_sidebar`, `transition_page`) VALUES
(1, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(2, 11, 1, 1, 1, 1, 1, 1, 1, 0),
(3, 19, 1, 1, 0, 1, 0, 1, 0, 0),
(4, 21, 1, 1, 0, 1, 0, 1, 0, 0),
(5, 22, 0, 0, 0, 0, 0, 1, 0, 0),
(6, 23, 0, 0, 0, 0, 0, 1, 0, 0),
(7, 24, 1, 0, 0, 0, 0, 1, 0, 0),
(8, 29, 0, 0, 0, 0, 0, 1, 0, 0),
(9, 1, 0, 0, 0, 0, 0, 1, 0, 0),
(10, 26, 1, 0, 0, 0, 0, 1, 0, 0),
(11, 32, 1, 0, 0, 0, 0, 1, 0, 0),
(12, 32, 1, 0, 0, 0, 0, 1, 0, 0),
(13, 44, 0, 0, 0, 0, 0, 1, 0, 0),
(14, 46, 1, 0, 0, 0, 0, 1, 0, 0),
(15, 54, 0, 0, 0, 1, 0, 1, 0, 0),
(16, 59, 1, 0, 0, 0, 0, 1, 0, 0),
(17, 55, 1, 0, 0, 0, 0, 1, 0, 0),
(18, 63, 1, 0, 0, 0, 0, 1, 0, 0),
(19, 64, 1, 0, 0, 0, 0, 1, 0, 0),
(20, 85, 1, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `niveau` varchar(225) NOT NULL,
  `num_sale` varchar(225) DEFAULT NULL,
  `ecole_id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `emploidutemps` varchar(200) DEFAULT NULL,
  `scolarite_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `niveau`, `num_sale`, `ecole_id`, `session_id`, `emploidutemps`, `scolarite_id`) VALUES
(36, 'tlec', '1', 0, 1, NULL, NULL),
(35, 'terminaled', '1', 0, 1, NULL, NULL),
(34, 'testnew', '4', 0, 1, NULL, NULL),
(33, 'testnew', '4', 0, 1, NULL, NULL),
(32, 'testnew', '4', 0, 1, NULL, NULL),
(15, '53', '1', 0, 1, NULL, NULL),
(16, '5', '1', 0, 1, NULL, NULL),
(17, '5', '1', 0, 1, NULL, NULL),
(31, '2ndc', '1', 0, 1, NULL, NULL),
(20, 'test', '1', 0, 1, NULL, NULL),
(21, 'test', '1', 0, 1, NULL, NULL),
(22, 'test', '1', 0, 1, NULL, NULL),
(23, 'test', '2', 0, 1, NULL, NULL),
(24, 'test', '1', 0, 1, NULL, NULL),
(25, '6ieme', '10', 0, 1, NULL, NULL),
(26, 'test', '3', 0, 1, NULL, NULL),
(27, 'test', '3', 0, 1, NULL, NULL),
(28, 'test', '1', 0, 1, NULL, NULL),
(37, 'terminaled', '10', 0, 1, NULL, NULL),
(38, 'terminaled', '11', 0, 1, NULL, NULL),
(39, 'terminaled', '12', 0, 1, NULL, NULL),
(40, 'terminaled', '13', 0, 1, NULL, NULL),
(48, '6eme', '1', 16, 1, NULL, NULL),
(44, '6eme', '2', 9, 1, NULL, NULL),
(43, '6eme', '1', 9, 1, NULL, NULL),
(46, '6eme', '3', 9, 1, NULL, NULL),
(47, '6eme', '5', 16, 1, NULL, NULL),
(49, '6eme', '3', 16, NULL, NULL, NULL),
(50, '6eme', '4', 16, NULL, NULL, NULL),
(71, '6eme', '1', 22, 1, '1601483482151J24Y3741125M.pdf', NULL),
(65, '6eme', '8', 4, 1, NULL, NULL),
(64, '6eme', '3', 4, 1, NULL, NULL),
(63, '6eme', '1', 4, 1, NULL, NULL),
(68, '6eme', '1', 19, 1, NULL, NULL),
(69, '6eme', '1', 18, 1, NULL, NULL),
(66, '2nd', 'c2', 4, 1, NULL, NULL),
(70, '6eme', '1', 20, 1, NULL, NULL),
(67, '4ieme', '1', 4, 1, NULL, NULL),
(62, '2nd', 'c1', 16, 1, NULL, NULL),
(72, '2nd', 'c1', 21, 1, NULL, NULL),
(75, '6eme', '1', 28, 1, NULL, NULL),
(78, '4eme', '1', 28, 1, NULL, NULL),
(77, '5eme', '1', 28, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classe_matiere`
--

DROP TABLE IF EXISTS `classe_matiere`;
CREATE TABLE IF NOT EXISTS `classe_matiere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classe_id` int(11) DEFAULT NULL,
  `matiere_id` varchar(225) DEFAULT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `classe_matiere_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classe_matiere`
--

INSERT INTO `classe_matiere` (`id`, `classe_id`, `matiere_id`, `session_id`) VALUES
(1, 66, '[\"1\",\"5\",\"36\"]', 1),
(2, 48, '[\"1\",\"5\",\"3\",\"4\",\"8\"]', 1),
(3, 68, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"29\",\"8\",\"9\",\"28\",\"33\"]', 1),
(4, 69, '[\"1\",\"2\",\"36\"]', 1),
(5, 70, '[\"1\",\"36\"]', 1),
(6, 71, '[\"1\",\"36\"]', 1),
(7, 72, '[\"35\",\"36\"]', 1),
(8, 73, '[\"1\",\"2\",\"3\",\"4\",\"8\",\"9\",\"32\",\"33\",\"36\"]', 1),
(9, 74, '[\"1\",\"2\",\"3\",\"4\",\"9\",\"32\",\"28\",\"33\"]', 1),
(10, 75, 'null', 1),
(11, 76, '[\"37\",\"38\"]', 1),
(12, 77, '[\"37\",\"38\"]', 1),
(13, 78, '[\"37\",\"38\"]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `compta_params`
--

DROP TABLE IF EXISTS `compta_params`;
CREATE TABLE IF NOT EXISTS `compta_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pourcent` varchar(225) NOT NULL,
  `nbp` varchar(225) NOT NULL,
  `ecole_id` int(11) NOT NULL,
  `typ` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compta_params`
--

INSERT INTO `compta_params` (`id`, `pourcent`, `nbp`, `ecole_id`, `typ`) VALUES
(1, '10', '3', 28, 'months');

-- --------------------------------------------------------

--
-- Table structure for table `compta_scolarite_params`
--

DROP TABLE IF EXISTS `compta_scolarite_params`;
CREATE TABLE IF NOT EXISTS `compta_scolarite_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `montant` int(11) NOT NULL,
  `niveau` varchar(225) NOT NULL,
  `ecole_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compta_scolarite_params`
--

INSERT INTO `compta_scolarite_params` (`id`, `montant`, `niveau`, `ecole_id`) VALUES
(1, 250000, '6', 28),
(2, 255000, '5', 28);

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
-- Table structure for table `ecoles`
--

DROP TABLE IF EXISTS `ecoles`;
CREATE TABLE IF NOT EXISTS `ecoles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `adresse` varchar(225) NOT NULL,
  `logo` varchar(225) NOT NULL DEFAULT 'fas fa-hand-holding',
  `email` varchar(225) NOT NULL DEFAULT 'user_defined',
  `ecole` varchar(225) DEFAULT NULL,
  `contact` text DEFAULT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  `password` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `partenaire` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `service_user_id_ind` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecoles`
--

INSERT INTO `ecoles` (`id`, `user_id`, `adresse`, `logo`, `email`, `ecole`, `contact`, `session_id`, `password`, `forgotten_password_code`, `created_on`, `last_login`, `active`, `status`, `partenaire`) VALUES
(1, 32, 'cocody', 'fas fa-mobile-alt', 'LMA@gmail.com', 'LMA', '59964182', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 32, 'abobo', 'fas fa-paint-brush', 'LSY@gmail.com', 'LSY', '03421615', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 32, 'yopougon', 'fab fa-wordpress', 'CSM@gmail.com', 'CSM', '034700652', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 32, 'treichville', 'fas fas fa-code', 'NDA@gmail.com', 'NDA', '021548963', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 32, 'ciad', 'fas fa-hand-holding fs-17', 'LMAD@gmail.com', 'LMAD', '56632145', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 34, 'cocody', 'fas fa-hand-holding', 'test@gmail.com', 'ASA', '25421532', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(17, 32, 'yop-annaneraie', 'fas fa-hand-holding', 'km@gmail.com', 'LKM', '0231546', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(21, 32, 'COCDY', 'fas fa-hand-holding', 'fupa@gmail.com', 'FUPA', '47160000', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(22, 32, 'ABOBO', 'fas fa-hand-holding', 'una@gmail.com', 'Universite nangui abrogoua', '47160000', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(23, 1, 'zxcvzxcvfdfgxc', 'fas fa-hand-holding', 'adh1@gmail.com', 'asdfvxcvxc', '8968687', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(24, 1, 'somewhere ', 'fas fa-hand-holding', 'partenaire2@gmail.com', 'etab partenaire 2', '9870978970987', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(25, 1, 'addr', 'fas fa-hand-holding', 'partenaire3@gmail.com', 'nom_etab', '900980', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 1, 'somewhere ', 'fas fa-hand-holding', 'partenaire4@gmail.com', 'nom_etab_4', '353645645', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 1, 'addr', 'fas fa-hand-holding', 'partenaire5@gmail.com', 'test etab', '0205376780', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(28, 91, '88333170', 'fas fa-hand-holding', 'titi@gmail.com', 'Titi Marie Line Samira', '0276187686', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eleves`
--

DROP TABLE IF EXISTS `eleves`;
CREATE TABLE IF NOT EXISTS `eleves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(225) NOT NULL,
  `prenoms` varchar(225) DEFAULT NULL,
  `sexe` varchar(50) NOT NULL,
  `date_naiss` varchar(225) NOT NULL,
  `photo` varchar(255) DEFAULT 'unknow.png',
  `parent_id` int(11) NOT NULL,
  `ecole_id` int(11) NOT NULL,
  `matricule` varchar(225) NOT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `ecole_id` (`ecole_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleves`
--

INSERT INTO `eleves` (`id`, `nom`, `prenoms`, `sexe`, `date_naiss`, `photo`, `parent_id`, `ecole_id`, `matricule`, `session_id`) VALUES
(1, 'adje', 'arlette', 'feminin', '2020-07-14 17:30:29', 'unknow.png', 1, 1, '', 1),
(2, 'aka', 'john', 'Féminin', '5444444444444', 'unknow.png', 13, 0, '', 1),
(4, 'aka', 'test', 'Masculin', '212222222222222', 'unknow.png', 0, 16, '', 1),
(5, 'aka', 'John senior', 'Masculin', '212222222222222', 'unknow.png', 13, 9, '', 1),
(6, 'CMAD', 'john', 'Féminin', '212222222222222', 'unknow.png', 8, 1, '121323333333', 1),
(7, 'aka', 'john', 'Féminin', '212222222222222', 'unknow.png', 8, 1, '	 121323333333', 1),
(8, 'test', 'john', 'Féminin', '212222222222222', 'unknow.png', 0, 1, '02222222222222222', 1),
(9, 'CMAD', 'john', 'Masculin', '212222222222222', 'unknow.png', 8, 9, '121323333333', 1),
(10, 'aka', 'Arlette stef', 'Féminin', '212222222222222', '1599131120169L81V4981354P.png', 13, 4, '121323333333', 1),
(11, 'Aka2', 'Brou pascal', 'Féminin', '212222222222222', 'unknow.png', 13, 4, '1111222555z', 1),
(12, 'kouadio', 'eba', 'Féminin', '12/11/19', 'unknow.png', 0, 16, '1234koua', 1),
(17, 'Arlett Adje bg', 'John senior', 'Féminin', '12/11/19', 'unknow.png', 13, 16, 'ssssssssssss22555', 1),
(19, 'dibi', 'ange', 'Masculin', '12/11/19', 'unknow.png', 13, 16, 'qqdddd', 1),
(20, 'aka', 'Brou pascal', 'Feminin', '12/11/19', 'unknow.png', 4, 16, '025641112z', 1),
(21, 'Aka2', 'John senior', 'Masculin', '12/11/19', 'unknow.png', 4, 16, '121323333333q', 1),
(22, 'momo', 'audrey', 'Feminin', '12/11/19', 'unknow.png', 4, 16, '222555zd', 1),
(23, 'Arlett Adje bg', 'john', 'Feminin', '212222222222222', 'unknow.png', 3, 16, '121323333333sdsd', 1),
(24, 'Arlete', 'Adjey', '1596535675310A83N8451368C.png', '22/08/1993', NULL, 6, 16, '05048965k', 1),
(25, 'Arlete', 'Adjey', 'Feminin', '17-04-1993', '159653589042W20S6171012Q.png', 11, 16, '65776576X', 1),
(27, 'kouassi', 'brice', 'Masculin', '02/11/5698', 'unknow.png', 15, 16, 'vgbfnfnnn0254', 1),
(28, 'kouassi', 'ange', 'Feminin', '07/12/2006', '1598532624271M48W7671196O.png', 22, 19, '121323333333fff', 1),
(29, 'aka2', 'Arlette stef', 'Feminin', '02/11/12', '1598449553238K14Z5401317O.png', 22, 19, '121323333333fgg', 1),
(54, 'BOGA', 'LYDIE', 'feminin', '10/09/2010', 'unknow.png', 42, 19, '04231975N', 1),
(55, 'SOH', 'GROTTO', 'masculin', '21/09/2010', 'unknow.png', 43, 19, '03231975O', 1),
(92, 'OUATTARA23', 'KADI', 'masculin', '07/09/2010', '160215748215D42P8641202S.png', 64, 22, '04231975K', 1),
(93, 'EKROU', 'ANICET', 'masculin', '08/09/2010', 'unknow.png', 65, 22, '04231975L', 1),
(94, 'AKRONGO', 'ANGE', 'feminin', '09/09/2010', 'unknow.png', 63, 22, '04231975M', 1),
(95, 'BONIGO', 'JEAN MARC', 'masculin', '11/09/2010', 'unknow.png', 68, 22, '04231975P', 1),
(96, 'OUATTARA', 'AMINE', 'masculin', '07/09/2010', 'unknow.png', 64, 21, '04231975A', 1),
(97, 'EKROU', 'JEAN JACQUES', 'masculin', '08/09/2010', 'unknow.png', 65, 21, '04231975B', 1),
(98, 'AKRONGO', 'JACQUELINE', 'feminin', '09/09/2010', 'unknow.png', 66, 21, '04231975C', 1),
(99, 'BOGA', 'YVETTE', 'feminin', '10/09/2010', 'unknow.png', 67, 21, '04231975D', 1),
(100, 'BONIGO', 'XAVIER', 'masculin', '11/09/2010', 'unknow.png', 68, 21, '04231975E', 1),
(107, 'kouassi', 'brice', 'Masculin', '07/11/2009', 'unknow.png', 90, 22, '121323333333y', 1),
(108, 'kouassi', 'grace', 'Feminin', '07/11/2006', 'unknow.png', 91, 21, '121323333333t', 1),
(109, 'Tro', 'Opong Ebenezer jean Cédric', 'Masculin', '2006', 'unknow.png', 92, 28, '0904815', 1),
(110, 'eleve1', 'test', 'Feminin', '1998', 'unknow.png', 92, 28, '365846X', 1),
(111, 'eleve2', 'test', 'Masculin', '1999', 'unknow.png', 93, 28, '328566Y', 1),
(112, 'eleve3', 'test', 'Feminin', '1998', 'unknow.png', 93, 28, '65313213E', 1),
(113, 'Tro', 'Opong Ebenezer jean Cédric', 'Masculin', '15/12/2000', 'unknow.png', 93, 28, '251478t', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eleves_versements`
--

DROP TABLE IF EXISTS `eleves_versements`;
CREATE TABLE IF NOT EXISTS `eleves_versements` (
  `eleve_id` int(11) DEFAULT NULL,
  `versement_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eleve_classe`
--

DROP TABLE IF EXISTS `eleve_classe`;
CREATE TABLE IF NOT EXISTS `eleve_classe` (
  `eleve_id` int(11) DEFAULT NULL,
  `classe_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleve_classe`
--

INSERT INTO `eleve_classe` (`eleve_id`, `classe_id`, `session_id`) VALUES
(109, 73, 1),
(110, 75, 1),
(111, 75, 1),
(112, 78, 1),
(113, 77, 1);

-- --------------------------------------------------------

--
-- Table structure for table `events_groups`
--

DROP TABLE IF EXISTS `events_groups`;
CREATE TABLE IF NOT EXISTS `events_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_groups`
--

INSERT INTO `events_groups` (`id`, `event_id`, `group_id`, `session_id`) VALUES
(11, 18, 1, 1),
(10, 15, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

DROP TABLE IF EXISTS `frontend_settings`;
CREATE TABLE IF NOT EXISTS `frontend_settings` (
  `id` int(11) NOT NULL,
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
  `website_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `about_us`, `terms_conditions`, `privacy_policy`, `social_links`, `copyright_text`, `about_us_image`, `slider_images`, `theme`, `homepage_note_title`, `homepage_note_description`, `website_title`) VALUES
(1, 0x3c68323e3c62723ec3802070726f706f73206465206e6f7320c3a9636f6c65733c2f68323e3c703e432765737420756e206661697420c3a97461626c6920646570756973206c6f6e6774656d707320717527756e206c656374657572207365726120646973747261697420706172206c6520636f6e74656e75206c697369626c65206427756e652070616765206c6f7273717527696c2072656761726465207361206d69736520656e20706167652e204c27696e74c3a972c3aa742064277574696c69736572204c6f72656d20497073756d2065737420717527696c206120756e6520646973747269627574696f6e20706c7573206f75206d6f696e73206e6f726d616c6520646573206c6574747265732c20706172206f70706f736974696f6e20c3a0206c277574696c69736174696f6e20646520606020436f6e74656e75206963692c20636f6e74656e75206963692027272c20636520717569206c6520666169742072657373656d626c657220c3a020756e20616e676c616973206c697369626c652e20432765737420756e206661697420c3a97461626c6920646570756973206c6f6e6774656d707320717527756e206c656374657572207365726120646973747261697420706172206c6520636f6e74656e75206c697369626c65206427756e652070616765206c6f7273717527696c2072656761726465207361206d69736520656e20706167652e204c27696e74c3a972c3aa742064277574696c69736572204c6f72656d20497073756d2065737420717527696c206120756e6520646973747269627574696f6e20706c7573206f75206d6f696e73206e6f726d616c6520646573206c6574747265732c20706172206f70706f736974696f6e20c3a0206c277574696c69736174696f6e20646520606020436f6e74656e75206963692c20636f6e74656e75206963692027272c20636520717569206c6520666169742072657373656d626c657220c3a020756e20616e676c616973206c697369626c652e3c2f703e3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a417269616c2c2048656c7665746963612c2073616e732d73657269663b223e3c693e4c27686973746f697265206465206e6f74726520c3a9636f6c653c2f693e3c2f7370616e3e3c2f703e3c703e436f6e7472616972656d656e7420c3a0206c612063726f79616e636520706f70756c616972652c204c6f72656d20497073756d206e27657374207061732073696d706c656d656e7420756e20746578746520616cc3a961746f6972652e20496c20612073657320726163696e65732064616e7320756e206d6f7263656175206465206c697474c3a9726174757265206c6174696e6520636c61737369717565206465203435206176616e74204a432c2063652071756920656e206661697420706c7573206465203230303020616e732e2052696368617264204d63436c696e746f636b2c2070726f66657373657572206465206c6174696e2061752048616d7064656e2d5379646e657920436f6c6c65676520656e2056697267696e69652c2061207265636865726368c3a9206c27756e20646573206d6f7473206c6174696e73206c657320706c7573206f6273637572732c20636f6e73656374657475722c206427756e2070617373616765206475204c6f72656d20497073756d2c20657420656e20706172636f7572616e74206c6573206369746174696f6e73206475206d6f742064616e73206c61206c697474c3a972617475726520636c617373697175652c20612064c3a9636f7576657274206c6120736f7572636520696e647562697461626c652e3c2f703e3c68333e3c62723e5175656c7175652063686f7365206427696e74c3a972657373616e7420c3a02070726f706f73206465206e6f7320c3a9636f6c65733c2f68333e3c703e496c20657869737465206465206e6f6d627265757365732076617269616e746573206465207061737361676573206475204c6f72656d20497073756d20646973706f6e69626c65732c206d616973206c61206d616a6f726974c3a9206f6e7420737562692064657320616c74c3a9726174696f6e7320736f757320756e6520666f726d65206f7520756e652061757472652c20706172206465206c2768756d6f757220696e6a656374c3a9206f7520646573206d6f747320616cc3a961746f6972657320717569206e652073656d626c656e74206dc3aa6d6520706173206cc3a967c3a872656d656e74206372c3a96469626c65732e20536920766f757320616c6c657a207574696c6973657220756e20706173736167653c2f703e3c703e2d2063652071756920656e2066616974206c65207072656d69657220767261692067c3a96ec3a97261746575723c2f703e3c703e2d20706f75722067c3a96ec3a9726572204c6f72656d20497073756d207175693c2f703e3c703e2d206d616973206c61206d616a6f726974c3a92061207375626920756e6520616c7465726174696f3c2f703e3c703e2d206573742d636520717527696c206120756e20706c7573206f75206d6f696e733c2f703e3c703e546f7573206c65732067c3a96ec3a972617465757273204c6f72656d20497073756d2073757220496e7465726e6574206f6e742074656e64616e636520c3a02072c3a970c3a974657220646573206d6f726365617578207072c3a964c3a966696e6973207369206ec3a963657373616972652c2063652071756920656e2066616974206c65207072656d6965722076c3a972697461626c652067c3a96ec3a97261746575722073757220496e7465726e65742e3c2f703e, 0x3c68323e5465726d73206f66206f7572207363686f6f6c3c2f68323e3c703e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e266e6273703b49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e3c62723e266e6273703b3c2f703e3c68333e4f7572207363686f6f6c20686973746f72793c2f68333e3c703e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e3c2f703e3c68333e536f6d657468696e6720696e746572657374696e672061626f7574206f7572207363686f6f6c3c2f68333e3c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f20757365206120706173736167653c2f703e3c756c3e3c6c693e6d616b696e6720746869732074686520666972737420747275652067656e657261746f723c2f6c693e3c6c693e746f2067656e6572617465204c6f72656d20497073756d2077686963683c2f6c693e3c6c693e62757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f3c2f6c693e3c6c693e69732074686174206974206861732061206d6f72652d6f722d6c6573733c2f6c693e3c2f756c3e3c703e416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e3c2f703e, 0x3c68323e5072697661637920706f6c696379206f66206f7572207363686f6f6c3c2f68323e3c703e49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e266e6273703b49742069732061206c6f6e672065737461626c6973686564206661637420746861742061207265616465722077696c6c206265206469737472616374656420627920746865207265616461626c6520636f6e74656e74206f6620612070616765207768656e206c6f6f6b696e6720617420697473206c61796f75742e2054686520706f696e74206f66207573696e67204c6f72656d20497073756d2069732074686174206974206861732061206d6f72652d6f722d6c657373206e6f726d616c20646973747269627574696f6e206f66206c6574746572732c206173206f70706f73656420746f207573696e672027436f6e74656e7420686572652c20636f6e74656e742068657265272c206d616b696e67206974206c6f6f6b206c696b65207265616461626c6520456e676c6973682e3c62723e266e6273703b3c2f703e3c68333e4f7572207363686f6f6c20686973746f72793c2f68333e3c703e436f6e747261727920746f20706f70756c61722062656c6965662c204c6f72656d20497073756d206973206e6f742073696d706c792072616e646f6d20746578742e2049742068617320726f6f747320696e2061207069656365206f6620636c6173736963616c204c6174696e206c6974657261747572652066726f6d2034352042432c206d616b696e67206974206f7665722032303030207965617273206f6c642e2052696368617264204d63436c696e746f636b2c2061204c6174696e2070726f666573736f722061742048616d7064656e2d5379646e657920436f6c6c65676520696e2056697267696e69612c206c6f6f6b6564207570206f6e65206f6620746865206d6f7265206f627363757265204c6174696e20776f7264732c20636f6e73656374657475722c2066726f6d2061204c6f72656d20497073756d20706173736167652c20616e6420676f696e67207468726f75676820746865206369746573206f662074686520776f726420696e20636c6173736963616c206c6974657261747572652c20646973636f76657265642074686520756e646f75627461626c6520736f757263652e3c2f703e3c68333e536f6d657468696e6720696e746572657374696e672061626f7574206f7572207363686f6f6c3c2f68333e3c703e546865726520617265206d616e7920766172696174696f6e73206f66207061737361676573206f66204c6f72656d20497073756d20617661696c61626c652c2062757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f6e20696e20736f6d6520666f726d2c20627920696e6a65637465642068756d6f75722c206f722072616e646f6d6973656420776f72647320776869636820646f6e2774206c6f6f6b206576656e20736c696768746c792062656c69657661626c652e20496620796f752061726520676f696e6720746f20757365206120706173736167653c2f703e3c756c3e3c6c693e6d616b696e6720746869732074686520666972737420747275652067656e657261746f723c2f6c693e3c6c693e746f2067656e6572617465204c6f72656d20497073756d2077686963683c2f6c693e3c6c693e62757420746865206d616a6f72697479206861766520737566666572656420616c7465726174696f3c2f6c693e3c6c693e69732074686174206974206861732061206d6f72652d6f722d6c6573733c2f6c693e3c2f756c3e3c703e416c6c20746865204c6f72656d20497073756d2067656e657261746f7273206f6e2074686520496e7465726e65742074656e6420746f2072657065617420707265646566696e6564206368756e6b73206173206e65636573736172792c206d616b696e6720746869732074686520666972737420747275652067656e657261746f72206f6e2074686520496e7465726e65742e3c2f703e, 0x5b7b2266616365626f6f6b223a22687474703a5c2f5c2f7777772e66616365626f6f6b2e636f6d5c2f7472616e73706172656e6365686f6c64696e67222c2274776974746572223a22687474703a5c2f5c2f7777772e747769747465722e636f6d5c2f7472616e73706172656e6365686f6c64696e67222c226c696e6b6564696e223a22687474703a5c2f5c2f7777772e6c696e6b6564696e2e636f6d5c2f7472616e73706172656e6365686f6c64696e67222c22676f6f676c65223a22687474703a5c2f5c2f7777772e676f6f676c652e636f6d5c2f7472616e73706172656e6365686f6c64696e67222c22796f7574756265223a22687474703a5c2f5c2f7777772e796f75747562652e636f6d5c2f7472616e73706172656e6365686f6c64696e67222c22696e7374616772616d223a22687474703a5c2f5c2f7777772e696e7374616772616d2e636f6d5c2f7472616e73706172656e6365686f6c64696e67227d5d, 0x416c6c207468652072696768747320726573657276656420746f2056617320746563686e6f6c6f67696573, NULL, 0x5b7b227469746c65223a22204c26233033393b5c75303065396475636174696f6e20657374206c26233033393b61726d65206c6120706c7573207075697373616e7465222c226465736372697074696f6e223a222671756f743b566f757320706f7576657a207574696c69736572206c26233033393b5c75303065396475636174696f6e20706f7572206368616e676572206c65206d6f6e64652671756f743b202d20266c743b692667743b4e656c736f6e204d616e64656c61266c743b5c2f692667743b222c22696d616765223a226c617168696c612d656475636174696f6e2d312e6a7067227d2c7b227469746c65223a224c6120636f6e6e61697373616e636520657374206c6520706f75766f6972222c226465736372697074696f6e223a222671756f743b4c26233033393b5c75303065396475636174696f6e20657374206c612070725c75303065396d697373652064752070726f67725c7530306538732c2064616e732063686171756520736f63695c7530306539745c75303065392c2064616e73206368617175652066616d696c6c652671756f743b202d20266c743b692667743b4b6f666920416e6e616e266c743b5c2f692667743b222c22696d616765223a22736c69646572312e6a706567227d2c7b227469746c65223a2241766f697220756e206275742064616e73206c61207669652c20616371755c753030653972697220636f6e74696e75656c6c656d656e742064657320636f6e6e61697373616e636573222c226465736372697074696f6e223a222671756f743b4e652063657373657a206a616d61697320646520766f757320626174747265206a7573717526233033393b5c75303065302063652071756520766f757320617272697669657a205c753030653020766f7472652064657374696e6174696f6e2671756f743b202d20266c743b692667743b412e502e4a2e20416264756c204b616c616d266c743b5c2f692667743b222c22696d616765223a226d616d696561646a6f75612d303030372e6a7067227d5d, 0x756c74696d617465, 0x4269656e76656e756520c3a0205452414e53504152454e434520484f4c44494e47, 0x5452414e53504152454e434520484f4c44494e472065737420756e6520706c617465666f726d652071756920636f6e736973746520c3a0206d657474726520656e20706c61636520756e2063616e616c20646520636f6d6d756e69636174696f6e20656e747265206c657320c3a9636f6c6573206574206c657320706172656e74732064e28099c3a96cc3a876657320656e20767565206465203a0d0a2d0920496e666f726d6572206c657320706172656e74732064e28099c3a96cc3a876657320737572206c65732072c3a973756c746174732070726f677265737369667320286e6f746573206465206465766f69727320657420696e746572726f676174696f6e7320737572707269736573206f75207072c3a9706172c3a9657329206465206c65757220656e66616e74206f752070726f74c3a967c3a92e0d0a2d09496e666f726d6572206c657320706172656e747320737572206c6573206865757265732064e28099616273656e636573206465206c6575722070726f74c3a967c3a92e0d0a2d09496e666f726d6572206c657320706172656e7473207175616e7420617520736f6c6465206465206c612073636f6c61726974c3a92072657374616e7420c3a020706179657220c3a020756e652070c3a972696f6465207072c3a9636973652e0d0a2d09496e666f726d6572206c657320706172656e74732064e28099c3a96cc3a8766573207175616e74206175782072c3a9756e696f6e73206574206175747265732061637469766974c3a97320636f6e6365726e616e74206ce28099c3a9636f6c65206465206c6575722070726f74c3a967c3a92e0d0a2d09457463e280a6e280a6e280a62e2e0d0a, 'TRANSPARENCE HOLDING');

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
(12, 'Transparence Holding FACES', 'test', 'cover_1585233451131E93S991090M.png', 1, 1585233451);

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

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
(49, 12, 1, '1585233483222341257.png', '2020-03-26 14:38:03', 'background_image'),
(51, 12, 1, '1585233483567571084.png', '2020-03-26 14:38:03', 'background_image'),
(54, 12, 1, '1585233483495481403.png', '2020-03-26 14:38:03', 'background_image'),
(56, 12, 1, '1585233483216481134.png', '2020-03-26 14:38:03', 'background_image'),
(57, 12, 1, '1585233483985541286.png', '2020-03-26 14:38:03', 'background_image'),
(59, 12, 1, '1585233483707721198.png', '2020-03-26 14:38:03', 'background_image'),
(61, 12, 1, '1585233483574861265.png', '2020-03-26 14:38:03', 'background_image'),
(64, 12, 1, '1585233484997881502.png', '2020-03-26 14:38:04', 'background_image'),
(65, 12, 1, '1585233484833041326.png', '2020-03-26 14:38:04', 'background_image'),
(68, 1, 32, '1.5956146674639E+18.png', '2020-07-24 18:17:47', 'background_image'),
(69, 1, 32, '1.5956146681934E+18.png', '2020-07-24 18:17:48', 'background_image'),
(70, 1, 32, '1.5956146685038E+18.png', '2020-07-24 18:17:48', 'background_image'),
(71, 1, 32, '1.5956146687422E+18.png', '2020-07-24 18:17:48', 'background_image'),
(72, 12, 32, '1.5957901711176E+18.png', '2020-07-26 19:02:51', 'background_image'),
(73, 12, 32, '1.5957902036165E+18.png', '2020-07-26 19:03:23', 'background_image'),
(74, 12, 32, '1.5957902229749E+18.png', '2020-07-26 19:03:42', 'background_image'),
(75, 12, 32, '1.5957902237449E+18.png', '2020-07-26 19:03:43', 'background_image'),
(78, 12, 32, '1.5957902234732E+18.png', '2020-07-26 19:03:43', 'background_image'),
(79, 12, 32, '1.5957902239482E+18.png', '2020-07-26 19:03:43', 'background_image'),
(80, 12, 32, '1.5957902236679E+17.png', '2020-07-26 19:03:43', 'background_image'),
(81, 12, 32, '1.595790223585E+18.png', '2020-07-26 19:03:43', 'background_image');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `bgcolor`) VALUES
(1, 'super_admin', 'Super Admin', '#f44336'),
(2, 'parent', 'parent', '#2196f3'),
(7, 'operateur_de_saisie', 'professeur', '#9c27b0'),
(8, 'admin', 'Admin Ecole', '#0600ff'),
(10, 'vas_technologies', 'vas technologies', '#e26317'),
(11, 'scolarite', 'Scolatite', '#2a9e16');

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
) ENGINE=InnoDB AUTO_INCREMENT=626 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_perm`
--

INSERT INTO `group_perm` (`id`, `group_id`, `perm_id`) VALUES
(22, 5, 3),
(23, 5, 4),
(61, 6, 3),
(293, 1, 29),
(296, 1, 3),
(302, 1, 34),
(303, 1, 1),
(314, 1, 35),
(317, 1, 37),
(318, 1, 38),
(319, 1, 39),
(320, 1, 40),
(321, 1, 41),
(322, 1, 42),
(330, 2, 48),
(331, 1, 47),
(332, 2, 49),
(336, 4, 50),
(338, 4, 52),
(339, 4, 53),
(342, 1, 54),
(343, 3, 3),
(345, 1, 55),
(356, 8, 29),
(367, 1, 13),
(388, 1, 56),
(393, 1, 7),
(394, 7, 7),
(396, 8, 7),
(415, 1, 59),
(423, 1, 61),
(448, 1, 36),
(453, 1, 72),
(454, 1, 73),
(461, 1, 66),
(462, 1, 67),
(463, 1, 68),
(464, 1, 69),
(466, 1, 71),
(473, 1, 74),
(485, 1, 63),
(487, 1, 77),
(493, 8, 63),
(495, 8, 61),
(499, 8, 77),
(500, 8, 73),
(506, 8, 38),
(513, 8, 35),
(515, 1, 14),
(518, 1, 16),
(537, 2, 76),
(538, 2, 70),
(539, 7, 74),
(540, 7, 80),
(541, 7, 79),
(542, 7, 70),
(546, 7, 64),
(547, 7, 77),
(548, 7, 45),
(549, 7, 65),
(554, 2, 75),
(556, 1, 79),
(557, 1, 70),
(558, 1, 80),
(562, 1, 64),
(563, 1, 45),
(564, 1, 65),
(565, 1, 8),
(566, 1, 78),
(568, 7, 82),
(569, 7, 83),
(570, 7, 81),
(572, 2, 24),
(575, 8, 62),
(576, 8, 45),
(577, 8, 65),
(578, 8, 8),
(579, 8, 78),
(581, 8, 13),
(582, 8, 42),
(583, 8, 34),
(584, 8, 36),
(585, 8, 41),
(586, 8, 37),
(587, 1, 85),
(589, 10, 86),
(590, 1, 62),
(591, 1, 12),
(593, 8, 87),
(594, 8, 88),
(595, 8, 90),
(596, 8, 91),
(597, 11, 70),
(598, 11, 79),
(599, 11, 80),
(600, 11, 74),
(601, 1, 28),
(602, 1, 51),
(603, 1, 31),
(604, 1, 30),
(605, 1, 17),
(608, 8, 89),
(609, 8, 57),
(610, 8, 60),
(612, 8, 64),
(614, 8, 15),
(615, 8, 92),
(616, 8, 93),
(617, 8, 94),
(618, 8, 95),
(619, 8, 96),
(620, 8, 97),
(621, 8, 70),
(622, 8, 79),
(623, 8, 74),
(624, 8, 71),
(625, 8, 80);

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

DROP TABLE IF EXISTS `informations`;
CREATE TABLE IF NOT EXISTS `informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_images` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `ecole_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  `status` int(11) DEFAULT 1,
  `created_ad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `informations_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `slider_images`, `user_id`, `ecole_id`, `session_id`, `status`, `created_ad`) VALUES
(1, '[{\"title\":\"test slide\",\"description\":\"&quot;Vous pouvez utiliser l&#039;\\u00e9ducation pour changer le monde&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"0.png\"},{\"title\":\"La connaissance est le pouvoir\",\"description\":\"&quot;L&#039;\\u00e9ducation est la pr\\u00e9misse du progr\\u00e8s, dans chaque soci\\u00e9t\\u00e9, dans chaque famille&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"Logo_UNA_final.jpg\"}]', 32, 16, 1, 1, NULL),
(2, '[{\"title\":\"test slide\",\"description\":\"&quot;Vous pouvez utiliser l&#039;\\u00e9ducation pour changer le monde&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"0.png\"},{\"title\":\"La connaissance est le pouvoir\",\"description\":\"&quot;L&#039;\\u00e9ducation est la pr\\u00e9misse du progr\\u00e8s, dans chaque soci\\u00e9t\\u00e9, dans chaque famille&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2f3f8dc00f192ea51b394e0ae2835e2c.jpg\"}]', 59, 0, 1, 1, NULL),
(3, '[{\"title\":\"test slide\",\"description\":\"&quot;Vous pouvez utiliser l&#039;\\u00e9ducation pour changer le monde&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"0.png\"},{\"title\":\"La connaissance est le pouvoir\",\"description\":\"&quot;L&#039;\\u00e9ducation est la pr\\u00e9misse du progr\\u00e8s, dans chaque soci\\u00e9t\\u00e9, dans chaque famille&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2f3f8dc00f192ea51b394e0ae2835e2c.jpg\"}]', 59, 1, 1, 1, NULL),
(4, '[{\"title\":\"rehjymk;:;\",\"description\":\"\",\"image\":\"serveur2.png\"},{\"title\":\"la connaissance est le pouvoir\",\"description\":\"&quot;L&#039;\\u00e9ducation est la pr\\u00e9misse du progr\\u00e8s, dans chaque soci\\u00e9t\\u00e9, dans chaque famille&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2f3f8dc00f192ea51b394e0ae2835e2c.jpg\"}]', 59, 4, 1, 1, NULL),
(5, '[{\"title\":\" L&#039;\\u00e9ducation est l&#039;arme la plus puissante\",\"description\":\"&quot;Vous pouvez utiliser l&#039;\\u00e9ducation pour changer le monde&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"0.png\"},{\"title\":\"La connaissance est le pouvoir\",\"description\":\"&quot;L&#039;\\u00e9ducation est la pr\\u00e9misse du progr\\u00e8s, dans chaque soci\\u00e9t\\u00e9, dans chaque famille&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2f3f8dc00f192ea51b394e0ae2835e2c.jpg\"}]', 59, 3, 1, 1, NULL),
(9, '[{\"title\":\" L&#039;\\u00e9ducation est l&#039;arme la plus puissantes\",\"description\":\"test\",\"image\":\"0.png\"},{\"title\":\"La connaissance est le pouvoir\",\"description\":\"&quot;L&#039;\\u00e9ducation est la pr\\u00e9misse du progr\\u00e8s, dans chaque soci\\u00e9t\\u00e9, dans chaque famille&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2f3f8dc00f192ea51b394e0ae2835e2c.jpg\"}]', 59, 22, 1, 1, NULL);

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
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

DROP TABLE IF EXISTS `matiere`;
CREATE TABLE IF NOT EXISTS `matiere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `matiere_nom` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  `ecole_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`id`, `user_id`, `matiere_nom`, `description`, `session_id`, `ecole_id`) VALUES
(1, 32, 'math', 'programming language for creating web application', 1, NULL),
(2, 32, 'GEOGRAPHIE', 'programming language', 1, NULL),
(3, 11, 'FRANCAIS', 'programming language html styling sheet language', 1, NULL),
(4, 11, 'HISTOIRE', 'programming language', 1, NULL),
(5, 11, 'PHILO', 'programming language for creating web design', 1, NULL),
(29, 32, 'ecm', '', 1, NULL),
(8, 11, 'GEO', 'someone who designes PCP', 1, NULL),
(9, 11, 'physique', 'create web application using wordpress', 1, NULL),
(10, 11, 'Node js', 'Devellop applications using javascript framework', 1, NULL),
(15, 11, 'java', 'java', 1, NULL),
(32, 32, 'SVT', '', 1, NULL),
(24, 32, 'matiere 4', '', 1, NULL),
(28, 32, 'EDHC', '', 1, NULL),
(33, 32, 'EPS', '', 1, NULL),
(35, 32, 'informatique', '', 1, NULL),
(36, 32, 'anglais', '', 1, NULL),
(37, 91, 'svt', '', 1, 28),
(38, 91, 'histoire geographie', '', 1, 28),
(39, 91, 'math', '', 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ecole_id` int(11) NOT NULL,
  `eleve_id` int(11) DEFAULT NULL,
  `matiere_id` int(11) DEFAULT NULL,
  `note` varchar(225) DEFAULT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  `classe_id` int(11) DEFAULT NULL,
  `date` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `created_at` varchar(225) DEFAULT NULL,
  `updated_at` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) DEFAULT NULL,
  `num_fichier` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `ecole_id`, `eleve_id`, `matiere_id`, `note`, `session_id`, `classe_id`, `date`, `description`, `created_at`, `updated_at`, `status`, `user_id`, `num_fichier`) VALUES
(6, 16, 10, 1, '12', 1, 47, 'Mercredi 29 Juillet 2020', 'test save', '1596049543', NULL, 1, NULL, NULL),
(7, 16, 11, 1, '13', 1, 47, 'Mercredi 29 Juillet 2020', 'test save', '1596049543', NULL, 1, NULL, NULL),
(8, 16, 12, 1, '14', 1, 47, 'Mercredi 29 Juillet 2020', 'test save', '1596049543', NULL, 1, NULL, NULL),
(9, 16, 17, 1, '15', 1, 47, 'Mercredi 29 Juillet 2020', 'test save', '1596049543', NULL, 1, NULL, NULL),
(10, 16, 19, 1, '16', 1, 47, 'Mercredi 29 Juillet 2020', 'test save', '1596049543', NULL, 1, NULL, NULL),
(11, 16, 20, 4, '12', 1, 48, 'Lundi 6 Juillet 2020', 'devoir', '1596098461', NULL, 1, NULL, NULL),
(12, 16, 21, 4, '12', 1, 48, 'Lundi 6 Juillet 2020', 'devoir', '1596098461', NULL, 1, NULL, NULL),
(13, 16, 22, 4, '11', 1, 48, 'Lundi 6 Juillet 2020', 'devoir', '1596098461', NULL, 1, NULL, NULL),
(14, 16, 23, 4, '13', 1, 48, 'Lundi 6 Juillet 2020', 'devoir', '1596098461', NULL, 1, NULL, NULL),
(15, 16, 20, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596101108', NULL, 1, NULL, NULL),
(16, 16, 21, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596101108', NULL, 1, NULL, NULL),
(17, 16, 22, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596101108', NULL, 1, NULL, NULL),
(18, 16, 23, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596101108', NULL, 1, NULL, NULL),
(19, 16, 20, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596101109', NULL, 1, NULL, NULL),
(20, 16, 21, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596101109', NULL, 1, NULL, NULL),
(21, 16, 22, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596101109', NULL, 1, NULL, NULL),
(22, 16, 23, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596101109', NULL, 1, NULL, NULL),
(23, 16, 10, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104566', NULL, 1, NULL, NULL),
(24, 16, 11, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104566', NULL, 1, NULL, NULL),
(25, 16, 12, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104566', NULL, 1, NULL, NULL),
(26, 16, 17, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104566', NULL, 1, NULL, NULL),
(27, 16, 19, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104567', NULL, 1, NULL, NULL),
(28, 16, 10, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104570', NULL, 1, NULL, NULL),
(29, 16, 11, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104570', NULL, 1, NULL, NULL),
(30, 16, 12, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104570', NULL, 1, NULL, NULL),
(31, 16, 17, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104571', NULL, 1, NULL, NULL),
(32, 16, 19, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104571', NULL, 1, NULL, NULL),
(33, 16, 10, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104592', NULL, 1, NULL, NULL),
(34, 16, 11, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104593', NULL, 1, NULL, NULL),
(35, 16, 12, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104593', NULL, 1, NULL, NULL),
(36, 16, 17, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104593', NULL, 1, NULL, NULL),
(37, 16, 19, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104593', NULL, 1, NULL, NULL),
(38, 16, 10, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104757', NULL, 1, NULL, NULL),
(39, 16, 11, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104757', NULL, 1, NULL, NULL),
(40, 16, 12, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104757', NULL, 1, NULL, NULL),
(41, 16, 17, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104757', NULL, 1, NULL, NULL),
(42, 16, 19, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596104758', NULL, 1, NULL, NULL),
(43, 16, 10, 1, '12', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596105046', NULL, 1, NULL, NULL),
(44, 16, 11, 1, '12', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596105047', NULL, 1, NULL, NULL),
(45, 16, 12, 1, '11', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596105047', NULL, 1, NULL, NULL),
(46, 16, 17, 1, '11', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596105047', NULL, 1, NULL, NULL),
(47, 16, 19, 1, '11', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596105047', NULL, 1, NULL, NULL),
(48, 16, 10, 1, '12', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596119290', NULL, 1, NULL, NULL),
(49, 16, 11, 1, '12', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596119290', NULL, 1, NULL, NULL),
(50, 16, 12, 1, '11', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596119290', NULL, 1, NULL, NULL),
(51, 16, 17, 1, '11', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596119290', NULL, 1, NULL, NULL),
(52, 16, 19, 1, '11', 1, 47, 'Mardi 7 Juillet 2020', 'test', '1596119290', NULL, 1, NULL, NULL),
(53, 16, 10, 1, '12', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119572', NULL, 1, NULL, NULL),
(54, 16, 11, 1, '12', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119572', NULL, 1, NULL, NULL),
(55, 16, 12, 1, '11', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119572', NULL, 1, NULL, NULL),
(56, 16, 17, 1, '11', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119573', NULL, 1, NULL, NULL),
(57, 16, 19, 1, '11', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119573', NULL, 1, NULL, NULL),
(58, 16, 10, 1, '12', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119656', NULL, 1, NULL, NULL),
(59, 16, 11, 1, '12', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119656', NULL, 1, NULL, NULL),
(60, 16, 12, 1, '11', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119656', NULL, 1, NULL, NULL),
(61, 16, 17, 1, '11', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119656', NULL, 1, NULL, NULL),
(62, 16, 19, 1, '11', 1, 47, 'Mardi 30 Juin 2020', 'test', '1596119656', NULL, 1, NULL, NULL),
(63, 16, 10, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596119756', NULL, 1, NULL, NULL),
(64, 16, 11, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596119756', NULL, 1, NULL, NULL),
(65, 16, 12, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596119756', NULL, 1, NULL, NULL),
(66, 16, 17, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596119756', NULL, 1, NULL, NULL),
(67, 16, 19, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596119757', NULL, 1, NULL, NULL),
(68, 16, 10, 1, '12', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de math avec MR coulibaly', '1596123827', NULL, 1, NULL, NULL),
(69, 16, 10, 9, '18', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de niveau', '1596123828', NULL, 1, NULL, NULL),
(70, 16, 11, 1, '15', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de math avec MR coulibaly', '1596123828', NULL, 1, NULL, NULL),
(71, 16, 11, 9, '16', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de niveau', '1596123828', NULL, 1, NULL, NULL),
(72, 16, 12, 1, '13', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de math avec MR coulibaly', '1596123828', NULL, 1, NULL, NULL),
(73, 16, 12, 9, '13', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de niveau', '1596123828', NULL, 1, NULL, NULL),
(74, 16, 17, 1, '14', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de math avec MR coulibaly', '1596123828', NULL, 1, NULL, NULL),
(75, 16, 17, 9, '18', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de niveau', '1596123828', NULL, 1, NULL, NULL),
(76, 16, 19, 1, '12', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de math avec MR coulibaly', '1596123828', NULL, 1, NULL, NULL),
(77, 16, 19, 9, '15', 1, 47, 'Jeudi 30 Juillet 2020', 'devoir de niveau', '1596123828', NULL, 1, NULL, NULL),
(78, 19, 28, 1, '12.5', 1, 68, 'Vendredi 10 Juillet 2020', 'test', '1596124348', NULL, 1, NULL, NULL),
(79, 16, 11, 1, '13.5', 1, 47, 'Vendredi 10 Juillet 2020', 'test', '1596124348', NULL, 1, NULL, NULL),
(80, 16, 12, 1, '18.5', 1, 47, 'Vendredi 10 Juillet 2020', 'test', '1596124348', NULL, 1, NULL, NULL),
(81, 16, 17, 1, '14.5', 1, 47, 'Vendredi 10 Juillet 2020', 'test', '1596124348', NULL, 1, NULL, NULL),
(82, 16, 19, 1, '16.5', 1, 47, 'Vendredi 10 Juillet 2020', 'test', '1596124349', NULL, 1, NULL, NULL),
(83, 16, 10, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362530', NULL, 1, NULL, NULL),
(84, 16, 11, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362530', NULL, 1, NULL, NULL),
(85, 16, 12, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362530', NULL, 1, NULL, NULL),
(86, 16, 17, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362530', NULL, 1, NULL, NULL),
(87, 16, 19, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362531', NULL, 1, NULL, NULL),
(88, 16, 10, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362531', NULL, 1, NULL, NULL),
(89, 16, 11, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362531', NULL, 1, NULL, NULL),
(90, 16, 12, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362531', NULL, 1, NULL, NULL),
(91, 16, 17, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362531', NULL, 1, NULL, NULL),
(92, 16, 19, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'test', '1596362531', NULL, 1, NULL, NULL),
(93, 16, 20, 4, '20.9', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596394742', NULL, 1, 32, NULL),
(94, 16, 21, 4, '13', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596394742', NULL, 1, 32, NULL),
(95, 16, 22, 4, '45', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596394742', NULL, 1, 32, NULL),
(96, 16, 23, 4, '12', 1, 48, 'Jeudi 2 Juillet 2020', 'test', '1596394742', NULL, 1, 32, NULL),
(97, 16, 11, 1, '12', 1, 47, 'Mercredi 8 Juillet 2020', 'devoir', '1596542274', NULL, 1, 32, NULL),
(98, 16, 12, 1, '15', 1, 47, 'Mercredi 8 Juillet 2020', 'devoir', '1596542274', NULL, 1, 32, NULL),
(99, 16, 17, 1, '11', 1, 47, 'Mercredi 8 Juillet 2020', 'devoir', '1596542274', NULL, 1, 32, NULL),
(100, 19, 28, 1, '13', 1, 68, 'Mercredi 8 Juillet 2020', 'devoir', '1596542274', NULL, 1, 32, NULL),
(101, 19, 28, 1, '12', 1, 68, '11', 'test', '1597934816', NULL, 1, 32, NULL),
(102, 19, 28, 2, '22', 1, 68, '11', 'devoir', '1597934816', NULL, 1, 32, NULL),
(103, 19, 28, 3, '22', 1, 68, '11', 'interro sur 20', '1597934816', NULL, 1, 32, NULL),
(104, 19, 29, 1, '12', 1, 68, 'Mercredi 8 Juillet 2020', 'devoir', '1597946364', NULL, 1, 32, NULL),
(105, 19, 28, 3, '15', 1, 68, 'Mardi 4 Aout 2020', 'interro sur 20', '1598032363', NULL, 1, 32, NULL),
(106, 19, 28, 4, '15', 1, 68, 'Mardi 4 Aout 2020', 'devoir', '1598032363', NULL, 1, 32, NULL),
(107, 19, 28, 5, '14', 1, 68, 'Mercredi 12 Aout 2020', 'devoir', '1598032363', NULL, 1, 32, NULL),
(108, 19, 28, 29, '12', 1, 68, 'Mercredi 5 Aout 2020', 'test', '1598032363', NULL, 1, 32, NULL),
(109, 19, 28, 8, '11', 1, 68, 'Mercredi 5 Aout 2020', 'test', '1598032364', NULL, 1, 32, NULL),
(110, 19, 28, 9, '11', 1, 68, 'Jeudi 6 Aout 2020', 'test', '1598032364', NULL, 1, 32, NULL),
(111, 19, 28, 28, '14', 1, 68, 'Vendredi 7 Aout 2020', 'test', '1598032364', NULL, 1, 32, NULL),
(112, 19, 28, 33, '12', 1, 68, 'Mercredi 5 Aout 2020', 'test', '1598032364', NULL, 1, 32, NULL),
(113, 16, 28, 1, '15', 1, 48, 'jeu 27 aout  2020', 'interro sur 10', '1598617867', NULL, 1, 32, NULL),
(114, 16, 12, 35, '13', 1, 48, 'vend 10 juin 20', 'devoir sur 20', '1598617867', NULL, 1, 32, NULL),
(131, 16, 28, 1, '15', 1, 48, 'jeu 27 aout  2020', 'interro sur 10', '1598618179', NULL, 1, 32, NULL),
(132, 16, 12, 35, '13', 1, 48, 'vend 10 juin 20', 'devoir sur 20', '1598618180', NULL, 1, 32, NULL),
(133, 16, 22, 29, '11', 1, 48, 'mer 11 nov 20', 'texts', '1598618180', NULL, 1, 32, NULL),
(194, 16, 22, 29, '11', 1, 48, 'mer 11 nov 20', 'texts', '1598876096', NULL, 1, 32, '0232'),
(203, 16, 22, 29, '11', 1, 48, 'mer 11 nov 20', 'texts', '1598876671', NULL, 1, 32, '0107'),
(209, 16, 22, 29, '11', 1, 48, 'mer 11 nov 20', 'texts', '1598876873', NULL, 1, 32, '0106'),
(210, 16, 28, 1, '15', 1, 48, 'jeu 27 aout  2020', 'interro sur 10', '1598878940', NULL, 1, 32, 'text'),
(211, 16, 12, 35, '13', 1, 48, 'vend 10 juin 20', 'devoir sur 20', '1598878940', NULL, 1, 32, 'text'),
(212, 16, 22, 29, '11', 1, 48, 'mer 11 nov 20', 'texts', '1598878940', NULL, 1, 32, 'text'),
(213, 16, 28, 1, '15', 1, 48, 'jeu 27 aout  2020', 'interro sur 10', '1598880284', NULL, 1, 32, 'today'),
(214, 16, 12, 35, '13', 1, 48, 'vend 10 juin 20', 'devoir sur 20', '1598880284', NULL, 1, 32, 'today'),
(215, 16, 22, 29, '11', 1, 48, 'mer 11 nov 20', 'texts', '1598880284', NULL, 1, 32, 'today'),
(216, 16, 28, 1, '15', 1, 48, 'jeu 27 aout  2020', 'interro sur 10', '1598881050', NULL, 1, 32, '0102'),
(217, 16, 12, 35, '13', 1, 48, 'vend 10 juin 20', 'devoir sur 20', '1598881050', NULL, 1, 32, '0102'),
(218, 16, 22, 29, '11', 1, 48, 'mer 11 nov 20', 'texts', '1598881050', NULL, 1, 32, '0102'),
(219, 16, 10, 1, '11', 1, 48, 'Mardi 1 Septembre 2020', 'devoir sur 20', '1599039322', NULL, 1, 32, NULL),
(220, 16, 10, 3, '12', 1, 48, 'Mercredi 2 Septembre 2020', 'interro sur 10', '1599039323', NULL, 1, 32, NULL),
(221, 16, 10, 4, '13', 1, 48, 'Dimanche 30 Aout 2020', 'test ', '1599039323', NULL, 1, 32, NULL),
(222, 16, 10, 5, '11', 1, 48, 'Mercredi 12 Aout 2020', 'oral', '1599039323', NULL, 1, 32, NULL),
(223, 16, 10, 29, '15', 1, 48, 'Mardi 1 Septembre 2020', 'devoir', '1599039323', NULL, 1, 32, NULL),
(224, 16, 20, 1, '10', 1, 48, 'Mardi 1 Septembre 2020', 'devoir sur 20', '1599039323', NULL, 1, 32, NULL),
(225, 16, 20, 3, '12', 1, 48, 'Mercredi 2 Septembre 2020', 'interro sur 10', '1599039323', NULL, 1, 32, NULL),
(226, 16, 20, 4, '13', 1, 48, 'Dimanche 30 Aout 2020', 'test ', '1599039323', NULL, 1, 32, NULL),
(227, 16, 20, 5, '12', 1, 48, 'Mercredi 12 Aout 2020', 'oral', '1599039323', NULL, 1, 32, NULL),
(228, 16, 20, 29, '15', 1, 48, 'Mardi 1 Septembre 2020', 'devoir', '1599039323', NULL, 1, 32, NULL),
(229, 16, 21, 1, '11', 1, 48, 'Mardi 1 Septembre 2020', 'devoir sur 20', '1599039323', NULL, 1, 32, NULL),
(230, 16, 21, 3, '14', 1, 48, 'Mercredi 2 Septembre 2020', 'interro sur 10', '1599039323', NULL, 1, 32, NULL),
(231, 16, 21, 4, '15', 1, 48, 'Dimanche 30 Aout 2020', 'test ', '1599039323', NULL, 1, 32, NULL),
(232, 16, 21, 5, '18', 1, 48, 'Mercredi 12 Aout 2020', 'oral', '1599039323', NULL, 1, 32, NULL),
(233, 16, 21, 29, '12', 1, 48, 'Mardi 1 Septembre 2020', 'devoir', '1599039323', NULL, 1, 32, NULL),
(234, 16, 22, 1, '20', 1, 48, 'Mardi 1 Septembre 2020', 'devoir sur 20', '1599039323', NULL, 1, 32, NULL),
(235, 16, 22, 3, '11', 1, 48, 'Mercredi 2 Septembre 2020', 'interro sur 10', '1599039323', NULL, 1, 32, NULL),
(236, 16, 22, 4, '11', 1, 48, 'Dimanche 30 Aout 2020', 'test ', '1599039323', NULL, 1, 32, NULL),
(237, 16, 22, 5, '1', 1, 48, 'Mercredi 12 Aout 2020', 'oral', '1599039324', NULL, 1, 32, NULL),
(238, 16, 22, 29, '11', 1, 48, 'Mardi 1 Septembre 2020', 'devoir', '1599039324', NULL, 1, 32, NULL),
(239, 16, 23, 1, '15', 1, 48, 'Mardi 1 Septembre 2020', 'devoir sur 20', '1599039324', NULL, 1, 32, NULL),
(240, 16, 23, 3, '14', 1, 48, 'Mercredi 2 Septembre 2020', 'interro sur 10', '1599039324', NULL, 1, 32, NULL),
(241, 16, 23, 4, '15', 1, 48, 'Dimanche 30 Aout 2020', 'test ', '1599039324', NULL, 1, 32, NULL),
(242, 16, 23, 5, '15', 1, 48, 'Mercredi 12 Aout 2020', 'oral', '1599039324', NULL, 1, 32, NULL),
(243, 16, 23, 29, '12', 1, 48, 'Mardi 1 Septembre 2020', 'devoir', '1599039324', NULL, 1, 32, NULL),
(244, 16, 24, 1, '12', 1, 48, 'Mardi 1 Septembre 2020', 'devoir sur 20', '1599039324', NULL, 1, 32, NULL),
(245, 16, 24, 3, '14', 1, 48, 'Mercredi 2 Septembre 2020', 'interro sur 10', '1599039324', NULL, 1, 32, NULL),
(246, 16, 24, 4, '15', 1, 48, 'Dimanche 30 Aout 2020', 'test ', '1599039324', NULL, 1, 32, NULL),
(247, 16, 24, 5, '125', 1, 48, 'Mercredi 12 Aout 2020', 'oral', '1599039324', NULL, 1, 32, NULL),
(248, 16, 24, 29, '13', 1, 48, 'Mardi 1 Septembre 2020', 'devoir', '1599039324', NULL, 1, 32, NULL),
(249, 16, 25, 1, '11', 1, 48, 'Mardi 1 Septembre 2020', 'devoir sur 20', '1599039324', NULL, 1, 32, NULL),
(250, 16, 25, 3, '14', 1, 48, 'Mercredi 2 Septembre 2020', 'interro sur 10', '1599039324', NULL, 1, 32, NULL),
(251, 16, 25, 4, '12', 1, 48, 'Dimanche 30 Aout 2020', 'test ', '1599039324', NULL, 1, 32, NULL),
(252, 16, 25, 5, '121', 1, 48, 'Mercredi 12 Aout 2020', 'oral', '1599039324', NULL, 1, 32, NULL),
(253, 16, 25, 29, '7', 1, 48, 'Mardi 1 Septembre 2020', 'devoir', '1599039324', NULL, 1, 32, NULL),
(254, 16, 40, 1, '1', 1, 48, 'Mardi 1 Septembre 2020', 'devoir sur 20', '1599039324', NULL, 1, 32, NULL),
(255, 16, 40, 3, '15', 1, 48, 'Mercredi 2 Septembre 2020', 'interro sur 10', '1599039324', NULL, 1, 32, NULL),
(256, 16, 40, 4, '18', 1, 48, 'Dimanche 30 Aout 2020', 'test ', '1599039324', NULL, 1, 32, NULL),
(257, 16, 40, 5, '17', 1, 48, 'Mercredi 12 Aout 2020', 'oral', '1599039324', NULL, 1, 32, NULL),
(258, 16, 40, 29, '19', 1, 48, 'Mardi 1 Septembre 2020', 'devoir', '1599039324', NULL, 1, 32, NULL),
(259, 16, 28, 1, '15', 1, 48, 'jeu 27 aout  2020', 'interro sur 10', '1599223612', NULL, 1, 59, 'arlette'),
(260, 16, 12, 35, '13', 1, 48, 'vend 10 juin 20', 'devoir sur 20', '1599223612', NULL, 1, 59, 'arlette'),
(261, 16, 22, 29, '11', 1, 48, 'mer 11 nov 20', 'texts', '1599223613', NULL, 1, 59, 'arlette'),
(262, 16, 28, 1, '15', 1, 48, 'jeu 27 aout  2020', 'interro sur 10', '1599231956', NULL, 1, 32, 'text5'),
(263, 19, 41, 9, '10', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(264, 19, 59, 9, '10', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(265, 19, 60, 9, '10', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(266, 19, 44, 9, '16', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(267, 19, 45, 9, '16', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(268, 19, 46, 9, '16', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(269, 19, 47, 9, '15', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(270, 19, 48, 9, '12', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(271, 19, 61, 9, '12', 1, 68, '01/09/2020', 'devoir commun', '1599497930', NULL, 1, 32, 'phani'),
(272, 19, 50, 9, '12', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(273, 19, 51, 9, '15', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(274, 19, 52, 9, '15', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(275, 19, 53, 9, '13', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(276, 19, 54, 9, '13', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(277, 19, 55, 9, '13', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(278, 19, 56, 9, '16', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(279, 19, 57, 9, '16', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(280, 19, 58, 9, '16', 1, 68, '01/09/2020', 'devoir commun', '1599497931', NULL, 1, 32, 'phani'),
(281, 18, 41, NULL, '12', 1, 69, '03/09/2020', 'devoir sur 20', '1599568062', NULL, 1, 32, 'test2'),
(282, 18, 59, NULL, '19', 1, 69, '03/09/2020', 'devoir sur 20', '1599568062', NULL, 1, 32, 'test2'),
(283, 18, 60, NULL, '14', 1, 69, '03/09/2020', 'devoir sur 20', '1599568062', NULL, 1, 32, 'test2'),
(284, 18, 44, NULL, '16', 1, 69, '03/09/2020', 'devoir sur 20', '1599568062', NULL, 1, 32, 'test2'),
(285, 18, 41, 36, '12', 1, 69, '03/09/2020', 'devoir sur 20', '1599568355', NULL, 1, 32, 'text3'),
(286, 18, 59, 36, '19', 1, 69, '03/09/2020', 'devoir sur 20', '1599568355', NULL, 1, 32, 'text3'),
(287, 18, 60, 36, '14', 1, 69, '03/09/2020', 'devoir sur 20', '1599568355', NULL, 1, 32, 'text3'),
(288, 18, 44, 36, '16', 1, 69, '03/09/2020', 'devoir sur 20', '1599568355', NULL, 1, 32, 'text3'),
(289, 4, 41, 36, '12', 1, 66, '03/09/2020', 'devoir sur 20', '1599571768', NULL, 1, 32, 'aaa2'),
(290, 4, 59, 36, '19', 1, 66, '03/09/2020', 'devoir sur 20', '1599571768', NULL, 1, 32, 'aaa2'),
(291, 4, 60, 36, '14', 1, 66, '03/09/2020', 'devoir sur 20', '1599571768', NULL, 1, 32, 'aaa2'),
(292, 4, 44, 36, '16', 1, 66, '03/09/2020', 'devoir sur 20', '1599571768', NULL, 1, 32, 'aaa2'),
(293, 20, 41, 36, '12', 1, 70, '03/09/2020', 'devoir sur 20', '1599641458', NULL, 1, 32, 'text10'),
(294, 20, 59, 36, '19', 1, 70, '03/09/2020', 'devoir sur 20', '1599641458', NULL, 1, 32, 'text10'),
(295, 20, 60, 36, '14', 1, 70, '03/09/2020', 'devoir sur 20', '1599641458', NULL, 1, 32, 'text10'),
(296, 20, 44, 36, '16', 1, 70, '03/09/2020', 'devoir sur 20', '1599641458', NULL, 1, 32, 'text10'),
(297, 21, 96, 36, '12', 1, 72, '03/09/2020', 'devoir sur 20', '1599743126', NULL, 1, 32, '1009'),
(298, 21, 97, 36, '19', 1, 72, '03/09/2020', 'devoir sur 20', '1599743126', NULL, 1, 32, '1009'),
(299, 21, 98, 36, '14', 1, 72, '03/09/2020', 'devoir sur 20', '1599743126', NULL, 1, 32, '1009'),
(300, 21, 99, 36, '16', 1, 72, '03/09/2020', 'devoir sur 20', '1599743126', NULL, 1, 32, '1009'),
(301, 22, 92, 36, '15', 1, 71, '10/09/2020', 'devoir sur 20', '1599743253', NULL, 1, 32, '0920'),
(302, 22, 93, 36, '19', 1, 71, '11/09/2020', 'devoir sur 20', '1599743253', NULL, 1, 32, '0920'),
(303, 22, 94, 36, '11', 1, 71, '12/09/2020', 'devoir sur 20', '1599743254', NULL, 1, 32, '0920'),
(304, 22, 54, 36, '13.50', 1, 71, '13/09/2020', 'devoir sur 20', '1599743254', NULL, 1, 32, '0920'),
(305, 22, 95, NULL, '15.25', 1, 71, '14/09/2020', 'devoir sur 20', '1599743254', NULL, 1, 32, '0920'),
(306, 22, 92, 36, '15', 1, 71, '10/09/2020', 'devoir sur 20', '1599743335', NULL, 1, 32, '7889'),
(307, 22, 93, 36, '19', 1, 71, '11/09/2020', 'devoir sur 20', '1599743335', NULL, 1, 32, '7889'),
(308, 22, 94, 36, '11', 1, 71, '12/09/2020', 'devoir sur 20', '1599743335', NULL, 1, 32, '7889'),
(309, 22, 54, 36, '13.50', 1, 71, '13/09/2020', 'devoir sur 20', '1599743335', NULL, 1, 32, '7889'),
(310, 22, 95, NULL, '15.25', 1, 71, '14/09/2020', 'devoir sur 20', '1599743335', NULL, 1, 32, '7889'),
(311, 22, 92, 36, '15', 1, 71, '10/09/2020', 'devoir sur 20', '1599743387', NULL, 1, 32, '7896'),
(312, 22, 93, 36, '19', 1, 71, '11/09/2020', 'devoir sur 20', '1599743387', NULL, 1, 32, '7896'),
(313, 22, 94, 36, '11', 1, 71, '12/09/2020', 'devoir sur 20', '1599743387', NULL, 1, 32, '7896'),
(314, 22, 54, 36, '13.50', 1, 71, '13/09/2020', 'devoir sur 20', '1599743387', NULL, 1, 32, '7896'),
(315, 22, 95, NULL, '15.25', 1, 71, '14/09/2020', 'devoir sur 20', '1599743388', NULL, 1, 32, '7896'),
(316, 22, 92, 36, '15', 1, 71, '10/09/2020', 'devoir sur 20', '1599743486', NULL, 1, 32, '01071'),
(317, 22, 93, 36, '19', 1, 71, '11/09/2020', 'devoir sur 20', '1599743486', NULL, 1, 32, '01071'),
(318, 22, 94, 36, '11', 1, 71, '12/09/2020', 'devoir sur 20', '1599743486', NULL, 1, 32, '01071'),
(319, 22, 54, 36, '13', 1, 71, '13/09/2020', 'devoir sur 20', '1599743486', NULL, 1, 32, '01071'),
(320, 22, 95, NULL, '15.25', 1, 71, '14/09/2020', 'devoir sur 20', '1599743486', NULL, 1, 32, '01071'),
(321, 22, 92, 36, '15', 1, 71, '10/09/2020', 'devoir sur 20', '1599743600', NULL, 1, 32, '01024'),
(322, 22, 93, 36, '19', 1, 71, '11/09/2020', 'devoir sur 20', '1599743600', NULL, 1, 32, '01024'),
(323, 22, 94, 36, '11', 1, 71, '12/09/2020', 'devoir sur 20', '1599743601', NULL, 1, 32, '01024'),
(324, 22, 54, 36, '13.50', 1, 71, '13/09/2020', 'devoir sur 20', '1599743601', NULL, 1, 32, '01024'),
(325, 22, 92, 1, '15', 1, 71, 'Mercredi 8 Juillet 2020', 'devoir sur 20', '1600851381', NULL, 1, 32, NULL),
(326, 22, 107, 1, '15', 1, 71, 'Mercredi 8 Juillet 2020', 'devoir sur 20', '1602593620', NULL, 1, 32, NULL),
(327, 22, 107, 36, '16', 1, 71, 'Mercredi 7 Octobre 2020', 'interro sur 20', '1602593620', NULL, 1, 32, NULL),
(328, 21, 108, 35, '12', 1, 72, 'Mercredi 1 Aout 2018', 'test', '1602593708', NULL, 1, 32, NULL),
(329, 21, 108, 36, '11', 1, 72, 'Lundi 31 Aout 2020', 'interro sur 20', '1602593709', NULL, 1, 32, NULL);

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
  `session_id` int(11) NOT NULL DEFAULT 1,
  `ecole_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notice_event`
--

INSERT INTO `notice_event` (`type`, `id`, `title`, `date`, `content`, `image`, `created_by_user`, `visible`, `status`, `session_id`, `ecole_id`) VALUES
('event', 24, 'Celebrating', 1583452800, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium adipisci asperiores consequatur corporis, cumque ea eaque ex ipsa nesciunt non numquam pariatur provident quae, quas reiciendis reprehenderit rerum veritatis voluptatem?\r\n', '1583359101238U85W4821154I.png', 11, 1, 1, 1, NULL),
('event', 26, 'event2', 1585267200, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium adipisci asperiores consequatur corporis, cumque ea eaque ex ipsa nesciunt non numquam pariatur provident quae, quas reiciendis reprehenderit rerum veritatis voluptatem?\r\n', '1583355049262K36O5191066D.png', 11, 1, 1, 1, NULL),
('notice', 28, 'notice 1', 1583366400, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis dolore dolorem eaque error itaque magnam nesciunt nisi nostrum, numquam quos repellendus repudiandae saepe sint totam veritatis! Dignissimos et officia repellendus!\r\n', '158336043921S11C2081046T.png', 11, 1, 1, 1, NULL),
('notice', 29, 'motice 2', 1585440000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores cumque ducimus error ipsum libero numquam repudiandae similique voluptas. Adipisci atque aut doloremque enim explicabo fugit ipsam ipsum iste numquam tempora.\r\n', '15833605917R46V2081335Q.png', 11, 1, 1, 1, NULL),
('event', 30, 'sortie', 1599170400, 'sortie d\'élèves sur jacqueville', '1599234986152I78S2211480G.png', 32, 1, 1, 1, NULL),
('event', 31, 'election', 1604098800, 'les elections sont prevus pour le 31 octobre 2021', '1603106573193O20H4041195T.png', 32, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parametre_scolarite`
--

DROP TABLE IF EXISTS `parametre_scolarite`;
CREATE TABLE IF NOT EXISTS `parametre_scolarite` (
  `id` int(11) DEFAULT NULL,
  `pourcentage` varchar(100) DEFAULT NULL,
  `quantite_temps` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `ecole_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_parent` varchar(225) DEFAULT NULL,
  `prenom_parent` varchar(225) DEFAULT NULL,
  `contact` text DEFAULT NULL,
  `code_parent` varchar(225) NOT NULL,
  `created_at` varchar(225) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ecole_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `nom_parent`, `prenom_parent`, `contact`, `code_parent`, `created_at`, `user_id`, `ecole_id`, `session_id`) VALUES
(6, 'Aka', 'Brou pascal', '25468586543', '25468586543', NULL, 37, 2, 1),
(8, 'aka', 'john', '03347127', '03347127', NULL, 39, 9, 1),
(13, 'test', 'john', '2345869774', '2345869774', NULL, 46, 16, 1),
(14, 'test', 'aaaa', '4444', '4444', NULL, 48, 16, 1),
(15, 'kouassi', 'brice', '03421615,0235641', '03421615', NULL, 50, 16, 1),
(16, 'modeste', 'modeste', '47160000', '47160000', NULL, 51, 16, 1),
(18, 'kouassi', 'lambaire', '452319756', '452319756', '1597927338', 32, 16, 1),
(19, 'kablan333', 'dinkan', '564231464/46544456', '564231464', '1597927338', 32, 16, 1),
(20, 'yao222', 'ange', '645645646', '645645646', '1597927339', 32, 16, 1),
(21, 'Kassi999', 'Akisi', '564613213', '564613213', '1597927339', 32, 16, 1),
(26, 'kouassi', 'lambaire', '4523148756', '4523148756', '1599234619', 60, 16, 1),
(27, 'yao', 'grace', '615645646', '615645646', '1599234619', 61, 16, 1),
(28, 'Kassi', 'Akisi', '564613252', '564613252', '1599234620', 62, 16, 1),
(41, 'FEH', 'KESSE', '79327900', '79327900', '1599491276', 75, 19, 1),
(42, 'KONE', 'MAKAGBE', '79327901', '79327901', '1599491277', 76, 19, 1),
(43, 'SOH', 'DOROH YVES', '54327903', '54327903', '1599491277', 77, 19, 1),
(44, 'SOHON', 'BLAISE', '79327903', '79327903', '1599491278', 78, 19, 1),
(45, 'ZOUGRANA', 'ANGELLE', '78327904', '78327904', '1599491279', 79, 19, 1),
(46, 'ZOUGRANA', 'FRANCINE', '79327904', '79327904', '1599491279', 80, 19, 1),
(47, 'ESSANI', 'DIEU', '79327898', '79327898', '1599494608', 81, 19, 1),
(48, 'kassi', 'emmanuel', '7929385', '7929385', '1599494609', 82, 19, 1),
(64, 'OUATTARA', 'AHMED', '79327890/59964182', '79327890', '1599648426', 63, 20, 1),
(65, 'EKROU', 'BLANCHARD', '79327891', '79327891', '1599648426', 64, 20, 1),
(66, 'AKRONGO', 'MARCELINE', '78327892', '78327892', '1599648426', 65, 20, 1),
(67, 'BOGA', 'CEDRIC', '54327893', '54327893', '1599648426', 66, 20, 1),
(68, 'BONIGO', 'DANIELLE', '78327894', '78327894', '1599648426', 67, 20, 1),
(69, 'OUATTARA', 'AHMED', '79327890/59964182', '79327890', '1599648872', 63, 4, 1),
(70, 'EKROU', 'BLANCHARD', '79327891', '79327891', '1599648872', 64, 4, 1),
(71, 'AKRONGO', 'MARCELINE', '78327892', '78327892', '1599648872', 65, 4, 1),
(72, 'BOGA', 'CEDRIC', '54327893', '54327893', '1599648872', 66, 4, 1),
(73, 'BONIGO', 'DANIELLE', '78327894', '78327894', '1599648872', 67, 4, 1),
(74, 'OUATTARA', 'AHMED', '79327890/59964182', '79327890', '1599742312', 63, 22, 1),
(75, 'EKROU', 'BLANCHARD', '79327891', '79327891', '1599742312', 64, 22, 1),
(76, 'AKRONGO', 'MARCELINE', '78327892', '78327892', '1599742312', 65, 22, 1),
(77, 'BOGA', 'CEDRIC', '54327893', '54327893', '1599742312', 66, 22, 1),
(79, 'OUATTARA', 'AHMED', '79327890/59964182', '79327890', '1599742338', 63, 21, 1),
(80, 'EKROU', 'BLANCHARD', '79327891', '79327891', '1599742338', 64, 21, 1),
(81, 'AKRONGO', 'MARCELINE', '78327892', '78327892', '1599742338', 65, 21, 1),
(82, 'BOGA', 'CEDRIC', '54327893', '54327893', '1599742338', 66, 21, 1),
(83, 'BONIGO', 'DANIELLE', '78327894', '78327894', '1599742338', 67, 21, 1),
(90, 'KOUASSI', 'ANGE', '03470665', '03470665', '1602593425', 85, 22, 1),
(91, 'KOUASSI', 'ANGE', '03470665', '03470665', '1602593465', 85, 21, 1),
(92, 'parent', 'test1', '123456789', '123456789', '1608389795', 44, 28, 1),
(93, 'parent2', 'test', '987654321', '987654321', '1608501656', 92, 28, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perm_id`, `perm_name`, `menu_name`, `slug`, `level`, `parent_id`, `url`, `icon`, `created_at`, `order`, `visible`) VALUES
(5, 'Linked country', 'head', 'linked-country', 0, 0, 'admin/linked_country', 'fs-17 m-r-5 fa fa-link', '2020-12-19 11:25:17', 43, 1),
(8, 'Matieres', 'head', 'skills', 0, 0, 'admin/matieres', 'm-r-5 mdi mdi-steering fs-17', '2020-12-19 11:25:17', 34, 1),
(11, 'Professions', 'head', 'professions', 0, 0, 'admin/professions', 'm-r-5 fs-17 fas fa-diagnoses', '2020-12-19 11:25:17', 44, 1),
(12, 'Avis  & événements', 'head', 'events', 0, 0, 'admin/notice_event/notice_event', 'm-r-5 fs-17 mdi mdi-calendar-multiple', '2020-12-26 13:42:34', 63, 1),
(13, ' Paramètres', 'head', 'preferences', 0, 0, '', 'fa fa-cogs m-r-5', '2020-12-19 11:25:17', 45, 1),
(14, 'Menus', 'head', 'menus', 0, 0, 'admin/menu', 'mdi mdi-menu fs-17 m-r-5', '2020-12-19 11:25:17', 42, 1),
(15, 'Classes', 'head', 'batches', 0, 0, 'admin/classes', 'fas fa-users fs-17 m-r-5', '2020-12-19 15:07:57', 27, 1),
(16, 'Quiz Management', 'head', 'quiz-management', 0, 0, 'faculty/quiz', 'fas fa-question fs-17', '2020-12-26 13:42:34', 64, 1),
(17, 'Dashboard', 'head', 'dashboard', 0, 0, 'admin/dashboard', 'mdi mdi-view-dashboard', '2020-07-09 10:49:30', 1, 1),
(24, 'Interface', 'head', 'interface', 0, 0, 'admin/prefs/interfaces', 'fas fa-laptop m-r-5', '2020-12-26 13:42:35', 62, 1),
(25, 'Batch Management', 'head', 'batch-management', 0, 0, 'faculty/batches', ' fas fa-users', '2020-12-19 11:25:17', 39, 1),
(26, 'Attendances Report', 'head', 'attendances-report', 0, 0, 'faculty/batches/attendance_report', 'fas fa-calendar-alt', '2020-12-19 11:25:17', 41, 1),
(28, 'Utilisateurs', 'head', 'users', 0, 0, 'admin/users', 'fa fa-users', '2020-12-19 11:25:17', 22, 1),
(29, 'Liste', 'sub', 'list', 1, 28, 'admin/users', 'mdi-account-circle mdi', '2020-12-26 13:42:35', 25, 1),
(30, 'Creer', 'sub', 'create', 1, 28, 'admin/users/create', 'mdi-account-multiple-plus mdi', '2020-12-26 13:42:35', 26, 1),
(31, 'profile', 'sub', 'profile', 1, 28, 'admin/users/profile', 'fas fa-dot-circle', '2020-12-26 13:42:35', 24, 0),
(34, 'General', 'sub', 'general', 1, 13, 'admin/prefs', 'mdi-settings mdi', '2020-12-26 13:42:35', 47, 1),
(35, 'Homepage Slider', 'sub', 'homepage-slider', 1, 13, 'admin/prefs/homepage_slider', 'mdi-camera-burst mdi', '2020-12-26 13:42:35', 50, 1),
(36, 'Gallery', 'sub', 'gallery', 1, 13, 'admin/gallery', 'mdi-collage mdi', '2020-12-26 13:42:35', 48, 1),
(37, 'About Us', 'sub', 'about-page', 1, 13, 'admin/prefs/about_us', 'fa fa-question', '2020-12-26 13:42:35', 51, 1),
(38, 'Editor', 'head', 'editor', 0, 0, 'admin/prefs/editor', 'fa fa-edit', '2020-12-19 11:25:18', 38, 0),
(39, 'Terms & Conditions', 'sub', 'terms-conditions', 1, 13, 'admin/prefs/terms_conditions', ' fas fa-handshake', '2020-12-26 13:42:35', 53, 1),
(40, 'Privacy Policy', 'sub', 'privacy-policy', 1, 13, 'admin/prefs/privacy_policy', 'fas fa-user-secret', '2020-12-26 13:42:35', 54, 1),
(41, 'Gallery Images', 'sub', 'gallery-images', 1, 13, 'admin/gallery/gallery', 'fa fa-image', '2020-12-26 13:42:35', 49, 0),
(42, 'System Settings', 'sub', 'system-settings', 1, 13, 'admin/prefs/system_settings', 'fa fa-gear', '2020-12-26 13:42:35', 46, 1),
(43, 'Attendances Report', 'head', 'attendances-report', 0, 0, 'faculty/batches/attendance_report', 'mdi mdi-calendar', '2020-12-19 11:25:18', 40, 1),
(45, 'eleves', 'head', 'batches-student', 0, 0, 'admin/eleves', 'fa fa-users', '2020-12-19 15:36:07', 31, 0),
(46, 'Questions', 'head', 'questions', 0, 0, 'admin/skills/questions', 'fa fa-question', '2020-12-26 13:42:35', 65, 0),
(47, 'Manage Questions', 'head', 'manage-questions', 0, 0, 'admin/skills/questions', 'fa fa-question', '2020-12-26 13:42:35', 66, 0),
(51, 'edit users', 'sub', 'edit-users', 1, 28, 'admin/users/edit', 'fa fa-user', '2020-12-26 13:42:35', 23, 0),
(54, 'Faculties', 'sub', 'faculties', 1, 13, 'admin/prefs/faculties', 'fas fa-dot-circle', '2020-12-26 13:42:35', 55, 0),
(55, 'Language', 'sub', 'language', 1, 13, 'admin/prefs/language', 'fa fa-language', '2020-12-26 13:42:35', 52, 1),
(57, 'parents', 'head', 'parents', 0, 0, 'admin/parents/index', 'fas fa-user', '2020-12-19 14:48:49', 20, 1),
(58, 'ecole', 'head', 'ecole', 0, 0, 'admin/ecoles', 'm-r-5 mdi mdi-school', '2020-12-19 11:25:18', 16, 1),
(60, 'Creer Parent', 'head', 'creer-parent', 0, 0, 'admin/parents/create', 'fa fa-plus', '2020-12-19 11:25:18', 21, 0),
(61, 'Creer Ecole', 'head', 'cree-ecoles', 0, 0, 'admin/ecoles/create', 'fa fa-plus', '2020-12-19 11:25:18', 19, 0),
(62, 'Creer eleve', 'head', 'creer-eleve', 0, 0, 'admin/eleves/create', 'fa fa-plus', '2020-12-19 11:25:18', 32, 0),
(63, 'Anne Academique', 'head', 'anne-academique', 0, 0, 'admin/anneeacademique', 'fa fa-calendar', '2020-12-19 11:25:18', 15, 1),
(64, 'Classes index', 'head', 'classes', 0, 0, 'admin/classes/index', 'fas fa-users', '2020-12-19 11:25:18', 28, 0),
(65, 'eleves index', 'head', 'eleves-index', 0, 0, 'admin/eleves/index', 'fa fa-users', '2020-12-19 11:25:18', 33, 0),
(70, 'informations', 'head', 'informations', 0, 0, 'admin/eleves/action', 'fa fa-info', '2020-12-19 11:25:18', 10, 0),
(71, 'creer_note', 'sub', 'creer-note', 1, 70, 'admin/eleves/action/note', 'fa fa-plus', '2020-12-26 13:42:35', 14, 0),
(73, 'creer classes', 'head', 'creer-classes', 0, 0, 'admin/classes/create', 'fa fa-plus', '2020-12-19 11:25:18', 30, 0),
(74, 'creer_scolarite_heureabsence', 'sub', 'creer-scolarite-heureabsence', 1, 70, 'admin/eleves/action/scolarite', 'fa-fa-plus', '2020-12-26 13:42:35', 13, 0),
(75, 'dashboard', 'head', 'dashboard-parent', 0, 0, 'admin/dashboard/dash_parent', 'mdi mdi-view-dashboard', '2020-09-25 10:18:31', 4, 1),
(76, 'detail_eleve', 'head', 'detail-eleve', 0, 0, 'admin/eleves/detail_eleve', 'mdi mdi-view-dashboard', '2020-09-25 10:18:31', 3, 0),
(77, 'matiere_classe', 'head', 'matiere-classe', 0, 0, 'admin/classes/voir_matiere', 'fa-fa info', '2020-12-19 11:25:19', 29, 0),
(78, 'creer matiere', 'head', 'creer-matiere', 0, 0, 'admin/matieres/create', 'fa fa-plus', '2020-12-19 11:25:19', 36, 0),
(79, 'historiques_eleve', 'sub', 'historiques-eleve', 1, 70, 'admin/eleves/historique', 'fas fa-history', '2020-12-26 13:42:35', 11, 0),
(80, 'historique_frais_scolarite', 'sub', 'historique-frais-scolarite', 1, 70, 'admin/eleves/historique_frais', 'fas fa-history', '2020-12-26 13:42:35', 12, 0),
(81, 'management ecole', 'head', 'annonce', 0, 0, 'admin/operateurs/information_ecole', 'fa fa-info', '2020-12-19 11:25:19', 37, 0),
(82, 'Dashboard', 'head', 'dashboard', 0, 0, 'admin/dashboard/dash_operateur', 'mdi mdi-view-dashboard', '2020-09-25 10:18:31', 2, 1),
(83, 'etablissements', 'head', 'enseigne', 0, 0, 'admin/operateurs/etablissements', 'm-r-5 mdi mdi-school', '2020-12-19 11:25:19', 17, 1),
(85, ' Groupe', 'head', 'groupe', 0, 0, 'admin/groups', 'm-r-5 fa fa-shield', '2020-12-19 11:25:19', 35, 1),
(86, 'Enseignes', 'head', 'enseignes', 0, 0, 'admin/vastechnologies/enseignes', 'm-r-5 mdi mdi-school', '2020-12-19 11:25:19', 18, 1),
(87, 'Utilisateur Ecole', 'head', 'utilisateur-ecole', 0, 0, 'admin/school_users', 'fa fa-home', '2020-12-19 11:25:19', 5, 1),
(88, 'edit_users', 'sub', 'edit-users', 1, 87, 'admin/school_users/edit', 'fa fa-edit', '2020-12-26 13:42:35', 6, 0),
(89, 'profile', 'sub', 'profile', 1, 87, 'admin/school_users/profile', 'fa fa-user', '2020-12-26 13:42:36', 7, 0),
(90, 'Liste', 'sub', 'liste', 1, 87, 'admin/school_users', 'fa fa-users', '2020-12-26 13:42:36', 8, 1),
(91, 'Cree', 'sub', 'cree', 1, 87, 'admin/school_users/create', 'mdi-account-multiple-plus mdi', '2020-12-26 13:42:36', 9, 1),
(92, 'Compatabilite', 'head', 'compatabilite', 0, 0, 'admin/compta', 'fa fa-money', '2020-12-26 10:48:34', 56, 1),
(93, 'Parametres', 'sub', 'parametres', 1, 92, 'admin/compta/params', 'fa fa-cog', '2020-12-26 13:42:36', 61, 1),
(94, 'Cree', 'sub', 'cree', 1, 92, 'admin/compta/create', 'fas fa-dot-circle', '2020-12-26 13:42:36', 60, 0),
(95, 'Parametre Scolarite', 'sub', 'parametre-scolarite', 1, 92, 'admin/compta/scolarite_params', 'fa fa-cogs', '2020-12-26 13:42:36', 59, 1),
(96, 'scolarite_create', 'sub', 'scolarite-create', 1, 92, 'admin/compta/sco_create', 'fa fa-money', '2020-12-26 13:42:36', 58, 0),
(97, 'modifier scolarite', 'sub', 'modifier-scolarite', 1, 92, 'admin/compta/sco_edit', 'fa fa-pencil', '2020-12-26 13:42:36', 57, 0);

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
-- Table structure for table `school_mgr`
--

DROP TABLE IF EXISTS `school_mgr`;
CREATE TABLE IF NOT EXISTS `school_mgr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ecole_id` varchar(225) DEFAULT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_mgr`
--

INSERT INTO `school_mgr` (`id`, `user_id`, `ecole_id`, `session_id`) VALUES
(5, 33, '4', 1),
(7, 33, '4', 1),
(10, 33, '5', 1),
(11, 33, '7', 1),
(12, 59, '1', 1),
(13, 60, NULL, 1),
(14, 0, NULL, 1),
(15, 61, '1', 1),
(16, 59, '3', 1),
(17, 45, '1', 1),
(18, 59, '4', 1),
(19, 59, '16', 1),
(20, 33, '1', 1),
(21, 59, '5', 1),
(22, 59, '21', 1),
(23, 59, '22', 1),
(24, 34, '1', 1),
(25, 86, '23', 1),
(26, 87, '24', 1),
(27, 88, '25', 1),
(28, 89, '26', 1),
(29, 90, '27', 1),
(30, 91, '28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scolarite`
--

DROP TABLE IF EXISTS `scolarite`;
CREATE TABLE IF NOT EXISTS `scolarite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `montant` varchar(225) DEFAULT NULL,
  `reste_scolarite` varchar(225) DEFAULT NULL,
  `ecole_id` int(11) DEFAULT NULL,
  `eleve_id` int(11) DEFAULT NULL,
  `classe_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `heures_absence` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scolarite_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scolarite`
--

INSERT INTO `scolarite` (`id`, `montant`, `reste_scolarite`, `ecole_id`, `eleve_id`, `classe_id`, `date`, `created_at`, `updated_at`, `heures_absence`, `user_id`, `session_id`, `status`) VALUES
(1, NULL, '5', 16, 10, 47, 'Samedi 1 Aout 2020', '1596368459', NULL, '5', 32, 1, 1),
(2, NULL, '5', 16, 11, 47, 'Samedi 1 Aout 2020', '1596368459', NULL, '5', 32, 1, 1),
(3, NULL, '5', 16, 12, 47, 'Samedi 1 Aout 2020', '1596368459', NULL, '5', 32, 1, 1),
(4, NULL, '5', 16, 17, 47, 'Samedi 1 Aout 2020', '1596368459', NULL, '5', 32, 1, 1),
(5, NULL, '5', 16, 19, 47, 'Samedi 1 Aout 2020', '1596368459', NULL, '5', 32, 1, 1),
(6, NULL, '102', 16, 10, 48, 'Samedi 1 Aout 2020', '1597398390', NULL, '53', 32, 1, 1),
(7, NULL, '10002', 16, 20, 48, 'Lundi 3 Aout 2020', '1597398391', NULL, '5', 32, 1, 1),
(8, NULL, '50000', 16, 10, 48, 'Samedi 1 Aout 2020', '1597404284', NULL, '5', 32, 1, 1),
(9, NULL, '50000', 16, 10, 48, 'Samedi 1 Aout 2020', '1597404437', NULL, '5', 32, 1, 1),
(10, NULL, '5000000', 16, 10, 48, 'Samedi 1 Aout 2020', '1597404522', NULL, '5', 32, 1, 1),
(11, NULL, '5', 16, 10, 48, 'Samedi 1 Aout 2020', '1597404957', NULL, '5', 32, 1, 1),
(12, NULL, '55', 16, 10, 48, 'Samedi 1 Aout 2020', '1597405331', NULL, '55', 32, 1, 1),
(13, NULL, '55', 16, 10, 48, 'Samedi 1 Aout 2020', '1597405331', NULL, '55', 32, 1, 1),
(14, NULL, '45', 16, 10, 48, 'Samedi 1 Aout 2020', '1597406182', NULL, '5', 32, 1, 1),
(15, NULL, '45', 16, 10, 48, 'Samedi 1 Aout 2020', '1597406183', NULL, '5', 32, 1, 1),
(16, NULL, '444', 16, 10, 48, 'Samedi 1 Aout 2020', '1597406278', NULL, '4', 32, 1, 1),
(17, NULL, '444', 19, 28, 68, 'Samedi 1 Aout 2020', '1597406278', NULL, '4', 32, 1, 1),
(18, NULL, '5000', 19, 28, 68, 'Mardi 4 Aout 2020', '1597946003', NULL, '20', 32, 1, 1),
(19, NULL, '50000', 16, 10, 48, 'Mardi 1 Septembre 2020', '1599039504', NULL, '5', 32, 1, 1),
(20, NULL, '2000', 16, 20, 48, 'Lundi 31 Aout 2020', '1599039505', NULL, '2', 32, 1, 1),
(21, NULL, '60000', 16, 21, 48, 'Mardi 11 Aout 2020', '1599039505', NULL, '6', 32, 1, 1),
(22, NULL, '6000', 16, 22, 48, 'Mardi 18 Aout 2020', '1599039505', NULL, '4', 32, 1, 1),
(23, NULL, '700000', 16, 23, 48, 'Mardi 11 Aout 2020', '1599039505', NULL, '5', 32, 1, 1),
(24, NULL, '60000', 16, 24, 48, 'Lundi 3 Aout 2020', '1599039505', NULL, '7', 32, 1, 1),
(25, NULL, '600000', 16, 25, 48, 'Mardi 4 Aout 2020', '1599039505', NULL, '5', 32, 1, 1),
(26, NULL, '700000', 16, 40, 48, 'Mercredi 5 Aout 2020', '1599039505', NULL, '7', 32, 1, 1),
(27, NULL, '50000', 21, 96, 72, 'du 05 septembre  au 10 septembre', '1600162058', NULL, '5', 32, 1, 1),
(28, NULL, '500000', 22, 92, 71, 'du 02  au 10 aout', '1600856702', NULL, '10', 32, 1, 1),
(29, NULL, '50000', 21, 108, 72, 'Du 02 au 11 octobre 2020', '1602593746', NULL, '15', 32, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `ecole_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `status`, `ecole_id`) VALUES
(1, '2020-2021', 1, 28),
(2, '2021-2022', 0, 28),
(3, '2022-2023', 0, 28);

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
(2, 'sidebar_menu_color', 'danger', 'admin', 'sidebar active menu color', 11),
(3, 'sidebar_bg_color', 'black', 'admin', 'sidebar active background color', 11),
(4, 'sidebar_bg_img', 'sidebar-1.jpg', 'admin', 'sidebar active background color', 11);

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
(1, 1, 'TRANSPARENCE HOLDING', 'TRANSPARENCE HOLDING ECOLE', 'test@example.com', '0059964182', 'Cote d\'ivoire Abidjan', NULL, 'USD', 'left', '1', 'french', 'no', 'sandbox', 'AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R', '123', 'USD', 'yes', 'on', 'sk_test_iatnshcHhQVRXdygXw3L2Pp2', 'pk_test_CAC3cB1mhgkJqXtypYBTGb4f', '12345', '123456', 'USD', NULL, 'par vas technologies', 'http://vastechnologies.com/', '7.0', '1234567890', '1577017315', 'Africa/Accra');

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
(11, 'bug', 'Not enough questions found for this subject(html 5)', 'freelancer/profile_setup/skills', 1585179840, 0, 1),
(10, 'bug', 'Not enough questions found for this subject(sql administration)', 'freelancer/profile_setup/skills', 1584305221, 0, 11),
(9, 'bug', 'Not enough questions found for this subject(JQuery)', 'freelancer/profile_setup/skills', 1583946164, 0, 11),
(8, 'bug', 'Not enough questions found for this subject(html 5)', 'freelancer/profile_setup/skills', 1583946009, 0, 11),
(12, 'bug', 'Not enough questions found for this subject(java)', 'freelancer/profile_setup/skills', 1585179850, 0, 1),
(13, 'bug', 'Not enough questions found for this subject(Angular Js)', 'freelancer/profile_setup/skills', 1592519855, 0, 1),
(14, 'bug', 'popup automatically appears and disappears when trying to update a portfolio', 'freelancer/profile_setup/portfolio', 1592520765, 0, 1),
(17, 'bug', 'user can only enter a limiter amount of text to describe the certificate . I suggest you allow him to enter a long text but only display what is necessary then display the full text if user click on box of the certificate', 'freelancer/profile_setup/education', 1593759633, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(225) NOT NULL,
  `created_at` varchar(225) NOT NULL,
  `expire_at` varchar(225) NOT NULL,
  `session_details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `created_at`, `expire_at`, `session_details`) VALUES
(1, 'IxAKf9Okh1dyEe7urFiwRSvLCpN4Ts3Z0Yb265nlgJqjtW8mPGXDoa', '1601029699', '1664101699', '{\"identity\":\"ouattara_ahmednqo8@gmail.com\",\"email\":\"ouattara_ahmednqo8@gmail.com\",\"user_id\":\"63\",\"old_last_login\":\"1601543264\",\"last_check\":1601898917}');

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
  `phone` varchar(225) DEFAULT NULL,
  `picture` varchar(225) NOT NULL DEFAULT 'unknow.png',
  `background` varchar(225) NOT NULL DEFAULT 'unknow_bg.png',
  `country_id` int(11) NOT NULL DEFAULT 85,
  `city` varchar(60) DEFAULT 'kumassi',
  `specialisation_id` int(11) DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT 1,
  `about` text DEFAULT NULL,
  `designation` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `session_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `picture`, `background`, `country_id`, `city`, `specialisation_id`, `available`, `about`, `designation`, `status`, `session_id`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'tro.oppong@gmail.com', '', NULL, NULL, 'Aj.RVSGjEV9o2xROXfymbe', 1268889823, 1605586662, 1, 'Admin1', 'istrator', NULL, '023980398', '1.png', 'unknow_bg.png', 85, 'kumassi', 1, 1, NULL, NULL, 1, 1),
(5, '::1', 'user2 tester', '$2y$08$vx71P2PhwTJxg/RKfkicTOc4ghiWUon/qBckoJHno5.IMHtgt6E8.', NULL, 'user2@gmail.com', NULL, NULL, NULL, NULL, 1554503051, 1585223129, 1, 'user', 'tester', NULL, '+2230276187686', '5.png', 'unknow_bg.png', 85, 'kumassi', 2, 1, NULL, NULL, 1, 1),
(6, '::1', 'Johndon Bossen', '$2y$08$qrBemDNh.jUstZnX8fswJuMRvZbS3lOGq0EnEkEYefskwELquwgwG', NULL, 'user1@gmail.com', NULL, NULL, NULL, NULL, 1554542790, 1578278723, 1, 'Johndon', 'Bossen', '', '', '6.png', '1555110598956151109.png', 85, 'kumassi', 12, 1, NULL, NULL, 1, 1),
(7, '::1', 'user3 tester', '$2y$08$CoosLbotlso0aJ..O3oaJO2n5QXIJsyYck3YeSa1pUh/l8.QRBdjq', NULL, 'user3@gmail.com', NULL, NULL, NULL, NULL, 1554642117, 1578186624, 1, 'user3', 'tester', '', '', '7.png', '1555109408372361105.png', 85, 'kumassi', 12, 1, NULL, NULL, 1, 1),
(10, '::1', 'user5@gmail.com tester', '$2y$08$oYMLTWj2wj4.oxkKtDFs3OALL7X/Gpp9biYEmI4dx7n0/I9ziRSh2', NULL, 'user5@gmail.com', NULL, NULL, NULL, NULL, 1555293059, 1578186667, 1, 'user5@gmail.com', 'tester', 'niit', '+2230276187686', '10.png', 'unknow_bg.png', 85, 'kumassi', 3, 1, NULL, NULL, 1, 1),
(11, '::1', 'John Cedric', '$2y$08$.SE0WvO6zRVQt./0jKVilu35Fu21btM4SRGzPOQ3PZ/qW2LKNzGfe', NULL, 'johncedric@gmail.com', NULL, NULL, NULL, NULL, 1555465605, 1594645994, 1, 'Mr. John', 'Cedric', 'NIIT', '026187686', '11.png', '1555110598398111260.png', 85, 'kumassi', 2, 1, NULL, 'SOFTWARE', 2, 1),
(12, '::1', 'user8 lancer', '$2y$08$XBXQ8olKzGoCYhjDnFdGBuO0rJg7EPtzRkiVPeIKD3hwDFBShoUr.', NULL, 'user8@gmail.com', NULL, NULL, NULL, NULL, 1558554069, 1574903236, 0, 'user8', 'lancer', 'Linkit.com', '0276187686', '12.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(18, '::1', 'user10 test', '$2y$08$K78cm7aTFv2QNh0XiN2H9eK9MH9pEqB15SMueDIbtrgMTRVHbbOHq', NULL, 'user10@gmail.com', NULL, NULL, NULL, NULL, 1580971943, 1594645740, 1, 'user10', 'test', 'NIIT', '0548568885', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1, 1),
(19, '::1', 'Sir Eugene', '$2y$08$5HjFoYfvjG.cXcy1qff0x.a9gzTVf2qqMlmigyHa1CN7fy8KlXVxu', NULL, 'eugene@gmail.com', NULL, NULL, NULL, NULL, 1581353074, 1594645335, 1, 'Sir', 'Eugene', 'NIIT', '1234567858666', '19.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, 'My name Sir eugene and I am a great software engenier', 'SOFTWARE', 2, 1),
(20, '::1', 'services manager 1', '$2y$08$WAv0tWVVG0UOLMwcxSzSLe9xC1UlRNEE/tssNcIuy.S9Iu1LmiwHS', NULL, 'services_mgr1@gmail.com', NULL, NULL, NULL, NULL, 1581792768, 1594645669, 1, 'Services', 'Manager 1', 'NIIT', '0205376780', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(21, '::1', 'student 1 test', '$2y$08$RNPMDfkqItgnOcDi5lXejOIJ3/QyLoC46i5zft0lL5EZUMUgeqkK6', NULL, 'student1@gmail.com', NULL, NULL, NULL, NULL, 1581935629, 1594645270, 1, 'student', '1 test', 'NIIT', '0111111111', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1, 1),
(22, '::1', 'student 2 test', '$2y$08$1w9/cSzM3N1m1fi6bBmCCerk1daqDzHR15YbrQB71.H13L8EM63oi', NULL, 'student2@gmail.com', NULL, NULL, NULL, NULL, 1581935828, 1584354001, 1, 'student', '2 test', 'NIIT', '0222222222222222', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1, 1),
(23, '::1', 'joshua hendricks', '$2y$08$AlgAxQLVKa6atCUAjyJDZ.Vjf.mvLG.RpPBundB5fgAmLo2vnwr0m', NULL, 'joemens442@gmail.com', NULL, NULL, NULL, NULL, 1584028128, 1584028673, 1, 'Samuel', 'Hendricks', 'NIIT', '65132156656', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1, 1),
(24, '::1', 'student 3 test', '$2y$08$w1SrKIKQjb6zTnW/.6VoX.fywzWiDn2iZ9WKKNY9lSEA8n.Cxx0sG', NULL, 'student3@gmail.com', NULL, NULL, NULL, NULL, 1584346086, 1594646112, 1, 'Student 3', 'test', 'NIIT', '0256187686', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1, 1),
(31, '::1', 'student8 test', '$2y$08$6VKUOVpx5PxA9dmLhtv4lOJzT1qk/EKqGRmt7mOd1aNo2Vep7M1JG', NULL, 'student8@gmail.com', NULL, NULL, NULL, NULL, 1585147787, 1585147790, 1, 'student8', 'test', 'NIIT', '4131354654', 'unknow.png', 'unknow_bg.png', 85, 'kumasi', NULL, 1, NULL, NULL, 1, 1),
(32, '::1', 'arlette-stéphanie adje', '$2y$08$TnNCppqCBo6dputqcVk.8.7ckv/5heNS45TxvRxIfowUj0zPUx1Ba', NULL, 'arletteadje@gmail.com', NULL, NULL, NULL, NULL, 1594310745, 1608979405, 1, 'arlette-stéphanie', 'adje', 'NIIT', '0022559964182', '32.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(33, '::1', 'test test', '$2y$08$fhfP7T5E0UpuXWDGzJGawuI4x3g6R3OA.LSpureus7VchFVRTdm26', NULL, 'ae@gmail.com', NULL, NULL, NULL, NULL, 1594644187, 1594644430, 1, 'test2', 'test', NULL, '0022559964182', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(34, '::1', 'adje kelly', '$2y$08$cGPI3PfL4v9JZqwlJwF/OuRy.CDKwzpaHFukqsCASA2IZXwJBajAa', NULL, 'kellyadje@gmail.com', NULL, NULL, NULL, NULL, 1594721962, 1594751520, 1, 'adje', 'kelly', 'NIIT', '0002314562', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(35, '::1', 'parent1 test', '$2y$08$Phf1J4NHXOcs6M.ET80Q3.08a84BmSNLFld86lnUW76J5l/.DulQS', NULL, 'parent1_testvfjs@gmail.com', NULL, NULL, NULL, NULL, 1594821187, NULL, 1, 'parent1', 'test', 'parent_company', '1234567855', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(36, '::1', 'parent2 test', '$2y$08$8ddRhQlif7q5m8ddcxoi5eugQmYI5c6Lk6bnbWBNKLge.HPobQULG', NULL, 'parent2_test0w2g@gmail.com', NULL, NULL, NULL, NULL, 1594821705, NULL, 1, 'parent2', 'test', 'parent_company     ', '22222222', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(37, '::1', 'aka brou pascal', '$2y$08$8J28dTXovNZsJh0JONynAuH7FNIti5pH759ge6gl0.Y2s7jh5f4Oa', NULL, 'aka_brou_pascaljk5s@gmail.com', NULL, NULL, NULL, NULL, 1594821998, 1599038710, 1, 'Aka', 'Brou pascal', 'parent_company     ', '25468586543', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(39, '::1', 'aka john', '$2y$08$GrltQFHtuPfUOyWdmalvceb5.QYqgC9W4JpXIxD7HmorsAX9WhYNe', NULL, 'aka_johnbytd@gmail.com', NULL, NULL, NULL, NULL, 1595258885, 1599038747, 1, 'aka', 'john', 'parent_company     ', '03347127', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(40, '::1', 'quentin adje', '$2y$08$qkCQLYLaPvx5/DefgZjinO1cG61QYtOXBSunNSVSI93FEzKaPASyG', NULL, 'adje@gmail.com', NULL, NULL, NULL, NULL, 1595419811, 1595419878, 1, 'quentin', 'adje', NULL, '0059964182', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(41, '::1', 'test john', '$2y$08$R8gT5xWktxGvrvD09L.FD.LDaL4qXqbEpVcOXvhoEUW2bB6pFQupC', NULL, 'test_johnmo6y@gmail.com', NULL, NULL, NULL, NULL, 1595432461, NULL, 1, 'test', 'john', 'parent_company     ', '222222222222', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(42, '::1', 'arlett adje test', '$2y$08$yceldh1GIUTAuy8g2bYnWO9WnkiCifXA/bpoAz6wCyXgWP/Bma0wi', NULL, 'arlett_adje_testvog3@gmail.com', NULL, NULL, NULL, NULL, 1595434523, NULL, 1, 'arlett adje', 'test', 'parent_company     ', '02536502', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(43, '::1', 'arlett adje john senior', '$2y$08$/PwNSbCs6nmG.dHPkyyZFeymi2wckxOqt.59AgyURep0.7MHDbkG.', NULL, 'arlett_adje_john_seniorhwhq@gmail.com', NULL, NULL, NULL, NULL, 1595434580, 1599039011, 1, 'arlett adje', 'John senior', 'parent_company     ', '025365562', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(44, '::1', 'test parent1', '$2y$08$5UVC13wkaApm0S1SezKIm.rkb5mUJ9Mj4M5uc9MlqAF26YuJS0Auu', NULL, 'test_parent13ktb@gmail.com', NULL, NULL, NULL, NULL, 1595532095, 1599039031, 1, 'test', 'parent1', 'parent_company     ', '123456789', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(45, '::1', 'audrey momo', '$2y$08$iT0zRB6ZX.AAC2rdXSckreI8wUkTj/wrDGWcxI03QivPL94jKRpsi', NULL, 'audrey@gmail.com', NULL, NULL, NULL, NULL, 1595937177, 1595937209, 1, 'audrey', 'momo', NULL, '02154522555', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(46, '::1', 'test john', '$2y$08$xVYZ3XHPMCKdACjzsNcFW.GdQKFO73CfXr/V9winpspNu4oXW5yky', NULL, 'test_johnvr0p@gmail.com', NULL, NULL, NULL, NULL, 1595974165, 1599237121, 1, 'test', 'john', 'parent_company     ', '2345869774', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(47, '::1', 'arlett adje', '$2y$08$Ji4xQW7BWGQsQ8cmZQLvPejcmNbrBKej5QW.2hrDGPOa8K9GAZJFW', NULL, 'arlette@gmail.com', NULL, NULL, NULL, NULL, 1596018622, NULL, 1, 'arlett', 'adje', NULL, '02154522555', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(48, '::1', 'test aaaa', '$2y$08$seER3AmOuEq9d73w2tPOyeL7awSCH..rJ9X7srNSgSt7ySadipbs6', NULL, 'test_aaaa5qi6@gmail.com', NULL, NULL, NULL, NULL, 1596543800, NULL, 1, 'test', 'aaaa', 'parent_company     ', '4444', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(49, '::1', 'kouassi brice', '$2y$08$If/rjaa3I44K6DHhtVTIUuOb0B0zEMIX5KqBE7kIawZwwuT9R9DDW', NULL, 'kouassi_bricew0sr@gmail.com', NULL, NULL, NULL, NULL, 1596648700, 1599039098, 1, 'kouassi', 'brice', 'parent_company     ', '03421615', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(50, '::1', 'kouassi brice', '$2y$08$foJVSE9.u2.4XgSWW2hFVOAhcjyJ1xtIvS0q71OzSJeDjeT8MeaGu', NULL, 'kouassi_briceseks@gmail.com', NULL, NULL, NULL, NULL, 1596648944, NULL, 1, 'kouassi', 'brice', 'parent_company     ', '03421615', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(51, '::1', 'modeste modeste', '$2y$08$vCesbirxxunSpCKbUOqcsuS3C4JbhWHeoX.QMbbr6rU6HOfANIQNy', NULL, 'modeste_modestenbqx@gmail.com', NULL, NULL, NULL, NULL, 1596713089, 1601459740, 1, 'modeste', 'modeste', 'parent_company     ', '47160000', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(52, '::1', 'thnote thnote', '$2y$08$utKEPVJff/wIe4qC59lwIehULzo4MDSv4CSnj6lnFN4Nj5AcqQCsG', NULL, 'thnote@gmail.com', NULL, NULL, NULL, NULL, 1597153983, 1608376072, 1, 'thnote', 'thnote', NULL, '0059964182', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(53, '::1', 'vastechnologie vastechnologie', '$2y$08$cDTuV8jsvqKJBAUVs64AYe30.QcbcmCvnSCTtMbBloMS..X20ai0.', NULL, 'vas@gmail.com', NULL, NULL, NULL, NULL, 1597663553, 1601574118, 1, 'vastechnologie', 'vastechnologie', NULL, '0059964182', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(54, '::1', 'kouassi modeste', '$2y$08$Q1qRG4og7oLce9vjLpTAA.6nf1VkhUNKPYP7FlKkRMuq.HYrynevS', NULL, 'kouassi_modestevkxu@gmail.com', NULL, NULL, NULL, NULL, 1597934719, 1601459769, 1, 'kouassi', 'modeste', 'parent_company     ', '41050575', '54.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(55, '::1', 'kouassi lambaire', '$2y$08$Jmp7toJ3LXAHc0.DsTWhwuK9MQIOK8SJSUeDUpJwHGVZ81BK4jRwK', NULL, 'kouassi_lambaireti6h@gmail.com', NULL, NULL, NULL, NULL, 1598280616, 1599236925, 1, 'kouassi', 'lambaire', 'parent_company     ', '4523148756', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(56, '::1', 'yao grace', '$2y$08$5G8fEPWLs8T8DRQy2hZgAu2sAvHxPmDRS1giK/T58uKUdy32CWWnC', NULL, 'yao_grace5bey@gmail.com', NULL, NULL, NULL, NULL, 1598280617, 1598280907, 1, 'yao', 'grace', 'parent_company     ', '615645646', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(57, '::1', 'kassi akisi', '$2y$08$.q4A4oPOvR40eRw0sxp.Wee7PzxFrBhlJknVhuXIJpV7xBy2H4Jdu', NULL, 'kassi_akisi0oef@gmail.com', NULL, NULL, NULL, NULL, 1598280617, 1599238967, 1, 'Kassi', 'Akisi', 'parent_company     ', '564613252', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(58, '::1', 'test test', '$2y$08$Ko9N9u9N9CbH/Q51QTB53uVXs9BkksDeicT60csXb7ntQD/dFNLD6', NULL, 'text@gmail.com', NULL, NULL, NULL, NULL, 1598357726, NULL, 1, 'test', 'test', NULL, '', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(59, '::1', 'dibi anoh 2', '$2y$08$6nzfqxB3bRUK69FKhZ84beNgzd8VaFB9qYtg.1IY2bp0gxdbkNTnq', NULL, 'dibi@gmail.com', NULL, NULL, NULL, NULL, 1598962576, 1601543989, 1, 'dibi', 'anoh 2', NULL, '0022559964182', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(60, '::1', 'kouassi lambaire', '$2y$08$tXxf6p/4AQL/Zp2Rse7kzObQ3ZWUKqg/TvnsFgtNrSW.Njd3Yk9TK', NULL, 'kouassi_lambairel6fg@gmail.com', NULL, NULL, NULL, NULL, 1599234618, NULL, 1, 'kouassi', 'lambaire', 'parent_company     ', '4523148756', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(61, '::1', 'yao grace', '$2y$08$nIMoaTNbZ5w0dZDTdkC6A.WR5ebVHz.F1WkkZhhTViz.ZZGkMnJqC', NULL, 'yao_gracewufu@gmail.com', NULL, NULL, NULL, NULL, 1599234619, NULL, 1, 'yao', 'grace', 'parent_company     ', '615645646', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(62, '::1', 'kassi akisi', '$2y$08$8WTI2fel8z4e40ZsADuNDOUZdgr8em/p3sqdx8Ex6c1CUsDeyC7.S', NULL, 'kassi_akisifkd8@gmail.com', NULL, NULL, NULL, NULL, 1599234620, NULL, 1, 'Kassi', 'Akisi', 'parent_company     ', '564613252', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(63, '::1', 'ouattara ahmed', '$2y$08$3H4mLeFZGqQaeMFSK2k5w.Dlfw6guhZvH7/lR7CYGLZl4SM5SPuAa', NULL, 'ouattara_ahmednqo8@gmail.com', NULL, NULL, NULL, NULL, 1599491269, 1602086548, 1, 'OUATTARA', 'AHMED', 'parent_company', '79327890', 'unknow.png', '1602158064182S86L3891340S.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(64, '::1', 'ekrou blanchard', '$2y$08$u8SD.3qVdDsRYKQfL1GsGO14SedSeJufrQzh8Oj0PZThHEXrQI0lm', NULL, 'ekrou_blanchardcnbx@gmail.com', NULL, NULL, NULL, NULL, 1599491270, 1599649207, 1, 'EKROU', 'BLANCHARD', 'parent_company', '79327891', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(65, '::1', 'akrongo marceline', '$2y$08$YSmlN1woxlqveNoIBUBzquBCIhShJtxNFTjo3U2.wlXekzSJqb/C6', NULL, 'akrongo_marcelinevzdu@gmail.com', NULL, NULL, NULL, NULL, 1599491270, NULL, 1, 'AKRONGO', 'MARCELINE', 'parent_company', '78327892', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(66, '::1', 'boga cedric', '$2y$08$7FA.xbp5Ty23NS3ePS3GpeS9CxyDdsFOlay.4jmdUAWKP0H5Gp5By', NULL, 'boga_cedricrxd2@gmail.com', NULL, NULL, NULL, NULL, 1599491271, NULL, 1, 'BOGA', 'CEDRIC', 'parent_company', '54327893', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(67, '::1', 'bonigo danielle', '$2y$08$psvEVd2qxPFxZZ4ZV.N2KeXebFdNhp/S5yyo71SxTaKczeiwnkP3a', NULL, 'bonigo_danielleaedq@gmail.com', NULL, NULL, NULL, NULL, 1599491271, 1599647348, 1, 'BONIGO', 'DANIELLE', 'parent_company', '78327894', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(68, '::1', 'coulibaly yeye', '$2y$08$OMhwsIzUYtXQ/k1uQ5jW5uwCZzyeI8yajZQKVIN9ySjplS0svWc/O', NULL, 'coulibaly_yeyejmcf@gmail.com', NULL, NULL, NULL, NULL, 1599491272, NULL, 1, 'COULIBALY', 'YEYE', 'parent_company', '77327895', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(69, '::1', 'coulibaly yoyo', '$2y$08$yC/Tm6zvFgLWWr8bfsycLO3aPIb0b5zG22o1qBT3y2Kf6n45xddES', NULL, 'coulibaly_yoyocyhx@gmail.com', NULL, NULL, NULL, NULL, 1599491272, NULL, 1, 'COULIBALY', 'YOYO', 'parent_company', '78327895', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(70, '::1', 'coulibaly yaya', '$2y$08$.rvGfwNDt/O3LTwzVehUguibYByo6/L3IaKCHKgf.Hmlj4bXfMGQ2', NULL, 'coulibaly_yayanaxf@gmail.com', NULL, NULL, NULL, NULL, 1599491273, NULL, 1, 'COULIBALY', 'YAYA', 'parent_company', '79327895', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(71, '::1', 'dagou alain', '$2y$08$jU0MyXSpBG/YEIj0nkUEue.wOjBKusDI3jc2XmwA.e.xLQClOlGw.', NULL, 'dagou_alainpfhn@gmail.com', NULL, NULL, NULL, NULL, 1599491274, NULL, 1, 'DAGOU', 'ALAIN', 'parent_company', '54327896', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(72, '::1', 'dagou francky', '$2y$08$Z4piox1qio96I/aCNWQCG.VqcDjYMXiIQ0ZAxQARbkdyo51gnqs.q', NULL, 'dagou_franckyuwvi@gmail.com', NULL, NULL, NULL, NULL, 1599491274, NULL, 1, 'DAGOU', 'FRANCKY', 'parent_company', '79327897', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(73, '::1', 'essani dieu', '$2y$08$zvbLV19PAwCPvtJQNJ/A0e557.1K5Zj.a7JWizmiMKV71Lz.mNTkC', NULL, 'essani_dieup3hq@gmail.com', NULL, NULL, NULL, NULL, 1599491274, NULL, 1, 'ESSANI', 'DIEU', 'parent_company', '79327898', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(74, '::1', 'fondio issouf', '$2y$08$6YYaA2Mt8A4fiF8VvXozhu1hMX8uqZVD2ma6M4yGXUUJ3WpaswlCi', NULL, 'fondio_issoufg14k@gmail.com', NULL, NULL, NULL, NULL, 1599491275, NULL, 1, 'FONDIO', 'ISSOUF', 'parent_company', '54327899', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(75, '::1', 'feh kesse', '$2y$08$G4D1sgiDZVea4rnMoOBj1uav85lBH6wY/nmhLYTmTvayxfkl7T4VG', NULL, 'feh_kesse0zdm@gmail.com', NULL, NULL, NULL, NULL, 1599491276, NULL, 1, 'FEH', 'KESSE', 'parent_company', '79327900', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(76, '::1', 'kone makagbe', '$2y$08$OADVGcwBJexI/wcF1BOzeedxnvyVobfktmCdO2H.qN9Do/3HxvdwK', NULL, 'kone_makagbe6n3k@gmail.com', NULL, NULL, NULL, NULL, 1599491277, NULL, 1, 'KONE', 'MAKAGBE', 'parent_company', '79327901', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(77, '::1', 'soh doroh yves', '$2y$08$U.xmi.CKHznvZPN1BxGEzOfqX/eX4IaM42camj3I9ep03o7rkIzNe', NULL, 'soh_doroh_yvesc4zv@gmail.com', NULL, NULL, NULL, NULL, 1599491277, NULL, 1, 'SOH', 'DOROH YVES', 'parent_company', '54327903', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(78, '::1', 'sohon blaise', '$2y$08$ZXUEtld9E6Mh55nOn7nd0.JCX9tjrAUYHy4KjquioXa1p2nvXfnCu', NULL, 'sohon_blaiseiqqg@gmail.com', NULL, NULL, NULL, NULL, 1599491278, NULL, 1, 'SOHON', 'BLAISE', 'parent_company', '79327903', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(79, '::1', 'zougrana angelle', '$2y$08$j/7RgIIAwKTN9cwbzgJXAegjndTTRoxKPbZ4Hj9go3HRHhKZiUx.W', NULL, 'zougrana_angelleqr6w@gmail.com', NULL, NULL, NULL, NULL, 1599491278, NULL, 1, 'ZOUGRANA', 'ANGELLE', 'parent_company', '78327904', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(80, '::1', 'zougrana francine', '$2y$08$HK39XBAIbRPgg5jHywd5EuLWHxgHwL8WhmFSeHTdSc7gTGDHChAjO', NULL, 'zougrana_francine0vi9@gmail.com', NULL, NULL, NULL, NULL, 1599491279, NULL, 1, 'ZOUGRANA', 'FRANCINE', 'parent_company', '79327904', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(85, '::1', 'kouassi ange', '$2y$08$tOp/EVk1xcxUsD3KUqkNFO0RSXnqz1DQ77rlXxIhddc2rSBCbALo2', NULL, 'kouassi_angebolv@gmail.com', NULL, NULL, NULL, NULL, 1602593424, 1608725207, 1, 'KOUASSI', 'ANGE', 'parent_company     ', '03470665', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1),
(86, '::1', 'adh1 adh1', '$2y$08$FNsy9jCGdk5zuCLaf19s8eETjz1L6ZFlThhr2WCPnyjZH8BP7IZYa', NULL, 'adh1@gmail.com', NULL, NULL, NULL, NULL, 1603369710, NULL, 1, 'adh1', 'adh1', 'asdfvxcvxc', '8968687', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, 'vxcvzxcvxvzxc', NULL, 1, 1),
(87, '::1', 'partenaire2 test', '$2y$08$bZTyWq4SMTrA/YQ/CsJA6uOxkay6oq.b0a4kfvuLsXBGMGzS0qdq.', NULL, 'partenaire2@gmail.com', NULL, NULL, NULL, NULL, 1605586017, 1605586941, 1, 'partenaire2', 'test', 'etab partenaire 2', '9870978970987', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, 'just testing functionanlity', NULL, 1, 1),
(88, '::1', 'partenaire3 test', '$2y$08$XxmyVcOG/JsSAVTyi83ZSOHPhrvYvt64k5izxFsNXhsmx6Vp8t0LW', NULL, 'partenaire3@gmail.com', NULL, NULL, NULL, NULL, 1605587304, NULL, 0, 'partenaire3', 'test', 'nom_etab', '900980', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, 'just ts', NULL, 1, 1),
(89, '::1', 'partenaire4 1', '$2y$08$QS.pYpUVkDHhwoAmfJ0Uk.X.aYJMg/TCkrCZfghINYk/7KHYEbe1a', NULL, 'partenaire4@gmail.com', NULL, NULL, NULL, NULL, 1605587505, NULL, 0, 'partenaire4', '1', 'nom_etab_4', '353645645', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, 'un autre motif', NULL, 1, 1),
(90, '::1', 'partenaire5 test', '$2y$08$E9kt1OVVQL8y.bzgDMxuAObBNGgxUpXFdLvBLBALOckV7kWFqlosG', NULL, 'partenaire5@gmail.com', NULL, NULL, NULL, NULL, 1607965112, 1607965360, 1, 'partenaire5', 'test', 'test etab', '0205376780', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, 'dfasdfasdfasdfsad', NULL, 1, 1),
(91, '::1', 'titi marie samira', '$2y$08$6LpqeYsHAkaa1/aErdJdMuxWVsJZGo0EGOu0qwlbBGx/yAReEyZWW', NULL, 'titi@gmail.com', NULL, NULL, NULL, NULL, 1608386562, 1608981666, 1, 'Titi Marie', 'Samira', 'Titi Marie Line Samira', '0276187686', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, 'tesst', NULL, 1, 1),
(92, '::1', 'parent2 test', '$2y$08$VG.p6UxDxgpf8neSPYw/NuKPTWXtUge3cxqNHFJOBP.5qIF7wowxK', NULL, 'parent2_testd50e@gmail.com', NULL, NULL, NULL, NULL, 1608501656, NULL, 1, 'parent2', 'test', 'parent_company     ', '987654321', 'unknow.png', 'unknow_bg.png', 85, 'kumassi', NULL, 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `session_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`, `session_id`) VALUES
(7, 6, 1, 1),
(46, 19, 2, 1),
(89, 34, 7, 1),
(91, 32, 1, 1),
(93, 35, 2, 1),
(94, 36, 2, 1),
(95, 37, 2, 1),
(97, 39, 2, 1),
(98, 40, 2, 1),
(99, 41, 2, 1),
(100, 42, 2, 1),
(101, 43, 2, 1),
(102, 44, 2, 1),
(103, 45, 7, 1),
(104, 46, 2, 1),
(105, 47, 8, 1),
(106, 48, 2, 1),
(107, 49, 2, 1),
(108, 50, 2, 1),
(109, 51, 2, 1),
(110, 52, 8, 1),
(111, 53, 10, 1),
(112, 54, 2, 1),
(113, 55, 2, 1),
(114, 56, 2, 1),
(115, 57, 2, 1),
(116, 58, 1, 1),
(119, 33, 7, 1),
(120, 59, 7, 1),
(123, 60, 2, 1),
(124, 61, 2, 1),
(125, 62, 2, 1),
(126, 63, 2, 1),
(127, 64, 2, 1),
(128, 65, 2, 1),
(129, 66, 2, 1),
(130, 67, 2, 1),
(131, 68, 2, 1),
(132, 69, 2, 1),
(133, 70, 2, 1),
(134, 71, 2, 1),
(135, 72, 2, 1),
(136, 73, 2, 1),
(137, 74, 2, 1),
(138, 75, 2, 1),
(139, 76, 2, 1),
(140, 77, 2, 1),
(141, 78, 2, 1),
(142, 79, 2, 1),
(143, 80, 2, 1),
(144, 1, 1, 1),
(149, 85, 2, 1),
(150, 86, 7, 1),
(151, 87, 7, 1),
(152, 88, 7, 1),
(153, 89, 7, 1),
(154, 90, 7, 1),
(155, 11, 2, 1),
(156, 91, 8, 1),
(157, 92, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `versements`
--

DROP TABLE IF EXISTS `versements`;
CREATE TABLE IF NOT EXISTS `versements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `scolarite_id` int(11) DEFAULT NULL,
  `montant` varchar(225) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `eleve_id` int(11) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `ecole_id` int(11) NOT NULL,
  `classe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `versements_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versements`
--

INSERT INTO `versements` (`id`, `session_id`, `scolarite_id`, `montant`, `date`, `eleve_id`, `created_at`, `updated_at`, `ecole_id`, `classe_id`, `user_id`) VALUES
(7, 1, 1, '10005', 'Samedi 26 Decembre 2020', 110, '1608995598', NULL, 28, 75, 91),
(8, 1, 1, '5000', 'Samedi 26 Decembre 2020', 111, '1608995598', NULL, 28, 75, 91),
(9, 1, 1, '12006', 'Samedi 26 Decembre 2020', 110, '1608995857', NULL, 28, 75, 91),
(10, 1, 1, '1400000', 'Samedi 26 Decembre 2020', 111, '1608995857', NULL, 28, 75, 91),
(11, 1, 1, '50000', 'Mardi 15 Decembre 2020', 110, '1608995894', NULL, 28, 75, 91),
(12, 1, 1, '360000', 'Mercredi 16 Decembre 2020', 111, '1608995894', NULL, 28, 75, 91),
(13, 1, 1, '700', 'Jeudi 17 Decembre 2020', 110, '1608995943', NULL, 28, 75, 91),
(14, 1, 1, '750', 'Lundi 7 Decembre 2020', 111, '1608995944', NULL, 28, 75, 91),
(15, 1, 2, '1254', 'Mercredi 23 Decembre 2020', 113, '1608996058', NULL, 28, 77, 91),
(16, 1, 2, '5000', 'Samedi 19 Decembre 2020', 113, '1608996078', NULL, 28, 77, 91),
(17, 1, 1, '177300', 'Samedi 26 Decembre 2020', 110, '1608998004', NULL, 28, 75, 91);

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
