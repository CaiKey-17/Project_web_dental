-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2024 at 02:14 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22085852_nhakhoamothaiba`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activated` bit(1) DEFAULT b'0',
  `activate_token` varchar(255) DEFAULT NULL,
  `roll` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `email`, `password`, `activated`, `activate_token`, `roll`) VALUES
('admin', 'kt11072004@gmail.com', '$2y$10$/lmGVUtEbsGuhqONIGVEcOdrs5hYz/TZ2tM01T44AvAUlFSrEtNjm', b'1', '', b'1'),
('binhkhangtran3169@gmail.com', 'binhkhangtran3169@gmail.com', '$2y$10$cNDcAEGJoeApPVFmQsx/HO43sYqJ6XWZRpbqkFSvsfsMBWu1v.wnG', b'1', '', b'0'),
('BSTQ01', 'mvmanh@gmail.com', '$2y$10$UA6d8dqFhh5T1WWWNZGeDetmVrMw8rGwndxxQijdKfBdte8z4l9wm', b'1', '', b'0'),
('CPK01', '1213@t.tdt.edu.vn', '$2y$10$UA6d8dqFhh5T1WWWNZGeDetmVrMw8rGwndxxQijdKfBdte8z4l9wm', b'1', '', b'0'),
('duong', 'ttn204202@gmail.com', '$2y$10$ys4IxheD7QDiuGkmlf/SoOKJwjX6QU9te567g8MwAigZGOBgNOLOe', b'0', '4aee64936af0da9930ac26be2aaaba78', b'1'),
('khanh', 'matnwwwaosua@gmail.com', '$2y$10$MDTWWGdwee/LIMT0PXrcceBmQw4tePSZD4dxCKRbrJEnH7V0TMKSS', b'0', '10f356dd1a18fdb1ca4526767fee00f0', b'1'),
('khanhlehoang210904@gmail.com', 'khanhlehoang210904@gmail.com', '$2y$10$0kdex4mfgoUGk117eru8eu.jAWzDk9nKh7PkXehT8tvPnheMfMv..', b'1', 'dbea4515ddb76aecacd355767f56e49d', b'0'),
('kiki', 'ncaoky69@gmail.com', '$2y$10$MW2yPK.tDWe2QmeQIsVVHe1/VqRtyJWNQ/fDkl5ybVw7bfusVdiO6', b'1', '', b'0'),
('LT01', 'mvmanh@it.tdt.edu.vn', '$2y$10$UA6d8dqFhh5T1WWWNZGeDetmVrMw8rGwndxxQijdKfBdte8z4l9wm', b'1', '', b'1'),
('MLMN', 'minhluandt1004@gmail.com', '$2y$10$Rh8qZjto.vDK8OXuVtxjR.0tUHv7NjImi0svbSAAl25GaXHw9l9.S', b'1', '', b'0'),
('nck', 'caoky.sonha@gmail.com', '$2y$10$se2SAfUbwnQ1RTTzm6al.ebRe5g0Z2ibeIlagwLnjLxgkL0OggFVe', b'1', '', b'0'),
('tungduong', 'yuu3110duong@gmail.com', '$2y$10$vXtu3T14mWsUWyIK7VaJz.7bZTo0X3i11cAj7S/85omuBWWK9cNgu', b'0', 'bf64d8ad186dff863049c7538d02a43c', b'0'),
('uchihaha3169', 'uchihaha3169@gmail.com', '$2y$10$PUgsZ7PuM02CnXD0lsDB8OcWOrkMJ8UU6STpJ8mlaSVAS3PIRWW3.', b'1', '', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `lich_dat`
--

CREATE TABLE `lich_dat` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `so_dich_vu` int(11) NOT NULL,
  `ngay_tao` date NOT NULL,
  `ghi_chu` text DEFAULT NULL,
  `requestdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `trang_thai` enum('Chờ xác nhận','Đã xác nhận','Hoàn thành','Hủy') NOT NULL DEFAULT 'Chờ xác nhận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lich_dat`
--

INSERT INTO `lich_dat` (`id`, `username`, `so_dich_vu`, `ngay_tao`, `ghi_chu`, `requestdate`, `trang_thai`) VALUES
(2, 'CPK01', 85, '1111-11-11', '123', '2024-04-30 07:07:55', 'Đã xác nhận'),
(3, 'kyky', 86, '2024-12-12', 'Bị đau răng', '2024-05-14 13:49:36', 'Chờ xác nhận'),
(5, 'kiki', 85, '2024-12-12', 'Bị  đau', '2024-05-14 13:56:41', 'Đã xác nhận'),
(7, 'kiki', 85, '1221-12-12', '12', '2024-05-14 14:00:28', 'Hủy'),
(8, 'kiki', 131, '2020-12-12', 'Chào', '2024-06-01 14:50:07', 'Đã xác nhận');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `Ma_nhan_vien` int(11) NOT NULL,
  `Ho` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Gioi_tinh` enum('Nam','Nữ') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Ngay_sinh` date DEFAULT NULL,
  `Que_quan` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CCCD` varchar(12) DEFAULT NULL,
  `SDT` varchar(12) DEFAULT NULL,
  `Trangthai` enum('Còn hoạt động','Không còn hoạt động') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`Ma_nhan_vien`, `Ho`, `Ten`, `Gioi_tinh`, `Ngay_sinh`, `Que_quan`, `CCCD`, `SDT`, `Trangthai`, `username`) VALUES
(1, 'Họ của người dùng', 'Tên của người dùng', 'Nam', '1990-01-01', 'Quê quán của người dùng', '123456789', '123456789', 'Còn hoạt động', '123'),
(2, 'Họ của người dùng', 'Tên của người dùng', 'Nam', '1990-01-01', 'Quê quán của người dùng', '123456789', '123456789', 'Còn hoạt động', 'BSTQ01'),
(3, 'Họ của người dùng', 'Tên của người dùng', 'Nữ', '1990-01-01', 'Quê quán của người dùng', '123456789', '123456789', 'Còn hoạt động', 'BSTQ02'),
(4, '12313', 'Họ của132', 'Nam', '1990-01-01', 'Quê quán của ', '131231', '123456789', 'Còn hoạt động', 'CPK01'),
(5, 'Họ của người dùng', 'Tên của người dùng', 'Nam', '1990-01-01', 'Quê quán của người dùng', '123456789', '123456789', 'Còn hoạt động', 'LT01'),
(8, 'Trần', 'Khang', 'Nam', '0011-11-11', '123123', '12345', NULL, 'Còn hoạt động', 'ppp'),
(9, 'Trần', 'Khang', 'Nam', '0011-11-11', '123', '123', NULL, 'Còn hoạt động', 'asd123'),
(10, 'Trần', 'Khang', 'Nam', '1111-11-11', '123', '12312312', NULL, 'Còn hoạt động', 'admin'),
(11, 'Trần', 'Khang', 'Nam', '0111-11-11', 'HCM', '123', NULL, 'Còn hoạt động', 'uchihaha3169'),
(12, 'Trần', 'Khang', 'Nam', '0111-11-11', 'HCM', '123', NULL, 'Còn hoạt động', 'uchihaha3169'),
(13, 'Trần', 'Khang', 'Nam', '1111-11-11', 'HCM', '123', NULL, 'Còn hoạt động', 'uchihaha3169'),
(14, 'Trần', 'Khang', 'Nam', '1111-11-11', 'HCM', '123', NULL, 'Còn hoạt động', 'uchihaha3169'),
(19, 'Ky', 'Nguyen', 'Nam', '1211-12-12', 'Quang Tre', '2131231', NULL, 'Còn hoạt động', 'nck'),
(20, 'Nguyễn', 'Minh Luân', 'Nam', '2004-10-14', 'Bến Tre', '7382926582', NULL, 'Còn hoạt động', 'MLMN'),
(21, 'Trần', 'Khang', 'Nam', '0111-11-11', 'HCM', '12', '0939425985', 'Còn hoạt động', 'binhkhangtran3169@gmail.com'),
(26, 'Nguyễn', 'Khánh', 'Nam', '1212-12-12', '1212', '12123', NULL, 'Còn hoạt động', 'khanh'),
(29, 'Nguyễn', 'Dương Tùng', 'Nam', '2000-12-12', 'Bến Xe', '1231314', '1314', 'Còn hoạt động', 'kiki'),
(30, '123', '123', 'Nam', '0111-11-11', 'HCM', '123', '0939425985', 'Còn hoạt động', 'khanhlehoang210904@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `reset_token`
--

CREATE TABLE `reset_token` (
  `email` varchar(64) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expire_on` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reset_token`
--

INSERT INTO `reset_token` (`email`, `token`, `expire_on`, `code`) VALUES
('khanhlehoang210904@gmail.com', 'f053c49af6ebb98eab0d2138d4225a0f', 1715775060, 80294),
('uchihaha3169@gmail.com', 'f003ee58375f22dd9f4adcbbdefb94cb', 1715691571, 10530);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `avai` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `description`, `image`, `avai`) VALUES
(85, 'Nhổ răng cửa', 550000, '', '54b82363b2c2ef2dcec6819acdd2edc1.png', 0),
(86, 'Nhổ răng cối nhỏ', 60000, '', 'd17b05c7debfb47574602aebd69807d8.png', 0),
(87, 'Răng cối lớn trên', 70000, '', '0ca18ca5827c3f34c4705f78ee97d427.png', 0),
(88, 'Răng cối lớn dưới', 90000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(89, 'Nhổ răng lung lay', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(90, 'Nhổ chân răng vĩnh viễn', 60000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(91, 'Răng khôn mọc lệch nhổ tiểu phẫu', 300000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(92, 'Phẫu thuật điều chỉnh xương ổ răng', 200000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(93, 'Phẫu thuật cắt chóp', 300000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(94, 'Cạo vôi răng', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(95, 'Điều trị viêm nha chu không phẫu thuật', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(96, 'Phẫu thuật lật vạt làm sạch', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(97, 'Cắt thắng', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(98, 'Phẫu thuật nướu', 500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(99, 'Tái tạo thân răng', 150000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(100, 'Trám composite xoang I, III', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(101, 'Trám composite xoang II, IV, V', 120000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(102, 'Trám GIC', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(103, 'Trám đắp mặt, hở kẽ', 200000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(104, 'Trám phòng ngừa', 80000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(105, 'Răng cửa, răng nanh (Chữa tủy)', 250000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(106, 'Răng cối nhỏ (Chữa tủy)', 300000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(107, 'Răng cối lớn', 400000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(108, 'Chữa tủy lại(đóng thêm)', 150000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(109, '1 răng', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(110, '1 hàm toàn hàm', 1500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(111, '2 hàm toàn hàm', 3000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(112, 'Vá hàm', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(113, 'Thay nền', 300000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(114, 'Đệm hàm nhựa nấu', 250000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(115, 'Thêm, thay móc', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(116, 'Thêm, thay răng', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(117, 'Chữa đau', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(118, 'Móc dẻo', 200000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(119, 'Hàm dẻo', 700000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(120, 'Hàm khung bộ(Răng tính riêng)', 750000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(121, 'Đệm hàm nhựa tự cứng(Hàm cũ)', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(122, 'Điều chỉnh khớp cắn(Hàm cũ)', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(123, 'Tái tạo cùi răng(có chốt)', 150000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(124, 'Mão, cầu răng kim loại toàn diện', 350000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(125, 'Mão, cầu răng kim loại - sứ', 500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(126, 'Sứ titan', 700000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(127, 'Hàm khung Ti(chưa bao gồm răng)', 1500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(128, 'Sứ zirconia', 2500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(129, 'Sứ cercon', 3500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(130, 'Điều chỉnh, gắn lại, tháo PHCĐ', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(131, 'Hàm tạm', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(132, 'Mão tạm', 15000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(133, 'Cầu răng tạm', 15000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(134, 'Cùi giả đúc', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(135, 'Nhổ răng sữa(tê bôi)', 20000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(136, 'Nhổ răng sữa(tê chích)', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(137, 'Trám răng sữa bằng GIC', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(138, 'Trám răng sữa bằng composite', 80000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(139, 'Trám dự phòng hố rãnh mặt nhai', 80000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(140, 'Đặt gel Fluour phòng ngừa', 50000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(141, 'Lấy tủy chân răng sữa', 200000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(142, 'Mão nhựa răng cửa(Strip crown)', 200000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(143, 'Mão kim loại làm sẵn', 250000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(144, 'Bộ giữ khoảng tháo lắp', 250000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(145, 'Giữ khoảng cố định 1 bên', 400000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(146, 'Bộ giữ khoảng cố định 2 bên', 800000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(147, 'Mặt phẳng nghiêng', 500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(148, 'Tấm chặn môi', 500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(149, 'Khí cụ đẩy môi(lip bumper)', 1000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(150, 'Khí cụ tháo lắp điều trị cắn chéo 1 răng', 1000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(151, 'Khí cụ Quad Helix', 1000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(152, 'Tiểu phẫu', 250000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(153, '1 hàm', 1500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(154, '2 hàm', 3000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(155, 'Làm lại khí cụ 1 hàm', 300000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(156, 'Làm lại khí cụ 2 hàm', 600000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(157, 'Khí cụ duy trì kết quả 1 hàm', 300000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(158, '1 hàm (Khí cụ cố định)', 10000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(159, '2 hàm (Khí cụ cố định)', 20000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(160, '2 hàm điều trị trên 2 năm', 26000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(161, '2 hàm sử dụng mắc cài thế hệ mới', 28000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(162, '2 hàm sử dụng mắc cài sứ', 28000000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(163, 'Máng Fluor không thuốc', 100000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(164, '1 máng nhai', 500000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(165, 'Màng chỉnh khớp cắn đơn giản', 150000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(166, 'Màng chỉnh khớp cắn phức tạp', 300000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0),
(167, 'Phim quanh chóp', 30000, '', '4b3dc4dd86d13c70f3669864c0d2379e.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `id` int(11) NOT NULL,
  `NewsTitle` varchar(255) DEFAULT NULL,
  `NewsDetails` longtext DEFAULT NULL,
  `NewsImage` varchar(250) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`id`, `NewsTitle`, `NewsDetails`, `NewsImage`, `PostingDate`) VALUES
(19, '	 20 Tuổi Niềng Răng Bao Nhiêu Tiền? Niềng Răng Mất Thời Gian Bao Lâu', 'Tại độ tuổi 20, nhiều người trẻ thường cảm thấy tự tin hơn về bản thân và quyết định tìm kiếm cách để cải thiện hình dáng và sức khỏe của răng miệng. Mặc dù niềng răng thường được khuyến khích ở độ tuổi từ 7 đến 12 do lợi ích của việc thay đổi cấu trúc răng trong quá trình phát triển, nhưng điều này không có nghĩa là bạn 20 tuổi không thể làm điều đó.\r\n \r\nThực tế, việc niềng răng ở tuổi 20 có thể gặp một số thách thức đối với quá trình điều chỉnh vì lúc này xương hàm và răng đã phát triển hoàn thiện và trở nên cứng cáp hơn. Do đó, việc dịch chuyển các răng có thể mất thời gian hơn và đôi khi khó khăn hơn so với việc niềng răng ở độ tuổi nhỏ hơn. Tuy nhiên, điều này không làm cho việc niềng răng trở nên không thực tế.\r\n \r\nVới sự hỗ trợ từ các chuyên gia nha khoa có kinh nghiệm, bạn vẫn có thể đạt được kết quả tốt trong việc điều chỉnh cấu trúc răng của mình. Quan trọng nhất, việc chọn lựa một địa chỉ nha khoa uy tín và có kinh nghiệm sẽ giúp bạn tối ưu hóa quá trình điều trị và đạt được kết quả mong muốn.\r\n \r\nKhi quyết định niềng răng ở tuổi 20, bạn sẽ có hai phương pháp chính để lựa chọn: niềng răng mắc cài và niềng răng trong suốt không mắc cài. Mỗi phương pháp đều có những ưu điểm và hạn chế riêng, và mức giá thành cũng có thể khác nhau tùy thuộc vào địa điểm và chất lượng dịch vụ của cơ sở nha khoa.\r\n \r\nTóm lại, mặc dù bạn đã bước qua \"thời điểm vàng\" cho niềng răng, việc thực hiện quyết định này vẫn hoàn toàn khả thi và có thể đem lại kết quả tốt nếu bạn được tư vấn và hỗ trợ đúng cách từ các chuyên gia nha khoa.', '048bafd15baa30b3ecd64c8bb0c11b5fjpeg', '2024-05-14 12:47:51'),
(21, 'Chi phí làm răng sứ thẩm mỹ, bọc răng sứ bao lâu thì ăn được?', 'Sau khi bọc răng sứ, việc bạn có thể ăn được bình thường hay không thường là một trong những điều mà nhiều người quan tâm. Điều này phụ thuộc vào nhiều yếu tố như chất lượng của quá trình bọc răng sứ, kỹ thuật thực hiện, và cách bạn chăm sóc răng sứ sau khi hoàn thành.\r\n \r\nKhi quá trình làm răng sứ được thực hiện bởi các chuyên gia nha khoa có kinh nghiệm và được thực hiện đúng kỹ thuật, không gây tổn thương đến các mô nướu và xương hàm, thì hầu như quá trình ăn uống của bạn sẽ không bị ảnh hưởng nhiều.\r\n \r\nSau khi hoàn tất việc bọc răng sứ, bạn có thể ăn uống bình thường ngay sau khi thuốc tê tan biến hoàn toàn, thường là trong vòng 1 giờ. Tuy nhiên, trong vài ngày đầu sau khi bọc răng sứ, bạn nên chọn những thức ăn mềm, không quá cay, quá nóng, hoặc quá lạnh để ăn. Điều này giúp tránh gây hại cho răng sứ và cho phép nó ổn định dần sau quá trình làm.\r\n \r\nTrong thời gian đầu sau khi bọc răng sứ, nên ăn nhai nhẹ nhàng và tránh những thức ăn quá cứng, quá dai, hoặc quá dẻo. Tuy nhiên, sau khoảng 2 tuần, khi răng sứ đã ổn định và bạn đã quen dần với cấu trúc mới của răng, bạn có thể trở lại ăn nhai bình thường.\r\n \r\nTuy nhiên, vẫn cần lưu ý rằng, trong quá trình sử dụng răng sứ, hãy hạn chế nhai những thức ăn quá cứng như xương, các loại thực phẩm có hạt nhỏ, và những thức ăn quá dẻo, quá dai để tránh gây hại cho răng sứ.\r\n \r\nNgoài ra, sau khi bọc răng sứ, bạn cũng cần kiêng những món ăn có thể gây hại cho răng sứ như thức ăn quá dai, quá cứng, thức uống có gas, và các loại thức ăn, thức uống có chứa axit. Thay vào đó, bạn nên ưu tiên những thức ăn giàu dinh dưỡng, mềm mại, và dễ tiêu hóa để bảo vệ răng sứ và duy trì nụ cười hoàn hảo.', '182845aceb39c9e413e28fd549058cf8jpeg', '2024-05-14 12:51:33'),
(22, 'Nguyên Nhân Răng Bị Ê Buốt, Trị Ê Buốt Răng Hiệu Quả Tại TpHCM !', 'Tình trạng ê buốt răng không chỉ gây nhiều khó khăn trong quá trình ăn uống mà còn ảnh hưởng đến sức khỏe răng miệng và tinh thần của bạn. Cảm giác đau nhức do dây thần kinh quanh chân răng tiếp xúc với các yếu tố gây ra ê buốt là điều khá phổ biến. Vậy nguyên nhân ê buốt răng là do đâu? Ê buốt răng, hay còn gọi là răng nhạy cảm, là tình trạng xảy ra khi bạn cảm thấy khó chịu hoặc đau buốt, đặc biệt khi tiếp xúc với thực phẩm quá cứng, quá nóng hoặc quá lạnh. Mặc dù ê buốt chân răng không phải là một tình trạng quá nghiêm trọng, nhưng trong một số trường hợp, đây có thể là biểu hiện của các vấn đề răng miệng như viêm nha chu, viêm nướu. Nguyên nhân chính gây ra ê buốt răng thường liên quan đến việc men răng bị mòn hoặc nứt mẻ, khiến lớp ngà răng bên trong bị lộ ra ngoài. Lớp ngà răng chứa nhiều ống dẫn trực tiếp đến dây thần kinh trong tủy răng. Khi tiếp xúc với các yếu tố như thức ăn quá nóng, quá lạnh, hoặc chứa axit, các dây thần kinh này sẽ bị kích thích, gây ra cảm giác đau nhức và ê buốt. Các nguyên nhân phổ biến khác gây ra ê buốt răng bao gồm thói quen đánh răng không đúng cách, sử dụng bàn chải có lông quá cứng, hoặc sử dụng nước súc miệng chứa axit. Thói quen nghiến răng cũng có thể góp phần làm mòn men răng, cũng như việc tiếp xúc với các loại thực phẩm có tính axit cao như đường, protein, soda, và các đồ uống có ga. Trong tổng thể, việc bảo vệ răng miệng đúng cách và duy trì các thói quen ăn uống lành mạnh là rất quan trọng để ngăn ngừa tình trạng ê buốt răng và các vấn đề răng miệng khác. Nếu bạn gặp phải tình trạng ê buốt, hãy tìm kiếm sự tư vấn và điều trị từ các chuyên gia nha khoa để giải quyết vấn đề một cách hiệu quả.', 'ea571676ce9b75b0730a5d56350ae93ejpeg', '2024-05-14 13:00:09'),
(23, 'Nhổ răng khôn có bị sao không, Nhổ răng khôn có bị sao không, Nhổ răng khôn nên ăn và không nên ăn những gì?', 'Sau khi nhổ răng khôn, việc chăm sóc và ăn uống đúng cách là rất quan trọng để giảm thiểu các vấn đề như đau nhức, sưng tấy và khó khăn trong việc ăn nhai. Dưới đây là một số nguyên tắc và lời khuyên để giúp bạn vượt qua giai đoạn hồi phục này một cách thuận lợi:\r\n \r\nChế độ ăn uống sau nhổ răng khôn: Trong những ngày đầu sau khi nhổ răng khôn, bạn nên ăn các loại thực phẩm mềm và dễ nhai như súp, cháo, khoai tây nghiền, hay thức ăn nhuyễn như trứng lòng đào, yogurt. Tránh ăn các thực phẩm cứng, dai và những thức ăn có hạt nhỏ có thể làm tổn thương vùng nhổ và gây đau nhức.\r\nTránh thực phẩm có tính nóng, cay: Đồ ăn nóng và cay có thể làm tăng sự giãn nở của các mạch máu, dẫn đến việc máu chảy nhiều hơn tại vị trí nhổ và làm tăng nguy cơ sưng tấy. Tránh ăn các món cay nóng như cà phê, sô cô la, thức ăn chua cay trong thời gian hồi phục.\r\nHạn chế đồ ngọt và chua: Đồ ăn và đồ uống có hàm lượng đường và axit cao có thể gây kích ứng và làm tổn thương vùng nhổ. Hạn chế sử dụng đồ ngọt và chua như nước ngọt, bánh kẹo, và các loại thức uống có gas.\r\nTránh các chất kích thích: Rượu, bia, thuốc lá và các chất kích thích khác có thể làm giảm quá trình lành thương và tăng nguy cơ nhiễm trùng. Hãy hạn chế hoặc tránh xa các chất này trong thời gian hồi phục.\r\nChăm sóc vùng nhổ răng: Đảm bảo vệ sinh miệng bằng cách sử dụng nước muối loãng hoặc dung dịch súc miệng không chứa cồn để rửa miệng sau khi ăn uống. Hãy cẩn thận không làm tổn thương vùng nhổ bằng cách tránh các hoạt động như mút môi, hút ống hút, hay sờ soạng vùng nhổ răng.\r\nTuân thủ hướng dẫn của bác sĩ: Luôn luôn tuân thủ các hướng dẫn của bác sĩ về cách chăm sóc và ăn uống sau khi nhổ răng khôn. Nếu gặp bất kỳ vấn đề nào không bình thường như đau quá mức hoặc sưng tấy, hãy liên hệ với bác sĩ ngay lập tức để được tư vấn và điều trị kịp thời.\r\nNhớ rằng, quá trình hồi phục sau khi nhổ răng khôn có thể khác nhau đối với mỗi người. Điều quan trọng là chúng ta phải chăm sóc và bảo vệ vùng nhổ răng một cách cẩn thận để đảm bảo quá trình hồi phục diễn ra một cách suôn sẻ và an toàn nhất.', '9679ccb5a92f650b83fcf29e0a6a6775jpeg', '2024-05-14 13:01:19'),
(24, 'Lợi ích của việc trồng răng implant, bảng giá trồng răng implant mới nhất', 'Phương pháp trồng răng implant là quy trình thay thế một răng mất bằng việc cấy ghép một trụ implant vào xương hàm, sau đó lắp đặt một răng giả lên trên trụ implant. Đây được coi là phương pháp hiện đại và hiệu quả nhất để khắc phục tình trạng mất răng, mang lại sự ổn định và chức năng ăn nhai tốt nhất cho bệnh nhân.\r\n \r\nCấu tạo của trụ implant:\r\n1.1. Thân trụ implant: Được làm từ chất liệu titanium, giúp trụ implant có khả năng tương thích tốt với xương hàm và đảm bảo tính an toàn cho sức khỏe. Thân trụ implant được cấy vào xương hàm và tạo nền móng cho việc gắn răng giả.\r\n1.2. Khớp nối Abutment: Abutment là phần kết nối giữa thân trụ implant và răng sứ. Nó giúp cố định răng sứ lên trụ implant một cách chắc chắn và đảm bảo tính ổn định của răng giả.\r\n1.3. Răng sứ trên implant: Răng sứ là phần được tạo ra để thay thế răng mất. Chúng được chế tạo để có hình dạng và màu sắc giống như răng thật và được cố định lên abutment. Có hai loại răng sứ phổ biến là răng sứ kim loại và răng sứ toàn sứ.\r\nLợi ích của việc trồng răng implant:\r\n2.1. Thẩm mỹ cao: Trồng răng implant mang lại sự tự tin về ngoại hình bằng việc phục hồi lại hàm răng và khuôn mặt một cách tự nhiên. Việc mất răng có thể làm khuôn mặt trở nên già nua và không cân đối, trong khi trồng răng implant giúp làm đầy khoảng trống và giữ cho khuôn mặt trẻ trung hơn.\r\n2.2. Phục hồi chức năng ăn nhai: Trồng răng implant cho phép bệnh nhân có thể ăn nhai lại một cách thoải mái và hiệu quả như răng thật. Việc có răng giả ổn định giúp cải thiện khả năng ăn nhai và hấp thụ chất dinh dưỡng từ thức ăn.\r\n2.3. Giảm tiêu xương hàm: Việc sử dụng implant có thể giúp ngăn chặn quá trình tiêu xương hàm, giữ cho xương hàm giữ được hình dạng và cấu trúc ban đầu mà không bị suy giảm do thiếu răng.\r\nTóm lại, phương pháp trồng răng implant không chỉ giúp khắc phục tình trạng mất răng một cách hiệu quả mà còn mang lại nhiều lợi ích về thẩm mỹ và chức năng ăn nhai cho bệnh nhân.', 'ddf9c9a45551e218c4018d5c53e9f6bbjpeg', '2024-05-14 13:02:03'),
(25, '	 Trẻ mọc răng bị lệch có sao không ? Nên làm gì khi trẻ mọc răng lệch', 'Răng sữa có vai trò hỗ trợ chức năng ăn nhai, tạo điều kiện cho răng vĩnh viễn phát triển tốt. Tuy nhiên, không ít trường hợp răng sữa của trẻ bị mọc lệch khiến nhiều phụ huynh lo lắng. Vậy răng sữa mọc lệch có sao không và có cách khắc phục ra sao? Mời phụ huynh tìm hiểu chi tiết qua bài viết dưới đây để có giải pháp bảo vệ sức khỏe răng miệng con yêu tối ưu nhé!\r\n \r\n1. Răng sữa mọc lệch là như thế nào?\r\nRăng sữa (hay răng nguyên thủy) là những chiếc răng đầu đời của trẻ. Ngoài giúp trẻ có được trải nghiệm ăn nhai, phát âm, răng sữa còn hỗ trợ răng vĩnh viễn mọc đúng vị trí và phát triển khỏe mạnh. Thông thường, răng sữa mọc khi trẻ được 6 tháng và hoàn tất 20 chiếc răng sữa trước 3 tuổi. Trong giai đoạn 6 – 11 tuổi, răng sữa của trẻ có hiện tượng rụng và thay bằng các răng vĩnh viễn, quá trình này sẽ hoàn thành vào năm 13 – 14 tuổi.\r\nKhi răng sữa của trẻ mọc lệch, ba mẹ có thể dễ dàng nhận biết thông qua các dấu hiệu như:\r\nRăng sữa của trẻ nhú lên bị xoay lệch, răng sữa mọc xéo, không khớp với cung hàm.\r\nGương mặt trẻ bị lệch, không cân đối, xương hàm trên và xương hàm dưới phát triển không cân xứng hay phát triển quá mạnh.\r\nCạnh nghiêng một phía gương mặt đưa ra trước hoặc phía sau quá nhiều.\r\nRăng mọc chen chúc, tạo nên khe hở giữa các răng.\r\nMột số bé gặp tình trạng răng sữa mọc lệch, chen chúc hoặc thưa.\r\n \r\n2. Nguyên nhân trẻ mọc răng sữa bị lệch\r\nDưới đây là một số nguyên nhân khiến răng sữa của trẻ bị mọc lệch:\r\n2.1 Cấu trúc xương hàm lệch\r\n \r\nTình trạng răng sữa của trẻ mọc lệch có thể do cấu trúc xương bị lệch, khớp cắn của hàm trên và hàm dưới không trùng nhau. Điều này sẽ khiến răng sữa mọc hô hoặc móm tùy theo tình trạng lệch của hàm.\r\n \r\n2.2 Do trẻ có thói quen xấu\r\nTrẻ thường có các thói quen như ngậm ti giả, mút ngón tay, đẩy lưỡi khi nói và nuốt, cắn móng tay, cắn bút hay đồ cứng, nghiến răng khi ngủ, thở bằng miệng, ăn nhai một bên hàm,… Những thói quen này có thể khiến răng sữa của trẻ mọc lệch, không thẳng hàng.\r\n \r\n2.3 Nằm sấp thời gian dài\r\nNằm sấp là một tư thế ngủ mà nhiều trẻ nhỏ ưa thích. Tuy nhiên, khi nằm theo cách này cơ thể sẽ tạo một áp lực lên miệng và má. Nếu duy trì tư thế nằm sấp trong thời gian dài sẽ khiến răng sữa của trẻ mọc lệch.\r\n \r\n2.4 Các răng sữa rụng sớm\r\nKhi răng sữa mất sớm, răng vĩnh viễn sẽ mọc lên thay thế vào vị trí trống. Tuy nhiên, do răng vĩnh viễn có bề rộng lớn hơn nên có thể dẫn đến tình trạng mọc chen chúc, đẩy các răng sữa khác mộc lệch hướng.\r\nRăng vĩnh viễn mọc thay thế cho răng sữa rụng sớm khiến răng sữa xung quanh bị chen lấn, xô lệch vị trí.\r\n \r\n2.5 Một số nguyên nhân khác\r\nNgoài những nguyên nhân trên, tình trạng răng sữa mọc lệch ở trẻ xuất phát từ một số lý do sau:\r\nChấn thương vùng mặt: Các chấn thương, va đập mạnh có thể làm ảnh hưởng xương hàm của trẻ, khiến răng sữa mọc lệch. Bên cạnh đó, khi sinh nếu mẹ bị khó sinh sẽ phải sử dụng kềm forcep ở phần đầu có thể gây tổn thương khớp thái dương hàm dẫn đến răng sữa bị lệch.\r\nYếu tố di truyền: Thể trạng của trẻ được di truyền nhiều từ ba mẹ. Do đó, nếu phụ huynh bị móm, răng mọc không đều, xương hàm kém phát triển,… có thể sẽ di truyền cho con, từ đó khiến răng sữa của trẻ mọc lệch.\r\n \r\n3. Răng sữa mọc lệch có sao không? Có ảnh hưởng đến răng vĩnh viễn?\r\nRăng sữa bị mọc lệch có thể chưa ảnh hưởng đến răng vĩnh viễn nếu hàm răng của trẻ chưa mọc đầy đủ. Sau một thời gian khi các răng khác mọc lên, thường thì răng sữa sẽ tự cân chỉnh để đẩy các răng lệch về đúng vị trí hơn.\r\n \r\nTuy nhiên, răng sữa mọc lệch tăng nguy cơ sâu răng, viêm nướu, ảnh hưởng đến ăn nhai và sức khỏe tổng thể của trẻ. Một số trường hợp trẻ gặp chấn thương ở miệng hoặc có vấn đề về răng miệng mà không được xử lý kịp thời như sâu răng, viêm nướu… khiến răng sữa bị rụng sớm trước thời điểm thay răng vĩnh viễn thì nhiều nguy cơ các răng sau đó có thể mọc lệch ra khỏi nướu.\r\n \r\nBên cạnh đó, phụ huynh cần chú ý đưa trẻ đi thăm khám trong trường hợp các răng sữa bị mọc lệch lạc như:\r\n \r\nCắn ngược: Đây là tình trạng hàm dưới nằm ngoài hàm trên. Khi trẻ cười chỉ lộ răng hàm dưới mà không hề thấy hàm trên, cằm đưa ra ngoài nhiều hơn. Điều này sẽ khiến xương hàm phát triển sai, dẫn đến sai khớp cắn ở răng vĩnh viễn.\r\nCắn sâu: Đây là hiện tượng răng hàm dưới có thể bị lọt thỏm hoặc khuất sau răng hàm trên. Cắn sâu làm cản trở răng sữa hàm dưới phát triển, từ đó gây ra tình trạng sai khớp cắn ở răng viễn.\r\nTuy tình trạng răng sữa mọc lệch không quá nghiêm trọng, nhưng ba mẹ không nên chủ quan mà cần đưa trẻ đến thăm khám bác sĩ càng sớm càng tốt, ngay khi có dấu hiệu răng sữa mọc lệch, để được chẩn đoán và chỉ định phương án can thiệp phù hợp.\r\n \r\n4. Cách phòng ngừa tình trạng trẻ mọc răng bị lệch\r\n \r\nĐể hạn chế tình trạng mọc lệch răng tiếp tục xảy ra ở răng vĩnh viễn, ba mẹ có thể áp dụng các cách phòng tránh dưới đây:\r\n \r\n4.1 Điều chỉnh các thói quen xấu\r\n \r\nNhững thói quen xấu như mút ngón tay, chống cằm, nằm sấp,… đều ảnh hưởng không tốt đến quá trình mọc răng của trẻ. Vậy nên, ba mẹ hãy xác định thói quen xấu của trẻ và tiến hành giải thích, khuyên nhủ đồng thời hỗ trợ cho con bỏ dần thói quen không tốt đó.\r\n \r\n4.2 Chú ý vệ sinh răng miệng đúng cách\r\nKhi trẻ bắt đầu mọc răng sữa, phụ huynh nên hướng dẫn bé cách đánh răng đúng từ trong ra ngoài, thời gian chải ít nhất 2 phút với tần suất 2 lần/ngày. Đồng thời, chọn kem đánh răng có công thức không đường, chứa Xylitol và Active Fluoride để hạn chế sâu răng. Bên cạnh đó, ba mẹ cũng nên chú ý thay bàn chải của trẻ mỗi 2 tháng/lần hoặc khi lông bàn chải thô cứng.\r\nBa mẹ nên hướng dẫn cách chải răng đúng cho trẻ và tập cho con thói quen chải răng 2 lần mỗi ngày.', 'c57de7ffb63a04971dc3a933cf2f080djpeg', '2024-05-14 13:03:13'),
(26, 'Nguyên nhân kẽ răng bị hôi và cách khắc phục hiệu quả', 'Bệnh lý về răng miệng\r\nChứng hôi miệng thường xuất phát từ sự phân hủy protein của vi khuẩn trong miệng, dẫn đến việc sản sinh các chất như hydrogen sulfide, methyl mercaptan, dimethyl sulfide mang mùi khó chịu. Có nhiều nguyên nhân gây hôi miệng như sau:\r\nThức ăn sót lại trong miệng hoặc giữa các kẽ răng khiến vi khuẩn phân hủy tạo ra mùi hôi.\r\nViêm nha chu là tình trạng lợi xung quanh răng bị viêm, sưng, tấy đỏ do vi khuẩn. Nếu không được điều trị kịp thời, có thể hình thành túi vi khuẩn giữa lợi và răng, gây ra hôi miệng.\r\nSâu răng gây lỗ hổng trên răng, tạo điều kiện thuận lợi cho vi khuẩn phát triển và gây hôi miệng.\r\nCao răng là tình trạng mảng bám đóng vào chân răng, tạo môi trường thích hợp cho vi khuẩn sinh sôi, phát triển và gây hôi miệng.\r\nViêm lưỡi là nơi mảnh vụn thực phẩm dễ bị dính lại và tạo môi trường lý tưởng cho vi khuẩn phân hủy protein gây mùi hôi.\r\nKhô miệng là khi lượng nước bọt không đủ, vi khuẩn sinh sôi và gây mùi hôi do tính acid trong miệng tăng cao.\r\nNgoài ra, một số bệnh lý khác như ung thư, suy gan, viêm loét dạ dày, tắc nghẽn ruột và các bệnh trao đổi chất khác cũng có thể gây ra hôi miệng nặng do sự kết hợp cụ thể của các hóa chất mà chúng tạo ra. Để giảm thiểu tình trạng này, cần thường xuyên vệ sinh răng miệng và điều trị các bệnh lý liên quan đến miệng một cách kịp thời.\r\nKẽ răng bị hôi do thuốc\r\nCó một số loại thuốc có thể gây khô miệng và gây ra hôi miệng, bao gồm:\r\nThuốc kháng histamin: Thuốc này thường được sử dụng để điều trị các triệu chứng dị ứng. Tuy nhiên, chúng có thể làm giảm sản xuất nước bọt trong miệng, dẫn đến khô miệng và gây mùi hôi.\r\nThuốc an thần: Một số loại thuốc an thần có tác dụng làm giảm hoạt động của hệ thần kinh, gồm cả hệ thần kinh gây buồn ngủ, làm giảm sự tiết nước bọt và gây khô miệng.\r\n \r\nThuốc nhóm bệnh thần kinh: Một số loại thuốc nhóm này có tác dụng làm giảm sản xuất nước bọt và tạo điều kiện thuận lợi cho sự phát triển của vi khuẩn gây hôi miệng.\r\nSử dụng kháng sinh không đúng cách hoặc trong quá mức cũng có thể gây mất vi khuẩn có lợi trong miệng, tạo cơ hội cho nấm miệng phát triển và gây hôi miệng. Việc sử dụng kháng sinh trong thời gian dài, ví dụ như hơn một tháng, cũng có thể dẫn đến hôi miệng.\r\nKẽ răng bị hôi có ảnh hưởng gì không?\r\nKhi tiếp xúc với người bị hôi miệng nặng, mùi hôi có thể gây khó chịu và tạo ra những phản ứng như né tránh hoặc xa lánh. Điều này ảnh hưởng đến mối quan hệ giao tiếp hàng ngày với gia đình, bạn bè và đồng nghiệp.\r\nNhững người bị hôi miệng nặng thường gặp khó khăn trong việc giao tiếp hàng ngày, ngay cả với người thân trong gia đình, đồng nghiệp, hoặc bạn cùng lớp. Họ có thể cảm thấy tự ti và xa lánh trong các mối quan hệ gần gũi.\r\n \r\nHôi miệng ở một mức độ nghiêm trọng có thể tác động tiêu cực đến hạnh phúc gia đình. Vợ hoặc chồng bị hôi miệng có thể gặp khó khăn trong việc duy trì mối quan hệ gần gũi với đối tác, dẫn đến mất cảm tình và ảnh hưởng đến tình cảm trong gia đình.\r\n \r\nĐối với những người độc thân bị hôi miệng, khả năng tìm kiếm người bạn đời cũng bị hạn chế. Sự tự ti và ngại tiếp xúc có thể làm họ trở nên xa lánh và khó lập gia đình.\r\n \r\nNguy hiểm nhất của chứng hôi miệng là người bệnh có thể bị xa lánh bởi mọi người xung quanh. Điều này dẫn đến sự cô độc và tự kỷ, khi họ sống trong sợ hãi và lo lắng. Trong một số trường hợp nghiêm trọng, hậu quả có thể rất xấu, khi người bệnh có thể tìm đến hành vi tự tử để thoát khỏi cuộc sống bế tắc và tệ hại.\r\nCách điều trị kẽ răng bị hôi an toàn, hiệu quả\r\n \r\nSúc miệng bằng nước muối\r\n \r\nCách đơn giản và hiệu quả để điều trị hôi miệng là sử dụng nước muối để súc miệng tại nhà. Sau khi đánh răng, bạn chỉ cần lấy một thìa muối tinh khiết và hoà tan trong một cốc nước sạch có nhiệt độ vừa đủ ấm. Súc miệng đều đặn 2-3 lần mỗi ngày, và duy trì trong khoảng 3-4 ngày, bạn sẽ cảm nhận rõ rệt hiệu quả của phương pháp này trong việc trị hôi miệng.', '9eb9cd58b9ea5e04c890326b5c1f471f.png', '2024-05-14 13:04:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `lich_dat`
--
ALTER TABLE `lich_dat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`Ma_nhan_vien`);

--
-- Indexes for table `reset_token`
--
ALTER TABLE `reset_token`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lich_dat`
--
ALTER TABLE `lich_dat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `Ma_nhan_vien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
