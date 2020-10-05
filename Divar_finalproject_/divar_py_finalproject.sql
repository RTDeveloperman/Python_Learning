-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 12:51 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `divar_py_finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `kind` varchar(20) NOT NULL,
  `space` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `bedroom` int(11) NOT NULL,
  `price_total` int(20) NOT NULL,
  `price_meter` int(20) NOT NULL,
  `Advertiser` varchar(20) NOT NULL,
  `floor_total` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `elevator` int(1) NOT NULL,
  `parking` int(1) NOT NULL,
  `warehouse` int(1) NOT NULL,
  `link` varchar(150) NOT NULL,
  `area_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `name`, `address`, `kind`, `space`, `year`, `bedroom`, `price_total`, `price_meter`, `Advertiser`, `floor_total`, `floor`, `elevator`, `parking`, `warehouse`, `link`, `area_id`) VALUES
(1, '۱۱۰ متر اقدسیه', 'مشهد، بلوار الهیه', 'آپارتمان', 110, 1399, 2, 1353000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۱۰-متر-اقدسیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnBRocR', 9),
(2, '111 متر فول امکانات ', 'مشهد، لادن', 'آپارتمان', 111, 1390, 2, 1400000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/111-متر-فول-امکانات-لادن_آپارتمان_مشهد_لادن_دیوار/wXnBhOBH', 57),
(3, '۱۱۷ متر سجادیه  سند ', 'مشهد، بلوار الهیه', 'آپارتمان', 117, 1398, 2, 1380000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۱۷-متر-سجادیه-سند-اماده_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnBRWtN', 9),
(4, '۱۵۵ متری صفر رودکی ت', 'مشهد، رضاشهر', 'آپارتمان', 155, 1399, 3, 2147483647, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۵۵-متری-صفر-رودکی-تک-واحدی_آپارتمان_مشهد_رضاشهر_دیوار/wXNdv_Q1', 24),
(5, 'اپارتمان موسوی۱۱/۱', 'مشهد، موسوی قوچانی', 'آپارتمان', 140, 1398, 3, 1760000000, 0, ' ', 0, 0, -1, -1, -1, 'https://divar.ir/v/اپارتمان-موسوی۱۱-۱_آپارتمان_مشهد_موسوی-قوچانی_دیوار/wXnRx1V-', 47),
(6, '135متری', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 135, 1399, 3, 1890000000, 0, ' ', 5, 1, 1, 1, 1, 'https://divar.ir/v/135متری_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXnNxcOK', 46),
(7, 'آپارتمان ۸۰ متر/رحما', 'مشهد، بلوار الهیه', 'آپارتمان', 80, 1392, 2, 830000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/آپارتمان-۸۰-متر-رحمانیه-سند-آماده_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXlFbJnz', 9),
(8, 'هفت تیر 23--80 متری', 'مشهد، هفت تیر', 'آپارتمان', 80, 1389, 2, 1300000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/هفت-تیر-23-80-متری_آپارتمان_مشهد_هفت-تیر_دیوار/wXnRRQbO', 69),
(9, 'آپارتمان تمیز ۶۵ متر', 'مشهد، طلاب', 'آپارتمان', 65, 1394, 1, 370000000, 0, ' ', 4, 3, 0, 0, 1, 'https://divar.ir/v/آپارتمان-تمیز-۶۵-متری-و-یک-خوابه-طلاب-مفتح-۲۶-_آپارتمان_مشهد_طلاب_دیوار/wXnRBPqU', 38),
(10, '85متر میدان حافظ', 'مشهد، پیروزی', 'آپارتمان', 85, 1383, 2, 100000000, 0, ' ', 0, 0, 0, 1, 1, 'https://divar.ir/v/85متر-میدان-حافظ_آپارتمان_مشهد_پیروزی_دیوار/wXnRBHNE', 13),
(11, 'آپارتمان ۱۸۶ متر', 'مشهد، کوهسنگی', 'آپارتمان', 186, 1380, 1, 1700000000, 0, ' ', 3, 3, 0, 1, 1, 'https://divar.ir/v/آپارتمان-۱۸۶-متر_آپارتمان_مشهد_کوهسنگی_دیوار/wXnNx3mM', 51),
(12, '100 متر صدف بین فرهن', 'مشهد، وکیل آباد', 'آپارتمان', 100, 1383, 2, 1080000000, 0, ' ', 0, 0, 0, 1, 1, 'https://divar.ir/v/100-متر-صدف-بین-فرهنگ-و-معلم-دو-ممر_آپارتمان_مشهد_وکیل-آباد_دیوار/wXnNhyM1', 66),
(13, 'اپارتمان بدون وام تک', 'مشهد، گلبهار', 'آپارتمان', 80, 1395, 2, 365000000, 0, ' ', 0, 0, 0, 0, 1, 'https://divar.ir/v/اپارتمان-بدون-وام-تکمیل-دو-خوابه_آپارتمان_مشهد_گلبهار_دیوار/wXnNBts4', 54),
(14, '۱۴۵ متر لادن ۶', 'مشهد، لادن', 'آپارتمان', 145, 1383, 3, 1850000000, 0, ' ', 3, 1, 0, 1, 1, 'https://divar.ir/v/۱۴۵-متر-لادن-۶_آپارتمان_مشهد_لادن_دیوار/wXlxaAx9', 57),
(15, 'آپارتمان سجادیه....۱', 'مشهد، بلوار الهیه', 'آپارتمان', 100, 1399, 2, 1200000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/آپارتمان-سجادیه-۱۰۰متر-۲خواب_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnNBXyu', 9),
(16, 'طبقه اول رو پیلوت در', 'مشهد، شهرک شهید رجای', 'آپارتمان', 90, 1396, 2, 400000000, 0, ' ', 3, 2, 0, 0, 0, 'https://divar.ir/v/طبقه-اول-رو-پیلوت-در-وطن-دوست_آپارتمان_مشهد_شهرک-شهید-رجایی_دیوار/wXnVRmyx', 31),
(17, '120 متر صفر  صیادشیر', 'مشهد، صیاد شیرازی', 'آپارتمان', 120, 1399, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/120-متر-صفر-صیادشیرازی-19_آپارتمان_مشهد_صیاد-شیرازی_دیوار/wXnNRJUv', 34),
(18, '**آپارتمان ۱۷۵ متری ', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 175, 1399, 3, 2080000000, 0, ' ', 4, 3, 1, 1, 1, 'https://divar.ir/v/آپارتمان-۱۷۵-متری-صفر-استاد-یوسفی-_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXnVRPS5', 46),
(19, 'اپارتمان ۹۰متری صفر', 'مشهد، خیام', 'آپارتمان', 90, 1398, 2, 950000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/اپارتمان-۹۰متری-صفر_آپارتمان_مشهد_خیام_دیوار/wXnFBHEM', 19),
(20, 'آپارتمان ۱۴۴ متر کوه', 'مشهد، کوهسنگی', 'آپارتمان', 144, 1380, 3, 1800000000, 0, ' ', 0, 0, 0, 1, 1, 'https://divar.ir/v/آپارتمان-۱۴۴-متر-کوهسنگی_آپارتمان_مشهد_کوهسنگی_دیوار/wXnVhD9o', 51),
(21, '۱۶۰ متر _ الهیه', 'مشهد، بلوار الهیه', 'آپارتمان', 160, 1399, 3, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/۱۶۰-متر-الهیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnVxOoZ', 9),
(22, 'آپارتمان 75متر دوخوا', 'مشهد، گلبهار', 'آپارتمان', 75, 1398, 2, 390000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/آپارتمان-75متر-دوخوابه_آپارتمان_مشهد_گلبهار_دیوار/wXnRR9MC', 54),
(23, '130متری اپارتمان امو', 'مشهد، وکیل آباد', 'آپارتمان', 130, 1396, 2, 1850000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/130متری-اپارتمان-اموزگار-67-طبقه-اول_آپارتمان_مشهد_وکیل-آباد_دیوار/wXnJh1S5', 66),
(24, '۱۵۰ متر ۳خواب صفر ال', 'مشهد، بلوار الهیه', 'آپارتمان', 150, 1399, 3, 1850000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۵۰-متر-۳خواب-صفر-الهیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXUxuNBY', 9),
(29, 'آپارتمان ۸۱ متر دو خ', 'مشهد، ابوطالب', 'آپارتمان', 81, 1393, 2, 520000000, 0, ' ', 5, 3, 0, 0, 0, 'https://divar.ir/v/آپارتمان-۸۱-متر-دو-خوابه-ابوطالب-۱_آپارتمان_مشهد_ابوطالب_دیوار/wXkxPUCv', 3),
(30, 'آپارتمان ( ۱۱۰ متری ', 'مشهد، بلوار الهیه', 'آپارتمان', 110, 1399, 2, 1397000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/آپارتمان-۱۱۰-متری-اول-رحمانیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnRRwRX', 9),
(31, '۹۷متری  وام دار', 'مشهد، بلوار الهیه', 'آپارتمان', 98, 1398, 2, 1164000000, 0, ' ', 0, 0, -1, -1, -1, 'https://divar.ir/v/۹۷متری-وام-دار_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnJhYxG', 9),
(32, 'آپارتمان ۱۴۰متری سه ', 'مشهد، طلاب', 'آپارتمان', 140, 1399, 3, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/آپارتمان-۱۴۰متری-سه-خواب-فول-امکانات_آپارتمان_مشهد_طلاب_دیوار/wXnRhVn5', 38),
(33, '78 متری تکمیل جمهوری', 'مشهد، گلبهار', 'آپارتمان', 78, 1395, 2, 355000000, 0, ' ', 4, 3, 1, 1, 1, 'https://divar.ir/v/78-متری-تکمیل-جمهوری-29_آپارتمان_مشهد_گلبهار_دیوار/wXjFH2hN', 54),
(34, 'آپارتمان در توس 70 ز', 'مشهد، بلوار توس', 'آپارتمان', 86, 1395, 2, 365000000, 0, ' ', 0, 0, 0, 0, 0, 'https://divar.ir/v/آپارتمان-در-توس-70-زمان-4_آپارتمان_مشهد_بلوار-توس_دیوار/wXnJBWsA', 11),
(35, '*117متری،هنرستان(برک', 'مشهد، هنرستان', 'آپارتمان', 117, 1389, 2, 1400000000, 0, ' ', 0, 0, 0, 1, 1, 'https://divar.ir/v/117متری-هنرستان-برکپور-بسیارشیک-_آپارتمان_مشهد_هنرستان_دیوار/wXnNB6On', 70),
(36, '۱۰۵ متر صفر ۲خواب ال', 'مشهد، بلوار الهیه', 'آپارتمان', 105, 1399, 2, 1320000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۰۵-متر-صفر-۲خواب-الهیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXTpibK1', 9),
(37, 'آپارتمان 150 متری صف', 'مشهد، هنرستان', 'آپارتمان', 150, 1393, 3, 2147483647, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/آپارتمان-150-متری-صفر-هنرستان_آپارتمان_مشهد_هنرستان_دیوار/wXnJBQTQ', 70),
(38, '70 متر حافظ ( صیاد ش', 'مشهد، صیاد شیرازی', 'آپارتمان', 70, 1384, 2, 830000000, 0, ' ', 4, 1, 0, 1, 1, 'https://divar.ir/v/70-متر-حافظ-صیاد-شیرازی-_آپارتمان_مشهد_صیاد-شیرازی_دیوار/wXnNhVFw', 34),
(39, '۸۰ متر  ی تک واحدی ا', 'مشهد، بلوار توس', 'آپارتمان', 80, 1396, 2, 310000000, 0, ' ', 4, 4, 0, 0, 1, 'https://divar.ir/v/۸۰-متر-ی-تک-واحدی-ازادی-۱۰۷-گلریز-۱_آپارتمان_مشهد_بلوار-توس_دیوار/wXnRBOJt', 11),
(40, '135متر/ارشاد/ویوپارک', 'مشهد، هفت تیر', 'آپارتمان', 135, 1390, 3, 1900000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/135متر-ارشاد-ویوپارک-دونبش_آپارتمان_مشهد_هفت-تیر_دیوار/wXnJhKX5', 69),
(41, 'اپارتمان ۱۱۰ دوخوابه', 'مشهد، بلوار الهیه', 'آپارتمان', 110, 1399, 2, 1384000000, 0, ' ', 5, 4, 1, 1, 1, 'https://divar.ir/v/اپارتمان-۱۱۰-دوخوابه-فول-شیک_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnRxCiK', 9),
(42, 'آپارتمان شیک معاوضه ', 'مشهد، طبرسی', 'آپارتمان', 60, 1387, 1, 255000000, 0, ' ', 0, 0, 0, 0, 1, 'https://divar.ir/v/آپارتمان-شیک-معاوضه-باگلبهار_آپارتمان_مشهد_طبرسی_دیوار/wXnNh7KK', 35),
(43, '95متر/تک واحدی/ویلا', 'مشهد، هفت تیر', 'آپارتمان', 95, 1386, 2, 1200000000, 0, ' ', 0, 0, 0, 1, 1, 'https://divar.ir/v/95متر-تک-واحدی-ویلا_آپارتمان_مشهد_هفت-تیر_دیوار/wXnNx4xA', 69),
(44, 'آپارتمان ۱۰۵ متری بر', 'مشهد، بلوار الهیه', 'آپارتمان', 105, 1399, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/آپارتمان-۱۰۵-متری-برند-منطقه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnNR-Be', 9),
(45, '۱۱۰متر+۹۰ متر تراس ا', 'مشهد، بلوار الهیه', 'آپارتمان', 140, 1399, 2, 1800000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۱۰متر-۹۰-متر-تراس-اوایل-الهیه-صفر_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXGZAOX3', 9),
(46, 'آپارتمان75 متری سر د', 'مشهد، کلاهدوز', 'آپارتمان', 75, 1392, 2, 1300000000, 0, ' ', 0, 0, 0, 0, 1, 'https://divar.ir/v/آپارتمان75-متری-سر-دو-نبش-تک-برگ-سند_آپارتمان_مشهد_کلاهدوز_دیوار/wXnFx07f', 49),
(47, '73متر/فول/ویلا', 'مشهد، هفت تیر', 'آپارتمان', 73, 1386, 2, 950000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/73متر-فول-ویلا_آپارتمان_مشهد_هفت-تیر_دیوار/wXnNR5AF', 69),
(48, '130متری/مجیدیه 17/فو', 'مشهد، بلوار الهیه', 'آپارتمان', 130, 1396, 2, 1720000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/130متری-مجیدیه-17-فول_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnFRyKi', 9),
(49, 'اپارتمان 103متر دو خ', 'مشهد، بلوار الهیه', 'آپارتمان', 103, 1399, 2, 1207000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/اپارتمان-103متر-دو-خوابه-سند-6دانگ-ملکی_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnNR4kP', 9),
(50, '160 متر قبل فرهنگ مد', 'مشهد، امامت', 'آپارتمان', 160, 1399, 3, 25000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/160-متر-قبل-فرهنگ-مدرس-صفر_آپارتمان_مشهد_امامت_دیوار/wXnNB3G4', 7),
(51, '114متر/فول/دانشجو', 'مشهد، دانشجو', 'آپارتمان', 114, 1390, 2, 1650000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/114متر-فول-دانشجو_آپارتمان_مشهد_دانشجو_دیوار/wXnNR489', 21),
(52, 'صارمی 22 --116 متری', 'مشهد، هاشمیه', 'آپارتمان', 116, 1393, 2, 1990000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/صارمی-22-116-متری_آپارتمان_مشهد_هاشمیه_دیوار/wXnFhr8b', 67),
(53, '100متری فول امکانات ', 'مشهد، بلوار الهیه', 'آپارتمان', 100, 1398, 2, 1109999, 0, ' ', 4, 4, 1, 1, 1, 'https://divar.ir/v/100متری-فول-امکانات-سند-اماده_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnpQzoB', 9),
(54, 'اپارتمان 107 متری شی', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 107, 1398, 2, 1350000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/اپارتمان-107-متری-شیک_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXnxgygv', 46),
(55, '۱۳۰متر/اقدسیه/سند ام', 'مشهد، بلوار الهیه', 'آپارتمان', 131, 1399, 3, 1560000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۳۰متر-اقدسیه-سند-اماده_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXTVKKJy', 9),
(56, 'آپارتمان رحمانیه،۱۰۵', 'مشهد، بلوار الهیه', 'آپارتمان', 105, 1399, 2, 1207500000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/آپارتمان-رحمانیه-۱۰۵متری-صفر-سندآماده-مهری-_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXF9w58_', 9),
(57, '165 متر جلال فرهنگ ص', 'مشهد، امامت', 'آپارتمان', 165, 1399, 3, 28000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/165-متر-جلال-فرهنگ-صفر_آپارتمان_مشهد_امامت_دیوار/wXnxwv0u', 7),
(58, '۹۰ متر  (حافظیه ۵)', 'مشهد، لادن', 'آپارتمان', 90, 1387, 2, 1250000000, 0, ' ', 4, 2, 1, 1, 1, 'https://divar.ir/v/۹۰-متر-حافظیه-۵-_آپارتمان_مشهد_لادن_دیوار/wXhlb0Xs', 57),
(59, 'آپارتمان 75 متری صفر', 'مشهد، ابوطالب', 'آپارتمان', 75, 1399, 2, 150000000, 0, ' ', 0, 0, 0, 0, 0, 'https://divar.ir/v/آپارتمان-75-متری-صفر-چراغچی-9_آپارتمان_مشهد_ابوطالب_دیوار/wXnxgpG3', 3),
(60, 'شاهد ۷۵متر شیک خورجی', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 75, 1385, 2, 780000000, 0, ' ', 4, 1, 0, 1, 1, 'https://divar.ir/v/شاهد-۷۵متر-شیک-خورجینی_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXnxApJP', 46),
(61, '۹۹متری اندیشه نزدیک ', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 99, 1384, 2, 860000000, 0, ' ', 3, 2, 0, 1, 1, 'https://divar.ir/v/۹۹متری-اندیشه-نزدیک-حاشیه-تک-واحدی-باسازی-کامل_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXnxgiHX', 46),
(62, '85 متر حسابی فول امک', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 85, 1395, 2, 1000000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/85-متر-حسابی-فول-امکانات_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXnxAF9N', 46),
(63, 'اول مجیدیه فول', 'مشهد، بلوار الهیه', 'آپارتمان', 80, 1394, 2, 870000000, 0, ' ', 5, 2, 1, 1, 1, 'https://divar.ir/v/اول-مجیدیه-فول_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXntgvdA', 9),
(64, 'آپارتمان ۱۰۵ متری فر', 'مشهد، فرامرز عباسی', 'آپارتمان', 105, 1386, 2, 1550000000, 0, ' ', 3, 0, 0, 1, 1, 'https://divar.ir/v/آپارتمان-۱۰۵-متری-فرامرز_آپارتمان_مشهد_فرامرز-عباسی_دیوار/wXnpQDcc', 41),
(65, 'هاشمیه ۱۶۳ متر ۳خواب', 'مشهد، هاشمیه', 'آپارتمان', 163, 1399, 3, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/هاشمیه-۱۶۳-متر-۳خواب_آپارتمان_مشهد_هاشمیه_دیوار/wXf9BnCi', 67),
(66, 'مغازه ۷۱ متری.ایثار.', 'مشهد، طلاب', 'آپارتمان', 71, 1399, 4, 0, 0, ' ', 0, 0, 0, 0, -1, 'https://divar.ir/v/مغازه-۷۱-متری-ایثار-شیک_آپارتمان_مشهد_طلاب_دیوار/wXnlwRy0', 38),
(67, '۱۱۰ متر ، رحمانیه ، ', 'مشهد، بلوار الهیه', 'آپارتمان', 110, 1399, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/۱۱۰-متر-رحمانیه-۲-نبش_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXkhUAMr', 9),
(68, '۱۵۵ متر* بازسازی کام', 'مشهد، سجادشهر', 'آپارتمان', 155, 1380, 3, 0, 0, ' ', 0, 0, -1, -1, -1, 'https://divar.ir/v/۱۵۵-متر-بازسازی-کامل-سجاد_آپارتمان_مشهد_سجادشهر_دیوار/wXntw1iC', 25),
(69, 'آپارتمان110متری اقدس', 'مشهد، بلوار الهیه', 'آپارتمان', 110, 1399, 2, 1200000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/آپارتمان110متری-اقدسیه3-برند-سردونبشه-سندآماده_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnxgCSC', 9),
(70, 'آپارتمان۱۰۰متری،صفر،', 'مشهد، بلوار الهیه', 'آپارتمان', 100, 1399, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/آپارتمان۱۰۰متری-صفر-رحمانیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXgdWtNo', 9),
(71, '٢٠٥متر هفت تیر ٢٣', 'مشهد، هفت تیر', 'آپارتمان', 205, 1398, 3, 0, 0, ' ', 0, 0, -1, -1, -1, 'https://divar.ir/v/٢٠٥متر-هفت-تیر-٢٣_آپارتمان_مشهد_هفت-تیر_دیوار/wXntAf5G', 69),
(72, 'رحمانیه ۱۱۰ متر_فول', 'مشهد، بلوار الهیه', 'آپارتمان', 110, 1398, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/رحمانیه-۱۱۰-متر-فول_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXntw5Cm', 9),
(73, '۱۶۵متر صفر جنوبی دان', 'مشهد، دانشجو', 'آپارتمان', 165, 1397, 3, 2147483647, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۶۵متر-صفر-جنوبی-دانشجو۸_آپارتمان_مشهد_دانشجو_دیوار/wXntwyqb', 21),
(74, 'آپارتمان،90 متری،حاش', 'مشهد، صیاد شیرازی', 'آپارتمان', 90, 1389, 2, 1170000000, 0, ' ', 2, 2, 0, 1, 1, 'https://divar.ir/v/آپارتمان-90-متری-حاشیه-پیروزی_آپارتمان_مشهد_صیاد-شیرازی_دیوار/wXntQmsJ', 34),
(75, '197مترحاشیه بلواراصل', 'مشهد، سرافرازان', 'آپارتمان', 197, 1399, 3, 2147483647, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/197مترحاشیه-بلواراصلی_آپارتمان_مشهد_سرافرازان_دیوار/wXVRw33G', 26),
(77, 'آپارتمان ۱۹۰متری ۴خو', 'مشهد، بلوار الهیه', 'آپارتمان', 190, 1399, 4, 2147483647, 0, ' ', 3, 3, 1, 1, 1, 'https://divar.ir/v/آپارتمان-۱۹۰متری-۴خواب-تقویه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXntAt-t', 9),
(78, 'هاشمیه ۱۶۰ متری صفر ', 'مشهد، هاشمیه', 'آپارتمان', 160, 1398, 3, 0, 0, ' ', 0, 0, -1, -1, -1, 'https://divar.ir/v/هاشمیه-۱۶۰-متری-صفر-شیک_آپارتمان_مشهد_هاشمیه_دیوار/wXXxbdoZ', 67),
(79, 'دو ممر   ویو   ۶۰۰ م', 'مشهد، بلوار الهیه', 'آپارتمان', 75, 1390, 2, 500000000, 0, ' ', 3, 3, 0, 1, 1, 'https://divar.ir/v/دو-ممر-ویو-۶۰۰-متر-مشاعات-تمیز_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnlQbyb', 9),
(80, '١٢٧ متری/٣ خواب/رحما', 'مشهد، بلوار الهیه', 'آپارتمان', 127, 1399, 3, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/١٢٧-متری-٣-خواب-رحمانیه-ایمن_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnNAc_e', 9),
(81, '80متر/سنددار/کریمی9', 'مشهد، عبدالمطلب', 'آپارتمان', 80, 1393, 2, 850000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/80متر-سنددار-کریمی9_آپارتمان_مشهد_عبدالمطلب_دیوار/wXnlAXV3', 40),
(82, 'فلسطین آپارتمان ۱۳۰م', 'مشهد، احمدآباد', 'آپارتمان', 130, 1399, 4, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/فلسطین-آپارتمان-۱۳۰متر-صفر_آپارتمان_مشهد_احمدآباد_دیوار/wXmZfzCr', 4),
(83, '78مترخاشیه پیروزی با', 'مشهد، پیروزی', 'آپارتمان', 78, 1392, 2, 1050000000, 0, ' ', 0, 0, 0, 1, 1, 'https://divar.ir/v/78مترخاشیه-پیروزی-باپارکینگ-وسند6دانگ_آپارتمان_مشهد_پیروزی_دیوار/wXntAMN5', 13),
(84, 'آپارتمان 85 متر ، صف', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 85, 1399, 2, 995000000, 0, ' ', 4, 2, 1, 1, 1, 'https://divar.ir/v/آپارتمان-85-متر-صفر-فلاحی-50-4_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXntgOAv', 46),
(101, '۱۳۲ متر مجیدیه ۱۷ سن', 'مشهد، بلوار الهیه', 'آپارتمان', 132, 1399, 3, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/۱۳۲-متر-مجیدیه-۱۷-سند-آماده_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXBhCMRT', 9),
(102, '۱۰۰متری/فول امکانات/', 'مشهد، وکیل آباد', 'آپارتمان', 100, 1390, 2, 1370000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۰۰متری-فول-امکانات-اوایل-اقبال-طبقه-چهارم_آپارتمان_مشهد_وکیل-آباد_دیوار/wXnpQMJv', 66),
(103, 'مجتمع آریا زیست', 'مشهد، گلبهار', 'آپارتمان', 79, 1398, 2, 340000000, 0, ' ', 5, 3, 1, 1, 0, 'https://divar.ir/v/مجتمع-آریا-زیست_آپارتمان_مشهد_گلبهار_دیوار/wXeFxIk3', 54),
(104, '155متری فلاحی 16 فول', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 155, 1399, 3, 1715000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/155متری-فلاحی-16-فول-امکانات-تک-واحدی_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXnpw-BI', 46),
(105, '95 متری/اوایل محمدیه', 'مشهد، بلوار الهیه', 'آپارتمان', 95, 1399, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/95-متری-اوایل-محمدیه-فول_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnhw1Qr', 9),
(106, '۱۱۰ متر حاشیه مجیدیه', 'مشهد، بلوار الهیه', 'آپارتمان', 110, 1399, 2, 1400000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/۱۱۰-متر-حاشیه-مجیدیه-فول_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXCVZn3E', 9),
(107, 'اپارتمان 124 متری مج', 'مشهد، مطهری جنوبی', 'آپارتمان', 124, 1399, 2, 1900000000, 0, ' ', 0, 0, 1, 1, 0, 'https://divar.ir/v/اپارتمان-124-متری-مجد_آپارتمان_مشهد_مطهری-جنوبی_دیوار/wXnhwECc', 59),
(108, 'اپارتمان ۱۵۸متری فکو', 'مشهد، رضاشهر', 'آپارتمان', 158, 1397, 3, 2147483647, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/اپارتمان-۱۵۸متری-فکوری_آپارتمان_مشهد_رضاشهر_دیوار/wXnpwswA', 24),
(109, 'آپارتمان۹۵ متری دو خ', 'مشهد، بلوار الهیه', 'آپارتمان', 95, 1399, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/آپارتمان۹۵-متری-دو-خوابه-رحمانیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXlBqrQi', 9),
(110, '88متر  2 خواب       ', 'مشهد، سرافرازان', 'آپارتمان', 88, 1394, 2, 940000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/88متر-2-خواب-سرافراز-49_آپارتمان_مشهد_سرافرازان_دیوار/wXnpQSb1', 26),
(125, '۶۸متر دو خوابه هنرست', 'مشهد، پیروزی', 'آپارتمان', 68, 1383, 2, 880000000, 0, ' ', 3, 2, 0, 1, 1, 'https://divar.ir/v/۶۸متر-دو-خوابه-هنرستان-۳۳_آپارتمان_مشهد_پیروزی_دیوار/wXnhAiHI', 13),
(126, '87متر حاشیه سجادیه', 'مشهد، بلوار الهیه', 'آپارتمان', 87, 1395, 2, 720000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/87متر-حاشیه-سجادیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXnNg6Dk', 9),
(127, 'آپارتمان در دوطبقه ن', 'مشهد، عبادی', 'آپارتمان', 60, 1386, 2, 560000000, 0, ' ', 3, 2, 0, 0, 1, 'https://divar.ir/v/آپارتمان-در-دوطبقه-نیم-شیک-میدان-امام-حسین_آپارتمان_مشهد_عبادی_دیوار/wXnhwf8c', 39),
(128, 'آپارتمان 78 متری سند', 'مشهد، طلاب', 'آپارتمان', 78, 1396, 2, 620000000, 0, ' ', 0, 0, 0, 1, 1, 'https://divar.ir/v/آپارتمان-78-متری-سند-شیش-دانگ-دو-معبر_آپارتمان_مشهد_طلاب_دیوار/wXnpAVQ4', 38),
(129, 'آپارتمان تک واحدی 17', 'مشهد، هاشمیه', 'آپارتمان', 170, 1399, 3, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/آپارتمان-تک-واحدی-170متری-نوساز-هاشمیه_آپارتمان_مشهد_هاشمیه_دیوار/wXnlwiOv', 67),
(130, '110متری فلاحی 38 فول', 'مشهد، قاسم آباد (شهر', 'آپارتمان', 110, 1398, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/110متری-فلاحی-38-فول-رو-به-پارک-و-ویو-ابدی_آپارتمان_مشهد_قاسم-آباد-شهرک-غرب-_دیوار/wXnpgLrS', 46),
(133, '۱۶۵مترصفر رحمانیه', 'مشهد، بلوار الهیه', 'آپارتمان', 165, 1399, 3, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/۱۶۵مترصفر-رحمانیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/gXPPHlH_', 9),
(134, 'فروش صیاد23', 'مشهد، صیاد شیرازی', 'آپارتمان', 83, 1388, 2, 1150000000, 0, ' ', 0, 0, 0, 1, 1, 'https://divar.ir/v/فروش-صیاد23_آپارتمان_مشهد_صیاد-شیرازی_دیوار/wXnlwyup', 34),
(135, 'آپارتمان/155متری/سه ', 'مشهد، مطهری شمالی', 'آپارتمان', 155, 1398, 3, 1350000000, 0, ' ', 0, 0, -1, -1, -1, 'https://divar.ir/v/آپارتمان-155متری-سه-خواب_آپارتمان_مشهد_مطهری-شمالی_دیوار/wXnlgn8p', 60),
(136, '۱۰۰مترهاشمیه۶۲آسانسو', 'مشهد، هاشمیه', 'آپارتمان', 100, 1395, 2, 1390000000, 0, ' ', 4, 1, 1, 1, 1, 'https://divar.ir/v/۱۰۰مترهاشمیه۶۲آسانسورفول-حقیقی_آپارتمان_مشهد_هاشمیه_دیوار/wXnlgJbE', 67),
(137, 'اقدسیه 33 متراژ 103 ', 'مشهد، بلوار الهیه', 'آپارتمان', 103, 1399, 2, 1133000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/اقدسیه-33-متراژ-103-متر-سند-اماده_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXndgVPc', 9),
(138, 'اپارتمان ۷۰ متری .یک', 'مشهد، اندیشه', 'آپارتمان', 70, 1385, 1, 650000000, 0, ' ', 4, 0, 0, 1, 0, 'https://divar.ir/v/اپارتمان-۷۰-متری-یک-خواب-_آپارتمان_مشهد_اندیشه_دیوار/wXnlApYe', 8),
(139, '۱۸۰متر/جلال/جنوبی /ط', 'مشهد، امامت', 'آپارتمان', 175, 1390, 3, 2147483647, 0, ' ', 5, 5, 1, 1, 1, 'https://divar.ir/v/۱۸۰متر-جلال-جنوبی-طبقه۵_آپارتمان_مشهد_امامت_دیوار/wXmpfmn7', 7),
(140, 'اپارتمان درب جدا دون', 'مشهد، امام رضا', 'آپارتمان', 60, 1377, 1, 980000000, 0, ' ', 3, 0, 0, 1, 1, 'https://divar.ir/v/اپارتمان-درب-جدا-دونبش_آپارتمان_مشهد_امام-رضا_دیوار/wXndAw1U', 6),
(141, 'آپارتمان165مترهدایت7', 'مشهد، هدایت', 'آپارتمان', 165, 1399, 3, 1440000000, 0, ' ', 5, 1, 1, 1, 1, 'https://divar.ir/v/آپارتمان165مترهدایت7_آپارتمان_مشهد_هدایت_دیوار/wXnVwLwp', 68),
(142, '۴۰۰ متری سجاد', 'مشهد، سجادشهر', 'آپارتمان', 400, 1399, 4, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/۴۰۰-متری-سجاد_آپارتمان_مشهد_سجادشهر_دیوار/wXndQJx2', 25),
(143, '180 متر ملک الشعرا ص', 'مشهد، رضاشهر', 'آپارتمان', 180, 1399, 3, 2147483647, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/180-متر-ملک-الشعرا-صفر_آپارتمان_مشهد_رضاشهر_دیوار/wXnlwsDv', 24),
(144, 'آپارتمان شیک تکمیل 2', 'مشهد، گلبهار', 'آپارتمان', 78, 1398, 2, 350000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/آپارتمان-شیک-تکمیل-2خواب-78-متری_آپارتمان_مشهد_گلبهار_دیوار/wXlht06B', 54),
(145, '79متر/سرو/فول بازساز', 'مشهد، صیاد شیرازی', 'آپارتمان', 79, 1386, 2, 1000000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/79متر-سرو-فول-بازسازی_آپارتمان_مشهد_صیاد-شیرازی_دیوار/wXnlQgc3', 34),
(146, '۱۱۸متر رحمانیه', 'مشهد، بلوار الهیه', 'آپارتمان', 118, 1398, 2, 0, 0, ' ', 0, 0, 1, 1, -1, 'https://divar.ir/v/۱۱۸متر-رحمانیه_آپارتمان_مشهد_بلوار-الهیه_دیوار/wXA5Ms69', 9),
(147, '85متر*فول*لادن', 'مشهد، لادن', 'آپارتمان', 85, 1389, 2, 1250000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/85متر-فول-لادن_آپارتمان_مشهد_لادن_دیوار/wXndwjdW', 57),
(148, '79متر/سرو/فول بازساز', 'مشهد، صیاد شیرازی', 'آپارتمان', 79, 1386, 2, 1000000000, 0, ' ', 0, 0, 1, 1, 1, 'https://divar.ir/v/79متر-سرو-فول-بازسازی_آپارتمان_مشهد_صیاد-شیرازی_دیوار/wXnlQf_y', 34),
(149, 'فرشته ٫هاشمیه٫کوثر ۲', 'مشهد، هاشمیه', 'آپارتمان', 203, 1397, 3, 0, 0, ' ', 0, 0, -1, -1, -1, 'https://divar.ir/v/فرشته-٫هاشمیه٫کوثر-۲۰۳متری_آپارتمان_مشهد_هاشمیه_دیوار/wXIpcTGG', 67),
(150, 'یک واحد آپارتمان در ', 'مشهد، فلکه برق', 'آپارتمان', 60, 1385, 2, 180000000, 0, ' ', 0, 0, 0, 1, 0, 'https://divar.ir/v/یک-واحد-آپارتمان-در-بینالود_آپارتمان_مشهد_فلکه-برق_دیوار/wXnlQ2iZ', 43);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `areacode` int(9) NOT NULL,
  `arename` varchar(20) NOT NULL,
  `citycode` int(9) NOT NULL,
  `cityname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `areacode`, `arename`, `citycode`, `cityname`) VALUES
(1, 1, '۱۷ شهریور', 2, 'مشهد'),
(2, 1, 'آزادشهر', 2, 'مشهد'),
(3, 1, 'ابوطالب', 2, 'مشهد'),
(4, 1, 'احمدآباد', 2, 'مشهد'),
(5, 1, 'امام خمینی', 2, 'مشهد'),
(6, 1, 'امام رضا', 2, 'مشهد'),
(7, 1, 'امامت', 2, 'مشهد'),
(8, 1, 'اندیشه', 2, 'مشهد'),
(9, 1, 'بلوار الهیه', 2, 'مشهد'),
(10, 1, 'بلوار ایرج میرزا', 2, 'مشهد'),
(11, 1, 'بلوار توس', 2, 'مشهد'),
(12, 1, 'بلوار فردوسی', 2, 'مشهد'),
(13, 1, 'پیروزی', 2, 'مشهد'),
(14, 1, 'تربت حیدریه', 2, 'مشهد'),
(15, 1, 'تورج', 2, 'مشهد'),
(16, 1, 'جانباز', 2, 'مشهد'),
(17, 1, 'چهارراه لشکر', 2, 'مشهد'),
(18, 1, 'حرم مطهر', 2, 'مشهد'),
(19, 1, 'خیام', 2, 'مشهد'),
(20, 1, 'دانش آموز', 2, 'مشهد'),
(21, 1, 'دانشجو', 2, 'مشهد'),
(22, 1, 'راهنمایی', 2, 'مشهد'),
(23, 1, 'رسالت', 2, 'مشهد'),
(24, 1, 'رضاشهر', 2, 'مشهد'),
(25, 1, 'سجادشهر', 2, 'مشهد'),
(26, 1, 'سرافرازان', 2, 'مشهد'),
(27, 1, 'سعدی', 2, 'مشهد'),
(28, 1, 'سناباد', 2, 'مشهد'),
(29, 1, 'سید رضی', 2, 'مشهد'),
(30, 1, 'شاندیز', 2, 'مشهد'),
(31, 1, 'شهرک شهید رجایی', 2, 'مشهد'),
(32, 1, 'شهید بهشتی', 2, 'مشهد'),
(33, 1, 'صارمی', 2, 'مشهد'),
(34, 1, 'صیاد شیرازی', 2, 'مشهد'),
(35, 1, 'طبرسی', 2, 'مشهد'),
(36, 1, 'طرق', 2, 'مشهد'),
(37, 1, 'طرقبه', 2, 'مشهد'),
(38, 1, 'طلاب', 2, 'مشهد'),
(39, 1, 'عبادی', 2, 'مشهد'),
(40, 1, 'عبدالمطلب', 2, 'مشهد'),
(41, 1, 'فرامرز عباسی', 2, 'مشهد'),
(42, 1, 'فلسطین', 2, 'مشهد'),
(43, 1, 'فلکه برق', 2, 'مشهد'),
(44, 1, 'فلکه ضد', 2, 'مشهد'),
(45, 1, 'قائم', 2, 'مشهد'),
(46, 1, 'قاسم آباد (شهرک غرب)', 2, 'مشهد'),
(47, 1, 'قوچان', 2, 'مشهد'),
(48, 1, 'کاشمر', 2, 'مشهد'),
(49, 1, 'کلاهدوز', 2, 'مشهد'),
(50, 1, 'کوثر', 2, 'مشهد'),
(51, 1, 'کوهسنگی', 2, 'مشهد'),
(52, 1, 'کوی مهدی', 2, 'مشهد'),
(53, 1, 'گاز شرقی', 2, 'مشهد'),
(54, 1, 'گلبهار', 2, 'مشهد'),
(55, 1, 'گنبدسبز', 2, 'مشهد'),
(56, 1, 'گوهرشاد', 2, 'مشهد'),
(57, 1, 'لادن', 2, 'مشهد'),
(58, 1, 'مصلی', 2, 'مشهد'),
(59, 1, 'مطهری جنوبی', 2, 'مشهد'),
(60, 1, 'مطهری شمالی', 2, 'مشهد'),
(61, 1, 'معلم', 2, 'مشهد'),
(62, 1, 'موسوی قوچانی', 2, 'مشهد'),
(63, 1, 'میدان شهدا', 2, 'مشهد'),
(64, 1, 'میدان عدل خمینی', 2, 'مشهد'),
(65, 1, 'نوفل لو', 2, 'مشهد'),
(66, 1, 'وکیل آباد', 2, 'مشهد'),
(67, 1, 'هاشمیه', 2, 'مشهد'),
(68, 1, 'هدایت', 2, 'مشهد'),
(69, 1, 'هفت تیر', 2, 'مشهد'),
(70, 1, 'هنرستان', 2, 'مشهد');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$DpW6l17ykEq2$iU6rAdX+RjcWIbqttFUQPMBxulzb5wwfSONHw9R95pI=', '2020-09-14 12:09:10.899712', 1, 'mit', '', '', 'reza.tahmasebi.it@gmail.com', 1, 1, '2020-09-14 12:08:33.384619');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-14 12:12:21.969737', '0', 'Apartment object (0)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blog', 'apartment'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-14 12:05:02.774034'),
(2, 'auth', '0001_initial', '2020-09-14 12:05:03.869161'),
(3, 'admin', '0001_initial', '2020-09-14 12:05:09.017913'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-14 12:05:10.263546'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-14 12:05:10.298452'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-14 12:05:10.933018'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-14 12:05:11.549370'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-14 12:05:12.255482'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-14 12:05:12.289391'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-14 12:05:12.614523'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-14 12:05:12.641450'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-14 12:05:12.677354'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-14 12:05:13.347563'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-14 12:05:13.832267'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-14 12:05:14.516709'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-14 12:05:14.553611'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-14 12:05:15.238778'),
(18, 'sessions', '0001_initial', '2020-09-14 12:05:15.629733');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bqrwmbk4ccxntriyjwfstvwf5vp76zii', '.eJxVjMsOwiAQRf-FtSFgeXRcuvcbyAwMUjWQlHZl_HfbpAvd3nPOfYuA61LC2nkOUxIXocXpdyOMT647SA-s9yZjq8s8kdwVedAuby3x63q4fwcFe9lqjkqzYgLwYPWAbNCoES3Q4EftyDlvrHM8nAmi8Zpztk4T-Ixps1h8vtR5N7o:1kHnIE:Xd_-5UqEPjChrzxTmAlDtjWIDdkxFMsldmdkO0Bldzg', '2020-09-28 12:09:10.942598');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
