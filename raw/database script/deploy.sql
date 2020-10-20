-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2020 at 04:20 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_26368983_autodoor`
--
CREATE DATABASE IF NOT EXISTS `epiz_26368983_autodoor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `epiz_26368983_autodoor`;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `employee_id`, `status`, `created_at`, `updated_at`) VALUES
('0436991700', '1759010', '1', '2020-07-17 05:23:18', '2020-07-17 05:23:18'),
('0437370084', '1759027', '1', '2020-07-31 06:53:14', '2020-07-31 06:53:14'),
('0437510628', '1759045', '1', '2020-07-31 06:53:59', '2020-07-31 06:53:59'),
('0438224868', '1759030', '1', '2020-07-31 06:44:24', '2020-07-31 06:44:24'),
('0438374372', '1759025', '1', '2020-07-17 08:37:28', '2020-07-17 08:37:28'),
('0439519716', '1759009', '1', '2020-07-31 06:44:47', '2020-07-31 06:44:47'),
('0445090516', '1759042', '1', '2020-07-31 06:48:08', '2020-07-31 06:48:08'),
('0447082980', '1759015', '1', '2020-07-17 05:21:30', '2020-07-17 05:21:30'),
('0447116772', '1759022', '1', '2020-07-17 05:31:30', '2020-07-17 05:31:30'),
('0447608036', '1759041', '1', '2020-07-31 06:48:57', '2020-07-31 06:48:57'),
('0450353108', '1759002', '1', '2020-07-17 08:39:18', '2020-07-17 08:39:18'),
('123456789', '1959001', '0', NULL, NULL),
('135792468', '1959001', '1', NULL, NULL),
('1469305098', '1959040', '1', '2020-07-14 05:45:52', '2020-07-14 05:45:52'),
('1501005406', '1659004', '1', '2020-07-31 06:50:53', '2020-07-31 06:50:53'),
('2045205670', '1859032', '1', '2020-07-31 04:52:14', '2020-07-31 04:52:14'),
('2099897417', '1759046', '1', '2020-07-17 08:37:54', '2020-07-17 08:37:54'),
('2100676985', '1759036', '1', '2020-07-31 06:52:02', '2020-07-31 06:52:02'),
('2328662935', '1759019', '1', '2020-07-31 06:45:31', '2020-07-31 06:45:31'),
('2610031225', '1859027', '1', '2020-07-14 03:44:36', '2020-07-14 03:44:36'),
('3039675959', '1459016', '1', '2020-07-31 07:39:03', '2020-07-31 07:39:03'),
('3107698123', '1959038', '1', '2020-07-14 05:49:50', '2020-07-14 05:49:50'),
('3344285240', 'GUEST001', '1', NULL, NULL),
('3806376825', '1958010', '1', '2020-07-31 07:41:08', '2020-07-31 07:41:08'),
('3806866121', '1958012', '1', '2020-07-31 07:39:39', '2020-07-31 07:39:39'),
('4242976779', '2630', '1', '2020-07-31 06:20:02', '2020-07-31 06:20:02'),
('4243024827', '1958011', '1', '2020-07-31 07:43:46', '2020-07-31 07:43:46'),
('4243034219', '2329', '1', '2020-07-31 03:52:40', '2020-07-31 03:52:40'),
('4243038235', '2130', '1', '2020-07-21 05:21:54', '2020-07-21 05:21:54'),
('4243046379', '1959043', '1', '2020-07-14 05:36:39', '2020-07-14 05:36:39'),
('4243073979', '1933', '1', '2020-07-31 03:52:00', '2020-07-31 03:52:00'),
('4243132235', '1959013', '1', '2020-07-14 05:59:10', '2020-07-14 05:59:10'),
('4243135579', '1959029', '1', '2020-07-14 06:01:20', '2020-07-14 06:01:20'),
('4243142331', '1959034', '1', '2020-07-14 05:30:48', '2020-07-14 05:30:48'),
('4243148139', '1958006', '1', '2020-07-31 07:40:51', '2020-07-31 07:40:51'),
('4243156843', '1959008', '1', '2020-07-14 05:49:07', '2020-07-14 05:49:07'),
('4243175355', '1959010', '1', '2020-07-14 05:50:46', '2020-07-14 05:50:46'),
('4243189355', '1958007', '1', '2020-07-31 07:39:23', '2020-07-31 07:39:23'),
('4243189515', '1959024', '1', '2020-07-14 05:56:31', '2020-07-14 05:56:31'),
('4243190955', '1958009', '1', '2020-07-31 07:41:49', '2020-07-31 07:41:49'),
('4243195067', '1959017', '1', '2020-07-14 05:51:21', '2020-07-14 05:51:21'),
('4243200075', '1859031', '1', '2020-07-31 04:52:33', '2020-07-31 04:52:33'),
('4243200299', '1959022', '1', '2020-07-14 06:05:18', '2020-07-14 06:05:18'),
('4243203483', '1959016', '1', '2020-07-14 06:04:01', '2020-07-14 06:04:01'),
('4243235595', '1958003', '1', '2020-07-31 07:43:16', '2020-07-31 07:43:16'),
('4243287803', '1959045', '1', '2020-07-14 05:46:28', '2020-07-14 05:46:28'),
('4243296091', '1959028', '1', '2020-07-14 05:49:31', '2020-07-14 05:49:31'),
('4243325627', '1958004', '1', '2020-07-31 07:42:57', '2020-07-31 07:42:57'),
('4243327291', '1958001', '1', '2020-07-31 07:40:35', '2020-07-31 07:40:35'),
('4243373387', '1959023', '1', '2020-07-14 05:47:33', '2020-07-14 05:47:33'),
('4243445131', '1959002', '1', '2020-07-14 05:55:38', '2020-07-14 05:55:38'),
('4243452203', '1959018', '1', '2020-07-14 06:00:23', '2020-07-14 06:00:23'),
('4243454555', '1958005', '1', '2020-07-31 07:40:12', '2020-07-31 07:40:12'),
('4243480747', '1959005', '1', '2020-07-14 05:45:36', '2020-07-14 05:45:36'),
('4243548651', '1959011', '1', '2020-07-14 05:48:53', '2020-07-14 05:48:53'),
('4243550763', '1958008', '1', '2020-07-31 07:41:25', '2020-07-31 07:41:25'),
('4243551451', '1234', '1', '2020-07-31 07:45:18', '2020-07-31 07:45:18'),
('4243551691', '1959014', '1', '2020-07-14 05:52:17', '2020-07-14 05:52:17'),
('4243552523', '1959039', '1', '2020-07-14 06:03:07', '2020-07-14 06:03:07'),
('4243596043', '2335', '1', '2020-07-31 04:41:37', '2020-07-31 04:41:37'),
('4243600811', '2621', '1', '2020-07-31 03:52:59', '2020-07-31 03:52:59'),
('4243634699', '1959032', '1', '2020-07-14 06:04:17', '2020-07-14 06:04:17'),
('4243634891', '1959031', '1', '2020-07-14 05:51:03', '2020-07-14 05:51:03'),
('4243862187', '2111', '1', '2020-07-31 03:52:18', '2020-07-31 03:52:18'),
('987654320', '1959002', '0', '2020-07-13 18:18:59', '2020-07-14 05:55:38'),
('987654321', '1959002', '0', '2020-07-13 17:46:30', '2020-07-14 05:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `tk1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `fullname`, `classcode`, `status`, `tk1`) VALUES
('1158036', 'NGUYỄN DZUYÊN THẢO HIỀN', '11BSM4', '1', NULL),
('1158063', 'NGUYỄN ĐẶNG CAO KỲ', '11BSM4', '1', NULL),
('1158070', 'HUỲNH KIM LONG', '11BSM2', '1', NULL),
('1158092', 'VÕ PHƯƠNG QUỲNH NHƯ', '11BSM2', '1', NULL),
('1158110', 'THÁI THANH QUANG', '11BSM3', '1', NULL),
('1158138', 'HUỲNH MAI QUỐC THỤY', '11BSM1', '1', NULL),
('1158141', 'TRẦN THỦY TIÊN', '11BSM3', '1', NULL),
('1158147', 'NGUYỄN BIỆN HOÀNG TRUNG', '11BSM3', '1', NULL),
('1158148', 'TRẦN KHẢ TÚ', '11BSM3', '1', NULL),
('1158152', 'LÊ VŨ HOÀNG TUẤN', '11BSM3', '1', NULL),
('1234', 'Nguyễn Thị Phước Hạnh', 'EMPLOYEE', '1', NULL),
('1258006', 'NGUYỄN VŨ CHƯƠNG', '12BSM1', '1', NULL),
('1258015', 'PHẠM PHƯƠNG DUY', '12BSM2', '1', NULL),
('1258017', 'BÙI HƯƠNG GIANG', '12BSM1', '1', NULL),
('1258035', 'TRẦN PHƯƠNG NAM', '12BSM2', '1', NULL),
('1258053', 'NGUYỄN CÔNG PHÚ', '12BSM2', '1', NULL),
('1258055', 'MAI AN PHƯỚC', '12BSM1', '1', NULL),
('1258058', 'DƯƠNG NGUYỄN UYÊN PHƯƠNG', '12BSM1', '1', NULL),
('1258069', 'NGUYỄN CÔNG THÀNH', '12BSM1', '1', NULL),
('1258074', 'VĂNG THỊ PHƯƠNG THẢO', '12BSM2', '1', NULL),
('1258080', 'NGUYỄN THỊ NGỌC TRÂM', '12BSM1', '1', NULL),
('1259018', 'DƯƠNG HOÀNG TUẤN KIỆT', '12BIT', '1', NULL),
('1358018', 'NGUYỄN HOÀNG DUY', '13BSM1', '1', NULL),
('1358044', 'LÊ TRẦN QUỲNH NHƯ', '13BSM2', '1', NULL),
('1358046', 'NGUYỄN VÕ THÚY PHƯƠNG', '13BSM2', '1', NULL),
('1358052', 'TRẦN HỒNG QUÂN', '13BSM2', '1', NULL),
('1358062', 'DƯƠNG MINH THUẤN', '13BSM2', '1', NULL),
('1358068', 'NGUYỄN THỊ THANH TRANG', '13BSM1', '1', NULL),
('1359030', 'NGUYỄN ĐINH VINH BẢO', '13BIT', '1', NULL),
('1359032', 'HUỲNH QUỐC HUY', '13BIT', '1', NULL),
('1458005', 'VÕ THỊ HỒNG CẨM', '14BSM1', '1', NULL),
('1458010', 'MAI THỦY DUYÊN', '14BSM1', '1', NULL),
('1458012', 'ĐỖ MINH HÀO', '14BSM1', '1', NULL),
('1458015', 'NGUYỄN QUAN HUY', '14BSM2', '1', NULL),
('1458018', 'NGUYỄN HOÀNG DUY KHANH', '14BSM1', '1', NULL),
('1458019', 'TRƯƠNG MINH KHOA', '14BSM2', '1', NULL),
('1458021', 'HOÀNG LÊ LÂM', '14BSM1', '1', NULL),
('1458034', 'NGUYỄN HUỲNH LAN PHƯƠNG', '14BSM1', '1', NULL),
('1458038', 'HỒ KHÁNH ANH THƯ', '14BSM1', '1', NULL),
('1458040', 'KHIẾU ĐỖ BẢO TOÀN', '14BSM1', '1', NULL),
('1458046', 'PHẠM ĐỨC TRÍ', '14BSM1', '1', NULL),
('1458049', 'PHẠM TRẦN QUANG TRUNG', '14BSM2', '1', NULL),
('1458050', 'NGUYỄN ĐỖ KIM VÂN', '14BSM2', '1', NULL),
('1458057', 'ĐINH TRƯỜNG HẢI', '14BSM1', '1', NULL),
('1459002', 'LÊ HẢI ANH', '14BIT', '1', NULL),
('1459006', 'DOÃN LÊ THANH BẢO', '14BIT', '1', NULL),
('1459014', 'NGUYỄN HOÀNG ĐÔNG', '14BIT', '1', NULL),
('1459016', 'Đinh Trường Hải', '14BSM', '1', NULL),
('1459019', 'NGUYỄN NGUYÊN HOÀNG', '14BIT', '1', NULL),
('1459020', 'CHÂU ĐỨC HỘI', '14BIT', '1', NULL),
('1459030', 'PHẠM THANH LIÊM', '14BIT', '1', NULL),
('1459045', 'NGUYỄN ANH QUÂN', '14BIT', '1', NULL),
('1558016', 'Thi Tú Mi', '15BSM', '1', NULL),
('1558017', 'Nguyễn Châu Phương Minh', '15BSM', '1', NULL),
('1558020', 'Nguyễn Hữu Thanh Nhật', '15BSM', '1', NULL),
('1558023', 'Đặng Hồng Phi', '15BSM', '1', NULL),
('1558032', 'Trần Thảo Anh Thư', '17BSM', '1', NULL),
('1558036', 'Nguyễn Hoàng Phương Thy', '15BSM', '1', NULL),
('1559010', 'Hoàng Minh Dũng', '15BIT', '1', NULL),
('1559026', 'Phạm Sỹ Lâm', '15BIT', '1', NULL),
('1559037', 'Nguyễn Đình Thông', '15BIT', '1', NULL),
('1559038', 'Dương Gia Thuấn', '15BIT', '1', NULL),
('1559040', 'Nguyễn Đức Trọng', '15BIT', '1', NULL),
('1658001', 'Đào Vũ Phi Anh', '16BSM', '1', NULL),
('1658002', 'Lê Nguyễn Quỳnh Anh', '16BSM', '1', NULL),
('1658003', 'Nguyễn Quốc Dũng', '16BSM', '1', NULL),
('1658004', 'Nguyễn Hoài Duy', '16BSM', '1', NULL),
('1658005', 'Nguyễn Thùy Ngọc Hà', '16BSM', '1', NULL),
('1658006', 'Lê Thanh Hồng', '16BSM', '1', NULL),
('1658007', 'Nguyễn Quang Khải', '16BSM', '1', NULL),
('1658012', 'Lê Hồ Minh Mẫn', '16BSM', '1', NULL),
('1658014', 'Nguyễn Đặng Thu Ngân', '16BSM', '1', NULL),
('1658015', 'Võ Ngọc Mỹ Ngân', '16BSM', '1', NULL),
('1658016', 'Nguyễn Hà Phương', '18BSM', '1', NULL),
('1658017', 'Nguyễn Phúc Minh Quân', '16BSM', '1', NULL),
('1658020', 'Vương Nguyễn Hoàng Trang', '16BSM', '1', NULL),
('1658021', 'Nguyễn Trịnh Kiên Trường', '16BSM', '1', NULL),
('1658022', 'Hồ Trần Khuê Tú', '16BSM', '1', NULL),
('1658025', 'ĐINH VIẾT MINH', '16BSM', '1', NULL),
('1659001', 'Nguyễn Đào Phước An', '16BIT', '1', NULL),
('1659004', 'Mai Thanh Bình', '16BIT', '1', NULL),
('1659005', 'Phạm Công Danh', '16BIT', '1', NULL),
('1659007', 'Võ Quang Duy', '16BIT', '1', NULL),
('1659009', 'Tô Kỳ Hải', '16BIT', '1', NULL),
('1659011', 'Lê Minh Hiếu', '16BIT', '1', NULL),
('1659012', 'Lê Nguyễn Hân Hoan', '16BIT', '1', NULL),
('1659013', 'Trần Lê Hưng', '16BIT', '1', NULL),
('1659015', 'Trần Đức Huy', '16BIT', '1', NULL),
('1659016', 'Lâm Thái Gia Huy', '16BIT', '1', NULL),
('1659017', 'Lâm Ái Jin', '16BIT', '1', NULL),
('1659019', 'Nguyễn Tùng Lâm', '16BIT', '1', NULL),
('1659020', 'Nguyễn Đăng Gia Lộc', '16BIT', '1', NULL),
('1659021', 'Ngô Tá Hoàng Minh', '16BIT', '1', NULL),
('1659022', 'Hàn Tô Hoàng Nam', '16BIT', '1', NULL),
('1659024', 'Nguyễn Hoàng Nam', '16BIT', '1', NULL),
('1659026', 'Nguyễn Minh Quân', '16BIT', '1', NULL),
('1659027', 'Phạm Xuân Sơn', '16BIT', '1', NULL),
('1659028', 'Nguyễn Quốc Thiên', '16BIT', '1', NULL),
('1659029', 'Trần Hưng Thịnh', '16BIT', '1', NULL),
('1659031', 'Tôn Thất Hoàng Trí', '16BIT', '1', NULL),
('1659033', 'Nguyễn Quốc Tú', '16BIT', '1', NULL),
('1659034', 'Đỗ Thiên Ý', '16BIT', '1', NULL),
('1758001', 'PHẠM LAN ANH', '17BSM', '1', NULL),
('1758002', 'VÕ NGUYỄN HOÀNG ANH', '17BSM', '1', NULL),
('1758004', 'TRẦN THÁI VÂN ANH', '17BSM', '1', NULL),
('1758005', 'NGUYỄN THỊ HUỲNH ANH', '17BSM', '1', NULL),
('1758008', 'LÊ HỒ MINH DUY', '17BSM', '1', NULL),
('1758009', 'LÊ TRẦN HÀ GIANG', '18BSM', '1', NULL),
('1758010', 'NGUYỄN PHÚC KHANG', '17BSM', '1', NULL),
('1758011', 'TĂNG DU LINH', '17BSM', '1', NULL),
('1758012', 'VÕ THỊ BÍCH LOAN', '17BSM', '1', NULL),
('1758013', 'TRẦN QUANG MINH', '17BSM', '1', NULL),
('1758014', 'THIỀM LÊ TRÀ MINH', '17BSM', '1', NULL),
('1758016', 'LÊ THÁI TOÀN', '17BSM', '1', NULL),
('1758017', 'TRẦN DIỄM TÚ', '17BSM', '1', NULL),
('1758018', 'NGUYỄN ĐÌNH ANH TUẤN', '17BSM', '1', NULL),
('1758020', 'PHẠM NGỌC THANH THẢO', '17BSM', '1', NULL),
('1758022', 'BÙI MINH TRÍ', '17BSM', '1', NULL),
('1758023', 'VŨ NGỌC MINH TRUNG', '17BSM', '1', NULL),
('1758024', 'LÊ NGUYỄN THÚY VY', '17BSM', '1', NULL),
('1758025', 'PHẠM KHÁNH VY', '17BSM', '1', NULL),
('1758026', 'NGUYỄN THẢO VY', '17BSM', '1', NULL),
('1758030', 'Nguyễn Phan Phương Anh', '17BSM', '1', NULL),
('1759002', 'TRẦN NGỌC BẢO', '17BIT', '1', NULL),
('1759009', 'BÙI KHÁNH HƯNG', '17BIT', '1', NULL),
('1759010', 'TRẦN ĐÌNH HƯNG', '17BIT', '1', NULL),
('1759011', 'TRẦN KIÊN HƯNG', '17BIT', '1', NULL),
('1759013', 'HÀ ĐÌNH ĐỨC HUY', '17BIT', '1', NULL),
('1759015', 'ĐẶNG LÊ QUỐC KHANG', '17BIT', '1', NULL),
('1759016', 'PHẠM ĐỨC QUỐC KHÁNH', '17BIT', '1', NULL),
('1759017', 'VÕ TIẾN KHOA', '17BIT', '1', NULL),
('1759019', 'VŨ TRUNG KIÊN', '17BIT', '1', NULL),
('1759021', 'NGUYỄN THỊ THÙY LINH', '17BIT', '1', NULL),
('1759022', 'NGUYỄN ĐÌNH LỘC', '17BIT', '1', NULL),
('1759025', 'VŨ ĐỨC MINH', '17BIT', '1', NULL),
('1759026', 'NGUYỄN LÊ MINH', '17BIT', '1', NULL),
('1759027', 'VÕ NGỌC NGUYỄN MINH', '17BIT', '1', NULL),
('1759028', 'BÙI MINH NHẬT', '17BIT', '1', NULL),
('1759030', 'LÊ HOÀNG PHÚC', '17BIT', '1', NULL),
('1759033', 'NGUYỄN DUY QUANG', '17BIT', '1', NULL),
('1759034', 'ĐOÀN ĐAN SƠN', '17BIT', '1', NULL),
('1759036', 'NGUYỄN TRUNG THỊNH', '17BIT', '1', NULL),
('1759038', 'NGUYỄN VŨ ANH THƯ', '17BIT', '1', NULL),
('1759041', 'ĐẶNG HUYỀN TRÂN', '17BIT', '1', NULL),
('1759042', 'VŨ NGỌC KHÁNH TRANG', '17BIT', '1', NULL),
('1759044', 'LÝ HÙNG TRỌNG', '17BIT', '1', NULL),
('1759045', 'NGUYỄN QUỐC MINH TRỰC', '17BIT', '1', NULL),
('1759046', 'DIỆP HẢI TRIỀU', '17BIT', '1', NULL),
('1858002', 'Lê Hoàng Hà', '18BSM', '1', NULL),
('1858003', 'Phạm Trần Diệu Hiền', '18BSM', '1', NULL),
('1858004', 'Trần Nguyễn Kim Hoàn', '18BSM', '1', NULL),
('1858006', 'Viên Thiên Kim', '18BSM', '1', NULL),
('1858007', 'Nguyễn Thùy Linh', '18BSM', '1', NULL),
('1858009', 'Trương Khánh Ngọc', '18BSM', '1', NULL),
('1858010', 'Đỗ Minh Nguyệt', '18BSM', '1', NULL),
('1858012', 'Nguyễn Thị Kiều Oanh', '18BSM', '1', NULL),
('1858013', 'Lê Văn Nguyên Phúc', '18BSM', '1', NULL),
('1858014', 'Võ Đức Trí', '18BSM', '1', NULL),
('1858015', 'Nguyễn Quỳnh Trúc', '18BSM', '1', NULL),
('1858019', 'Trần Tô Đông Hoàng', '18BSM', '1', NULL),
('1858020', 'Lê Tiến Đạt', '18BSM', '1', NULL),
('1858021', 'Nguyễn Cao Hương Giang', '18BSM', '1', NULL),
('1858022', 'Nguyễn Đặng Thùy Linh', '18BSM', '1', NULL),
('1858023', 'Trần Thị Sen', '18BSM', '1', NULL),
('1858024', 'Lê Ngô Quốc Vĩ', '18BSM', '1', NULL),
('1859003', 'Lâm Kim Bàng', '18BIT', '1', NULL),
('1859004', 'Huỳnh Quang Bảo', '18BIT', '1', NULL),
('1859005', 'Phan Nguyễn Trọng Đại', '18BIT', '1', NULL),
('1859009', 'Nguyễn Hoàng Duy', '18BIT', '1', NULL),
('1859010', 'Phạm Minh Duy', '18BIT', '1', NULL),
('1859012', 'Ngô Gia Hân', '18BIT', '1', NULL),
('1859014', 'Nguyễn Đình Anh Hào', '18BIT', '1', NULL),
('1859016', 'Trần Gia Hòa', '18BIT', '1', NULL),
('1859018', 'Đặng Huy Hoàng', '18BIT', '1', NULL),
('1859019', 'Phan Bảo Khánh Hưng', '18BIT', '1', NULL),
('1859021', 'Vương Quang Huy', '18BIT', '1', NULL),
('1859023', 'Nguyễn Hữu Bảo Khôi', '18BIT', '1', NULL),
('1859025', 'Thái Quang Lâm', '18BIT', '1', NULL),
('1859026', 'Nguyễn Vũ Trọng Lễ', '18BIT', '1', NULL),
('1859027', 'Đoàn Văn Thanh Liêm', '18BIT', '1', NULL),
('1859028', 'Nguyễn Đức Lộc', '18BIT', '1', NULL),
('1859029', 'Trần Đạo Hoàng Long', '18BIT', '1', NULL),
('1859030', 'Bùi Nguyễn Hoàng Long', '18BIT', '1', NULL),
('1859031', 'Ngô Hoàng Long', '18BIT', '1', NULL),
('1859032', 'Đỗ Phương Nhật Minh', '18BIT', '1', NULL),
('1859033', 'Quách Hoàng Minh', '18BIT', '1', NULL),
('1859034', 'Trần Ngọc Phương My', '18BIT', '1', NULL),
('1859035', 'Nguyễn Bảo Nguyên', '18BIT', '1', NULL),
('1859037', 'Dương Tuấn Phát', '18BIT', '1', NULL),
('1859038', 'Nguyễn Mạnh Phong', '18BIT', '1', NULL),
('1859039', 'Nguyễn Vũ Anh Quân', '18BIT', '1', NULL),
('1859042', 'Tô Thanh Tài', '18BIT', '1', NULL),
('1859043', 'Bùi Nhật Tân', '18BIT', '1', NULL),
('1859044', 'Lai Thiên Thạch', '18BIT', '1', NULL),
('1859045', 'Giáp Trung Thành', '18BIT', '1', NULL),
('1859046', 'Nguyễn Tiến Thiện Thành', '18BIT', '1', NULL),
('1859047', 'Nguyễn Hữu Minh Trạng', '18BIT', '1', NULL),
('1859048', 'Đoàn Minh Tuấn', '18BIT', '1', NULL),
('1859049', 'Lê Hoàng Long Vũ', '18BIT', '1', NULL),
('1859050', 'Nguyễn Võ Thanh Vy', '18BIT', '1', NULL),
('1933', 'Lê Nguyễn Tường Nhi', 'EMPLOYEE', '1', NULL),
('1958001', 'Phạm Đức Danh', '19BSM', '1', NULL),
('1958003', 'Nguyễn Minh Hằng', '19BSM', '1', NULL),
('1958004', 'Nguyễn Xuân Hương', '19BSM', '1', NULL),
('1958005', 'Nguyễn Pho Nam', '19BSM', '1', NULL),
('1958006', 'Bùi Thị Xuân Phương', '19BSM', '1', NULL),
('1958007', 'Nguyễn Ngọc Duy Tân', '19BSM', '1', NULL),
('1958008', 'Đào Mai Ái Trân', '19BSM', '1', NULL),
('1958009', 'Nguyễn Ngọc Triệu Vy', '19BSM', '1', NULL),
('1958010', 'Nguyễn Ngọc Bích Trâm', '19BSM', '1', NULL),
('1958011', 'Phan Thị Quỳnh Như', '19BSM', '1', NULL),
('1958012', 'Vũ Hà Khanh', '19BSM', '1', NULL),
('1959001', 'Huỳnh Thiên Ân', '19BIT', '1', NULL),
('1959002', 'Phạm Đình Chương', '19BIT', '1', NULL),
('1959003', 'Lý Vĩ Cường', '19BIT', '0', NULL),
('1959004', 'Trần Nguyễn Minh Đạo', '19BIT', '1', NULL),
('1959005', 'Hồng Thái Ngọc Hà', '19BIT', '1', NULL),
('1959006', 'Trần Nhân Hiếu', '19BIT', '1', NULL),
('1959007', 'Nguyễn Đỗ Quỳnh Hương', '19BIT', '1', NULL),
('1959008', 'Phan Nguyễn Quốc Huy', '19BIT', '1', NULL),
('1959009', 'Nguyễn Phú Khang', '19BIT', '1', NULL),
('1959010', 'Phạm Hoàng Gia Khiêm', '19BIT', '1', NULL),
('1959011', 'Hà Minh Khoa', '19BIT', '1', NULL),
('1959012', 'Phan Ngọc Phương Linh', '19BIT', '1', NULL),
('1959013', 'Võ Thùy Linh', '19BIT', '1', NULL),
('1959014', 'Nguyễn Bảo Long', '19BIT', '1', NULL),
('1959015', 'Phan Quang Bảo Long', '19BIT', '1', NULL),
('1959016', 'Trần Ngọc Hiển Long', '19BIT', '1', NULL),
('1959017', 'Nguyễn Khánh Luyện', '19BIT', '1', NULL),
('1959018', 'Trương Ngọc Quang Minh', '19BIT', '1', NULL),
('1959019', 'Phạm Lê Hoàng Minh', '19BIT', '1', NULL),
('1959020', 'Nguyễn Nhật Nam', '19BIT', '1', NULL),
('1959021', 'Phạm Dương Duy Nghĩa', '19BIT', '1', NULL),
('1959022', 'Trần Trí Nguyên', '19BIT', '1', NULL),
('1959023', 'Phạm Quang Nhân', '19BIT', '1', NULL),
('1959024', 'Nguyễn Cao Nhân', '19BIT', '1', NULL),
('1959025', 'Nguyễn Hoàng Minh Nhật', '19BIT', '1', NULL),
('1959026', 'Nguyễn Đăng Nhật', '19BIT', '1', NULL),
('1959027', 'Trương Minh Nam Phú', '19BIT', '1', NULL),
('1959028', 'Nguyễn Trần Hồng Phúc', '19BIT', '1', NULL),
('1959029', 'Trần Hoàng Phúc', '19BIT', '1', NULL),
('1959030', 'Trần Hồng Quân', '19BIT', '1', NULL),
('1959031', 'Đỗ Minh Quang', '19BIT', '1', NULL),
('1959032', 'Dương Minh Quang', '19BIT', '1', NULL),
('1959033', 'Nguyễn Thái Sơn', '19BIT', '1', NULL),
('1959034', 'Nguyễn Đăng Tân', '19BIT', '1', NULL),
('1959035', 'Lê Trần Bá Tân', '19BIT', '1', NULL),
('1959036', 'Hầu Vinh Thái', '19BIT', '1', NULL),
('1959037', 'Nguyễn Sơn Thiện', '19BIT', '1', NULL),
('1959038', 'Trần Đức Thịnh', '19BIT', '1', NULL),
('1959039', 'Trần Mai Anh Thư', '19BIT', '1', NULL),
('1959040', 'Hồ Ngọc Thảo Trang', '19BIT', '1', NULL),
('1959041', 'Quan Minh Trí', '19BIT', '1', NULL),
('1959042', 'Đặng Minh Triết', '19BIT', '1', NULL),
('1959043', 'Phan Nguyễn Đức Trọng', '19BIT', '1', NULL),
('1959044', 'Nguyễn Bính Hoàng Vũ', '19BIT', '1', NULL),
('1959045', 'Nguyễn Ngọc Minh Xuân', '19BIT', '1', NULL),
('1959046', 'Nguyễn Đức Hải', '19BIT', '1', NULL),
('2111', 'Phạm Thị Bích Lan', 'EMPLOYEE', '1', NULL),
('2130', 'Vũ Thị Thu Hà', 'EMPLOYEE', '1', NULL),
('2329', 'Phạm Minh Trung', 'EMPLOYEE', '1', NULL),
('2335', 'Nguyễn Huỳnh Thanh Trúc', 'EMPLOYEE', '1', NULL),
('2621', 'Mai Thanh Tân', 'EMPLOYEE', '1', NULL),
('2630', 'Nguyễn Thị Cẩm Vân', 'EMPLOYEE', '1', NULL),
('ADMIN001', 'Trần Công Danh', 'EMPLOYEE', '1', NULL),
('BSc01191001', 'Nguyễn Hoàng Khánh', '19BIT', '1', NULL),
('BSc01191002', 'Bùi Đăng Khoa', '19BIT', '1', NULL),
('BSc01191003', 'Võ Hồng Long', '19BIT', '1', NULL),
('BSc01191004', 'Nguyễn Văn Nguyên Phúc', '19BIT', '1', NULL),
('BSc01191005', 'Lê Đình Minh Phúc', '19BIT', '1', NULL),
('GUEST001', 'Guest Enter 001', 'GUEST', '1', NULL),
('Not Avaiable', 'Nguyễn Thị Thu Thảo', 'EMPLOYEE', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_13_205318_create_cards_table', 1),
(5, '2020_07_13_210259_create_employees_table', 1),
(6, '2020_07_14_011136_create_tracks_table', 2),
(7, '2020_07_17_124050_create_roles_table', 3),
(8, '2020_07_17_125305_create_role_types_table', 3),
(9, '2020_07_21_093410_create_requests_table', 4),
(10, '2020_07_21_130711_create_notifications_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2261c335-8437-4312-95e8-9c5ceeb47f5f', 'App\\Notifications\\RegisterFeedback', 'App\\User', 8, '[]', NULL, '2020-07-23 02:52:37', '2020-07-23 02:52:37'),
('28bf0ed1-824e-4fc0-a81a-bd56627b5001', 'App\\Notifications\\RegisterRequest', 'App\\User', 10, '[]', NULL, '2020-07-23 02:39:00', '2020-07-23 02:39:00'),
('2e53a89e-ce89-4d42-a543-a63b98f60f5c', 'App\\Notifications\\RegisterRequest', 'App\\User', 6, '[]', NULL, '2020-07-21 07:16:48', '2020-07-21 07:16:48'),
('d51c3a2f-3324-4c60-9a18-3db0e7bedc10', 'App\\Notifications\\RegisterRequest', 'App\\User', 8, '[]', NULL, '2020-07-23 02:10:07', '2020-07-23 02:10:07'),
('e8162566-b86d-430c-a23d-f37729549230', 'App\\Notifications\\RegisterFeedback', 'App\\User', 10, '[]', NULL, '2020-07-23 02:51:35', '2020-07-23 02:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `request_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'register',
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `authority` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `user_id`, `request_type`, `data`, `verified`, `authority`, `created_at`, `updated_at`) VALUES
(5, 6, 'register', '{\"name\":\"Dev Li\\u00eam\",\"email\":\"liemdev18112000@gmail.com\",\"updated_at\":\"2020-07-21T07:16:44.000000Z\",\"created_at\":\"2020-07-21T07:16:44.000000Z\",\"id\":6}', '0', NULL, '2020-07-21 07:16:44', '2020-07-21 07:16:44'),
(6, 8, 'register', '{\"name\":\"Spencer\",\"email\":\"katacodecamp@gmail.com\",\"updated_at\":\"2020-07-23T02:09:58.000000Z\",\"created_at\":\"2020-07-23T02:09:58.000000Z\",\"id\":8}', '0', 1, '2020-07-23 02:09:58', '2020-07-23 02:52:33'),
(8, 10, 'register', '{\"name\":\"Liem at School\",\"email\":\"1859027@itec.hcmus.edu.vn\",\"updated_at\":\"2020-07-23T02:38:56.000000Z\",\"created_at\":\"2020-07-23T02:38:56.000000Z\",\"id\":10}', '1', 1, '2020-07-23 02:38:56', '2020-07-23 02:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_type` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `role_type`, `status`, `verification_code`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '$2y$12$6nIHA3k6zEobrKascl9KFevp0WK4f1pTHwmBZdbck3wjo96zGqdZy', '2020-07-20 17:00:00', '2020-07-20 17:00:00'),
(2, 6, 2, '1', '$2y$10$nnQGLUf9eUWUpbGuqzfQj.cH6MnAh0IzMhafDvqKtrVJi6WwIflNy', '2020-07-21 07:16:44', '2020-07-21 07:16:44'),
(3, 7, 1, '1', '$2y$12$zxfpZftWGG8Mm1fQ.CKO/uG7whow11ND3PBTMa9OWPtM3tIPVcWYq', '2020-07-22 17:00:00', '2020-07-22 17:00:00'),
(4, 8, 2, '1', '$2y$10$Fs7hPAb8eMTV12kjjziGAOd0WG/9OYzFund64yg1ypVKBolWB9IkO', '2020-07-23 02:09:58', '2020-07-23 02:09:58'),
(6, 10, 2, '1', '$2y$10$hZr9.5OvhRRLUwD2gXK10e6uyP1ax6EuXQK5jnaoNPFYYWgWMudMy', '2020-07-23 02:38:56', '2020-07-23 02:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `role_types`
--

CREATE TABLE `role_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authoriry_level` smallint(6) NOT NULL DEFAULT 1,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_types`
--

INSERT INTO `role_types` (`id`, `role_name`, `role_description`, `authoriry_level`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin will control all operaition in app ', 10, '1', '2020-07-20 17:00:00', '2020-07-20 17:00:00'),
(2, 'Contributor', 'Contributor is responsible for an sapect of the app', 3, '1', '2020-07-20 17:00:00', '2020-07-20 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `card_id`, `pass`, `status`, `created_at`, `updated_at`) VALUES
(8, '2610031225', '1', '1', '2020-07-14 04:34:56', '2020-07-14 04:34:56'),
(9, '2610031225', '1', '1', '2020-07-14 04:35:17', '2020-07-14 04:35:17'),
(10, '2610031225', '1', '1', '2020-07-14 04:48:21', '2020-07-14 04:48:21'),
(11, '2610031225', '1', '1', '2020-07-14 04:48:25', '2020-07-14 04:48:25'),
(12, '2610031225', '1', '1', '2020-07-14 06:12:52', '2020-07-14 06:12:52'),
(13, '2610031225', '1', '1', '2020-07-14 06:12:55', '2020-07-14 06:12:55'),
(14, '2610031226', '0', '1', '2020-07-14 06:13:00', '2020-07-14 06:13:00'),
(15, '2610031225', '1', '1', '2020-07-14 06:13:05', '2020-07-14 06:13:05'),
(16, '2610031225', '1', '1', '2020-07-14 06:16:17', '2020-07-14 06:16:17'),
(17, '2610031225', '1', '1', '2020-07-14 13:36:23', '2020-07-14 13:36:23'),
(18, '2610031225', '1', '1', '2020-07-14 13:36:35', '2020-07-14 13:36:35'),
(19, '2610031225', '1', '1', '2020-07-14 14:08:19', '2020-07-14 14:08:19'),
(20, '2610031225', '1', '1', '2020-07-14 14:08:24', '2020-07-14 14:08:24'),
(21, '2610031225', '1', '1', '2020-07-14 14:12:44', '2020-07-14 14:12:44'),
(22, '2610031225', '1', '1', '2020-07-14 14:12:49', '2020-07-14 14:12:49'),
(23, '2610031225', '1', '1', '2020-07-14 14:19:30', '2020-07-14 14:19:30'),
(24, '2610031225', '1', '1', '2020-07-14 14:25:21', '2020-07-14 14:25:21'),
(25, '2610031225', '1', '1', '2020-07-14 14:25:25', '2020-07-14 14:25:25'),
(26, '2610031225', '1', '1', '2020-07-14 14:25:33', '2020-07-14 14:25:33'),
(27, '2610031225', '1', '1', '2020-07-14 14:25:40', '2020-07-14 14:25:40'),
(28, '2610031225', '1', '1', '2020-07-14 14:26:50', '2020-07-14 14:26:50'),
(29, '2610031225', '1', '1', '2020-07-14 14:26:51', '2020-07-14 14:26:51'),
(30, '2610031225', '1', '1', '2020-07-14 14:26:53', '2020-07-14 14:26:53'),
(31, '2610031225', '1', '1', '2020-07-14 14:26:55', '2020-07-14 14:26:55'),
(32, '2610031225', '1', '1', '2020-07-14 14:28:40', '2020-07-14 14:28:40'),
(53, '2610031225', '1', '1', '2020-07-14 14:47:09', '2020-07-14 14:47:09'),
(54, '2610031225', '1', '1', '2020-07-14 14:53:58', '2020-07-14 14:53:58'),
(55, '2610031225', '1', '1', '2020-07-15 12:29:27', '2020-07-15 12:29:27'),
(56, '2610031225', '1', '1', '2020-07-15 12:29:48', '2020-07-15 12:29:48'),
(57, '2610031225', '1', '1', '2020-07-16 13:14:25', '2020-07-16 13:14:25'),
(58, '2610031225', '1', '1', '2020-07-16 13:20:31', '2020-07-16 13:20:31'),
(59, '2610031225', '1', '1', '2020-07-16 13:25:00', '2020-07-16 13:25:00'),
(60, '3344285240', '1', '1', '2020-07-16 14:16:37', '2020-07-16 14:16:37'),
(61, '3344285240', '1', '1', '2020-07-16 14:16:50', '2020-07-16 14:16:50'),
(62, '3344285240', '1', '1', '2020-07-16 14:17:03', '2020-07-16 14:17:03'),
(63, '3344285240', '1', '1', '2020-07-16 14:17:21', '2020-07-16 14:17:21'),
(64, '3344285240', '1', '1', '2020-07-16 14:17:33', '2020-07-16 14:17:33'),
(65, '2610031225', '1', '1', '2020-07-16 14:18:09', '2020-07-16 14:18:09'),
(66, '3344285240', '1', '1', '2020-07-16 14:19:59', '2020-07-16 14:19:59'),
(67, '2610031225', '1', '1', '2020-07-16 14:20:13', '2020-07-16 14:20:13'),
(68, '3344285240', '1', '1', '2020-07-16 14:20:33', '2020-07-16 14:20:33'),
(69, '2010009146', '0', '1', '2020-07-16 14:21:32', '2020-07-16 14:21:32'),
(70, '3344285240', '1', '1', '2020-07-16 14:22:44', '2020-07-16 14:22:44'),
(71, '3344285240', '1', '1', '2020-07-16 14:23:06', '2020-07-16 14:23:06'),
(72, '3344285240', '1', '1', '2020-07-16 14:26:59', '2020-07-16 14:26:59'),
(73, '2610031225', '1', '1', '2020-07-16 14:28:50', '2020-07-16 14:28:50'),
(74, '3344285240', '1', '1', '2020-07-16 14:29:09', '2020-07-16 14:29:09'),
(75, '2610031225', '1', '1', '2020-07-17 01:58:44', '2020-07-17 01:58:44'),
(76, '3344285240', '1', '1', '2020-07-17 02:00:02', '2020-07-17 02:00:02'),
(77, '2610031225', '1', '1', '2020-07-17 02:00:47', '2020-07-17 02:00:47'),
(78, '3344285240', '1', '1', '2020-07-17 02:00:59', '2020-07-17 02:00:59'),
(79, '2610031225', '1', '1', '2020-07-17 02:07:22', '2020-07-17 02:07:22'),
(80, '2610031225', '1', '1', '2020-07-17 02:08:41', '2020-07-17 02:08:41'),
(81, '2610031225', '1', '1', '2020-07-17 02:11:18', '2020-07-17 02:11:18'),
(82, '3344285240', '1', '1', '2020-07-17 02:13:54', '2020-07-17 02:13:54'),
(83, '2610031225', '1', '1', '2020-07-17 02:18:00', '2020-07-17 02:18:00'),
(84, '3344285240', '1', '1', '2020-07-17 02:21:45', '2020-07-17 02:21:45'),
(85, '3344285240', '1', '1', '2020-07-17 02:23:29', '2020-07-17 02:23:29'),
(86, '3344285240', '1', '1', '2020-07-17 02:23:47', '2020-07-17 02:23:47'),
(87, '3344285240', '1', '1', '2020-07-17 02:26:16', '2020-07-17 02:26:16'),
(88, '3344285240', '1', '1', '2020-07-17 02:26:27', '2020-07-17 02:26:27'),
(89, '3344285240', '1', '1', '2020-07-17 02:26:39', '2020-07-17 02:26:39'),
(90, '3344285240', '1', '1', '2020-07-17 02:35:06', '2020-07-17 02:35:06'),
(91, '3344285240', '1', '1', '2020-07-17 02:39:13', '2020-07-17 02:39:13'),
(92, '3344285240', '1', '1', '2020-07-17 02:44:44', '2020-07-17 02:44:44'),
(93, '3344285240', '1', '1', '2020-07-17 02:45:28', '2020-07-17 02:45:28'),
(94, '3344285240', '1', '1', '2020-07-17 02:49:08', '2020-07-17 02:49:08'),
(95, '2610031225', '1', '1', '2020-07-17 02:52:00', '2020-07-17 02:52:00'),
(96, '3344285240', '1', '1', '2020-07-17 03:37:28', '2020-07-17 03:37:28'),
(97, '3344285240', '1', '1', '2020-07-17 03:44:52', '2020-07-17 03:44:52'),
(98, '3344285240', '1', '1', '2020-07-17 03:45:46', '2020-07-17 03:45:46'),
(99, '3344285240', '1', '1', '2020-07-17 03:47:41', '2020-07-17 03:47:41'),
(100, '3344285240', '1', '1', '2020-07-17 03:47:59', '2020-07-17 03:47:59'),
(101, '3344285240', '1', '1', '2020-07-17 03:52:43', '2020-07-17 03:52:43'),
(102, '3344285240', '1', '1', '2020-07-17 03:53:39', '2020-07-17 03:53:39'),
(103, '3344285240', '1', '1', '2020-07-17 03:57:17', '2020-07-17 03:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Đoàn Văn Thanh Liêm', 'liem18112000@gmail.com', NULL, '$2y$10$pTNLpLETU9ndZKh6i6OtVO42RfEywbHOyTXCsormURh4yy5SVCZGi', NULL, '1', '2020-07-13 15:53:49', '2020-07-13 15:53:49'),
(6, 'Dev Liêm', 'liemdev18112000@gmail.com', NULL, '$2y$10$avIWPrn/cuTEfvABMI9SCORZHLeFtIORBR3YS3Qk95ldqUYD9ZNou', NULL, '0', '2020-07-21 07:16:44', '2020-07-21 07:16:44'),
(7, 'Trần Công Danh', 'tcdanh@itec.hcmus.edu.vn ', '2020-07-22 17:00:00', '$2y$12$zxfpZftWGG8Mm1fQ.CKO/uG7whow11ND3PBTMa9OWPtM3tIPVcWYq', '2ZnMzENIWMBi4Q7vImbDvAZvRL9dWV0tafVk4W9EpH7uuO6sPCXnVgZ6Nolb', '1', '2020-07-22 17:00:00', '2020-07-22 17:00:00'),
(8, 'Spencer', 'katacodecamp@gmail.com', NULL, '$2y$10$2n28ln6qrgUk4/5jRapmfez3zH3yi9DHNU71jQQSRkw3DxHOcyPVm', NULL, '0', '2020-07-23 02:09:58', '2020-07-23 02:09:58'),
(10, 'Liem at School', '1859027@itec.hcmus.edu.vn', NULL, '$2y$10$g96jHGuUGbP6MMnkizR0leyxzF00j7ZDUadGapg07AWZmuBxoUGMm', '0R43NIIzErpDkeyV9K66tS7r6dyRyDqrtDzzUVc6bCGdDx8swyJ8rynZ0OnZ', '1', '2020-07-23 02:38:56', '2020-07-23 03:13:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_types`
--
ALTER TABLE `role_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_types`
--
ALTER TABLE `role_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
