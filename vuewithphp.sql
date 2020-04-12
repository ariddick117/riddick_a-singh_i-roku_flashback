-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2020 at 01:38 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuewithphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'cinderella.jpg', 'Cinderella', '1950', '1h 16m', 'Cinderella is a dreamer who is trapped within a step-family who doesn\'t love or appreciate her. Enslaved by her evil stepmother and stepsisters, Cinderella dreams of going to the ball and meeting the Prince.', 'cinderella.mp4', 'February 15 1950'),
(2, 'rear_window.jpg', 'Rear Window', '1954', '1h 55m', 'The story of a recuperating news photographer who believes he has witnessed a murder. Confined to a wheelchair after an accident, he spends his time watching the occupants of neighbouring apartments through a telephoto lens and binoculars and becomes convinced that a murder has taken place.', 'rear_window.mp4', 'September 1 1954'),
(3, 'singin_in_the_rain.jpg', 'Singin\' In The Rain', '1952', '1h 43m', 'When the transition is being made from silent films to `talkies\', everyone has trouble adapting. Don and Lina have been cast repeatedly as a romantic couple, but when their latest film is remade into a musical, only Don has the voice for the new singing part. After a lot of practise with a diction coach, Lina still sounds terrible, and Kathy, a bright young aspiring actress, is hired to record over her voice.', 'singin_in_the_rain.mp4', 'March 27,1952'),
(4, 'some_like_it_hot.jpg', 'Some Like It Hot', '1959', '2h 12m', 'After witnessing a Mafia murder, slick saxophone player Joe and his long-suffering buddy, Jerry, improvise a quick plan to escape from Chicago with their lives. Disguising themselves as women, they join an all-female jazz band and hop a train bound for sunny Florida. While Joe pretends to be a millionaire to win the band\'s sexy singer, Sugar, Jerry finds himself pursued by a real millionaire as things heat up and the mobsters close in.', 'some_like_it_hot.mp4', 'March 19 1959'),
(5, '2001_space_odys.jpg', '2001: A Space Odyssey', '1968', '2h 9min', 'An imposing black structure provides a connection between the past and the future in this enigmatic adaptation of a short story by revered sci-fi author Arthur C. Clarke. When Dr. Dave Bowman and other astronauts are sent on a mysterious mission, their ship\'s computer system, HAL, begins to display increasingly strange behavior, leading up to a tense showdown between man and machine that results in a mind-bending trek through space and time.', '2001_space_odys.mp4', 'April 2 1968'),
(6, 'dr_no.jpg', 'Dr. No', '1962', '2h', 'In the film that launched the James Bond saga, Agent 007 battles mysterious Dr. No, a scientific genius bent on destroying the U.S. space program. As the countdown to disaster begins, Bond must go to Jamaica, where he encounters beautiful Honey Ryder, to confront a megalomaniacal villain in his massive island headquarters.', 'dr_no.mp4', 'October 5 1962'),
(7, 'good_bad_ugly.jpg', 'The Good, the Bad, and the Ugly', '1966', '3h 6m', 'In the Southwest during the Civil War, a mysterious stranger, Joe, and a Mexican outlaw, Tuco, form an uneasy partnership -- Joe turns in the bandit for the reward money, then rescues him just as he is being hanged. When Joe\'s shot at the noose goes awry during one escapade, a furious Tuco tries to have him murdered. The men re-team abruptly, however, to beat out a sadistic criminal and the Union army and find $20,000 that a soldier has buried in the desert.', 'good_bad_ugly.mp4', 'December 23 1966'),
(8, 'psycho.jpg', 'Psycho', '1960', '1h 49m', 'Phoenix secretary Marion Crane, on the lam after stealing $40,000 from her employer in order to run away with her boyfriend, Sam Loomis, is overcome by exhaustion during a heavy rainstorm. Traveling on the back roads to avoid the police, she stops for the night at the ramshackle Bates Motel and meets the polite but highly strung proprietor Norman Bates, a young man with an interest in taxidermy and a difficult relationship with his mother.', 'psycho.mp4', 'June 16 1960'),
(9, 'sound_of_music.jpg', 'Sound of Music', '1965', '2h 55m', 'A tuneful, heartwarming story, it is based on the real life story of the Von Trapp Family singers, one of the world\'s best-known concert groups in the era immediately preceding World War II. Julie Andrews plays the role of Maria, the tomboyish postulant at an Austrian abbey who becomes a governess in the home of a widowed naval captain with seven children, and brings a new love of life and music into the home.', 'sound_of_music.mp4', 'March 2 1965'),
(10, 'godfather.jpg', 'The Godfather', '1972', '2h 58m', 'Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo\'s novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone. When the don\'s youngest son, Michael, reluctantly joins the Mafia, he becomes involved in the inevitable cycle of violence and betrayal. Although Michael tries to maintain a normal relationship with his wife, Kay, he is drawn deeper into the family business.', 'godfather.mp4', 'March 14 1972'),
(11, 'grease.jpg', 'Grease', '1978', '1h 51m', 'Experience the friendships, romances and adventures of a group of high school kids in the 1950s. Welcome to the singing and dancing world of \"Grease,\" the most successful movie musical of all time. A wholesome exchange student and a leather-clad Danny have a summer romance, but will it cross clique lines?', 'grease.mp4', 'June 16 1978'),
(12, 'jaws.jpg', 'Jaws', '1975', '2h 10m', 'When a young woman is killed by a shark while skinny-dipping near the New England tourist town of Amity Island, police chief Martin Brody wants to close the beaches, but mayor Larry Vaughn overrules him, fearing that the loss of tourist revenue will cripple the town. Ichthyologist Matt Hooper and grizzled ship captain Quint offer to help Brody capture the killer beast, and the trio engage in an epic battle of man vs. nature.', 'jaws.mp4', 'June 1 1975'),
(13, 'monty_python_holy_grail.jpg', 'Monty Python & The Holy Grail', '1975', '1h 32m', 'A comedic send-up of the grim circumstances of the Middle Ages as told through the story of King Arthur and framed by a modern-day murder investigation. When the mythical king of the Britons leads his knights on a quest for the Holy Grail, they face a wide array of horrors, including a persistent Black Knight, a three-headed giant, a cadre of shrubbery-challenged knights, the perilous Castle Anthrax, a killer rabbit, a house of virgins, and a handful of rude Frenchmen.', 'monty_python_holy_grail.mp4', 'May 10 1975'),
(14, 'star_wars_new_hope.jpg', 'Star Wars', '1977', '2h 5m', 'The Imperial Forces -- under orders from cruel Darth Vader -- hold Princess Leia hostage, in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker and Han Solo, captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 and C-3PO to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and justice to the Galaxy.', 'star_wars_new_hope.mp4', 'May 25 1977'),
(15, 'et.jpg', 'E.T. the Extra-Terrestrial', '1982', '2h 1m', 'After a gentle alien becomes stranded on Earth, the being is discovered and befriended by a young boy named Elliott. Bringing the extraterrestrial into his suburban California house, Elliott introduces E.T., as the alien is dubbed, to his brother and his little sister, Gertie, and the children decide to keep its existence a secret. Soon, however, E.T. falls ill, resulting in government intervention and a dire situation for both Elliott and the alien.', 'et.mp4', 'May 26 1982'),
(16, 'ferris_bueller.jpg', 'Ferris Bueller\'s Day Off', '1986', '1h 43m', 'Ferris Bueller has an uncanny skill at cutting classes and getting away with it. Intending to make one last duck-out before graduation, Ferris calls in sick, \"borrows\" a Ferrari, and embarks on a one-day journey through the streets of Chicago. On Ferris\' trail is high school principal Rooney, determined to catch him in the act.', 'ferris_bueller.mp4', 'June 11 1986'),
(17, 'ghostbusters.jpg', 'Ghostbusters', '1984', '1h 47m', 'After the members of a team of scientists lose their cushy positions at a university in New York City, they decide to become \"ghostbusters\" to wage a high-tech battle with the supernatural for money. They stumble upon a gateway to another dimension, a doorway that will release evil upon the city. The Ghostbusters must now save New York from complete destruction.', 'ghostbusters.mp4', 'June 7 1984'),
(18, 'goonies.jpg', 'The Goonies', '1985', '1h 55m', 'Old-fashioned yarn about a band of adventurous kids who take on the might of a property developing company which plans to destroy their home to build a country club. When the children discover an old pirate map in the attic, they follow it into an underground cavern in search of lost treasure but come up against plenty of dangerous obstacles along the way.', 'goonies.mp4', 'June 7 1985'),
(19, 'princess_bride.jpg', 'The Princess Bride', '1987', '1h 38m', 'A fairy tale adventure about a beautiful young woman and her one true love. He must find her after a long separation and save her. They must battle the evils of the mythical kingdom of Florin to be reunited with each other. Based on the William Goldman novel \"The Princess Bride\" which earned its own loyal audience.', 'princess_bride.mp4', 'September 18 1987'),
(20, 'forrest_gump.jpg', 'Forrest Gump', '1994', '2h 22m', 'Slow-witted Forrest Gump has never thought of himself as disadvantaged, and thanks to his supportive mother, he leads anything but a restricted life. Whether dominating on the gridiron as a college football star, fighting in Vietnam or captaining a shrimp boat, Forrest inspires people with his childlike optimism. But one person Forrest cares about most may be the most difficult to save -- his childhood love, the sweet but troubled Jenny.', 'forrest_gump.jpg', 'June 23 1994'),
(21, 'jurassic_park.jpg', 'Jurassic Park', '1993', '2h 7m', 'In Steven Spielberg\'s massive blockbuster, paleontologists Alan Grant and Ellie Sattler and mathematician Ian Malcolm are among a select group chosen to tour an island theme park populated by dinosaurs created from prehistoric DNA. While the park\'s mastermind, billionaire John Hammond, assures everyone that the facility is safe, they find out otherwise when various ferocious predators break free and go on the hunt.', 'jurassic_park.jpg', 'June 9 1993'),
(22, 'matrix.jpg', 'The Matrix', '1999', '2h 30m', 'Neo believes that Morpheus, an elusive figure considered to be the most dangerous man alive, can answer his question -- What is the Matrix? Neo is contacted by Trinity, a beautiful stranger who leads him into an underworld where he meets Morpheus. They fight a brutal battle for their lives against a cadre of viciously intelligent secret agents. It is a truth that could cost Neo something more precious than his life.', 'matrix.jpg', 'March 24 1999'),
(23, 'pulp_fiction.jpg', 'Pulp Fiction', '1994', '2h 58m', 'Vincent Vega and Jules Winnfield are hitmen with a penchant for philosophical discussions. In this ultra-hip, multi-strand crime movie, their storyline is interwoven with those of their boss, gangster Marsellus Wallace; his actress wife, Mia; struggling boxer Butch Coolidge; master fixer Winston Wolfe and a nervous pair of armed robbers, \"Pumpkin\" and \"Honey Bunny\".', 'pulp_fiction.jpg', 'October 14 1994');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

DROP TABLE IF EXISTS `tbl_music`;
CREATE TABLE IF NOT EXISTS `tbl_music` (
  `music_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `music_cover` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT 'cover_default.jpg',
  `music_title` varchar(125) CHARACTER SET utf8 NOT NULL,
  `music_year` varchar(5) CHARACTER SET utf8 NOT NULL,
  `music_duration` varchar(25) CHARACTER SET utf8 NOT NULL,
  `music_file` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT 'file_default.mp3',
  `music_artist` varchar(125) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `music_id` (`music_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_cover`, `music_title`, `music_year`, `music_duration`, `music_file`, `music_artist`) VALUES
(1, 'dont_be_cruel.jpg', 'Don\'t Be Cruel', '1956', '2:17', 'dont_be_cruel.mp3', 'Elvis Presley'),
(2, 'i_walk_the_line.jpg', 'I Walk the Line', '1956', '2:44', 'i_walk_the_line.mp3', 'Johnny Cash'),
(3, 'only_you.jpg', 'Only You (And You Alone)', '1954', '2:45', 'only_you.mp3', 'The Platters'),
(4, 'thats_amore.jpg', 'That\'s Amore', '1953', '3:36', 'thats_amore.mp3', 'Dean Martin'),
(5, 'yakety_yak.jpg', 'Yakety Yak', '1958', '3:14', 'yakety_yak.mp3', 'The Coasters'),
(6, 'hey_jude.jpg', 'Hey Jude', '1968', '7:06', 'hey_jude.mp3', 'The Beatles'),
(7, 'long_long_time.jpg', 'It\'s Been a Long, Long Time', '1963', '3:26', 'long_long_time.mp3', 'Harry James & His Orchestra'),
(8, 'my_way.jpg', 'My Way', '1969', '4:37', 'my_way.mp3', 'Frank Sinatra'),
(9, 'nowhere_man.jpg', 'Nowhere Man', '1965', '2:43', 'nowhere_man.mp3', 'The Beatles'),
(10, 'wouldnt_it_be_nice.jpg', 'Wouldn\'t It Be Nice', '1966', '2:33', 'wouldnt_it_be_nice.mp3', 'The Beach Boys'),
(11, 'bright_white.jpg', 'The Boys In The Bright White Sportscar', '1976', '3:07', 'bright_white.mp3', 'Trooper'),
(12, 'country_roads.jpg', 'Take Me Home, Country Roads', '1971', '3:20', 'country_roads.mp3', 'John Denver'),
(13, 'dont_stop_me.jpg', 'Don\'t Stop Me Now', '1978', '3:32', 'dont_stop_me.mp3', 'Queen'),
(14, 'dream_on.jpg', 'Dream On', '1973', '4:29', 'dream_on.mp3', 'Aerosmith'),
(15, 'never_never.jpg', 'Never Never Gonna Give Ya Up', '1973', '4:02', 'never_never.mp3', 'Barry White'),
(16, 'old_man.jpg', 'Old Man', '1974', '3:57', 'old_man.mp3', 'CSNY'),
(17, 'could_you_be_loved.jpg', 'Could You Be Loved', '1980', '3:56', 'could_you_be_loved.mp3', 'Bob Marley and the Wailers'),
(18, 'dont_shed_a_tear.jpg', 'Don\'t Shed a Tear', '1987', '3:42', 'dont_shed_a_tear.mp3', 'Paul Carrack'),
(19, 'lets_dance.jpg', 'Let\'s Dance', '1983', '4:07', 'lets_dance.mp3', 'David Bowie'),
(20, 'modern_love.jpg', 'Modern Love', '1983', '4:00', 'modern_love.mp3', 'David Bowie'),
(21, 'time_of_my_life.jpg', '(I\'ve Had) The Time of My Life', '1987', '4:43', 'time_of_my_life.mp3', 'Bill Medley'),
(22, 'true.jpg', 'True', '1983', '5:17', 'true.mp3', 'Spandau Ballet'),
(23, 'when_we_was_fab.jpg', 'When We Was Fab', '1987', '3:57', 'when_we_was_fab.mp3', 'George Harrison'),
(24, 'gravel_pit.jpg', 'Gravel Pit', '1999', '5:58', 'gravel_pit.mp3', 'Wu-Tang Clan'),
(25, 'its_gonna_be_me.jpg', 'It\'s Gonna Be Me', '1999', '3:13', 'its_gonna_be_me.mp3', 'NSYNC'),
(26, 'livin_la_vida_loca.jpg', 'Livin\' la Vida Loca', '1999', '4:07', 'livin_la_vida_loca.mp3', 'Ricky Martin'),
(27, 'out_of_my_head.jpg', 'Out of My Head', '1998', '2:35', 'out_of_my_head.mp3', 'Fastball'),
(28, 'people_are_strange.jpg', 'People Are Strange', '1967', '2:13', 'people_are_strange.mp3', 'The Doors'),
(29, 'walking_in_memphis.jpg', 'Walking in Memphis', '1991', '4:12', 'walking_in_memphis.mp3', 'Marc Cohn'),
(30, 'whats_up.jpg', 'What\'s Up', '1992', '4:55', 'whats_up.mp3', '4 Non Blondes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

DROP TABLE IF EXISTS `tbl_tv`;
CREATE TABLE IF NOT EXISTS `tbl_tv` (
  `tv_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tv_cover` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT 'cover_default',
  `tv_title` varchar(125) CHARACTER SET utf8 NOT NULL,
  `tv_year` varchar(5) CHARACTER SET utf8 NOT NULL,
  `tv_runtime` varchar(25) CHARACTER SET utf8 NOT NULL COMMENT 'Average runtime',
  `tv_storyline` text CHARACTER SET utf8 NOT NULL,
  `tv_trailer` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT 'trailer_default',
  `tv_release` varchar(125) CHARACTER SET utf8 NOT NULL COMMENT 'First episode',
  UNIQUE KEY `tv_id` (`tv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_cover`, `tv_title`, `tv_year`, `tv_runtime`, `tv_storyline`, `tv_trailer`, `tv_release`) VALUES
(1, 'honeymooners.jpg', 'The Honeymooners', '1955', '26m', 'Ralph Kramden is a New York bus driver who dreams of a better life. With his eccentric good friend, Ed Norton the sewer worker, he constantly tries crackpot schemes to strike it rich. All the while, his exasperated wife, Alice, is always there to bring him down to earth or to pick him up if he beats her to it.', 'honeymooners.mp4', 'October 1 1955'),
(2, 'i_love_lucy.jpg', 'I Love Lucy', '1951', '30m', 'A daffy woman constantly strives to become a star along with her bandleader husband and gets herself in the strangest situations. Cuban Bandleader Ricky Ricardo would be happy if his wife Lucy would just be a housewife.', 'i_love_lucy.mp4', 'October 15 1951'),
(3, 'mickey_mous_club.jpg', 'The Mickey Mouse Club', '1955', '30m', 'Mickey Mouse is the host of this variety show with a club attended by a variety of kids being the Mouseketeers. The usual content includes in-studio comedy and musical acts by those kids, classic as well as original cartoons and dramatic serials like \"Spin and Marty\" and \"The Hardy Boys.\"', 'mickey_mous_club.mp4', 'October 3 1955'),
(4, 'twilight_zone.jpg', 'The Twilight Zone', '1959', '25m', 'As an anthology series, each episode presented its own separate story, often a morality play, involving people who face unusual or extraordinary circumstances, therefore entering the \"Twilight Zone\".', 'twilight_zone.mp4', 'October 2 1959'),
(5, 'brady_bunch.jpg', 'The Brady Bunch', '1969', '25m', '\"The Brady Bunch\" is a classic situation comedy that has become a cornerstone of popular culture. Mike Brady, a widowed architect with three boys (ranging in age from 7 to 13) marries Carol Martin, a single young mother with three young girls (ages 6 through 12); the reason for her being single was never explained.', 'brady_bunch.mp4', 'September 26 1969'),
(6, 'dick_van_dyke.jpg', 'The Dick Van Dyke Show', '1961', '23m', 'The two main settings show the work and home life of Rob Petrie, the head writer of a comedy/variety show produced in Manhattan. Other scenes focus on the home life of Rob, his wife Laura, and son Ritchie, who live in suburban New Rochelle, New York.', 'dick_van_dyke.mp4', 'October 3 1961'),
(7, 'flintstones.jpg', 'The Flintstones', '1960', '30m', 'The series takes place in a romanticized Stone Age setting and follows the activities of the titular family, the Flintstones, and their next-door neighbors, the Rubbles (who are also their best friends).', 'flintstones.mp4', 'September 30 1960'),
(8, 'gilligans_island.jpg', 'Gilligan\'s Island', '1964', '26m', 'The two-man crew of the charter boat SS Minnow and five passengers on a \"three-hour tour\" from Honolulu run into a tropical storm and are shipwrecked on an uncharted island somewhere in the Pacific Ocean. Their efforts to be rescued are typically thwarted by the inadvertent conduct of the first mate, Gilligan.', 'gilligans_island.mp4', 'September 26 1964'),
(9, 'jetsons.jpg', 'The Jetsons', '1962', '25m', 'George Jetson lives with his family in the Skypad Apartments: his wife Jane is a homemaker, their teenage daughter Judy attends Orbit High School, and their son Elroy attends Little Dipper School.', 'jetsons.mp4', 'September 23 1962'),
(10, 'star_trek.jpg', 'Star Trek: The Original Series', '1966', '50m', 'Kirk\'s five-year mission—and his mandate from Starfleet—is to seek out new life and new civilizations, and to boldly go where no man has gone before.', 'star_trek.mp4', 'September 8 1966'),
(11, 'happy_days.jpg', 'Happy Days', '1974', '30m', 'The Cunningham family live through the 1950s with help and guidance from the lovable and almost superhuman greaser, Fonzie. Richie Cunningham and his friend Potsie face life at Jefferson High in Milwaukee Wisconsin in the 1950s.', 'happy_days.mp4', 'January 15 1974'),
(12, 'mork_and_mindy.jpg', 'Mork and Mindy', '1978', '23m', 'Mork (Robin Williams) is a bumbling alien from the planet Ork sent to Earth in an egg, to study its inhabitants. He will report to his unseen superior, Orson (Ralph James), until reassigned. On Earth, he meets Mindy McConnell (Pam Dawber), an average woman who takes him in and shelters him.', 'mork_and_mindy.mp4', 'September 14 1978'),
(13, 'muppet_show.jpg', 'The Muppet Show', '1976', '30m', 'The Muppet Show is a half-hour variety show in which Kermit the Frog and the Muppets put on a weekly musical/comedy revue at The Muppet Theatre. Unfortunately for them, things never quite go according to plan, for the Muppets or their weekly guest stars.', 'muppet_show.mp4', 'September 5 1976'),
(14, 'wkrp.jpg', 'WKRP in Cincinnati', '1978', '25m', 'A hip, young program director pumps new life into a failing AM radio station, WKRP of Cincinatti, by changing format from Big Band to Hard Rock/Punk and bringing in two hot disc jockeys, over the protest of the owner... and some of the employees.', 'wkrp.mp4', 'September 18 1978'),
(15, 'cheers.jpg', 'Cheers', '1982', '30m', '\"Cheers\" is a bar in Boston owned by Sam Malone, a former Boston Red Sox pitcher, whose drinking problem ended his career. Sam is attracted to her and makes his move, but Diane is turned off by his smug attitude.', 'cheers.mp4', 'September 30 1982'),
(16, 'cosby_show.jpg', 'The Cosby Show', '1984', '24m', '\"The Cosby Show\" centers on the lives of the Huxtables: obstetrician Cliff and his lawyer wife Claire, their daughters Sondra, Denise, Vanessa and Rudy, and son Theo. Based on the standup comedy of Bill Cosby, the show focused on his observations of family life.', 'cosby_show.mp4', 'September 20 1984'),
(17, 'dukes_of_hazzard.jpg', 'The Dukes of Hazzard', '1979', '47m', 'Bo and Luke Duke were handsome and honest hotshots and cousins living with their Uncle Jesse and sexy short-shorts-wearin\' cousin Daisy on a farm in Hazzard County located somewhere in the Southern United States.', 'dukes_of_hazzard.mp4', 'January 26 1979'),
(18, 'magnum_pi.jpg', 'Magnum P.I.', '1980', '48m', 'The adventures of a Hawaii based private investigator. Thomas Sullivan Magnum IV (Tom Selleck) is an ex-Navy \"NIA\" (ONI) Lieutenant, and Vietnam Special Ops veteran who resigned his commission at age thirty-three because he never got to be twenty-three.', 'magnum_pi.mp4', 'December 11 1980'),
(19, 'married_with_children.jpg', 'Married... with Children', '1987', '23m', 'Al Bundy is a misanthropic women\'s shoe salesman with a miserable life. He hates his job, his wife is lazy, his son is dysfunctional (especially with women), and his daughter is dim-witted and promiscuous. Al Bundy is an unsuccessful middle aged shoe salesman with a miserable life and an equally dysfunctional family.', 'married_with_children.mp4', 'April 5 1987'),
(20, 'friends.jpg', 'Friends', '1994', '22m', 'A show about six friends in New York as they navigate their way through life and learn to grow up as they approach the third decade of their life. All, with the help from each other to get them through the obstacles that life naturally has for us.', 'friends.mp4', 'September 22 1994'),
(21, 'looney_tunes.jpg', 'Looney Tunes', '1980', '7m', 'The series revolves around roommates Bugs Bunny and Daffy Duck living in a suburb of Los Angeles with \"colorful neighbors\" and other characters including Lola Bunny, Tina Russo, Porky Pig, Foghorn Leghorn, Elmer Fudd, Sylvester, Tweety, Granny, Gossamer, Yosemite Sam, Speedy Gonzales, Marvin the Martian, and more.', 'looney_tunes.mp4', 'November 20 1980'),
(22, 'seinfeld.jpg', 'Seinfeld', '1989', '22m', 'The premise of this sitcom is Jerry and his friends going through everyday life, discussing various quirky situations, to which we can all relate (especially if we live in New York City). The eccentric personalities of the offbeat characters who make up Jerry\'s social circle contribute to the fun.', 'seinfeld.mp4', 'July 5 1989'),
(23, 'that_70s_show.jpg', 'That \'70s Show', '1998', '22m', 'A comedy revolving around a group of teenage friends, their mishaps, and their coming of age, set in 1970s Wisconsin. Eric Forman is a typical high school student growing up in Wisconsin in 1976 with his family and his friends.', 'that_70s_show.mp4', 'August 23 1998');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_avatar` varchar(20) NOT NULL,
  `user_permissions` int(11) NOT NULL,
  `user_admin` int(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_avatar`, `user_permissions`, `user_admin`) VALUES
(3, 'Trevor', 'user1', 'password', 'me@you.com', '2020-03-09 15:48:21', '::1', 'olaf', 5, 1),
(4, 'Kate', 'user2', 'password', 'me@ou.com', '2020-03-09 15:49:04', '::1', 'null', 5, 1),
(5, 'Madelaine', 'user3', 'password', 'me@you.com', '2020-03-09 15:49:39', 'no', 'null', 3, 0),
(6, 'Isabelle', 'user4', 'password', 'me@you.com', '2020-03-09 15:50:13', 'no', 'null', 2, 0),
(7, 'Serena', 'user5', 'password', 'me@you.com', '2020-03-09 15:50:48', 'no', 'null', 2, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
