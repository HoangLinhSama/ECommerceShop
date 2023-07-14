-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 14, 2023 lúc 01:52 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`) VALUES
(17, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`) VALUES
(527, 17, 1, 1),
(531, 17, 56, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderr`
--

CREATE TABLE `orderr` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL,
  `total_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zaloPayTransactionId` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderr`
--

INSERT INTO `orderr` (`id`, `user_id`, `address`, `date`, `status`, `total_price`, `zaloPayTransactionId`) VALUES
(83, 20, 'Hồ Chí Minh', '2023-04-15', 3, '70960000', ''),
(84, 20, 'Cần Thơ', '2023-04-15', 3, '67970000', ''),
(85, 20, 'Đồng Nai', '2023-04-15', 2, '25890000', ''),
(86, 20, 'Hà Nội', '2023-04-16', 3, '33980000', ''),
(87, 20, 'Đà Nẵng', '2023-04-16', 3, '43870000', ''),
(88, 20, 'Hải Dương', '2023-04-16', 1, '52010000', ''),
(89, 20, 'Bình Dương', '2023-04-17', 3, '56320000', ''),
(90, 20, 'Tây Ninh', '2023-04-17', 3, '62770000', ''),
(91, 20, 'Hải Phòng', '2023-04-17', 3, '30960000', ''),
(92, 20, 'Khánh Hòa', '2023-04-18', 3, '30960000', ''),
(93, 20, 'Long An', '2023-04-18', 3, '171740000', ''),
(94, 20, 'Nghệ An', '2023-04-18', 3, '56670000', ''),
(95, 20, 'Cần Thơ', '2023-04-19', 3, '24370000', ''),
(96, 20, 'Khánh Hòa', '2023-04-19', 3, '60570000', ''),
(97, 20, 'Hải Phòng', '2023-04-19', 3, '56640000', ''),
(98, 20, 'Bình Dương', '2023-04-20', 3, '47410000', ''),
(99, 20, 'Đồng Nai', '2023-04-20', 3, '52450000', ''),
(100, 20, 'Bình Phước', '2023-04-20', 2, '63280000', ''),
(101, 20, 'Đồng Nai', '2023-04-21', 3, '42470000', ''),
(102, 20, 'Hồ Chí Minh', '2023-04-21', 3, '60270000', ''),
(103, 20, 'Hồ Chí Minh', '2023-04-21', 3, '75380000', ''),
(104, 20, 'Hà Nội', '2023-04-22', 3, '90350000', ''),
(105, 20, 'Đồng Nai', '2023-04-22', 3, '27280000', ''),
(106, 20, 'Hồ Chí Minh', '2023-05-01', 3, '75950000', ''),
(107, 20, 'Đà Nẵng', '2023-05-02', 3, '44120000', ''),
(108, 20, 'Đồng Nai', '2023-05-03', 3, '37690000', ''),
(109, 20, 'Hồ Chí Minh', '2023-05-03', 3, '153680000', ''),
(110, 20, 'Bình Dương', '2023-05-04', 3, '41980000', ''),
(111, 20, 'Bình Thuận', '2023-05-05', 3, '21980000', ''),
(112, 20, 'Hà Nội', '2023-05-06', 3, '25170000', ''),
(113, 20, 'Hồ Chí Minh', '2023-05-07', 3, '21980000', ''),
(114, 20, 'Hà Nội', '2023-05-08', 3, '127790000', ''),
(115, 20, 'Đà Nẵng', '2023-05-09', 3, '25890000', ''),
(116, 20, 'Đồng Nai', '2023-05-10', 3, '30990000', ''),
(117, 20, 'Hải Phòng', '2023-05-11', 3, '21990000', ''),
(118, 20, 'Hồ Chí Minh', '2023-05-12', 3, '47890000', ''),
(119, 20, 'Hồ Chí Minh', '2023-06-25', 3, '72970000', ''),
(120, 20, 'Hà Nội', '2023-06-26', 3, '39280000', ''),
(121, 20, 'Bình Dương', '2023-06-26', 2, '66180000', ''),
(123, 20, 'Đà Nẵng', '2023-06-26', 3, '127790000', ''),
(124, 20, 'Quảng Nam', '2023-06-26', 0, '42780000', ''),
(139, 20, 'Da Nang', '2023-06-26', 0, '10990000', ''),
(140, 20, 'Ha Noi', '2023-06-26', 0, '11290000', ''),
(141, 20, 'Da Nang', '2023-06-26', 0, '15990000', ''),
(142, 20, 'Can Tho', '2023-06-26', 0, '47890000', ''),
(143, 20, 'Bac Giang', '2023-06-26', 0, '11290000', ''),
(144, 20, 'Hà Nam', '2023-06-26', 0, '25890000', ''),
(145, 20, 'Quang Binh', '2023-06-26', 0, '31980000', ''),
(146, 20, 'Quang Ngai', '2023-06-26', 0, '21990000', ''),
(147, 20, 'Binh Thuan', '2023-06-26', 0, '12090000', ''),
(148, 20, 'Da Nang', '2023-06-26', 0, '24490000', ''),
(149, 20, 'Dong Nai', '2023-06-26', 0, '47390000', ''),
(150, 20, 'Ha Noi', '2023-06-26', 0, '21990000', ''),
(151, 20, 'Da Nang', '2023-06-26', 0, '9490000', ''),
(152, 20, 'Quang Nam', '2023-06-26', 0, '21990000', ''),
(153, 20, 'Quang Binh', '2023-06-26', 0, '47890000', ''),
(154, 20, 'Hai Duong', '2023-06-26', 0, '18290000', ''),
(155, 20, 'Lam Dong', '2023-06-26', 0, '17990000', ''),
(156, 20, 'Gia Lai', '2023-06-26', 0, '4090000', ''),
(157, 20, 'Ha Tinh', '2023-06-26', 0, '18290000', ''),
(158, 20, 'Thanh Hoa', '2023-06-26', 0, '24490000', ''),
(159, 20, 'Ha Noi', '2023-06-26', 0, '3290000', ''),
(160, 20, 'Bac Kan', '2023-06-26', 0, '4990000', ''),
(161, 20, 'Kon Tum', '2023-06-26', 0, '24490000', ''),
(162, 20, 'Lang Son', '2023-06-26', 0, '47890000', ''),
(163, 20, 'Hoa Binh', '2023-06-26', 0, '15990000', ''),
(164, 20, 'Hoa Binh', '2023-06-26', 0, '15990000', ''),
(165, 20, 'Lam Dong', '2023-06-26', 0, '15990000', ''),
(166, 20, 'Bac Ninh', '2023-06-26', 0, '21990000', ''),
(167, 20, 'Quang Binh', '2023-06-26', 0, '17990000', ''),
(168, 20, 'Da Nang', '2023-06-26', 0, '32990000', ''),
(169, 20, 'Dong Nai', '2023-06-26', 0, '17990000', ''),
(170, 20, 'Da Nang', '2023-06-26', 0, '17990000', ''),
(171, 20, 'Binh Duong', '2023-06-26', 0, '17490000', ''),
(172, 20, 'Quang Tri', '2023-06-26', 0, '10990000', ''),
(173, 20, 'Quang Binh', '2023-06-26', 3, '21990000', ''),
(174, 20, 'Ha Noi', '2023-06-26', 0, '47890000', ''),
(175, 20, 'Dong Thap', '2023-06-26', 3, '12090000', ''),
(176, 20, 'Ca Mau', '2023-06-26', 3, '12090000', ''),
(177, 20, 'Can Tho', '2023-06-26', 3, '21990000', ''),
(178, 20, 'Hồ Chí Minh', '2023-06-27', 3, '21980000', ''),
(179, 20, 'Hà Nội', '2023-06-27', 3, '47390000', ''),
(180, 20, 'Đồng Nai', '2023-06-27', 3, '47390000', ''),
(181, 20, 'Hồ Chí Minh', '2023-06-28', 3, '50180000', '230628000000966'),
(190, 20, 'Hồ Chí Minh', '2023-06-29', 3, '9190000', '230629000002157'),
(191, 20, 'Đồng Nai', '2023-06-29', 3, '10990000', '230629000002063'),
(192, 20, 'Hà Nội', '2023-07-14', 3, '5000000', '230714000002029');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(113, 83, 63, 1, '17990000'),
(114, 83, 1, 1, '30990000'),
(115, 83, 9, 2, '10990000'),
(116, 84, 15, 1, '11990000'),
(117, 84, 52, 2, '27990000'),
(118, 85, 50, 1, '25890000'),
(119, 86, 63, 1, '17990000'),
(120, 86, 61, 1, '15990000'),
(121, 87, 60, 1, '11290000'),
(122, 87, 22, 2, '16290000'),
(123, 88, 28, 1, '7890000'),
(124, 88, 56, 1, '18290000'),
(125, 88, 51, 1, '25830000'),
(126, 89, 49, 2, '28160000'),
(127, 90, 50, 2, '25890000'),
(128, 90, 3, 1, '10990000'),
(129, 91, 18, 2, '4190000'),
(130, 91, 20, 1, '18990000'),
(131, 91, 5, 1, '3590000'),
(132, 92, 18, 2, '4190000'),
(133, 92, 20, 1, '18990000'),
(134, 92, 5, 1, '3590000'),
(135, 93, 63, 2, '17990000'),
(136, 93, 59, 2, '47890000'),
(137, 93, 12, 2, '19990000'),
(138, 94, 58, 1, '24490000'),
(139, 94, 12, 1, '19990000'),
(140, 94, 10, 1, '12190000'),
(141, 95, 8, 1, '3290000'),
(142, 95, 11, 1, '17490000'),
(143, 95, 5, 1, '3590000'),
(144, 96, 60, 1, '11290000'),
(145, 96, 56, 1, '18290000'),
(146, 96, 1, 1, '30990000'),
(147, 97, 49, 1, '28160000'),
(148, 97, 4, 1, '10990000'),
(149, 97, 11, 1, '17490000'),
(150, 98, 54, 1, '12090000'),
(151, 98, 51, 1, '25830000'),
(152, 98, 6, 1, '9490000'),
(153, 99, 49, 1, '28160000'),
(154, 99, 46, 1, '24290000'),
(155, 100, 39, 1, '35290000'),
(156, 100, 33, 1, '27990000'),
(157, 101, 56, 1, '18290000'),
(158, 101, 54, 2, '12090000'),
(159, 102, 60, 1, '11290000'),
(160, 102, 58, 2, '24490000'),
(161, 103, 33, 1, '27990000'),
(162, 103, 55, 1, '47390000'),
(163, 104, 63, 3, '17990000'),
(164, 104, 54, 1, '12090000'),
(165, 104, 46, 1, '24290000'),
(166, 105, 60, 1, '11290000'),
(167, 105, 61, 1, '15990000'),
(168, 106, 63, 3, '17990000'),
(169, 106, 9, 2, '10990000'),
(170, 107, 51, 1, '25830000'),
(171, 107, 56, 1, '18290000'),
(172, 108, 47, 1, '10410000'),
(173, 108, 61, 1, '15990000'),
(174, 108, 60, 1, '11290000'),
(175, 109, 53, 1, '127790000'),
(176, 109, 50, 1, '25890000'),
(177, 110, 1, 1, '30990000'),
(178, 110, 3, 1, '10990000'),
(179, 111, 21, 1, '10990000'),
(180, 111, 3, 1, '10990000'),
(181, 112, 13, 1, '6190000'),
(182, 112, 6, 2, '9490000'),
(183, 113, 9, 2, '10990000'),
(184, 114, 53, 1, '127790000'),
(185, 115, 50, 1, '25890000'),
(186, 116, 1, 1, '30990000'),
(187, 117, 57, 1, '21990000'),
(188, 118, 59, 1, '47890000'),
(189, 119, 1, 2, '30990000'),
(190, 119, 9, 1, '10990000'),
(191, 120, 60, 1, '11290000'),
(192, 120, 52, 1, '27990000'),
(193, 121, 56, 1, '18290000'),
(194, 121, 59, 1, '47890000'),
(195, 123, 53, 1, '127790000'),
(196, 124, 58, 1, '24490000'),
(197, 124, 56, 1, '18290000'),
(208, 139, 3, 1, '10990000'),
(209, 140, 60, 1, '11290000'),
(210, 141, 61, 1, '15990000'),
(211, 142, 59, 1, '47890000'),
(212, 143, 60, 1, '11290000'),
(213, 144, 50, 1, '25890000'),
(214, 145, 61, 2, '15990000'),
(215, 146, 57, 1, '21990000'),
(216, 147, 54, 1, '12090000'),
(217, 148, 58, 1, '24490000'),
(218, 149, 55, 1, '47390000'),
(219, 150, 57, 1, '21990000'),
(220, 151, 6, 1, '9490000'),
(221, 152, 57, 1, '21990000'),
(222, 153, 59, 1, '47890000'),
(223, 154, 56, 1, '18290000'),
(224, 155, 63, 1, '17990000'),
(225, 156, 27, 1, '4090000'),
(226, 157, 56, 1, '18290000'),
(227, 158, 58, 1, '24490000'),
(228, 159, 8, 1, '3290000'),
(229, 160, 7, 1, '4990000'),
(230, 161, 58, 1, '24490000'),
(231, 162, 59, 1, '47890000'),
(232, 163, 61, 1, '15990000'),
(233, 164, 61, 1, '15990000'),
(234, 165, 61, 1, '15990000'),
(235, 166, 57, 1, '21990000'),
(236, 167, 63, 1, '17990000'),
(237, 168, 40, 1, '32990000'),
(238, 169, 63, 1, '17990000'),
(239, 170, 63, 1, '17990000'),
(240, 171, 11, 1, '17490000'),
(241, 172, 3, 1, '10990000'),
(242, 173, 57, 1, '21990000'),
(243, 174, 59, 1, '47890000'),
(244, 175, 54, 1, '12090000'),
(245, 176, 54, 1, '12090000'),
(246, 177, 57, 1, '21990000'),
(247, 178, 21, 2, '10990000'),
(248, 179, 55, 1, '47390000'),
(249, 180, 55, 1, '47390000'),
(250, 181, 46, 1, '24290000'),
(251, 181, 50, 1, '25890000'),
(254, 190, 83, 1, '5000000'),
(255, 190, 18, 1, '4190000'),
(256, 191, 9, 1, '10990000'),
(257, 192, 83, 1, '5000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `picture`, `description`, `type`, `quantity`) VALUES
(1, 'iPhone 14 Pro Max 256GB', '30990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/289700/iphone-14-pro-max-vang-thumb-600x600.jpg', 'Màn hình:OLED, 6.7\", Super Retina XDR\r\nHệ điều hành:iOS 16\r\nCamera sau:Chính 48 MP & Phụ 12 MP, 12 MP\r\nCamera trước:12 MP\r\nChip:Apple A16 Bionic\r\nRAM:6 GB\r\nDung lượng lưu trữ:256 GB\r\nSIM:1 Nano SIM & 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc:4323 mAh, 20 W', 1, 4),
(3, 'Samsung Galaxy S21 FE 5G (6GB/128GB)', '10990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/267211/Samsung-Galaxy-S21-FE-vang-1-2-600x600.jpg', 'Màn hình:Dynamic AMOLED 2X, 6.4\", Full HD+\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 12 MP & Phụ 12 MP, 8 MP\r\nCamera trước:32 MP\r\nChip:Exynos 2100\r\nRAM:6 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM, Hỗ trợ 5G\r\nPin, Sạc:4500 mAh, 25 W', 1, 4),
(4, 'OPPO Reno8 T 5G 256GB', '10990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8t-vang1-thumb-600x600.jpg', 'Màn hình:AMOLED, 6.7\", Full HD+\r\nHệ điều hành:Android 13\r\nCamera sau:Chính 108 MP & Phụ 2 MP, 2 MP\r\nCamera trước:32 MP\r\nChip:Snapdragon 695 5G\r\nRAM:8 GB\r\nDung lượng lưu trữ:256 GB\r\nSIM:2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G\r\nPin, Sạc:4800 mAh, 67 W', 1, 9),
(5, 'Xiaomi Redmi 12C 128GB', '3590000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/303163/xiaomi-redmi-12c-blue-thumb-600x600.jpg', 'Màn hình:IPS LCD 6.71\" HD+\r\nHệ điều hành:Android 13\r\nCamera sau:50 MP\r\nCamera trước:5 MP\r\nChip:MediaTek Helio G85\r\nRAM:4 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:5000 mAh, 10 W', 1, 8),
(6, 'Samsung Galaxy A34 5G 256GB', '9490000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/298377/samsung-galaxy-a34-5g-xanh-thumb-600x600.jpg', 'Màn hình:Super AMOLED 6.6\" Full HD+\r\nHệ điều hành:Android 13\r\nCamera sau:Chính 48 MP & Phụ 8 MP, 5 MP\r\nCamera trước:13 MP\r\nChip:MediaTek Dimensity 1080 8 nhân\r\nRAM:8 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM Hỗ trợ 5G\r\nPin, Sạc:5000 mAh, 25 W', 1, 4),
(7, 'Realme C55 6GB', '4990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/301603/realme-c35-den-thumb-600x600.jpg', 'Màn hình:IPS LCD 6.72\" Full HD+\r\nHệ điều hành:Android 13\r\nCamera sau:Chính 64 MP & Phụ 2 MP\r\nCamera trước:8 MP\r\nChip:MediaTek Helio G88\r\nRAM:6 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:5000 mAh, 33 W', 1, 9),
(8, 'Vivo Y02s 32GB', '3290000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/285032/vivo-y02s-thumb-1-2-3-600x600.jpg', 'Màn hình:IPS LCD, 6.51\"HD+\r\nHệ điều hành:Android 12\r\nCamera sau:8 MP\r\nCamera trước:5 MP\r\nChip:MediaTek Helio P35\r\nRAM:3 GB\r\nDung lượng lưu trữ:32 GB\r\nSIM:2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:5000 mAh, 10 W', 1, 7),
(9, 'Lenovo Ideapad 3 15IAU7 i3 1215U (82RK005LVN)', '10990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/287769/TimerThumb/lenovo-ideapad-3-15iau7-i3-82rk005lvn-(12).jpg', 'CPU:i3, 1215U, 1.2GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB onboard + 1 khe trống), 3200 MHz\r\nỔ cứng:256 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nMàn hình:15.6\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel UHD\r\nCổng kết nối:HDMI, Jack tai nghe 3.5 mm, 1 x USB 3.2, 1 x USB 2.0, USB Type-C (hỗ trợ truyền dữ liệu, Power Delivery 3.0 và DisplayPort 1.2)\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 359.2 mm - Rộng 236.5 mm - Dày 19.9 mm - Nặng 1.63 kg\r\nThời điểm ra mắt:2022', 2, 4),
(10, 'HP 15s fq2716TU i3 1115G4 (7C0X3PA)', '12190000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/301634/TimerThumb/hp-15s-fq2716tu-i3-7c0x3pa-(2).jpg', 'CPU:i3, 1115G4, 3GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe\r\nMàn hình:15.6\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel UHD\r\nCổng kết nối:HDMI, 2x SuperSpeed USB A, Jack tai nghe 3.5 mm, 1x SuperSpeed USB Type-C\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 358.5 mm - Rộng 242 mm - Dày 17.9 mm - Nặng 1.7 kg\r\nThời điểm ra mắt:2022', 2, 9),
(11, 'Asus TUF Gaming F15 FX506LHB i5 10300H (HN188W)', '17490000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/279259/TimerThumb/asus-tuf-gaming-fx506lhb-i5-hn188w-(44).jpg', 'CPU:i5, 10300H, 2.5GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 2933 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nMàn hình:15.6\", Full HD (1920 x 1080),  144Hz\r\nCard màn hình:Card rời, GTX 1650 4GB\r\nCổng kết nối:HDMI, LAN (RJ45), USB 2.0, Jack tai nghe 3.5 mm, 2 x USB 3.2, 1 x USB 3.2 Gen 2 Type-C (hỗ trợ DisplayPort, Power delivery, G-SYNC)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 359 mm - Rộng 256 mm - Dày 24.9 mm - Nặng 2.3 kg\r\nThời điểm ra mắt:2021', 2, 7),
(12, 'MacBook Air M1 2020 7-core GPU', '19990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231244/TimerThumb/apple-macbook-air-2020-mgn63saa-(69).jpg', 'CPU:Apple M1\r\nRAM:8 GB\r\nỔ cứng:256 GB SSD\r\nMàn hình:13.3\", Retina (2560 x 1600)\r\nCard màn hình:Card tích hợp, 7 nhân GPU\r\nCổng kết nối:Jack tai nghe 3.5 mm, 2 x Thunderbolt 3 (USB-C)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Mac OS\r\nThiết kế:Vỏ kim loại nguyên khối\r\nKích thước, khối lượng:Dài 304.1 mm - Rộng 212.4 mm - Dày 4.1 mm đến 16.1 mm - Nặng 1.29 kg\r\nThời điểm ra mắt:2020', 2, 7),
(13, 'Samsung Galaxy A23 6GB', '6190000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-den-thumb-600x600.jpg', 'Màn hình:PLS TFT LCD, 6.6\", Full HD+\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 50 MP & Phụ 5 MP, 2 MP, 2 MP\r\nCamera trước:8 MP\r\nChip:Snapdragon 680\r\nRAM:6 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:5000 mAh, 25 W', 1, 9),
(14, 'Samsung Galaxy A33 5G 6GB', '7290000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-5g-thumb-new-1-600x600.jpg', 'Màn hình:Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP\r\nCamera trước:13 MP\r\nChip:Exynos 1280\r\nRAM:6 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G\r\nPin, Sạc:5000 mAh, 25 W', 1, 10),
(15, 'iPhone 11 64GB', '11990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-trang-600x600.jpg', 'Màn hình:IPS LCD, 6.1\", Liquid Retina\r\nHệ điều hành:iOS 15\r\nCamera sau:2 camera 12 MP\r\nCamera trước:12 MP\r\nChip:Apple A13 Bionic\r\nRAM:4 GB\r\nDung lượng lưu trữ:64 GB\r\nSIM:1 Nano SIM & 1 eSIM, Hỗ trợ 4G\r\nPin, Sạc:3110 mAh, 18 W', 1, 9),
(16, 'Xiaomi Redmi Note 11 (6GB/128GB)', '4390000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/245261/Xiaomi-redmi-note-11-blue-600x600.jpg', 'Màn hình:AMOLED, 6.43\", Full HD+\r\nHệ điều hành:Android 11\r\nCamera sau:Chính 50 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:13 MP\r\nChip:Snapdragon 680\r\nRAM:6 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:5000 mAh, 33 W', 1, 10),
(18, 'Realme C25Y 128GB', '4190000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/250615/realme-c25y-blue-600x600.jpg', 'Màn hình:IPS LCD, 6.5\", HD+\r\nHệ điều hành:Android 11\r\nCamera sau:Chính 50 MP & Phụ 2 MP, 2 MP\r\nCamera trước:8 MP\r\nChip:Unisoc T618\r\nRAM:4 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:5000 mAh, 18 W', 1, 7),
(19, 'Samsung Galaxy S21 FE 5G (8GB/128GB)', '12490000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/233090/Samsung-Galaxy-S21-FE-den-600x600.jpg', 'Màn hình:Dynamic AMOLED 2X, 6.4\", Full HD+\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 12 MP & Phụ 12 MP, 8 MP\r\nCamera trước:32 MP\r\nChip:Exynos 2100\r\nRAM:8 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM, Hỗ trợ 5G\r\nPin, Sạc:4500 mAh, 25 W', 1, 10),
(20, 'iPhone 13 128GB', '18990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-starlight-1-600x600.jpg', 'Màn hình:OLED, 6.1\", Super Retina XDR\r\nHệ điều hành:iOS 15\r\nCamera sau:2 camera 12 MP\r\nCamera trước:12 MP\r\nChip:Apple A15 Bionic\r\nRAM:4 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:1 Nano SIM & 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc:3240 mAh, 20 W', 1, 9),
(21, 'MSI Modern 14 B11MOU i3 1115G4 (1027VN)', '10990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/266898/TimerThumb/msi-modern-14-b11mou-i3-1027vn-(22).jpg', 'CPU:i3, 1115G4, 3GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:256 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2 TB)\r\nMàn hình:14\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel UHD\r\nCổng kết nối:HDMI, USB Type-C, Jack tai nghe 3.5 mm, 2 x USB 3.2\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 319 mm - Rộng 219 mm - Dày 18.1 mm - Nặng 1.3 kg\r\nThời điểm ra mắt:2021', 2, 7),
(22, 'Acer Aspire 7 Gaming A715 42G R05G R5 5500U', '16290000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/269533/TimerThumb/acer-aspire-7-gaming-a715-42g-r05g-r5-nhqaysv007-(42).jpg', 'CPU:Ryzen, 55500U, 2.1GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB), Không hỗ trợ khe cắm HDD, Không hỗ trợ khe cắm SSD M2 mở rộng thêm\r\nMàn hình:15.6\", Full HD (1920 x 1080),  144Hz\r\nCard màn hình:Card rời, GTX 1650 4GB\r\nCổng kết nối:USB Type-C, HDMI, LAN (RJ45), USB 2.0, Jack tai nghe 3.5 mm, 2 x USB 3.2\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 363.4 mm - Rộng 254.5 mm - Dày 22.9 mm - Nặng 2.1 kg\r\nThời điểm ra mắt:2021', 2, 8),
(23, 'HP 240 G8 i3 1115G4 (6L1A1PA)', '11490000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/285962/hp-240-g8-i3-6l1a1pa-thumb-600x600.jpg', 'CPU:i3, 1115G4, 3GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:256 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nMàn hình:14\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel UHD\r\nCổng kết nối:2 x USB 3.1, USB Type-C, HDMI, LAN (RJ45), Jack tai nghe 3.5 mm\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 324 mm - Rộng 225.9 mm - Dày 19.9 mm - Nặng 1.47 kg\r\nThời điểm ra mắt:2022', 2, 10),
(24, 'Dell Vostro 3510 i5 1135G7 (P112F002BBL)', '18990000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/266280/TimerThumb/dell-vostro-3510-i5-p112f002bbl-(14).jpg', 'CPU:i5, 1135G7, 2.4GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2 TB (2280) / 1 TB (2230)), Hỗ trợ khe cắm HDD SATA (nâng cấp tối đa 2 TB)\r\nMàn hình:15.6\", Full HD (1920 x 1080)\r\nCard màn hình:Card rời, MX350 2GB\r\nCổng kết nối:HDMI, LAN (RJ45), USB 2.0, Jack tai nghe 3.5 mm, 2 x USB 3.2 / 1 x USB 3.2 và 1 x USB Type-C (Tuỳ thuộc vào lô hàng)\r\nHệ điều hành:Windows 11 Home SL + Office Home & Student vĩnh viễn\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 358.5 mm - Rộng 235.5 mm - Dày 18.9 mm - Nặng 1.69 kg\r\nThời điểm ra mắt:2021', 2, 10),
(27, 'OPPO A57 64GB', '4090000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/282090/oppo-a57-den-thumb-600x600.jpg', 'Màn hình:IPS LCD, 6.56\", HD+\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 13 MP & Phụ 2 MP\r\nCamera trước:8 MP\r\nChip:MediaTek Helio G35\r\nRAM:4 GB\r\nDung lượng lưu trữ:64 GB\r\nSIM:2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:5000 mAh, 33 W', 1, 9),
(28, 'Xiaomi Redmi Note 11 Pro 5G', '7890000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/246640/xiaomi-redmi-note-11-pro-5g-xam-thumb-600x600.jpg', 'Màn hình:AMOLED, 6.67\", Full HD+\r\nHệ điều hành:Android 11\r\nCamera sau:Chính 108 MP & Phụ 8 MP, 2 MP\r\nCamera trước:16 MP\r\nChip:Snapdragon 695 5G\r\nRAM:8 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G\r\nPin, Sạc:5000 mAh, 67 W', 1, 9),
(29, 'Samsung Galaxy Z Fold4 5G', '37990000', 'https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-kem-256gb-600x600.jpg', 'Màn hình:Dynamic AMOLED 2X, Chính 7.6\" & Phụ 6.2\", Quad HD+ (2K+)\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 50 MP & Phụ 12 MP, 10 MP\r\nCamera trước:10 MP & 4 MP\r\nChip:Snapdragon 8+ Gen 1\r\nRAM:12 GB\r\nDung lượng lưu trữ:256 GB\r\nSIM:1 Nano SIM & 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc:4400 mAh, 25 W', 1, 10),
(30, 'iPhone 13 Pro Max', '27990000', 'https://cdn.tgdd.vn/Products/Images/42/250262/iphone-13-pro-max-gold-1-600x600.jpg', 'Màn hình:OLED, 6.7\", Super Retina XDR\r\nHệ điều hành:iOS 15\r\nCamera sau:3 camera 12 MP\r\nCamera trước:12 MP\r\nChip:Apple A15 Bionic\r\nRAM:6 GB\r\nDung lượng lưu trữ:512 GB\r\nSIM:1 Nano SIM & 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc:4352 mAh, 20 W', 1, 10),
(33, 'Samsung Galaxy Z Fold3 5G 512GB', '27990000', 'https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold-3-silver-1-1-600x600.jpg', 'Màn hình:Dynamic AMOLED 2X, Chính 7.6\" & Phụ 6.2\", Full HD+\r\nHệ điều hành:Android 11\r\nCamera sau:3 camera 12 MP\r\nCamera trước:10 MP & 4 MP\r\nChip:Snapdragon 888\r\nRAM:12 GB\r\nDung lượng lưu trữ:512 GB\r\nSIM:2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc:4400 mAh, 25 W', 1, 8),
(34, 'Samsung Galaxy S23 Ultra 5G', '26990000', 'https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-1-600x600.jpg', 'Màn hình:Dynamic AMOLED 2X, 6.8\", Quad HD+ (2K+)\r\nHệ điều hành:Android 13\r\nCamera sau:Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP\r\nCamera trước:12 MP\r\nChip:Snapdragon 8 Gen 2 8 nhân\r\nRAM:8 GB\r\nDung lượng lưu trữ:256 GB\r\nSIM:2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc:5000 mAh, 45 W', 1, 10),
(35, 'MacBook Pro 14 inch M2 Pro 2023 16-core GPU', '49190000', 'https://cdn.tgdd.vn/Products/Images/44/302146/macbook-pro-14-inch-m2-pro-gray-thumb-600x600.jpg', 'CPU:Apple M2 Pro, 200GB/s\r\nRAM:16 GB\r\nỔ cứng:512 GB SSD\r\nMàn hình:14.2\", Liquid Retina XDR display (3024 x 1964), 120Hz\r\nCard màn hình:Card tích hợp, 16 nhân GPU\r\nCổng kết nối:\r\nHDMI, Jack tai nghe 3.5 mm, MagSafe 3, 3 x Thunderbolt 4\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Mac OS\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 312.6 mm - Rộng 221.2 mm - Dày 15.5 mm - Nặng 1.6 kg\r\nThời điểm ra mắt:2023', 2, 10),
(36, 'OPPO Find X5 Pro 5G', '24990000', 'https://cdn.tgdd.vn/Products/Images/42/250622/oppo-find-x5-pro-den-thumb-600x600.jpg', 'Màn hình:AMOLED, 6.7\", Quad HD+ (2K+)\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 50 MP & Phụ 50 MP, 13 MP\r\nCamera trước:32 MP\r\nChip:Snapdragon 8 Gen 1\r\nRAM:12 GB\r\nDung lượng lưu trữ:256 GB\r\nSIM:2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc:5000 mAh, 80 W', 1, 10),
(37, 'Asus Gaming ROG Strix SCAR 18 G834JY i9 13980HX', '118000000', 'https://cdn.tgdd.vn/Products/Images/44/302473/asus-gaming-rog-strix-scar-18-g834jy-i9-n6039w-thumb-600x600.jpg', 'CPU:i9, 13980HX, 2.2GHz\r\nRAM:64 GB, DDR5 2 khe (1 khe 32 GB + 1 khe 32 GB), 4800 MHz\r\nỔ cứng:2 TB SSD\r\nMàn hình:18 inch, WQXGA (2560 x 1600), 240Hz\r\nCard màn hình:Card rời, RTX 4090 16GB\r\nCổng kết nối:HDMI, LAN (RJ45), Jack tai nghe 3.5 mm, 2 x USB 3.2, 1 x Thunderbolt 4 (hỗ trợ DisplayPort / G-SYNC), 1 x USB 3.2 Gen 2 Type-C (hỗ trợ DisplayPort, Power delivery, G-SYNC)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 399 mm - Rộng 294 mm - Dày 23.1 ~ 30.8 mm - Nặng 3.1 kg\r\nThời điểm ra mắt:2023', 2, 10),
(38, 'Asus Gaming ROG Zephyrus G14 GA402RJ R7 6800HS', '38800000', 'https://cdn.tgdd.vn/Products/Images/44/302466/asus-gaming-rog-zephyrus-g14-ga402rj-r7-l8030w-thumb-600x600.jpg', 'CPU:Ryzen 7, 6800HS, 3.2GHz\r\nRAM:16 GB, DDR5 2 khe (1 khe 8 GB onboard + 1 khe 8 GB), 4800 MHz\r\nỔ cứng:1 TB SSD\r\nMàn hình:14\", WQXGA (2560 x 1600), 120Hz\r\nCard màn hình:Card rời, RX 6700S 8GB\r\nCổng kết nối:HDMI, Jack tai nghe 3.5 mm, 2 x USB 3.2, 1 x USB Type-C (hỗ trợ DisplayPort)1 x USB Type-C 3.2 (hỗ trợ Power Delivery và DisplayPort)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 312 mm - Rộng 227 mm - Dày 19.5 mm - Nặng 1.72 kg\r\nThời điểm ra mắt:2022', 2, 10),
(39, 'Asus Gaming TUF Dash F15 FX517ZR i7 12650H (HN086W)', '35290000', 'https://cdn.tgdd.vn/Products/Images/44/299061/asus-tuf-gaming-fx517z-i7-hn086w-thumb-600x600.jpg', 'CPU:i7, 12650H, 2.30 GHz\r\nRAM:8 GB, DDR5 2 khe (1 khe 8 GB + 1 khe trống), 4800 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB), Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1 TB)\r\nMàn hình:15.6\", Full HD (1920 x 1080),  144Hz\r\nCard màn hình:Card rời, RTX 3070 8GB\r\nCổng kết nối:1 x Thunderbolt 4 (hỗ trợ DisplayPort), HDMI, LAN (RJ45), Jack tai nghe 3.5 mm, 2 x USB 3.2, 1 x USB 3.2 Gen 2 Type-C (hỗ trợ DisplayPort, Power delivery, G-SYNC)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 354 mm - Rộng 251 mm - Dày 20.7 mm - Nặng 2 kg\r\nThời điểm ra mắt:2022', 2, 9),
(40, 'Asus Zenbook 14 Flip OLED UP3404VA i7 1360P (KN039W)', '32990000', 'https://cdn.tgdd.vn/Products/Images/44/304259/asus-zenbook-14-flip-oled-up3404va-i7-kn039w-thumb-1-600x600.jpg', 'CPU:i7, 1360P, 2.2GHz\r\nRAM:16 GB, LPDDR5 (Onboard), 4800 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe Gen 4.0\r\nMàn hình:14\", 2.8K (2880 x 1800) - OLED, 90Hz\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:2 x Thunderbolt 4 hỗ trợ display / power delivery, HDMI, Jack tai nghe 3.5 mm, 1 x USB 3.2\r\nĐặc biệt:Có màn hình cảm ứng, Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ kim loại - Nhôm\r\nKích thước, khối lượng:Dài 311.5 mm - Rộng 223.4 mm - Dày 15.9 mm - Nặng 1.5 kg\r\nThời điểm ra mắt:2023', 2, 9),
(41, 'Asus Zenbook 14 OLED UX3402ZA i7 1260P (KM221W)\r\n', '27690000', 'https://cdn.tgdd.vn/Products/Images/44/285771/asus-zenbook-14-oled-ux3402za-i7-km221w-600x600.jpg', 'CPU:i7, 1260P, 2.1GHz\r\nRAM:16 GB, LPDDR5 (Onboard), 4800 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe\r\nMàn hình:14\", 2.8K (2880 x 1800) - OLED 16:10, 90Hz\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:HDMI, Jack tai nghe 3.5 mm, 2 x Thunderbolt 4, 1 x USB 3.2\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 313.6 mm - Rộng 220.6 mm - Dày 16.9 mm - Nặng 1.39 kg\r\nThời điểm ra mắt:2022', 2, 10),
(42, 'HP Envy 16 h0205TX i9 12900H (7C0T2PA)', '60390000', 'https://cdn.tgdd.vn/Products/Images/44/302980/hp-envy-16-h0205tx-i9-7c0t2pa-thumb-1-600x600.jpg', 'CPU:i9, 12900H, 2.5GHz\r\nRAM:32 GB, DDR5 2 khe (1 khe 16 GB + 1 khe 16 GB), 4800 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng\r\nMàn hình:16\", 4K/UHD+ (3840 x 2400) OLED\r\nCard màn hình:Card rời, RTX 3060 6GB\r\nCổng kết nối:HDMI, Jack tai nghe 3.5 mm, 2 x USB 3.2, 2 x Thunderbolt 4 with USB-C (USB Power Delivery, DisplayPort 1.4)\r\nĐặc biệt:Có màn hình cảm ứng, Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ kim loại - Nhôm\r\nKích thước, khối lượng:Dài 357.4 mm - Rộng 251.8 mm - Dày 19.9 mm - Nặng 2.32 kg\r\nThời điểm ra mắt:2022', 2, 10),
(43, 'HP Omen 16 n0085AX R9 6900HX (7C144PA)', '57890000', 'https://cdn.tgdd.vn/Products/Images/44/302982/hp-omen-16-n0085ax-r9-7c144pa-thumb-fix-600x600.jpg', 'CPU:Ryzen 9, 6900HX, 3.3GHz\r\nRAM:32 GB, DDR5 2 khe (1 khe 16 GB + 1 khe 16 GB), 4800 MHz\r\nỔ cứng:Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng, 1 TB SSD\r\nMàn hình:16.1\", QHD (2560 x 1440), 165Hz\r\nCard màn hình:Card rời, RTX 3070Ti 8GB\r\nCổng kết nối:HDMI, LAN (RJ45), 3 x USB 3.2, Jack tai nghe 3.5 mm, 2 x USB Type-C (hỗ trợ USB Power Delivery, DisplayPort 1.4)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 369 mm - Rộng 248 mm - Dày 23 mm - Nặng 2.35 kg\r\nThời điểm ra mắt:2022', 2, 10),
(44, 'HP Elitebook X360 1040 G9 i7 1255U (6Z982PA)', '46090000', 'https://cdn.tgdd.vn/Products/Images/44/302983/hp-elitebook-x360-1040-g9-i7-6z982pa-070323-112809-600x600.jpg', 'CPU:i7, 1255U, 1.7GHz\r\nRAM:16 GB, DDR5 (Onboard), 4800 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe\r\nMàn hình:14\", WUXGA (1920 x 1200)\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:HDMI, 2x SuperSpeed USB A, Jack tai nghe 3.5 mm, 2 x Thunderbolt 4 with USB-C (USB Power Delivery, DisplayPort 1.4)\r\nĐặc biệt:Có màn hình cảm ứng, Có đèn bàn phím\r\nHệ điều hành:Windows 11 Pro\r\nThiết kế:Vỏ kim loại - Nhôm\r\nKích thước, khối lượng:Dài 315.6 mm - Rộng 225.6 mm - Dày 19.2 mm - Nặng 1.35 kg\r\nThời điểm ra mắt:2022', 2, 10),
(45, 'HP Gaming VICTUS 16 e1102AX R7 6800H (7C139PA)', '28390000', 'https://cdn.tgdd.vn/Products/Images/44/302487/TimerThumb/hp-victus-16-e1102ax-r7-7c139pa-(2).jpg', 'CPU:Ryzen 7, 6800H, 3.2GHz\r\nRAM:16 GB, DDR5 2 khe (1 khe 8 GB + 1 khe 8 GB), 4800 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe\r\nMàn hình:16.1\", Full HD (1920 x 1080),  144Hz\r\nCard màn hình:Card rời, RTX 3050Ti 4GB\r\nCổng kết nối:HDMI, LAN (RJ45), Jack tai nghe 3.5 mm, 3 x USB 3.2, 1 x USB Type-C (hỗ trợ USB Power Delivery, DisplayPort 1.4)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 370 mm - Rộng 260 mm - Dày 23.5 mm - Nặng 2.4 kg\r\nThời điểm ra mắt:2022', 2, 10),
(46, 'HP Pavilion X360 14 ek0132TU i7 1255U (7C0W4PA)', '24290000', 'https://cdn.tgdd.vn/Products/Images/44/303079/hp-pavilion-x360-14-ek0132tu-i7-7c0w4pa-thumb-600x600.jpg', 'CPU:i7, 1255U, 1.7GHz\r\nRAM:16 GB, DDR4 (Onboard), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nMàn hình:14\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:USB Type-C, HDMI, Jack tai nghe 3.5 mm, 2 x USB 3.2\r\nĐặc biệt:Có màn hình cảm ứng, Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 322 mm - Rộng 210 mm - Dày 19.9 mm - Nặng 1.51 kg\r\nThời điểm ra mắt:2022', 2, 7),
(47, 'HP Pavilion X360 14 dy0161TU i3 1125G4 (4Y1D2PA)', '10410000', 'https://cdn.tgdd.vn/Products/Images/44/270390/hp-pavilion-x360-14-dy0161tu-i3-4y1d2pa-170322-014934-600x600.jpg', 'CPU:i3, 1125G4, 2GHz\r\nRAM:4 GB, DDR4 2 khe (1 khe 4 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nMàn hình:14\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel UHD\r\nCổng kết nối:HDMI, 2 x USB 3.1, Jack tai nghe 3.5 mm, 1 x USB 3.1 Gen 1 Type-C (support Power Delivery, DisplayPort)\r\nĐặc biệt:Có màn hình cảm ứng\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa - nắp lưng bằng kim loại\r\nKích thước, khối lượng:Dài 322 mm - Rộng 209 mm - Dày 20.6 mm - Nặng 1.525 kg\r\nThời điểm ra mắt:2021', 2, 9),
(48, 'Lenovo Yoga Duet 7 13ITL6 i7 1165G7 (82MA009PVN)', '32490000', 'https://cdn.tgdd.vn/Products/Images/44/302520/lenovo-yoga-duet-7-13itl6-i7-82ma009pvn-thumb-600x600.jpg', 'CPU:i7, 1165G7, 2.8GHz\r\nRAM:16 GB, DDR4 (Onboard), 3200 MHz\r\nỔ cứng:1 TB SSD\r\nMàn hình:13\", WQHD (2160x1350)\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:1 x Thunderbolt 4 (hỗ trợ Power Delivery 3.0 và DisplayPort 1.4), Jack tai nghe 3.5 mm, USB-C 3.2 Gen 1 (support data transfer and Power Delivery 3.0), 1 x USB-C 3.2 Gen 1 (hỗ trợ truyền dữ liệu và Always On)\r\nĐặc biệt:Có màn hình cảm ứng, Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Mặt trên Magie Nhôm - Mặt dưới vải nhựa\r\nKích thước, khối lượng:Dài 297.4 mm - Rộng 207.4 mm - Dày 9.19 mm - Nặng 1.168 kg\r\nThời điểm ra mắt:2022', 2, 10),
(49, 'Lenovo Ideapad Gaming 3 15IAH7 i7 12700H', '28160000', 'https://cdn.tgdd.vn/Products/Images/44/292663/lenovo-ideapad-gaming-3-15iah7-i7-82s9007uvn-thumb-600x600.jpg', 'CPU:i7, 12700H, 2.30 GHz\r\nRAM:16 GB, DDR4 2 khe (1 khe 8 GB + 1 khe 8 GB), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nMàn hình:15.6\", Full HD (1920 x 1080), 120Hz\r\nCard màn hình:Card rời, RTX 3050Ti 4GB\r\nCổng kết nối:1 x Thunderbolt 4 (hỗ trợ Power Delivery 3.0 và DisplayPort 1.4), HDMI, LAN (RJ45), Jack tai nghe 3.5 mm, 2 x USB 3.2\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 359.6 mm - Rộng 266.4 mm - Dày 21.8 mm - Nặng 2.315 kg\r\nThời điểm ra mắt:2022', 2, 6),
(50, 'Lenovo Yoga Slim 7 Carbon 13ITL5 i7 1165G7', '25890000', 'https://cdn.tgdd.vn/Products/Images/44/288373/lenovo-yoga-slim-7-carbon-13itl5-i7-82ev00awvn-thumb-600x600.jpg', 'CPU:i7, 1165G7, 2.8GHz\r\nRAM:16 GB, LPDDR4X (Onboard), 4266 MHz\r\nỔ cứng:1 TB SSD M.2 PCIe\r\nMàn hình:13.3\", WQXGA (2560 x 1600)\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:USB Type-C, Jack tai nghe 3.5 mm, 2 x Thunderbolt 4\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Mặt lưng Carbon - Chiếu nghỉ tay bằng Nhôm Magie\r\nKích thước, khối lượng:Dài 295.88 mm - Rộng 208.85 mm - Dày 15 mm - Nặng 0.966 kg\r\nThời điểm ra mắt:2022', 2, 2),
(51, 'Lenovo Yoga 7 14IAL7 i7 1260P (82QE000QVN)', '25830000', 'https://cdn.tgdd.vn/Products/Images/44/288204/lenovo-yoga-slim-7-14ial7-i7-82qe000qvn-thumb-600x600.jpg', 'CPU:i7, 1260P, 2.1GHz\r\nRAM:16 GB, LPDDR5 (Onboard), 4800 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB)\r\nMàn hình:14\", 2.8K (2880 x 1800) - OLED, 90Hz\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:HDMI, Jack tai nghe 3.5 mm, 2 x Thunderbolt 4, 1 x USB 3.2 (Always on)\r\nĐặc biệt:Có màn hình cảm ứng, Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 316.66 mm - Rộng 220.25 mm - Dày 17.35 mm - Nặng 1.42 kg\r\nThời điểm ra mắt:2022', 2, 7),
(52, 'Acer Nitro 5 Tiger AN515 58 773Y i7 12700H', '27990000', 'https://cdn.tgdd.vn/Products/Images/44/283458/acer-nitro-5-tiger-an515-58-773y-i7-nhqfksv001-thumb-600x600.jpg', 'CPU:i7, 12700H, 2.30 GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB), Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 2 TB)\r\nMàn hình:15.6\", Full HD (1920 x 1080), 144Hz\r\nCard màn hình:Card rời, RTX 3050Ti 4GB\r\nCổng kết nối:HDMI, LAN (RJ45), USB Type-C, Jack tai nghe 3.5 mm, 3 x USB 3.2, 1 x USB Type-C (hỗ trợ cổng Thunderbolt 4)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 360.4 mm - Rộng 271.09 mm - Dày 25.9 mm - Nặng 2.5 kg\r\nThời điểm ra mắt:2022', 2, 7),
(53, 'Acer Predator Helios PH16 71 94N1 i9 13900HX', '127790000', 'https://cdn.tgdd.vn/Products/Images/44/303564/acer-predator-helios-ph16-71-94n1-i9-nhqjssv002-thumb-600x600.jpg', 'CPU:i9, 13900HX, 3.90 GHz\r\nRAM:32 GB, DDR5 2 khe (1 khe 16 GB + 1 khe 16 GB), 5600 MHz\r\nỔ cứng:2 TB\r\nMàn hình:16\", WQXGA (2560 x 1600), 240Hz\r\nCard màn hình:Card rời, RTX 4080 12GB\r\nCổng kết nối:HDMI, LAN (RJ45), Jack tai nghe 3.5 mm, 3 x USB 3.2, 2 x USB Type-C (hỗ trợ DisplayPort, Thunderbolt 4)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Nắp lưng và chiếu nghỉ tay bằng kim loại\r\nKích thước, khối lượng:Dài 357.78 mm - Rộng 278.74 mm - Dày 24.9 ~ 26.9 mm - Nặng 2.6 kg\r\nThời điểm ra mắt:2023', 2, 7),
(54, 'Acer Aspire 3 A315 58 59LY i5 1135G7 (NX.ADDSV.00G)', '12090000', 'https://cdn.tgdd.vn/Products/Images/44/269312/acer-aspire-3-a315-58-59ly-i5-nxaddsv00g-120122-050545-600x600.jpg', 'CPU:i5, 1135G7, 2.4GHz\r\nRAM:8 GB, DDR4 (Onboard 4 GB + 1 khe 4 GB), 2400 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB), Hỗ trợ khe cắm HDD SATA (nâng cấp tối đa 2 TB)\r\nMàn hình:15.6\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:HDMI, LAN (RJ45), USB 2.0, Jack tai nghe 3.5 mm, 2 x USB 3.2\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 363.4 mm - Rộng 238.4 mm - Dày 19.9 mm - Nặng 1.7 kg\r\nThời điểm ra mắt:2021', 2, 3),
(55, 'Dell Gaming Alienware m15 R6 i7 11800H (P109F001DBL)', '47390000', 'https://cdn.tgdd.vn/Products/Images/44/271545/dell-gaming-alienware-m15-r6-i7-p109f001dbl-020322-112012-600x600.jpg', 'CPU:i7, 11800H, 2.30 GHz\r\nRAM:32 GB, DDR4 2 khe (1 khe 16 GB + 1 khe 16 GB), 3200 MHz\r\nỔ cứng:1 TB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2 TB M.2 2280 PCIe Gen 4 x 4 NVMe / 1 TB M.2 2280 PCIe Gen 3 x 4 NVMe), Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1 TB)\r\nMàn hình:15.6\", Full HD (1920 x 1080),  165Hz\r\nCard màn hình:Card rời, RTX 3060 6GB\r\nCổng kết nối:HDMI, LAN (RJ45), 3 x USB 3.2, Jack tai nghe 3.5 mm, Thunderbolt 4 USB-C\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL + Office Home & Student vĩnh viễn\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 356.2 mm - Rộng 272.5 mm - Dày 19.2 mm - Nặng 2.69 kg\r\nThời điểm ra mắt:2021', 2, 4),
(56, 'Dell Inspiron 15 5515 R7 5700U (N5R75700U104W1)', '18290000', 'https://cdn.tgdd.vn/Products/Images/44/267558/dell-inspiron-15-5515-r7-5700u-8gb-512gb-office-600x600.jpg', 'CPU:Ryzen 7, 5700U, 1.8GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng\r\nMàn hình:15.6\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Radeon\r\nCổng kết nối:HDMI, USB Type-C, 2 x USB 3.1, Jack tai nghe 3.5 mm\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL + Office Home & Student vĩnh viễn\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 356.06 mm - Rộng 228.9 mm - Dày 17.99 mm - Nặng 1.75 kg\r\nThời điểm ra mắt:2021', 2, 2),
(57, 'Dell Inspiron 14 5420 i5 1235U (i5U085W11SLU)', '21990000', 'https://cdn.tgdd.vn/Products/Images/44/302268/dell-inspiron-14-5420-i5-i5u085w11slu-thumb-600x600.jpg', 'CPU:i5, 1235U, 1.3GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2 TB (2280) / 1 TB (2230))\r\nMàn hình:14\", Full HD+ (1920 x 1200)\r\nCard màn hình:Card tích hợp, Intel UHD\r\nCổng kết nối:HDMI, Jack tai nghe 3.5 mm, 2 x USB 3.2, 1 x USB Type-C 3.2 (hỗ trợ Power Delivery và DisplayPort)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL + Office Home & Student vĩnh viễn\r\nThiết kế:Nắp lưng và chiếu nghỉ tay bằng kim loại\r\nKích thước, khối lượng:Dài 314 mm - Rộng 227.5 mm - Dày 15.7 ~ 18.37 mm - Nặng 1.55 kg\r\nThời điểm ra mắt:2022', 2, 3),
(58, 'Dell Inspiron 16 5620 i7 1255U (N6I7110W1)', '24490000', 'https://cdn.tgdd.vn/Products/Images/44/292396/dell-inspiron-16-5620-i7-n6i7110w1-thumb-600x600.jpg', 'CPU:i7, 1255U, 1.7GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe\r\nMàn hình:16\", Full HD+ (1920 x 1200)\r\nCard màn hình:Card tích hợp, Intel UHD\r\nCổng kết nối:HDMI, Jack tai nghe 3.5 mm, USB Type-C (Power Delivery and DisplayPort), 2 x USB 3.2\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL + Office Home & Student vĩnh viễn\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 356.7 mm - Rộng 251.9 mm - Dày 17.95 mm - Nặng 1.87 kg\r\nThời điểm ra mắt:2022', 2, 0),
(59, 'MSI Gaming GE66 Raider 11UH i7 11800H (259VN)', '47890000', 'https://cdn.tgdd.vn/Products/Images/44/249151/msi-gaming-ge66-raider-11uh-i7-259vn-600x600.jpg', 'CPU:i7, 11800H, 2.30 GHz\r\nRAM:32 GB, DDR4 2 khe (1 khe 16 GB + 1 khe 16 GB), 3200 MHz\r\nỔ cứng:2 TB SSD NVMe PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 2 TB)\r\nMàn hình:15.6\", QHD (2560 x 1440), 240Hz\r\nCard màn hình:Card rời, RTX 3080 16GB\r\nCổng kết nối:Mini DisplayPort, USB Type-C, HDMI, LAN (RJ45), 3 x USB 3.2, Jack tai nghe 3.5 mm, Thunderbolt 4 USB-C\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 10 Home SL\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 358 mm - Rộng 267 mm - Dày 23.4 mm - Nặng 2.38 Kg\r\nThời điểm ra mắt:2021', 2, 0),
(60, 'MSI Modern 14 C11M i3 1115G4 (011VN)', '11290000', 'https://cdn.tgdd.vn/Products/Images/44/304539/msi-modern-14-c11m-i3-011vn-thumb-600x600.jpg', 'CPU:i3, 1115G4, 3GHz\r\nRAM:8 GB, DDR4 (Onboard), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe\r\nMàn hình:14\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel UHD\r\nCổng kết nối:2 x USB 2.0, HDMI, Jack tai nghe 3.5 mm, 1 x USB 3.2, 1 x USB Type-C 3.2 hỗ trợ power delivery\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, khối lượng:Dài 319.9 mm - Rộng 223 mm - Dày 19.35 mm - Nặng 1.4 kg\r\nThời điểm ra mắt:2022', 2, 0),
(61, 'MSI Modern 14 B11MOU i7 1195G7 (618VN)', '15990000', 'https://cdn.tgdd.vn/Products/Images/44/265449/msi-modern-14-b11mou-i7-1195g7-8gb-512gb-600x600.jpg', 'CPU:i7, 1195G7, 2.9GHz\r\nRAM:8 GB, DDR4 2 khe (1 khe 8 GB + 1 khe rời), 3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2 TB), Không hỗ trợ khe cắm HDD, Không hỗ trợ khe cắm SSD M2 mở rộng thêm\r\nMàn hình:14\", Full HD (1920 x 1080)\r\nCard màn hình:Card tích hợp, Intel Iris Xe\r\nCổng kết nối:HDMI, USB Type-C, Jack tai nghe 3.5 mm, 2 x USB 3.2\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 10 Home SL\r\nThiết kế:Vỏ kim loại\r\nKích thước, khối lượng:Dài 319 mm - Rộng 219 mm - Dày 16.9 mm - Nặng 1.3 kg\r\nThời điểm ra mắt:2021', 2, 0),
(63, 'OPPO Reno8 series', '17990000', 'https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-thumb-xanh-1-600x600.jpg', 'Màn hình:AMOLED, 6.7\", Full HD+\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 50 MP & Phụ 8 MP, 2 MP\r\nCamera trước:32 MP\r\nChip:MediaTek Dimensity 8100 Max 8 nhân\r\nRAM:12 GB\r\nDung lượng lưu trữ:256 GB\r\nSIM:2 Nano SIM, Hỗ trợ 5G\r\nPin, Sạc:4500 mAh, 80 W', 1, 0),
(83, 'realme 9i (6GB/128GB)', '5000000', 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/42/262649/Realme-9i-xanh-thumb-600x600.jpg', 'Màn hình: IPS LCD6.6\"Full HD+\nHệ điều hành: Android 11\nCamera sau: Chính 50 MP & Phụ 2 MP, 2 MP\nCamera trước: 16 MP\nChip: Snapdragon 680\nRAM: 6 GB\nDung lượng lưu trữ: 128 GB\nSIM: 2 Nano SIM, Hỗ trợ 4G\nPin, Sạc: 5000 mAh, 33 W', 1, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(2) NOT NULL,
  `firebaseUId` text COLLATE utf8_unicode_ci NOT NULL,
  `token` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phone_number`, `type`, `firebaseUId`, `token`) VALUES
(20, 'quanglinhhoangnguyen@gmail.com', 'on firebase', 'Hoàng Nguyễn Quang Linh', '0931007751', 2, 'HbnUK2OJn6TCZzs52Dh8yE57mJB2', 'feuToXSeSgGiUclwGBgvXa:APA91bGKIWKt9zBjZUiJypchzcu0ZhZfS3NGb5Bgq2Idodz0yntkBMMhz7IfC87JDx3ql4WdnNJH-BMdyN2PLetgbG4PCWNWNYLGX3QI0YseAtFpBvbGAC_qzNAaYltsxqaqGq1gH3BJ'),
(22, 'linhspdragonball@gmail.com', 'on firebase', 'Hoang Linh Sama', '0972340118', 1, 'LrSWrZylR4RIBKrXRhwTfNJ7SUE3', 'fJlO6YwBTdmJBMRy-8vG8L:APA91bGgm1jwtenpVrLpm0E-nTCqPnU0slvBPIb4dRM8bCv6R6jTohGqLMbDal5cLiOIE1pwplLkbaPZhRz557PvUYAvUoDPxlGL5-w7YCwbO1zLPajAMpo6yWYeLtHrgdB7VqI4TPva');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT cho bảng `orderr`
--
ALTER TABLE `orderr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD CONSTRAINT `cart_detail_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cart_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orderr`
--
ALTER TABLE `orderr`
  ADD CONSTRAINT `orderr_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orderr` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
