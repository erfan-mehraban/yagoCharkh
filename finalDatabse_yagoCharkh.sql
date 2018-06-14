-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2018 at 08:32 PM
-- Server version: 5.7.22-0ubuntu0.17.10.1
-- PHP Version: 7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yagoCharkh`
--

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(11) NOT NULL,
  `tag` varchar(256) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL,
  `year` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `tag`, `fa_label`, `labeledOrTranslated`, `year`, `type`) VALUES
(1, 'fa/اصلاح قانون انتخابات ایران', 'اصل پنجم انقلاب سفيد', 'labeled', 0, 9),
(2, 'fa/انتخابات ریاست جمهوری ایران (۱۳۶۰)', 'انتخابات ریاست جمهوری ایران (۱۳۶۰)', 'labeled', 1982, 1),
(3, 'fa/دوره نخست مجلس شورای اسلامی', 'نخستین دوره انتخابات ایران پس از انقلاب', 'labeled', 0, 2),
(4, 'fa/دومین مجلس شورای ملی', 'دومین مجلس شورای ملی', 'labeled', 0, 2),
(5, 'fa/سومین مجلس شورای ملی', 'سومین مجلس شورای ملی', 'labeled', 0, 2),
(6, 'Iranian Assembly of Experts election, 2006', 'انتخابات مجلس خبرگان رهبری', 'labeled', 2006, 3),
(7, 'Iranian Constitutional Convention election, 1979', 'انتخابات مجلس موسسان ايران (۱۳۵۸)', 'labeled', 1979, 4),
(8, 'Iranian constitutional referendum, 1963', 'همه پرسي قانون اساسي ايران (1341)', 'labeled', 1963, 5),
(9, 'Iranian constitutional referendum, 1989', 'بازنگری قانون اساسی جمهوری اسلامی ایران', 'labeled', 1989, 5),
(10, 'Iranian constitutional referendum, December 1979', 'همه پرسی قانون اساسی ایران (1358)', 'labeled', 1979, 5),
(11, 'Iranian Islamic Republic referendum, March 1979', 'رفراندوم جمهوري اسلامي', 'labeled', 1979, 6),
(12, 'Iranian legislative election, 1980', 'انتخابات مجلس شوراي ملي (۱۳۵۸)', 'labeled', 1980, 2),
(13, 'Iranian legislative election, 1984', 'مجلس دوم (جمهوری اسلامی)', 'labeled', 1984, 2),
(14, 'Iranian legislative election, 1988', 'مجلس شوراي اسلامي سوم', 'labeled', 1988, 2),
(15, 'Iranian legislative election, 1992', 'دورهٔ چهارم مجلس شوراي اسلامي', 'labeled', 1992, 2),
(16, 'Iranian legislative election, 2000', 'انتخابات ششمین دوره مجلس شورای اسلامی', 'labeled', 2000, 2),
(17, 'Iranian legislative election, 2004', 'انتخابات مجلس شوراي اسلامي (۱۳۸۲-۱۳۸۳)', 'labeled', 2004, 2),
(18, 'Iranian legislative election, 2008', 'انتخابات هشتم مجلس شوراي اسلامي', 'labeled', 2008, 2),
(19, 'Iranian legislative election, 2012', 'انتخابات مجلس شوراي اسلامي (1390-1391)', 'labeled', 2012, 2),
(20, 'Iranian local elections, 2003', 'انتخابات دومین دوره شوراهای شهر و روستا', 'labeled', 2003, 7),
(21, 'Iranian local elections, 2006', 'انتخابات سومین دوره شوراهای اسلامی شهر و روستا', 'labeled', 2006, 7),
(22, 'Iranian local elections, 2013', 'انتخابات شوراهاي اسلامي شهر و روستا (1392)', 'labeled', 2013, 7),
(23, 'Iranian parliamentary dissolution referendum, 1953', 'همه پرسی انحلال مجلس شورای ملی (۱۳۳۲)', 'labeled', 1953, 8),
(25, 'Iranian presidential election, 1980', 'نخستين انتخابات رياست جمهوري ايران', 'labeled', 1980, 1),
(26, 'Iranian presidential election, 1985', 'انتخابات ریاست‌جمهوری ایران', 'labeled', 1985, 1),
(27, 'Iranian presidential election, 1989', 'انتخابات ریاست‌جمهوری ایران (1368)', 'labeled', 1989, 1),
(28, 'Iranian presidential election, 1993', 'انتخابات ریاست جمهوری ایران (۱۳۷۲)', 'labeled', 1993, 1),
(29, 'Iranian presidential election, 1997', 'انتخابات ریاست جمهوری سال ۱۳۷۶', 'labeled', 1997, 1),
(30, 'Iranian presidential election, 2001', 'هشتمين دوره انتخابات رياست جمهوري ايران', 'labeled', 2001, 1),
(31, 'Iranian presidential election, 2005', 'جنجال تقلب در نهمين دورهٔ انتخابات رياست جمهوري ايران', 'labeled', 2005, 1),
(32, 'Iranian presidential election, 2009', 'انتخابات ریاست‌جمهوری ایران (1388)', 'labeled', 2009, 1),
(33, 'Iranian presidential election, 2013', 'انتخابات یازدهمین دوره ریاست جمهوری', 'labeled', 2013, 1),
(34, 'Iranian presidential election debates, 2013', 'مناظره های انتخابات ایران در سال 1392', 'labeled', 2013, 1),
(35, 'Iranian presidential election, July 1981', 'انتخابات ریاست جمهوری ایران (مرداد ۱۳۶۰)', 'labeled', 1981, 1),
(36, 'Iranian presidential election, October 1981', 'انتخابات رياست جمهوري ايران (مهر 1360)', 'labeled', 1981, 1),
(37, 'Persian legislative election, 1906', '̩مین مجلس شورای ملی', 'labeled', 1906, 2),
(38, 'Iranian legislative election, 1947', 'انتخابات مجلس ایران، 1947', 'translated', 1947, 2),
(39, 'Iranian legislative election, 1950', 'انتخابات مجلس ایران، 1950', 'translated', 1950, 2),
(40, 'Iranian legislative election, 1952', 'انتخابات مجلس ایران، 1952', 'translated', 1952, 2),
(41, 'Iranian legislative election, 1954', 'انتخابات مجلس ایران، 1954', 'translated', 1954, 2),
(42, 'Iranian legislative election, 1956', 'انتخابات مجلس ایران، 1956', 'translated', 1956, 2),
(43, 'Iranian legislative election, 1960', 'انتخابات مجلس ایران، 1960', 'translated', 1960, 2),
(44, 'Iranian legislative election, 1961', 'انتخابات مجلس ایران، 1961', 'translated', 1961, 2),
(45, 'Iranian legislative election, 1963', 'انتخابات مجلس ایران، 1963', 'translated', 1963, 2),
(46, 'Iranian legislative election, 1967', 'انتخابات مجلس ایران، 1967', 'translated', 1967, 2),
(47, 'Iranian legislative election, 1971', 'انتخابات مجلس ایران، 1971', 'translated', 1971, 2),
(48, 'Iranian legislative election, 1975', 'انتخابات مجلس ایران، 1975', 'translated', 1975, 2),
(49, 'Iranian legislative election, 1996', 'انتخابات مجلس ایران، 1996', 'translated', 1996, 2),
(50, 'Persian legislative election, 1909', 'انتخابات پارلمانی فارسی، 1909', 'translated', 1909, 2),
(51, 'Persian legislative election, 1914', 'انتخابات پارلمانی فارسی، 1914', 'translated', 1914, 2),
(52, 'Persian legislative election, 1923', 'انتخابات پارلمانی فارسی، 1923', 'translated', 1923, 2);

-- --------------------------------------------------------

--
-- Table structure for table `election_type`
--

CREATE TABLE `election_type` (
  `id` int(11) NOT NULL,
  `tag` varchar(256) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `election_type`
--

INSERT INTO `election_type` (`id`, `tag`) VALUES
(1, 'انتخابات ریاست جمهوری ایران'),
(2, 'انتخابات مجلس شوراي اسلامي'),
(3, 'انتخابات مجلس خبرگان رهبری'),
(4, 'انتخابات مجلس موسسان ايران'),
(5, 'همه پرسي قانون اساسي ايران'),
(6, 'رفراندوم جمهوري اسلامي'),
(7, 'انتخابات شوراهای شهر و روستا'),
(8, 'همه پرسی انحلال مجلس شورای ملی'),
(9, 'اصلاح قانون');

-- --------------------------------------------------------

--
-- Table structure for table `good_gene`
--

CREATE TABLE `good_gene` (
  `politician_type` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8_bin NOT NULL,
  `type` varchar(16) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `good_gene`
--

INSERT INTO `good_gene` (`politician_type`, `name`, `type`) VALUES
(13, 'Iran Teymourtash', 'child'),
(34, 'Ali Jannati', 'child'),
(36, 'Hassan Khomeini', 'child'),
(43, 'Ahmad Qavam', 'child'),
(50, 'Effat Marashi', 'spouse'),
(50, 'Faezeh Hashemi', 'child'),
(68, 'Ali Jannati', 'child'),
(69, 'Hashemi Rafsanjani', 'child'),
(72, 'Abd Rabbuh Mansur Hadi', 'child'),
(107, 'Shahnaz Pahlavi', 'spouse'),
(116, 'Shahriar Shafiq', 'child'),
(117, 'Jamileh Kadivar', 'spouse'),
(131, 'Parvaneh Eskandari Forouhar', 'spouse'),
(155, 'Faezeh Hashemi', 'child'),
(156, 'Farah Pahlavi', 'spouse'),
(156, 'Reza Pahlavi', 'child'),
(160, 'Fatemeh Karroubi', 'spouse'),
(162, 'Fazlollah Zahedi', 'child'),
(259, 'Mozaffar Firouz', 'child'),
(294, 'Effat Marashi', 'spouse'),
(294, 'Hashemi Rafsanjani', 'child'),
(300, 'Hassan Khomeini', 'child'),
(331, 'Jamileh Kadivar', 'spouse'),
(347, 'Khadijeh Saqafi', 'spouse'),
(353, 'Mahmoud Ahmadinejad', 'child'),
(353, 'nl/Azam-Sadat Farahi', 'spouse'),
(360, 'Mustafa ibn Mahmud', 'child'),
(366, 'Azar Majedi', 'spouse'),
(370, 'Massoud Rajavi', 'spouse'),
(377, 'Massoud Rajavi', 'spouse'),
(378, 'Abdolali Bazargan', 'child'),
(380, 'Mehdi Hashemi Rafsanjani', 'child'),
(381, 'Fatemeh Karroubi', 'spouse'),
(384, 'Zahra Rahnavard', 'spouse'),
(392, 'Mohammad Ali Foroughi', 'child'),
(395, 'Mohammad-Javad Bahonar', 'child'),
(397, 'Mohammad Bagher Ghalibaf', 'child'),
(400, 'Mohammad Beheshti', 'child'),
(404, 'Mohammad Khan Qajar', 'child'),
(406, 'Mohammad-Javad Bahonar', 'child'),
(412, 'Mohammad Khan Qajar', 'child'),
(413, 'Mohammad Khatami', 'child'),
(413, 'Zahra Eshraghi', 'spouse'),
(420, 'Fazlollah Zahedi', 'child'),
(428, 'Zahra Eshraghi', 'spouse'),
(432, 'Ali Reza Pahlavi I', 'child'),
(432, 'Mohammad Reza Pahlavi', 'spouse'),
(450, 'Mohsen Hashemi', 'child'),
(461, 'Mojtaba Khamenei', 'child'),
(480, 'Naser al-Din Shah Qajar', 'child'),
(481, 'Nasr al-Din (Yunnan)', 'child'),
(488, 'Ahmad ibn Nizam al-Mulk', 'child'),
(490, 'Parvaneh Eskandari Forouhar', 'spouse'),
(504, 'Ali Reza Pahlavi I', 'child'),
(504, 'Yasmine Pahlavi', 'spouse'),
(505, 'Rezā Shāh', 'child'),
(505, 'Tadj ol-Molouk', 'spouse'),
(511, 'Farideh Mostafavi', 'child'),
(511, 'Khadijeh Saqafi', 'spouse'),
(526, 'Nasr al-Din (Yunnan)', 'child'),
(528, 'Shahriar Shafiq', 'child'),
(583, 'Fereydoun Djam', 'spouse'),
(644, 'Mohammad Beheshti', 'child');

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` int(11) NOT NULL,
  `operation_tag` varchar(256) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id`, `operation_tag`, `fa_label`, `labeledOrTranslated`) VALUES
(1, 'Attack on H3', 'عملیات اچ-۳', 'labeled'),
(2, 'Battle of Dezful', 'عملیات دزفول', 'labeled'),
(3, 'fa/عملیات کربلای ۲', 'عمليات كربلاي ۲', 'labeled'),
(4, 'fa/عملیات کربلای ۷', 'عمليات كربلاي 7', 'labeled'),
(5, 'fa/عملیات نصر ۴', 'عملیات نصر ۴', 'labeled'),
(6, 'fa/عملیات نصر ۷', 'عملیات نصر 7', 'labeled'),
(7, 'fa/عملیات نصر ۸', 'عمليات نصر 8', 'labeled'),
(8, 'fa/عملیات والفجر ۹', 'عمليات والفجر 9', 'labeled'),
(9, 'First Battle of al Faw', 'عمليات والفجر ۸', 'labeled'),
(10, 'Liberation of Khorramshahr', 'آزادسازي خرمشهر', 'labeled'),
(11, 'Operation Badr (1985)', 'عمليات بدر', 'labeled'),
(12, 'Operation Beit ol Moqaddas', 'عملیات الی بیت المقدس', 'labeled'),
(13, 'Operation Dawn (1983)', 'عمليات والفجر ۱', 'labeled'),
(14, 'Operation Dawn 2', 'عملیات والفجر ۲', 'labeled'),
(15, 'Operation Dawn 3', 'عمليات والفجر ۱', 'labeled'),
(16, 'Operation Dawn 4', 'عمليات والفجر ۴', 'labeled'),
(17, 'Operation Dawn 8', 'عمليات والفجر ۱', 'labeled'),
(18, 'Operation Eager Glacier', 'عمليات يخچال شكننده', 'labeled'),
(19, 'Operation Earnest Will', 'عمليات اراده جدي', 'labeled'),
(20, 'Operation Kaman 99', 'عمليات كمان ۹۹', 'labeled'),
(21, 'Operation Karbala 4', 'عملیات کربلای 4', 'labeled'),
(22, 'Operation Karbala 5', 'عملیات کربلای پنج', 'labeled'),
(23, 'Operation Karbala 6', 'عملیات کربلای 6', 'labeled'),
(24, 'Operation Kheibar', 'عملیات خیبر', 'labeled'),
(25, 'Operation Mersad', 'عملیات فروغ جاویدان', 'labeled'),
(26, 'Operation Morvarid', 'عمليات مرواريد', 'labeled'),
(27, 'Operation Nimble Archer', 'عملیات کمانگیر چابک', 'labeled'),
(28, 'Operation Praying Mantis', 'عملیات آخوندک', 'labeled'),
(29, 'Operation Prime Chance', 'عملیات فرصت برجسته', 'labeled'),
(30, 'Operation Ramadan', 'عمليات رمضان', 'labeled'),
(31, 'Operation Samen ol A\'emeh', 'عمليات ثامن الأئمه', 'labeled'),
(32, 'Operation Scorch Sword', 'عمليات اوسيراك', 'labeled'),
(33, 'Operation Sultan 10', 'عملیات سلطان 10', 'labeled'),
(34, 'Operation Tariq al Qods', 'عمليات طريق القدس', 'labeled'),
(35, 'Operation Undeniable Victory', 'عمليات فتح المبين', 'labeled'),
(36, 'Siege of Abadan', 'حصر آبادان', 'labeled'),
(37, 'Al Faw peninsula landings', 'فرود آمدن Al Faw', 'translated'),
(38, 'Battle of Khorramshahr', 'نبرد خرمشهر', 'translated'),
(39, 'Battle of Mehran', 'نبرد مهران', 'translated'),
(40, 'Battle of the Marshes', 'نبرد خلیج', 'translated'),
(41, 'de/Panzerschlacht von Susangerd', 'نبرد تانک سوسنگرد', 'translated'),
(42, 'H3 airstrike', 'H3 حملات هوایی', 'translated'),
(43, 'Operation Before the Dawn', 'عملیات قبل از سپیده دم', 'translated'),
(44, 'Operation Dawn 5', 'عملیات سحر 5', 'translated'),
(45, 'Operation Dawn 6', 'عملیات سحر 6', 'translated'),
(46, 'Operation Forty Stars', 'عملیات چهل ستاره', 'translated'),
(47, 'Operation Jerusalem', 'عملیات اورشلیم', 'translated'),
(48, 'Operation Jerusalem Way', 'عملیات بیت المقدس', 'translated'),
(49, 'Operation Karbala 10', 'عملیات کربلا 10', 'translated'),
(50, 'Operation Nasr 4', 'عملیات نصر 4', 'translated'),
(51, 'Operation Zafar 7', 'عملیات زفار 7', 'translated'),
(52, 'Second Battle of al Faw', 'نبرد دوم فاو', 'translated'),
(53, 'Tawakalna ala Allah Operations', 'عملیات تقوا الله الله', 'translated'),
(54, 'USS Stark incident', 'USS حادثه استارک', 'translated');

-- --------------------------------------------------------

--
-- Table structure for table `organs`
--

CREATE TABLE `organs` (
  `id` int(11) NOT NULL,
  `organ_tag` varchar(256) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `organs`
--

INSERT INTO `organs` (`id`, `organ_tag`, `fa_label`, `labeledOrTranslated`) VALUES
(1, 'Ansar e Hezbollah', '\"انصار حزب الله\"', 'labeled'),
(2, 'Army of the Guardians of the Islamic Revolution', '\"درجهٔ هاي سپاهٔ پاسداران\"', 'labeled'),
(3, 'Defenders of Human Rights Center', '\"كانون مدافعان حقوق بشر\"', 'labeled'),
(4, 'Fada\'iyan e Islam', '\"فدائيان اسلام\"', 'labeled'),
(5, 'Hojjatieh', '\"انجمن حجتيه\"', 'labeled'),
(6, 'Khabat', '\"سازمان خبات كردستان ايران\"', 'labeled'),
(7, 'Komalah', '\"کوموله\"', 'labeled'),
(8, 'Mojahedin of the Islamic Revolution Organization', '\"سازمان مجاهدين انقلاب اسلامي ايران\"', 'labeled'),
(9, 'National Front (Iran)', '\"جبهه دمكراتيك ملي ايران\"', 'labeled'),
(10, 'Tudeh Party of Iran', '\"دبیراول حزب توده ایران\"', 'labeled'),
(11, 'Committee for the Defense of Prisoners\' Rights', '\"کمیته دفاع از حقوق زندانیان\"', 'translated'),
(12, 'Congress of Nationalities for a Federal Iran', '\"کنگره ملیت ها برای ایران فدرال\"', 'translated');

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` int(11) NOT NULL,
  `party_tag` varchar(256) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `party_tag`, `fa_label`, `labeledOrTranslated`) VALUES
(1, 'Alliance of Builders of Islamic Iran', 'ائتلاف ابادگران ايران اسلامي', 'labeled'),
(2, 'Association of Combatant Clerics', 'روحانیون مبارز', 'labeled'),
(3, 'Combatant Clergy Association', 'روحانیت مبارز', 'labeled'),
(4, 'Communist Party of Iran', 'حزب كمونيست ايران (ماركسيست-لنينيست-مائوئيست)', 'labeled'),
(5, 'Communist Party of Iran (Marxist–Leninist–Maoist)', 'حزب كمونيست ايران (ماركسيست-لنينيست-مائوئيست)', 'labeled'),
(6, 'Communist Party of Persia', 'حزب کمونیست ایران (دههٔ 1920)', 'labeled'),
(7, 'Constitutionalist Party of Iran', 'حزب مشروطهٔ ایران', 'labeled'),
(8, 'Democracy Party (Iran)', 'حزب مردم سالاری', 'labeled'),
(9, 'Democratic Party of Iranian Kurdistan', 'حزب دمکرات کردستان ایران', 'labeled'),
(10, 'E\'tedalion Party', 'حزب اعتدالیون', 'labeled'),
(11, 'Executives of Construction Party', 'كارگزاران', 'labeled'),
(12, 'Fedaian Organisation (Minority)', 'سازمان فدائيان خلق (اقليت)', 'labeled'),
(13, 'Freedom Movement of Iran', 'حزب نهضت آزادي', 'labeled'),
(14, 'Front of Islamic Revolution Stability', 'جبهه پایداری انقلاب اسلامی', 'labeled'),
(15, 'Green Party of Iran', 'حزب سبزهاي ايران', 'labeled'),
(16, 'Iranian People\'s Fedai Guerrillas', 'سازمان چریک‌های فدایی خلق', 'labeled'),
(17, 'Islamic Association of Women', 'مجمع اسلامي بانوان', 'labeled'),
(18, 'Islamic Coalition Party', 'جمعیت موتلفهٔ اسلامی', 'labeled'),
(19, 'Islamic Iran Participation Front', 'جبههٔ مشارکت ایران', 'labeled'),
(20, 'Islamic Labour Party', 'حزب اسلامي كار', 'labeled'),
(21, 'Islamic Republican Party', 'حزب جمهوری اسلامی', 'labeled'),
(22, 'Islamic Society of Engineers', 'جامعهٔ اسلامي مهندسين', 'labeled'),
(23, 'Komalah', 'کوموله', 'labeled'),
(24, 'Kurdish United Front', 'جبهه متحد کرد', 'labeled'),
(25, 'Labour Coalition (Iran)', 'خانهٔ كارگر', 'labeled'),
(26, 'Labour Party of Iran', 'حزب كار ايران (طوفان)', 'labeled'),
(27, 'Leftist guerrilla groups of Iran', 'گروه های چریکی چپ گرا در ایران', 'labeled'),
(28, 'Modern Thinkers Party of Islamic Iran', 'حزب نواندیشان ایران اسلامی', 'labeled'),
(29, 'Mojahedin of the Islamic Revolution Organization', 'سازمان مجاهدين انقلاب اسلامي ايران', 'labeled'),
(30, 'Muslim People\'s Republic Party', 'حزب خلق مسلمان', 'labeled'),
(31, 'National Democratic Front (Iran)', 'جبهه دمكراتيك ملي ايران', 'labeled'),
(32, 'National Front (Iran)', 'جبهه دمكراتيك ملي ايران', 'labeled'),
(33, 'Nationalist Religious movement', 'شوراي فعالان ملي-مذهبي ايران', 'labeled'),
(34, 'National Trust Party (Iran)', 'حزب اعتماد ملی', 'labeled'),
(35, 'Nation Party of Iran', 'حزب ملت ايران', 'labeled'),
(36, 'New Iran Party', 'سنديكاي ايران نوين', 'labeled'),
(37, 'Nikah mut‘ah', 'متعه', 'labeled'),
(38, 'Organization of Communist Revolutionaries (Marxist–Leninist)', 'سازمان انقلابیون کمونیست (م-ل)', 'labeled'),
(39, 'Organization of Iranian People\'s Fedaian (Majority)', 'سازمان فداییان خلق ایران (اکثریت)', 'labeled'),
(40, 'Organization of Iranian People\'s Fedai Guerrillas', 'سازمان چریک‌های فدایی خلق', 'labeled'),
(41, 'Pan Iranist Party', 'پان ایرانیست', 'labeled'),
(42, 'People\'s Mujahedin of Iran', 'سازمان مجاهدین خلق', 'labeled'),
(43, 'People\'s Voice (Iran)', 'جبهه صداي ملت', 'labeled'),
(44, 'Persian marriage', 'مراسم عروسی در ایران', 'labeled'),
(45, 'Peykar', 'سازمان پ̩ار در راه آزادی طبقه کارگر', 'labeled'),
(46, 'PJAK', 'پژاك', 'labeled'),
(47, 'Political parties in Iran', 'احزاب غیرقانونی ایران', 'labeled'),
(48, 'Rastakhiz Party', 'حزب رستاخیز ایران', 'labeled'),
(49, 'Revival Party', 'حزب تجدد', 'labeled'),
(50, 'Socialist Party (Iran)', 'حزب سوسياليست (ايران)', 'labeled'),
(51, 'Society of Devotees of the Islamic Revolution', 'جمعيت ايثارگران انقلاب اسلامي', 'labeled'),
(52, 'SUMKA', 'منطقهٔ سومکار', 'labeled'),
(53, 'Tudeh Party of Iran', 'دبیراول حزب توده ایران', 'labeled'),
(54, 'Union of Communist Militants', 'اتحاد مبارزان کمونیست', 'labeled'),
(55, 'Union of Iranian Communists (Sarbedaran)', 'اتحاديه كمونيستهاي ايران', 'labeled'),
(56, 'Union of People\'s Fedaian of Iran', 'سازمان اتحاد فداييان خلق ايران', 'labeled'),
(57, 'United Front of Conservatives', 'جبهه متحد اصولگرایان', 'labeled'),
(58, 'Worker communist Party of Iran', 'حزب كمونيست كارگري', 'labeled'),
(59, 'Worker communist Party of Iran – Hekmatist', 'حزب كمونيست كارگري ايران- حكمتيست', 'labeled'),
(60, 'Aryan League', 'لیگ آریایی', 'translated'),
(61, 'Baluchistan People\'s Party', 'حزب مردم بلوچستان', 'translated'),
(62, 'Coalition of Iran\'s Independent Volunteers', 'ائتلاف داوطلبان مستقل ایران', 'translated'),
(63, 'Comrades Party', 'حزب رفیق', 'translated'),
(64, 'Komeley Jiyanewey Kurd', 'کوملی جیانهی کرد', 'translated'),
(65, 'Democratic Coalition of Reformists', 'ائتلاف دموکراتیک اصلاح طلبان', 'translated'),
(66, 'Comité pour le Renversement', 'Comité pour le Renverement', 'translated'),
(67, 'Parti démocratique azerbaïdjani', 'حزب دموکراتیک آذربایجان', 'translated'),
(68, 'Iranian People Party', 'حزب مردم ایران', 'translated'),
(69, 'Iran Liberation Front', 'جبهه آزادی ایران', 'translated'),
(70, 'Marz e Por Gohar', 'مارسپور گوهر', 'translated'),
(71, 'Movement of God Worshipping Socialists', 'جنبش خداوند پرستش سوسیالیست ها', 'translated'),
(72, 'Rastakhiz Partij', 'رضاخیز حزب', 'translated'),
(73, 'Organization of Iranian People\'s Fedai Guerrillas (1985)', 'سازمان فدایی گریلیاس مردم ایران (1985)', 'translated'),
(74, 'Organization of Iranian People\'s Fedai Guerrillas (In Search of Identity Program)', 'سازمان فدرال قهرمانان مردمی ایران (در جستجوی برنامه هویت)', 'translated'),
(75, 'People\'s Democratic Front (Iran)', 'جبهه دموکراتیک مردم (ایران)', 'translated'),
(76, 'Pragmatic Conservatives', 'محافظه کار عملگرایانه', 'translated'),
(77, 'Rahe Kargar', 'راه کارگر', 'translated'),
(78, 'Revenge group (Anjoman)', 'گروه انتقام (Anjoman)', 'translated'),
(79, 'Revolutionary Republican Party of Iran', 'حزب جمهوریخواه انقلابی ایران', 'translated'),
(80, 'Social Democratic Party (Persia)', 'حزب سوسیال دموکرات (ایران)', 'translated'),
(81, 'Socialist Party of Iran', 'حزب سوسیالیست ایران', 'translated'),
(82, 'Socialist Workers’ Party of Iran', 'حزب کارگران سوسیالیست ایران', 'translated'),
(83, 'Worker communism Unity Party of Iran', 'حزب اتحاد جماهیر شوروی کارگری ایران', 'translated'),
(84, 'Workers Left Unity – Iran', 'اتحاد کارگران چپ - ایران', 'translated'),
(85, 'Young Communist League of Persia', 'لیگ کمونیست جوان ایران', 'translated');

-- --------------------------------------------------------

--
-- Table structure for table `politicians`
--

CREATE TABLE `politicians` (
  `id` int(11) NOT NULL,
  `politician_tag` varchar(256) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL,
  `gender` char(1) COLLATE utf8_bin NOT NULL,
  `born_city` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `politicians`
--

INSERT INTO `politicians` (`id`, `politician_tag`, `fa_label`, `labeledOrTranslated`, `gender`, `born_city`) VALUES
(1, 'Abbas Abdi', 'عباس عبدی (سیاستمدار)', 'labeled', 'm', 'NotGiven'),
(2, 'Abbas Adham', 'عباس ادهم', 'labeled', 'm', 'NotGiven'),
(3, 'Abbas Ahmad Akhoundi', 'عباس احمد آخوندی', 'labeled', 'm', 'NotGiven'),
(4, 'Abbas Ali Khalatbari', 'عباسعلي خلعتبري', 'labeled', 'm', 'Tehran'),
(5, 'Abbas Amir Entezam', 'عباس اميرانتظام', 'labeled', 'm', 'Tehran'),
(6, 'Abbas Aram', 'غلام‌عباس آرام', 'labeled', 'm', 'NotGiven'),
(7, 'Abbas Foroughi Bastami', 'فروغي بسطامي', 'labeled', 'n', 'NotGiven'),
(8, 'Abbas Gharabaghi', 'عباس قره باغی', 'labeled', 'm', 'Tabriz'),
(9, 'Abbas maleki', 'عباس ملكي', 'labeled', 'm', 'NotGiven'),
(10, 'Abdolhossein Hazhir', 'هژير', 'labeled', 'm', 'Kashan'),
(11, 'Abdol Hossein Mirza Farmanfarma', 'عبدالحسين خان فرمانفرما', 'labeled', 'n', 'Tabriz'),
(12, 'Abdol Hossein Sardari', 'عبدالحسين سردري', 'labeled', 'm', 'Tehran'),
(13, 'Abdolhossein Teymourtash', 'عبدالحسین تیمورتاش', 'labeled', 'm', 'Bojnord'),
(14, 'Abdollah Javadi Amoli', 'عبد الله جوادي آملي', 'labeled', 'm', 'NotGiven'),
(15, 'Abdollah Nouri', 'عبدالله نوري', 'labeled', 'm', 'Isfahan'),
(16, 'Abdollah Ramezanzadeh', 'عبدالله رمضانزاده', 'labeled', 'm', 'Tehran'),
(17, 'Abdol Majid Mirza', 'عین‌الدوله', 'labeled', 'n', 'NotGiven'),
(18, 'Abdolmalek Rigi', 'مالك ريگي', 'labeled', 'm', 'NotGiven'),
(19, 'Abdolreza Mesri', 'عبدالرضا مصري', 'labeled', 'm', 'Kermanshah'),
(20, 'Abdolreza Rahmani Fazli', 'رحمانی فضلی', 'labeled', 'm', 'Shirvan_Iran'),
(21, 'Abdolvahed Mousavi Lari', 'عبدالواحد موسوي لاري', 'labeled', 'm', 'Tehran'),
(22, 'Abdul Karim Mousavi Ardebili', 'موسوي اردبيلي', 'labeled', 'm', 'Ardabil'),
(23, 'Abdullah Entezam', 'عبدالله انتظام وزیری', 'labeled', 'm', 'NotGiven'),
(24, 'Abdul Rahman Ghassemlou', 'عبدالرحمان وثوق', 'labeled', 'm', 'NotGiven'),
(25, 'Abolfazl Fateh', 'ابوالفضل فاتح', 'labeled', 'm', 'NotGiven'),
(26, 'Abol Ghasem Kashani', 'سیدابوالقاسم کاشانی', 'labeled', 'm', 'Tehran'),
(27, 'Abolhassan Banisadr', 'بنی‌صدر', 'labeled', 'm', 'Hamedan'),
(28, 'Abolqasem Najm', 'نجم الملك', 'labeled', 'm', 'Tehran'),
(29, 'Abu Muslim Khorasani', 'ابو‌مسلم', 'labeled', 'm', 'Merv'),
(30, 'Adib Boroumand', 'عبدالعلی ادیب برومند', 'labeled', 'm', 'NotGiven'),
(31, 'Ahmad Ahmadi (philosopher)', 'احمد احمدی (فیلسوف)', 'labeled', 'm', 'NotGiven'),
(32, 'Ahmad Amir Ahmadi', 'احمداقا سرتيپ', 'labeled', 'm', 'Tehran'),
(33, 'Ahmad Bourghani', 'احمد بورقانی', 'labeled', 'm', 'Tehran'),
(34, 'Ahmad Jannati', 'آيت الله جنتي', 'labeled', 'm', 'Isfahan'),
(35, 'Ahmad Kashani', 'سید احمد کاشانی', 'labeled', 'm', 'NotGiven'),
(36, 'Ahmad Khomeini', 'سيد احمد خميني', 'labeled', 'm', 'Qom'),
(37, 'Ahmad Khorram', 'احمد خرم', 'labeled', 'm', 'Isfahan'),
(38, 'Ahmad Madani', 'احمد مدني', 'labeled', 'm', 'Kerman'),
(39, 'Ahmad Masjed Jamei', 'احمد مسجد جامعي', 'labeled', 'm', 'Tehran'),
(40, 'Ahmad Matin Daftari', 'متین الدوله', 'labeled', 'm', 'Tehran'),
(41, 'Ahmad Mirfendereski', 'احمد میرفندرسکی', 'labeled', 'm', 'NotGiven'),
(42, 'Ahmad Moftizadeh', 'احمد مفتی‌زاده', 'labeled', 'm', 'NotGiven'),
(43, 'Ahmad Qavam', 'احمد قوام السلطنه', 'labeled', 'm', 'Tehran'),
(44, 'Ahmad Sayyed Javadi', 'احمد صدرحاج سید جوادی', 'labeled', 'm', 'Qazvin'),
(45, 'Ahmad Shirzad', 'احمد شيرزاد', 'labeled', 'm', 'NotGiven'),
(46, 'Ahmad Tavakkoli', 'احمد توکلی', 'labeled', 'm', 'Behshahr'),
(47, 'Ahmad Vahidi', 'سردار احمد وحیدی', 'labeled', 'm', 'Shiraz'),
(48, 'Ahmad Zirakzadeh', 'احمد زيرك زاده', 'labeled', 'm', 'Tehran'),
(49, 'Akbar A\'lami', 'اکبر اعلمی', 'labeled', 'm', 'NotGiven'),
(50, 'Akbar Hashemi Rafsanjani', 'دولت هاشمی', 'labeled', 'm', 'Bahreman'),
(51, 'Akbar Mohammadi (student)', 'اکبر محمدی (فعال دانشجویی)', 'labeled', 'm', 'Amol'),
(52, 'Akbar Torkan', 'اكبر تركان', 'labeled', 'm', 'Tehran'),
(53, 'Alaeddin Boroujerdi', 'علاالدين بروجردي', 'labeled', 'm', 'NotGiven'),
(54, 'Alberto João Jardim', 'مادیرا', 'labeled', 'm', 'Funchal'),
(55, 'Ali Akbar Bahman', 'سید باقر کاظمی', 'labeled', 'm', 'NotGiven'),
(56, 'Ali Akbar Davar', 'علي اكبر داور', 'labeled', 'm', 'Tehran'),
(57, 'Ali Akbar Dehkhoda', 'میرزا علی‌اکبر خان قزوینی', 'labeled', 'm', 'Tehran'),
(58, 'Ali Akbar Javanfekr', 'علي اكبر جوانفكر', 'labeled', 'm', 'Tehran'),
(59, 'Ali Akbar Mehrabian', 'علي اكبر محرابيان', 'labeled', 'm', 'NotGiven'),
(60, 'Ali Akbar Mohtashamipur', 'علي اكبر محتشمي', 'labeled', 'm', 'Tehran'),
(61, 'Ali Akbar Mousavi Khoeini', 'علی اکبر موسوی خوئینی', 'labeled', 'm', 'NotGiven'),
(62, 'Ali Akbar Nategh Nouri', 'علی‌اکبر ناطق نوری', 'labeled', 'm', 'Nur_Iran'),
(63, 'Ali Akbar Salehi', 'علی‌اکبر صالحی', 'labeled', 'm', 'Karbala'),
(64, 'Ali Akbar Velayati', 'علی‌اکبر ولایتی', 'labeled', 'm', 'Tehran'),
(65, 'Ali Amini', 'علی امینی', 'labeled', 'm', 'Tehran'),
(66, 'Ali Dashti', 'علي آباد (دشتي)', 'labeled', 'm', 'NotGiven'),
(67, 'Ali Fallahian', 'فلاحیان', 'labeled', 'm', 'Najafabad'),
(68, 'Ali Jannati', 'علی جنتی', 'labeled', 'm', 'NotGiven'),
(69, 'Ali Khamenei', 'ایه‌الله خامنه‌ای', 'labeled', 'm', 'Mashhad'),
(70, 'Ali Kordan', 'علي كردان', 'labeled', 'm', 'NotGiven'),
(71, 'Ali Larijani', 'علي املي لاريجاني', 'labeled', 'm', 'Najaf'),
(72, 'Ali Mansur', 'منصور الملک', 'labeled', 'm', 'Kolkata'),
(73, 'Ali Meshkini', 'ایت‌الله مشکینی', 'labeled', 'm', 'Meshginshahr'),
(74, 'Ali Motahari', 'علي مطهري', 'labeled', 'm', 'NotGiven'),
(75, 'Ali Murad Davudi', 'عليمراد داودي', 'labeled', 'm', 'NotGiven'),
(76, 'Ali Nikzad', 'نیکزاد', 'labeled', 'm', 'Ardabil'),
(77, 'Ali Qoli Khan Bakhtiari', 'عليقلي سرداراسعد', 'labeled', 'm', 'NotGiven'),
(78, 'Ali Rabiei', 'علی ربیعی', 'labeled', 'm', 'Tehran'),
(79, 'Alireza Ali Ahmadi', 'علیرضا علی‌احمدی', 'labeled', 'm', 'Isfahan'),
(80, 'Ali Reza Asgari', 'علیرضا عسگری', 'labeled', 'm', 'Ardestan'),
(81, 'Ali Reza Khan Azod al Molk', 'عضدالملك', 'labeled', 'm', 'NotGiven'),
(82, 'Alireza Marandi', 'علي رضا مرندي', 'labeled', 'm', 'Isfahan'),
(83, 'Alireza Noori', 'عليرضا نوري', 'labeled', 'm', 'NotGiven'),
(84, 'Alireza Nourizadeh', 'علی‌رضا نوری‌زاده', 'labeled', 'm', 'NotGiven'),
(85, 'Alireza Rajaei', 'علی رضا رجایی', 'labeled', 'm', 'Tehran'),
(86, 'Alireza Tahmasbi', 'علیرضا طهماسبی', 'labeled', 'm', 'Shiraz'),
(87, 'Alireza Zakani', 'عليرضا زاكاني', 'labeled', 'm', 'NotGiven'),
(88, 'Ali Shakouri Rad', 'علی شکوری‌راد', 'labeled', 'm', 'NotGiven'),
(89, 'Ali Shamkhani', 'شمخانی', 'labeled', 'm', 'Ahvaz'),
(90, 'Ali Shariati', 'علی شریعتی', 'labeled', 'm', 'NotGiven'),
(91, 'Ali Shariatmadari', 'علي شريعتمداري', 'labeled', 'm', 'Shiraz'),
(92, 'Ali Shayegan', 'دكتر شايگان', 'labeled', 'm', 'NotGiven'),
(93, 'Ali Soheili', 'علی سهیلی', 'labeled', 'm', 'Tabriz'),
(94, 'Ali Tayebnia', 'علی طیب‌نیا', 'labeled', 'm', 'Isfahan'),
(95, 'Ali Younesi', 'علي يونسي', 'labeled', 'm', 'Nahavand'),
(96, 'Al Muqanna', 'مقنع', 'labeled', 'm', 'NotGiven'),
(97, 'Amanullah Jahanbani', 'امان الله جهانباني', 'labeled', 'm', 'NotGiven'),
(98, 'Amir Abbas Hoveyda', 'عباس هويدا', 'labeled', 'm', 'Tehran'),
(99, 'Amir Abdollah Tahmasebi', 'عبدالله‌خان امیر طهماسبی', 'labeled', 'm', 'Tehran'),
(100, 'Amir Arshad', 'امیر فرشاد ابراهیمی', 'labeled', 'm', 'Tehran'),
(101, 'Amir Kabir', 'سد کرج', 'labeled', 'm', 'Arak_Iran'),
(102, 'Amir Khosrow Afshar', 'امیرخسرو افشار قاسملو', 'labeled', 'm', 'NotGiven'),
(103, 'Amir Mohebbian', 'امير محبيان', 'labeled', 'm', 'Tehran'),
(104, 'Amirreza Amirbakhtiar', 'اميررضا اميربختيار', 'labeled', 'm', 'Ahvaz'),
(105, 'Amir Reza Khadem', 'اميررضا خادم', 'labeled', 'm', 'NotGiven'),
(106, 'Ardeshir Ovanessian', 'ارداشس اوانسیان', 'labeled', 'm', 'NotGiven'),
(107, 'Ardeshir Zahedi', 'اردشير زاهدي', 'labeled', 'm', 'Tehran'),
(108, 'ar/حسن ‌أمیني', 'حسن اميني', 'labeled', 'n', 'NotGiven'),
(109, 'ar/عيسى الفراهاني', 'ميرزا بزرگ قائم مقام', 'labeled', 'n', 'NotGiven'),
(110, 'ar/ناصر سبحاني', 'ناصر سبحاني/موقت', 'labeled', 'n', 'NotGiven'),
(111, 'Asadollah Alam', 'امير اسدالله علم', 'labeled', 'm', 'Birjand'),
(112, 'Asadollah Bayat Zanjani', 'ايت الله اسدالله بيات زنجاني', 'labeled', 'm', 'NotGiven'),
(113, 'Asadollah Lajevardi', 'اسدالله لاجوردي', 'labeled', 'm', 'NotGiven'),
(114, 'Asghar Parsa', 'اصغر پارسا', 'labeled', 'm', 'Khoy'),
(115, 'Ashraf Dehghani', 'اشرف دهقانی', 'labeled', 'f', 'NotGiven'),
(116, 'Ashraf Pahlavi', 'اشرف‌الملوک پهلوی', 'labeled', 'f', 'Tehran'),
(117, 'Ata\'ollah Mohajerani', 'سید عطاالله مهاجرانی', 'labeled', 'm', 'Arak_Iran'),
(118, 'Azam Taleghani', 'اعظم طالقاني', 'labeled', 'f', 'NotGiven'),
(119, 'Azizkhan Mokri', 'سردار عزيز خان مكري', 'labeled', 'n', 'NotGiven'),
(120, 'Bahaedin Adab', 'بهاءالدين ادب', 'labeled', 'm', 'NotGiven'),
(121, 'Bahram Mavaddat', 'بهرام مودت', 'labeled', 'm', 'Tehran'),
(122, 'Bal\'ami', 'ابوعلی بلعمی', 'labeled', 'm', 'NotGiven'),
(123, 'Bāqer Khān', 'سالار ملي', 'labeled', 'm', 'Tabriz'),
(124, 'Barmakids', 'خاندان برامكه', 'labeled', 'm', 'NotGiven'),
(125, 'Behzad Nabavi', 'بهزاد نبوي', 'labeled', 'm', 'Tehran'),
(126, 'Bijan Jazani', 'ب̘ن جزنی', 'labeled', 'm', 'NotGiven'),
(127, 'Bijan Namdar Zangeneh', 'بيژن زنگنه', 'labeled', 'm', 'Kermanshah'),
(128, 'Cabinet of Iran', 'کابینه ایران', 'labeled', 'm', 'NotGiven'),
(129, 'Ciamak Moresadegh', 'سیامک مره صدق', 'labeled', 'm', 'NotGiven'),
(130, 'Colonel Pessian', 'پسیان تبریزی', 'labeled', 'm', 'NotGiven'),
(131, 'Dariush Forouhar', 'داريوش فروهر', 'labeled', 'm', 'Isfahan'),
(132, 'Dariush Homayoon', 'داريوش همايون', 'labeled', 'm', 'Tehran'),
(133, 'Davoud Ahmadinejad', 'داوود احمدي نژاد', 'labeled', 'm', 'NotGiven'),
(134, 'Davoud Danesh Jafari', 'داود دانش جعفری', 'labeled', 'm', 'Tehran'),
(135, 'Davoud Hermidas Bavand', 'دکتر باوند', 'labeled', 'm', 'Tehran'),
(136, 'Davoud Soleymani', 'داوود سلیمانی', 'labeled', 'm', 'NotGiven'),
(137, 'de/Ali Reza Khan Azod al Molk', 'عضدالملك', 'labeled', 'n', 'NotGiven'),
(138, 'de/Hossein Pirnia', 'مؤتمن الملك', 'labeled', 'n', 'NotGiven'),
(139, 'de/Mohammad Ali Khan Ala al Saltaneh', 'میرزا محمدعلی خان علاءالسلطنه', 'labeled', 'n', 'NotGiven'),
(140, 'de/Seyed Mehdi Miraboutalebi', 'سید مهدی میرابوطالبی', 'labeled', 'n', 'NotGiven'),
(141, 'Div Sultan Rumlu', 'دیوسلطان', 'labeled', 'm', 'NotGiven'),
(142, 'Ebrahim Asgharzadeh', 'ابراهیم اصغرزاده', 'labeled', 'm', 'Khash_Iran'),
(143, 'Ebrahim Hakimi', 'ابراهیم حکیم الممالک', 'labeled', 'm', 'Tabriz'),
(144, 'Ebrahim Khan Kalantar', 'شرف‌الدوله کلانتر', 'labeled', 'm', 'NotGiven'),
(145, 'Ebrahim Yazdi', 'ابراهم يزدي', 'labeled', 'm', 'Qazvin'),
(146, 'Effat Shariati', 'عفت شریعتی کوه بنانی', 'labeled', 'f', 'Mashhad'),
(147, 'Elaheh Koulaei', 'الههٔ کولائی', 'labeled', 'f', 'NotGiven'),
(148, 'Elias Hazrati', 'الیاس حضرتی', 'labeled', 'm', 'Hashtrud'),
(149, 'Emad Afroogh', 'عمادالدين افروغ', 'labeled', 'm', 'Shiraz'),
(150, 'Esfandiar Rahim Mashaei', 'اسفندیار رحیم‌مشایی', 'labeled', 'm', 'NotGiven'),
(151, 'Eshaq Jahangiri', 'اسحاق جهانگيري', 'labeled', 'm', 'Sirjan'),
(152, 'Esmail Shooshtari', 'محمداسماعیل شوشتری', 'labeled', 'm', 'Nishapur'),
(153, 'es/Seyyed Abdollah Behbahaní', 'عبدالله بهبهاني', 'labeled', 'n', 'NotGiven'),
(154, 'Ezzatollah Sahabi', 'عزت اللّه سحابي', 'labeled', 'm', 'Tehran'),
(155, 'Faezeh Hashemi', 'فائزهٔ هاشمي رفسنجاني', 'labeled', 'f', 'Tehran'),
(156, 'Farah Pahlavi', 'شاهزاده فرحناز پهلوي', 'labeled', 'f', 'Tehran'),
(157, 'Farhang Mehr', 'فرهنگ مهر', 'labeled', 'm', 'NotGiven'),
(158, 'Farrokhroo Parsa', 'فَرُّخ‌رو پارسا', 'labeled', 'f', 'Qom'),
(159, 'Fatemeh Haghighatjoo', 'فاطمهٔ حقیقت جو', 'labeled', 'f', 'NotGiven'),
(160, 'Fatemeh Karroubi', 'فاطمهٔ کروبی', 'labeled', 'f', 'NotGiven'),
(161, 'Fathollah Khan Akbar', 'فتح الله خان سپهدار رشتی', 'labeled', 'm', 'Rasht'),
(162, 'Fazlollah Zahedi', 'فضل الله خان بصير ديوان', 'labeled', 'm', 'Hamedan'),
(163, 'fa/ابوالحسن خان مشیرالملک', 'ابوالحسن خان مشیرالملک', 'labeled', 'n', 'NotGiven'),
(164, 'fa/ابوالفتح تاج‌الدین دارست شیرازی', 'ابوالفتح تاج‌الدین دارست شیرازی', 'labeled', 'n', 'NotGiven'),
(165, 'fa/ابوالقاسم خان بختیار', 'ابوالقاسم خان بختيار', 'labeled', 'n', 'NotGiven'),
(166, 'fa/ابوالقاسم قوام‌الدین درگزینی', 'قوام‌الدین طغرائی', 'labeled', 'n', 'NotGiven'),
(167, 'fa/احمد دهقان (نماینده مجلس)', 'احمد دهقان (نماينده مجلس)', 'labeled', 'n', 'NotGiven'),
(168, 'fa/احمدرضوی', 'احمدرضوي', 'labeled', 'n', 'NotGiven'),
(169, 'fa/اسدالله بادامچیان', 'اسدالله بادامچيان', 'labeled', 'n', 'NotGiven'),
(170, 'fa/اسماعیل ططری', 'اسماعیل ططری', 'labeled', 'n', 'NotGiven'),
(171, 'fa/الیاس نادران', 'الیاس نادران', 'labeled', 'n', 'Shahrud_iran'),
(172, 'fa/الله‌یار صالح', 'اللهیار صالح', 'labeled', 'n', 'Aran_va_Bidgol'),
(173, 'fa/امیرقلی امینی', 'امیر قلی امینی', 'labeled', 'n', 'NotGiven'),
(174, 'fa/امیر مفخم بختیاری', 'شجاع‌السلطان', 'labeled', 'n', 'NotGiven'),
(175, 'fa/توران فتح‌الله‌زاده', 'توران فتح‌الله‌زاده', 'labeled', 'n', 'NotGiven'),
(176, 'fa/جعفر بهبهانی', 'سيد جعفر بهبهاني', 'labeled', 'n', 'NotGiven'),
(177, 'fa/جلیل بزرگ‌مهر', 'جلیل بزرگ مهر', 'labeled', 'n', 'NotGiven'),
(178, 'fa/جهانگیر حقشناس', 'جهانگیر حقشناس', 'labeled', 'n', 'NotGiven'),
(179, 'fa/حاج باباخان اردبیلی', 'حاج بابا اردبيلي', 'labeled', 'n', 'NotGiven'),
(180, 'fa/حجت‌الله ایوبی', 'حجت الله ایوبی', 'labeled', 'n', 'NotGiven'),
(181, 'fa/حسن خرمشاهی', 'محمد حسن خرمشاهي', 'labeled', 'n', 'NotGiven'),
(182, 'fa/حسین راضی', 'حسین راضی', 'labeled', 'n', 'NotGiven'),
(183, 'fa/حسین شاه‌حسینی', 'حسین شاه حسینی', 'labeled', 'n', 'Tehran'),
(184, 'fa/حسن علی صارمی کلالی', 'حسن علی صارمی کلالی', 'labeled', 'n', 'NotGiven'),
(185, 'fa/حسن قشقاوی', 'حسن قشقاوي', 'labeled', 'n', 'NotGiven'),
(186, 'fa/حسین مکی', 'حسين مكي', 'labeled', 'n', 'NotGiven'),
(187, 'fa/حمیدرضا کاتوزیان', 'حمیدرضا کاتوزیان', 'labeled', 'n', 'NotGiven'),
(188, 'fa/حمید زنگنه', 'حمید زنگنه', 'labeled', 'n', 'NotGiven'),
(189, 'fa/خسرو سعیدی', 'خسرو سعیدی', 'labeled', 'n', 'NotGiven'),
(190, 'fa/خسرو قشقایی', 'خسرو خان قشقایی', 'labeled', 'n', 'NotGiven'),
(191, 'fa/رکن‌الدین صائن وزیر', 'رکن‌الدین صائن وزیر', 'labeled', 'n', 'NotGiven'),
(192, 'fa/زکریا انصاری', 'زکریا انصاری', 'labeled', 'n', 'NotGiven'),
(193, 'fa/سید ابراهیم رئیسی', 'ابراهيم رئيسي', 'labeled', 'n', 'NotGiven'),
(194, 'fa/سید ابوالفضل زنجانی', 'سيد ابوالفضل زنجاني', 'labeled', 'n', 'NotGiven'),
(195, 'fa/سید باقر کاظمی', 'باقر كاظمي', 'labeled', 'n', 'NotGiven'),
(196, 'fa/سید حسین موسویان (جبهه ملی)', 'سيد حسين موسويان (جبهه ملي)', 'labeled', 'n', 'NotGiven'),
(197, 'fa/سید رضا فیروزآبادی', 'آیت الله فیروزآبادی', 'labeled', 'n', 'NotGiven'),
(198, 'fa/سید طاهر طاهری', 'سيد طاهر طاهري', 'labeled', 'n', 'NotGiven'),
(199, 'fa/سید عبدالباقی شیرازی', 'سيد عبدالباقي شيرازي', 'labeled', 'n', 'NotGiven'),
(200, 'fa/سید علی‌رضا بهشتی شیرازی', 'سيد عليرضا بهشتي شيرازي', 'labeled', 'n', 'NotGiven'),
(201, 'fa/سید محمد علی کشاورز صدر', 'سيد محمد علي كشاورز صدر', 'labeled', 'n', 'NotGiven'),
(202, 'fa/سیروس آموزگار', 'سيروس اموزگار', 'labeled', 'n', 'Tehran'),
(203, 'fa/سلطان محمد خان سردار اشجع', 'سردار اشجع', 'labeled', 'n', 'NotGiven'),
(204, 'fa/شمس‌الدین امیرعلائی', 'شمس الدین امیر علائی', 'labeled', 'n', 'Tehran'),
(205, 'fa/شمس‌الدین جوینی', 'شمس الدين جويني', 'labeled', 'n', 'NotGiven'),
(206, 'fa/صفر لفوتی', 'صفر لفوتي', 'labeled', 'n', 'Astaneh-ye_Ashrafiyeh'),
(207, 'fa/صفی قلی‌خان', 'صفی قلی خان', 'labeled', 'n', 'NotGiven'),
(208, 'fa/عباس امیری‌فر', 'عباس اميري فر', 'labeled', 'n', 'NotGiven'),
(209, 'fa/عباس خلیلی', 'عباس خلیلی', 'labeled', 'n', 'NotGiven'),
(210, 'fa/عبدالرحمن برومند', 'عبدالرحمان برومند', 'labeled', 'n', 'NotGiven'),
(211, 'fa/عبدالقدیر آزاد', 'عبدالقدير آزاد', 'labeled', 'n', 'NotGiven'),
(212, 'fa/علی اردلان', 'علی اردلان', 'labeled', 'n', 'NotGiven'),
(213, 'fa/علی‌اکبر اشعری', 'علی‌اکبر اشعری', 'labeled', 'n', 'NotGiven'),
(214, 'fa/علی اکبر فرازی', 'علي اكبر فرازي', 'labeled', 'n', 'NotGiven'),
(215, 'fa/علی‌اکبر نقی‌پور', 'علي اكبر نقي پور', 'labeled', 'n', 'NotGiven'),
(216, 'fa/علی‌محمد ایزدی', 'علی محمد ایزدی', 'labeled', 'n', 'Shiraz'),
(217, 'fa/علی‌محمد بشارتی جهرمی', 'علی محمد بشارتی', 'labeled', 'n', 'Jahrom'),
(218, 'fa/علی مصطفوی', 'دکتر علی مصطفوی', 'labeled', 'n', 'NotGiven'),
(219, 'fa/غلامحسین خان سالار محتشم', 'غلامحسین خان سالار محتشم', 'labeled', 'n', 'NotGiven'),
(220, 'fa/فرامرز اسدی', 'فرامرز اسدي', 'labeled', 'n', 'NotGiven'),
(221, 'fa/فیض‌الله عرب‌سرخی', 'فیض الله عرب سرخی', 'labeled', 'n', 'NotGiven'),
(222, 'fa/فؤاد روحانی', 'فواد روحانی', 'labeled', 'n', 'NotGiven'),
(223, 'fa/کاظم حسیبی', 'كاظم حسيبي', 'labeled', 'n', 'NotGiven'),
(224, 'fa/کوروش زعیمی', 'کوروش زعیمی', 'labeled', 'n', 'NotGiven'),
(225, 'fa/لیلی امیرارجمند', 'لیلی امیرارجمند', 'labeled', 'n', 'NotGiven'),
(226, 'fa/محمد اسلامی', 'محمد اسلامی', 'labeled', 'n', 'Tehran'),
(227, 'fa/محمد تقی خان بختیاری', 'محمد تقي خان بختياري', 'labeled', 'n', 'NotGiven'),
(228, 'fa/محمدجواد فریدزاده', 'محمدجواد فريدزاده', 'labeled', 'n', 'NotGiven'),
(229, 'fa/محمدحسن شمشیری', 'محمدحسن شمشيري', 'labeled', 'n', 'NotGiven'),
(230, 'fa/محمدحسین قشقایی', 'محمد حسين قشقايي', 'labeled', 'n', 'NotGiven'),
(231, 'fa/محمدرضا مخبر', 'محمدرضا مخبر', 'labeled', 'n', 'NotGiven'),
(232, 'fa/محمد شریعتمداری', 'محمد شریعتمداری', 'labeled', 'n', 'Tehran'),
(233, 'fa/محمدعلی خنجی', 'محمدعلي خنجي', 'labeled', 'n', 'NotGiven'),
(234, 'fa/محمد فرهادی', 'محمد فرهادي', 'labeled', 'n', 'Shahrud_iran'),
(235, 'fa/محمدکاظم سجادپور', 'سید محمدکاظم سجادپور', 'labeled', 'n', 'NotGiven'),
(236, 'fa/محمد میرزا کاشف‌السلطنه', 'محمد میرزا کاشف السلطنه', 'labeled', 'n', 'NotGiven'),
(237, 'fa/محمد منتظری', 'محمد منتظري', 'labeled', 'n', 'NotGiven'),
(238, 'fa/محمد نخشب', 'محمدنخشب', 'labeled', 'n', 'NotGiven'),
(239, 'fa/محمود سخایی', 'سيد محمود سخايي', 'labeled', 'n', 'NotGiven'),
(240, 'fa/محمود نریمان', 'محمود نريمان', 'labeled', 'n', 'Tehran'),
(241, 'fa/میرزا حسین اصفهانی', 'میرزا شاه حسین اصفهانی', 'labeled', 'n', 'NotGiven'),
(242, 'fa/میرزا محمدعلی سیوندی', 'میرزا محمدعلی سیوندی', 'labeled', 'n', 'NotGiven'),
(243, 'fa/مسعود حجازی', 'مسعود حجازی', 'labeled', 'n', 'NotGiven'),
(244, 'fa/معین الدین مرجایی', 'معین الدین مرجایی', 'labeled', 'n', 'NotGiven'),
(245, 'fa/منصور بیات‌زاده', 'منصور بیات زاده', 'labeled', 'n', 'NotGiven'),
(246, 'fa/منصور روحانی', 'منصور روحانی', 'labeled', 'n', 'NotGiven'),
(247, 'fa/منوچهر آگاه', 'منوچهر آگاه', 'labeled', 'n', 'Rafsanjan'),
(248, 'fa/مهدی آذر', 'مهدی آذر یزدی', 'labeled', 'n', 'Mashhad'),
(249, 'fa/مهدی کلهر', 'مهدي كلهر', 'labeled', 'n', 'NotGiven'),
(250, 'fa/مهرداد پهلبد', 'مهرداد پهلبد', 'labeled', 'n', 'NotGiven'),
(251, 'fa/نصرالله فاطمی', 'نصرالله فاطمي', 'labeled', 'n', 'NotGiven'),
(252, 'fa/نصرت‌الله امینی', 'نصرت الله امینی', 'labeled', 'n', 'Arak_iran'),
(253, 'fa/نظام‌الدین موحد', 'نظام الدين موحد', 'labeled', 'n', 'NotGiven'),
(254, 'fa/هدایت‌الله متین دفتری', 'هدایت الله متین دفتری', 'labeled', 'n', 'NotGiven'),
(255, 'fa/یوسف خان امیر مجاهد', 'امير مجاهد', 'labeled', 'n', 'NotGiven'),
(256, 'Fereydoon Hoveyda', 'فريدون هويدا', 'labeled', 'm', 'Damascus'),
(257, 'Feridoun Jam', 'فريدون جم', 'labeled', 'n', 'NotGiven'),
(258, 'Firouz Mirza Nosrat ed Dowleh Farman Farmaian III', 'فیروز نصرت الدوله', 'labeled', 'n', 'Tehran'),
(259, 'Firouz Nosrat ed Dowleh III', 'فیروز نصرت الدوله', 'labeled', 'm', 'Tehran'),
(260, 'fr/Mirza Riza Khan', 'رضا ارفع‌الدوله', 'labeled', 'n', 'NotGiven'),
(261, 'Ghaem Magham Farahani', 'قائم مقام فراهانی', 'labeled', 'm', 'Arak_iran'),
(262, 'Ghasem Sholeh Saadi', 'قاسم شعله سعدی', 'labeled', 'n', 'NotGiven'),
(263, 'Gholam Ali Haddad Adel', 'غلامعلی حداد عادل در انتخابات ریاست‌جمهوری ایران (1392)', 'labeled', 'm', 'Tehran'),
(264, 'Gholam Ali Oveisi', 'غلام علي اويسي', 'labeled', 'm', 'Qom'),
(265, 'Gholam Hossein Elham', 'غلامحسين الهام', 'labeled', 'n', 'Andimeshk'),
(266, 'Gholamhossein Karbaschi', 'غلامحسين كرباسچي', 'labeled', 'm', 'Tehran'),
(267, 'Gholam Hossein Mohseni Eje\'i', 'غلامحسين اژه اي', 'labeled', 'm', 'Isfahan'),
(268, 'Gholam Hossein Nozari', 'غلامحسين نوذري', 'labeled', 'm', 'Kazerun'),
(269, 'Gholam Hossein Sadighi', 'غلامحسين صديقي', 'labeled', 'm', 'Tehran'),
(270, 'Gholam Reza Aghazadeh', 'غلامرضا اقازاده', 'labeled', 'm', 'Khoy'),
(271, 'Gholam Reza Azhari', 'ازهاري', 'labeled', 'm', 'Shiraz'),
(272, 'Gholamreza Nikpey', 'غلامرضا نيك پي', 'labeled', 'm', 'Isfahan'),
(273, 'Gholamreza Takhti', 'تختي', 'labeled', 'm', 'NotGiven'),
(274, 'Ghorbanali Dorri Najafabadi', 'قربانعلی دری نجف ابادی', 'labeled', 'm', 'Rey_iran'),
(275, 'Habib Elghanian', 'القانیان', 'labeled', 'm', 'NotGiven'),
(276, 'Habibollah Asgaroladi', 'حبيب الله عسكراولادي', 'labeled', 'm', 'Tehran'),
(277, 'Habibollah Bitaraf', 'حبیب الله بیطرف', 'labeled', 'm', 'NotGiven'),
(278, 'Habibollah Peyman', 'حبیب‌الله پیمان', 'labeled', 'm', 'NotGiven'),
(279, 'Hadi Khamenei', 'سيد هادي خامنهٔ اي', 'labeled', 'm', 'NotGiven'),
(280, 'Haj Ali Razmara', 'حاجیعلی رزم آرا', 'labeled', 'm', 'Tehran'),
(281, 'Haji Baba Sheikh', 'حاجی باباشیخ', 'labeled', 'm', 'NotGiven'),
(282, 'Haji Washington', 'حاجي واشنگتن', 'labeled', 'm', 'NotGiven'),
(283, 'Hajj Mirza Aghasi', 'حاجي ميرزا آقاسي', 'labeled', 'm', 'Maku_iran'),
(284, 'Hamid Baqai', 'حميدرضا بقايي', 'labeled', 'm', 'NotGiven'),
(285, 'Hamid Behbahani', 'حمید بهبهانی', 'labeled', 'm', 'Behbahan'),
(286, 'Hamid Chitchian', 'حمید چیت‌چیان', 'labeled', 'm', 'Tabriz'),
(287, 'Hamid Mowlana', 'سیدحمید مولانا', 'labeled', 'm', 'NotGiven'),
(288, 'Hamid Reza Assefi', 'اصفي', 'labeled', 'm', 'NotGiven'),
(289, 'Hamid Reza Haji Babaee', 'حاجی‌بابایی', 'labeled', 'm', 'Hamedan'),
(290, 'Hamid Sajjadi', 'حميد سجادي', 'labeled', 'm', 'NotGiven'),
(291, 'Hasan Arfa', 'حسن ارفع', 'labeled', 'm', 'NotGiven'),
(292, 'Hasan Arsanjani', 'حسن ارسنجاني', 'labeled', 'm', 'Tehran'),
(293, 'Hasan Nazih', 'حسن نزيه', 'labeled', 'm', 'NotGiven'),
(294, 'Hashemi Rafsanjani', 'حجت الاسلام هاشمی رفسنجانی', 'labeled', 'm', 'Tehran'),
(295, 'Hashem Sabbaghian', 'هاشم صباغيان', 'labeled', 'm', 'Tehran'),
(296, 'Hassan Abbasi', 'حسن عباسي (تحليل گر سياسي)', 'labeled', 'm', 'NotGiven'),
(297, 'Hassan Ali Mansur', 'حسن علی منصور', 'labeled', 'm', 'Tehran'),
(298, 'Hassan Ayat', 'حسن ایت', 'labeled', 'm', 'NotGiven'),
(299, 'Hassan Habibi', 'حسن حبيبي', 'labeled', 'm', 'Tehran'),
(300, 'Hassan Khomeini', 'سيدحسن خميني', 'labeled', 'm', 'Qom'),
(301, 'Hassan Modarres', 'ايت الله مدرس', 'labeled', 'm', 'NotGiven'),
(302, 'Hassan Nayebagha', 'حسن نايب اقا', 'labeled', 'm', 'Tehran'),
(303, 'Hassan Pakravan', 'حسن پاکروان', 'labeled', 'm', 'Tehran'),
(304, 'Hassan Pirnia', 'حسن پيرنيا', 'labeled', 'm', 'Tabriz'),
(305, 'Hassan Rahimpour Azghadi', 'حسن رحيم پور', 'labeled', 'm', 'NotGiven'),
(306, 'Hassan Rouhani', 'حسن فریدون', 'labeled', 'm', 'Sorkheh'),
(307, 'Hassan Sobhani', 'حسن سبحانی', 'labeled', 'm', 'Damghan'),
(308, 'Hassan Taqizadeh', 'تقی‌زاده', 'labeled', 'm', 'Tabriz'),
(309, 'Hassan Zia Zarifi', 'حسن ضیاظریفی', 'labeled', 'm', 'NotGiven'),
(310, 'Haydar Khan e Amo oghli', 'حیدرخان عمواوغلی', 'labeled', 'm', 'NotGiven'),
(311, 'Heydar Moslehi', 'حيدر مصلحي', 'labeled', 'm', 'Shahreza'),
(312, 'Hossein Ala\'', 'حسين علاء', 'labeled', 'm', 'Tehran'),
(313, 'Hossein Dehghan', 'حسين دهقان', 'labeled', 'm', 'Dehaqan'),
(314, 'Hossein Fardoust', 'ارتشبد فردوست', 'labeled', 'm', 'NotGiven'),
(315, 'Hossein Fatemi', 'سیدحسین فاطمی', 'labeled', 'm', 'Nain_iran'),
(316, 'Hossein Kamali', 'حسین کمالی', 'labeled', 'm', 'NotGiven'),
(317, 'Hossein Saffar Harandi', 'صفار هرندي', 'labeled', 'm', 'Gorgan'),
(318, 'Hushang Ansary', 'هوشنگ انصاري', 'labeled', 'm', 'Ahvaz'),
(319, 'Hussein Ali Montazeri', 'آیت آللهٔ حسینعلی منتظری', 'labeled', 'm', 'Najafabad'),
(320, 'Imam Quli Khan', 'امامقلي خان', 'labeled', 'm', 'NotGiven'),
(321, 'Iradj Fazel', 'ايرج فاضل', 'labeled', 'm', 'Ardestan'),
(322, 'Iraj Eskandari', 'ايرج اسكندري', 'labeled', 'm', 'Tehran'),
(323, 'Ismail Mumtaz', 'اسماعيل ممتاز', 'labeled', 'm', 'NotGiven'),
(324, 'Ja\'far Pishevari', 'سيد جعفر پيشهٔ وري', 'labeled', 'm', 'Khalkhal_Ardabil'),
(325, 'Jafar Sharif Emami', 'شریف امامی', 'labeled', 'm', 'Tehran'),
(326, 'Jafar Towfighi', 'جعفر توفيقي داريان', 'labeled', 'm', 'NotGiven'),
(327, 'Jahangir Amuzegar', 'جهانگير آموزگار', 'labeled', 'm', 'NotGiven'),
(328, 'Jalaleddin Farsi', 'جلال الدين فارس', 'labeled', 'm', 'NotGiven'),
(329, 'Jalal Jalalizadeh', 'جلال جلالی‌زاده', 'labeled', 'm', 'NotGiven'),
(330, 'Jamal Karimi Rad', 'جمال كريمي راد', 'labeled', 'm', 'Qazvin'),
(331, 'Jamileh Kadivar', 'جمیله کدیور', 'labeled', 'f', 'Fasa'),
(332, 'Jamshid Amouzegar', 'جمشید اموزگار', 'labeled', 'm', 'Tehran'),
(333, 'Jamshid Bahman Jamshidian', 'جمشید جمشیدیان', 'labeled', 'n', 'NotGiven'),
(334, 'Javad Arianmanesh', 'جواد آرین منش', 'labeled', 'm', 'NotGiven'),
(335, 'Javad Etaat', 'جواد اطاعت', 'labeled', 'n', 'NotGiven'),
(336, 'Kamal Habibollahi', 'کمال الدین میرحبیب اللهی', 'labeled', 'm', 'NotGiven'),
(337, 'Kamal Kharazi', 'كمال خرازي', 'labeled', 'm', 'Tehran'),
(338, 'Kamaloddin Jenab', 'کمال الدین جناب', 'labeled', 'm', 'NotGiven'),
(339, 'Kamran Bagheri Lankarani', 'کامران باقری لنکرانی', 'labeled', 'm', 'Tehran'),
(340, 'Kamran Daneshjoo', 'كامران دانشجو', 'labeled', 'm', 'Damghan'),
(341, 'Karim Sanjabi', 'كريم سنجابي', 'labeled', 'm', 'Kermanshah'),
(342, 'Kazem Rajavi', 'كاظم رجوي', 'labeled', 'm', 'Tabas'),
(343, 'Kazem Sami', 'دکتر سامی', 'labeled', 'm', 'Mashhad'),
(344, 'Kazem Seddiqi', 'حجت الاسلام صديقي', 'labeled', 'm', 'NotGiven'),
(345, 'Keikhosrow Shahrokh', 'کیخسرو شاهرخ', 'labeled', 'm', 'NotGiven'),
(346, 'Keramat Daneshian', 'كرامت دانشيان', 'labeled', 'm', 'NotGiven'),
(347, 'Khadijeh Saqafi', 'خديجهٔ ثقفي', 'labeled', 'f', 'NotGiven'),
(348, 'Khalil maleki', 'خليل ملكي', 'labeled', 'm', 'NotGiven'),
(349, 'Khosro Roozbeh', 'خسرو روزبه', 'labeled', 'm', 'NotGiven'),
(350, 'Khosrow Golsorkhi', 'خسرو گل سرخي', 'labeled', 'm', 'Rasht'),
(351, 'Kuchik Khan', 'سردار جنگل', 'labeled', 'm', 'Rasht'),
(352, 'Levon Davidian', 'لون داويديان', 'labeled', 'm', 'NotGiven'),
(353, 'Mahmoud Ahmadinejad', 'احمدی‌نژاد', 'labeled', 'm', 'Aradan_iran'),
(354, 'Mahmoud Alavi', 'محمود علوي', 'labeled', 'm', 'Lamerd'),
(355, 'Mahmoud Hashemi Shahroudi', 'محمود هاشمي شاهرودي', 'labeled', 'm', 'Najaf'),
(356, 'Mahmoud Hessaby', 'دکتر محمود حسابی', 'labeled', 'm', 'NotGiven'),
(357, 'Mahmoud Jam', 'محمود جم', 'labeled', 'm', 'Tabriz'),
(358, 'Mahmoud Taleghani', 'محمود علايي طالقاني', 'labeled', 'm', 'NotGiven'),
(359, 'Mahmudali Chehregani', 'چهرگاني', 'labeled', 'm', 'NotGiven'),
(360, 'Mahmud Mahmud', 'محمود طرزی', 'labeled', 'm', 'NotGiven'),
(361, 'Majead Ansari', 'مجید انصاری', 'labeled', 'm', 'Kerman'),
(362, 'Majid Namjoo', 'مجید نامجو مطلق', 'labeled', 'm', 'Kerman'),
(363, 'Majid Sharif Vaghefi', 'مجید شریف واقفی', 'labeled', 'm', 'NotGiven'),
(364, 'Manouchehr Eghbal', 'منوچهر اقبال', 'labeled', 'm', 'Mashhad'),
(365, 'Manouchehr Mottaki', 'متکی', 'labeled', 'm', 'Bandar-e_Gaz'),
(366, 'Mansoor Hekmat', 'منصور حکمت', 'labeled', 'm', 'NotGiven'),
(367, 'Manuchehr Eliasi', 'منوچهر الیاسی', 'labeled', 'n', 'NotGiven'),
(368, 'Manutchehr Salimi', 'منوچهر سليمي', 'labeled', 'm', 'NotGiven'),
(369, 'Maryam Farman Farmaian', 'مریم فرمانفرمائیان', 'labeled', 'f', 'NotGiven'),
(370, 'Maryam Rajavi', 'مریم رجوی', 'labeled', 'f', 'Tehran'),
(371, 'Marzieh Hadidchi', 'مرضیه دباغ', 'labeled', 'f', 'NotGiven'),
(372, 'Marzieh Vahid Dastjerdi', 'مرضیهٔ وحید دستجردی', 'labeled', 'f', 'Tehran'),
(373, 'Masoud Mir Kazemi', 'مسعود میر کاظمی', 'labeled', 'm', 'Tehran'),
(374, 'Masoud Pezeshkian', 'مسعود پزشكيان', 'labeled', 'm', 'Tabriz'),
(375, 'Masoumeh Ebtekar', 'خواهر مري', 'labeled', 'f', 'Tehran'),
(376, 'Mass\'oud Mirza Zell e Soltan', 'ظل‌السلطان', 'labeled', 'm', 'NotGiven'),
(377, 'Massoud Rajavi', 'مسعود رجوی', 'labeled', 'm', 'Tabas'),
(378, 'Mehdi Bazargan', 'مهدی بازرگان', 'labeled', 'm', 'Tehran'),
(379, 'Mehdi Ghazanfari', 'مهدی غضنفری', 'labeled', 'n', 'Aligudarz'),
(380, 'Mehdi Hashemi', 'مهدی هاشمی قرمزی', 'labeled', 'm', 'Tehran'),
(381, 'Mehdi Karroubi', 'كروبي', 'labeled', 'm', 'Aligudarz'),
(382, 'Mehdi Qoli Hedayat', 'ميرزا مهدي قلي خان مخبرالسلطنه', 'labeled', 'm', 'Tehran'),
(383, 'Mina Ahadi', 'مينا احدي', 'labeled', 'f', 'Abhar'),
(384, 'Mir Hossein Mousavi', 'ميرحسين موسوي در انتخابات رياست جمهوري ايران (۱۳۸۸)', 'labeled', 'm', 'Khamaneh'),
(385, 'Mirza Abolhassan Khan Ilchi', 'ابوالحسن شیرازی', 'labeled', 'm', 'NotGiven'),
(386, 'Mirza Ali Asghar Khan Amin al Sultan', 'ميرزا علي اصغر امين السلطان', 'labeled', 'n', 'Tehran'),
(387, 'Mirza Hosein Khan Moshir od Dowleh', 'ميرزا حسين خان مشيرالدوله', 'labeled', 'm', 'NotGiven'),
(388, 'Mirza Mehdi Khan Astarabadi', 'میرزا مهدی خان منشی استرآبادی', 'labeled', 'm', 'NotGiven'),
(389, 'Mirza Nasrullah Khan', 'نصرالله مشیرالدوله', 'labeled', 'm', 'NotGiven'),
(390, 'Mohammad Abbasi', 'محمدجلال عباسی شوازی', 'labeled', 'm', 'NotGiven'),
(391, 'Mohammad Ali Abtahi', 'محمد علی ابطحی', 'labeled', 'm', 'Mashhad'),
(392, 'Mohammad Ali Foroughi', 'محمدعلی فروغی', 'labeled', 'm', 'Tehran'),
(393, 'Mohammad Ali Jafari', 'محمد علي جعفري', 'labeled', 'm', 'Yazd'),
(394, 'Mohammad Ali Najafi', 'محمدعلی نجفی (معاون رییس جمهور)', 'labeled', 'm', 'Tehran'),
(395, 'Mohammad Ali Rajai', 'رجایی', 'labeled', 'm', 'Qazvin'),
(396, 'Mohammad Ali Ramin', 'محمد علي رامين', 'labeled', 'm', 'NotGiven'),
(397, 'Mohammad Bagher Ghalibaf', 'محمد باقر قالیباف', 'labeled', 'm', 'Torqabeh'),
(398, 'Mohammad Bagher Kharazi', 'محمد باقر خرازی', 'labeled', 'm', 'NotGiven'),
(399, 'Mohammad Bagher Nobakht', 'محمدباقر نوبخت حقيقي', 'labeled', 'm', 'Rasht'),
(400, 'Mohammad Beheshti', 'شهيد دكتر بهشتي', 'labeled', 'm', 'Isfahan'),
(401, 'Mohammad Farrokhi Yazdi', 'محمد فرخي يزدي', 'labeled', 'm', 'NotGiven'),
(402, 'Mohammad Forouzandeh', 'محمد فروزنده', 'labeled', 'm', 'NotGiven'),
(403, 'Mohammad Gharazi', 'مهندس غرضي', 'labeled', 'm', 'Isfahan'),
(404, 'Mohammad Hasan Khan Qajar', 'محمدحسن خان قاجار', 'labeled', 'm', 'NotGiven'),
(405, 'Mohammad Hossein Adeli', 'محمدحسين عادلي', 'labeled', 'm', 'Ahvaz'),
(406, 'Mohammad Javad Bahonar', 'آيت الله دكتر باهنر', 'labeled', 'm', 'Kerman'),
(407, 'Mohammad Javad Larijani', 'محمد جواد لاريجاني', 'labeled', 'm', 'Najaf'),
(408, 'Mohammad Javad Tondguyan', 'محمدجواد تندگویان', 'labeled', 'm', 'NotGiven'),
(409, 'Mohammad Javad Zarif', 'جواد ظريف', 'labeled', 'm', 'Tehran'),
(410, 'Mohammad Kazem Khorasani', 'اخوند ملا كاظم خراساني', 'labeled', 'm', 'NotGiven'),
(411, 'Mohammad Kazem Shariatmadari', 'ايت الله العظمي شريعتمداري', 'labeled', 'm', 'NotGiven'),
(412, 'Mohammad Khan Qajar', 'محمدحسن خان قاجار', 'labeled', 'm', 'Gorgan'),
(413, 'Mohammad Khatami', 'سید محمدخاتمی', 'labeled', 'm', 'Ardakan'),
(414, 'Mohammad Khazaee', 'عرب‌های ایران', 'labeled', 'm', 'Kashmar'),
(415, 'Mohammad Khiabani', 'محمد خياباني', 'labeled', 'm', 'NotGiven'),
(416, 'Mohammad Khoshchehreh', 'محمد خوش چهره', 'labeled', 'm', 'Tehran'),
(417, 'Mohammad Marandi', 'سید محمد مرندی', 'labeled', 'm', 'NotGiven'),
(418, 'Mohammad Mehdi Zahedi', 'محمد‌مهدی زاهدی', 'labeled', 'm', 'Kerman'),
(419, 'Mohammad Mofatteh', 'محمد مفتح', 'labeled', 'm', 'NotGiven'),
(420, 'Mohammad Mosaddegh', 'محمد مصدق السلطنه', 'labeled', 'm', 'Tehran'),
(421, 'Mohammad Mousavi Khoeiniha', 'موسوی خویینی ها', 'labeled', 'm', 'Qazvin'),
(422, 'Mohammad Nahavandian', 'نهاوندیان', 'labeled', 'm', 'Tehran'),
(423, 'Mohammad Reyshahri', 'ری شهری', 'labeled', 'm', 'Rey_iran'),
(424, 'Mohammad Reza Ameli Tehrani', 'محمد رضا عاملی تهرانی', 'labeled', 'm', 'Tehran'),
(425, 'Mohammad Reza Aref', 'محمدرضا عارف در انتخابات ریاست جمهوری ایران (1392)', 'labeled', 'm', 'Yazd'),
(426, 'Mohammad Reza Bahonar', 'محمد رضا باهنر', 'labeled', 'm', 'Kerman'),
(427, 'Mohammad Reza Eskandari', 'محمدرضا اسكندري', 'labeled', 'n', 'Ahvaz'),
(428, 'Mohammad Reza Khatami', 'محمدرضا خاتمي', 'labeled', 'm', 'Ardakan'),
(429, 'Mohammad Reza Mahdavi Kani', 'محمد رضا مهدوي كني', 'labeled', 'm', 'Tehran'),
(430, 'Mohammad Reza Mirtajodini', 'ميرتاج الديني', 'labeled', 'm', 'Tabriz'),
(431, 'Mohammadreza Nematzadeh', 'محمدرضا نعمت‌زاده', 'labeled', 'm', 'Tabriz'),
(432, 'Mohammad Reza Pahlavi', 'پهلوي دوم', 'labeled', 'm', 'Tehran'),
(433, 'Mohammad Reza Rahimi', 'محمد رضا رحیمی', 'labeled', 'm', 'Serishabad'),
(434, 'Mohammad Sa\'ed', 'محمد ساعد مراغه ای', 'labeled', 'm', 'Maragheh'),
(435, 'Mohammad Saeedikia', 'محمد سعیدی کیا', 'labeled', 'm', 'Isfahan'),
(436, 'Mohammad Salimi', 'محمد سلیمی', 'labeled', 'm', 'NotGiven'),
(437, 'Mohammad Shariatmadari', 'ايت الله العظمي شريعتمداري', 'labeled', 'm', 'NotGiven'),
(438, 'Mohammad Soleimani', 'محمد سلیمانی', 'labeled', 'm', 'Khesht'),
(439, 'Mohammad Taqi Bahar', 'ملک الشعراء بهار', 'labeled', 'm', 'Mashhad'),
(440, 'Mohammad Taqi Mesbah Yazdi', 'مصباح یزدی', 'labeled', 'm', 'Yazd'),
(441, 'Mohammad Tavasoli', 'محمد توسلي', 'labeled', 'm', 'NotGiven'),
(442, 'Mohammad Va\'ez Abaee Khorasani', 'عبایی خراسانی', 'labeled', 'm', 'NotGiven'),
(443, 'Mohammad Vali Khan Tonekaboni', 'سپهدار اعظم تنکابنی', 'labeled', 'm', 'Tonekabon'),
(444, 'Mohammad Yeganeh', 'محمد يگانه', 'labeled', 'm', 'NotGiven'),
(445, 'Mohammed Kazem Yazdi', 'سيد محمدكاظم طباطبايي يزدي', 'labeled', 'm', 'NotGiven'),
(446, 'Mohammed Sharif malekzadeh', 'شریف ملک زاده', 'labeled', 'm', 'Shiraz'),
(448, 'Mohsen Aminzadeh', 'محسن امین‌زاده', 'labeled', 'm', 'NotGiven'),
(449, 'Mohsen Armin', 'محسن آرمين', 'labeled', 'm', 'NotGiven'),
(450, 'Mohsen Hashemi', 'محسن هاشمی رفسنجانی', 'labeled', 'm', 'Kerman'),
(451, 'Mohsen Hashemi Rafsanjani', 'محسن هاشمی رفسنجانی', 'labeled', 'n', 'Kerman'),
(452, 'Mohsen Kadivar', 'محسن كديور', 'labeled', 'm', 'NotGiven'),
(453, 'Mohsen Mirdamadi', 'محسن ميردامادي', 'labeled', 'm', 'Najafabad'),
(454, 'Mohsen Nourbakhsh', 'سيد محسن نوربخش', 'labeled', 'm', 'Isfahan'),
(455, 'Mohsen Pezeshkpour', 'محسن پزشكپور', 'labeled', 'm', 'Tehran'),
(456, 'Mohsen Rafighdoost', 'محسن رفيق دوست', 'labeled', 'm', 'Tehran'),
(457, 'Mohsen Rais', 'ورزشگاه علي محسن', 'labeled', 'm', 'NotGiven'),
(458, 'Mohsen Rezaee', 'سبزوار رضایی', 'labeled', 'm', 'Masjed_Soleyman'),
(459, 'Mohsen Sadr', 'صدرالاشراف', 'labeled', 'm', 'Mahallat'),
(460, 'Mohsen Safaei Farahani', 'صفائي فراهاني', 'labeled', 'm', 'NotGiven'),
(461, 'Mojtaba Khamenei', 'مجتبی خامنه‌ای', 'labeled', 'm', 'NotGiven'),
(462, 'Mojtaba Vahedi', 'مجتبی واحدی', 'labeled', 'm', 'NotGiven'),
(463, 'Morteza Agha Tehrani', 'آقاتهرانی', 'labeled', 'm', 'Tiran_Iran'),
(464, 'Morteza Alviri', 'مرتضی الویری', 'labeled', 'm', 'Tehran'),
(465, 'Morteza Bakhtiari', 'علي مرتضي صمصام بختياري', 'labeled', 'm', 'NotGiven'),
(466, 'Morteza Gholi Khan Hedayat', 'مرتضی‌قلی‌خان هدایت', 'labeled', 'm', 'Tehran'),
(467, 'Morteza Mohammadkhan', 'مرتضي محمدخان', 'labeled', 'm', 'Tehran'),
(468, 'Morteza Motahhari', 'آيت الله مطهري', 'labeled', 'm', 'Fariman'),
(469, 'Morteza Qoli Bayat', 'سهام السلطان بيات', 'labeled', 'm', 'Arak_Iran'),
(470, 'Mostafa Chamran', 'مصطفی چمران ساوجی', 'labeled', 'm', 'Tehran'),
(471, 'Mostafa Kavakebian', 'مصطفی کواکبیان', 'labeled', 'm', 'NotGiven'),
(472, 'Mostafa Moeen', 'مصطفی معین', 'labeled', 'm', 'Najafabad'),
(473, 'Mostafa Mohammad Najjar', 'محمد مصطفي نجار', 'labeled', 'm', 'Tehran'),
(474, 'Mostafa Pourmohammadi', 'مصطفي پورمحمدي', 'labeled', 'm', 'Qom'),
(475, 'Mostafa Tajzadeh', 'مصطفي تاج زاده', 'labeled', 'm', 'Tehran'),
(476, 'Mostowfi ol Mamalek', 'حسن مستوفی‌الممالک', 'labeled', 'm', 'Tehran'),
(477, 'Mozzafar Baghai', 'مظفر بقایی کرمانی', 'labeled', 'm', 'Kerman'),
(478, 'Nader Jahanbani', 'نادر جهانبانی', 'labeled', 'm', 'NotGiven'),
(479, 'Nader Shah', 'نادراباد (هرسین)', 'labeled', 'm', 'Qaem_Shahr'),
(480, 'Naser al Din Shah Qajar', 'ناصرالدينشاه', 'labeled', 'm', 'Tabriz'),
(481, 'Nasr al Din (Yunnan)', 'حمله مغول به برمه', 'labeled', 'm', 'NotGiven'),
(482, 'Nasrollah Entezam', 'نصرالله انتظام وزيري', 'labeled', 'm', 'Tehran'),
(483, 'Nasrollah Jahangard', 'نصرالله جهانگرد', 'labeled', 'm', 'Tehran'),
(484, 'Nasser Hejazi', 'ناصر حجازی', 'labeled', 'm', 'Tehran'),
(485, 'Nasser Moghadam', 'ناصر مقدم', 'labeled', 'm', 'Tehran'),
(486, 'Navvab Safavi', 'مجتبي نواب صفوي', 'labeled', 'm', 'NotGiven'),
(487, 'Nematollah Nassiri', 'سرلشكر نصيري', 'labeled', 'm', 'Semnan_Iran'),
(488, 'Nizam al Mulk', 'نظام الملک طوسی', 'labeled', 'm', 'Tus_Iran'),
(489, 'Noureddin Kianouri', 'نورالدین کیانوری', 'labeled', 'm', 'NotGiven'),
(490, 'Parvaneh Eskandari Forouhar', 'پروانهٔ اسکندری', 'labeled', 'f', 'Tehran'),
(491, 'Parviz Davoodi', 'پرويز داودي', 'labeled', 'm', 'Tehran'),
(492, 'Parviz Fattah', 'سید پرویز فتاح', 'labeled', 'm', 'Urmia'),
(493, 'Parviz Kazemi', 'پرويز كاظمي', 'labeled', 'm', 'Tehran'),
(494, 'Parviz Varjavand', 'پرویز ورجاوند', 'labeled', 'm', 'Tehran'),
(495, 'Patrick Ali Pahlavi', 'علي پاتريك پهلوي', 'labeled', 'm', 'NotGiven'),
(496, 'Pirouz Davani', 'پیروز دوانی', 'labeled', 'm', 'NotGiven'),
(497, 'Piruz Dilanchi', 'پیروز دیلنچی', 'labeled', 'm', 'Tehran'),
(498, 'Qazi Muhammad', 'قاضي محمد', 'labeled', 'm', 'Mahabad'),
(499, 'Rafat Bayat', 'رفعت بیات', 'labeled', 'f', 'Zanjan_iran'),
(500, 'Rahman Dadman', 'رحمان دادمان', 'labeled', 'm', 'Ardabil'),
(501, 'Rashid al Din Hamadani', 'رشید الدین فضل اللهٔ الهٔمذانی', 'labeled', 'm', 'NotGiven'),
(502, 'Rasoul Khadem', 'رسول خادم ازغدي', 'labeled', 'm', 'Mashhad'),
(503, 'Reza malekzadeh', 'رضا ملك زاده', 'labeled', 'm', 'NotGiven'),
(504, 'Reza Pahlavi', 'رضا پهلوي (پسر)', 'labeled', 'm', 'Tehran'),
(505, 'Rezā Shāh', 'رضا خان پهلوي', 'labeled', 'm', 'Alasht'),
(506, 'Reza Sheykholeslam', 'عبدالرضا شيخ الاسلامي', 'labeled', 'm', 'Chalus_iran'),
(507, 'Reza Taghipour', 'رضا تقی‌پور انواری', 'labeled', 'm', 'Maragheh'),
(508, 'Reza Zanjani', 'سید رضا زنجانی', 'labeled', 'm', 'NotGiven'),
(509, 'Rostam Ghasemi', 'رستم قاسمي', 'labeled', 'm', 'NotGiven'),
(510, 'Ruhollah Khatami', 'روح‌الله خاتمی', 'labeled', 'm', 'NotGiven'),
(511, 'Ruhollah Khomeini', 'روح‌الله خميني', 'labeled', 'm', 'Khomeyn'),
(512, 'Saad ad Daula', 'نجفقلی بختیاری', 'labeled', 'm', 'NotGiven'),
(513, 'Sadegh Ghotbzadeh', 'صادق قطب زاده', 'labeled', 'm', 'Isfahan'),
(514, 'Sadegh Khalkhali', 'محمد صادق خلخالی', 'labeled', 'm', 'Khalkhal_Ardabil'),
(515, 'Sadegh Mahsouli', 'محمدصادق محصولي', 'labeled', 'm', 'Urmia'),
(516, 'Sadegh Sharafkandi', 'دكتر شرفكندي', 'labeled', 'm', 'NotGiven'),
(517, 'Sadegh Tabatabai', 'صادق طباطبايي', 'labeled', 'm', 'Qom'),
(518, 'Sadeq Ganji', 'صادق گنجی', 'labeled', 'n', 'NotGiven'),
(519, 'Sadeq Larijani', 'صادق لاریجانی', 'labeled', 'm', 'Najaf'),
(520, 'Saeed Emami', 'سعيدامامي', 'labeled', 'm', 'NotGiven'),
(521, 'Saeed Hajjarian', 'حجاريان', 'labeled', 'm', 'Shiraz'),
(522, 'Saeed Jalili', 'سعيد جليلي', 'labeled', 'm', 'Mashhad'),
(523, 'Saeed Shirkavand', 'سعید شیرکوند', 'labeled', 'm', 'NotGiven'),
(524, 'Safdar Hosseini', 'سید صفدر حسینی', 'labeled', 'm', 'NotGiven'),
(525, 'Sattar Khan', 'سردار ملي', 'labeled', 'm', 'Turkestan'),
(526, 'Sayyid Ajjal Shams al Din Omar', 'سيد اجل شمس الدين', 'labeled', 'm', 'NotGiven'),
(527, 'Sayyid Hossein Ardabili', 'سیدحسین اردبیلی', 'labeled', 'm', 'NotGiven'),
(528, 'Shahriar Shafiq', 'شهریار شفیق', 'labeled', 'm', 'NotGiven'),
(529, 'Shamseddin Hosseini', 'سید شمس‌الدین حسینی', 'labeled', 'm', 'Tonekabon'),
(530, 'Shapour Bakhtiar', 'دکتر شاپور بختیار', 'labeled', 'm', 'Izeh'),
(531, 'Sheikh Ali khan Zangeneh', 'شیخ علی خان زنگنه', 'labeled', 'm', 'NotGiven'),
(532, 'Sheikh Fazlollah Noori', 'شيخ فضل الله', 'labeled', 'm', 'NotGiven'),
(533, 'Shirin Ebadi', 'عبادي', 'labeled', 'f', 'Hamedan'),
(534, 'Shivan Qaderi', 'شوانه قادري', 'labeled', 'm', 'NotGiven'),
(535, 'Simko Shikak', 'اسماعیل آغا سمکو', 'labeled', 'm', 'NotGiven'),
(536, 'Tahmasb Mazaheri', 'طهماسب مظاهری', 'labeled', 'm', 'Tehran'),
(537, 'Taqi Arani', 'دكتر اراني', 'labeled', 'm', 'NotGiven'),
(538, 'Teymur Bakhtiar', 'سپهبد تيمور بختيار', 'labeled', 'm', 'Shahr-e_Kord'),
(539, 'Vosough od Dowleh', 'حسن وثوق', 'labeled', 'm', 'Tehran'),
(540, 'Yadollah Sahabi', 'دکتر یدالله سحابی', 'labeled', 'm', 'Tehran'),
(541, 'Yahya Ale Eshaq', 'يحيي ال اسحاق', 'labeled', 'm', 'Qom'),
(542, 'Yahya Rahim Safavi', 'سیدیحیی صفوی', 'labeled', 'm', 'Isfahan'),
(543, 'Yeprem Khan', 'یپرم خان ارمنی', 'labeled', 'm', 'NotGiven'),
(544, 'Yousef Saanei', 'ايت الله يوسف صانعي', 'labeled', 'm', 'NotGiven'),
(545, 'Zia\'eddin Tabatabaee', 'سیدضیاالدین طباطبائی', 'labeled', 'm', 'Shiraz'),
(546, 'ar/إبراهيم مردوخي', 'إبراهيم مردوخي', 'labeled', 'n', 'NotGiven'),
(547, 'ar/أمير عباس هويدا', 'أمير عباس هويدا', 'labeled', 'n', 'NotGiven'),
(548, 'ar/سياماك ميرسيدي', 'سياماك ميرسيدي', 'labeled', 'n', 'NotGiven'),
(549, 'ar/عبد الرحمن بيراني', 'عبد الرحمن بيراني', 'labeled', 'n', 'NotGiven'),
(550, 'ar/محمود ويسي', 'محمود ويسي', 'labeled', 'n', 'NotGiven'),
(551, 'Abdol Ali Badrei', 'عبدالعلی بدری', 'translated', 'm', 'NotGiven'),
(552, 'Abdolmajid Pirzadeh Jahromi', 'عبدالمجید پیرزاده جهرمی', 'translated', 'm', 'NotGiven'),
(553, 'Abolghasem Khazali', 'ابوالقاسم خزعلی', 'translated', 'm', 'NotGiven'),
(554, 'Abolhassan Diba', 'ابوالحسن دیبا', 'translated', 'm', 'NotGiven'),
(555, 'Ahmad Bahar', 'احمد بهار', 'translated', 'm', 'NotGiven'),
(556, 'Ahmad Hussein Adl', 'احمد حسین عادل', 'translated', 'm', 'NotGiven'),
(557, 'Ahmad Motamedi', 'احمد معتمدی', 'translated', 'm', 'NotGiven'),
(558, 'Ahmad Sadegh Bonab', 'احمد صادق بناب', 'translated', 'm', 'NotGiven'),
(559, 'Ahmad Salamatian', 'احمد سلیمانتیان', 'translated', 'm', 'NotGiven'),
(560, 'Ali Abbaspoor Tehrani Fard', 'علی عباسپور تهرانی فرد', 'translated', 'm', 'NotGiven'),
(561, 'Ali Aghazadeh Dafsari', 'علی آقازاده دافساری', 'translated', 'm', 'NotGiven'),
(562, 'Ali Akbar Moinfar', 'علی اکبر موینفار', 'translated', 'm', 'NotGiven'),
(563, 'Ali Akbar Siassi', 'علی اکبر سیسی', 'translated', 'm', 'NotGiven'),
(564, 'Ali Akbar Zargham', 'علی اکبر زرقام', 'translated', 'm', 'NotGiven'),
(565, 'Ali Khatami', 'علی خاتمی', 'translated', 'm', 'Arak_Iran'),
(566, 'Ali Mohammad Besharati', 'علی محمد بشارتاتی', 'translated', 'm', 'NotGiven'),
(567, 'Alireza Sheikhattar', 'علیرضا شیخترار', 'translated', 'm', 'NotGiven'),
(568, 'Amir Hossein Rabii', 'امیر حسین ربیعی', 'translated', 'm', 'NotGiven'),
(569, 'Amir Nosrat\'ollah Balakhanlou', 'امیر نصرت الله باخانلو', 'translated', 'm', 'Tehran'),
(570, 'Asadollah Abbasi', 'اسدالله عباسی', 'translated', 'm', 'NotGiven'),
(571, 'Azadeh Shafiq', 'آزاده شفیق', 'translated', 'f', 'NotGiven'),
(572, 'de/Abolqasem Naser al Molk', 'ابوالقاسم ناصر الملک', 'translated', 'n', 'NotGiven'),
(573, 'de/Alinaghi Alikhani', 'آلینقی القیانی', 'translated', 'n', 'NotGiven'),
(574, 'de/Ebrahim Alam', 'ابراهیم الام', 'translated', 'n', 'NotGiven'),
(575, 'de/Mohammed Hossein Saif Qazi', 'محمد حسین سیف قاضی', 'translated', 'n', 'NotGiven'),
(576, 'de/Najaf Qoli Khan Samsam al Saltaneh', 'نجف قلی خان Samsam al Saltaneh', 'translated', 'n', 'NotGiven'),
(577, 'de/Parviz Nikkhah', 'پرویز نیکخواه', 'translated', 'n', 'NotGiven'),
(578, 'de/Zabihollah Bakhshi', 'زبیح الله بهخشی', 'translated', 'n', 'NotGiven'),
(579, 'Ebrahim Azizi', 'ابراهیم عزیزی', 'translated', 'm', 'NotGiven'),
(580, 'Elham Aminzadeh', 'الهام امینزاده', 'translated', 'f', 'NotGiven'),
(581, 'es/Mehranguiz Manoutchehrian', 'من / مهرانگیز منوتیچریان', 'translated', 'n', 'NotGiven'),
(582, 'Fereidon Hasanvand', 'فریدون حسنوند', 'translated', 'm', 'NotGiven'),
(583, 'Fereydoun Djam', 'فریدون دم', 'translated', 'm', 'NotGiven'),
(584, 'fr/Abdol Hossein Hamzavi', 'عبدالحسین حمزوی', 'translated', 'n', 'NotGiven'),
(585, 'fr/Abdollah Behbahani', 'عبدالله بهبهانی', 'translated', 'n', 'NotGiven'),
(586, 'fr/Abdol Rahman Faramarzi', 'عبدالرحمان فرامرزی', 'translated', 'n', 'NotGiven'),
(587, 'fr/Fariba Hachtroudi', 'فريبا هچرتودي', 'translated', 'n', 'NotGiven'),
(588, 'fr/Farrokh Rou Parsa', 'فرخ رو پارسا', 'translated', 'n', 'NotGiven'),
(589, 'fr/Mehdi Gholi Hedayat', 'مهدی قلی هدایت', 'translated', 'n', 'NotGiven'),
(590, 'fr/Reza Sardar Fakher Hekmat', 'رضا سردار فخره حکمت', 'translated', 'n', 'NotGiven'),
(591, 'fr/Taher Movassaghian', 'taher muvasaghian', 'translated', 'n', 'NotGiven'),
(592, 'fr/Yishmael Movassaghian', 'ییشماال موثققیان', 'translated', 'n', 'NotGiven'),
(593, 'Ghiyathu\'d Din ibn Rashid\'ud Din', 'غیاثوود دین ابن رشید دین', 'translated', 'm', 'NotGiven'),
(594, 'Gholam Hossein Jahanshahi', 'غلامحسین جهانشاهی', 'translated', 'm', 'NotGiven'),
(595, 'Gholāmḥusayn Ṣefātī Dezfūlī', 'غلامحسین رسوات دزفولی', 'translated', 'm', 'NotGiven'),
(596, 'Hamid Reza Chitgar', 'حامد رضا چیتگر', 'translated', 'm', 'NotGiven'),
(597, 'Hamid Reza Katouzian', 'حمید رضا کاتوزیان', 'translated', 'm', 'NotGiven'),
(598, 'Hassan Rahnavardi', 'حسن رهنوردی', 'translated', 'm', 'NotGiven'),
(599, 'Hassan Shariatmadari', 'حسن شریعتمداری', 'translated', 'm', 'NotGiven'),
(600, 'Heidar Arfaa', 'حیدر آرفا', 'translated', 'm', 'NotGiven'),
(601, 'Hekmat E Shirazi', 'حکمت الی شیرازی', 'translated', 'm', 'NotGiven'),
(602, 'Homa Arjomand', 'هومه ارجمند', 'translated', 'f', 'NotGiven'),
(603, 'Hosein Dadgar', 'حسین دادگر', 'translated', 'm', 'NotGiven'),
(604, 'Hossein Ghods Nakhai', 'حسین قدس نقی', 'translated', 'm', 'NotGiven'),
(605, 'Hossein Hashemi', 'حسین هاشمی', 'translated', 'm', 'NotGiven'),
(606, 'Hossein Marashi', 'حسین مرعشی', 'translated', 'm', 'Rafsanjan'),
(607, 'Hossein Namazi', 'حسین نعمتی', 'translated', 'm', 'NotGiven'),
(608, 'Hossein Navab', 'حسین نواب', 'translated', 'm', 'NotGiven'),
(609, 'Hushang Hamidi', 'حسام حمیدی', 'translated', 'm', 'NotGiven'),
(610, 'Hussein Sheikholeslam', 'حسین شیخ الاسلام', 'translated', 'm', 'NotGiven'),
(611, 'Isa Kalantari', 'اسما کلانتری', 'translated', 'm', 'NotGiven'),
(612, 'Issa Kalantari', 'عیسا کلانتری', 'translated', 'm', 'NotGiven'),
(613, 'Jaime Ornelas Camacho', 'Jaime Ornelas Camacho', 'translated', 'm', 'NotGiven'),
(614, 'Javad Shahrestani', 'جواد شهرستانی', 'translated', 'm', 'NotGiven'),
(615, 'Kamal Daneshyar', 'کمال دانشیار', 'translated', 'n', 'NotGiven'),
(616, 'Karim Khodapanahi', 'کریم خداپناهی', 'translated', 'm', 'NotGiven'),
(617, 'Kasra Nikzad', 'کسرا نیکزاد', 'translated', 'm', 'NotGiven'),
(618, 'Kazem Jalali', 'کاظم جلالی', 'translated', 'm', 'NotGiven'),
(619, 'Kazem Vaziri Hamaneh', 'کاظم وزیری هامانه', 'translated', 'm', 'Yazd'),
(620, 'Mahmoud Djam', 'محمود دیم', 'translated', 'm', 'Tabriz'),
(621, 'Mahmoud Farshidi', 'محمود فرشیدی', 'translated', 'm', 'NotGiven'),
(622, 'Manouchehr Ganji', 'منوچهر گنجی', 'translated', 'm', 'Tehran'),
(623, 'Maurice Motamed', 'موریس معتمد', 'translated', 'm', 'NotGiven'),
(624, 'Mehrangiz Dowlatshahi', 'مهرانگیز داولشتهای', 'translated', 'f', 'NotGiven'),
(625, 'Mirza Ali Asghar Khan Amin al Soltan', 'میرزا علی اصغر خان امین سلطان', 'translated', 'm', 'Tehran'),
(626, 'Mirza Hassan Khan Esfandiary', 'میرزا حسن خان اسفندیاری', 'translated', 'm', 'NotGiven'),
(627, 'Mohammad Ali Hosseini', 'محمد علی حسینی', 'translated', 'm', 'NotGiven'),
(628, 'Mohammad Ardakani', 'محمد اردکانی', 'translated', 'm', 'NotGiven'),
(629, 'Mohammad Bahrami', 'محمد بهرامی', 'translated', 'n', 'NotGiven'),
(630, 'Mohammad Beheshti Shirazi', 'محمد بهشتی شیرازی', 'translated', 'm', 'NotGiven'),
(631, 'Mohammad Hosseini (politician)', 'محمد حسینی (سیاستمدار)', 'translated', 'm', 'NotGiven'),
(632, 'Mohammad Hossein Jalali', 'محمد حسین جلالی', 'translated', 'm', 'NotGiven'),
(633, 'Mohammad Hossein Khoshvaght', 'محمد حسین خوشنق', 'translated', 'm', 'NotGiven'),
(634, 'Mohammad Jahromi', 'محمد جوهرمی', 'translated', 'm', 'NotGiven'),
(635, 'Mohammad Montazeri', 'محمد منتظری', 'translated', 'm', 'NotGiven'),
(636, 'Mohammad Reza Hekmat', 'محمد رضا حکمت', 'translated', 'm', 'NotGiven'),
(637, 'Morteza Zarringol', 'مرتضی زرینگوول', 'translated', 'm', 'NotGiven'),
(638, 'Mostafa Mir Salim', 'مصطفی میر سلیم', 'translated', 'm', 'NotGiven'),
(639, 'Mousa Chegini', 'موسا چگینی', 'translated', 'm', 'NotGiven'),
(640, 'Mousa Namjoo', 'موسا نامجو', 'translated', 'm', 'NotGiven'),
(641, 'Mousa Qorbani', 'موسی قربانی', 'translated', 'm', 'NotGiven'),
(642, 'Mozaffar Alam', 'مظفر الام', 'translated', 'm', 'NotGiven'),
(643, 'Nasser Minachi', 'ناصر میناکی', 'translated', 'm', 'NotGiven'),
(644, 'Nasser Yeganeh', 'ناصر یگانه', 'translated', 'm', 'NotGiven'),
(645, 'nl/Ali Razmara', 'nl / Ali Razmara', 'translated', 'n', 'NotGiven'),
(646, 'nl/Jafaar Sharif Emami', 'nl / جعفر شريف امامی', 'translated', 'n', 'NotGiven'),
(647, 'Nosrat ollah Jahanshahlou', 'نصرت توره جهانشاهلو', 'translated', 'm', 'NotGiven'),
(648, 'Parviz C. Radji', 'پرویز رادجی', 'translated', 'm', 'NotGiven'),
(651, 'Rahimkhan Chalabianloo', 'رحیمخان چلبیانلو', 'translated', 'm', 'NotGiven'),
(652, 'Rasoul Movahedian', 'رسول موحدین', 'translated', 'm', 'NotGiven'),
(653, 'Reza Alamouti', 'رضا الاموتی', 'translated', 'm', 'NotGiven'),
(654, 'Roozbeh Farahanipour', 'روزبه فراهانی پور', 'translated', 'm', 'NotGiven'),
(655, 'Sadeq Khalilian', 'صادق خلیلیان', 'translated', 'm', 'NotGiven'),
(656, 'Safdar Rahmat Abadi', 'صفدر رحمت آبادی', 'translated', 'm', 'NotGiven'),
(657, 'Sedigh Kamangar', 'Sedigh Kamangar', 'translated', 'm', 'NotGiven'),
(658, 'Shah Seyyed Ali Kazemi', 'شاه سید علی کاظمی', 'translated', 'm', 'NotGiven'),
(659, 'Soheila Darvishkohan', 'سهیلا درویشکانان', 'translated', 'f', 'NotGiven'),
(660, 'Yadollah Javani', 'يادولله جاوانی', 'translated', 'm', 'NotGiven'),
(661, 'Zahra Shojaei', 'زهرا شجاعی', 'translated', 'n', 'NotGiven'),
(662, 'Ziaeddin Tavakkoli', 'زیا الدین توکلی', 'translated', 'm', 'NotGiven'),
(663, 'Zohreh Akhyani', 'زهره آخانی', 'translate', 'f', 'NotGiven');

-- --------------------------------------------------------

--
-- Table structure for table `politicians_university`
--

CREATE TABLE `politicians_university` (
  `politician_id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `politicians_university`
--

INSERT INTO `politicians_university` (`politician_id`, `university_id`) VALUES
(10, 7),
(12, 12),
(16, 13),
(20, 10),
(46, 14),
(52, 2),
(54, 15),
(62, 1),
(63, 16),
(64, 17),
(65, 1),
(72, 1),
(86, 5),
(89, 18),
(93, 1),
(94, 1),
(100, 1),
(101, 19),
(103, 20),
(107, 21),
(114, 1),
(117, 10),
(120, 19),
(127, 1),
(132, 1),
(134, 22),
(135, 23),
(145, 24),
(146, 25),
(149, 1),
(151, 2),
(155, 26),
(158, 1),
(185, 8),
(216, 1),
(232, 27),
(247, 28),
(256, 29),
(263, 1),
(265, 10),
(266, 10),
(268, 18),
(270, 1),
(271, 30),
(277, 1),
(294, 2),
(297, 1),
(300, 31),
(306, 32),
(307, 1),
(311, 1),
(313, 1),
(315, 1),
(317, 1),
(325, 1),
(327, 1),
(330, 1),
(332, 33),
(337, 1),
(339, 5),
(341, 34),
(343, 25),
(356, 36),
(364, 1),
(374, 1),
(375, 10),
(378, 37),
(380, 2),
(381, 1),
(384, 8),
(391, 7),
(392, 11),
(393, 1),
(394, 2),
(397, 10),
(400, 1),
(403, 1),
(405, 1),
(406, 1),
(409, 38),
(413, 1),
(414, 39),
(418, 10),
(420, 40),
(422, 41),
(425, 1),
(426, 1),
(428, 1),
(431, 42),
(433, 1),
(434, 43),
(446, 44),
(453, 1),
(454, 1),
(458, 1),
(464, 2),
(467, 45),
(470, 1),
(472, 5),
(483, 19),
(491, 46),
(492, 9),
(494, 1),
(500, 1),
(509, 2),
(517, 3),
(521, 1),
(522, 4),
(524, 5),
(533, 1),
(591, 1),
(622, 6),
(644, 1);

-- --------------------------------------------------------

--
-- Table structure for table `politician_party`
--

CREATE TABLE `politician_party` (
  `politician_id` int(11) NOT NULL,
  `party_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `politician_party`
--

INSERT INTO `politician_party` (`politician_id`, `party_id`) VALUES
(5, 31),
(5, 32),
(13, 49),
(16, 15),
(20, 22),
(21, 2),
(26, 31),
(26, 32),
(39, 34),
(44, 13),
(46, 18),
(50, 11),
(60, 2),
(64, 18),
(69, 3),
(71, 22),
(72, 49),
(73, 3),
(103, 28),
(107, 48),
(114, 31),
(114, 32),
(117, 11),
(120, 24),
(125, 29),
(131, 35),
(132, 7),
(135, 31),
(135, 32),
(142, 11),
(145, 13),
(148, 34),
(149, 62),
(151, 11),
(155, 19),
(158, 48),
(183, 31),
(183, 32),
(190, 31),
(190, 32),
(195, 31),
(195, 32),
(204, 31),
(204, 32),
(212, 31),
(212, 32),
(240, 31),
(240, 32),
(246, 36),
(248, 31),
(248, 32),
(256, 48),
(258, 49),
(259, 49),
(263, 51),
(265, 1),
(266, 11),
(268, 21),
(269, 31),
(269, 32),
(276, 18),
(285, 18),
(294, 11),
(295, 13),
(297, 36),
(299, 11),
(306, 3),
(315, 31),
(315, 32),
(325, 48),
(329, 19),
(332, 48),
(341, 31),
(341, 32),
(343, 13),
(353, 1),
(357, 10),
(361, 2),
(365, 22),
(370, 42),
(375, 19),
(377, 42),
(378, 13),
(381, 34),
(391, 2),
(392, 49),
(395, 21),
(397, 22),
(400, 21),
(406, 21),
(420, 31),
(420, 32),
(421, 2),
(422, 18),
(425, 19),
(426, 22),
(428, 19),
(429, 3),
(433, 51),
(441, 13),
(453, 19),
(459, 50),
(459, 81),
(459, 82),
(464, 11),
(467, 21),
(472, 19),
(474, 3),
(475, 19),
(476, 7),
(482, 48),
(483, 19),
(491, 1),
(494, 31),
(494, 32),
(498, 9),
(513, 31),
(513, 32),
(514, 53),
(515, 14),
(517, 13),
(521, 19),
(522, 14),
(530, 31),
(530, 32),
(539, 7),
(540, 13),
(606, 11),
(620, 10);

-- --------------------------------------------------------

--
-- Table structure for table `protests`
--

CREATE TABLE `protests` (
  `id` int(11) NOT NULL,
  `protest_tag` varchar(256) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `protests`
--

INSERT INTO `protests` (`id`, `protest_tag`, `fa_label`, `labeledOrTranslated`, `year`) VALUES
(1, '2009–10 Iranian election protests', 'حوادث پس از انتخابات رياست جمهوري سال ۱۳۸۸', 'labeled', 2009),
(2, '2011–12 Iranian protests', 'اعتراضات جنبش سبز در ۱ اسفند ۱۳۸۹', 'labeled', 2011),
(3, 'Ashura protests', 'راهپيمايي حسينيه جماران', 'labeled', 0),
(4, 'Black Friday (1978)', 'قيام ۱۷ شهريور', 'labeled', 1978),
(5, 'December 30 2009 pro government rally in Iran', 'تظاهرات هواداران جمهوری اسلامی در ایران (۹ دی ۱۳۸۸)', 'labeled', 2009),
(6, 'fa/اعتراضات جنبش سبز در ۱۷ اسفند ۱۳۸۹', 'اعتراضات جنبش سبز در ۱۷ اسفند ۱۳۸۹', 'labeled', 2011),
(7, 'fa/تظاهرات ۳۰ خرداد ۱۳۶۰', 'قيام 30 خرداد 1360', 'labeled', 1981),
(8, 'fa/تظاهرات اعتراضی معترضان به انتخابات در ایران (۳۰ خرداد ۱۳۸۸)', 'تظاهرات اعتراضي معترضان به انتخابات در ايران (۳۰ خرداد ۱۳۸۸)', 'labeled', 2009),
(9, 'fa/تظاهرات خرم‌آباد (شهریور ۱۳۷۹)', 'تظاهرات خرم‌آباد (شهریور 1379)', 'labeled', 2000),
(10, 'fa/رویدادهای ۱۴ اسفند ۱۳۵۹', 'قائله ۱۴ اسفند', 'labeled', 1981),
(11, 'Iranian Green Movement', 'جنبش سبز ایران', 'labeled', 2009),
(12, 'Iranian Revolution', 'انقلاب فرهنگی ایران', 'labeled', 0),
(13, 'Iran student protests, July 1999', 'حمله به کوی دانشگاه تهران (۱۸ تیر ۱۳۸۷)', 'labeled', 1999),
(14, 'June 5 1963 demonstrations in Iran', 'قیام 15 خرداد', 'labeled', 1963),
(15, 'Timeline of the 2009 Iranian election protests', 'اعتراضات به انتخابات رياست جمهوري سال 1388 ايران', 'labeled', 2009),
(16, '2005 Ahvaz unrest', '2005 ناآرامی اهواز', 'translated', 2005),
(17, '2011 Khuzestan protests', '2011 اعتراضات خوزستان', 'translated', 2011),
(18, 'Tabriz University\'s student movement, July 1999', 'جنبش دانشجویی دانشگاه تبریز، جولای 1999', 'translated', 1999);

-- --------------------------------------------------------

--
-- Table structure for table `treaties`
--

CREATE TABLE `treaties` (
  `id` int(11) NOT NULL,
  `treaty_tag` varchar(256) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `treaties`
--

INSERT INTO `treaties` (`id`, `treaty_tag`, `fa_label`, `labeledOrTranslated`) VALUES
(1, '1975 Algiers Agreement', 'معاهده الجزاير', 'labeled'),
(2, 'Algiers Accords', 'قرارداد ۱۹۸۱ الجزایر', 'labeled'),
(3, 'Anglo Persian Agreement', 'قرارداد استعماري 1919', 'labeled'),
(4, 'Central Treaty Organization', 'پیمان بغداد', 'labeled'),
(5, 'Convention on the Conservation of Migratory Species of Wild Animals', 'کنوانسیون بن', 'labeled'),
(6, 'Convention on the Rights of the Child', 'معاهده حقوق کودک', 'labeled'),
(7, 'fa/پیمان اتحاد سه‌گانه', 'پیمان اتحاد سه گانه', 'labeled'),
(8, 'fa/قرارداد رژی', 'قرارداد رژی', 'labeled'),
(9, 'fa/قرارداد گلداسمیت', 'قرارداد گلداسمیت', 'labeled'),
(10, 'fa/معاهده آب رود هیرمند', 'معاهده اب رود هيرمند', 'labeled'),
(11, 'Kyoto Protocol', 'تفاهم‌نامه کیوتو', 'labeled'),
(12, 'MARPOL 73/78', 'مارپل 78/73', 'labeled'),
(13, 'Peace of Amasya', 'پيمان صلح آماسيه', 'labeled'),
(14, 'Russo Persian Treaty of Friendship (1921)', 'قرارداد ايران و شوروي ۱۹۲۱', 'labeled'),
(15, 'TIR Convention', 'كارنهٔ تير', 'labeled'),
(16, 'Treaty of Akhal', 'معاهده آخال', 'labeled'),
(17, 'Treaty of Finckenstein', 'عهدنامه فینکنشتاین', 'labeled'),
(18, 'Treaty of Gulistan', 'پیمان‌نامه گلستان', 'labeled'),
(19, 'Treaty of Saadabad', 'پیمان سعداباد', 'labeled'),
(20, 'Treaty of Turkmenchay', 'عهدنامه تركمنچاي', 'labeled'),
(21, 'Treaty of Zuhab', 'عهدنامه زهاب', 'labeled'),
(22, 'Agreement for the Establishment of the Indian Ocean Tuna Commission', 'توافق نامه برای ایجاد کمیسیون تونل اقیانوس هند', 'translated'),
(23, 'Agreement to establish the South Centre', 'توافق برای ایجاد مرکز جنوبی', 'translated'),
(24, 'Basel Convention', 'کنوانسیون بازل', 'translated'),
(25, 'Cartagena Protocol on Biosafety', 'پروتکل Cartagena در مورد ایمنی بیوشیمی', 'translated'),
(26, 'Charter of the Indian Ocean Rim Association for Regional Co operation', 'منشور انجمن اقیانوس هند برای همکاری منطقه ای', 'translated'),
(27, 'Chemical Weapons Convention', 'کنوانسیون سلاح های شیمیایی', 'translated'),
(28, 'CMR Convention', 'کنوانسیون CMR', 'translated'),
(29, 'Constitution of the Asia Pacific Telecommunity', 'قانون اساسی کمپنی آسیا و اقیانوس آرام', 'translated'),
(30, 'Constitution of the International Organization for Migration', 'قانون اساسی سازمان بین المللی مهاجرت', 'translated'),
(31, 'Constitution of the United Nations Industrial Development Organization', 'قانون اساسی سازمان توسعه صنعتی سازمان ملل متحد', 'translated'),
(32, 'Convention concerning International Carriage by Rail', 'کنوانسیون بین المللی حمل و نقل ریلی', 'translated'),
(33, 'Convention establishing the Multilateral Investment Guarantee Agency', 'کنوانسیون آژانس تضمین سرمایه گذاری چند جانبه', 'translated'),
(34, 'Convention for the Safeguarding of the Intangible Cultural Heritage', 'کنوانسیون برای حفاظت از میراث فرهنگی نامحدود', 'translated'),
(35, 'Convention for the Suppression of Unlawful Acts against the Safety of Maritime Navigation', 'کنوانسیون برای سرکوب اعمال غیر قانونی علیه ایمنی ناوگان دریایی', 'translated'),
(36, 'Convention on Assistance in the Case of a Nuclear Accident or Radiological Emergency', 'کنوانسیون کمک در مورد حادثه هسته ای یا اورژانس رادیولوژیک', 'translated'),
(37, 'Convention on Biological Diversity', 'کنوانسیون تنوع زیستی', 'translated'),
(38, 'Convention on Early Notification of a Nuclear Accident', 'کنوانسیون در مورد اخطار زودهنگام یک حادثه هسته ای', 'translated'),
(39, 'Convention on Psychotropic Substances', 'کنوانسیون مواد روانگردان', 'translated'),
(40, 'Convention on the International Mobile Satellite Organization', 'کنوانسیون سازمان بین المللی ماهواره ای موبایل', 'translated'),
(41, 'Convention on the Rights of Persons with Disabilities', 'کنوانسیون حقوق افراد معلول', 'translated'),
(42, 'Convention relating to International Exhibitions', 'کنوانسیون مربوط به نمایشگاه های بین المللی', 'translated'),
(43, 'Framework Convention for the Protection of the Marine Environment of the Caspian Sea', 'کنوانسیون چارچوب حفاظت از محیط دریایی دریای خزر', 'translated'),
(44, 'Hostages Convention', 'قرارداد گروگان ها', 'translated'),
(45, 'Human Resources Development Convention, 1975', 'کنوانسیون توسعه منابع انسانی، 1975', 'translated'),
(46, 'Intergovernmental Agreement on the Asian Highway Network', 'توافقنامه بین دولتی در شبکه بزرگراه آسیا', 'translated'),
(47, 'International Convention against Apartheid in Sports', 'کنوانسیون بین المللی آپارتاید در ورزش', 'translated'),
(48, 'International Convention against Doping in Sport', 'کنوانسیون بین المللی ضد دوپینگ در ورزش', 'translated'),
(49, 'International Convention for Safe Containers', 'کنوانسیون بین المللی کانتینرهای ایمنی', 'translated'),
(50, 'International Convention on Civil Liability for Oil Pollution Damage', 'کنوانسیون بین المللی مسئولیت مدنی برای آسیب آلودگی نفت', 'translated'),
(51, 'International Convention on Salvage', 'کنوانسیون بین المللی نجات', 'translated'),
(52, 'International Convention on the Control of Harmful Anti fouling Systems on Ships', 'کنوانسیون بین المللی کنترل سیستم های ضد انعطاف پذیر در کشتی ها', 'translated'),
(53, 'International Convention on the Harmonization of Frontier Controls of Goods', 'کنوانسیون بین المللی هماهنگی کنترل های مرزی کالاها', 'translated'),
(54, 'International Grains Agreement', 'توافق نامه بین المللی غلات', 'translated'),
(55, 'International Plant Protection Convention', 'کنوانسیون بین المللی حفاظت از گیاهان', 'translated'),
(56, 'International Regulations for Preventing Collisions at Sea', 'مقررات بین المللی برای جلوگیری از برخورد در دریا', 'translated'),
(57, 'International Sugar Agreement', 'توافق نامه شکر بین المللی', 'translated'),
(58, 'Madrid Agreement', 'توافقنامه مادرید', 'translated'),
(59, 'Madrid Protocol', 'پروتکل مادرید', 'translated'),
(60, 'Montreal Protocol', 'پروتکل مونترال', 'translated'),
(61, 'Protection of Diplomats Convention', 'حفاظت از کنوانسیون دیپلمات ها', 'translated'),
(62, 'Protocol amending the Single Convention on Narcotic Drugs', 'پروتکل تصویب کنوانسیون منع مصرف مواد مخدر', 'translated'),
(63, 'Protocol for the Suppression of Unlawful Acts of Violence at Airports', 'پروتکل برای سرکوب اعمال غیرقانونی خشونت در فرودگاه ها', 'translated'),
(64, 'Rotterdam Convention', 'کنفرانس Rotterdam', 'translated'),
(65, 'Siberian Crane Memorandum of Understanding', 'تفاهم نامه سایبری جرثقیل', 'translated'),
(66, 'Single Convention on Narcotic Drugs', 'کنوانسیون تنها درباره مواد مخدر', 'translated'),
(67, 'SOLAS Convention', 'کنوانسیون SOLAS', 'translated'),
(68, 'Statute of the International Renewable Energy Agency', 'اساسنامه آژانس بین المللی انرژی تجدید پذیر', 'translated'),
(69, 'STCW Convention', 'کنوانسیون STCW', 'translated'),
(70, 'Stockholm Convention on Persistent Organic Pollutants', 'کنوانسیون استکهلم درباره آلودگی های پایدار آلی', 'translated'),
(71, 'Straddling Fish Stocks Agreement', 'توافق نامه سهام ماهیانه بین المللی', 'translated'),
(72, 'Terrorist Financing Convention', 'کنوانسیون مالی تروریستی', 'translated'),
(73, 'Trans Asian Railway Network Agreement', 'توافق نامه شبکه حمل و نقل ریلی آسیا', 'translated'),
(74, 'UNESCO Convention on the Protection of the Underwater Cultural Heritage', 'کنوانسیون یونسکو در مورد حفاظت از میراث فرهنگی زیر آب', 'translated'),
(75, 'UNIDROIT Convention on Stolen or Illegally Exported Cultural Objects', 'کنوانسیون UNIDROIT در مورد اشیای فرهنگی صادر شده یا غیرقانونی صادر شده', 'translated'),
(76, 'United Nations Convention against Corruption', 'کنوانسیون سازمان ملل علیه فساد اداری', 'translated'),
(77, 'United Nations Convention to Combat Desertification', 'کنوانسیون سازمان ملل برای مبارزه با بیابان زایی', 'translated'),
(78, 'United Nations Framework Convention on Climate Change', 'کنوانسیون چارچوب سازمان ملل در مورد تغییرات اقلیمی', 'translated'),
(79, 'Vienna Convention for the Protection of the Ozone Layer', 'کنوانسیون وین برای حفاظت از لایه اوزون', 'translated'),
(80, 'WHO Framework Convention on Tobacco Control', 'WHO چارچوب کنوانسیون کنترل دخانیات', 'translated'),
(81, 'WIPO Convention', 'کنوانسیون WIPO', 'translated'),
(82, 'Worst Forms of Child Labour Convention', 'بدترین شکل های کنوانسیون کار کودک', 'translated');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `name`, `fa_label`, `labeledOrTranslated`) VALUES
(1, 'University of Tehran', 'انتشارات دانشگاه تهران', 'labeled'),
(2, 'Sharif University of Technology', 'دانشگاه صنعتی شریف', 'labeled'),
(3, 'Ruhr University Bochum', 'دانشگاه رور بوخوم', 'labeled'),
(4, 'Imam Sadiq University', 'دانشگاه امام صادق (ع)', 'labeled'),
(5, 'Shiraz University', 'دانشگاه علوم پزشكي شيراز', 'labeled'),
(6, 'University of Kentucky', 'دانشگاه كنتاكي', 'labeled'),
(7, 'University of Isfahan', 'دانشکدهٔ حمل و نقل', 'labeled'),
(8, 'Shahid Beheshti University', 'دانشگاه علوم پزشكي و خدمات درماني شهيد بهشتي', 'labeled'),
(9, 'Imam Hossein University', 'دانشگاه امام حسين', 'labeled'),
(10, 'Tarbiat Modares University', 'دانشگاه تربیت مدرس تهران', 'labeled'),
(11, 'Tehran School of Political Science', 'دانشکده علوم سیاسی تهران', 'translated'),
(12, 'University of Geneva', 'دانشگاه ژنو', 'labeled'),
(13, 'Katholieke Universiteit Leuven', 'دانشگاه كي. يو. لون', 'labeled'),
(14, 'University of Nottingham', 'دانشگاه ناتينگهام', 'labeled'),
(15, 'University of Coimbra', 'دانشگاه کویمبرا', 'translated'),
(16, 'American University of Beirut', 'کالج آمریکایی بیروت', 'labeled'),
(17, 'Johns Hopkins University', 'دانشگاه جانز هاپکینز', 'labeled'),
(18, 'Shahid Chamran University of Ahvaz', 'دانشگاه شهيد چمران', 'labeled'),
(19, 'Amirkabir University of Technology', 'دانشگاه صنعتي امير كبير', 'labeled'),
(20, 'Islamic Azad University', 'دانشگاه ازاد اسلامی واحد تهران مرکزی', 'labeled'),
(21, 'Utah State University', 'دانشگاه ایالتی یوتا', 'labeled'),
(22, 'Allameh Tabatabaei University', 'مدرسه عالي ترجمه', 'labeled'),
(23, 'American University', 'كالج پزشكي دانشگاه آمريكايي آنتيگوا', 'labeled'),
(24, 'Baylor University', 'دانشگاه بیلور', 'labeled'),
(25, 'Ferdowsi University of Mashhad', 'دانشگاه فردوسی مشهد', 'labeled'),
(26, 'University of Birmingham', 'دانشگاه بیرمنگام', 'labeled'),
(27, 'Shahid Bahonar University of Kerman', 'دانشگاه كرمان', 'labeled'),
(28, 'University of Cambridge', 'دانشگاه کیمبریج', 'labeled'),
(29, 'Sorbonne (building)', 'دانشگاه سوربن پاريس', 'labeled'),
(30, 'National War College', 'کالج ملی جنگی', 'translated'),
(31, 'Imam Khomeini International University', 'دانشگاه امام خمینی قزوین', 'labeled'),
(32, 'Glasgow Caledonian University', 'دانشگاه كلدونين گلاسگو', 'labeled'),
(33, 'Cornell University of Medical Sciences', 'دانشگاه علوم پزشکی کرنل', 'translated'),
(34, 'Pantheon-Sorbonne University', 'دانشگاه پانتئون-سوربن', 'translated'),
(36, 'Supélec', 'Supélec', 'translated'),
(37, 'École Centrale Paris', 'École Centrale پاریس', 'translated'),
(38, 'San Francisco State University', 'دانشگاه ايالتي سان فرانسيسكو', 'labeled'),
(39, 'George Mason University', 'دانشگاه جرج ميسون', 'labeled'),
(40, 'University of Neuchâtel', 'دانشگاه نوشاتل', 'labeled'),
(41, 'George Washington University', 'دانشگاه جورج واشینگتن', 'labeled'),
(42, 'California Polytechnic State University', 'دانشگاه ایالتی کالیفرنیا در سن لوئی ابیسپو', 'labeled'),
(43, 'University of Lausanne', 'دانشگاه لوزان', 'labeled'),
(44, 'Government College University Lahore', 'دانشگاه کالج دانشگاه لاهور', 'translate'),
(45, 'K.N.Toosi University of Technology', 'دانشگاه صنعتي خواجه نصيرالدين طوسي', 'labeled'),
(46, 'Iowa State University', 'دانشگاه ایالتی آیووا', 'labeled');

-- --------------------------------------------------------

--
-- Table structure for table `wars`
--

CREATE TABLE `wars` (
  `id` int(11) NOT NULL,
  `war_tag` varchar(256) COLLATE utf8_bin NOT NULL,
  `fa_label` varchar(256) COLLATE utf8_bin NOT NULL,
  `labeledOrTranslated` varchar(16) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `wars`
--

INSERT INTO `wars` (`id`, `war_tag`, `fa_label`, `labeledOrTranslated`) VALUES
(1, '1921 Persian coup d\'etat', 'کودتای سوم اسفند 1299', 'labeled'),
(2, 'Anglo Soviet invasion of Iran', 'شهریور بیست', 'labeled'),
(3, 'Battle of Antioch (613)', 'نبرد انتویچ', 'labeled'),
(4, 'Battle of Barbalissos', 'نبرد باربالیسوس', 'labeled'),
(5, 'Battle of Callinicum', 'نبرد كالينيكوم', 'labeled'),
(6, 'Battle of Carrhae', 'نبرد حران', 'labeled'),
(7, 'Battle of Ctesiphon (165)', 'نبرد تیسفون', 'labeled'),
(8, 'Battle of Ctesiphon (198)', 'نبرد تیسفون (۱۹۸)', 'labeled'),
(9, 'Battle of Ctesiphon (363)', 'نبرد تيسفون (۳۶۳)', 'labeled'),
(10, 'Battle of Dara', 'نبرد دارا', 'labeled'),
(11, 'Battle of Fort Tabarsi', 'قلعه شیخ طبرسی', 'labeled'),
(12, 'Battle of Hyrba', 'نبرد هيربا', 'labeled'),
(13, 'Battle of Lade', 'جنگ لاده', 'labeled'),
(14, 'Battle of Misiche', 'نبرد میسیچه', 'labeled'),
(15, 'Battle of Nineveh (627)', 'نبرد نينوا', 'labeled'),
(16, 'Battle of Nisibis (217)', 'نبرد نصيبين', 'labeled'),
(17, 'Battle of Opis', 'نبرد اوپیس', 'labeled'),
(18, 'Battle of Resaena', 'نبرد راسائنا', 'labeled'),
(19, 'Battle of Samarra', 'نبرد سامرا', 'labeled'),
(20, 'Battle of Susa', 'جنگ شوش', 'labeled'),
(21, 'Battle of the Persian Border', 'نبرد مرز پارس', 'labeled'),
(22, 'Battle of the Zab', 'جنگ زاب', 'labeled'),
(23, 'Caspian expeditions of the Rus\'', 'اردوكشي روس هاي به درياي مازندران', 'labeled'),
(24, 'Dhofar Rebellion', 'جنگ ظفار', 'labeled'),
(25, 'fa/جنگ رود قرقیز', 'جنگ رود قرقيز', 'labeled'),
(26, 'fa/سرنگونی صفویان', 'سرنگونی صفویان', 'labeled'),
(27, 'fa/فهرست جنگ‌های جهان', 'فهرست جنگ های جهان', 'labeled'),
(28, 'fa/نبرد آق‌دربند', 'نبرد آق‌دربند', 'labeled'),
(29, 'fa/نبرد جهاد', 'المنيور', 'labeled'),
(30, 'fa/نبرد رزم رود', 'نبرد رزم رود', 'labeled'),
(31, 'fa/نبرد شاهپور دوم با اعراب', 'نبرد شاهپور دوم با اعراب', 'labeled'),
(32, 'fa/نبرد علی‌آباد', 'نبرد علی اباد', 'labeled'),
(33, 'fa/نبرد مراد تپه', 'نبرد مراد تپه', 'labeled'),
(34, 'fa/نبرد نصیبین (۵۳۰)', 'نبرد نصيبين (530)', 'labeled'),
(35, 'fa/نبردهای ایران و انگلیس', 'نبردهاي ايران و انگليس', 'labeled'),
(36, 'fa/واجرود', 'واجرود', 'labeled'),
(37, 'First Perso Turkic War', 'نخستین جنگ ایران و ترکان', 'labeled'),
(38, 'Greco Persian Wars', 'فهرست نبردهاي ايران و يونان', 'labeled'),
(39, 'Iran crisis of 1946', 'بحران ایران در سال ۱۹۴۶', 'labeled'),
(40, 'Iranian Revolution', 'انقلاب فرهنگی ایران', 'labeled'),
(41, 'Iran Iraq War', 'جنگ عراق و ایران', 'labeled'),
(42, 'Iran–Iraq War', 'روابط ایالات متحده آمر̩ا و عراق در جنگ ایران و عراق', 'labeled'),
(43, 'Jungle Movement of Gilan', 'مبارزات جنگل', 'labeled'),
(44, 'Muslim conquest of Persia', 'هجوم عرب ها به ایران', 'labeled'),
(45, 'Persian Campaign', 'جبهه ایران', 'labeled'),
(46, 'Persian Revolt', 'شورش پارس‌ها', 'labeled'),
(47, 'Roman–Persian Wars', 'جنگ هاي ايران و روم', 'labeled'),
(48, 'Russo Persian Wars', 'جنگهای ایران و روسیه', 'labeled'),
(49, 'Sassanid conquest of Egypt', 'محاصره اسکندریه', 'labeled'),
(50, 'Siege of Amida', 'محاصرهٔ امد', 'labeled'),
(51, 'Siege of Constantinople (626)', 'محاصره كنستانتينوپول', 'labeled'),
(52, 'Siege of Jerusalem (614)', 'محاصره اورشليم', 'labeled'),
(53, 'Siege of Singara', 'نبرد سينگارا', 'labeled'),
(54, 'Syrian civil war', 'بحران سوريه', 'labeled'),
(55, 'Syrian Civil War', 'بحران سوريه', 'labeled'),
(56, 'Turco Persian Wars', 'جنگ های ایران و ترکان', 'labeled'),
(57, 'World War II', 'جبهه جنوب غربي اقيانوس آرام جنگ جهاني دوم', 'labeled'),
(58, '1967 Kurdish revolt in Iran', '1967 قیام کردی در ایران', 'translated'),
(59, '1979 Kurdish rebellion in Iran', 'قیام کردها در ایران در سال 1979', 'translated'),
(60, 'ar/الحرب الأهلية الكردية العراقية', 'جنگ داخلی عراق کردستان', 'translated'),
(61, 'Balochistan conflict', 'درگیری بلوچستان', 'translated'),
(62, 'Battle of Hormozdgān', 'نبرد هرمزگان', 'translated'),
(63, 'Battle of Krtsanisi', 'نبرد کرتسانی', 'translated'),
(64, 'es/Invasión anglosoviética de Irán', 'تهاجم انگلیس و شوروی به ایران', 'translated'),
(65, 'Iran–PJAK conflict', 'درگیری ایران و پیجک', 'translated'),
(66, 'Iraqi Kurdish Civil War', 'جنگ داخلی عراق کردستان عراق', 'translated'),
(67, 'KDPI insurgency (1989–96)', 'شورش KDPI (1989-1996)', 'translated'),
(68, 'Kurdish rebellion of 1983', 'قیام کردها در سال 1983', 'translated'),
(69, 'Kurdish separatism in Iran', 'جدایی طلبان کرد در ایران', 'translated'),
(70, 'Mongol invasion of Central Asia', 'تهاجم مغول به آسیای میانه', 'translated'),
(71, 'Persian Expedition of 1796', 'فارغ التحصیلی فارسی سال 1796', 'translated'),
(72, 'Seleucid–Parthian wars', 'جنگ های سلویید-پارتستان', 'translated');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `election_type`
--
ALTER TABLE `election_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `good_gene`
--
ALTER TABLE `good_gene`
  ADD PRIMARY KEY (`politician_type`,`name`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organs`
--
ALTER TABLE `organs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `politicians`
--
ALTER TABLE `politicians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `politicians_university`
--
ALTER TABLE `politicians_university`
  ADD KEY `politician_id` (`politician_id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `politician_party`
--
ALTER TABLE `politician_party`
  ADD KEY `politician_id` (`politician_id`),
  ADD KEY `party_id` (`party_id`);

--
-- Indexes for table `protests`
--
ALTER TABLE `protests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treaties`
--
ALTER TABLE `treaties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wars`
--
ALTER TABLE `wars`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `elections`
--
ALTER TABLE `elections`
  ADD CONSTRAINT `elections_ibfk_1` FOREIGN KEY (`type`) REFERENCES `election_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `good_gene`
--
ALTER TABLE `good_gene`
  ADD CONSTRAINT `good_gene_ibfk_1` FOREIGN KEY (`politician_type`) REFERENCES `politicians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `politicians_university`
--
ALTER TABLE `politicians_university`
  ADD CONSTRAINT `politicians_university_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `politicians_university_ibfk_2` FOREIGN KEY (`politician_id`) REFERENCES `politicians` (`id`);

--
-- Constraints for table `politician_party`
--
ALTER TABLE `politician_party`
  ADD CONSTRAINT `politician_party_ibfk_1` FOREIGN KEY (`politician_id`) REFERENCES `politicians` (`id`),
  ADD CONSTRAINT `politician_party_ibfk_2` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
