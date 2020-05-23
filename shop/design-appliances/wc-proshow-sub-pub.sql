-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 10, 2020 at 02:37 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wc-shopping-sub-pub`
--

-- --------------------------------------------------------

--
-- Table structure for table `associates`
--

DROP TABLE IF EXISTS `associates`;
CREATE TABLE IF NOT EXISTS `associates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `associates`
--

INSERT INTO `associates` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'Associates', 'associates', 'Careers', 'Careers', '7833dfb1d1a2f282237730db5d5a20211.png', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(1, 14, 'add-brands', 'Default Brand', '704eaecd9e0e1b3dd2ab671863602a0d1.png', '', 1, 1),
(4, 14, 'add-brands', 'Summer Brand', '75bb6a7413a7cf8804e013e47b2e6f541.png', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brandscat`
--

DROP TABLE IF EXISTS `brandscat`;
CREATE TABLE IF NOT EXISTS `brandscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brandscat`
--

INSERT INTO `brandscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(14, 'Brands', 'add-brands', '7e69217aed0e94170b03198627fb61491.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'Careers', 'careers', 'Careers', 'Careers', '7833dfb1d1a2f282237730db5d5a20211.png', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `childpages`
--

DROP TABLE IF EXISTS `childpages`;
CREATE TABLE IF NOT EXISTS `childpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childpages`
--

INSERT INTO `childpages` (`id`, `pid`, `pslug`, `name`, `slug`, `metak`, `metad`, `cover`, `post`, `ordr`) VALUES
(15, 12, 'pages', 'Sub Page 3', 'sub3', 'Sub Page 3', 'Sub Page 3', 'b0bde12be5d7c379ef2895af0280d93c1.png', '<h2><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single-small.html\">THI&nbsp;POST WITH A&nbsp; GALLERY</a></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"10\" cellspacing=\"10\" style=\"width:90%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur voluptate rerum molestiae eaque possimus exercitationem eligendi fuga. Maiores, sunt eveniet doloremque porro hic exercitationem distinctio sequi adipisci. Nulla, fuga perferendis voluptatum beatae voluptate architecto laboriosam provident deserunt. Saepe!</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single-small.html\">Read More</a></p>\r\n\r\n<blockquote>\r\n<p>&quot;When you are courting a nice girl an hour seems like a second. When you sit on a red-hot cinder a second seems like an hour. That&#39;s relativity.&quot;</p>\r\n\r\n<p>Albert Einstein</p>\r\n</blockquote>\r\n\r\n<ul>\r\n	<li>&nbsp;3rd March 2014</li>\r\n	<li><a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">&nbsp;admin</a></li>\r\n	<li>&nbsp;<a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">Quotes</a>,&nbsp;<a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">People</a></li>\r\n	<li><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single.html#comments\">&nbsp;23 Comments</a></li>\r\n</ul>\r\n', 3),
(14, 12, 'pages', 'Sub Page 2', 'sub23', 'Sub Page 2', 'Sub Page 233', '596bfacac81d4edea47af268073a47e01.png', '<h3>OPTIMIZED FOR MOBILE &amp; TOUCH ENABLED DEVICES.</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quod consequuntur quibusdam, enim expedita sed quia nesciunt incidunt accusamus necessitatibus modi adipisci officia libero accusantium esse hic, obcaecati, ullam, laboriosam!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti vero, animi suscipit id facere officia. Aspernatur, quo, quos nisi dolorum aperiam fugiat deserunt velit rerum laudantium cum magnam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quod consequuntur quibusdam, enim expedita sed quia nesciunt incidunt accusamus necessitatibus modi adipisci officia libero accusantium esse hic, obcaecati, ullam, laboriosam!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti vero, animi suscipit id facere officia. Aspernatur, quo, quos nisi dolorum aperiam fugiat deserunt velit rerum laudantium cum magnam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quod consequuntur quibusdam, enim expedita sed quia nesciunt incidunt accusamus necessitatibus modi adipisci officia libero accusantium esse hic, obcaecati, ullam, laboriosam!</p>\r\n\r\n<p>Lorem ipsum dolt amet, consectetur adipisicing elit. Vero quod consequuntur quibusdam, enim expedita sed quia nesciunt incidunt accusamus necessitatibus modi adipisci officia libero accusantium esse hic, obcaecati, ullam, laboriosam!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti vero, animi suscipit id facere officia. Aspernatur, quo, quos nisi dolorum aperiam fugiat deserunt velit rerum laudantium cum magnam.</p>\r\n', 2),
(13, 12, 'pages', 'Sub Page 1', 'sub12', 'Sub Page 1', 'Sub Page Meta Descp', 'ee50df58f7585b2c568d26a652e83fc11.png', '<h2><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single.html\">THIS IS A STANDARD POST WITH A PREVIEW IMAGE</a></h2>\r\n\r\n<ul>\r\n	<li>&nbsp;10th February 2014</li>\r\n	<li><a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">&nbsp;admin</a></li>\r\n	<li>&nbsp;<a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">General</a>,&nbsp;<a href=\"http://themes.semicolonweb.com/html/canvas/index-blog.html#\">Media</a></li>\r\n	<li><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single.html#comments\">&nbsp;13 Comments</a></li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, asperiores quod est tenetur in. Eligendi, deserunt, blanditiis est quisquam doloribus voluptate id aperiam ea ipsum magni aut perspiciatis rem voluptatibus officia eos rerum deleniti quae nihil facilis repellat atque vitae voluptatem libero at eveniet veritatis ab facere.</p>\r\n\r\n<p><a href=\"http://themes.semicolonweb.com/html/canvas/blog-single.html\">Read More</a></p>\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `ctval` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(22) NOT NULL,
  PRIMARY KEY (`ctval`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`ctval`, `city`) VALUES
(1, 'Abdul Hakeem'),
(2, 'Abottabad'),
(3, 'Adda jahan khan'),
(4, 'Adda shaiwala'),
(5, 'Ahmed Pur East'),
(6, 'Ahmedpur Lamma'),
(7, 'Akhora khattak'),
(8, 'Ali chak'),
(9, 'Alipur Chatta'),
(10, 'Allahabad'),
(11, 'Amangarh'),
(12, 'Arifwala'),
(13, 'Attock'),
(14, 'Babarloi'),
(15, 'Babri banda'),
(16, 'Badin'),
(17, 'Bahawal Nagar'),
(18, 'Balakot'),
(19, 'Bannu'),
(20, 'Baroute'),
(21, 'Basirpur'),
(22, 'Basti Shorekot'),
(23, 'Bat khela'),
(24, 'Batang'),
(25, 'Bhai pheru'),
(26, 'Bhakkar'),
(27, 'Bhalwal'),
(28, 'Bhan saeedabad'),
(29, 'Bhawalpur'),
(30, 'Bhera'),
(31, 'Bhikky'),
(32, 'Bhimber'),
(33, 'Bhirya road'),
(34, 'Bhuawana'),
(35, 'Buchay key'),
(36, 'Burewala'),
(37, 'Chacklala'),
(38, 'Chaininda'),
(39, 'Chak 4 b c'),
(40, 'Chak 46'),
(41, 'Chak jamal'),
(42, 'Chak jhumra'),
(43, 'Chak Shahzad'),
(44, 'Chaksawari'),
(45, 'Chakwal'),
(46, 'Charsadda'),
(47, 'Chashma'),
(48, 'Chawinda'),
(49, 'Chichawatni'),
(50, 'Chiniot'),
(51, 'Chishtian'),
(52, 'Chitral'),
(53, 'Chohar jamali'),
(54, 'Choppar hatta'),
(55, 'Chowha saidan shah'),
(56, 'Chowk azam'),
(57, 'Chowk mailta'),
(58, 'Chowk munda'),
(59, 'Chunian'),
(60, 'D.G.Khan'),
(61, 'Dadakhel'),
(62, 'Dadu'),
(63, 'Dadyal Ak'),
(64, 'Daharki'),
(65, 'Dandot'),
(66, 'Dargai'),
(67, 'Darya khan'),
(68, 'Daska'),
(69, 'Daud khel'),
(70, 'Daulatpur'),
(71, 'Deh pathaan'),
(72, 'Depal pur'),
(73, 'Dera Allah Yar'),
(74, 'Dera ismail khan'),
(75, 'Dera murad jamali'),
(76, 'Dera nawab sahib'),
(77, 'Dhatmal'),
(78, 'Dhoun kal'),
(79, 'Digri'),
(80, 'Dijkot'),
(81, 'Dina'),
(82, 'Dinga'),
(83, 'Dir'),
(84, 'Doaaba'),
(85, 'Doltala'),
(86, 'Domeli'),
(87, 'Donga Bonga'),
(88, 'Dudial'),
(89, 'Dunia Pur'),
(90, 'Eminabad'),
(91, 'Esa Khel'),
(92, 'Faisalabad'),
(93, 'Faqirwali'),
(94, 'Farooqabad'),
(95, 'Fateh Jang'),
(96, 'Fateh pur'),
(97, 'Feroz walla'),
(98, 'Feroz watan'),
(99, 'Ferozwatowan'),
(100, 'Fiza got'),
(101, 'Fort Abbass'),
(102, 'Gadoon amazai'),
(103, 'Gaggo mandi'),
(104, 'Gakhar mandi'),
(105, 'Gambat'),
(106, 'Gambet'),
(107, 'Garh maharaja'),
(108, 'Garh more'),
(109, 'Garhi yaseen'),
(110, 'Gari habibullah'),
(111, 'Gari mori'),
(112, 'Gharo'),
(113, 'Ghazi'),
(114, 'Ghotki'),
(115, 'Gilgit'),
(116, 'Gohar ghoushti'),
(117, 'Gojar khan'),
(118, 'Gojra'),
(119, 'Goth Machi'),
(120, 'Goular khel'),
(121, 'Guddu'),
(122, 'Gujar Khan'),
(123, 'Gujranwala'),
(124, 'Gujrat'),
(125, 'Gwadar'),
(126, 'Hafizabad'),
(127, 'Hala'),
(128, 'Hangu'),
(129, 'Harappa'),
(130, 'Hari pur'),
(131, 'Hariwala'),
(132, 'Haroonabad'),
(133, 'Hasilpur'),
(134, 'hamza abdal'),
(135, 'Hattar'),
(136, 'Hattian'),
(137, 'Hattian lawrencepur'),
(138, 'Havali Lakhan'),
(139, 'Hawilian'),
(140, 'Hayatabad'),
(141, 'Hazro'),
(142, 'Head marala'),
(143, 'Hub'),
(144, 'Hub-Balochistan'),
(145, 'Hujra Shah Mukeem'),
(146, 'Hunza'),
(147, 'Hyderabad'),
(148, 'Iskandarabad'),
(149, 'Jacobabad'),
(150, 'Jahaniya'),
(151, 'Jaja abasian'),
(152, 'Jalalpur Jattan'),
(153, 'Jalalpur Pirwala'),
(154, 'Jampur'),
(155, 'Jamrud road'),
(156, 'Jamshoro'),
(157, 'Jan pur'),
(158, 'Jand'),
(159, 'Jandanwala'),
(160, 'Jaranwala'),
(161, 'Jatlaan'),
(162, 'Jatoi'),
(163, 'Jauharabad'),
(164, 'Jehangira'),
(165, 'Jehlum'),
(166, 'Jhal Magsi'),
(167, 'Jhand'),
(168, 'Jhang'),
(169, 'Jhatta bhutta'),
(170, 'Jhudo'),
(171, 'Jin Pur'),
(172, 'K.N. Shah'),
(173, 'Kabirwala'),
(174, 'Kacha khooh'),
(175, 'Kahuta'),
(176, 'Kakul'),
(177, 'Kakur town'),
(178, 'Kala bagh'),
(179, 'Kala shah kaku'),
(180, 'Kalaswala'),
(181, 'Kallar Kahar'),
(182, 'Kallar Saddiyian'),
(183, 'Kallur kot'),
(184, 'Kamalia'),
(185, 'Kamalia musa'),
(186, 'Kamber ali khan'),
(187, 'Kameer'),
(188, 'Kamoke'),
(189, 'Kamra'),
(190, 'Kandh kot'),
(191, 'Kandiaro'),
(192, 'Karak'),
(193, 'Karoor pacca'),
(194, 'Karore lalisan'),
(195, 'Kashmir'),
(196, 'Kashmore'),
(197, 'Kasur'),
(198, 'Kazi ahmed'),
(199, 'Khair Pur Mirs'),
(200, 'Khairpur'),
(201, 'Khan Bela'),
(202, 'Khan qah sharif'),
(203, 'Khandabad'),
(204, 'Khanewal'),
(205, 'Khangarh'),
(206, 'Khanqah dogran'),
(207, 'Khanqah sharif'),
(208, 'Kharian'),
(209, 'Khebar'),
(210, 'Khewra'),
(211, 'Khoski'),
(212, 'Khudian Khas'),
(213, 'Khurian wala'),
(214, 'Khurrianwala'),
(215, 'Khushab'),
(216, 'Khushal kot'),
(217, 'Khuzdar'),
(218, 'Klaske'),
(219, 'Kohat'),
(220, 'Kot addu'),
(221, 'Kot bunglow'),
(222, 'Kot ghulam mohd'),
(223, 'Kot mithan'),
(224, 'Kot Momin'),
(225, 'Kot radha kishan'),
(226, 'Kotla'),
(227, 'Kotla arab ali khan'),
(228, 'Kotla jam'),
(229, 'Kotla Pathan'),
(230, 'Kotly Ak'),
(231, 'Kotly Loharana'),
(232, 'Kotri'),
(233, 'Kumbh'),
(234, 'Kundina'),
(235, 'Kunjah'),
(236, 'Kunri'),
(237, 'Laki marwat'),
(238, 'Lala musa'),
(239, 'Lala rukh'),
(240, 'Laliah'),
(241, 'Lalshanra'),
(242, 'Larkana'),
(243, 'Lasbella'),
(244, 'Lawrence pur'),
(245, 'Layya'),
(246, 'Liaqat Pur'),
(247, 'Lodhran'),
(248, 'Lower Dir'),
(249, 'Ludhan'),
(250, 'Madina'),
(251, 'Makli'),
(252, 'Malakand Agency'),
(253, 'Malikwal'),
(254, 'Mamu kunjan'),
(255, 'Mandi bahauddin'),
(256, 'Mandra'),
(257, 'Manga mandi'),
(258, 'Mangal sada'),
(259, 'Mangi'),
(260, 'Mangla'),
(261, 'Mangowal'),
(262, 'Manoabad'),
(263, 'Mansahra'),
(264, 'Mardan'),
(265, 'Mari indus'),
(266, 'Mastoi'),
(267, 'Matli'),
(268, 'Mehar'),
(269, 'Mehmood kot'),
(270, 'Mehrabpur'),
(271, 'Melsi'),
(272, 'Mian Channu'),
(273, 'Mian Wali'),
(274, 'Minchanaabad'),
(275, 'Mingora'),
(276, 'Mir ali'),
(277, 'Miran shah'),
(278, 'Mirpur A.K.'),
(279, 'Mirpur khas'),
(280, 'Mirpur mathelo'),
(281, 'Mithi'),
(282, 'Mitiari'),
(283, 'Mohen jo daro'),
(284, 'More kunda'),
(285, 'Morgah'),
(286, 'Moro'),
(287, 'Mubarik pur'),
(288, 'Multan'),
(289, 'Muridkay'),
(290, 'Murree'),
(291, 'Musafir khana'),
(292, 'Mustung'),
(293, 'Muzaffar Gargh'),
(294, 'Muzaffarabad'),
(295, 'Nankana sahib'),
(296, 'Narang mandi'),
(297, 'Narowal'),
(298, 'Naseerabad'),
(299, 'Naukot'),
(300, 'Naukundi'),
(301, 'Nawabshah'),
(302, 'New saeedabad'),
(303, 'Nilore'),
(304, 'Noor kot'),
(305, 'Nooriabad'),
(306, 'Noorpur nooranga'),
(307, 'Noshero Feroze'),
(308, 'Noudero'),
(309, 'Nowshera'),
(310, 'Nowshera cantt'),
(311, 'Nowshera Virka'),
(312, 'Okara'),
(313, 'Other'),
(314, 'Padidan'),
(315, 'Pak china fertilizer'),
(316, 'Pak pattan sharif'),
(317, 'Panjan kisan'),
(318, 'Panjgoor'),
(319, 'Panno Aqil'),
(320, 'Panu Aqil'),
(321, 'Pasni'),
(322, 'Pasroor'),
(323, 'Pattoki'),
(324, 'Phagwar'),
(325, 'Phalia'),
(326, 'Phool nagar'),
(327, 'Piaro goth'),
(328, 'Pind Dadan Khan'),
(329, 'Pindi Bhattiya'),
(330, 'Pindi bhohri'),
(331, 'Pindi gheb'),
(332, 'Piplan'),
(333, 'Pir mahal'),
(334, 'Pishin'),
(335, 'Qalandarabad'),
(336, 'Qamber Ali Khan'),
(337, 'Qasba gujrat'),
(338, 'Qazi ahmed'),
(339, 'Qila Deedar Singh'),
(340, 'Quaid Abad'),
(341, 'Quetta'),
(342, 'Rabwah'),
(343, 'Rahim Yar Khan'),
(344, 'Rahwali'),
(345, 'Raiwind'),
(346, 'Rajana'),
(347, 'Rajanpur'),
(348, 'Rangoo'),
(349, 'Ranipur'),
(350, 'Rato Dero'),
(351, 'Rawala kot'),
(352, 'Rawat'),
(353, 'Renala khurd'),
(354, 'Risalpur'),
(355, 'Rohri'),
(356, 'Sadiqabad'),
(357, 'Sagri'),
(358, 'Sahiwal'),
(359, 'Saidu sharif'),
(360, 'Sajawal'),
(361, 'Sakhi Sarwar'),
(362, 'Samanabad'),
(363, 'Sambrial'),
(364, 'Samma satta'),
(365, 'Sanghar'),
(366, 'Sanghi'),
(367, 'Sangla Hills'),
(368, 'Sangote'),
(369, 'Sanjarpur'),
(370, 'Sanjwal'),
(371, 'Sara e naurang'),
(372, 'Sara-E-Alamgir'),
(373, 'Sargodha'),
(374, 'Satiayana'),
(375, 'Sawabi'),
(376, 'Sehar baqlas'),
(377, 'Sehwan Sharif'),
(378, 'Sekhat'),
(379, 'Serai alamgir'),
(380, 'Shadiwal'),
(381, 'Shah kot'),
(382, 'Shahdad kot'),
(383, 'Shahdara'),
(384, 'Shahpur chakar'),
(385, 'Shahpur Saddar'),
(386, 'Sheikhupura'),
(387, 'Shakargarh'),
(388, 'Shamsabad'),
(389, 'Shankiari'),
(390, 'Shedani sharif'),
(391, 'Shehdadpur'),
(392, 'Shemier'),
(394, 'Shikar pur'),
(395, 'Shorekot Cantt'),
(396, 'Shorkot'),
(397, 'Shuja Abad'),
(398, 'Sialkot'),
(399, 'Sibi'),
(400, 'Sihala'),
(401, 'Sikandarabad'),
(402, 'Sillanwali'),
(403, 'Sita road'),
(404, 'Skardu'),
(405, 'Skrand'),
(406, 'Sohawa'),
(407, 'Sohawa district daska'),
(408, 'Sukkur'),
(409, 'Sumandari'),
(410, 'Swat'),
(411, 'Swatmingora'),
(412, 'Takhtbai'),
(413, 'Talagang'),
(414, 'Talamba'),
(415, 'Talhur'),
(416, 'Tandiliyawala'),
(417, 'Tando adam'),
(418, 'Tando Allah Yar'),
(419, 'Tando jam'),
(420, 'Tando Muhammad Khan'),
(421, 'Tank'),
(422, 'Tarbela'),
(423, 'Tarmatan'),
(424, 'Tatlay Wali'),
(425, 'Taunsa sharif'),
(426, 'Taxila'),
(427, 'Tharo shah'),
(428, 'Thatta'),
(429, 'Theing jattan more'),
(430, 'Thull'),
(431, 'Tibba sultanpur'),
(432, 'Toba Tek Singh'),
(433, 'Topi'),
(434, 'Toru'),
(435, 'Tranda Muhammad Pannah'),
(436, 'Turbat'),
(437, 'Ubaro'),
(438, 'Ubauro'),
(439, 'Ugoke'),
(440, 'Ukba'),
(441, 'Umer Kot'),
(442, 'Upper deval'),
(443, 'Usta Muhammad'),
(444, 'Vehari'),
(445, 'Village Sunder'),
(446, 'Wah cantt'),
(447, 'Wahi hassain'),
(448, 'Wahn Bachran'),
(449, 'Wan radha ram'),
(450, 'Warah'),
(451, 'Warburton'),
(452, 'Wazirabad'),
(453, 'Yazman mandi'),
(454, 'Zafarwal'),
(455, 'Zahir Peer'),
(456, 'Lahore'),
(457, 'Karachi'),
(458, 'Islamabad'),
(459, 'Rawalpindi'),
(460, 'Peshawar');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(27, 14, 'add-clients', 'hello', '6d92ddfe8519de07c4635c2d5fbbce701.png', 'www.hamzapervaiz.com', 9, 1),
(28, 14, 'add-clients', 'Best in Class', '687311a399f64d866b7413a4d6e543911.png', 'www.hamzapervaiz.com', 3, 1),
(29, 14, 'add-clients', 'Honda', '79dcf7757be1d7f2f727f44960dca2001.png', 'www.lol.123', 1, 1),
(30, 14, 'add-clients', 'Name', 'ae3eb7745aedc87e61c442292ed6a0921.png', '112.qlol.q12', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientscat`
--

DROP TABLE IF EXISTS `clientscat`;
CREATE TABLE IF NOT EXISTS `clientscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientscat`
--

INSERT INTO `clientscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(14, 'Clients', 'add-clients', '1a242f37060cac2e1e56b05369ac96e61.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` text,
  `logo` text,
  `phone` text,
  `email` text,
  `address` text,
  `gmaps` text,
  `cover` text,
  `post` text,
  `fpost` text,
  `facebook` text,
  `twitter` text,
  `insta` text,
  `youtube` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `sitename`, `logo`, `phone`, `email`, `address`, `gmaps`, `cover`, `post`, `fpost`, `facebook`, `twitter`, `insta`, `youtube`) VALUES
(1, 'Company Pvt. Ltd.                   ', '9674ca9cd4cc423d499d0c52840ac14b1.png', '+92 123 456789', 'company@email.com', 'Company, Lahore. (Pakistan).                         ', 'Map Code    ', '5446d6f9cf7b51b48c0875b3009fb11d1.png', '<p>lol</p>\r\n', 'Sample Footer Text  ðŸ˜‰ðŸ¤ž  ', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.instagram.com', 'http://www.youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
CREATE TABLE IF NOT EXISTS `field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `desp` text NOT NULL,
  `ordr` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`id`, `name`, `img`, `desp`, `ordr`) VALUES
(3, 'Hydropower  & Dams', 'f6bda39b9e56d33c5b4b3bb208d62fcf1.png', 'Over the last 40 Years, NDC has been engaged in feasibility detailed, design & construction supervision of more than 20,000 MW of Hydropower Projects including worldâ€™s highest RCC dams i.e. 272 m high Diamer Basha Dam and 242 m high Dasu ', 1),
(2, 'River Training & Flood Protection', 'b953c0a05b20bd4cc14eca52045a4e4a1.png', 'NDC has contributed, over the years, in water resources projects for river training, flood protection & control. Projects successfully completed by NDC in this field include Second Flood Sector Project, Flood Protection Works in Sindhâ€¦..', 3),
(4, 'Irrigation', '9f6719a449cccf7f7bf4b75cb4d963a21.png', 'NDC has undertaken detailed design and construction supervision of irrigation projects & rehabilitation of mega irrigation and drainage projects including Sulemanki Barrage, Taunsa Barrage, Sukkur Barrage, Kachhi Canal Project, New Khanki Barrage,  National Drainage Program, Chashma', 2),
(5, 'Irrigation & Hydraulics', 'e7d83d1ed2452a0b619534bc81f7f67e1.png', 'Isst  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 4),
(6, 'River Training & Flood Protetion', '2413c767f30a48f93cd75d3f07f773921.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 5),
(7, 'Drainage & Groundwater Resource', '1cc50c07166f99e0216d0b09ada6f9c71.png', '  adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 6),
(8, 'Transportation', 'a82177f5973ad7b5b1022963388b98d81.png', '   adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 7),
(9, 'Urban Infrastructure Development', 'cb9d2bf166244d97b43322e82cd53a001.png', 'adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 8),
(10, 'Physical and Numerical Hydraulic Modeling', '04865cef1631adc07b535b90353b7fd31.png', ' labore et dolore magna aliqua. Ut enim ad minim ', 9),
(11, 'Heading', '0de1b71f2c045a1551d5b9ccef582fd61.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 10),
(12, 'Heading', '1d91a12b29ffaf1408643ff4d5667f931.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 11),
(13, 'Heading', 'c3170bd38420563fa4548f143741ed071.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et ..Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et ..', 12);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallerycat`
--

DROP TABLE IF EXISTS `gallerycat`;
CREATE TABLE IF NOT EXISTS `gallerycat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` text NOT NULL,
  `img` text NOT NULL,
  `vid` text,
  `vidpost` text,
  `vidimg` text NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `post`, `img`, `vid`, `vidpost`, `vidimg`, `msg`) VALUES
(1, '<h4>&nbsp;</h4>\r\n\r\n<h3>About the Company:</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p><span style=\"font-size:13px\">Employment respond committed meaningful fight against oppression social challenges rural legal aid governance.&nbsp;</span></p>\r\n\r\n<p>Meaningful work, implementation, process cooperation, campaign inspire.</p>\r\n\r\n<p>Smartly Coded &amp; Maintained.</p>\r\n\r\n<p>Medecins du Monde Jane Addams reduce child mortality challenges Ford Foundation. Diversification shifting landscape advocate pathway to a better life rights international. Assessment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#c0392b\"><u>View More...</u></span></p>\r\n', '438c269b1ddcc2eab388c85a9b1eb8541.png', '   Custom Video URL   ', '<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">Shaping the future through</span></span></span></h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\">EVEN MORE FEATURE RICH</span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">Philanthropy convener livelihoods, initiative end hunger gender rights local. John Lennon storytelling; advocate, altruism impact catalyst.<span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"> creative solutions and visionary leadership.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">Testing</span></span></span></p>\r\n', '4709c35999256ec9b2bcb750135058b71.png', '<p>National Development Consultants Pvt. Ltd. Pakistan, is one of the Pakistan&#39;s premier consulting engineering organization, which has attained international standard and is ranked among the Pakistan&#39;s top 5 consulting firms.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(28, 15, 'image-gallery1', 'Test', '1f40dcf29c529a095c8b6b873133f9d41.png', 'www.hamzapervaiz.com', 0, 1),
(29, 15, 'image-gallery1', 'Test 2', 'f4b0bf8ae34bc216c301b98cc32c84221.png', 'test.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `imagescat`
--

DROP TABLE IF EXISTS `imagescat`;
CREATE TABLE IF NOT EXISTS `imagescat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagescat`
--

INSERT INTO `imagescat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(15, 'Image Gallery1', 'image-gallery1', '7f3e135916f408ffb2256bddbb6f0a111.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `marquee`
--

DROP TABLE IF EXISTS `marquee`;
CREATE TABLE IF NOT EXISTS `marquee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text,
  `text` text,
  `heading` text,
  `month` text,
  `year` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marquee`
--

INSERT INTO `marquee` (`id`, `img`, `text`, `heading`, `month`, `year`, `url`, `ordr`) VALUES
(9, NULL, 'Testing Event', NULL, '2020', '10', '<p>hello Event Description</p>\r\n', 1),
(10, NULL, 'Another  Testing Event', NULL, '10', '2020', 'Sample Descp', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'News and Events', '', 'Careers', 'Careers', '15562240ad0d6bfc4be7dcd977c92aaf1.png', '<p>post</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `icon` text,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  `res` int(11) NOT NULL DEFAULT '0',
  `ordr` int(11) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `icon`, `metak`, `metad`, `cover`, `post`, `res`, `ordr`, `hide`) VALUES
(1, 'Home', 'home', 'home', 'Site Name', 'Site Name', '16221544bd7db1d546fd5d83855d330b1.png', '<h2>Hello World</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>234</p>\r\n', 1, 2, 0),
(9, 'Contact Us', 'contacts', 'envelope', 'Contacts', 'Contacts', '123.jpg', '', 1, 20, 0),
(24, 'Clients', 'clients', 'group', 'clients ', 'clients ', '9de10abac4b0183b85d6c341daf581431.png', '', 1, 10, 1),
(5, 'Services', 'services', 'briefcase', 'Services', 'meta description', '', '', 1, 12, 0),
(4, 'Brands', 'brands', 'tags', 'Brands', 'Brands of Products', 'c9a4f94b46d91e28e7a65838354d03451.png', '', 1, 8, 0),
(25, 'Custom', 'custompage', 'star', 'Custom', 'Page', NULL, NULL, 0, 12, 1),
(7, 'Images', 'image', 'camera', 'Images Gallery', 'Images Gallery\r\n', 'c960d16f3cf63f31067161bff94108f81.png', '', 1, 16, 1),
(3, 'Products', 'products', 'list', 'products', 'products', '', '', 1, 6, 0),
(6, 'News / Events', 'news', 'info-circle', 'News / Events', 'News / Events', '53bb95cfdc5c32765745bcbc6747d9b31.png', '<p>lol this</p>\r\n', 1, 14, 1),
(2, 'Pages', 'pages', 'book', 'Pages', 'pages', '', '', 1, 4, 0),
(8, 'Videos', 'video', 'video-camera', 'Videos Gallery', 'Videos Gallery', '395a08298e40fdd55b41d04d13cc9ff61.png', '', 1, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pimgs`
--

DROP TABLE IF EXISTS `pimgs`;
CREATE TABLE IF NOT EXISTS `pimgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) NOT NULL,
  `img` text,
  `feat` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pimgs`
--

INSERT INTO `pimgs` (`id`, `pid`, `pslug`, `img`, `feat`, `ordr`) VALUES
(180, 61, 'new-jens', '9846ab56f3cb9ea8e14d922e871cff611.png', 1, 0),
(181, 61, 'new-jens', '3afb5476d8ef57cfc3afaf97430eab611.png', 0, 1),
(189, 63, 'men-dress-pant-1', 'dacf7d919b1d941578a5023043f7d52e1.png', 1, 0),
(182, 61, 'new-jens', '6a1395a64bb5be8865077acc73157c6b1.png', 0, 2),
(174, 59, 'rent-your-ride', 'b0a32c0e306fe73ebde3cb3bc16ea2611.png', 1, 0),
(183, 62, 'del-pro', '8530ea18330e31520dab7c1761b80fa51.png', 1, 0),
(184, 62, 'del-pro', 'a8e061b515e7fff0b3a864c396842cad1.png', 0, 1),
(188, 60, 'boys-jeans-1', '4d7424ea180ceda1869c8435ea703bdd1.png', 0, 1),
(187, 60, 'boys-jeans-1', '99e758b55c729eac5e8be4280cb18f331.png', 1, 0),
(190, 63, 'men-dress-pant-1', 'a236b4042ca32650c40a18cbd1b84ce11.png', 0, 1),
(191, 63, 'men-dress-pant-1', 'fc45f4cbb17d692dd22db537ccb6e8411.png', 0, 2),
(192, 64, 'new-pant-l778-', 'd4971954314c592e478b65db692e04791.png', 1, 0),
(193, 64, 'new-pant-l778-', '99831a44a03403d1522e831085383f161.png', 0, 1),
(194, 65, 'black-night-trouser', '90c3c90dabe6a17e71adb794b979a2a01.png', 1, 0),
(195, 66, 'v-neck-grey', 'ddd47dc2b98560ba2c1f04d58e6042581.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `mslug` varchar(40) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `saleprice` int(11) DEFAULT NULL,
  `sizesm` int(11) NOT NULL DEFAULT '0',
  `sizemd` int(11) NOT NULL DEFAULT '0',
  `sizelg` int(11) NOT NULL DEFAULT '0',
  `metak` text,
  `metad` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `mid`, `mslug`, `pid`, `pslug`, `name`, `slug`, `brand`, `price`, `sale`, `saleprice`, `sizesm`, `sizemd`, `sizelg`, `metak`, `metad`, `desp`, `feat`, `ordr`) VALUES
(61, 23, 'boys', 4, 'jeans', 'New Boys Jeans 1', 'new-jens', 4, 1500, 0, 0, 0, 0, 0, 'Merta', 'DFesdgf', '<p>#ccatimg {<br />\r\nheight: 80px;<br />\r\nwidth: 100px;<br />\r\n}<br />\r\n#catimg1{<br />\r\nwidth: 200px;<br />\r\n}<br />\r\n<br />\r\n<br />\r\n#ccatimg1{<br />\r\nwidth: 120px;<br />\r\n}</p>\r\n', '1', 2),
(60, 23, 'boys', 4, 'jeans', 'Boys Jeans 1', 'boys-jeans-1', 4, 4999, 1, 9000, 1, 1, 1, 'Boys Jeans 1', 'Boys Jeans 1', '<p>Boys Jeans 1 Description</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1', 1),
(63, 25, 'gents', 6, 'dress-pents', 'Men Dress Pant 1', 'men-dress-pant-1', 1, 9000, 1, 12000, 1, 1, 1, '', '', '<p>Welcome to our 2020 casual look guide for the modern man. We&rsquo;ve broken down this guide into several sections. You can skip to the part that&rsquo;s most important to you right now if you want.</p>\r\n\r\n<ol>\r\n	<li>What is the&nbsp;<em>Casual wear</em>?</li>\r\n	<li>Casual men wardrobe basics: 26 essential items to perfect your look\r\n	<ol>\r\n		<li>Denim jeans</li>\r\n		<li>Casual T-shirts</li>\r\n		<li>Polo shirts</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n', '0', 1),
(64, 25, 'gents', 6, 'dress-pents', 'New Pant L778 ', 'new-pant-l778-', 1, 800, 0, 0, 1, 1, 0, '', '', '<p><strong>Casual wear is relaxed, with the right amount of elegance</strong>&nbsp;and laid back and suited for everyday use. Casual clothes typically blend personal comfort and individuality &ndash; since you have to mix and match different garments to create your unique look.</p>\r\n\r\n<p>Experiment and discover what works best for you. You can, quite literally, wear what you want (except maybe if you are thinking of running errands in your couch potato wear).</p>\r\n', '0', 2),
(65, 25, 'gents', 9, 'night-trousers', 'Black Night Trouser', 'black-night-trouser', 1, 500, 0, 0, 0, 1, 1, '', '', '<h4>REIGNING CHAMP</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The backbone of the casual outfit since the 1950s,&nbsp;<strong>great fitting jeans can easily be dressed up or toned down</strong>.</p>\r\n\r\n<p>If you want to project a more&nbsp;<strong>polished appearance</strong>, opt for a quality pair of jeans in straight-leg styles and a dark wash.</p>\r\n\r\n<p>For a more&nbsp;<strong>laid-back, off-duty look</strong>, go for cuts in lighter hues. Whatever style you choose, denim is always a failsafe go-to style that you can take in many different directions</p>\r\n', '1', 1),
(66, 25, 'gents', 8, 't-shirts-men', 'V Neck Grey', 'v-neck-grey', 1, 900, 1, 1200, 1, 1, 1, '', '', '<h3>&nbsp;V Neck shirts</h3>\r\n\r\n<p>One level of formality above the T-shirt, the Polo shirt is another essential in your wardrobe.</p>\r\n\r\n<p>You can&rsquo;t go wrong when dressing casually if you combine a premium pair of jeans with a polo shirt.&nbsp;<strong>You don&rsquo;t need to spend a lot of money on a good polo shirt</strong>&nbsp;but you do need to make sure that it fits your body type.</p>\r\n', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `productcat`
--

DROP TABLE IF EXISTS `productcat`;
CREATE TABLE IF NOT EXISTS `productcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productcat`
--

INSERT INTO `productcat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(25, 'Gents', 'gents', 'df0a2d844e5d1fc51c62d8dbda43ac741.png', '', NULL, 2),
(23, 'Boys', 'boys', 'f550fd0649f9fbbf1b28637d49a6a1fd1.png', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `productsubcat`
--

DROP TABLE IF EXISTS `productsubcat`;
CREATE TABLE IF NOT EXISTS `productsubcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pslug` varchar(90) NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `img` text NOT NULL,
  `desp` text,
  `feat` text,
  `ordr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productsubcat`
--

INSERT INTO `productsubcat` (`id`, `pid`, `pslug`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(6, 25, 'gents', 'Dress Pents', 'dress-pents', '9af568c51fe14d0906584b3435dcbbcc1.png', '', NULL, 2),
(5, 23, 'boys', 'T-Shirts', 't-shirts', '83054bacb11f7672c51e6c3e3a99b5261.png', NULL, NULL, 2),
(4, 23, 'boys', 'Jeans', 'jeans', '51f8497de6a2e76349a090810e23f73d1.png', NULL, NULL, 1),
(8, 25, 'gents', 'T-Shirts Men', 't-shirts-men', '5d0bc467ed4a335d120f4b1ff206cec41.png', NULL, NULL, 3),
(9, 25, 'gents', 'Night Trousers', 'night-trousers', '2f6806ac9d9f2e1bfbbbf49a64c775551.png', NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `metak` text,
  `metad` text,
  `desp` text,
  `feat` text,
  `ordr` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `pid`, `pslug`, `name`, `slug`, `metak`, `metad`, `desp`, `feat`, `ordr`) VALUES
(24, 10, 'add-services', 'New Services', 'new-services', 'New Services', 'New Services', '<p>Sapmple Description of Services</p>\r\n', '1', '0'),
(25, 10, 'add-services', 'Another Serveice', 'another-serveice', 'Another Serveice', 'Another Serveice', NULL, '1', '2'),
(26, 10, 'add-services', 'More Services', 'more', 'more', '', NULL, '0', '3'),
(27, 10, 'add-services', 'Must show on home', 'must-show-on-home', 'Must show on home', 'Must show on home', NULL, '1', '4');

-- --------------------------------------------------------

--
-- Table structure for table `servicecat`
--

DROP TABLE IF EXISTS `servicecat`;
CREATE TABLE IF NOT EXISTS `servicecat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicecat`
--

INSERT INTO `servicecat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(10, 'Our Services', 'add-services', '15b8e40d18212e11c814e9c702ae5dd61.png', '<p>lol</p>\r\n', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device` text NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `size` varchar(40) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `totalprice` int(11) DEFAULT '0',
  `bfname` text,
  `blname` text,
  `bcompany` text,
  `baddress1` text,
  `baddress2` text,
  `bcity` text,
  `bcountry` text,
  `bmobile` text,
  `bemail` text,
  `spostal` text,
  `bpostal` text,
  `sfname` text,
  `slname` text,
  `scompany` text,
  `saddress1` text,
  `saddress2` text,
  `scity` text,
  `scountry` text,
  `smobile` text,
  `semail` text,
  `inst` text,
  `status` text,
  `datec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pdate` date DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `ddate` date DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `expreason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `device`, `pid`, `qty`, `size`, `price`, `totalprice`, `bfname`, `blname`, `bcompany`, `baddress1`, `baddress2`, `bcity`, `bcountry`, `bmobile`, `bemail`, `spostal`, `bpostal`, `sfname`, `slname`, `scompany`, `saddress1`, `saddress2`, `scity`, `scountry`, `smobile`, `semail`, `inst`, `status`, `datec`, `pdate`, `edate`, `ddate`, `expdate`, `expreason`) VALUES
(7, 'acfd0f88535c5a2c399278ed54769836', 60, 2, 'M', 4999, 0, 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Faizpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Faizpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', 'Special Instruction;\r\nfors ', 'delivered', '2020-05-07 08:31:37', NULL, '2020-05-09', '2020-05-09', NULL, NULL),
(9, 'acfd0f88535c5a2c399278ed54769836', 60, 1, 'L', 4999, 0, 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Faizpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Faizpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', 'Special Instruction;\r\nfors ', 'enroute', '2020-05-07 09:18:23', NULL, '2020-05-10', NULL, NULL, NULL),
(10, 'acfd0f88535c5a2c399278ed54769836', 61, 5, '', 1500, 0, 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Faizpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Faizpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', 'Special Instruction;\r\nfors ', 'pending', '2020-05-07 10:28:46', NULL, NULL, NULL, NULL, NULL),
(11, 'acfd0f88535c5a2c399278ed54769836', 63, 5, 'M', 9000, 0, 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Sharaqpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Sharaqpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', 'Special Instruction', 'enroute', '2020-05-07 14:49:27', '2020-05-09', '2020-05-09', NULL, NULL, NULL),
(12, 'acfd0f88535c5a2c399278ed54769836', 60, 2, 'L', 4999, 0, 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Sharaqpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Sharaqpur', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', 'Special Instruction', 'expired', '2020-05-07 15:19:50', '2020-05-09', '2020-05-09', '2020-05-09', '2020-05-10', 'New Month Ordering'),
(14, 'acfd0f88535c5a2c399278ed54769836', 61, 5, '', 1500, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'expired', '2020-05-10 00:16:46', NULL, NULL, NULL, '2020-05-10', 'Just Testing'),
(15, 'acfd0f88535c5a2c399278ed54769836', 60, 11, 'S', 4999, 0, 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', 'Casual clothes typically blend personal comfort and individuality â€“ since you have to mix and match different garments to create your unique look.', 'pending', '2020-05-10 00:17:26', '2020-05-10', NULL, NULL, NULL, NULL),
(16, 'acfd0f88535c5a2c399278ed54769836', 64, 10, 'M', 800, 0, 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', 'Casual clothes typically blend personal comfort and individuality â€“ since you have to mix and match different garments to create your unique look.', 'pending', '2020-05-10 01:22:49', '2020-05-10', NULL, NULL, NULL, NULL),
(17, 'acfd0f88535c5a2c399278ed54769836', 64, 10, 'M', 800, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cart', '2020-05-10 01:24:58', NULL, NULL, NULL, NULL, NULL),
(18, 'acfd0f88535c5a2c399278ed54769836', 66, 5, 'S', 900, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cart', '2020-05-10 01:42:47', NULL, NULL, NULL, NULL, NULL),
(19, 'acfd0f88535c5a2c399278ed54769836', 66, 2, 'M', 900, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cart', '2020-05-10 01:42:52', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simgs`
--

DROP TABLE IF EXISTS `simgs`;
CREATE TABLE IF NOT EXISTS `simgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) NOT NULL,
  `img` text,
  `feat` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simgs`
--

INSERT INTO `simgs` (`id`, `pid`, `pslug`, `img`, `feat`, `ordr`) VALUES
(122, 28, 'not-show', '4d1cc98ce7e783223f020ddc8dea93f71.png', 0, 0),
(111, 25, 'another-serveice', '426f967cc6d0fcb2254462a854d8b35a1.png', 1, 0),
(112, 25, 'another-serveice', 'e2a324e7a423c441be0c793d691f49d31.png', 0, 2),
(113, 26, 'more', '124513a35bcca744e2d12a9334487da61.png', 1, 0),
(114, 27, 'must-show-on-home', '2d9cec06d36bf1521df9c2ef0a05b2671.png', 1, 0),
(121, 28, 'not-show', '6339fd77e1059c684c8feb109aa5676a1.png', 1, 0),
(116, 36, 'pro-20', '8493c168a080a9aa42323db7aef5fe251.png', 1, 0),
(118, 39, 'new-product-10', 'f90bc793c85d11511f50ca0be2efce5c1.png', 1, 0),
(119, 40, 'slud', 'a55ffefe04018b2f05720bb1d1d95f8b1.png', 1, 0),
(123, 24, 'new-services', 'd62f57f2c4c820c616bf93418190dec21.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `img`, `ordr`) VALUES
(25, 'S2', '3e0b6d1e8305ce736c1bdec54ceecf661.png', 2),
(24, 'S1', '35f59fb058d559ba6ecf6d874ec40f3d1.png', 1),
(26, 'S3', '82354bf752f5efaf93298da565c03dc31.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'hamza56', 'admin990', 'admin'),
(2, 'admin', 'admin9', '');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(31, 15, 'videos-gallery', 'Video 2', 'Null', 'www.lolvideos.com', 8, 1),
(30, 15, 'videos-gallery', 'Name of Video', 'Null', 'www.hamzapervaiz.com', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videoscat`
--

DROP TABLE IF EXISTS `videoscat`;
CREATE TABLE IF NOT EXISTS `videoscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videoscat`
--

INSERT INTO `videoscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(15, 'Videos Gallery1', 'videos-gallery', 'b1672d4092e3ad3395f46587a99c2b5e1.png', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
