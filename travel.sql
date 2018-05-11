-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2018 lúc 12:28 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `travel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(30, 0, 'ĐI ĐI! - ĐỪNG ngần NGẠI', 'di-di-dung-ngan-ngai', '1525924135_2.png', NULL, NULL, '<p>Đ&atilde; đến l&uacute;c đưa niềm đam m&ecirc; x&ecirc; dịch của bạn l&ecirc;n một cấp độ mới với những trải nghiệm mới, những cảm hứng mới v&agrave; những g&oacute;c nh&igrave;n kh&aacute;c biệt tại nơi m&agrave; bạn đặt ch&acirc;n qua.</p>\r\n<p>TravelUp l&agrave; một trong những c&ocirc;ng ty dẫn đầu v&agrave; chuy&ecirc;n biệt về du lịch theo phong c&aacute;ch trải nghiệm tại Việt Nam. Trải ngiệm trong cuộc sống, th&agrave;nh c&ocirc;ng trong những h&agrave;nh tr&igrave;nh đột ph&aacute; đ&atilde; mang đến cảm hứng cho TravelUp trong việc t&igrave;m kiếm những trải nghiệm mới cho cộng đồng đam m&ecirc; x&ecirc; dịch.</p>\r\n<h3 class=\"bold-s16 contact-tit about-content-stit\">Gi&aacute; trị cốt l&otilde;i</h3>\r\n<p>Thay đổi cuộc sống bằng những trải nghiệm của ch&iacute;nh m&igrave;nh l&agrave; gi&aacute; trị cốt l&otilde;i, l&agrave; văn ho&aacute; c&ocirc;ng ty v&agrave; cũng l&agrave; động lực đằng sau mọi cố gắng m&agrave; ch&uacute;ng t&ocirc;i đang thực hiện</p>\r\n<h3 class=\"bold-s16 contact-tit about-content-stit\">Sứ mệnh</h3>\r\n<p>Ch&uacute;ng t&ocirc;i mang đến cho bạn những g&oacute;c nh&igrave;n mới, những cảm x&uacute;c mới v&agrave; những h&agrave;nh động mới.</p>\r\n<p>Ch&uacute;ng t&ocirc;i tin tưởng rằng sự thay đổi sẽ mang đến những bước đột ph&aacute; v&agrave; bạn l&agrave; ch&igrave;a kho&aacute; cho sự thay đổi.</p>\r\n<p style=\"text-align: center;\"><q class=\"s24 bold italic t1 about-slogan-content\">&ldquo;If you&rsquo;re not changing, you&rsquo;re not growing&rdquo;</q></p>\r\n<p class=\"s16 text-center text-uppercase\" style=\"text-align: center;\">ĐI ĐI! TRẢI NGHIỆM V&Agrave; THAY ĐỔI</p>', 0, NULL, NULL, NULL, 'gioi-thieu', '2018-05-10 03:48:55', '2018-05-10 03:48:55'),
(35, 0, 'NHIỆT TÌNH - NĂNG ĐỘNG', 'nhiet-tinh-nang-dong', NULL, NULL, NULL, '<h2 class=\"t1 bold s30 text-uppercase pt-3 pb-4 cus-tit\">CẢM NHẬN KH&Aacute;CH H&Agrave;NG</h2>\r\n<p>L&agrave; những nh&acirc;n vi&ecirc;n đồng s&aacute;ng lập Travel Up v&agrave; những người nh&acirc;n vi&ecirc;n năng động, trẻ trung, nhiệt t&igrave;nh, đ&atilde;, đang v&agrave; sẽ l&agrave;m việc tại Travel Up.</p>', 0, NULL, NULL, NULL, 'feedback', '2018-05-10 03:51:54', '2018-05-10 03:51:54'),
(36, 0, 'ĐI DU LỊCH CHỈ BẰNG VÀI CLICK', 'di-du-lich-chi-bang-vai-click', NULL, NULL, NULL, '<h2 class=\"text-uppercase bold py-2 s30 regis-tit\">ĐẶT TOUR CHO RI&Ecirc;NG BẠN</h2>\r\n<p class=\"t5 text-right\">C&ugrave;ng đi tour v&agrave;i lần rồi nhưng lần đi với Up n&agrave;y m&igrave;nh rất h&agrave;i l&ograve;ng, m&igrave;nh đi L&yacute; Sơn, lead đẹp trai, vui t&iacute;nh, chị em tr&ecirc;u nhiều lắm vẫn kh&ocirc;ng bị khuất phục, hehe. Ăn uống, ngủ, nghỉ h&agrave;i l&ograve;ng lắm, cảm ơn c&ocirc;ng ty nh&eacute;.</p>', 0, NULL, NULL, NULL, 'dang-ky', '2018-05-10 04:08:48', '2018-05-10 04:08:48'),
(37, 0, NULL, '', NULL, NULL, NULL, 'Đã đến lúc đưa niềm đam mê xê dịch của bạn lên một cấp độ mới với những trải nghiệm mới, những cảm hứng mới và những góc nhìn khác biệt tại nơi mà bạn đặt chân qua.x', 0, NULL, NULL, NULL, 'tour', '2018-05-11 07:42:25', '2018-05-11 07:42:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `image` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `albums`
--

INSERT INTO `albums` (`id`, `tour_id`, `image`, `created_at`, `updated_at`) VALUES
(2, 1, '1526006139_7.jpg', '2018-05-11 02:35:39', '2018-05-11 02:35:39'),
(3, 1, '1526006139_8.jpg', '2018-05-11 02:35:39', '2018-05-11 02:35:39'),
(4, 2, '1526009191_6.jpg', '2018-05-11 03:26:31', '2018-05-11 03:26:31'),
(5, 2, '1526009191_7.jpg', '2018-05-11 03:26:31', '2018-05-11 03:26:31'),
(6, 2, '1526009191_8.jpg', '2018-05-11 03:26:31', '2018-05-11 03:26:31'),
(7, 3, '1526009443_6.jpg', '2018-05-11 03:30:43', '2018-05-11 03:30:43'),
(8, 3, '1526009443_7.jpg', '2018-05-11 03:30:43', '2018-05-11 03:30:43'),
(9, 3, '1526009443_8.jpg', '2018-05-11 03:30:43', '2018-05-11 03:30:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507946485_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-14 02:01:25', '2017-10-13 19:01:25'),
(3, '1522720366_2.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản: Nguyễn Huy Ho&agrave;ng</p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2018-04-03 01:52:46', '2018-04-03 01:52:46'),
(4, '1525850971_partner9.jpg', '<p>Chủ TK:&nbsp;<span class=\"text-uppercase\">C&Ocirc;NG TY TNHH TM V&Agrave; DV KỸ NGHỆ VIỆT</span></p>\r\n<p>Số TK:&nbsp;0501000161516</p>\r\n<p>Chi nh&aacute;nh:&nbsp;Ng&acirc;n h&agrave;ng Vietcombank Chi Nh&aacute;nh Bắc S&agrave;i G&ograve;n</p>', '2018-05-09 07:29:31', '2018-05-09 07:29:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(22, '1526025693_1.jpg', NULL, 7, '2018-05-11 08:01:33', '2018-05-11 08:01:33'),
(23, '1526025759_1.jpg', NULL, 6, '2018-05-11 08:02:39', '2018-05-11 08:02:39'),
(24, '1526028178_1.jpg', NULL, 12, '2018-05-11 08:42:58', '2018-05-11 08:14:05'),
(25, '1526026495_1.jpg', NULL, 13, '2018-05-11 08:15:29', '2018-05-11 08:14:55'),
(26, '1526026828_1.jpg', NULL, 11, '2018-05-11 08:20:28', '2018-05-11 08:20:28'),
(28, '1526027848_1.jpg', NULL, 9, '2018-05-11 08:37:28', '2018-05-11 08:37:28'),
(29, '1526027908_1.jpg', NULL, 10, '2018-05-11 08:38:28', '2018-05-11 08:38:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(6, 'Trang danh mục sản phẩm', '2018-05-11 08:03:54', '2018-05-11 08:03:54'),
(7, 'Trang chi tiết sản phẩm', '2018-01-10 02:50:36', '2018-01-10 02:50:36'),
(8, 'Trang sản phẩm', '2018-05-11 08:04:01', '2018-05-11 08:04:01'),
(9, 'Trang tin tức', '2018-05-11 08:04:56', '2018-05-11 08:04:56'),
(10, 'Trang chi tiết tin tức', '2018-05-11 08:07:05', '2018-05-11 08:07:05'),
(11, 'Trang giới thiệu', '2018-05-11 08:07:18', '2018-05-11 08:07:18'),
(12, 'Trang tour', '2018-05-11 08:07:31', '2018-05-11 08:07:31'),
(13, 'Trang chi tiết tour du lịch', '2018-05-11 08:07:48', '2018-05-11 08:07:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(11) DEFAULT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `money_pay` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `user_id`, `code`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `money_pay`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(10, NULL, 'o4odjdm9', 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', 'Hà Nội', NULL, NULL, 'sdf sdf sdf', 0, 6000000, NULL, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m 1\",\"product_numb\":\"4\",\"product_price\":1500000,\"product_img\":\"1525832135_13.jpg\",\"product_code\":null}]', '2018-05-09 08:10:25', '2018-05-09 08:10:25', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Trụ sở Công ty TNHH Văn Anh Audio', NULL, 'vananhaudio@gmail.com', '0973 204 302', 'Số 19 ngõ 71 Hoàng Văn Thái - Quận Thanh Xuân - Hà Nội', '2018-04-02 02:28:03', '2018-04-02 02:28:03'),
(2, 'Chi nhánh Văn Anh Audio Đà Nẵng', NULL, 'vananhaudio@gmail.com', '0987654321', '78 Nguyễn Thị Minh Khai TP Đà Nẵng', '2018-04-02 02:28:29', '2018-04-02 02:28:29'),
(3, 'Chi nhánh Văn Anh Audio TPHCM', NULL, 'vananhaudio@gmail.com', '0987654321', 'Số 132 quốc lộ 13 - Phường 26 - Quận Bình Thạnh - TPHCM', '2018-04-02 02:28:55', '2018-04-02 02:28:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `content` text,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkykhoahoc`
--

CREATE TABLE `dangkykhoahoc` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `namsinh` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `khoahoc` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dangkykhoahoc`
--

INSERT INTO `dangkykhoahoc` (`id`, `name`, `namsinh`, `phone`, `email`, `khoahoc`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Hoàng Hồng Chương', NULL, '0987654321', 'admin@team.vn', NULL, 'sdf sd fsdf', '2018-05-10 04:18:11', '2018-05-10 04:18:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenkhongdau` varchar(255) DEFAULT NULL,
  `mota_vi` text NOT NULL,
  `mota_en` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `cate_id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(7, 6, 'Huyện An Phú', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '2017-11-23 21:01:08'),
(5, 6, 'Thành phố Long Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 'Thị xã Châu Đốc', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 6, 'Huyện Tân Châu', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 6, 'Huyện Phú Tân', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 6, 'Huyện Tịnh Biên', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 6, 'Huyện Tri Tôn', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 6, 'Huyện Châu Phú', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 6, 'Huyện Chợ Mới', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 6, 'Huyện Châu Thành', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 6, 'Huyện Thoại Sơn', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 7, 'Thành phố Vũng Tàu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 7, 'Thị xã Bà Rịa', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 7, 'Huyện Xuyên Mộc', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 7, 'Huyện Long Điền', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 7, 'Huyện Côn Đảo', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 7, 'Huyện Tân Thành', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 7, 'Huyện Châu Đức', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 7, 'Huyện Đất Đỏ', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 8, 'Thành phố Bạc Liêu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 8, 'Huyện Vĩnh Lợi', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 8, 'Huyện Hông Dân', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 8, 'Huyện Giá Rai', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 8, 'Huyện Phước Long', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 8, 'Huyện Đông Hải', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 8, 'Huyện Hòa Bình', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 9, 'Thị xã Bắc Cạn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 9, 'Huyện Chợ Đồn', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 9, 'Huyện Bạch Thông', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 9, 'Huyện Na Rì', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 9, 'Huyện Ngân Sơn', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 9, 'Huyện Ba Bể', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 9, 'Huyện Chợ Mới', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 9, 'Huyện Pác Nặm', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 10, 'Thành phố Bắc Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 10, 'Huyện Yên Thế', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 10, 'Huyện Lục Ngạn', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 10, 'Huyện Sơn Động', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 10, 'Huyện Lục Nam', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 10, 'Huyện Tân Yên', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 10, 'Huyện Hiệp Hào', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 10, 'Huyện Lạng Giang', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 10, 'Huyện Việt Yên', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 10, 'Huyện Yên Dũng', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 11, 'Thành phố Bắc Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 11, 'Huyện Yên Phong', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 11, 'Huyện Quế Võ', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 11, 'Huyện Tuyên Du', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 11, 'Thị xã Từ Sơn', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 11, 'Huyện Thuần Thành', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 11, 'Huyện Gia Bình', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 11, 'Huyện Lương Tài', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 12, 'Huyện Mỏ Cày Nam', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 12, 'Huyện Thạnh Phú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 12, 'Huyện Ba Tri', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 12, 'Huyện Bình Đại', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 12, 'Huyện Giòng Trôm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 12, 'Huyện Mỏ Cày Bắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 12, 'Huyện Chợ Lách', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 12, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 12, 'Thành phố Bến Tre', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 13, 'Huyện Dầu Tiếng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 13, 'Huyện Phú Giáo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 13, 'Huyện Dĩ An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 13, 'Huyện Thuận An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 13, 'Huyện Tân Uyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 13, 'Huyện Bến Cát', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 13, 'Thị xã Thủ Dầu Một', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 14, 'Huyện Tuy Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 14, 'Huyện An Nhơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 14, 'Huyện Văn Canh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 14, 'Huyện Tây Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 14, 'Huyện Vĩnh Thạnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 14, 'Huyện Phù Cát', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 14, 'Huyện Phù Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 14, 'Huyện Hoài Nhơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 14, 'Huyện Hoài Ân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 14, 'Huyện An Lão', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 14, 'Thành phố Quy Nhơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 15, 'Huyện Bù Gia Mập', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 15, 'Huyện Hớn Quản', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 15, 'Huyện Bù Đăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 15, 'Huyện Phước Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 15, 'Huyện Bình Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 15, 'Huyện Lộc Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 15, 'Huyện Bình Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 15, 'Huyện Chơn Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 15, 'Huyện Đồng Phú ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 15, 'Thị xã Đồng Xoài', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 16, 'Thị xã La Gi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 16, 'Huyện đảo Phú Quý ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 16, 'Huyện Tánh Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 16, 'Huyện Đức Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 16, 'Huyện Hàm Tân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 16, 'Huyện Hàm Thuận Nam', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 16, 'Huyện Hàm Thuận Bắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 16, 'Huyện Bắc Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 16, 'Huyện Tuy Phong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 16, 'Thành phố Phan Thiết', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 17, 'Huyện Phú Tân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 17, 'Huyện Năm Căn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 17, 'Huyện Ngọc Hiển ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 17, 'Huyện Đầm Dơi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 17, 'Huyện Cái Nước ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 17, 'Huyện Trần Văn Thời', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 17, 'Huyện U Minh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 17, 'Huyện Thới Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 17, 'Thành phố Cà Mau', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 18, 'Huyện Phục Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 18, 'Huyện Bảo Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 18, 'Huyện Hạ Lang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 18, 'Huyện Thạch An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 18, 'Huyện Quảng Uyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 18, 'Huyện Hòa An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 18, 'Huyện Nguyên Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 18, 'Huyện Trùng Khánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 18, 'Huyện Trà Lĩnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 18, 'Huyện Hà Quảng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 18, 'Huyện Thông Nông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 18, 'Huyện Bảo Lạc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 18, 'Thị xã Cao Bằng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 19, 'Huyện Thới Lai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 19, 'Quận Thốt Nốt', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 19, 'Huyện Vĩnh Thạnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 19, 'Huyện Cờ Đỏ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 19, 'Huyện Phong Điền', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 19, 'Quận Ô Môn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 19, 'Quận Cái Răng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 19, 'Quận Bình Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 19, 'Quận Ninh Kiều', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 20, 'Quận Cẩm Lệ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 20, 'Huyện Hòa Vang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 20, 'Quận Linh Chiểu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 20, 'Quận Ngũ Hành Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 20, 'Quận Sơn Trà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 20, 'Quận Thanh Khê  ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 20, 'Quận Hải Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 21, 'Thị xã Buôn Hồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 21, 'Huyện Cư Kuin', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 21, 'Huyện Buôn Đôn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 21, 'Huyện Lăk', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 21, 'Huyện Krông Bông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 21, 'Huyện Krông Ana', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 21, 'Huyện M\'Đrăk', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 21, 'Huyện Ea Kar', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 21, 'Huyện Krông Pắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 21, 'Huyện Cư M\'gar', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 21, 'Huyện Ea Súp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 21, 'Huyện Krông Năng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 21, 'Huyện Krông Buk', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 21, 'Huyện Ea H Leo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 21, 'Thành phố Buôn Mê Thuộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 22, 'Huyện Tuy Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 22, 'Huyện Đắk GLong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 22, 'Huyện Krông Nô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 22, 'Huyện Đắk Song', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 22, 'Huyện Cư Jút', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 22, 'Huyện Đắk Mil', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 22, 'Huyện Đắk R\'Lấp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 22, 'Thị xã Gia Nghĩa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 23, 'Huyện Mường Ăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 23, 'Huyện Mường Nhé', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 23, 'Huyện Điện Biên Đông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 23, 'Huyện Tủa Chùa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 23, 'Huyện Mường Chà ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 23, 'Huyện Tuần Giáo ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 23, 'Huyện Điện Biên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 23, 'Thị xã Mường Lay', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 23, 'TP. Điện Biên Phủ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 24, 'Huyện Cẩm Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 24, 'Huyện Trảng Bom', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 24, 'Huyện Nhơn Trạch', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 24, 'Huyện Long Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 24, 'Huyện Xuân Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 24, 'Thị xã Long Khánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 24, 'Huyện Thống Nhất', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 24, 'Huyện Định Quán', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 24, 'Huyện Tân Phú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 24, 'Huyện Vĩnh Cửu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 24, 'Thành phố Biên Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 25, 'Thị xã Hồng Ngự', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 25, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 25, 'Huyện Lai Vung', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 25, 'Huyện Tháp Mười', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 25, 'Huyện Lấp Vò', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 25, 'Huyện Cao Lãnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 25, 'Huyện Thanh Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 25, 'Huyện Tam Nông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 25, 'Huyện Hồng Ngự', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 25, 'Huyện Tân Hồng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 25, 'Thị xã Sa Đéc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 25, 'Thành phố Cao Lãnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 26, 'Huyện Chư Pưh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 26, 'Huyện Phú Thiện', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 26, 'Huyện Đắk Pơ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 26, 'Huyện La Pa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 26, 'Huyện Đắk Đoa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 26, 'Huyện La Grai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 26, 'Huyện Krông Pa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 26, 'Huyện Ayunpa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 26, 'Huyện Chư Sê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 26, 'Huyện Chư Prông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 26, 'Huyện Đức Cơ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 26, 'Huyện Kông Chro ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 26, 'Thị xã An Khê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 26, 'Huyện Kbang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 26, 'Huyện Mang Yang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 26, 'Huyện Chư Păh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 26, 'Thành phố Pleiku', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 27, 'Huyện Quảng Bình ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 27, 'Huyện Bắc Quang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 27, 'Huyện Xín Mần', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 27, 'Huyện Hoàng Su Phì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 27, 'Huyện Bắc Mê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 27, 'Huyện Vị Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 27, 'Huyện Quản Bạ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 27, 'Huyện Yên Minh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 27, 'Huyện Mèo Vạc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 27, 'Huyện Đồng Văn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 27, 'Thành phố Hà Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 28, 'Huyện Bình Lục', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 28, 'Huyện Thanh Liêm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 28, 'Huyện Lý Nhân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 28, 'Huyện Kim Bảng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 28, 'Huyện Duy Tiên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 28, 'Thành phố Phủ Lý', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 2, 'Huyện Thạch Thất', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 2, 'Huyện Phú Thọ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 2, 'Huyện Ba Vì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 2, 'Thị xã Sơn Tây', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 2, 'Quận Hà Đông ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 2, 'Huyện Sóc Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 2, 'Huyện Đông Anh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 2, 'Huyện Gia Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 2, 'Huyện Thanh Trì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 2, 'Huyện Từ Liêm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 2, 'Quận Long Biên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 2, 'Quận Hoàng Mai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 2, 'Quận Thanh Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 2, 'Quận Cầu Giấy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 2, 'Quận Tây Hồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 2, 'Quận Đống Đa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 2, 'Quận Hai Bà Trưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 2, 'Quận Hoàn Kiếm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 2, 'Quận Ba Đình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 2, 'Huyện ỨngHòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:36:59'),
(251, 2, 'Huyện Thường Tín', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:37:39'),
(252, 2, 'Huyện Thanh Oai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:37:44'),
(253, 2, 'Huyện Quốc Oai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:07'),
(254, 2, 'Huyện Phú Thọ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:13'),
(255, 2, 'Huyện Phú Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:27'),
(256, 2, 'Huyện Mỹ Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:35'),
(257, 2, 'Huyện Hoài Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:42'),
(258, 2, 'Huyện Đan Phượng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:39:09'),
(259, 2, 'Huyện Chương Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:39:04'),
(260, 2, 'Huyện Ba Vì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:59'),
(261, 30, 'Huyện Lộc Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 30, 'Huyện Vũ Quang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 30, 'Huyện Kỳ Anh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 30, 'Huyện Cẩm Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 30, 'Huyện Thạch Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 30, 'Huyện Hương Khê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 30, 'Huyện Can Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 30, 'Huyện Nghi Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 30, 'Huyện Đức Thọ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 30, 'Huyện Hương Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 30, 'Thị xã Hồng Lĩnh ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 30, 'Thành phố Hà Tĩnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 31, 'Huyện Bình Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 31, 'Huyện Kim Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 31, 'Huyện Thanh Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 31, 'Huyện Cẩm Giàng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 31, 'Huyện Ninh Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 31, 'Huyện Thanh Miện', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 31, 'Huyện Tứ Kỳ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 31, 'Huyện Gia Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 31, 'Huyện Kinh Môn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 31, 'Huyện Nam Sách', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 31, 'Thị xã Chí Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 31, 'Thành phố Hải Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 5, 'Quận Dương Kinh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 5, 'Huyện Bạch Long Vĩ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 5, 'Huyện Cát Hải ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 5, 'Huyện Vĩnh Bảo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 5, 'Huyện Tiên Lãng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 5, 'Huyện An Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 5, 'Huyện Thủy Nguyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 5, 'Huyện Kiến Thụy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 5, 'Huyện An Lão', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 5, 'Quận Đồ Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 5, 'Quận Hải An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 5, 'Quận Kiến An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 5, 'Quận Ngô Quyền', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 5, 'Quận Lê Chân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 5, 'Quận Hồng Bàng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 32, 'Huyện Cao Phong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 32, 'Huyện Yên Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 32, 'Huyện Lạc Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 32, 'Huyện Kim Bôi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 32, 'Huyện Lương Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 32, 'Huyện Kỳ Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 32, 'Huyện Lạc Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 32, 'Huyện Tân Lạc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 32, 'Huyện Mai Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 32, 'Huyện Đà Bắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 32, 'Thành phố Hòa Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 1, 'Quận Bình Tân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 1, 'Quận Thủ Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 1, 'Quận Phú Nhuận', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 1, 'Quận Bình Thạnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 1, 'Quận Tân Phú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 1, 'Quận Tân Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 1, 'Quận Gò Vấp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 1, 'Quận 12', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 1, 'Quận 11', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 1, 'Quận 10', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 1, 'Quận 9', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 1, 'Quận 8', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 1, 'Quận 7', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 1, 'Quận 6', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 1, 'Quận 5', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 1, 'Quận 4', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 1, 'Quận 3', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 1, 'Quận 2', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 1, 'Quận 1', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 33, 'Thị xã Ngã Bảy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 33, 'Huyện Châu Thành A', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 33, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 33, 'Huyện Phụng Hiệp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 33, 'Huyện Long Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 33, 'Huyện Vị Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 33, 'Thành phố Vị Thanh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 34, 'Huyện Văn Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 34, 'Huyện Văn Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 34, 'Huyện Mỹ Hào', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 34, 'Huyện Phù Cừ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 34, 'Huyện Tiên Lữ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 34, 'Huyện Yên Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 34, 'Huyện Khoái Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 34, 'Huyện Ân Thi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 34, 'Huyện Kim Động', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 34, 'Thành phố Hưng Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 35, 'Huyện Cam Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 35, 'Huyện đảo Trường Sa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 35, 'Huyện Khánh Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 35, 'Thị xã Cam Ranh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 35, 'Huyện Khánh Vĩnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 35, 'Huyện Diên Khánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 35, 'Huyện Ninh Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 35, 'Huyện Vạn Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 35, 'Thành phố Nha Trang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 36, 'Huyện Giang Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 36, 'Huyện U Minh Thượng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 36, 'Huyện Kiên Hải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 36, 'Huyện đảo Phú Quốc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 36, 'Huyện Vĩnh Thuận', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 36, 'Huyện An Minh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 36, 'Huyện An Biên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 36, 'Huyện Gò Quao', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 36, 'Huyện Giồng Riềng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 36, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 36, 'Huyện Tân Hiệp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 36, 'Huyện Hòn Đất', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 36, 'Huyện Kiên Lương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 36, 'Thị xã Hà Tiên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 36, 'Thành phố Rạch Giá', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 37, 'Huyện Tu Mơ Rông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 37, 'Huyện Kon Rẫy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 37, 'Huyện Đăk Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 37, 'Huyện Kon Plong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 37, 'Huyện Sa Thầy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 37, 'Huyện Đăk Tô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 37, 'Huyện Ngọc Hồi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 37, 'Huyện Đăk Glei', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 37, 'Thành phố KonTum', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 38, 'Huyện Tân Uyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 38, 'Huyện Thanh Uyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 38, 'Huyện Mường Tè', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 38, 'Huyện Sìn Hồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 38, 'Huyện Phong Thổ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 38, 'Huyện Tam Đường', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 38, 'Thị xã Lai Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 39, 'Huyện Mường Khương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 39, 'Huyện Bắc Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 39, 'Huyện Bảo Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 39, 'Huyện Văn Bàn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 39, 'Huyện Sa Pa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 39, 'Huyện Bảo Thắng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 39, 'Huyện Bát Xát', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 39, 'Huyện Xi Ma Cai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 39, 'Thành phố Lào Cai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 40, 'Huyện Hữu Lũng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 40, 'Huyện Đình Lập', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 40, 'Huyện Chi Lăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 40, 'Huyện Lộc Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 40, 'Huyện Cao Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 40, 'Huyện Văn Quan', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 40, 'Huyện Bắc Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 40, 'Huyện Văn Lãng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 40, 'Huyện Bình Gia', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 40, 'Huyện Tràng Định', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 40, 'Thành phố Lạng Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 41, 'Huyện Đam Rông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 41, 'Huyện Bảo Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 41, 'Huyện Lâm Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 41, 'Huyện Cát Tiên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 41, 'Huyện Đạ Tẻh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 41, 'Huyện Đạ Huoai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 41, 'Huyện Lạc Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 41, 'Huyện Đơn Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 41, 'Huyện Di Linh ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 41, 'Huyện Đức Trọng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 41, 'Thị xã Bảo Lộc ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 41, 'Thành phố Đà Lạt', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 42, 'Huyện Tân Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 42, 'Huyện Cần Giuộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 42, 'Huyện Cần Đuốc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 42, 'Huyện Tân Trụ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 42, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 42, 'Huyện Thủ Thừa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 42, 'Huyện Bến Lức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 42, 'Huyện Đức Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 42, 'Huyện Đức Huệ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 42, 'Huyện Thạnh Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 42, 'Huyện Tân Thạnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 42, 'Huyện Mộc Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 42, 'Huyện Vĩnh Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 42, 'Thành phố Tân An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 43, 'Huyện Hải Hậu ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 43, 'Huyện Nghĩa Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 43, 'Huyện Trực Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 43, 'Huyện Nam Trực', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 43, 'Huyện Vụ Bản', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 43, 'Huyện Ý Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 43, 'Huyện Giao Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 43, 'Huyện Xuân Trường', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 43, 'Huyện Mỹ Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 43, 'Thành phố Nam Định', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 44, 'Huyện Quế Phong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 44, 'Huyện Hưng Nguyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 44, 'Huyện Nam Đàn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 44, 'Huyện Nghi Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 44, 'Huyện Thanh Chương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 44, 'Huyện Đô Lương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 44, 'Huyện Anh Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 44, 'Huyện Diễn Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 44, 'Huyện Yên Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 44, 'Huyện Tân Kỳ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 44, 'Huyện Con Cuông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 44, 'Huyện Tương Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 44, 'Huyện Kỳ Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 44, 'Huyện Quỳnh Lưu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 44, 'Huyện Nghĩa Đàn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 44, 'Huyện Quỳ Hợp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 44, 'Huyện Quỳ Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 44, 'Thị xã Cửa Lò', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 44, 'Thành phố Vinh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 45, 'Huyện Yên Khánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 45, 'Huyện Kim Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 45, 'Huyên Yên Mô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 45, 'Huyện Hoa Lư', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 45, 'Huyện Gia Viễn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 45, 'Huyện Nho Quan', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 45, 'Thị xã Tam Điệp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 45, 'Thành phố Ninh Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 46, 'Huyện Thuận Nam', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 46, 'Huyện Thuận Bắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 46, 'Huyện Bác Ái', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 46, 'Huyện Ninh Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 46, 'Huyện Ninh Hải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 46, 'Huyện Ninh Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 46, 'Thành phố Phan Rang - Tháp Chàm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 47, 'Huyện Tân Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 47, 'Huyện Thanh Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 47, 'Huyện Tam Nông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 47, 'Huyện Lâm Thao', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 47, 'Huyện Phù Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 47, 'Huyện Thanh Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 47, 'Huyện Yên Lập', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 47, 'Huyện Cẩm Khê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 47, 'Huyện Hạ Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 47, 'Huyện Thanh Ba', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 47, 'Huyện Đoan Hùng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 47, 'Thị xã Phú Thọ ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 47, 'Thành phố Việt Trì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 48, 'Huyện Tây Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 48, 'Huyện Phú Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 48, 'Huyện Đông Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 48, 'Huyện Sông Hinh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 48, 'Huyện Sơn Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 48, 'Huyện Tuy An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 48, 'Thị xã Sông Cầu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 48, 'Huyện Đồng Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 48, 'Thành phố Tuy Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 49, 'Huyện Lệ Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 49, 'Huyện Quảng Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 49, 'Huyện Bố Trạch', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 49, 'Huyện Quảng Trạch', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 49, 'Huyện Minh Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 49, 'Huyện Tuyên Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 49, 'Thành phố Đồng Hới', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 50, 'Huyện Nông Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 50, 'Huyện Phú Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 50, 'Huyện Tây Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `district` (`id`, `cate_id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(509, 50, 'Huyện Nam Trà My', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 50, 'Huyện Phước Sơn ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 50, 'Huyện Nam Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 50, 'Huyện Đông Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 50, 'Huyện Bắc Trà My', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 50, 'Huyện Tiên Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 50, 'Huyện Núi Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 50, 'Huyện Thăng Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 50, 'Huyện Hiệp Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 50, 'Huyện Quế Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 50, 'Huyện Đại Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 50, 'Huyện Điện Bàn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 50, 'Huyện Duy Xuyên ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 50, 'Thành phố Hội An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 50, 'Thành phố Tam Kỳ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 51, 'Huyện Tây Trà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 51, 'Huyện Sơn Tây', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 51, 'Huyện Ba Tơ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 51, 'Huyện Đức Phổ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 51, 'Huyện Mộ Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 51, 'Huyện Minh Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 51, 'Huyện Nghĩa Hành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 51, 'Huyện Tư Nghĩa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 51, 'Huyện Tư Nghĩa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 51, 'Huyện Sơn Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 51, 'Huyện Sơn Tịnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 51, 'Huyện Trà Bồng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 51, 'Huyện Bình Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 51, 'Huyện Lý Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 51, 'Thành phố Quảng Ngãi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 52, 'Huyện Cô Tô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 52, 'Huyện Vân Đồn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 52, 'Huyện Hoàng Bồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 52, 'Huyện Yên Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 52, 'Huyện Đông Triều', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 52, 'Huyện Ba Chẽ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 52, 'Huyện Tuyên Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 52, 'Huyện Hải Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 52, 'Huyện Đầm Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 52, 'Huyện Bình Liêu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 52, 'Thành phố Móng Cái', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 52, 'Thành phố Uông Bí', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 52, 'Thành phố Cẩm Phả', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 52, 'Thành phố Hạ Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 53, 'Huyện đảo Cồn Cỏ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 53, 'Huyện Đăk Rông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 53, 'Huyện Hướng Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 53, 'Huyện Hải Lăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 53, 'Huyện Triệu Phong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 53, 'Huyện Cam Lộ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 53, 'Huyện Gio Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 53, 'Huyện Vĩnh Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 53, 'Thị xã Quảng Trị', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 53, 'Thành phố Đông Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 54, 'Huyện Trần Đề', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 54, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 54, 'Huyện Ngã Năm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 54, 'Huyện Cù Lao Dung', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 54, 'Thị xã Vĩnh Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 54, 'Huyện Long Phú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 54, 'Huyện Thạnh Trị', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 54, 'Huyện Mỹ Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 54, 'Huyện Mỹ Tú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 54, 'Huyện Kế Sách', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 54, 'Thành phố Sóc Trăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 55, 'Huyện Sốp Cộp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 55, 'Huyện Mộc Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 55, 'Huyện Sông Mã', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 55, 'Huyện Yên Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 55, 'Huyện Mai Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 55, 'Huyện Phù Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 55, 'Huyện Bắc Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 55, 'Huyện Thuận Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 55, 'Huyện Mường La', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 55, 'Huyện Quỳnh Nhai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 55, 'Thành phố Sơn La', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 56, 'Huyện Trảng Bàng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 56, 'Huyện Gò Dầu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 56, 'Huyện Bến Cầu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 56, 'Huyện Hòa Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 56, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 56, 'Huyện Dương Minh Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 56, 'Huyện Tân Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 56, 'Huyện Tân Biên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 56, 'Thị xã Tây Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 57, 'Huyện Thái Thụy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 57, 'Huyện Tiền Hải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 57, 'Huyện Kiến Xương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 57, 'Huyện Vũ Thư', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 57, 'Huyện Đông Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 57, 'Huyện Hưng Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 57, 'Huyện Quỳnh Phụ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 57, 'Thành phố Thái Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 58, 'Huyện Phổ Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 58, 'Huyện Phú Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 58, 'Huyện Đồng Hỷ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 58, 'Huyện Đại Từ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 58, 'Huyện Võ Nhai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 58, 'Huyện Phú Lương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 58, 'Huyện Định Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 58, 'Thị xã Sông Công', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 58, 'Thành phố Thái Nguyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 59, 'Huyện Nông Cống', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 59, 'Huyện Triệu Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 59, 'Huyện Triệu Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 59, 'Huyện Vĩnh Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 59, 'Huyện Thọ Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 59, 'Huyện Cẩm Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 59, 'Huyện Thạch Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 59, 'Huyện Ngọc Lặc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 59, 'Huyện Lanh Chánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 59, 'Huyện Như Thanh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 59, 'Huyện Như Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 59, 'Huyện Thường Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 59, 'Huyện Bá Thước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 59, 'Huyện Mường Lát', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 59, 'Huyện Quan Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 59, 'Huyện Quan Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 59, 'Thị xã Sầm Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 59, 'Thị xã Bỉm Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 59, 'Thành phố Thanh Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 60, 'Huyện A Lưới', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 60, 'Huyện Nam Đông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 60, 'Huyện Phú Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 60, 'Huyện Hương Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 60, 'Huyện Hương Trà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 60, 'Huyện Phú Vang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 60, 'Huyện Quảng Điền', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 60, 'Huyện Phong Điền', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 60, 'Thành phố Huế', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 61, 'Huyện Tân Phú Đông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 61, 'Huyện Tân Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 61, 'Huyện Gò Công Đông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 61, 'Huyện Gò Công Tây', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 61, 'Huyện Chợ Gạo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 61, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 61, 'Huyện Cai Lậy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 61, 'Huyện Cái Bè', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 61, 'Thị xã Gò Công', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 61, 'Thành phố Mỹ Tho', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 62, 'Huyện Duyên Hải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 62, 'Huyện Cầu Ngang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 62, 'Huyện Trà Cú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 62, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 62, 'Huyện Tiểu Cần', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 62, 'Huyện Cầu Kè', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 62, 'Huyện Càng Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 62, 'Thành phố Trà Vinh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 63, 'Huyện Sơn Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 63, 'Huyện Yên Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 63, 'Huyện Hàm Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 63, 'Huyện Chiêm Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 63, 'Huyện Na Hang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 63, 'Huyện Lâm Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 63, 'Thành phố Tuyên Quang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 64, 'Huyện Bình Tân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 64, 'Huyện Vũng Liêm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 64, 'Huyện Trà Ôn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 64, 'Huyện Tam Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 64, 'Huyện Bình Minh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 64, 'Huyện Manh Thít', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 64, 'Huyện Long Hồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 64, 'Thành phố Vĩnh Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 65, 'Huyện Tam Đảo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 65, 'Thị xã Phúc Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 65, 'Huyện Sông Lô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 65, 'Huyện Bình Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 65, 'Huyện Yên Lạc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 65, 'Huyện Vĩnh Tường', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 65, 'Huyện Lập Thạch ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 65, 'Huyện Tam Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 65, 'Thành phố Vĩnh Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 66, 'Huyện Lục Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 66, 'Huyện Trạm Tấu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 66, 'Huyện Trấn Yên ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 66, 'Huyên Văn Chấn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 66, 'Huyện Mù Cang Chải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 66, 'Huyện Yên Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 66, 'Huyện Văn Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 66, 'Thị xã Nghĩa Lộ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 66, 'Thành phố Yên Bái', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `docthu`
--

CREATE TABLE `docthu` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `file` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `docthu`
--

INSERT INTO `docthu` (`id`, `product_id`, `file`, `created_at`, `updated_at`) VALUES
(1, 54, '1513399530_s.pdf', NULL, NULL),
(2, 54, '1513399530_s1.pdf', NULL, NULL),
(3, 55, '1513583984_s.pdf', NULL, NULL),
(4, 55, '1513583984_s1.pdf', NULL, NULL),
(5, 28, '1513586510_s.pdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `question` text,
  `answer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(3, 15, 'Travel có giới hạn cho chương trình', 'Travel có một vài giới hạn như không nhận khách trẻ em, không sắp xếp nam nữ ở chung phong, không phải dịch vụ mai mối, không có quá nhiều điểm tham quan trong lịch trình và không có sản phẩm tour giá rẻ.', '2018-05-10 01:26:32', '2018-05-10 01:26:32'),
(4, 15, 'Travel Up có gì khác biệt', 'Travel có một vài giới hạn như không nhận khách trẻ em, không sắp xếp nam nữ ở chung phong, không phải dịch vụ mai mối, không có quá nhiều điểm tham quan trong lịch trình và không có sản phẩm tour giá rẻ.', '2018-05-10 01:25:00', '2018-05-10 01:25:00'),
(5, 16, 'Làm sao để mình tham gia cộng đồng', 'Travel có một vài giới hạn như không nhận khách trẻ em, không sắp xếp nam nữ ở chung phong, không phải dịch vụ mai mối, không có quá nhiều điểm tham quan trong lịch trình và không có sản phẩm tour giá rẻ.', '2018-05-10 01:26:59', '2018-05-10 01:26:59'),
(6, 16, 'Có giới hạn độ tuổi tham giam không?', 'Travel có một vài giới hạn như không nhận khách trẻ em, không sắp xếp nam nữ ở chung phong, không phải dịch vụ mai mối, không có quá nhiều điểm tham quan trong lịch trình và không có sản phẩm tour giá rẻ.', '2018-05-10 01:27:28', '2018-05-10 01:27:28'),
(7, 18, 'Các liên lạc vs tour up', 'Travel có một vài giới hạn như không nhận khách trẻ em, không sắp xếp nam nữ ở chung phong, không phải dịch vụ mai mối, không có quá nhiều điểm tham quan trong lịch trình và không có sản phẩm tour giá rẻ.', '2018-05-10 01:27:51', '2018-05-10 01:27:51'),
(8, 17, 'Nên mang bao nhiêu tiền là đủ', 'Travel có một vài giới hạn như không nhận khách trẻ em, không sắp xếp nam nữ ở chung phong, không phải dịch vụ mai mối, không có quá nhiều điểm tham quan trong lịch trình và không có sản phẩm tour giá rẻ.', '2018-05-10 01:28:10', '2018-05-10 01:28:10'),
(9, 17, 'Mình không thấy bên bạn có nhiều tour', 'Travel có một vài giới hạn như không nhận khách trẻ em, không sắp xếp nam nữ ở chung phong, không phải dịch vụ mai mối, không có quá nhiều điểm tham quan trong lịch trình và không có sản phẩm tour giá rẻ.', '2018-05-10 01:28:50', '2018-05-10 01:28:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `content` text,
  `position` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `photo`, `content`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Phương Mai', '1525923560_18.jpg', 'Cháy hết da đen hết mặt, nhưng đã đời lắm, không biết bơi nhưng vẫn ngắm san hô vô tư. Những trải nghiệm thật khó quên. Cảm ơn Up nhé!', NULL, '2018-05-10 03:39:20', '2018-05-10 03:39:20'),
(2, 'Nguyễn Mai Phương', '1525923572_19.jpg', 'Cháy hết da đen hết mặt, nhưng đã đời lắm, không biết bơi nhưng vẫn ngắm san hô vô tư. Những trải nghiệm thật khó quên. Cảm ơn Up nhé!', NULL, '2018-05-10 03:39:32', '2018-05-10 03:39:32'),
(3, 'Phương Mai Nguyễn', '1525923855_18.jpg', 'Là những nhân viên đồng sáng lập Travel Up và những người nhân viên năng động, trẻ trung, nhiệt tình, đã, đang và sẽ làm việc tại Travel Up.', NULL, '2018-05-10 03:44:15', '2018-05-10 03:44:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tour_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `tour_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`) VALUES
(138, 20, NULL, NULL, NULL, '1515401306_12.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:26'),
(137, 20, NULL, NULL, NULL, '1515401306_8.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:26'),
(136, 20, NULL, NULL, NULL, '1515401306_7.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:26'),
(80, 8, NULL, NULL, NULL, '1511515090_b2.png', 1, NULL, NULL, 0, '2017-11-24 09:18:10'),
(81, 8, NULL, NULL, NULL, '1511515090_b6.jpg', 1, NULL, NULL, 0, '2017-11-24 09:18:10'),
(82, 8, NULL, NULL, NULL, '1511515090_b7.jpg', 1, NULL, NULL, 0, '2017-11-24 09:18:10'),
(83, 8, NULL, NULL, NULL, '1511515090_b8.jpg', 1, NULL, NULL, 0, '2017-11-24 09:18:10'),
(132, 24, NULL, NULL, NULL, '1515401150_6.jpg', 1, NULL, NULL, 0, '2018-01-08 08:45:50'),
(131, 24, NULL, NULL, NULL, '1515401150_4.jpg', 1, NULL, NULL, 0, '2018-01-08 08:45:50'),
(130, 24, NULL, NULL, NULL, '1515401150_3.jpg', 1, NULL, NULL, 0, '2018-01-08 08:45:50'),
(155, 23, NULL, NULL, NULL, '1516095292_listing-grid-img14.jpg', 1, NULL, NULL, 0, '2018-01-16 09:34:52'),
(154, 23, NULL, NULL, NULL, '1516095292_listing-grid-img13.jpg', 1, NULL, NULL, 0, '2018-01-16 09:34:52'),
(141, 19, NULL, NULL, NULL, '1515401318_7.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:38'),
(140, 19, NULL, NULL, NULL, '1515401318_6.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:38'),
(139, 19, NULL, NULL, NULL, '1515401318_2.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:38'),
(145, 1, NULL, NULL, NULL, '1515549451_4.jpg', 1, NULL, NULL, 0, '2018-01-10 01:57:31'),
(146, 1, NULL, NULL, NULL, '1515549451_5.jpg', 1, NULL, NULL, 0, '2018-01-10 01:57:31'),
(147, 1, NULL, NULL, NULL, '1515549451_7.jpg', 1, NULL, NULL, 0, '2018-01-10 01:57:31'),
(156, 23, NULL, NULL, NULL, '1516095292_listing-grid-img15.jpg', 1, NULL, NULL, 0, '2018-01-16 09:34:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(45, 5, 'right sidebar', NULL, '1526025246_10.jpg', NULL, NULL, 1, 0, 'chuyen-muc', 1, '2018-05-11 07:54:06', '2018-05-11 07:54:06'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1522638233_9.png', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-04-02 03:03:53', '2018-04-02 03:03:53'),
(36, 5, 'Hình ảnh 2', NULL, '1522638244_9.png', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-04-02 03:04:04', '2018-04-02 03:04:04'),
(38, 5, 'Chúng tôi có trang thiết bị, phụ tùng chất lượng', NULL, '', 'It is a long established fact that a reader will be distracted by the readable content of a page when at its layout.', NULL, 1, 0, 'tieu-chi', 1, '2018-01-16 03:15:16', '2018-01-16 03:15:16'),
(39, 5, 'Ô tô được mang đến tận nhà cho bạn', NULL, '', 'Content here, content here\', making it look like readable English. Many desktop publishing packages and web.', NULL, 1, 0, 'tieu-chi', 2, '2018-01-16 03:15:37', '2018-01-16 03:15:37'),
(40, 5, 'Trải nghiệm mua sắm tuyệt vời', NULL, '', 'There are many variations of passages of Lorem Ipsum from available, but the majority have suffered alteration.', NULL, 1, 0, 'tieu-chi', 3, '2018-01-16 03:15:58', '2018-01-16 03:15:58'),
(48, NULL, '3', NULL, '1522638468_9.png', NULL, NULL, 1, 0, 'gioi-thieu', 3, '2018-04-02 03:07:48', '2018-04-02 03:07:48'),
(49, NULL, '4', NULL, '1522638474_9.png', NULL, NULL, 1, 0, 'gioi-thieu', 4, '2018-04-02 03:07:54', '2018-04-02 03:07:54'),
(50, NULL, '5', NULL, '1522638479_9.png', NULL, NULL, 1, 0, 'gioi-thieu', 5, '2018-04-02 03:07:59', '2018-04-02 03:07:59'),
(51, NULL, '6', NULL, '1522638485_9.png', NULL, NULL, 1, 0, 'gioi-thieu', 6, '2018-04-02 03:08:05', '2018-04-02 03:08:05'),
(52, NULL, '12', NULL, '1526025260_11.jpg', NULL, NULL, 1, 0, 'chuyen-muc', 2, '2018-05-11 07:54:20', '2018-05-11 07:54:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  `photo` text,
  `status` int(2) DEFAULT NULL,
  `remember_token` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `name`, `phone`, `email`, `address`, `total_money`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hoangchuong', '$2y$10$mjzZcnMvxFECBHCN6hHb8uiEHCIni8PcbMH9GMEwtcgHyp31TNdWi', 'Hoàng Hồng Chương', '0987654321', 'chuonghoanghong@gmail.com', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, 'chuong.jpg', NULL, NULL, '2017-12-15 09:40:33', '2017-12-15 09:40:33'),
(2, 'chuonghh', '$2y$10$XGwTwpQvDRJ0I3fy61ZFlO3duWbhhtgBgYcgybbK0L4TRd6bh/JNy', 'Hoàng Chương', '0987654321', 'chuonghh@gco.vn', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, 'hqdefault.jpg-1494252094.jpg', NULL, NULL, '2017-12-15 09:43:25', '2017-12-15 09:43:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-09-01 01:34:21', '2017-08-31 18:34:21'),
(13, 'Tin tức', 'tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-08-24 04:17:41', '2017-08-23 21:17:41'),
(14, 'Liên hệ', 'lien-he', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-08-24 04:17:32', '2017-08-23 21:17:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 'Tin tức 1b', 'tin-tuc-1b', '1522639492_9.jpg', '1510125790_2016-toyota-avalon-banner.jpg', 'Một vẻ ngoài bảnh bao ngoài trang phục ra thì còn cần đến sự góp sức không nhỏ của những món phụ kiện thời trang quý ông hữu dụng và cá tính. Với các đấng mày râu, ngoài những bộ quần áo vốn chiếm vai trò quan trọng tạo nên sức hút riêng của mình, không thể lãng quên vai trò của những món phụ kiện mang phong cách thời trang nam như trang sức nam thời thượng, như mắt kính, ví bóp nam với màu sắc và kiểu dáng sao cho thật “vừa vặn” khi kết hợp cùng với những bộ trang phục đẳng cấp.', '<p>Hiện nay dạy kỹ năng sống v&agrave; tổ chức hoạt động ngoại kh&oacute;a d&agrave;nh cho học sinh l&agrave; rất cần thiết. Đặc biệt, với học sinh THPT th&igrave; c&agrave;ng quan trọng hơn, nhằm trang bị cho c&aacute;c em kiến thức cũng như kỹ năng giải quyết một c&aacute;ch chủ động, t&iacute;ch cực v&agrave; hiệu quả nhất c&aacute;c t&igrave;nh huống, y&ecirc;u cầu của cuộc sống khi gặp phải, trung t&acirc;m luyện thi v&agrave;o lớp 10 h&agrave; nội, trung tam luyen thi tai ha noi gi&uacute;p cho học sinh c&oacute; cơ hội tiếp x&uacute;c, cảm gi&aacute;c, cảm nhận, trải nghiệm trước những hiện tượng, sự vật, sự việc đ&atilde; v&agrave; đang diễn ra trong tự nhi&ecirc;n, cũng như trong cuộc sống x&atilde; hội.</p>\r\n<p>Nhưng c&oacute; một c&acirc;u hỏi đặt ra ở đ&acirc;y l&agrave; liệu l&agrave;m thế n&agrave;o để vừa c&acirc;n bằng giữa việc hoạt động ngoại kho&aacute; v&agrave; việc học tập?</p>\r\n<p>Đ&acirc;y kh&ocirc;ng chỉ l&agrave; sự băn khoăn của c&aacute;c bạn học sinh m&agrave; c&ograve;n l&agrave; của phụ huynh nữa. V&igrave; vậy ch&uacute;ng t&ocirc;i sẽ gi&uacute;p c&aacute;c bạn c&aacute;c c&aacute;ch để c&oacute; thể c&acirc;n bằng giữa việc hoạt động ngoại kho&aacute; v&agrave; việc học tập hiệu quả.</p>\r\n<p class=\"text-center\"><img title=\"\" src=\"http://localhost/sigma/backend/news/images/news-detail.jpg\" alt=\"\" /></p>\r\n<p>1 X&aacute;c định mục ti&ecirc;u:</p>\r\n<p>Khi tham gia một hoạt động n&agrave;o đ&oacute; hay mới bắt đầu 1 c&ocirc;ng việc th&igrave; ch&uacute;ng ta phải đặt ra được mục ti&ecirc;u của việc đ&oacute; l&agrave; g&igrave;? Ch&uacute;ng ta mong đợi điều g&igrave; ở bản th&acirc;n khi thực hiện điều đ&oacute;? C&oacute; thể c&oacute; bạn đam m&ecirc; với những vũ điệu h&atilde;y trở th&agrave;nh những vũ c&ocirc;ng để thoả m&atilde;n đam m&ecirc;. Nếu bạn đam m&ecirc; với những kiến thức kinh doanh từ nhỏ th&igrave; h&atilde;y tham gia c&aacute;c CLB học thuật, c&ograve;n l&agrave; người mong muốn đem lại những lợi &iacute;ch cho cộng đồng h&atilde;y tham gia c&aacute;c tổ chức phi lợi nhuận chẳng hạn,&hellip;</p>\r\n<p class=\"text-center\"><img title=\"\" src=\"http://localhost/sigma/backend/news/images/news-detail3.jpg\" alt=\"\" /></p>', 1, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2018-04-02 03:24:52', '2018-04-02 03:24:52'),
(2, 0, 5, 'Quần áo thiết kế tay', 'quan-ao-thiet-ke-tay', '1522639485_7.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2018-04-02 03:24:45', '2018-04-02 03:24:45'),
(3, 0, 5, 'KHÁM PHÁ THỂ GIỚI THỜI TRANG', 'kham-pha-the-gioi-thoi-trang', '1522639478_6.jpg', '', NULL, NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 3, '2018-05-08 10:05:49', '2018-05-08 10:05:49'),
(4, 0, 5, 'Dự án khu phức hợp sang trọng tiện nghi Ascott Waterfront Saigon TP Hồ Chí Minh', 'du-an-khu-phuc-hop-sang-trong-tien-nghi-ascott-waterfront-saigon-tp-ho-chi-minh', '1522639469_5.jpg', '', 'Tọa lạc tại số 1 – 1A Tôn Đức Thắng, phường Bến Nghé, quận 1, căn hộ cao cấp Ascott Waterfront Saigon là một phần của tòa nhà phức hợp bao gồm khu vực văn phòng với trụ sở của nhiều công ty tài chính và ngân hàng.', '<p>Tọa lạc tại số 1 &ndash; 1A T&ocirc;n Đức Thắng, phường Bến Ngh&eacute;, quận 1, căn hộ cao cấp Ascott Waterfront Saigon l&agrave; một phần của t&ograve;a nh&agrave; phức hợp bao gồm khu vực văn ph&ograve;ng với trụ sở của nhiều c&ocirc;ng ty t&agrave;i ch&iacute;nh v&agrave; ng&acirc;n h&agrave;ng.</p>\r\n<p><img src=\"https://bizweb.dktcdn.net/100/199/106/files/20151207145552-7ba6.jpg?v=1492971609996\" alt=\"Dự &aacute;n khu phức hợp sang trọng tiện nghi Ascott Waterfront Saigon TP Hồ Ch&iacute; Minh\" width=\"615\" height=\"738\" /></p>\r\n<p><br /><strong>Quy m&ocirc; dự &aacute;n Ascott Waterfront Saigon</strong></p>\r\n<p>Dự &aacute;n Ascott Waterfront Saigon được x&acirc;y dựng tr&ecirc;n khu đất c&oacute; diện t&iacute;ch 2.190 m2, l&agrave; khu cao ốc thương mại v&agrave; căn hộ cao cấp hạng A với t&ograve;a th&aacute;p cao 27 tầng, 4 tầng hầm, 1 tầng s&acirc;n thượng v&agrave; 1 tầng hồ bơi.<br />Trong đ&oacute; từ tầng trệt đến tầng 9 l&agrave; khu vực văn ph&ograve;ng, trung t&acirc;m thương mại. Từ t&acirc;ng 10 đến tầng 25 l&agrave; khu căn hộ, tầng 26 v&agrave; 27 l&agrave; khu penthouse.</p>\r\n<p><img src=\"https://bizweb.dktcdn.net/100/199/106/files/anh-thuc-te-1460537793.jpg?v=1492971641836\" alt=\"Dự &aacute;n khu phức hợp sang trọng tiện nghi Ascott Waterfront Saigon TP Hồ Ch&iacute; Minh\" width=\"600\" height=\"800\" /></p>\r\n<p>&nbsp;</p>\r\n<p>T&ograve;a nh&agrave; cung cấp c&aacute;c dịch vụ hạng sang cao cấp bao gồm dịch vụ: ng&acirc;n h&agrave;ng, văn ph&ograve;ng thương mại, căn hộ cao cấp v&agrave; c&acirc;u lạc bộ. Căn hộ Ascott Waterfront saigon c&oacute; chức năng hỗn hợp thương mại v&agrave; căn hộ cao cấp.</p>\r\n<p><img src=\"https://bizweb.dktcdn.net/100/199/106/files/tien-cich-du-an-1460537819.jpg?v=1492971707093\" alt=\"Dự &aacute;n khu phức hợp sang trọng tiện nghi Ascott Waterfront Saigon TP Hồ Ch&iacute; Minh\" width=\"950\" height=\"634\" /></p>\r\n<p>Th&ocirc;ng tin từ CafeLand</p>\r\n<p>Dự &aacute;n Ascott Waterfront Saigon được quản l&yacute; bởi The Ascott Limited (Ascott) v&agrave; Tập đo&agrave;n M.I.K Corporation. Dự &aacute;n n&agrave;y hiện đang trong qu&aacute; tr&igrave;nh ho&agrave;n thiện. Đ&acirc;y l&agrave; dự &aacute;n căn hộ si&ecirc;u sang tại TP.HCM với gi&aacute; rao b&aacute;n tr&ecirc;n thị trường khoảng 8.000 USD/m2</p>', 1, 1, NULL, NULL, NULL, 'tin-tuc', 4, '2018-05-08 10:05:48', '2018-05-08 10:05:48'),
(8, 0, 5, 'Tin tuyển dụng 1', 'tin-tuyen-dung-1', '1507947364_home-item-1.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tuyen-dung', 1, '2017-10-14 02:20:41', '2017-10-13 19:16:04'),
(9, 0, 5, 'tin tuyen dụng hot', 'tin-tuyen-dung-hot', '1507947598_home-cate-2.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tuyen-dung', 2, '2017-10-14 02:20:47', '2017-10-13 19:19:58'),
(10, 0, 5, 'Tin tức 2', 'tin-tuc-2', '1522639460_4.jpg', '', 'Một vẻ ngoài bảnh bao ngoài trang phục ra thì còn cần đến sự góp sức không nhỏ của những món phụ kiện thời trang quý ông hữu dụng và cá tính. Với các đấng mày râu, ngoài những bộ quần áo vốn chiếm vai trò quan trọng tạo nên sức hút riêng của mình, không thể lãng quên vai trò của những món phụ kiện mang phong cách thời trang nam như trang sức nam thời thượng, như mắt kính, ví bóp nam với màu sắc và kiểu dáng sao cho', NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 5, '2018-05-08 10:05:47', '2018-05-08 10:05:47'),
(11, 0, 5, 'tin tức 3', 'tin-tuc-3', '1522639451_3.jpg', '', 'Một vẻ ngoài bảnh bao ngoài trang phục ra thì còn cần đến sự góp sức không nhỏ của những món phụ kiện thời trang quý ông hữu dụng và cá tính. Với các đấng mày râu, ngoài những bộ quần áo vốn chiếm vai trò quan trọng tạo nên sức hút riêng của mình, không thể lãng quên vai trò của những món phụ kiện mang phong cách thời trang nam như trang sức nam thời thượng, như mắt kính, ví bóp nam với màu sắc và kiểu dáng sao cho', NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 6, '2018-05-08 10:05:46', '2018-05-08 10:05:46'),
(12, 0, 5, 'Mang thương hiệu HATHACO đến triển lãm quốc tếx', 'mang-thuong-hieu-hathaco-den-trien-lam-quoc-tex', '1522639445_2.jpg', '', 'Một vẻ ngoài bảnh bao ngoài trang phục ra thì còn cần đến sự góp sức không nhỏ của những món phụ kiện thời trang quý ông hữu dụng và cá tính.', '<div class=\"automobile-blog-heading\">\r\n<p>Hyperloop Transportation Technologies plans to a form of passive repulsion technology to make its pods to go cheaper and easier to maintain.</p>\r\n<p>Remember the days when your car audio system consisted of a single speaker mounted someplace in the dash board? Or maybe you had a really fancy system that had a speaker in each door - stereo! Ok, in all honesty I didn&rsquo;t live through this era, either.</p>\r\n</div>\r\n<blockquote>Individual commitment to a group effort - that is what makes a team work, a company work, a society work, a civilization work.Vince Lombardi</blockquote>\r\n<p>In a centrally amplified system, there is a single amp that takes a signal (in the form of music) from the stereo systems main controller (known as th e head unit) and boosts it to all of the speakers. The amp uses a system of channels to divide the signal amongst the speakers &mdash; front to back, left to right, subwoofers, etc.</p>\r\n<p>Each of these channels leads to a separate speaker, but they are all powered by a single amplifier that is cenraly locat- ed so that the massive spider of wires needed to r fficiently.</p>\r\n<h2>Remote amplified speaker systems</h2>\r\n<p>As car audio systems developed to the point of producing concert quality sound in the cabin of your car or truck, the demands on the car&rsquo;s amplifier were multiplied. Eventually, audio designers started installing two amps, dividing the system into two power blocks.</p>\r\n<p>As the number of speakers grew, another amp was added, until we reached the point many systems are nearing today each speaker has its own amplifier mounted on or very near the speaker itself.</p>', 1, 1, NULL, NULL, NULL, 'tin-tuc', 7, '2018-04-03 07:00:23', '2018-04-03 07:00:23'),
(14, 0, NULL, 'Tin tuc 1', 'tin-tuc-1', '1522639435_1.jpg', '', NULL, NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 8, '2018-04-03 04:56:00', '2018-04-03 04:56:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(50, 0, NULL, NULL, 'admin@team.vn', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 1, '2018-04-02 07:08:55', '2018-04-02 07:08:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(3, 'Sáng tạo', 'sang-tao', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2018-01-02 03:45:28', NULL, '2018-01-02 03:45:28'),
(2, 'Thời trang', 'thoi-trang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2018-01-02 03:48:49', NULL, '2018-01-02 03:48:49'),
(13, 'Cách thức thanh toán', 'cach-thuc-thanh-toan', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 1, '2017-08-29 04:05:32', NULL, '2017-08-28 21:05:32'),
(14, 'Quy định mua hàng', 'quy-dinh-mua-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 2, '2017-08-29 04:05:44', NULL, '2017-08-28 21:05:44'),
(20, 'Không gian phòng ngủ', 'khong-gian-phong-ngu', '1504077747_1_19.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 1, '2017-08-30 07:48:00', NULL, '2017-08-30 00:48:00'),
(21, 'Không gian phòng khách', 'khong-gian-phong-khach', '1504078021_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 2, '2017-08-30 07:48:07', NULL, '2017-08-30 00:48:07'),
(22, 'Phòng bếp hiện đại', 'phong-bep-hien-dai', '1504078039_1_21.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 3, '2017-08-30 07:48:12', NULL, '2017-08-30 00:48:12'),
(23, 'Phòng ngủ châu âu', 'phong-ngu-chau-au', '1504078067_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 4, '2017-08-30 07:48:18', NULL, '2017-08-30 00:48:18'),
(31, 'Sản phẩm khác', 'san-pham-khac', '1505465773_sv3.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 3, '2017-09-15 09:49:21', '1505468961_dv4.png', '2017-09-15 02:49:21'),
(30, 'Canxi nano', 'canxi-nano', '1505465758_sv2.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 2, '2017-09-15 09:48:41', '1505468921_dv3.png', '2017-09-15 02:48:41'),
(29, 'Sản phẩm bảo vệ sức khỏe', 'san-pham-bao-ve-suc-khoe', '1505465729_sv1.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 1, '2017-09-16 04:14:59', '1505468944_dv4.png', '2017-09-15 21:14:59'),
(33, 'Sản phẩm mới nhập', 'san-pham-moi-nhap', '', NULL, 0, 0, 0, NULL, NULL, NULL, 'dich-vu', 4, '2017-09-18 01:49:43', '', '2017-09-17 18:49:43'),
(34, 'Nhiếp ảnh', 'nhiep-anh', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 3, '2018-01-02 03:49:02', '', '2018-01-02 03:49:02'),
(35, 'Du lịch', 'du-lich', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 4, '2018-01-02 03:49:18', '', '2018-01-02 03:49:18'),
(36, 'Kinh tế', 'kinh-te', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 5, '2018-01-02 03:49:29', '', '2018-01-02 03:49:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nxb`
--

CREATE TABLE `nxb` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nxb`
--

INSERT INTO `nxb` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Kim Đồng', '2017-11-21 21:04:25', '2017-11-21 21:04:25'),
(3, 'Sư phạm', '2017-11-21 21:04:50', '2017-11-21 21:04:50'),
(4, 'Nhà xuất bản thanh niên', '2017-11-24 20:46:23', '2017-11-24 20:46:23'),
(5, 'Tuổi trẻ', '2017-12-09 03:03:31', '2017-12-09 03:03:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` text CHARACTER SET utf8,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `position` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `name`, `url`, `phone`, `email`, `photo`, `desc`, `content`, `position`, `com`, `status`, `stt`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Hoang Nam', NULL, '987654321', 'admin@team.vn', '1525839554_9.jpg', 'Ông đã thổi một luồng sinh khí mới làm cho công ty có những bước phát triển vượt bậc thời gian qua.Ông cống hiến không mệt mỏi vì khát vọng đem lại diện mạo mới cho ngành du lịch Việt Nam, thiết kế và tổ chức những chương trình du lịch có chất lượng cao và giá cả tiết kiệm nhất cho khách du lịch.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n            tempor incididunt ut labore et dolore magna aliqua.', 'Phó giám đốc', 'doi-tac', 1, NULL, '2017-11-20 00:22:02', '2018-05-11 09:51:34'),
(2, 'Luis Aragones', NULL, NULL, NULL, '1525839566_13.jpg', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Phó giám đốc', 'doi-tac', 1, NULL, '2017-11-20 00:22:13', '2018-05-09 04:19:26'),
(3, 'Maria Alessis', NULL, NULL, NULL, '1525839559_10.jpg', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Thiết kế', 'doi-tac', 1, NULL, '2017-11-20 00:22:21', '2018-05-09 04:19:19'),
(14, 'gco', NULL, NULL, NULL, '1525839571_11.jpg', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Nhân viên', 'doi-tac', 1, NULL, '2018-01-08 09:14:44', '2018-05-09 04:19:31'),
(17, 'Tran Van A', NULL, NULL, NULL, '1525839578_12.jpg', NULL, 'sf sfs sdfssdf sf', 'nhan vien', 'doi-tac', 1, NULL, '2018-04-02 02:56:40', '2018-05-09 04:19:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `theloai_id` int(11) DEFAULT NULL,
  `tacgia_id` int(11) DEFAULT NULL,
  `nxb_id` int(11) DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `video` text COLLATE utf8_unicode_ci,
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) DEFAULT '0',
  `phoido` int(11) DEFAULT '0',
  `xuthe` int(11) DEFAULT '0',
  `tags` text CHARACTER SET utf8,
  `com` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `theloai_id`, `tacgia_id`, `nxb_id`, `code`, `stt`, `name`, `alias`, `photo`, `price`, `sale`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `video`, `baohanh`, `properties`, `model`, `namsanxuat`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `phoido`, `xuthe`, `tags`, `com`, `spbc`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 5, 13, NULL, NULL, NULL, NULL, 1, 'Sản phẩm 1', 'san-pham-1', '1525832135_13.jpg', 1500000, 0, 4000000, '<p>gd dg&nbsp;</p>', '<p>f sg d</p>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 02:15:35', '2018-05-09 02:15:35'),
(3, 5, 4, 4, 3, 4, NULL, 3, 'Sản phẩm 4', 'san-pham-4', '1511485712_b10.jpg', 460000, 0, 467000, NULL, '<p>f sf s&nbsp;</p>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'combo', 1, 1, NULL, NULL, NULL, '2017-11-29 03:51:34', '2017-11-26 19:21:03'),
(10, 5, 13, NULL, NULL, NULL, NULL, 10, 'Sản phẩm demo x', 'san-pham-demo-x', '1525832019_5.jpg', 1400000, 0, 1600000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 02:13:39', '2018-05-09 02:13:39'),
(11, 5, 0, NULL, NULL, NULL, NULL, 11, 'Sản phẩm demo 4', 'san-pham-demo-4', '1525832006_12.jpg', 2000000, 0, 3000000, NULL, NULL, NULL, 1, NULL, NULL, 'Hãng sản xuất: Apple###sdf sf###sdf s sdf###Xuất xứ: Chính hãng', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 02:13:26', '2018-05-09 02:13:26'),
(13, 5, 14, NULL, NULL, NULL, NULL, 13, 'Sản phẩm xyz', 'san-pham-xyz', '1525831975_18.jpg', 2000000, 0, 2400000, '<p>Nội dung m&ocirc; tả sản phẩm</p>', '<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" height=\"19\">\r\n<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>\r\n</td>\r\n<td valign=\"top\">\r\n<p align=\"center\">LC 200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" height=\"19\">\r\n<p>Động cơ</p>\r\n</td>\r\n<td valign=\"top\">\r\n<p align=\"center\">4.7 l&iacute;t ( 2UZ-FE)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" height=\"19\">\r\n<p>Hộp số</p>\r\n</td>\r\n<td valign=\"top\">\r\n<p align=\"center\">5 số tự động</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\" valign=\"top\" height=\"19\">\r\n<p><strong>K&Iacute;CH THƯỚC V&Agrave; TRỌNG LƯỢNG</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>K&iacute;ch thước tổng thể (D&agrave;i x Rộng x Cao)</p>\r\n</td>\r\n<td width=\"68\">\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td width=\"243\">\r\n<p align=\"center\">4950 x 1970 x 1905</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>Chiều d&agrave;i cơ sở&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">2850</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"349\">\r\n<p>Chiều rộng cơ sở</p>\r\n</td>\r\n<td width=\"88\">\r\n<p>Trước x sau</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">1640/1635</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>K&iacute;ch thước nội thất ( D&agrave;i x Rộng x Cao)</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">2715 x 1640 x 1200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>Khoảng s&aacute;ng gầm xe&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">225</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>B&aacute;n k&iacute;nh quay v&ograve;ng tối thiểu</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">m</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">5,9</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\">\r\n<p>Trọng lượng</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;Kh&ocirc;ng tải</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">kg</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">2675</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;To&agrave;n tải</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">kg</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">3300</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>KHUNG XE</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\">\r\n<p>Hệ thống treo</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Trước</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&ETH;ộc lập với đ&ograve;n k&eacute;p, l&ograve; xo cuộn v&agrave; thanh c&acirc;n bằng</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p align=\"center\">Sau</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td valign=\"top\">\r\n<p align=\"center\">Phụ thuộc, loại 4 điểm, l&ograve; xo cuộn v&agrave; tay đ&ograve;n b&ecirc;n</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống phanh</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Trước/Sau</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&ETH;ĩa th&ocirc;ng gi&oacute; 17\"</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">l&iacute;t</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">93 + 45</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Vỏ xe</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">285/65 R17</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>M&acirc;m xe</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">M&acirc;m đ&uacute;c 17\"</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>ĐỘNG CƠ</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>VVT-i</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Kiểu</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">V8, 32 van, DOHC</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Dung t&iacute;ch c&ocirc;ng t&aacute;c</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">cc</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">4664</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>C&ocirc;ng suất tối đa (EEC NET)</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">HP/rpm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">271 / 5400</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>M&ocirc; men xoắn tối đa (EEC NET)</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Kg.m/rpm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">41.8 / 3400</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Ti&ecirc;u chuẩn kh&iacute; thải</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Euro Step 3</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Tốc độ tối đa</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Km/h</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Chế độ 4 b&aacute;nh chủ động</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">To&agrave;n phần</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p>TRANG THIẾT BỊ CH&Iacute;NH</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>K&iacute;nh chiếu hậu ngo&agrave;i chỉnh điện</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>*Hệ thống &acirc;m thanh</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">AM/FM, Cassette, CD 6 đĩa, 6 loa</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\">\r\n<p>*Hệ thống &ETH;iều ho&agrave;</p>\r\n</td>\r\n<td>\r\n<p>Loại</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Tự động, điều chỉnh 2 v&ugrave;ng độc lập</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Bộ lọc kh&iacute;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"4\">\r\n<p>Ghế</p>\r\n</td>\r\n<td>\r\n<p>Trượt</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">H&agrave;ng 1 v&agrave; 2</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Ngả</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">H&agrave;ng 1 v&agrave; 2</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Điều chỉnh độ cao</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Ghế người l&aacute;i + h&agrave;nh kh&aacute;ch trước</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Đệm lưng</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Chỉnh điện (ghế người l&aacute;i)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống mở kh&oacute;a th&ocirc;ng minh</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Kh&oacute;a cửa từ xa</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống khởi động bằng n&uacute;t bấm</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống chống trộm</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Hệ thống m&atilde; ho&aacute; kh&oacute;a động cơ + Chu&ocirc;ng b&aacute;o động</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Ăng ten</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">In tr&ecirc;n k&iacute;nh</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>AN TO&Agrave;N</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>An to&agrave;n chủ động</strong></p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống chống b&oacute; cứng phanh (ABS)</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống ph&acirc;n phối lực phanh điện tử (EBD)</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hỗ trợ lực phanh khẩn cấp (BA)</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>An to&agrave;n bị động</strong></p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>T&uacute;i kh&iacute; trước</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute; (người l&aacute;i v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>T&uacute;i kh&iacute; b&ecirc;n h&ocirc;ng</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute; (người l&aacute;i v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>T&uacute;i kh&iacute; r&egrave;m hai b&ecirc;n cửa sổ</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống tự động ngắt nhi&ecirc;n liệu</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p>*Chiều d&agrave;i tổng thể l&agrave; 5250mm nếu t&iacute;nh b&aacute;nh phụ</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 02:12:55', '2018-05-09 02:12:55'),
(25, 5, 14, NULL, NULL, NULL, NULL, 21, 'Galaxy Jx', 'galaxy-jx', '1525831827_6.jpg', 2000000, 0, 2100000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 02:10:27', '2018-05-09 02:10:27'),
(26, 5, 13, NULL, NULL, NULL, NULL, 22, 'Găng tay', 'gang-tay', '1525831798_5.jpg', 30000000, 0, 32000000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 03:33:40', '2018-05-09 02:26:56'),
(14, 5, 13, NULL, NULL, NULL, NULL, 14, 'Sản phẩm demo b', 'san-pham-demo-b', '1525831999_10.jpg', 2000000, 0, 2200000, NULL, NULL, NULL, 1, NULL, NULL, 'man hinh full hd###bo nho 32gb', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 02:13:19', '2018-05-09 02:13:19'),
(17, 5, 14, NULL, NULL, NULL, NULL, 16, 'Sản phẩm demo f', 'san-pham-demo-f', '1525831969_17.jpg', 600000, 0, 700000, '<p>Đưa &yacute; tưởng thiết kế thương hiệu tiệm cận chiến lược kinh doanh Những nguy&ecirc;n tắc chung nhằm khuyến nghị nh&agrave; quản trị thương hiệu n&ecirc;n xem x&eacute;t trước khi đưa ra c&aacute;c quyết định, đ&oacute; l&agrave;: Kh&aacute;c biệt, Cộng t&aacute;c, Đổi mới,C&ocirc;ng nhận&hellip; Trong sự ph&aacute;t triển mạnh mẽ của c&aacute;c trường ph&aacute;i, quan điểm v&agrave; tư duy về quản trị thương hiệu, nổi bật l&ecirc;n l&agrave; c&aacute;c quan điểm được thể hiện trong bộ...</p>', '<p>Đưa &yacute; tưởng thiết kế thương hiệu tiệm cận chiến lược kinh doanh</p>\r\n<p>Những nguy&ecirc;n tắc chung nhằm khuyến nghị nh&agrave; quản trị thương hiệu n&ecirc;n xem x&eacute;t trước khi đưa ra c&aacute;c quyết định, đ&oacute; l&agrave;: Kh&aacute;c biệt, Cộng t&aacute;c, Đổi mới,C&ocirc;ng nhận&hellip;</p>\r\n<p>Trong sự ph&aacute;t triển mạnh mẽ của c&aacute;c trường ph&aacute;i, quan điểm v&agrave; tư duy về quản trị thương hiệu, nổi bật l&ecirc;n l&agrave; c&aacute;c quan điểm được thể hiện trong bộ s&aacute;ch của Marty Neumeier &ndash; Chủ tịch của Neutron LLC, San Francisco. Bộ s&aacute;ch kh&ocirc;ng chỉ được xếp thứ hạng cao trong Tủ s&aacute;ch Thương hiệu Quốc gia; m&agrave; c&ograve;n được giới kinh doanh to&agrave;n cầu v&iacute; như bộ c&ocirc;ng cụ phục vụ đắc lực cho việc hoạch định v&agrave; thực thi chiến lược thương hiệu.</p>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 02:12:49', '2018-05-09 02:12:49'),
(18, 5, 13, NULL, NULL, NULL, NULL, 17, 'sản phẩm zx', 'san-pham-zx', '1525831963_15.jpg', 500000, 0, 900000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 02:12:43', '2018-05-09 02:12:43'),
(19, 5, 14, NULL, NULL, NULL, NULL, 18, 'Sản phẩm g', 'san-pham-g', '1525831956_14.jpg', 6500000, 0, 8000000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 02:12:36', '2018-05-09 02:12:36'),
(20, 5, 14, NULL, NULL, NULL, NULL, 16, 'áo 2', 'ao-2', '1525831920_13.jpg', 15000000, 0, 20000000, NULL, NULL, NULL, 1, NULL, NULL, 'Elasticated cuffs###Casual fit###100% Cotton###Vận chuyển miễn phí với giao hàng 4 ngày', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 02:12:00', '2018-05-09 02:12:00'),
(21, 5, 14, NULL, NULL, NULL, NULL, 17, 'áo 1', 'ao-1', '1525831908_12.jpg', 9000000, 0, 9500000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 02:11:48', '2018-05-09 02:11:48'),
(22, 5, 14, NULL, NULL, NULL, NULL, 18, 'Balo 2', 'balo-2', '1525831896_11.jpg', 5000000, 0, 7000000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 02:11:36', '2018-05-09 02:11:36'),
(23, 5, 14, NULL, NULL, NULL, NULL, 19, 'san pham 1', 'san-pham-1', '1525831866_8.jpg', 10000000, 0, 12000000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 02:11:06', '2018-05-09 02:11:06'),
(24, 5, 14, NULL, NULL, NULL, NULL, 20, 'Găng tay đỏ', 'gang-tay-do', '1525831857_7.jpg', 1000000, 0, 1200000, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 03:37:37', '2018-05-09 03:37:37'),
(28, 5, 14, NULL, NULL, NULL, NULL, 23, 'Sản phẩm demo type', 'san-pham-demo-type', '1525831783_4.jpg', 8000000, 0, 9000000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-05-09 03:33:50', '2018-05-09 02:09:43'),
(29, 5, 0, NULL, NULL, NULL, NULL, 1, 'Combo demo', 'combo-demo', '1511925958_b3.png', 200000, 0, 210000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'combo', 0, 1, NULL, NULL, NULL, '2017-11-28 20:25:58', '2017-11-28 20:25:58'),
(40, 0, 0, NULL, NULL, NULL, NULL, 3, 'cpom do sll', 'cpom-do-sll', '', 788678, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '[]', 'combo', 0, 1, NULL, NULL, NULL, '2018-05-09 03:33:51', '2017-12-11 02:26:39'),
(41, 0, 34, 2, 1, 3, NULL, 1, 'Warren Buffett', 'warren-buffett', '1513246894_bdetail1.jpg', 0, 0, 0, '<p class=\"mt-3 bdetail-author\">Khi nhắc đến Warren Edward Buffett, ch&uacute;ng ta đều biết &ocirc;ng l&agrave; một trong những nh&agrave; đầu tư th&agrave;nh c&ocirc;ng nhất tr&ecirc;n thế giới, được tạp ch&iacute; Forbes xếp vị tr&iacute; người gi&agrave;u thứ hai tr&ecirc;n thế giới sau Bill Gates. Kh&ocirc;ng chỉ dừng lại ở đ&oacute;, &ocirc;ng c&ograve;n rất nổi tiếng với sự ki&ecirc;n định trong triết l&yacute; đầu tư theo gi&aacute; trị cũng như lối sống tiết kiệm d&ugrave; sở hữu khối t&agrave;i sản khổng lổ. Nhưng c&oacute; một điều kh&ocirc;ng phải ai cũng biết, tr&ecirc;n con đường trở n&ecirc;n th&agrave;nh c&ocirc;ng v&agrave; gi&agrave;u c&oacute;, Warren Buffett cũng mắc rất nhiều sai lầm.</p>', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'sach-dien-tu', 0, 1, 'Warren Buffett', NULL, NULL, '2018-05-09 03:33:53', '2017-12-14 10:21:34'),
(44, 0, 30, 2, 3, 5, NULL, 3, 'Trí khùng tự truyện', 'tri-khung-tu-truyen', '1513245250_b13.jpg', 0, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '[]', 'sach-dien-tu', 0, 1, NULL, NULL, NULL, '2017-12-14 09:54:10', '2017-12-14 09:54:10'),
(55, 0, 14, NULL, NULL, NULL, NULL, 22, 'test demo', 'test-demo', '1525831776_3.jpg', 2000000, 0, 2500000, '<p>Đ&agrave;n Guitar clasic mang t&ecirc;n C#800 l&agrave; một sản phẩm guitar cổ điển cao cấp do c&ocirc;ng ty TNHH Văn Anh Audio sản xuất với c&aacute;c ti&ecirc;u ch&iacute; cao nhất.</p>', NULL, NULL, 1, NULL, NULL, 'Số xilanh: 6###Số vòng trên phút: 6,700 rpm###Mô-men: 266 lb.-ft.', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 02:09:36', '2018-05-09 02:09:36'),
(43, 0, 34, 0, 0, 0, NULL, 2, 'sf sf', 'sf-sf', '1513152668_b20.jpg', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '[]', 'sach-dien-tu', 0, 1, NULL, NULL, NULL, '2017-12-14 09:55:50', '2017-12-14 09:55:50'),
(56, 0, 13, NULL, NULL, NULL, NULL, 23, 'San pham demo 1x', 'san-pham-demo-1x', '1525831739_2.jpg', 2000000, 0, 0, '<p>Đ&agrave;n Guitar clasic mang t&ecirc;n C#800 l&agrave; một sản phẩm guitar cổ điển cao cấp do c&ocirc;ng ty TNHH Văn Anh Audio sản xuất với c&aacute;c ti&ecirc;u ch&iacute; cao nhất.</p>', '<p>Đ&agrave;n Guitar clasic mang t&ecirc;n C#800 l&agrave; một sản phẩm guitar cổ điển cao cấp do c&ocirc;ng ty TNHH Văn Anh Audio sản xuất với c&aacute;c ti&ecirc;u ch&iacute; cao nhất.</p>\r\n<p>Từ việc lựa chọn nguy&ecirc;n liệu, xử l&yacute; mặt đ&agrave;n, cần đ&agrave;n đến việc quan t&acirc;m s&acirc;u sắc tới c&aacute;c đặc điểm tưởng chừng rất nhỏ nhưng v&ocirc; c&ugrave;ng quan trọng đ&oacute; l&agrave; Ph&iacute;m đ&agrave;n, action (độ cao giữa d&acirc;y đ&agrave;n v&agrave; ph&iacute;m đ&agrave;n), ngựa đ&agrave;n ch&uacute;ng t&ocirc;i đều sản xuất v&agrave; kiểm tra rất kỹ lưỡng.</p>\r\n<p>Khi bạn chơi c&acirc;y đ&agrave;n Guitar cổ điển C#800 bạn sẽ cảm nhận được sự &ecirc;m nhẹ khi lướt tr&ecirc;n ph&iacute;m đ&agrave;n, cảm nhận được sự tinh tế tr&ecirc;n từng đặc điểm của c&acirc;y đ&agrave;n, cảm nhận được sự ch&acirc;n thật của &acirc;m thanh.</p>\r\n<p>Th&ocirc;ng số kỹ thuật</p>\r\n<p>Mặt th&ocirc;ng sitka</p>\r\n<p>Eo+lưng: gỗ điệp cao cấp</p>\r\n<p>Cần: gỗ g&iacute;a tỵ c&oacute; ty sắt chống cong cần</p>\r\n<p>Mặt ph&iacute;m: gỗ đen</p>\r\n<p>Ngựa: gỗ đen</p>\r\n<p>D&acirc;y: USA</p>\r\n<p>Kh&oacute;a vặn: Clasic v&agrave;ng xịn</p>', NULL, 1, NULL, NULL, 'Số xilanh: 6###Số vòng trên phút: 6,700 rpm###Mô-men: 266 lb.-ft.', NULL, NULL, NULL, '<p>Đ&agrave;n Guitar clasic mang t&ecirc;n C#800 l&agrave; một sản phẩm guitar cổ điển cao cấp do c&ocirc;ng ty TNHH Văn Anh Audio sản xuất với c&aacute;c ti&ecirc;u ch&iacute; cao nhất.</p>\r\n<p>Từ việc lựa chọn nguy&ecirc;n liệu, xử l&yacute; mặt đ&agrave;n, cần đ&agrave;n đến việc quan t&acirc;m s&acirc;u sắc tới c&aacute;c đặc điểm tưởng chừng rất nhỏ nhưng v&ocirc; c&ugrave;ng quan trọng đ&oacute; l&agrave; Ph&iacute;m đ&agrave;n, action (độ cao giữa d&acirc;y đ&agrave;n v&agrave; ph&iacute;m đ&agrave;n), ngựa đ&agrave;n ch&uacute;ng t&ocirc;i đều sản xuất v&agrave; kiểm tra rất kỹ lưỡng.</p>\r\n<p>Khi bạn chơi c&acirc;y đ&agrave;n Guitar cổ điển C#800 bạn sẽ cảm nhận được sự &ecirc;m nhẹ khi lướt tr&ecirc;n ph&iacute;m đ&agrave;n, cảm nhận được sự tinh tế tr&ecirc;n từng đặc điểm của c&acirc;y đ&agrave;n, cảm nhận được sự ch&acirc;n thật của &acirc;m thanh.</p>', NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-05-09 02:27:01', '2018-05-09 02:27:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `mota` text CHARACTER SET utf8,
  `com` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `noibat`, `mota`, `com`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(13, 0, 3, 'Track tour', 'track-tour', '1522747471_7.png', 1, NULL, 'san-pham', 1, 0, NULL, NULL, NULL, '2018-05-09 02:07:41', '2018-05-09 02:07:41'),
(14, 0, 4, 'Motor tour', 'motor-tour', '', 0, NULL, 'san-pham', 1, 0, NULL, NULL, NULL, '2018-05-09 02:06:18', '2018-05-09 02:06:18'),
(15, 0, 1, 'Tìm hiểu TravelUp', 'tim-hieu-travelup', '', 0, NULL, 'hoi-dap', 1, 0, NULL, NULL, NULL, '2018-05-09 09:06:36', '2018-05-09 09:06:36'),
(16, 0, 2, 'Cộng đồng Up Tour', 'cong-dong-up-tour', '', 0, NULL, 'hoi-dap', 1, 0, NULL, NULL, NULL, '2018-05-09 09:06:45', '2018-05-09 09:06:45'),
(17, 0, 3, 'Trước khi đi tour', 'truoc-khi-di-tour', '', 0, NULL, 'hoi-dap', 1, 0, NULL, NULL, NULL, '2018-05-09 09:07:08', '2018-05-09 09:07:08'),
(18, 0, 4, 'Những câu hỏi chung', 'nhung-cau-hoi-chung', '', 0, NULL, 'hoi-dap', 1, 0, NULL, NULL, NULL, '2018-05-09 09:07:20', '2018-05-09 09:07:20'),
(19, 0, 1, 'Track tour', 'track-tour', '', 0, NULL, 'tour', 1, 0, NULL, NULL, NULL, '2018-05-10 04:56:48', '2018-05-10 04:56:48'),
(20, 0, 2, 'Motor tour', 'motor-tour', '', 0, NULL, 'tour', 1, 0, NULL, NULL, NULL, '2018-05-10 04:56:58', '2018-05-10 04:56:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenkhongdau` varchar(255) DEFAULT NULL,
  `mota_vi` text,
  `mota_en` text,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '', '', '', '', '', 30, 1, '0000-00-00 00:00:00', '2017-11-23 21:04:04'),
(2, 'Hà Nội', '', '', '', '', '', 24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hải Phòng', '', '', '', '', '', 28, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'An Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bà Rịa Vũng Tàu', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Bạc Liêu', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Bắc Cạn', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Bắc Giang', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Bắc Ninh', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bến Tre', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bình Dương', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bình Định', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bình Phước', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bình Thuận', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Cà Mau', '', '', '', '', '', 12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cao Bằng', '', '', '', '', '', 13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Cần Thơ', '', '', '', '', '', 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Đà Nẵng', '', '', '', '', '', 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Đắk Lắc ', '', '', '', '', '', 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Đắk Nông', '', '', '', '', '', 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Điện Biện', '', '', '', '', '', 18, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Đồng Nai', '', '', '', '', '', 19, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Đồng Tháp', '', '', '', '', '', 20, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Gia Lai', '', '', '', '', '', 21, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Hà Giang', '', '', '', '', '', 22, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hà Nam', '', '', '', '', '', 23, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Hà Tây', '', '', '', '', '', 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Hà Tĩnh', '', '', '', '', '', 26, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Hải Dương', '', '', '', '', '', 27, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Hòa Bình', '', '', '', '', '', 29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Hậu Giang', '', '', '', '', '', 31, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Hưng Yên', '', '', '', '', '', 32, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Khánh Hòa', '', '', '', '', '', 33, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Kiên Giang', '', '', '', '', '', 34, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Kon Tum', '', '', '', '', '', 35, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Lai Châu', '', '', '', '', '', 36, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Lào Cai', '', '', '', '', '', 37, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Lạng Sơn', '', '', '', '', '', 38, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Lâm Đồng ', '', '', '', '', '', 39, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Long An', '', '', '', '', '', 40, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Nam Định', '', '', '', '', '', 41, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Nghệ An', '', '', '', '', '', 42, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Ninh Bình', '', '', '', '', '', 43, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Ninh Thuận', '', '', '', '', '', 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Phú Thọ', '', '', '', '', '', 45, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Phú Yên', '', '', '', '', '', 46, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Quảng Bình ', '', '', '', '', '', 47, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Quảng Nam', '', '', '', '', '', 48, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Quảng Ngãi', '', '', '', '', '', 49, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Quảng Ninh', '', '', '', '', '', 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Quảng Trị', '', '', '', '', '', 51, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Sóc Trăng', '', '', '', '', '', 52, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Sơn La', '', '', '', '', '', 53, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Tây Ninh', '', '', '', '', '', 54, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Thái Bình', '', '', '', '', '', 55, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Thái Nguyên', '', '', '', '', '', 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Thanh Hóa', '', '', '', '', '', 57, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Thừa Thiên - Huế', '', '', '', '', '', 58, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Tiền Giang', '', '', '', '', '', 59, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Trà Vinh', '', '', '', '', '', 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tuyên Quang', '', '', '', '', '', 61, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Vĩnh Long', '', '', '', '', '', 62, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Vĩnh Phúc', '', '', '', '', '', 63, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Yên Bái', '', '', '', '', '', 64, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `ip_address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `rate`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 25, 3, NULL, '2017-11-27 03:27:12', '2017-11-27 03:27:12'),
(2, 25, 4, NULL, '2017-11-27 03:28:03', '2017-11-27 03:28:03'),
(3, 6, 4, NULL, '2017-11-27 03:29:55', '2017-11-27 03:29:55'),
(4, 6, 4, NULL, '2017-11-27 03:31:24', '2017-11-27 03:31:24'),
(5, 6, 4, NULL, '2017-11-27 03:31:46', '2017-11-27 03:31:46'),
(6, 3, 3, '::1', '2017-11-27 18:14:50', '2017-11-27 18:14:50'),
(7, 3, 5, '::1', '2017-11-27 18:19:03', '2017-11-27 18:19:03'),
(8, 3, 4, '::1', '2017-11-27 18:21:50', '2017-11-27 18:21:50'),
(9, 25, 5, '::1', '2017-11-27 18:22:19', '2017-11-27 18:22:19'),
(10, 3, 2, '::1', '2017-11-27 18:56:26', '2017-11-27 18:56:26'),
(11, 19, 4, '::1', '2017-11-27 23:48:21', '2017-11-27 23:48:21'),
(12, 19, 5, '::1', '2017-11-27 23:48:27', '2017-11-27 23:48:27'),
(13, 19, 2, '::1', '2017-11-27 23:48:32', '2017-11-27 23:48:32'),
(14, 19, 3, '::1', '2017-11-28 00:20:06', '2017-11-28 00:20:06'),
(15, 18, 5, '::1', '2017-11-28 01:53:48', '2017-11-28 01:53:48'),
(16, 18, 4, '::1', '2017-11-28 02:01:17', '2017-11-28 02:01:17'),
(17, 18, 5, '::1', '2017-11-28 02:01:23', '2017-11-28 02:01:23'),
(18, 18, 4, '::1', '2017-11-28 02:03:28', '2017-11-28 02:03:28'),
(19, 18, 4, '::1', '2017-11-28 02:03:32', '2017-11-28 02:03:32'),
(20, 18, 5, '::1', '2017-11-28 02:11:00', '2017-11-28 02:11:00'),
(21, 18, 3, '::1', '2017-11-28 02:11:02', '2017-11-28 02:11:02'),
(22, 18, 4, '::1', '2017-11-28 02:11:02', '2017-11-28 02:11:02'),
(23, 18, 4, '::1', '2017-11-28 02:12:04', '2017-11-28 02:12:04'),
(24, 18, 3, '::1', '2017-11-28 02:12:18', '2017-11-28 02:12:18'),
(25, 19, 4, '::1', '2017-11-28 20:47:55', '2017-11-28 20:47:55'),
(26, 19, 2, '::1', '2017-11-28 20:48:05', '2017-11-28 20:48:05'),
(27, 18, 2, '::1', '2017-11-30 00:11:55', '2017-11-30 00:11:55'),
(28, 8, 5, '::1', '2017-12-06 03:20:56', '2017-12-06 03:20:56'),
(29, 37, 4, '::1', '2017-12-06 03:54:53', '2017-12-06 03:54:53'),
(30, 18, 4, '::1', '2017-12-07 08:14:08', '2017-12-07 08:14:08'),
(31, 18, 1, '::1', '2017-12-07 08:14:39', '2017-12-07 08:14:39'),
(32, 18, 3, '::1', '2017-12-07 08:14:54', '2017-12-07 08:14:54'),
(33, 19, 4, '::1', '2017-12-07 10:01:39', '2017-12-07 10:01:39'),
(34, 19, 3, '::1', '2017-12-07 10:04:42', '2017-12-07 10:04:42'),
(35, 19, 3, '::1', '2017-12-07 10:09:24', '2017-12-07 10:09:24'),
(36, 19, 3, '::1', '2017-12-07 10:13:27', '2017-12-07 10:13:27'),
(39, 14, 4, '::1', '2017-12-07 10:19:05', '2017-12-07 10:19:05'),
(40, 14, 2, '::1', '2017-12-07 10:27:28', '2017-12-07 10:27:28'),
(41, 14, 1, '::1', '2017-12-07 10:27:33', '2017-12-07 10:27:33'),
(42, 14, 5, '::1', '2017-12-07 10:27:36', '2017-12-07 10:27:36'),
(43, 14, 5, '::1', '2017-12-07 10:27:41', '2017-12-07 10:27:41'),
(44, 14, 5, '::1', '2017-12-07 10:27:45', '2017-12-07 10:27:45'),
(45, 29, 4, '::1', '2017-12-08 09:59:17', '2017-12-08 09:59:17'),
(46, 29, 3, '::1', '2017-12-08 09:59:27', '2017-12-08 09:59:27'),
(47, 29, 3, '::1', '2017-12-08 09:59:32', '2017-12-08 09:59:32'),
(48, 29, 5, '::1', '2017-12-08 09:59:35', '2017-12-08 09:59:35'),
(49, 29, 5, '::1', '2017-12-08 09:59:37', '2017-12-08 09:59:37'),
(50, 29, 5, '::1', '2017-12-08 09:59:39', '2017-12-08 09:59:39'),
(51, 29, 5, '::1', '2017-12-08 09:59:44', '2017-12-08 09:59:44'),
(52, 29, 5, '::1', '2017-12-08 09:59:47', '2017-12-08 09:59:47'),
(53, 29, 5, '::1', '2017-12-08 09:59:50', '2017-12-08 09:59:50'),
(54, 29, 5, '::1', '2017-12-08 09:59:55', '2017-12-08 09:59:55'),
(55, 29, 4, '::1', '2017-12-08 10:08:26', '2017-12-08 10:08:26'),
(56, 29, 2, '::1', '2017-12-08 10:08:31', '2017-12-08 10:08:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saleof`
--

CREATE TABLE `saleof` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `total_value` int(11) DEFAULT NULL,
  `value_sale` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `saleof`
--

INSERT INTO `saleof` (`id`, `name`, `total_value`, `value_sale`, `created_at`, `updated_at`) VALUES
(1, 'Vàng', 2000000, 10, '2017-12-16 03:34:58', '2017-12-16 03:34:58'),
(2, 'bạc', 1000000, 5, '2017-12-16 03:34:47', '2017-12-16 03:34:47'),
(3, 'đồng', 500000, 2, '2017-12-16 03:37:53', '2017-12-16 03:37:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `slogan_payment` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo2` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci,
  `instagram` text CHARACTER SET utf8,
  `skype` text COLLATE utf8_unicode_ci,
  `linkedin` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `slogan_payment`, `photo`, `photo2`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `google`, `instagram`, `skype`, `linkedin`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Travel up', NULL, 'Travel up', 'http://gco.vn/', 'Hà Nội', '0987654321', '0987654321', NULL, 'abc@gmail.com', 'Nhân viên của chúng tôi giao hàng đến quý khách, quý khách sẽ thanh toán đầy đủ 100% số tiền trực tiếp cho nhân viên của chúng tôi.', '1525767585_logo.png', '1525772921_logo2.png', '1525767585_logo.png', NULL, 'Cuộc đời bạn có thể nhớ rồi quên hàng vạn con đường. Nhưng có một con đường bạn không được phép quên đó chính là đường về nhà.\r\n\r\nCảm ơn vì bạn đã đồng hành và trải nghiệm cùng chúng tôi trong những chuyến đi!', NULL, 'www.facebook.com/vananhguitar', 'https://twitter.com/?lang=vi', 'https://plus.google.com/?hl=vi', NULL, 'https://www.skype.com/en/', 'https://www.linkedin.com/', 'https://www.youtube.com/', 1, NULL, '© GCO 2018. All rights reserved.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.774849760306!2d105.82069491486216!3d21.001660494079008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8429ac32cb%3A0x592668996cef591f!2zMzE1IFRyxrDhu51uZyBDaGluaCwgS2jGsMahbmcgVHJ1bmcsIMSQ4buRbmcgxJBhLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1524019035634\" width=\"100%\" height=\"650\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-05-10 03:09:43', '2018-05-10 03:09:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `price`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(41, 5, '1', NULL, NULL, '1525771083_1.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-05-08 09:18:03', '2018-05-08 09:18:03'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53'),
(42, 5, '2', NULL, NULL, '1525771101_1.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-05-08 09:18:21', '2018-05-08 09:18:21'),
(58, NULL, '3', NULL, NULL, '1525771108_1.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 3, '2018-05-08 09:18:28', '2018-05-08 09:18:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` text,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slogan`
--

INSERT INTO `slogan` (`id`, `name`, `photo`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Giá tốt nhất có thể', '1516094430_1.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae metu.</p>', '2018-01-16 09:20:30', '2018-01-16 09:20:30'),
(3, 'Nhiều loại xe', '1516094441_3.png', '<p>Mauris suscipit dui bibendum dapibus consequat. Cras imperdiet.</p>', '2018-01-16 09:20:41', '2018-01-16 09:20:41'),
(4, 'Tái sử dụng những ô tô còn có thể', '1516094451_5.png', '<p>Aliquam erat volutpat. Interdum et malesu ada fames ac ante ipsum primis.</p>', '2018-01-16 09:20:51', '2018-01-16 09:20:51'),
(6, 'Đầy đủ hóa đơn', '1516094460_2.png', '<p>Nulla nec ornare tellus, eget placerat risus. Phasellus vitae quam ut felis gravida</p>', '2018-01-16 09:21:00', '2018-01-16 09:21:00'),
(7, 'Bộ sưu tập xe lớn', '1516094472_4.png', '<p>Proin tincidunt consectetur nunc. Praes ent sit amet ultrices est.</p>', '2018-01-16 09:21:12', '2018-01-16 09:21:12'),
(8, 'Khách hàng yêu thích!', '1516094482_6.png', '<p>Sed id ultricies tortor, nec sagittis lectus. Maecenas tristique eget diam.</p>', '2018-01-16 09:21:22', '2018-01-16 09:21:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vũ Trọng phụng', '2017-11-22 03:49:29', '2017-11-21 20:49:29'),
(3, 'Tố Hữu', '2017-11-21 20:50:03', '2017-11-21 20:50:03'),
(4, 'Ngô Tất Tố', '2017-12-11 02:10:25', '2017-12-11 02:10:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Toán thiếu nhi', 'toan-thieu-nhi', 1, '2017-12-05 01:17:35', '2017-12-04 18:17:35'),
(6, 'Toán tuổi thơ', 'toan-tuoi-tho', 1, '2017-12-01 02:05:26', '2017-12-01 02:05:26'),
(7, 'Toán cấp 3', 'toan-cap-3', 1, '2017-12-01 02:05:32', '2017-12-01 02:05:32'),
(9, 'toan cap 2x', 'toan-cap-2x', 1, '2017-12-11 02:26:16', '2017-12-11 02:26:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag_links`
--

CREATE TABLE `tag_links` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tag_links`
--

INSERT INTO `tag_links` (`id`, `tag_id`, `product_id`) VALUES
(3, 7, 37),
(4, 8, 37),
(5, 7, 37),
(6, 8, 37),
(7, 1, 37),
(8, 7, 37),
(9, 8, 37),
(10, 8, 37),
(11, 8, 37),
(12, 7, 37),
(13, 8, 37),
(14, 7, 37),
(15, 1, 37),
(16, 6, 38),
(17, 6, 28),
(18, 6, 28),
(19, 6, 28),
(20, 6, 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Truyện tranh', '2017-11-21 20:21:23', '2017-11-21 20:21:23'),
(3, 'Truyện ngắn', '2017-11-22 03:37:02', '2017-11-21 20:37:02'),
(4, 'Truyện thiếu nhi', '2017-11-22 03:37:26', '2017-11-21 20:37:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(259) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Chanel', 'chanel', '2017-10-04 04:27:26', '2017-10-03 21:27:26'),
(2, 'Gucci', 'gucci', '2017-10-04 04:27:46', '2017-10-03 21:27:46'),
(3, 'Guerlain', 'guerlain', '2017-10-04 04:28:06', '2017-10-03 21:28:06'),
(4, 'Christian Dior', 'christian-dior', '2017-10-04 04:28:14', '2017-10-03 21:28:14'),
(5, 'Nina Ricci', 'nina-ricci', '2017-10-04 04:28:21', '2017-10-03 21:28:21'),
(6, 'Calvin Klein', 'calvin-klein', '2017-10-04 04:28:28', '2017-10-03 21:28:28'),
(7, 'Estee Lauder', 'estee-lauder', '2017-10-04 04:28:37', '2017-10-03 21:28:37'),
(8, 'Jean Paul Gautier', 'jean-paul-gautier', '2017-10-04 04:28:41', '2017-10-03 21:28:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `price` float DEFAULT NULL,
  `time` varchar(250) DEFAULT NULL,
  `numb` varchar(200) DEFAULT NULL,
  `start` varchar(250) DEFAULT NULL,
  `phuongtien` varchar(250) DEFAULT NULL,
  `introduction` text,
  `content` text,
  `schedule` text,
  `short_des` text,
  `hot` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `keyword` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `category_id`, `name`, `alias`, `image`, `price`, `time`, `numb`, `start`, `phuongtien`, `introduction`, `content`, `schedule`, `short_des`, `hot`, `active`, `title`, `description`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 19, 'Du lịch Phú quốcxxx', 'du-lich-phu-quocxxx', '1526006139_7.jpg', 500000, '3 ngày 2 đêm', '25 nguoi', 'thứ 2 và thứ 5 hàng tuần', 'máy bay', '<p>Nội dung giới thiệu tour</p>', '<p>df sd fsf</p>', '<p>ssfds s</p>', NULL, 1, 1, 'sdf', 'f sf sf sf', 'sf s', '2018-05-11 03:31:20', '2018-05-11 03:31:20'),
(2, 19, 'Du lịch Nha Trang', 'du-lich-nha-trang', '1526009190_5.jpg', 2000000, '4 ngày 3 đêm', '30 người', 'thứ 2 hàng tuần', 'máy bay', '<h2 class=\"s16 bold text-capitalize\">Động Thi&ecirc;n Đường</h2>\r\n<p>FINE l&agrave; thương hiệu nội thất Ch&acirc;u &Acirc;u đ&atilde; được kh&aacute;ch h&agrave;ng tin d&ugrave;ng v&igrave; uy t&iacute;n v&agrave; chất lượng sản phẩm vượt trội. Fine cung cấp đa dạng c&aacute;c mẫu giường hiện đại ph&ugrave; hợp phong c&aacute;ch người Ch&acirc;u &Aacute;, đặc biệt l&agrave; người Việt Nam n&oacute;i ri&ecirc;ng.</p>\r\n<h2 class=\"s16 bold text-capitalize\">Hang Tối</h2>\r\n<p>GIƯỜNG l&agrave; một trong những nội thất ph&ograve;ng ngủ QUAN TRỌNG NHẤT, ngo&agrave;i chức năng ch&iacute;nh để ng&atilde; lưng giấc ngủ &ecirc;m &aacute;i say nồng. Chọn đ&uacute;ng kiểu giường sẽ g&oacute;p phần t&ocirc; điểm cho kh&ocirc;ng gian chung của Ph&ograve;ng Ngủ h&agrave;i h&ograve;a v&agrave; sang trọng hơn.</p>\r\n<h2 class=\"s16 bold text-capitalize\">Suối Mộc</h2>\r\n<p>Chất Liệu: Gỗ c&ocirc;ng nghiệp MFC ngoại nhập chất lượng vượt trội v&agrave; nhiều loại văn gỗ tự nhi&ecirc;n gi&uacute;p cho qu&yacute; kh&aacute;ch h&agrave;ng y&ecirc;n t&acirc;m chọn lựa cho m&igrave;nh sản phẩm ưng &yacute; nhất.</p>', '<p>sfd sf&nbsp;</p>', '<p>sf sfs</p>', NULL, 0, 1, NULL, NULL, NULL, '2018-05-11 04:49:39', '2018-05-11 04:49:39'),
(3, 19, 'Du lịch Côn Đảo', 'du-lich-con-dao', '1526009442_6.jpg', 500000, '4 ngày 3 đêm', '25 người', 'thứ 5 hàng tuần', 'máy bay', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2018-05-11 03:30:56', '2018-05-11 03:30:56'),
(4, 20, 'Du lịch Cù Lao Chàm', 'du-lich-cu-lao-cham', '1526009789_7.jpg', 20000000, '3 ngày 2 đêm', '20 người', 'thứ 3 hàng tuần', 'Máy bay', NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, '2018-05-11 03:36:36', '2018-05-11 03:36:36'),
(5, 20, 'Du lịch Đà Nẵng', 'du-lich-da-nang', '1526009834_3.jpg', 500000, '3 ngày', '5 nguoi', 'Thứ 2 hàng tuần', 'Xe máy', NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, '2018-05-11 03:37:14', '2018-05-11 03:37:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `total_money` int(11) DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `total_money`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 0, 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-12-15 02:52:27', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-12-15 02:52:28', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$s3Egf9abyaMW480NnuloHuY6lG/./0pNneCHSz6IH7vDkhv3Gvv7a', 'Admin', 'chuonghoanghong@gmail.com', '0987654321', '315 Trường chinh, Thanh Xuân, Hà Nội', 0, 1, '5.jpg', 1, 'bWDXK8aIeCutl3s4R9x2JpRUUtg7UWeRmYT9hWV1m9h4io1hzrbF4WAVewyz', '2017-12-15 02:52:29', '2017-12-08 09:37:30'),
(14, 'chuonghoang', '$2y$10$M4n3rzfEs9YvGC9Mwae9WO0RJJ1jFX6mkqKmL8ek35gi/HOHATuh2', 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', '0918273645', 'Phùng Xá, Mỹ Đức, Hà Nội', 5000000, 2, '1513323958_chuong.jpg', 1, 'qPjyS479TxurQUlabUfT3TyAHKygcWbWCu53jYrQyci8UYGjrN2EqjGO2FJB', '2017-12-19 10:21:15', '2017-12-15 07:45:58'),
(12, 'chuonghh', '$2y$10$A0hifXM/LK2pj/.OQJicZ.3kjzTLFJdA1zttf9iTZ44KIxRmq3p4.', 'fsfd', 'chuong1194@yahoo.com', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', 0, 2, '1513137275_3.jpg', 1, 'x4f7nKzlaZrhQI7G9J5IEXBd8vr6SsDIaOBSuCqTHPpWjQPyYiCbCXxLEy25', '2017-12-15 07:35:28', '2017-12-13 03:54:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `noibat` int(1) DEFAULT '0',
  `link` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `name`, `photo`, `noibat`, `link`, `created_at`, `updated_at`) VALUES
(4, 'video 1', '1522656847_7.jpg', 1, 'https://www.youtube.com/embed/S84FA5orbwk', '2018-04-02 07:46:33', '2018-04-02 08:32:24'),
(5, 'video 2', '1522655247_2.jpg', 1, 'https://www.youtube.com/embed/YVkqV7kecJE', '2018-04-02 07:47:27', '2018-04-02 08:22:06'),
(6, 'Video 3', '1522655259_3.jpg', 1, 'https://www.youtube.com/embed/YVkqV7kecJE', '2018-04-02 07:47:39', '2018-04-02 08:22:17'),
(7, 'Video 4', '1522655271_4.jpg', 0, 'https://www.youtube.com/watch?v=Anuofrp0918', '2018-04-02 07:47:51', '2018-04-02 07:48:47'),
(8, 'Video 5', '1522655281_5.jpg', 1, 'https://www.youtube.com/embed/YVkqV7kecJE', '2018-04-02 07:48:01', '2018-04-02 08:22:20'),
(9, 'video 6', '1522655301_6.jpg', 1, 'https://www.youtube.com/watch?v=Anuofrp0918', '2018-04-02 07:48:21', '2018-04-02 08:22:24'),
(10, 'video 7', '1522655337_7.jpg', 1, 'https://www.youtube.com/embed/YVkqV7kecJE', '2018-04-02 07:48:57', '2018-04-02 08:43:52'),
(11, 'hot video', '1522657506_1.jpg', 1, 'https://www.youtube.com/embed/S84FA5orbwk', '2018-04-02 08:25:06', '2018-04-02 08:36:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dangkykhoahoc`
--
ALTER TABLE `dangkykhoahoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `docthu`
--
ALTER TABLE `docthu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `nxb`
--
ALTER TABLE `nxb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `saleof`
--
ALTER TABLE `saleof`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tag_links`
--
ALTER TABLE `tag_links`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dangkykhoahoc`
--
ALTER TABLE `dangkykhoahoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692;

--
-- AUTO_INCREMENT cho bảng `docthu`
--
ALTER TABLE `docthu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `nxb`
--
ALTER TABLE `nxb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `saleof`
--
ALTER TABLE `saleof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tag_links`
--
ALTER TABLE `tag_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
