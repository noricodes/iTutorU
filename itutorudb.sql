-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 08:52 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itutorudb`
--
CREATE DATABASE IF NOT EXISTS `itutorudb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `itutorudb`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL,
  `threadId` int(11) NOT NULL,
  `messageText` varchar(1024) NOT NULL,
  `senderId` int(11) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`messageId`, `threadId`, `messageText`, `senderId`, `timestamp`) VALUES
(1, 1, 'Hi could we maybe meet next week at this time instead?', 2, '2018-11-27 16:38:28'),
(3, 3, 'I also need help in bio if possible', 2, '2018-11-27 16:38:28'),
(4, 4, 'Hey are you still interested in being tutored for chem?', 4, '2018-11-27 16:38:28'),
(5, 5, 'I could also help with .NET if you want', 15, '2018-11-27 16:38:28'),
(6, 6, 'See you tomorrow!', 2, '2018-11-27 16:38:28'),
(7, 1, 'Yea, sure', 4, '2018-11-27 16:51:25'),
(0, 1, 'hello there!', 2, '2018-11-29 19:54:31'),
(0, 1, 'hey there', 2, '2018-11-29 19:55:01'),
(0, 1, 'hola', 2, '2018-11-29 20:02:42'),
(0, 1, 'i am heer', 2, '2018-11-29 20:02:54'),
(0, 1, 'jgjasklgmjsfkldg', 2, '2018-11-29 20:03:00'),
(0, 8, 'hi', 2, '2018-12-03 17:15:34'),
(0, 1, 'hi', 2, '2018-12-03 17:15:39'),
(0, 1, '', 2, '2018-12-03 17:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `noteId` int(11) NOT NULL,
  `noteText` varchar(900) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`noteId`, `noteText`, `timestamp`) VALUES
(1, 'This is my first note', '2018-11-27 16:00:42'),
(2, 'sjgnsjkfgklagkljmsklfsdlgmlasmdgmsfgmsfkdmgksdmgksdmagksmklmaklfsdflasmdfl\r\n\r\n\r\nskfjmsklad\r\nskfal\r\nk\r\n\r\nsfdmkls', '2018-11-29 20:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `profileImagePath` varchar(1024) DEFAULT 'profile_default.jpg',
  `schoolId` int(11) NOT NULL,
  `programId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`userId`, `firstName`, `lastName`, `profileImagePath`, `schoolId`, `programId`) VALUES
(4, 'Naorin', 'Khan', 'profile_default.jpg', 1, 1),
(2, 'Nai', 'Cat', '5bf30a68b4edb.jpg', 53, 107),
(5, 'Manizeh', 'Ahmed', 'profile_default.jpg', 53, 107),
(6, 'Abdullah', 'Ayed', 'profile_default.jpg', 53, 107),
(7, 'Brandon', 'Chaperon', 'profile_default.jpg', 53, 107),
(8, 'Andy', 'Delly', 'profile_default.jpg', 53, 107),
(9, 'Steve', 'Gagné', 'profile_default.jpg', 53, 107),
(10, 'Matei', 'Garila', 'profile_default.jpg', 53, 107),
(11, 'Eluntz Ashley', 'Joseph', 'profile_default.jpg', 53, 107),
(12, 'Irina', 'Kim', 'profile_default.jpg', 53, 107),
(13, 'Sarah-Noémie', 'Laurin', 'profile_default.jpg', 53, 107),
(14, 'Harry', 'Mangipas', 'profile_default.jpg', 53, 107),
(15, 'Nicholas', 'Molino', 'profile_default.jpg', 53, 107),
(16, 'Derek ', 'Murphy', 'profile_default.jpg', 53, 107),
(17, 'Thi Quynh Nhu', 'Nguyen', 'profile_default.jpg', 53, 107),
(18, 'Louie', 'Parale', 'profile_default.jpg', 53, 107),
(19, 'Daniel', 'Samaniego', 'profile_default.jpg', 53, 107),
(20, 'Sasha', 'Samosudow', 'profile_default.jpg', 53, 107),
(21, 'Cesar', 'Sioufi', 'profile_default.jpg', 53, 107),
(22, 'Sean', 'Transfiguracion', 'profile_default.jpg', 53, 107),
(23, 'Andrew', 'Truesdale', 'profile_default.jpg', 53, 107);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
CREATE TABLE `program` (
  `programId` int(11) NOT NULL,
  `programName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`programId`, `programName`) VALUES
(1, '080.04 - University prerequisites'),
(2, '081.A6 - Springboard to a DCS: option orientation/exploration'),
(3, '081.B6 - Springboard to a DCS: option prerequisites/remedial courses/paths'),
(4, '081.C6 - Springboard to a DCS : option integration into Qu?bec society'),
(5, '110.A0 - Dental Technology'),
(6, '110.B0 - Denturology'),
(7, '111.A0 - Dental Hygiene'),
(8, '112.A0 - Acupuncture'),
(9, '120.A0 - Dietetics'),
(10, '140.A0 - Medical Electrophysiology'),
(11, '140.C0 - Biomedical Laboratory Technology'),
(12, '141.A0 - Respiratory and Anaesthesia Technology'),
(13, '142.A0 - Diagnostic Imaging'),
(14, '142.C0 - Radiation Oncology'),
(15, '142.F0 - Nuclear Medicine Technology'),
(16, '144.A0 - Physiotherapy Technology'),
(17, '144.B0 - Orthotics and Prosthetics'),
(18, '145.A0 - Animal Health Technology'),
(19, '145.C0 - Environmental and Wildlife Management'),
(20, '152.B0 - Farm Management and Technology'),
(21, '153.A0 - Livestock Production'),
(22, '153.B0 - Horticultural and Environmental Technology'),
(23, '153.C0 - Ornamental Horticulture: Landscaping and Marketing'),
(24, '153.D0 - Farm Equipment Technology'),
(25, '154.A0 - Food Processing'),
(26, '160.A0 - Optical Dispensing'),
(27, '160.B0 - Hearing Aid Technology'),
(28, '171.A0 - Funeral Service Technology'),
(29, '180.A0 - Nursing'),
(30, '180.B0 - Nursing (After a SSVD)'),
(31, '181.A0 - Pre-Hospital Emergency Care'),
(32, '190.B0 - Forest Technology'),
(33, '200.11 - Science and Music'),
(34, '200.12 - Science and Social Science'),
(35, '200.13 - Science and Visual Arts'),
(36, '200.15 - Science and Dance'),
(37, '200.16 - Science and Arts, Literature and Communication'),
(38, '200.B0 - Science'),
(39, '200.C0 - Computer Sciences and Mathematics'),
(40, '200.D0 - Science in English and French'),
(41, '200.Z0 - Science - International Baccalaureate'),
(42, '210.AA - Laboratory Technology: Biotechnology'),
(43, '210.AB - Laboratory Technology: Analytical Chemistry'),
(44, '210.B0 - Chemical Process Technology'),
(45, '221.A0 - Architectural Technology'),
(46, '221.B0 - Civil Engineering Technology'),
(47, '221.C0 - Building Systems Technology'),
(48, '221.D0 - Realty Appraisal'),
(49, '222.A0 - Urban and Regional Planning'),
(50, '230.AA - Geomatics Technology: Cartography'),
(51, '230.AB - Geomatics Technology: Geodetic Surveying'),
(52, '232.A0 - Cellulose conversion Technology (Eco-Bio)'),
(53, '235.B0 - Industrial Engineering Technology'),
(54, '235.C0 - Pharmaceutical Production Technology'),
(55, '241.A0 - Mechanical Engineering Technology'),
(56, '241.C0 - Composite Materials Processing'),
(57, '241.D0 - Industrial Maintenance Mechanics'),
(58, '243.A0 - Computer Engineering Technology'),
(59, '243.BA - Electronics: Telecommunications'),
(60, '243.BB - Electronics: Computers and Networks'),
(61, '243.BC - Electronics: Audiovisual'),
(62, '243.C0 - Industrial Electronics'),
(63, '244.A0 - Engineering Physic Technology'),
(64, '260.A0 - Water Technology'),
(65, '260.B0 - Environment, Occupational Health and Safety'),
(66, '270.AA - Metallurgical Engineering Technology: Production Techniques'),
(67, '270.AB - Metallurgical Engineering Technology: Advanced Welding Techniques'),
(68, '270.AC - Metallurgical Engineering Technology: Quality Control'),
(69, '271.AA - Mineral Technology: Geology'),
(70, '271.AB - Mineral Technology: Mining'),
(71, '271.AC - Mineral Technology: Mineral processing'),
(72, '280.B0 - Aerospace engineering'),
(73, '280.C0 - Aircraft Maintenance'),
(74, '280.D0 - Avionics'),
(75, '300.11 - Social Science and Music'),
(76, '300.13 - Social Science and Visual Arts'),
(77, '300.15 - Social Science and Dance'),
(78, '300.16 - Social Science and Arts, Literature and Communication'),
(79, '300.30 - Social Science '),
(80, '300.31 - Social Science with Mathematics'),
(81, '300.32 - Social Science - Commerce'),
(82, '300.33 - Social Science - the Individual'),
(83, '300.34 - Social Science - the Society'),
(84, '300.35 - Social Science - the World'),
(85, '300.B0 - Social Science - First Nations'),
(86, '300.C0 - Social Science in English and French'),
(87, '300.Z0 - Social Science - International Baccalaureate'),
(88, '310.A0 - Police Technology'),
(89, '310.B0 - Youth and Adult Correctional Intervention'),
(90, '310.C0 - Paralegal Technology'),
(91, '311.A0 - Fire Safety (After a DEP)'),
(92, '322.A0 - Early Childhood Education'),
(93, '351.A0 - Special Care Counselling'),
(94, '384.A0 - Social Research Techniques'),
(95, '388.A0 - Social Service'),
(96, '391.A0 - Community Recreational Leadership Training'),
(97, '393.A0 - Information and Library Technologies'),
(98, '410.A0 - Transportation Logistics'),
(99, '410.B0 - Accounting and Management Technology'),
(100, '410.C0 - Insurance and Financial Advisory Services'),
(101, '410.D0 - Business Management'),
(102, '410.F0 - Financial services and insurance technology'),
(103, '411.A0 - Medical Records Management'),
(104, '412.AA - Office System Technology: Office Work Coordination'),
(105, '412.AB - Office System Technology: Micropublishing and Hypermedia'),
(106, '414.A0 - Tourism'),
(107, '420.AA - Computer Science Technology: Administrative Data Processing'),
(108, '420.AC - Computer Science Technology: Network Management'),
(109, '420.B0 - Computer Science Technology (new program)'),
(110, '430.A0 - Hotel Management'),
(111, '430.B0 - Food Service and Restaurant Management'),
(112, '500.11 - Arts, Literature and Communication and Music'),
(113, '500.13 - Arts, Literature and Communication and Visual Arts'),
(114, '500.15 - Arts, Literature and Communication and Dance'),
(115, '500.AE - Arts, Literature and Communication: Multidisciplinary'),
(116, '500.AF - Arts, Literature and Communication: Arts'),
(117, '500.AG - Arts, Literature and Communication: Cinema'),
(118, '500.AH - Arts, Literature and Communication: Literature'),
(119, '500.AJ - Arts, Literature and Communication: Media'),
(120, '500.AK - Arts, Literature and Communication: Theater'),
(121, '500.AL - Arts, Literature and Communication: Languages'),
(122, '500.B1 - Arts, Literature and Communication - First Nations'),
(123, '501.13 - Music and Visual Arts'),
(124, '501.15 - Music and Dance'),
(125, '501.A0 - Music'),
(126, '506.13 - Dance and Visual Arts'),
(127, '506.A0 - Dance'),
(128, '510.A0 - Visual Arts'),
(129, '551.A0 - Professionnal Music and Song Techniques'),
(130, '551.B0 - Sound technologies'),
(131, '561.A0 - Professional Theatre: Production'),
(132, '561.BA - Dance: Performance in Classical Dance'),
(133, '561.BB - Dance : Performance in Modern Dance'),
(134, '561.C0 - Professional Theatre: Acting'),
(135, '570.B0 - Museum Techniques'),
(136, '570.C0 - Industrial Design Techniques'),
(137, '570.D0 - Display Design'),
(138, '570.E0 - Interior Design'),
(139, '570.F0 - Professional Photography'),
(140, '570.G0 - Graphic Design'),
(141, '571.A0 - Fashion Design'),
(142, '571.B0 - Apparel Production Management'),
(143, '571.C0 - Fashion Marketing'),
(144, '573.AA - Ceramics'),
(145, '573.AB - Textile Construction'),
(146, '573.AC - Cabinet Making and Millwork'),
(147, '573.AD - Textile Printing'),
(148, '573.AE - Jewellery'),
(149, '573.AF - Guitar making'),
(150, '573.AG - Leatherwork'),
(151, '573.AJ - Glass Arts'),
(152, '574.AB - Animation'),
(153, '574.B0 - 3D Animation and Computer - Generated Imagery'),
(154, '581.B0 - Printing'),
(155, '581.D0 - Computer Graphics in Prepress work'),
(156, '582.A1 - Multimedia Integration'),
(157, '700.16 - Liberal Arts Literature and Communication'),
(158, '700.A0 - Sciences and Arts'),
(159, '700.B0 - Liberal Arts'),
(160, '700.Z0 - Multidisciplinary International Baccalaureate Program');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `requestId` int(11) NOT NULL,
  `tutorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `details` varchar(500) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `request_time` varchar(6) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`requestId`, `tutorId`, `userId`, `timestamp`, `details`, `request_date`, `request_time`, `status`) VALUES
(1, 2, 10, '2018-12-03 16:35:59', 'help', '2018-11-14', '11:11', 'accepted'),
(2, 4, 2, '2018-12-03 16:56:55', 'Need help with guitar practice', '2018-12-22', '10:00', 'pending'),
(3, 12, 2, '2018-12-03 17:02:49', 'Need help with Russian', '2018-12-12', '10:55', 'pending'),
(4, 12, 2, '2018-12-03 17:04:08', 'Need help with Russian', '2018-12-12', '10:55', 'pending'),
(5, 12, 2, '2018-12-03 17:04:52', 'Need help with Russian, again', '2018-12-12', '10:55', 'pending'),
(6, 5, 2, '2018-12-03 17:41:10', 'dbs', '2018-12-21', '12:00', 'pending'),
(7, 2, 11, '2018-12-03 19:51:14', 'Hey', '2018-12-13', '12:34', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `resourceId` int(11) NOT NULL,
  `resourceName` varchar(30) NOT NULL,
  `description` varchar(900) NOT NULL,
  `source` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`resourceId`, `resourceName`, `description`, `source`) VALUES
(1, 'W3Schools', 'W3Schools is an educational website for learning web technologies online. Content includes tutorials and references relating to HTML, CSS, JavaScript, JSON, PHP, Python, AngularJS, SQL, Bootstrap, Node.js, jQuery, XQuery, AJAX, and XML.', 'https://www.w3schools.com'),
(2, 'php.net', 'PHP tutorials and documentation', 'http://www.php.net/'),
(8, 'Bootstrap', 'Bootstrap is an open source toolkit for developing with HTML, CSS, and JS. Quickly prototype your ideas or build your entire app with our Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful plugins built on jQuery. ', 'https://getbootstrap.com/'),
(9, 'Duolingo', 'Duolingo is the world\'s most popular way to learn a language. It\'s 100% free, fun and science-based. Practice online on duolingo.com or on the apps!', 'https://www.duolingo.com/'),
(11, 'Font Awesome', 'Font Awesome is a font and icon toolkit based on CSS and LESS', 'https://fontawesome.com/');

-- --------------------------------------------------------

--
-- Table structure for table `resourceprogram`
--

DROP TABLE IF EXISTS `resourceprogram`;
CREATE TABLE `resourceprogram` (
  `programId` int(11) NOT NULL,
  `resourceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resourceprogram`
--

INSERT INTO `resourceprogram` (`programId`, `resourceId`) VALUES
(104, 8),
(105, 8),
(107, 8),
(121, 9),
(107, 11);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `schoolId` int(11) NOT NULL,
  `schoolName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schoolId`, `schoolName`) VALUES
(1, 'Cégep de l\'Abitibi-Témiscamingue'),
(2, 'Collège Ahuntsic'),
(3, 'Collège d\'Alma'),
(4, 'Cégep André-Laurendeau'),
(5, 'Cégep de Baie-Comeau'),
(6, 'Cégep Beauce-Appalaches'),
(7, 'Collège de Bois-de-Boulogne'),
(8, 'Champlain Regional College'),
(9, 'Saint Lambert College'),
(10, 'Saint Lawrence College'),
(11, 'Lennoxville Campus'),
(12, 'Cégep de Chicoutimi'),
(13, 'Dawson College'),
(14, 'Cégep de Drummondville'),
(15, 'Collège Édouard-Montpetit'),
(16, 'École nationale d\'aérotechnique'),
(17, 'Collège François-Xavier-Garneau'),
(18, 'Cégep de la Gaspésie et des Îles'),
(19, 'Collège Gérald-Godin'),
(20, 'Cégep de Granby-Haute-Yamaska'),
(21, 'Heritage College'),
(22, 'John Abbott College'),
(23, 'Cégep de Jonquière'),
(24, 'Cégep de La Pocatière'),
(25, 'Cégep régional de Lanaudière'),
(26, 'Joliette Campus'),
(27, 'L\'Assomption Campus'),
(28, 'Terrebonne Campus'),
(29, 'Cégep de Lévis-Lauzon'),
(30, 'Cégep Limoilou'),
(31, 'Collège Lionel-Groulx'),
(32, 'Collège de Maisonneuve'),
(33, 'Cégep Marie-Victorin'),
(34, 'Cégep de Matane'),
(35, 'Collège Montmorency'),
(36, 'Cégep de l\'Outaouais'),
(37, 'Cégep de Rimouski'),
(38, 'Cégep de Rivière-du-Loup'),
(39, 'Collège de Rosemont'),
(40, 'Cégep de Saint-Félicien'),
(41, 'Cégep de Saint-Hyacinthe'),
(42, 'Cégep de Saint-Jean-sur-Richelieu'),
(43, 'Cégep de Saint-Jérôme'),
(44, 'Cégep de Saint-Laurent'),
(45, 'Cégep de Sainte-Foy'),
(46, 'Cégep de Sept-Îles'),
(47, 'Collège Shawinigan'),
(48, 'Cégep de Sherbrooke'),
(49, 'Cégep de Sorel-Tracy'),
(50, 'Cégep de Thetford'),
(51, 'Cégep de Trois-Rivières'),
(52, 'Collège de Valleyfield'),
(53, 'Vanier College'),
(54, 'Cégep de Victoriaville'),
(55, 'Cégep du Vieux Montréal'),
(56, 'Kiuna Institute');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `sessionId` int(11) NOT NULL,
  `tutorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `session_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subjectId` int(11) NOT NULL,
  `subjectName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

DROP TABLE IF EXISTS `thread`;
CREATE TABLE `thread` (
  `threadId` int(11) NOT NULL,
  `firstUserId` int(11) NOT NULL,
  `secondUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`threadId`, `firstUserId`, `secondUserId`) VALUES
(1, 2, 4),
(2, 14, 2),
(3, 2, 8),
(4, 4, 8),
(5, 15, 12),
(6, 2, 12),
(7, 19, 2),
(8, 2, 10),
(9, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tutees`
--

DROP TABLE IF EXISTS `tutees`;
CREATE TABLE `tutees` (
  `tutorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
CREATE TABLE `tutor` (
  `userId` int(11) NOT NULL,
  `description` varchar(900) DEFAULT NULL,
  `pay` double DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `timesTutored` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`userId`, `description`, `pay`, `rating`, `timesTutored`) VALUES
(2, 'java, css, html', 10, 4, 1),
(10, 'english, C++, java', 15, 5, 1),
(5, '.NET, databases', 5, 3, 3),
(4, 'guitar, piano, english', 10, 4, 3),
(12, 'spanish, french, databases', 15, 4, 3),
(18, 'html, css', 10, 2, 2),
(14, 'java, C++, arduino, low-level language programming', 10, 3, 2),
(7, 'swimming, self-defense, basketball', 10, 4, 2),
(16, 'piano/keyboard, drawing, graphic design', 15, 3, 3),
(9, 'illustration, psychology, calculus', 15, 5, 1),
(11, 'gymnastics, yoga, bagpipes', 10, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tutorsubject`
--

DROP TABLE IF EXISTS `tutorsubject`;
CREATE TABLE `tutorsubject` (
  `tutorId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(2, '1664931', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(3, '1234561', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(4, '1522125', '$2y$10$mWsjBKAkO/gjsDGPWxjx7eCAhSdWIK/QMlC/wk08gTkiqgIhjrXES'),
(5, '1234562', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(6, '1234563', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(7, '1234564', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(8, '1234565', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(9, '1234566', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(10, '1234567', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(11, '1234568', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(12, '1234569', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(13, '1234560', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(14, '1234511', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(15, '1234512', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(16, '1234513', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(17, '1234514', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(18, '1234515', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(19, '1234516', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(20, '1234517', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(21, '1234518', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(22, '1234519', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(23, '1234510', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.'),
(24, '1234520', '$2y$10$hDS6CbyPvOauF4jMfFdO6evOh3wxGyNllCMNqeNqyXEfTXsPXCD7.');

-- --------------------------------------------------------

--
-- Table structure for table `usernote`
--

DROP TABLE IF EXISTS `usernote`;
CREATE TABLE `usernote` (
  `userId` int(11) NOT NULL,
  `noteId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usernote`
--

INSERT INTO `usernote` (`userId`, `noteId`) VALUES
(2, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD KEY `message_threadid_fk` (`threadId`),
  ADD KEY `message_senderid_fk` (`senderId`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`noteId`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD KEY `profile_userid_fk` (`userId`),
  ADD KEY `profile_schoolid_fk` (`schoolId`),
  ADD KEY `profile_prgmid_fk` (`programId`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`programId`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`requestId`),
  ADD KEY `request_tutorid_fk` (`tutorId`),
  ADD KEY `request_userid_fk` (`userId`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`resourceId`);

--
-- Indexes for table `resourceprogram`
--
ALTER TABLE `resourceprogram`
  ADD KEY `resprgrm_resid_fk` (`resourceId`),
  ADD KEY `resprgrm_prgrmid_fk` (`programId`) USING BTREE;

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`schoolId`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sessionId`),
  ADD KEY `session_tutorid_fk` (`tutorId`),
  ADD KEY `session_userid_fk` (`userId`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectId`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`threadId`),
  ADD KEY `thread_fuserid_fk` (`firstUserId`),
  ADD KEY `thread_suserid_fk` (`secondUserId`);

--
-- Indexes for table `tutees`
--
ALTER TABLE `tutees`
  ADD KEY `tutees_tutorid_fk` (`tutorId`),
  ADD KEY `tutees_userid_fk` (`userId`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD KEY `tutor_userid_fk` (`userId`);

--
-- Indexes for table `tutorsubject`
--
ALTER TABLE `tutorsubject`
  ADD PRIMARY KEY (`subjectId`,`tutorId`),
  ADD KEY `tutorsubject_tId_fk` (`tutorId`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `usernote`
--
ALTER TABLE `usernote`
  ADD KEY `usrnote_noteid_fk` (`noteId`),
  ADD KEY `usrnote_userid_fk` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `noteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `programId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `requestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `resourceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `schoolId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sessionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `threadId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_senderid_fk` FOREIGN KEY (`senderId`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `message_threadid_fk` FOREIGN KEY (`threadId`) REFERENCES `thread` (`threadId`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_prgmid_fk` FOREIGN KEY (`programId`) REFERENCES `program` (`programId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profile_schoolid_fk` FOREIGN KEY (`schoolId`) REFERENCES `school` (`schoolId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profile_userid_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_tutorid_fk` FOREIGN KEY (`tutorId`) REFERENCES `tutor` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `request_userid_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resourceprogram`
--
ALTER TABLE `resourceprogram`
  ADD CONSTRAINT `resourceprogram_ibfk_1` FOREIGN KEY (`programId`) REFERENCES `program` (`programId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resprgrm_resid_fk` FOREIGN KEY (`resourceId`) REFERENCES `resource` (`resourceId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_tutorid_fk` FOREIGN KEY (`tutorId`) REFERENCES `tutor` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_userid_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thread`
--
ALTER TABLE `thread`
  ADD CONSTRAINT `thread_fuserid_fk` FOREIGN KEY (`firstUserId`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `thread_suserid_fk` FOREIGN KEY (`secondUserId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `tutees`
--
ALTER TABLE `tutees`
  ADD CONSTRAINT `tutees_tutorid_fk` FOREIGN KEY (`tutorId`) REFERENCES `tutor` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tutees_userid_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `tutor_userid_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutorsubject`
--
ALTER TABLE `tutorsubject`
  ADD CONSTRAINT `tutorsubject_sid_fk` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`subjectId`),
  ADD CONSTRAINT `tutorsubject_tid_fk` FOREIGN KEY (`tutorId`) REFERENCES `tutor` (`userId`);

--
-- Constraints for table `usernote`
--
ALTER TABLE `usernote`
  ADD CONSTRAINT `usrnote_noteid_fk` FOREIGN KEY (`noteId`) REFERENCES `note` (`noteId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usrnote_userid_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
