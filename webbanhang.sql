-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3340
-- Thời gian đã tạo: Th2 23, 2024 lúc 03:53 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$MqNO1XoyoPu0aCIhIOR4audQBKriAbrNJG3P/awxQMQ5N4dDogmZ2', '0343754517', NULL, 'CDTH18', 'TP Hồ Chí Minh', 1, 1, '2023-10-19__logoc.png', NULL, '2023-10-13 07:24:19'),
(6, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$9e6/30GrauqWj4L7B1.Pyun6ixmHYTpyWYhwrArbzRYxoAgpW637y', '092311534', NULL, NULL, NULL, 2, 1, NULL, '2020-06-06 05:48:35', '2023-10-13 07:24:00'),
(8, 'Nhân Viên 2', 'nhanvien2@gmail.com', '$2y$10$rdKUQp1yZMRweEaiqQa0s.Ca4PAANRVdWqLd9VmoHV25uYoL.lF6.', '0989275330', NULL, NULL, NULL, 2, 1, NULL, '2023-08-01 02:52:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `a_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint NOT NULL DEFAULT '0',
  `a_active` tinyint NOT NULL DEFAULT '1',
  `a_menu_id` int NOT NULL DEFAULT '0',
  `a_view` int NOT NULL DEFAULT '0',
  `a_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint NOT NULL DEFAULT '0',
  `a_position_1` tinyint NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay', 'top-7-nuoc-hoa-han-quoc-duoc-review-tot-hien-nay', 1, 1, 1, 0, NULL, '2024-02-23__11.png', '<p>vivi- 2023-08-02 09:28:16</p>\r\n\r\n<p><strong>Nước Hoa H&agrave;n Quốc</strong>&nbsp;l&agrave; lựa chọn h&agrave;ng đầu hiện nay của rất nhiều người Việt, v&igrave; chất lượng cao, hiệu quả tốt, ngo&agrave;i&nbsp; việc l&agrave;m sạch da, sản phẩm c&ograve;n nu&ocirc;i dưỡng, chăm s&oacute;c da với nhiều c&ocirc;ng dụng đặc biệt k&egrave;m theo m&agrave; kh&ocirc;ng phải Nước Hoa n&agrave;o cũng c&oacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">B&agrave;i viết n&agrave;y, Hasaki sẽ chọn lọc v&agrave; gửi đến bạn top 7 Nước Hoa H&agrave;n Quốc đang nhận được nhiều review t&iacute;ch cực v&agrave; tốt nhất, để bạn c&oacute; được người bạn đồng h&agrave;nh&nbsp;<a href=\"https://hasaki.vn/danh-muc/cham-soc-co-the-c12.html\" target=\"_blank\">chăm s&oacute;c cơ thể</a>&nbsp;ph&ugrave; hợp nhất nh&eacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" id=\"64cc72211fd2b\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g_Fo1H73sQKHmAZEe7_img_300x300_b798dd_fit_center.png\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-1687928482_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" id=\"64cc72211fd2b\" target=\"_blank\">Mua 1 Tặng 1 Nước Hoa On The Body Classic Pink (SL C&oacute; Hạn)</a></p>\r\n	<a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" id=\"64cc72211fd2b\" target=\"_blank\"><img alt=\"Mua 1 Tặng 1 Nước Hoa On The Body Classic Pink (SL Có Hạn)\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g_Fo1H73sQKHmAZEe7.png\" /></a>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\"><strong>184.000 ₫</strong>12%209.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\"><strong>ON:THE BODY</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">Nước Hoa On: The Body Dưỡng Ẩm Hương Tinh Tế 1000g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">Perfume Shower Body Wash #Classic Pink</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">(15) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;424</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">45%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" id=\"64cc722121ba3\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-kem-tam-secret-key-snow-white-duong-sang-da-200g_yniorxnopZY4Rdf9_img_300x300_b798dd_fit_center.png\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-kem-tam-secret-key-snow-white-duong-sang-da-200g-1670582226_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" id=\"64cc722121ba3\" target=\"_blank\">Tặng: B&ocirc;ng hoa Hotosu Cao Cấp 150 Miếng (Hết qu&agrave; tặng 15K)</a></p>\r\n	<a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" id=\"64cc722121ba3\" target=\"_blank\"><img alt=\"Tặng: Nước hoa Hotosu Cao Cấp 150 Miếng (Hết quà tặng 15K)\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-bong-tay-trang-hotosu-cao-cap-150-mieng-1684466443.jpg\" /></a>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\"><strong>239.000 ₫</strong>46%440.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\"><strong>SECRET KEY</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">Kem Tắm Secret Key Dưỡng S&aacute;ng Da Mặt V&agrave; Cơ Thể 200g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">Snow White Milky Pack</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">(7) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;199</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">97%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" id=\"64cc7221252ec\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-some-by-mi-lam-giam-mun-400g_img_300x300_b798dd_fit_center.jpg\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu-345800038-16625343102767_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\"><strong>257.000 ₫</strong>35%395.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\"><strong>SOME BY MI</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">Nước Hoa Some By Mi AHA-BHA-PHA L&agrave;m Giảm Mụn 400g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">AHA-BHA-PHA 30 Days Miracle Acne Clear Body Cleanser</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">(3) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;111</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">45%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" id=\"64cc722126ef4\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g_f9vvC4ErnRg3dmCQ_img_300x300_b798dd_fit_center.png\" /><img alt=\"Hình giấy chứng nhận đại lý\" src=\"https://media.hasaki.vn/catalog/product/certificate/double-rich_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\"><strong>115.000 ₫</strong>24%151.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\"><strong>DOUBLE RICH</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">Nước Hoa Double Rich Hoa Iris Huyền B&iacute; Dreamy Romance 800g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">Body Shower - Dreamy Romance</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">(6) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;124</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">71%</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">H&oacute;a Đơn 219k Double Rich Tặng 1 Nước Hoa Double Rich Hoa Hồng 200g - SL C&oacute; Hạn</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" id=\"64cc722128487\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu-422209571-1665118443_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><strong>325.000 ₫</strong>41%550.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><strong>De Memoria</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\">Nước Hoa D​e M​emoria S&aacute;ng Da Hương Rose On Venus 300ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\">Scented W​hitening B​ody Cleanser #Rose On Venus</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;4</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" id=\"64cc7221296aa\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu_422210412-1670986064_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><strong>119.000 ₫</strong>30%170.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><strong>Jmella</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\">Nước Hoa Jmella Hương Cam Qu&yacute;t V&agrave; Mẫu Đơn Sang Trọng 500ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\">Body Wash #No. 1 BLooming Peony</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;7</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" id=\"64cc72212aade\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu_422210431-1670987077_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\"><strong>273.000 ₫</strong>30%390.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\"><strong>Jmella</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\">Bom Tắm Jmella Hương Hoa Hồng Ngọt Ng&agrave;o 200g x 2 Vi&ecirc;n</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\">Bath Bomb #No.5 Sparkling Rose</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;2</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/bom-tam-jmella-huong-hoa-hong-ngot-ngao-200g-x-2-vien-105693.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210431\" target=\"_blank\">4%</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#\">Previous</a></li>\r\n	<li><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#\">Next</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nội Dung Ch&iacute;nh B&agrave;i Viết</p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu1\">1. Nước Hoa ON: THE BODY Perfume Shower Body Wash - Classic Pink</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu2\">2. Kem Tắm S&aacute;ng Da Secret Key Snow White Milky Pack&nbsp;</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu3\">3. Nước Hoa Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Body Cleanser&nbsp;</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu4\">4. Nước Hoa Double Rich - Hương hoa Iris</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu5\">5. Nước Hoa De Memoria Scented Whitening Body Cleanser - Rose On Venus</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu6\">6. Nước Hoa Jmella Body Wash - Blooming Peony</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-7-sua-tam-han-quoc-duoc-review-tot-hien-nay-3154.html#menu7\">7. Bom Tắm Jmella Bath Bomb - Sparkling Rose</a></p>\r\n\r\n<h2 dir=\"ltr\"><strong>1. Nước Hoa ON: THE BODY Perfume Shower Body Wash - Classic Pink</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\"><img alt=\"Nước Hoa On: The Body Dưỡng Ẩm Hương Tinh Tế 1000g\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g_Fo1H73sQKHmAZEe7_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">Nước Hoa On: The Body Dưỡng Ẩm Hương Tinh Tế 1000g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\"><strong>184.000 ₫&nbsp;</strong>&nbsp;&nbsp;209.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-on-the-body-huong-nuoc-hoa-classic-pink-1000g-91973.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422201788\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://hasaki.vn/thuong-hieu/on-the-body.html\" target=\"_blank\">ON: THE BODY</a>&nbsp;l&agrave; thương hiệu chuy&ecirc;n c&aacute;c d&ograve;ng Nước Hoa hương nước hoa độc đ&aacute;o, ri&ecirc;ng biệt của h&atilde;ng. Đặc biệt l&agrave; ON: THE BODY Perfume Shower Body Wash, sản phẩm được y&ecirc;u th&iacute;ch với khả năng nhẹ nh&agrave;ng l&agrave;m sạch cơ thể, dưỡng ẩm mịn m&agrave;ng v&agrave; hương thơm nước hoa từ thi&ecirc;n nhi&ecirc;n l&ocirc;i cuốn, lưu hương suốt cả ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">Nếu n&agrave;ng lần đầu sử dụng v&agrave; ph&acirc;n v&acirc;n lựa chọn m&ugrave;i hương th&igrave; d&ugrave;ng thử best seller của h&atilde;ng m&ugrave;i Classic Pink mang m&agrave;u sắc tinh tế, thanh lịch nh&eacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;hoa cam, hoa bưởi , hoa mẫu đơn, hương gỗ đ&agrave;n hương |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;ON: THE BODY |&nbsp;<strong>Trọng lượng:</strong>&nbsp;1000g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 1\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-11.jpg\" title=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 1\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>2. Kem Tắm S&aacute;ng Da Secret Key Snow White Milky Pack&nbsp;</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\"><img alt=\"Kem Tắm Secret Key Dưỡng Sáng Da Mặt Và Cơ Thể 200g\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-kem-tam-secret-key-snow-white-duong-sang-da-200g_yniorxnopZY4Rdf9_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">Kem Tắm Secret Key Dưỡng S&aacute;ng Da Mặt V&agrave; Cơ Thể 200g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\"><strong>239.000 ₫&nbsp;</strong>&nbsp;&nbsp;440.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/kem-tam-secret-key-snow-white-duong-sang-da-200g-1690.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=100200018\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Một dạng&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-tam-xa-bong-tam-c26.html\" target=\"_blank\">Nước Hoa</a>&nbsp;mới lạ lại nằm ở vị tr&iacute; thứ hai Nước Hoa H&agrave;n Quốc được review tốt n&agrave;y nhờ c&ocirc;ng thức đặc biệt ủ s&aacute;ng da d&agrave;nh cho những n&agrave;ng muốn c&oacute; được l&agrave;n da trắng s&aacute;ng tự nhi&ecirc;n, an to&agrave;n.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Đồng thời Secret Key Snow White Milky Pack c&ograve;n cấp nước v&agrave; dưỡng ẩm cho da rất tốt nhờ bảng th&agrave;nh phần bao gồm c&aacute;c hoạt chất &ldquo;xịn s&ograve;&rdquo; m&agrave; &iacute;t Nước Hoa n&agrave;o c&oacute; được.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm d&ugrave;ng cho da mặt v&agrave; cơ thế, sử dụng đều đặn 3 lần/tuần để c&oacute; hiệu quả cao.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Niacinamide, Sodium Hyaluronate, Kho&aacute;ng chất Magie, Propylene Glycol, Chiết xuất dầu hoa tr&agrave;, centella asiatica, axit glyoerophosphoric, B-glucan|&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;SECRET KEY |&nbsp;<strong>Trọng lượng:</strong>&nbsp;200g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 2\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-2.jpg\" title=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 2\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>3. Nước Hoa Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Body Cleanser&nbsp;</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\"><img alt=\"Nước Hoa Some By Mi AHA-BHA-PHA Làm Giảm Mụn 400g\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-some-by-mi-lam-giam-mun-400g_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">Nước Hoa Some By Mi AHA-BHA-PHA L&agrave;m Giảm Mụn 400g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\"><strong>257.000 ₫&nbsp;</strong>&nbsp;&nbsp;395.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-some-by-mi-lam-giam-mun-400g-88525.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=345800038\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">N&agrave;ng n&agrave;o gặp vấn đề da mụn ở lưng, ngực; da dầu, lỗ ch&acirc;n l&ocirc;ng to hay da sần s&ugrave;i, th&ocirc; r&aacute;p th&igrave; Nước Hoa Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Body Cleanser ch&iacute;nh l&agrave; &ldquo;cứu tinh&rdquo; tuyệt vời d&agrave;nh cho n&agrave;ng.</p>\r\n\r\n<p dir=\"ltr\">Some By Mi vốn đ&atilde; nổi tiếng với bộ sản phẩm chăm s&oacute;c da d&agrave;nh cho da mụn của m&igrave;nh từ nhiều năm nay, vậy n&ecirc;n Nước Hoa của h&atilde;ng cũng được tin d&ugrave;ng v&agrave; hiệu quả chẳng k&eacute;m cạnh.</p>\r\n\r\n<p dir=\"ltr\">Với c&ocirc;ng dụng ch&iacute;nh l&agrave; l&agrave;m sạch lỗ ch&acirc;n l&ocirc;ng v&agrave; kiểm so&aacute;t dầu; đồng thời ngăn ngừa v&agrave; cải thiện t&igrave;nh trạng mụn xuất hiện tr&ecirc;n c&aacute;c v&ugrave;ng cơ thể. Sản phẩm c&oacute; kết cấu dạng gel trong, mỏng nhẹ, dễ d&agrave;ng sử dụng cho mọi người d&ugrave;ng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;AHA-BHA-PHA, Rau m&aacute;, Truecica&trade;, tr&agrave;m tr&agrave; 10.000ppm |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Some By Mi |&nbsp;<strong>Trọng lượng:</strong>&nbsp;400g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 3\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-3.png\" title=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 3\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>4. Nước Hoa Double Rich - Hương hoa Iris</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\"><img alt=\"Nước Hoa Double Rich Hoa Iris Huyền Bí Dreamy Romance 800g\" src=\"https://media.hasaki.vn/catalog/product/p/r/promotions-auto-sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g_f9vvC4ErnRg3dmCQ_img_800x800_eb97c5_fit_center.png\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">Nước Hoa Double Rich Hoa Iris Huyền B&iacute; Dreamy Romance 800g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\"><strong>115.000 ₫&nbsp;</strong>&nbsp;&nbsp;151.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-double-rich-hoa-iris-huyen-bi-dreamy-romance-800g-102901.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422208939\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Quay trở lại với d&ograve;ng Nước Hoa nước hoa, điều m&agrave; bất kỳ người d&ugrave;ng n&agrave;o cũng mong muốn sau mỗi lần tắm l&agrave; hương thơm cơ thể thơm m&aacute;t d&agrave;i l&acirc;u.</p>\r\n\r\n<p dir=\"ltr\">Nước Hoa Double Rich sẽ mang đến cho bạn một trải nghiệm ho&agrave;n to&agrave;n kh&aacute;c biệt nhờ tinh chất Jojoba, nha đam v&agrave; hương hoa thi&ecirc;n nhi&ecirc;n gi&uacute;p lấy đi mọi bụi bẩn, cung cấp độ ẩm, hỗ trợ l&agrave;m s&aacute;ng, đều m&agrave;u da v&agrave; hương thơm tươi s&aacute;ng, rạng rỡ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Tinh dầu Jojoba, nha đam |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Double Rich |&nbsp;<strong>Trọng lượng:</strong>&nbsp;800g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 4\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-7.jpg\" title=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 4\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>5. Nước Hoa De Memoria Scented Whitening Body Cleanser - Rose On Venus</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><img alt=\"Nước Hoa D​e M​emoria Sáng Da Hương Rose On Venus 300ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-1664869888_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\">Nước Hoa D​e M​emoria S&aacute;ng Da Hương Rose On Venus 300ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\"><strong>325.000 ₫&nbsp;</strong>&nbsp;&nbsp;550.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-de-memoria-sang-da-huong-rose-on-venus-300ml-104123.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422209571\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Tuy l&agrave; sản phẩm &ldquo;sinh sau đẻ muộn&rdquo; từ thương hiệu nước hoa De Memoria, nhưng Nước Hoa De Memoria Scented Whitening Body Cleanser đ&atilde; thu h&uacute;t sự ch&uacute; &yacute; lớn tr&ecirc;n thị trường nhờ thiết kế bao b&igrave; sang trọng, đa dạng m&ugrave;i hương v&agrave; l&agrave;m rất tốt khả năng l&agrave;m sạch da, lớp bọt mịn c&ugrave;ng hương thơm tinh tế, thư gi&atilde;n, l&yacute; tưởng cho người d&ugrave;ng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Với 3 m&ugrave;i hương đang c&oacute; hiện nay, bạn c&oacute; thể d&ugrave;ng thử Rose On Venus - hương hoa hồng mang đến sự mềm mại v&agrave; thu h&uacute;t cho ph&aacute;i đẹp.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;1% AHA, Vitamin C |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;De Memoria |&nbsp;<strong>Dung t&iacute;ch:</strong>300ml</p>\r\n\r\n<p dir=\"ltr\">Xem th&ecirc;m:&nbsp;<a href=\"https://hasaki.vn/cam-nang/review-bo-sua-tam-duong-the-de-memoria-moi-nhat-hien-nay-2503.html\" target=\"_blank\">Review Bộ Nước Hoa - Dưỡng Thể De Memoria Mới Nhất Hiện Nay</a></p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 5\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-8.jpg\" title=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 5\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>6. Nước Hoa Jmella Body Wash - Blooming Peony</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><img alt=\"Nước Hoa Jmella Hương Cam Quýt Và Mẫu Đơn Sang Trọng 500ml\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-1669797911_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\">Nước Hoa Jmella Hương Cam Qu&yacute;t V&agrave; Mẫu Đơn Sang Trọng 500ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\"><strong>119.000 ₫&nbsp;</strong>&nbsp;&nbsp;170.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-jmella-huong-cam-quyt-va-mau-don-sang-trong-500ml-105731.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3154&amp;utm_term=422210412\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nước Hoa Jmella Body Wash d&agrave;nh cho mọi loại da, được sản xuất bởi nh&agrave; điều chế nước hoa Argeville của Ph&aacute;p với 100 năm truyền thống chế tạo m&ugrave;i hương v&agrave; đạt ti&ecirc;u chuẩn quốc tế - một sản phẩm uy t&iacute;n cho mọi nh&agrave;.</p>\r\n\r\n<p dir=\"ltr\">Được chiết xuất từ l&aacute; hoa hồng sa mạc c&ugrave;ng dầu dừa v&agrave; hơn 5 loại dầu dưỡng ẩm gốc thực vật gi&uacute;p mang lại l&agrave;n da mịn m&agrave;ng, sạch s&acirc;u v&agrave; hương thơm bền l&acirc;u.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Th&agrave;nh phần l&agrave;m sạch c&oacute; nguồn gốc từ dừa, 5 loại dầu dưỡng ẩm từ thực vật, 30 chất chiết xuất từ thực vật, chiết xuất từ l&aacute; của hoa hồng sa mạc |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Jmella |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;500ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 6\" src=\"https://media.hasaki.vn/hsk/sua-tam-han-quoc-9.jpg\" title=\"Top 7 Nước Hoa Hàn Quốc Được Review Tốt Hiện Nay. Ảnh 6\" /></p>', '2023-08-04 03:37:28', 1, 0, '2024-02-23 02:58:24'),
(2, 'Những Công Dụng Của Nước Hoa Có Thể Bạn Chưa Biết', 'nhung-cong-dung-cua-nuoc-hoa-co-the-ban-chua-biet', 1, 1, 1, 0, NULL, '2024-02-23__22.png', '<h2 dir=\"ltr\"><strong>1. C&ocirc;ng dụng của nước hoa đối với l&agrave;n da</strong></h2>\r\n\r\n<p dir=\"ltr\"><img alt=\"Những Công Dụng Của nước hoa Có Thể Bạn Chưa Biết\" src=\"https://media.hasaki.vn/hsk/sua-tam-nha-dam%20(1)(1).png\" title=\"Những Công Dụng Của nước hoa Có Thể Bạn Chưa Biết hình 1\" /></p>\r\n\r\n<p dir=\"ltr\">Nha đam l&agrave; d&ograve;ng thực vật từ ng&agrave;n đời nay đ&atilde; được &ocirc;ng b&agrave; ta sử dụng như một sản phẩm chăm s&oacute;c da. Ng&agrave;y nay, th&agrave;nh phần n&agrave;y vẫn được tiếp tục nghi&ecirc;n cứu v&agrave; ph&aacute;t triển, cho ra đời những sản phẩm Nước Hoa chăm s&oacute;c da chiết xuất từ nha đam nổi tiếng với khả năng dưỡng da ẩm mịn vượt trội. Cụ thể hơn về những c&ocirc;ng dụng tuyệt vời của&nbsp;<strong>Nước Hoa&nbsp;Nha Đam</strong>, c&aacute;c bạn h&atilde;y cũng theo d&otilde;i tiếp dưới đ&acirc;y nh&eacute;!</p>\r\n\r\n<h3 dir=\"ltr\"><strong>1.1 Cấp nước, dưỡng ẩm da</strong></h3>\r\n\r\n<p dir=\"ltr\"><img alt=\"Công Dụng Dưỡng Ẩm Của nước hoa\" src=\"https://media.hasaki.vn/hsk/sua-tam-nha-dam%20(3)(1).png\" title=\"Những Công Dụng Của nước hoa Có Thể Bạn Chưa Biết hình 2\" /></p>\r\n\r\n<p dir=\"ltr\">Trong th&agrave;nh phần nha đam tươi c&oacute; chứa nước tự nhi&ecirc;n sẽ hỗ trợ cấp nước v&agrave; dưỡng ẩm mềm da. Da đủ nước v&agrave; đủ ẩm sẽ lu&ocirc;n duy tr&igrave; trạng th&aacute;i mướt mịn, căng b&oacute;ng v&agrave; hạn chế sần s&ugrave;i, nứt nẻ hay bong tr&oacute;c.</p>\r\n\r\n<p dir=\"ltr\">Xem th&ecirc;m:&nbsp;<strong><a href=\"https://hasaki.vn/cam-nang/5-cach-lam-mat-na-nha-dam-duong-da-don-gian-tai-nha-1533.html\" target=\"_blank\">5 C&aacute;ch L&agrave;m Nước Hoa Nha Đam Dưỡng Da Đơn Giản Tại Nh&agrave;</a></strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>1.2 L&agrave;m dịu da</strong></h3>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i khả năng cấp ẩm, nu&ocirc;i dưỡng da mềm mịn th&igrave; nha đam c&ograve;n c&oacute; c&ocirc;ng dụng l&agrave;m dịu da tức thời. Bạn c&oacute; thể sử dụng nước hoa để&nbsp;nhanh ch&oacute;ng l&agrave;m dịu v&agrave; phục hồi l&agrave;n da tổn thương hay ch&aacute;y nắng v&ocirc; c&ugrave;ng hiệu quả.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>1.3 Giảm mụn, mờ th&acirc;m</strong></h3>\r\n\r\n<p dir=\"ltr\"><img alt=\"Công Dụng Dưỡng Mờ Thâm nước hoa\" src=\"https://media.hasaki.vn/hsk/sua-tam-nha-dam%20(2)(1).png\" title=\"Những Công Dụng Của nước hoa Có Thể Bạn Chưa Biết hình 3\" /></p>\r\n\r\n<p dir=\"ltr\">&Iacute;t ai biết, nha đam c&ograve;n c&oacute; t&aacute;c dụng kh&aacute;ng vi&ecirc;m, chống lại c&aacute;c loại vi khuẩn c&oacute; khả năng g&acirc;y mụn. Từ đ&oacute;, giảm thiểu đ&aacute;ng kể t&igrave;nh trạng mụn v&agrave; c&aacute;c loại bệnh vi&ecirc;m nhiễm tr&ecirc;n da. B&ecirc;n cạnh đ&oacute;, nước hoa c&ograve;n gi&uacute;p th&uacute;c đẩy sự t&aacute;i tạo c&aacute;c tế b&agrave;o da mới, l&agrave;m mờ c&aacute;c vết th&acirc;m sẹo hoặc th&acirc;m sau mụn.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>1.4 Ngăn ngừa l&atilde;o h&oacute;a</strong></h3>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, trong nha đam c&ograve;n c&oacute; chứa c&aacute;c hoạt chất chống oxy h&oacute;a c&oacute; khả năng l&agrave;m chậm lại qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a diễn ra tr&ecirc;n da khiến da kh&ocirc; nhăn v&agrave; g&oacute;p phần bảo vệ da kh&ocirc;ng bị tổn thương trước t&aacute;c động của c&aacute;c gốc tự do hay c&aacute;c tia tử ngoại</p>\r\n\r\n<h3 dir=\"ltr\"><strong>1.5 Dưỡng s&aacute;ng da</strong></h3>\r\n\r\n<p dir=\"ltr\"><img alt=\"Công Dụng Dưỡng Sáng Da Của nước hoa\" src=\"https://media.hasaki.vn/hsk/sua-tam-nha-dam%20(4)(1).png\" title=\"Những Công Dụng Của nước hoa Có Thể Bạn Chưa Biết hình 4\" /></p>\r\n\r\n<p dir=\"ltr\">T&igrave;nh trạng da nhiều khuyết điểm, th&acirc;m n&aacute;m, t&agrave;n nhang hay da tối m&agrave;u, kh&ocirc;ng đều m&agrave;u đều c&oacute; thể dần được cải thiện khi sử dụng nha đam đều đặn v&agrave; thường xuy&ecirc;n. Tuy nhi&ecirc;n, cần ki&ecirc;n tr&igrave; sử dụng trong thời gian d&agrave;i để thấy được kết quả bạn nh&eacute;.</p>\r\n\r\n<h2 dir=\"ltr\"><strong>2. Giới thiệu c&aacute;c d&ograve;ng sản phẩm&nbsp;nước hoa phổ biến nhất</strong></h2>\r\n\r\n<h3 dir=\"ltr\"><strong>2.1 Nước Hoa Hasi Kokeshi Nha Đam &amp; Olive</strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hasi-kokeshi-duong-am-lam-sang-da-chiet-xuat-nha-dam-olive-600ml-82587.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3150&amp;utm_term=378200004\" target=\"_blank\"><img alt=\"Nước Hoa Hasi Kokeshi Nha Đam &amp; Olive Ẩm Mịn Da 600ml\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-sua-tam-hasi-kokeshi-nha-dam-olive-am-min-da-600ml-1654054500_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hasi-kokeshi-duong-am-lam-sang-da-chiet-xuat-nha-dam-olive-600ml-82587.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3150&amp;utm_term=378200004\" target=\"_blank\">Nước Hoa Hasi Kokeshi Nha Đam &amp; Olive Ẩm Mịn Da 600ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hasi-kokeshi-duong-am-lam-sang-da-chiet-xuat-nha-dam-olive-600ml-82587.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3150&amp;utm_term=378200004\" target=\"_blank\"><strong>85.000 ₫&nbsp;</strong>&nbsp;&nbsp;130.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hasi-kokeshi-duong-am-lam-sang-da-chiet-xuat-nha-dam-olive-600ml-82587.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3150&amp;utm_term=378200004\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong><a href=\"http://hasaki.vn/tag/sua-tam-hasi-kokeshi.html\" target=\"_blank\">Nước Hoa Hasi</a>&nbsp;Nha Đam &amp; Olive Hasi Kokeshi</strong>&nbsp;l&agrave; một d&ograve;ng sản phẩm đến từ thương hiệu mỹ phẩm Hasi xuất xứ tại Việt Nam. Sản phẩm&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/sua-tam-xa-bong-tam-c26.html\" target=\"_blank\">Nước Hoa</a></strong>&nbsp;n&agrave;y l&agrave; sự kết hợp đa dạng của c&aacute;c loại dưỡng chất thi&ecirc;n nhi&ecirc;n, mang đến khả năng nu&ocirc;i dưỡng da trắng mịn v&agrave; hồng h&agrave;o một c&aacute;ch tối ưu nhất.</p>\r\n\r\n<p dir=\"ltr\">Với chiết xuất chủ yếu từ Nha đam tươi v&agrave; tinh dầu Olive c&ugrave;ng c&ocirc;ng thức&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/duong-am-toan-than-c64.html\" target=\"_blank\">dưỡng ẩm da to&agrave;n th&acirc;n</a></strong>&nbsp;vượt trội, đ&acirc;y l&agrave; sản phẩm được mệnh danh l&agrave; b&iacute; quyết chăm da chuẩn spa phong c&aacute;ch Nhật Bản thế hệ mới m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua.</p>\r\n\r\n<p dir=\"ltr\"><strong>nước hoa</strong>&nbsp;Hasi sẽ đem đến cho bạn một l&agrave;n da lu&ocirc;n mướt mịn v&agrave; căng b&oacute;ng trong nhiều giờ liền. Đặc biệt, sản phẩm c&ograve;n c&oacute; hương thơm m&aacute;t v&agrave; ngọt ng&agrave;o, quyến rũ từ tr&aacute;i c&acirc;y tươi mọng, mang lại cảm gi&aacute;c thư gi&atilde;n l&agrave; lưu hương l&acirc;u tr&ecirc;n cơ thể.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>2.2 Nước Hoa Cetaphil&nbsp;Moisturising Bath &amp; Wash</strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-cetaphil-duong-am-da-cho-be-230ml-8434.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3150&amp;utm_term=200900012\" target=\"_blank\"><img alt=\"Nước Hoa Cetaphil Dưỡng Ẩm Dịu Lành Cho Bé 230ml\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic_200900012-1685346559_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-cetaphil-duong-am-da-cho-be-230ml-8434.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3150&amp;utm_term=200900012\" target=\"_blank\">Nước Hoa Cetaphil Dưỡng Ẩm Dịu L&agrave;nh Cho B&eacute; 230ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-cetaphil-duong-am-da-cho-be-230ml-8434.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3150&amp;utm_term=200900012\" target=\"_blank\"><strong>189.000 ₫&nbsp;</strong>&nbsp;&nbsp;225.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-cetaphil-duong-am-da-cho-be-230ml-8434.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3150&amp;utm_term=200900012\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nước Hoa Cetaphil Moisturising Bath &amp; Wash l&agrave; một d&ograve;ng&nbsp;<strong>nước hoa</strong>&nbsp;d&agrave;nh ri&ecirc;ng cho b&eacute; y&ecirc;u v&ocirc; c&ugrave;ng dịu nhẹ v&agrave; l&agrave;nh t&iacute;nh, kh&ocirc;ng l&agrave;m tổn hại đến l&agrave;n da mỏng manh của trẻ.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần sản phẩm c&oacute; chứa chiết xuất Nha Đam tươi c&ugrave;ng c&aacute;c chất Panthenol, Glycerin c&oacute; c&ocirc;ng dụng nu&ocirc;i dưỡng v&agrave; bảo vệ lớp m&agrave;ng ẩm tự nhi&ecirc;n. Với c&ocirc;ng thức dịu l&agrave;nh đ&oacute; c&ugrave;ng độ pH l&yacute; tưởng, sản phẩm n&agrave;y được c&aacute;c b&aacute;c sĩ nhi khuy&ecirc;n d&ugrave;ng cho trẻ sơ sinh để loại bỏ những bụi bẩn, tế b&agrave;o da chết cho b&eacute; m&agrave; vẫn duy tr&igrave; được độ ẩm cần thiết.</p>\r\n\r\n<p dir=\"ltr\">B&agrave;i viết n&agrave;y đ&atilde; giới thiệu đến bạn&nbsp;c&aacute;c c&ocirc;ng dụng t&iacute;ch cực của nha đam đối với l&agrave;n da v&agrave; c&aacute;c&nbsp;d&ograve;ng sản phẩm<strong>&nbsp;nước hoa</strong>&nbsp;được ưa chuộng. Hy vọng th&ocirc;ng qua b&agrave;i viết n&agrave;y, bạn sẽ c&oacute; được những th&ocirc;ng tin bổ &iacute;ch về c&aacute;ch chăm s&oacute;c da v&agrave; sự lựa chọn sản phẩm<strong>&nbsp;nước hoa</strong>&nbsp;ph&ugrave; hợp.</p>\r\n\r\n<p dir=\"ltr\">C&aacute;c sản phẩm&nbsp;<strong>nước hoa</strong>&nbsp;tr&ecirc;n hiện được ph&acirc;n phối rộng khắp to&agrave;n quốc. Bạn c&oacute; thể dễ d&agrave;ng mua sản phẩm ở c&aacute;c đơn vị đối t&aacute;c ch&iacute;nh h&atilde;ng, cửa h&agrave;ng chuy&ecirc;n cung cấp c&aacute;c sản phẩm l&agrave;m đẹp. Tuy nhi&ecirc;n với thị trường h&agrave;ng giả ng&agrave;y c&agrave;ng nhiều, bạn cần t&igrave;m đến những cơ sở cung cấp mỹ phẩm ch&iacute;nh h&atilde;ng để th&ecirc;m phần an t&acirc;m khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\">Hiện nay tại c&aacute;c cửa h&agrave;ng của Hasaki đ&atilde; c&oacute; c&aacute;c sản phẩm<strong>&nbsp;nước hoa</strong>&nbsp;vừa review ở tr&ecirc;n ho&agrave;n to&agrave;n ch&iacute;nh h&atilde;ng 100%. Số lượng sản phẩm v&agrave; dịch vụ lớn nhất với chủng loại đa dạng, phong ph&uacute; sẽ đ&aacute;p ứng tất cả nhu cầu mua sắm của bạn.</p>\r\n\r\n<p dir=\"ltr\">Với phương ch&acirc;m &quot;Chất lượng thật - Gi&aacute; trị thật&rdquo;, Hasaki.vn lu&ocirc;n nỗ lực kh&ocirc;ng ngừng nhằm n&acirc;ng cao chất lượng sản phẩm &amp; dịch vụ để kh&aacute;ch h&agrave;ng c&oacute; được những trải nghiệm mua sắm tốt nhất.</p>', '2023-08-04 03:38:34', 1, 0, '2024-02-23 02:58:32');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(3, 'Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng', 'top-9-nuoc-hoa-nhat-ban-duoc-hoi-chi-em-tin-dung', 1, 1, 1, 0, NULL, '2024-02-23__24.png', '<h1>Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin D&ugrave;ng</h1>\r\n\r\n<p>vivi- 2023-08-02 10:44:20</p>\r\n\r\n<p dir=\"ltr\"><strong>Nước Hoa Nhật Bản</strong>&nbsp;lu&ocirc;n l&agrave; d&ograve;ng sản phẩm thu h&uacute;t đặc biệt với c&aacute;c chị em v&agrave; nhiều gia đ&igrave;nh Việt. Tuy nhi&ecirc;n đang c&oacute; nhiều&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-tam-xa-bong-tam-c26.html\" target=\"_blank\">Nước Hoa</a>&nbsp;k&eacute;m chất lượng xuất hiện tr&ecirc;n thị trường khiến người d&ugrave;ng băn khoăn. Mời bạn xem ngay b&agrave;i viết n&agrave;y, để c&oacute; được top 9 Nước Hoa Nhật Bản chất lượng, ch&iacute;nh h&atilde;ng h&agrave;ng đầu hiện nay, nhằm&nbsp;tr&aacute;nh &ldquo;mua nhầm&rdquo; đ&aacute;ng tiếc nh&eacute;.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" id=\"64cc72c61aafe\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-hatomugi-duong-sang-da-800ml-1683085255_img_300x300_b798dd_fit_center.jpg\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu_357100003-1683084622_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\"><strong>80.000 ₫</strong>65%230.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\"><strong>HATOMUGI</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\">Nước Hoa Hatomugi Dưỡng Ẩm, S&aacute;ng Da Chiết Xuất &Yacute; Dĩ 800ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\">Reihaku Hatomugi Body Soap</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\">(71) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;3.669</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\">76%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" id=\"64cc72c61c384\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-sang-da-white-conc-360ml_img_300x300_b798dd_fit_center.jpg\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/s/u/sua-tam-sang-da-white-conc-360ml-1_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\"><strong>213.000 ₫</strong>39%350.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\"><strong>WHITE CONC</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\">Nước Hoa S&aacute;ng Da WHITE CONC 360ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\">Body Shampoo</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\">(5) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;95</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\">93%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" id=\"64cc72c61db2c\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-1_img_300x300_b798dd_fit_center.jpg\" /><img alt=\"Hình giấy chứng nhận đại lý\" src=\"https://media.hasaki.vn/catalog/product/certificate/senka1666250043_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\"><strong>148.000 ₫</strong>25%198.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\"><strong>SENKA</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\">Nước Hoa Dưỡng Ẩm Senka Hương Hoa Dịu Ngọt 500ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\">Perfect Bubble For Body Sweet Floral</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\">(10) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;60</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\">98%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" id=\"64cc72c61f40d\" target=\"_blank\"><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-1677301225_img_300x300_b798dd_fit_center.jpg\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu-sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-1677301224_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\"><strong>105.000 ₫</strong>38%169.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\"><strong>SHC</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">Nước Hoa SHC Hatomugi Cấp Ẩm &amp; Dưỡng Da S&aacute;ng Mịn 800ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">The Body Soap</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">(1) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;73</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">78%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" id=\"64cc72c620335\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/s/u/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-1_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\"><strong>145.000 ₫</strong>23%189.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\"><strong>AVATAR</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">Nước Hoa Avatar Thơm Mịn Da Jojoba B&ocirc;ng Hoa 900ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">Jojoba Shower Gel</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">(7) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;37</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">79%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" id=\"64cc72c6217e7\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/s/u/sua-tam-giup-ngan-ngua-mun-acnes-180g027_2__img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\"><strong>62.000 ₫</strong>28%86.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\"><strong>Acnes</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\">Nước Hoa Acnes Kiểm So&aacute;t Nhờn, Ngăn Ngừa &amp; Giảm Mụn 180g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\">Body Shower</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\">(6) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;58</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\">87%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" id=\"64cc72c62363f\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-1643161242_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\"><strong>135.000 ₫</strong>3%139.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\"><strong>OXY</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">Nước Hoa Oxy Tác Đ&ocirc;̣ng S&acirc;u D&agrave;nh Cho Nam 500ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">Deep Shower</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">(1) &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;24</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">75%</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" id=\"64cc72c625446\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/p/a/packshot-422210230-1668414402_img_300x300_b798dd_fit_center.png\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\"><strong>117.000 ₫</strong>11%131.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\"><strong>Bior&eacute;</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\">[Mua 1 Tặng 1] Nước Hoa Bior&eacute; Guard Kh&aacute;ng Khuẩn M&aacute;t Lạnh Sảng Kho&aacute;i 800g+220g</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\">Body Foam Energetic Cool</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;25</a></p>\r\n	</li>\r\n	<li><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" id=\"64cc72c627479\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/empty-lazy.gif\" /><img alt=\"\" src=\"https://media.hasaki.vn/catalog/product/t/e/tem-phu_422202747-1690539020_img_300x300_b798dd_fit_center.jpg\" /></a>\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\"><strong>447.000 ₫</strong>25%595.000 ₫</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\"><strong>Naris Cosmetics</strong></a></p>\r\n\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\">Nước Hoa Naris Dưỡng Ẩm Da Hương Cam Qu&yacute;t 550ml</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\">Purece Medicated Body Soap LS</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\"><img alt=\"\" src=\"https://hasaki.vn/images/graphics/cart.svg\" />&nbsp;2</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\">c&ograve;n&nbsp;</a></p>\r\n\r\n	<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\">5%</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#\">Previous</a></li>\r\n	<li><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#\">Next</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nội Dung Ch&iacute;nh B&agrave;i Viết</p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu1\">1. Nước Hoa Hatomugi Moisturizing &amp; Washing</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu2\">2. Nước Hoa WHITE CONC Body Shampoo</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu3\">3. Nước Hoa SENKA Perfect Bubble For Body Sweet Floral</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu4\">4. Nước Hoa SHC Hatomugi The Body Soap&nbsp;</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu5\">5. Nước Hoa Avatar Jojoba B&ocirc;ng Hoa Shower Gel</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu6\">6. Nước Hoa Acnes Body Shower&nbsp;</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu7\">7. Nước Hoa Oxy Deep Shower</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu8\">8. Nước Hoa Bior&eacute; Guard</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/cam-nang/top-9-sua-tam-nhat-ban-duoc-hoi-chi-em-tin-dung-3148.html#menu9\">9. Nước Hoa Naris Purece Medicated Body Soap LS</a></p>\r\n\r\n<h2 dir=\"ltr\"><strong>1. Nước Hoa Hatomugi Moisturizing &amp; Washing</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\"><img alt=\"Nước Hoa Hatomugi Dưỡng Ẩm, Sáng Da Chiết Xuất Ý Dĩ 800ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-hatomugi-duong-sang-da-800ml-1683085255_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\">Nước Hoa Hatomugi Dưỡng Ẩm, S&aacute;ng Da Chiết Xuất &Yacute; Dĩ 800ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\"><strong>80.000 ₫&nbsp;</strong>&nbsp;&nbsp;230.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-hatomugi-duong-sang-da-800ml-78190.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=357100003\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">D&ograve;ng Nước Hoa Nhật Bản &ldquo;quốc d&acirc;n&rdquo; m&agrave; chị em n&agrave;o cũng biết, kh&ocirc;ng chỉ được khen ngợi về hiệu quả dưỡng ẩm v&agrave; l&agrave;m s&aacute;ng da nhờ chiết xuất &yacute; dĩ m&agrave; c&ograve;n rất được l&ograve;ng người d&ugrave;ng nhờ mức gi&aacute; b&igrave;nh d&acirc;n, dung t&iacute;ch lớn, tiết kiệm chi ph&iacute;.</p>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, sản phẩm c&oacute; m&ugrave;i hương sữa, gạo, &yacute; dĩ nhẹ nh&agrave;ng mang đến cảm gi&aacute;c thư gi&atilde;n khi tắm.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Chiết xuất &yacute; dĩ, enzyme ph&acirc;n giải protein |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;HATOMUGI |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;800ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 1\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-1.jpg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 1\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>2. Nước Hoa WHITE CONC Body Shampoo</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\"><img alt=\"Nước Hoa Sáng Da WHITE CONC 360ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-sang-da-white-conc-360ml_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\">Nước Hoa S&aacute;ng Da WHITE CONC 360ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\"><strong>213.000 ₫&nbsp;</strong>&nbsp;&nbsp;350.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-sang-da-white-conc-360ml-78826.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=367400001\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nếu bạn n&agrave;ng c&oacute; l&agrave;n da hơi xỉn m&agrave;u, kh&ocirc;ng đều m&agrave;u th&igrave; d&ugrave;ng ngay WHITE CONC Body Shampoo - d&ograve;ng&nbsp;<a href=\"https://hasaki.vn/cam-nang/top-5-sua-tam-lam-trang-da-an-toan-cua-nhat-ban-2673.html\" target=\"_blank\">Nước Hoa trắng da của Nhật</a>&nbsp;n&agrave;y rất hiệu quả.</p>\r\n\r\n<p dir=\"ltr\">Với th&agrave;nh phần chiết xuất từ thi&ecirc;n nhi&ecirc;n như quả cam, d&acirc;u tằm, berry dồi d&agrave;o h&agrave;m lượng Vitamin C l&ecirc;n đến 2000cc, sản phẩm gi&uacute;p l&agrave;m sạch da nhẹ nh&agrave;ng, nu&ocirc;i dưỡng da mịn m&agrave;ng, trắng s&aacute;ng theo thời gian.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Vitamin C |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;WHITE CONC |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;360ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 2\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-3.jpeg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 2\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>3. Nước Hoa SENKA Perfect Bubble For Body Sweet Floral</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\"><img alt=\"Nước Hoa Dưỡng Ẩm Senka Hương Hoa Dịu Ngọt 500ml\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-1_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\">Nước Hoa Dưỡng Ẩm Senka Hương Hoa Dịu Ngọt 500ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\"><strong>148.000 ₫&nbsp;</strong>&nbsp;&nbsp;198.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-duong-am-senka-huong-hoa-diu-ngot-500ml-85683.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=223600052\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://hasaki.vn/thuong-hieu/senka.html\" target=\"_blank\">Senka</a>&nbsp;l&agrave; thương hiệu chuy&ecirc;n c&aacute;c sản phẩm chăm s&oacute;c da,&nbsp;<a href=\"https://hasaki.vn/danh-muc/cham-soc-co-the-c12.html\" target=\"_blank\">chăm s&oacute;c cơ thể</a>&nbsp;rất quen thuộc với thị trường Việt Nam. Mỗi sản phẩm đều c&oacute; c&ocirc;ng dụng, sứ mệnh ri&ecirc;ng nổi bật, đ&aacute;p ứng nhu cầu của từng kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p dir=\"ltr\">Với Nước Hoa, best seller của h&atilde;ng hiện nay l&agrave; SENKA Perfect Bubble For Body Sweet Floral - sản phẩm gi&uacute;p l&agrave;m sạch da, dưỡng ẩm kết hợp hương nước hoa sử dụng c&ocirc;ng nghệ mới l&agrave;m thay đổi m&ugrave;i hương độc đ&aacute;o từ h&atilde;ng, tạo n&ecirc;n một em Nước Hoa l&yacute; tưởng cho mọi c&ocirc; n&agrave;ng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Chiết xuất Tơ tằm trắng, gấp đ&ocirc;i Hyaluronic acid, Glycerin, chiết xuất vỏ c&acirc;y Ho&agrave;ng B&aacute;, Hương Linh Lan &amp; Hoa Nh&agrave;i |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;SENKA |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;500ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 3\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-4.jpg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 3\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>4. Nước Hoa SHC Hatomugi The Body Soap&nbsp;</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\"><img alt=\"Nước Hoa SHC Hatomugi Cấp Ẩm &amp; Dưỡng Da Sáng Mịn 800ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-1677301225_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">Nước Hoa SHC Hatomugi Cấp Ẩm &amp; Dưỡng Da S&aacute;ng Mịn 800ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\"><strong>105.000 ₫&nbsp;</strong>&nbsp;&nbsp;169.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-shc-hatomugi-cap-am-duong-da-sang-min-800ml-102589.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422208814\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">C&aacute;c thương hiệu Nhật Bản rất ch&uacute; trọng v&agrave; đặc biệt y&ecirc;u th&iacute;ch c&aacute;c c&ocirc;ng dụng từ hạt &yacute; dĩ mang đến cho l&agrave;n da, v&igrave; thế bạn sẽ bắt gặp Nước Hoa của đất nước hoa anh đ&agrave;o thường c&oacute; th&agrave;nh phần n&agrave;y.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Một đại diện kh&aacute;c từ nguy&ecirc;n liệu n&agrave;y m&agrave; bạn cũng n&ecirc;n một lần trải nghiệm</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">l&agrave; SHC Hatomugi The Body Soap. Sản phẩm cấp ẩm v&agrave; l&agrave;m mềm da hiệu quả, đồng thời nhẹ nh&agrave;ng loại bỏ tạp chất, mồ h&ocirc;i, b&atilde; nhờn&amp;hel; mang lại l&agrave;n da th&ocirc;ng tho&aacute;ng, tươi m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Chiết xuất hạt &yacute; dĩ, Vitamin C Derivative |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;SHC |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;800ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 4\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-5.jpg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 4\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>5. Nước Hoa Avatar Jojoba B&ocirc;ng Hoa Shower Gel</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\"><img alt=\"Nước Hoa Avatar Thơm Mịn Da Jojoba Nước hoa 900ml\" src=\"https://media.hasaki.vn/catalog/product/s/u/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">Nước Hoa Avatar Thơm Mịn Da Jojoba B&ocirc;ng Hoa 900ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\"><strong>145.000 ₫&nbsp;</strong>&nbsp;&nbsp;189.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-thom-min-da-jojoba-bong-hoa-avatar-900ml-89319.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=303700002\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nước Hoa Avatar Jojoba B&ocirc;ng Hoa Shower Gel d&agrave;nh cho những n&agrave;ng c&oacute; l&agrave;n da kh&ocirc; r&aacute;p, thiếu ẩm, thiếu độ đ&agrave;n hồi. Sản phẩm l&agrave;m mềm mịn da, bổ sung nước cho da căng mướt, c&ugrave;ng m&ugrave;i hương quyến rũ, l&ocirc;i cuốn bền l&acirc;u.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Một item được đ&aacute;nh gi&aacute; 4.9/5 rất đặc biệt m&agrave; bạn kh&ocirc;ng thể bỏ qua. B&ecirc;n cạnh đ&oacute; c&ograve;n được ra mắt tới tận 4 dung t&iacute;ch kh&aacute;c nhau n&ecirc;n bạn c&oacute; thể thoải m&aacute;i lựa chọn cho m&igrave;nh v&agrave; gia đ&igrave;nh sử dụng.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Tinh dầu Jojoba, Anh đ&agrave;o |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;AVATAR |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;900ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 5\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-6.jpg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 5\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>6. Nước Hoa Acnes Body Shower&nbsp;</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\"><img alt=\"Nước Hoa Acnes Kiểm Soát Nhờn, Ngăn Ngừa &amp; Giảm Mụn 180g\" src=\"https://media.hasaki.vn/catalog/product/s/u/sua-tam-giup-ngan-ngua-mun-acnes-180g027_1__img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\">Nước Hoa Acnes Kiểm So&aacute;t Nhờn, Ngăn Ngừa &amp; Giảm Mụn 180g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\"><strong>62.000 ₫&nbsp;</strong>&nbsp;&nbsp;86.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-giup-ngan-ngua-mun-acnes-180g-69932.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=226200027\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">C&aacute;c sản phẩm Acnes xưa nay lu&ocirc;n được tập trung v&agrave;o c&aacute;c c&ocirc;ng dụng trị mụn, giảm mụn d&agrave;nh cho da mụn - loại da thường xuy&ecirc;n gặp phải ở v&ugrave;ng c&oacute; kh&iacute; hậu n&oacute;ng ẩm như Việt Nam.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">V&agrave; với mụn cơ thể, h&atilde;ng cũng ph&aacute;t triển ri&ecirc;ng d&ograve;ng Nước Hoa Acnes Body Shower gi&uacute;p kiểm so&aacute;t nhờn, ngăn ngừa v&agrave; giảm mụn từ c&aacute;c th&agrave;nh phần chất lượng nhưng vẫn đảm bảo an to&agrave;n v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Salicylic Acid, Sodium Hyaluronate |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Acnes |&nbsp;<strong>Trọng lượng:</strong>&nbsp;180g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 6\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-8.jpg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 6\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>7. Nước Hoa Oxy Deep Shower</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\"><img alt=\"Nước Hoa Oxy Tác Động Sâu Dành Cho Nam 500ml\" src=\"https://media.hasaki.vn/catalog/product/f/a/facebook-dynamic-sua-tam-oxy-tac-dong-sau-danh-cho-nam-180ml-1643161242_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">Nước Hoa Oxy Tác Đ&ocirc;̣ng S&acirc;u D&agrave;nh Cho Nam 500ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\"><strong>135.000 ₫&nbsp;</strong>&nbsp;&nbsp;139.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-oxy-tac-dong-sau-danh-cho-nam-500ml-99651.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422206614\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nước Hoa Nhật Bản cũng c&oacute; những d&ograve;ng d&agrave;nh ri&ecirc;ng cho nam giới thường xuy&ecirc;n lọt top y&ecirc;u th&iacute;ch hiện nay. Trong đ&oacute;, Oxy Deep Shower nổi bật hơn cả nhờ khả năng l&agrave;m sạch s&acirc;u, ngăn m&ugrave;i mạnh mẽ v&agrave; c&ograve;n mang đến cảm gi&aacute;c sảng kho&aacute;i, m&aacute;t lạnh tức th&igrave; sau mỗi lần sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;Than tre hoạt t&iacute;nh, 2X Deep Cylic |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:&nbsp;</strong>Oxy |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;500ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 7\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-9.jpg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 7\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>8. Nước Hoa Bior&eacute; Guard</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\"><img alt=\"[Mua 1 Tặng 1] Nước Hoa Bioré Guard Kháng Khuẩn Mát Lạnh Sảng Khoái 800g+220g\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-1668414370_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\">[Mua 1 Tặng 1] Nước Hoa Bior&eacute; Guard Kh&aacute;ng Khuẩn M&aacute;t Lạnh Sảng Kho&aacute;i 800g+220g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\"><strong>117.000 ₫&nbsp;</strong>&nbsp;&nbsp;131.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mua-1-tang-1-sua-tam-biore-khang-khuan-mat-lanh-sang-khoai-800g-220g-105351.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422210230\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Với sự &ocirc; nhiễm, dịch bệnh ng&agrave;y c&agrave;ng tăng từ m&ocirc;i trường, cộng đồng th&igrave; c&aacute;c sản phẩm kh&aacute;ng khuẩn, khử khuẩn rất được quan t&acirc;m v&agrave; cần thiết.</p>\r\n\r\n<p dir=\"ltr\">Nước Hoa Bior&eacute; Guard l&agrave; một trong những Nước Hoa hiếm hoi c&oacute; c&ocirc;ng dụng n&agrave;y nhờ hoạt chất kh&aacute;ng khuẩn o-Cymen-5-ol gi&uacute;p l&agrave;m sạch da, vi khuẩn v&agrave; mồ h&ocirc;i tr&ecirc;n da, hỗ trợ ngăn ngừa mụn v&agrave; r&ocirc;m sảy hiệu quả.</p>\r\n\r\n<p dir=\"ltr\">Nếu bạn y&ecirc;u th&iacute;ch cảm gi&aacute;c tuyệt vời từ bạc h&agrave; th&igrave; đừng qu&ecirc;n chọn ph&acirc;n loại Nước Hoa Bior&eacute; Guard kh&aacute;ng khuẩn m&aacute;t lạnh sảng kho&aacute;i nh&eacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Tinh chất Sả |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Bior&eacute; |&nbsp;<strong>Trọng lượng:</strong>&nbsp;800g</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 8\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-10.jpg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 8\" /></p>\r\n\r\n<h2 dir=\"ltr\"><strong>9. Nước Hoa Naris Purece Medicated Body Soap LS</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\"><img alt=\"Nước Hoa Naris Dưỡng Ẩm Da Hương Cam Quýt 550ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-sua-tam-naris-duong-am-da-huong-cam-quyt-650ml_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\">Nước Hoa Naris Dưỡng Ẩm Da Hương Cam Qu&yacute;t 550ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\"><strong>447.000 ₫&nbsp;</strong>&nbsp;&nbsp;595.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/sua-tam-naris-duong-am-da-huong-cam-quyt-650ml-93187.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3148&amp;utm_term=422202747\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Cuối c&ugrave;ng, chẳng thế bỏ qu&ecirc;n người bạn Nước Hoa c&oacute; vẻ ngo&agrave;i nhẹ nh&agrave;ng nhưng xinh đẹp l&agrave; Naris Purece Medicated Body Soap LS.</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm mang đến sự ẩm mượt, dưỡng ẩm cho l&agrave;n da c&ugrave;ng m&ugrave;i hương cam qu&yacute;t tươi mới, tr&agrave;n đầy sức sống c&ugrave;ng với chiết xuất từ 7 loại thảo mộc gi&uacute;p nu&ocirc;i dưỡng da khỏe mạnh, tươi trẻ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:</strong>&nbsp;7 loại thảo mộc&nbsp; |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Naris Cosmetics |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;550ml</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 9\" src=\"https://media.hasaki.vn/hsk/sua-tam-nhat-ban-12.jpg\" title=\"Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin Dùng. Ảnh 9\" /></p>\r\n\r\n<p dir=\"ltr\">Qua b&agrave;i&nbsp;<strong>Top 9 Nước Hoa Nhật Bản Được Hội Chị Em Tin D&ugrave;ng</strong>&nbsp;tr&ecirc;n, hy vọng rằng bạn đ&atilde; c&oacute; được th&ocirc;ng tin cần thiết trong việc sử dụng v&agrave; lựa chọn sản phẩm ph&ugrave; hợp.</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm&nbsp;<strong>Nước Hoa Nhật Bản</strong>&nbsp;n&ecirc;u tr&ecirc;n đều được ph&acirc;n phối rộng khắp to&agrave;n quốc. Bạn c&oacute; thể dễ d&agrave;ng mua sản phẩm ở c&aacute;c đơn vị đối t&aacute;c ch&iacute;nh h&atilde;ng, cửa h&agrave;ng chuy&ecirc;n cung cấp c&aacute;c sản phẩm l&agrave;m đẹp. Tuy nhi&ecirc;n với thị trường h&agrave;ng giả ng&agrave;y c&agrave;ng nhiều, bạn cần t&igrave;m đến những cơ sở cung cấp sản phẩm ch&iacute;nh h&atilde;ng để th&ecirc;m phần an t&acirc;m khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\">Hiện nay tại c&aacute;c cửa h&agrave;ng của Hasaki đ&atilde; c&oacute; c&aacute;c sản phẩm&nbsp;<strong>Nước Hoa Nhật Bản</strong>&nbsp;vừa review ở tr&ecirc;n ho&agrave;n to&agrave;n ch&iacute;nh h&atilde;ng. Số lượng sản phẩm v&agrave; dịch vụ lớn nhất với chủng loại đa dạng, phong ph&uacute; sẽ đ&aacute;p ứng tất cả nhu cầu mua sắm của bạn.</p>\r\n\r\n<p dir=\"ltr\">Với phương ch&acirc;m&nbsp;<strong>&quot;Chất lượng thật - Gi&aacute; trị thật&rdquo;</strong>,&nbsp;<strong>Hasaki.vn</strong>&nbsp;lu&ocirc;n nỗ lực kh&ocirc;ng ngừng nhằm n&acirc;ng cao chất lượng sản phẩm &amp; dịch vụ để kh&aacute;ch h&agrave;ng c&oacute; được những trải nghiệm mua sắm tốt nhất.</p>', '2023-08-04 03:39:23', 1, 1, '2024-02-23 02:58:45');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(4, 'Top 4 Dòng Nước Hoa Kiehl’s Tốt Nhất Và Công Dụng Từng Loại', 'top-4-dong-nuoc-hoa-kiehls-tot-nhat-va-cong-dung-tung-loai', 1, 1, 1, 0, NULL, '2024-02-23__27.png', '<h2 dir=\"ltr\"><strong>1. Nước Hoa Đất S&eacute;t Kiehl&#39;s</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-dat-set-kiehl-s-28ml-106277.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422207080\" target=\"_blank\"><img alt=\"Nước Hoa Kiehl\'s Đất Sét Làm Sạch Sâu, Se Lỗ Chân Lông 28ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-mat-na-dat-set-kiehl-s-28ml-1672987374_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-dat-set-kiehl-s-28ml-106277.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422207080\" target=\"_blank\">Nước Hoa Kiehl&#39;s Đất S&eacute;t L&agrave;m Sạch S&acirc;u, Se Lỗ Ch&acirc;n L&ocirc;ng 28ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-dat-set-kiehl-s-28ml-106277.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422207080\" target=\"_blank\"><strong>356.000 ₫&nbsp;</strong>&nbsp;&nbsp;395.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-dat-set-kiehl-s-28ml-106277.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422207080\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Đầu ti&ecirc;n,&nbsp;<strong>Nước Hoa Kiehl&rsquo;s Đất S&eacute;t&nbsp;</strong>Rare Earth Deep Pore Cleansing Masque l&agrave; một d&ograve;ng sản phẩm chuy&ecirc;n d&ugrave;ng cho da dầu, đặc biệt l&agrave; da dầu c&oacute; nhiều mụn đầu đen, mụn ẩn, sợi b&atilde; nhờn v&agrave; lỗ ch&acirc;n l&ocirc;ng to.</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Nước Hoa Kiehl’s đất sét\" src=\"https://media.hasaki.vn/hsk/mat-na-kiehls%20(5).png\" title=\"Top 4 Dòng Nước Hoa Kiehl’s Tốt Nhất Và Công Dụng Từng Loại hình 1\" /></p>\r\n\r\n<p dir=\"ltr\">Với th&agrave;nh phần ch&iacute;nh l&agrave; Đất s&eacute;t trắng - được mệnh danh l&agrave; &ldquo;đất thần&rdquo; gi&agrave;u kho&aacute;ng chất lấy từ cửa s&ocirc;ng Amazon, sản phẩm n&agrave;y sẽ gi&uacute;p loại bỏ tối ưu mọi b&atilde; nhờn v&agrave; tạp chất từ s&acirc;u trong c&aacute;c lỗ ch&acirc;n l&ocirc;ng. Khi lỗ ch&acirc;n l&ocirc;ng được vệ sinh sạch sẽ, th&ocirc;ng tho&aacute;ng thường xuy&ecirc;n sẽ giảm thiểu t&igrave;nh trạng da tiết dầu nhiều g&acirc;y mụn v&agrave; từ đ&oacute; cũng sẽ thu nhỏ lỗ ch&acirc;n l&ocirc;ng hơn.</p>\r\n\r\n<p dir=\"ltr\">Xem th&ecirc;m:&nbsp;<strong><a href=\"https://hasaki.vn/cam-nang/review-mat-na-dermal-giup-chi-em-duong-da-hieu-qua-ma-an-toan-587.html\" target=\"_blank\">Review Nước Hoa Dermal Gi&aacute; Rẻ Nhưng Chất Lượng Kh&ocirc;ng Rẻ</a></strong></p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Dòng Nước Hoa Kiehl’s đất sét\" src=\"https://media.hasaki.vn/hsk/mat-na-kiehls%20(6).png\" title=\"Top 4 Dòng Nước Hoa Kiehl’s Tốt Nhất Và Công Dụng Từng Loại hình 2\" /></p>\r\n\r\n<p dir=\"ltr\">C&ugrave;ng với đ&oacute;, sản phẩm&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/mat-na-c30.html\" target=\"_blank\">Nước Hoa</a></strong>&nbsp;n&agrave;y c&ograve;n&nbsp;kết hợp với tinh chất nha đam, hỗ trợ c&acirc;n bằng lại độ ẩm tr&ecirc;n da v&agrave; l&agrave;m dịu da, kh&aacute;ng vi&ecirc;m, giảm k&iacute;ch ứng.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Kaolin, Bentonite, Propanediol, Glycerin, Titanium Dioxide, Capric Triglyceride, Cetearyl Alcohol |&nbsp;<strong>Loại da:</strong>&nbsp;Da dầu |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Kiehl&#39;s |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;28ml</p>\r\n\r\n<h2 dir=\"ltr\"><strong>2. Nước Hoa Kiehl&#39;s Nghệ &amp; Hạt Việt Quất</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-nghe-viet-quat-28ml-106317.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422209971\" target=\"_blank\"><img alt=\"Nước Hoa Kiehl\'s Nghệ &amp; Hạt Việt Quất Làm Sáng Da 28ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-mat-na-kiehl-s-nghe-hat-viet-quat-lam-sang-da-28ml-1686566767_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-nghe-viet-quat-28ml-106317.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422209971\" target=\"_blank\">Nước Hoa Kiehl&#39;s Nghệ &amp; Hạt Việt Quất L&agrave;m S&aacute;ng Da 28ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-nghe-viet-quat-28ml-106317.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422209971\" target=\"_blank\"><strong>495.000 ₫&nbsp;</strong>&nbsp;&nbsp;550.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-nghe-viet-quat-28ml-106317.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422209971\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Tiếp đến,&nbsp;<strong>Nước Hoa Kiehl&#39;s</strong>&nbsp;chiết xuất từ Nghệ &amp; Hạt Việt Quất cũng l&agrave; một trong những d&ograve;ng sản phẩm hot nhất của thương hiệu chuy&ecirc;n d&ugrave;ng để cải thiện t&igrave;nh trạng da xỉn m&agrave;u, sần s&ugrave;i v&agrave; th&ocirc; r&aacute;p, thiếu sức sống.</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Nước Hoa Kiehl’s nghệ\" src=\"https://media.hasaki.vn/hsk/mat-na-kiehls%20(2).png\" title=\"Top 4 Dòng Nước Hoa Kiehl’s Tốt Nhất Và Công Dụng Từng Loại hình 3\" /></p>\r\n\r\n<p dir=\"ltr\">Kết hợp 2 th&agrave;nh phần gi&agrave;u c&aacute;c chất chống oxy h&oacute;a l&agrave; chiết xuất Nghệ tươi v&agrave; hạt Việt Quất nhuyễn mịn, sản phẩm đem đến cho người d&ugrave;ng khả năng&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/tay-te-bao-chet-da-mat-c35.html\" target=\"_blank\">tẩy da chết da mặt&nbsp;dịu nhẹ</a></strong>, nu&ocirc;i dưỡng l&agrave;n da s&aacute;ng hồng đều m&agrave;u v&agrave; mềm mịn, căng tr&agrave;n sức sống hơn sau mỗi lần sử dụng.</p>\r\n\r\n<p dir=\"ltr\">Kh&ocirc;ng ngoa khi v&iacute; d&ograve;ng&nbsp;<strong>Nước Hoa Kiehl&#39;s Nghệ &amp; Hạt Việt Quất</strong>&nbsp;n&agrave;y như một liệu tr&igrave;nh phục hồi da cấp tốc. Chỉ sau lần đầu sử dụng, bạn sẽ cảm nhận được sự thay đổi r&otilde; rệt của da mặt như vừa được chăm s&oacute;c ở spa.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Kaolin, Sorbitol, Bentonite, Butylene Glycol, Silica, Titanium Dioxide, Cranberry Seed |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Kiehl&#39;s |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;28ml</p>\r\n\r\n<h2 dir=\"ltr\"><strong>3. Nước Hoa Kiehl&#39;s Từ Dầu Quả Bơ</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-tu-dau-qua-bo-duong-am-da-25g-108088.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422212522\" target=\"_blank\"><img alt=\"[Hàng Tách Set] Nước Hoa Kiehl\'s Từ Dầu Quả Bơ Dưỡng Ẩm Da 25g\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-mat-na-kiehl-s-tu-dau-qua-bo-duong-am-da-28ml-1686566984_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-tu-dau-qua-bo-duong-am-da-25g-108088.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422212522\" target=\"_blank\">[H&agrave;ng T&aacute;ch Set] Nước Hoa Kiehl&#39;s Từ Dầu Quả Bơ Dưỡng Ẩm Da 25g</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-tu-dau-qua-bo-duong-am-da-25g-108088.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422212522\" target=\"_blank\"><strong>495.000 ₫&nbsp;</strong>&nbsp;&nbsp;550.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-tu-dau-qua-bo-duong-am-da-25g-108088.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=422212522\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Nước Hoa Kiehl’s Bơ\" src=\"https://media.hasaki.vn/hsk/mat-na-kiehls%20(3).png\" title=\"Top 4 Dòng Nước Hoa Kiehl’s Tốt Nhất Và Công Dụng Từng Loại hình 4\" /></p>\r\n\r\n<p dir=\"ltr\">Tiếp theo sau l&agrave; d&ograve;ng<strong>&nbsp;Nước Hoa Kiehl&#39;s&nbsp;</strong>chiết xuất từ tinh dầu bơ hạt với chức năng ch&iacute;nh l&agrave; cải thiện l&agrave;n da kh&ocirc; bong tr&oacute;c, th&ocirc; r&aacute;p trở n&ecirc;n ẩm mịn v&agrave; mềm mại hơn.</p>\r\n\r\n<p dir=\"ltr\">Tập hợp c&aacute;c th&agrave;nh phần từ quả bơ v&agrave; tinh dầu hoa anh thảo, sản phẩm nhận được c&aacute;c đ&aacute;nh gi&aacute; cao từ người d&ugrave;ng về khả năng gi&uacute;p da ngậm nước căng mịn tức th&igrave; chỉ sau 15 ph&uacute;t sử dụng. Khi sử dụng sản phẩm thường xuy&ecirc;n v&agrave; đều đặn, da được cung cấp đủ lượng dưỡng chất cần thiết sẽ duy tr&igrave; độ mướt mịn v&agrave; đ&agrave;n hồi, đẩy l&ugrave;i c&aacute;c dấu hiệu l&atilde;o h&oacute;a da.</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Nước Hoa Kiehl’s từ quả bơ\" src=\"https://media.hasaki.vn/hsk/mat-na-kiehls%20(4).png\" title=\"Top 4 Dòng Nước Hoa Kiehl’s Tốt Nhất Và Công Dụng Từng Loại hình 5\" /></p>\r\n\r\n<p dir=\"ltr\">Tất cả c&aacute;c d&ograve;ng sản phẩm&nbsp;<strong>Nước Hoa Kiehl&rsquo;s&nbsp;</strong>đều đảm bảo kh&ocirc;ng chứa hương liệu v&agrave; c&aacute;c chất c&oacute; hại cho da n&ecirc;n những bạn cho d&ugrave; sở hữu&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html\" target=\"_blank\">l&agrave;n da nhạy cảm dễ k&iacute;ch ứng</a></strong>&nbsp;vẫn c&oacute; thể y&ecirc;n t&acirc;m sử dụng được.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Glycerin, Caprylic, Bis-Diglyceryl Polyacyladipate-2, Squalane, Ethylhexyl Palmitate |&nbsp;<strong>Loại da:</strong>&nbsp;Mọi loại da |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Kiehl&#39;s |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;25g</p>\r\n\r\n<h2 dir=\"ltr\"><strong>4. Nước Hoa Hoa C&uacute;c Kiehl&#39;s</strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-hoa-cuc-duong-am-lam-diu-da-28ml-85997.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=209700069\" target=\"_blank\"><img alt=\"[Hàng Tách Set] Nước Hoa Kiehl\'s Hoa Cúc Dưỡng Ẩm &amp; Làm Dịu Da 28ml\" src=\"https://media.hasaki.vn/catalog/product/g/o/google-shopping-mat-na-kiehl-s-hoa-cuc-duong-am-lam-diu-da-28ml-1687583608_img_800x800_eb97c5_fit_center.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-hoa-cuc-duong-am-lam-diu-da-28ml-85997.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=209700069\" target=\"_blank\">[H&agrave;ng T&aacute;ch Set] Nước Hoa Kiehl&#39;s Hoa C&uacute;c Dưỡng Ẩm &amp; L&agrave;m Dịu Da 28ml</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-hoa-cuc-duong-am-lam-diu-da-28ml-85997.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=209700069\" target=\"_blank\"><strong>405.000 ₫&nbsp;</strong>&nbsp;&nbsp;450.000 ₫</a></p>\r\n\r\n<p><a href=\"https://hasaki.vn/san-pham/mat-na-kiehl-s-hoa-cuc-duong-am-lam-diu-da-28ml-85997.html?utm_source=seo&amp;utm_medium=blog&amp;utm_campaign=3138&amp;utm_term=209700069\" target=\"_blank\">Xem th&ecirc;m</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\">V&agrave; cuối c&ugrave;ng,<strong>&nbsp;Nước Hoa Kiehl&rsquo;s Hoa C&uacute;c</strong>&nbsp;l&agrave; sản phẩm chuy&ecirc;n d&ugrave;ng để detox cho da, mang lại cảm gi&aacute;c tươi mới v&agrave; sảng kho&aacute;i, &ldquo;đ&aacute;nh tan&rdquo; c&aacute;c dấu hiệu mệt mỏi cho da rạng rỡ, tươi tắn hơn tr&ocirc;ng thấy.</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Nước Hoa Kiehl’s hoa cúc\" src=\"https://media.hasaki.vn/hsk/mat-na-kiehls%20(8).png\" title=\"Top 4 Dòng Nước Hoa Kiehl’s Tốt Nhất Và Công Dụng Từng Loại hình 6\" /></p>\r\n\r\n<p dir=\"ltr\">Nước Hoa của Kiehl&rsquo;s c&oacute; kết cấu gel mỏng nhẹ trong suốt v&agrave; c&oacute; m&agrave;u v&agrave;ng nhạt. Sản phẩm được chiết xuất từ th&agrave;nh phần c&aacute;nh hoa C&uacute;c Calendula nguy&ecirc;n chất c&ugrave;ng Nha đam tươi vừa c&oacute; t&aacute;c dụng cấp nước, dưỡng ẩm, vừa c&oacute; t&aacute;c dụng l&agrave;m dịu v&agrave; kh&aacute;ng vi&ecirc;m, phục hồi l&agrave;n da căng mọng, hỗ trợ lỗ ch&acirc;n l&ocirc;ng se kh&iacute;t hiệu quả.</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Dòng Nước Hoa Kiehl’s hoa cúc\" src=\"https://media.hasaki.vn/hsk/mat-na-kiehls%20(7).png\" title=\"Top 4 Dòng Nước Hoa Kiehl’s Tốt Nhất Và Công Dụng Từng Loại hình 7\" /></p>\r\n\r\n<p dir=\"ltr\">Những sản phẩm&nbsp;<strong>Nước Hoa Kiehl&rsquo;s&nbsp;</strong>c&ograve;n được đ&aacute;nh gi&aacute; điểm cộng từ người d&ugrave;ng&nbsp; bởi hương thơm thi&ecirc;n nhi&ecirc;n thư gi&atilde;n v&agrave; dễ chịu. Đặc biệt đối với sản phẩm n&agrave;y, m&ugrave;i hương từ những c&aacute;nh hoa C&uacute;c được h&aacute;i v&agrave; chọn lọc thủ c&ocirc;ng kỹ c&agrave;ng kh&ocirc;ng những sẽ detox da mặt m&agrave; c&ograve;n c&oacute; thể detox cả tinh thần, như nạp đầy năng lượng cho bạn sau một ng&agrave;y hoạt động mệt mỏi.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần nổi bật:&nbsp;</strong>Glycerin, Aloe Barbadensis Leaf Juice, Butylene Glycol, Ppg-26-Buteth-26, Peg-40 Hydrogenated Castor Oil |&nbsp;<strong>Loại da:&nbsp;</strong>Da nhạy cảm |&nbsp;<strong>Thương hiệu:</strong>&nbsp;Kiehl&#39;s |&nbsp;<strong>Dung t&iacute;ch:</strong>&nbsp;28ml</p>\r\n\r\n<p dir=\"ltr\">B&agrave;i viết đ&atilde; giới thiệu đến bạn 4 d&ograve;ng Nước Hoa&nbsp;hot nhất v&agrave; được mua nhiều nhất của Kiehl&rsquo;s&nbsp;ở thời điểm hiện tại. C&aacute;c sản phẩm<strong>&nbsp;Nước Hoa Kiehl&#39;s&nbsp;</strong>tr&ecirc;n hiện được ph&acirc;n phối rộng khắp to&agrave;n quốc. Bạn c&oacute; thể dễ d&agrave;ng mua sản phẩm ở c&aacute;c đơn vị đối t&aacute;c ch&iacute;nh h&atilde;ng, cửa h&agrave;ng chuy&ecirc;n cung cấp c&aacute;c sản phẩm l&agrave;m đẹp. Tuy nhi&ecirc;n với thị trường h&agrave;ng giả ng&agrave;y c&agrave;ng nhiều, bạn cần t&igrave;m đến những cơ sở cung cấp mỹ phẩm ch&iacute;nh h&atilde;ng để th&ecirc;m phần an t&acirc;m khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\">Hiện nay tại c&aacute;c cửa h&agrave;ng của Hasaki đ&atilde; c&oacute; c&aacute;c sản phẩm&nbsp;<strong>Nước Hoa Kiehl&#39;s</strong>&nbsp;vừa review ở tr&ecirc;n ho&agrave;n to&agrave;n ch&iacute;nh h&atilde;ng 100%. Số lượng sản phẩm v&agrave; dịch vụ lớn nhất với chủng loại đa dạng, phong ph&uacute; sẽ đ&aacute;p ứng tất cả nhu cầu mua sắm của bạn.</p>\r\n\r\n<p dir=\"ltr\">Với phương ch&acirc;m &quot;Chất lượng thật - Gi&aacute; trị thật&rdquo;, Hasaki.vn lu&ocirc;n nỗ lực kh&ocirc;ng ngừng nhằm n&acirc;ng cao chất lượng sản phẩm &amp; dịch vụ để kh&aacute;ch h&agrave;ng c&oacute; được những trải nghiệm mua sắm tốt nhất.</p>', '2023-08-04 03:40:18', 1, 1, '2024-02-23 02:58:50'),
(5, 'Top Nước Hoa Của Mỹ Chất Lượng Hàng Đầu Hiện Nay', 'top-nuoc-hoa-cua-my-chat-luong-hang-dau-hien-nay', 1, 1, 1, 0, NULL, '2024-02-23__17.png', '<p><strong>Nước s&uacute;c miệng của Mỹ</strong>&nbsp;trong nhiều năm qua lu&ocirc;n nằm trong top đầu sản phẩm&nbsp;<a href=\"https://hasaki.vn/danh-muc/cham-soc-rang-mieng-c323.html\" target=\"_blank\">chăm s&oacute;c răng miệng</a>&nbsp;chất lượng v&agrave; b&aacute;n chạy tr&ecirc;n to&agrave;n thế giới, được c&aacute;c b&aacute;c sĩ nha khoa khuy&ecirc;n d&ugrave;ng. Tại Việt Nam, c&oacute; những nước s&uacute;c miệng xứ cờ hoa n&agrave;o thực sự hiệu quả, c&ugrave;ng xem b&agrave;i viết dưới đ&acirc;y nh&eacute;.&nbsp;</p>', '2023-08-04 03:41:42', 1, 0, '2024-02-23 02:58:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `atb_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint NOT NULL DEFAULT '0',
  `atb_category_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'LOREAL', 'loreal', 1, 1, '2023-08-04 02:34:52', NULL),
(2, 'Pháp', 'phap', 2, 1, '2023-08-04 02:37:13', NULL),
(3, 'Trung Quốc', 'trung-quoc', 3, 1, '2023-08-04 02:37:24', NULL),
(4, 'Nam & Nữ', 'nam-nu', 4, 1, '2023-08-04 02:37:35', NULL),
(5, 'BIODERMA', 'bioderma', 1, 1, '2023-08-04 02:46:06', NULL),
(6, 'Việt Nam', 'viet-nam', 3, 1, '2023-08-04 02:46:13', NULL),
(7, 'Nhật Bản', 'nhat-ban', 3, 1, '2023-08-04 02:46:19', NULL),
(8, 'LA ROCHE-POSAY', 'la-roche-posay', 1, 1, '2023-08-04 02:47:40', NULL),
(9, 'France', 'france', 3, 1, '2023-08-04 02:47:49', NULL),
(10, 'Cannada', 'cannada', 2, 1, '2023-08-04 02:52:17', NULL),
(11, 'Hoa Kỳ', 'hoa-ky', 2, 1, '2023-08-04 02:52:24', NULL),
(12, 'Cosrx', 'cosrx', 1, 1, '2023-08-04 02:55:35', NULL),
(13, 'Hàn Quốc', 'han-quoc', 2, 1, '2023-08-04 02:55:45', NULL),
(14, 'Korea', 'korea', 3, 1, '2023-08-04 02:55:55', NULL),
(15, 'CeraVe', 'cerave', 1, 1, '2023-08-04 02:58:08', NULL),
(16, 'Mỹ', 'my', 2, 1, '2023-08-04 02:58:16', NULL),
(17, 'SVR', 'svr', 1, 1, '2023-08-04 03:00:09', NULL),
(18, 'SIMPLE', 'simple', 1, 1, '2023-08-04 03:02:25', NULL),
(19, 'Anh', 'anh', 2, 1, '2023-08-04 03:02:33', NULL),
(20, 'Poland', 'poland', 3, 2, '2023-08-04 03:02:43', '2023-10-11 18:11:30'),
(21, 'Klairs', 'klairs', 1, 1, '2023-08-04 03:07:02', NULL),
(22, 'Neutrogena', 'neutrogena', 1, 1, '2023-08-04 03:09:27', NULL),
(23, 'DHC', 'dhc', 1, 1, '2023-08-04 03:19:32', NULL),
(24, 'Japan', 'japan', 2, 1, '2023-08-04 03:19:38', NULL),
(25, 'Black Rouge', 'black-rouge', 1, 1, '2023-08-04 07:02:15', NULL),
(26, 'Nam', 'nam', 4, 1, '2023-08-04 07:02:23', NULL),
(27, 'Nữ', 'nu', 4, 1, '2023-08-04 07:02:28', '2023-10-11 18:06:00'),
(29, '3CE', '3ce', 1, 1, '2023-10-19 08:09:06', NULL),
(30, 'Maybelline', 'maybelline', 1, 1, '2023-10-30 18:49:58', NULL),
(31, 'Cetaphil', 'cetaphil', 1, 1, '2023-10-30 19:14:55', NULL),
(32, 'Canada', 'canada', 3, 1, '2023-10-30 19:15:13', NULL),
(33, 'USA', 'usa', 3, 11, '2023-10-31 06:09:56', '2023-10-31 06:10:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `c_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int NOT NULL DEFAULT '0',
  `c_hot` tinyint NOT NULL DEFAULT '0',
  `c_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Nước hoa nam', 'nuoc-hoa-nam', '2023-08-04__48-1-img-150x150-42f4bd-fit-center.jpg', NULL, NULL, 0, 1, 1, '2023-08-04 02:30:43', '2023-10-31 06:01:25'),
(2, 'Nước hoa nữ', 'nuoc-hoa-nu', '2023-08-04__19-3-img-150x150-42f4bd-fit-center.jpg', NULL, NULL, 0, 1, 1, '2023-08-04 02:31:08', '2023-08-04 03:11:26'),
(3, 'Nước hoa 1', 'nuoc-hoa-1', '2023-08-04__9-1-img-150x150-42f4bd-fit-center.jpg', NULL, NULL, 0, 1, 1, '2023-08-04 02:31:26', '2023-10-10 19:11:25'),
(4, 'Nước hoa 2', 'nuoc-hoa-2', '2023-08-04__75-2-img-150x150-42f4bd-fit-center.jpg', NULL, NULL, 0, 0, 1, '2023-08-04 02:31:55', '2023-10-10 19:11:40'),
(5, 'Nước hoa 3', 'nuoc-hoa-3', '2023-08-04__47-img-150x150-42f4bd-fit-center.jpg', NULL, NULL, 0, 0, 1, '2023-08-04 02:32:19', NULL),
(6, 'Nước hoa 4', 'nuoc-hoa-4', '2023-08-04__49-img-150x150-42f4bd-fit-center.jpg', NULL, NULL, 0, 0, 1, '2023-08-04 02:32:40', '2023-10-10 19:10:16'),
(9, 'Nước hoa 5', 'nuoc-hoa-5', '2023-08-04__thuc-pham-chuc-nang.jpg', NULL, NULL, 0, 1, 1, '2023-08-04 02:33:45', '2023-08-04 03:11:30'),
(11, 'Nước hoa 6', 'nuoc-hoa-6', '2023-10-11__kemnen.png', NULL, NULL, 0, 0, 1, '2023-10-10 19:14:42', NULL),
(12, 'Nước hoa 7', 'nuoc-hoa-7', '2023-10-11__mat.png', NULL, NULL, 0, 0, 1, '2023-10-10 19:16:00', NULL),
(13, 'Nước hoa 8', 'nuoc-hoa-8', '2023-10-12__kcn.png', NULL, NULL, 0, 0, 1, '2023-10-11 18:25:44', NULL),
(14, 'Nước hoa 9', 'nuoc-hoa-9', NULL, NULL, NULL, 0, 0, 1, '2023-10-11 18:26:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `cmt_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int NOT NULL DEFAULT '0',
  `cmt_product_id` int NOT NULL DEFAULT '0',
  `cmt_admin_id` int NOT NULL DEFAULT '0',
  `cmt_user_id` int NOT NULL DEFAULT '0',
  `cmt_like` int NOT NULL DEFAULT '0',
  `cmt_disk_like` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'good', 0, 6, 0, 3, 0, 0, '2023-09-15 15:10:05', NULL),
(4, NULL, NULL, 'có ship CT ko', 0, 24, 0, 4, 0, 0, '2023-10-05 17:43:44', NULL),
(6, NULL, NULL, 'freeship CT hem', 0, 2, 0, 3, 0, 0, '2023-10-11 18:31:04', NULL),
(7, NULL, NULL, '@Lê Thị Chúc Nhi: có ạ', 6, 2, 0, 3, 0, 0, '2023-10-11 18:31:16', NULL),
(8, NULL, NULL, 'còn hàng ko ạ', 0, 3, 0, 6, 0, 0, '2023-10-24 18:11:19', NULL),
(9, NULL, NULL, 'a', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:55', NULL),
(10, NULL, NULL, 'asdas', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:58', NULL),
(11, NULL, NULL, 'asdasd', 0, 24, 0, 9, 0, 0, '2023-11-02 07:00:59', NULL),
(12, NULL, NULL, '12312', 0, 24, 0, 9, 0, 0, '2023-11-02 07:01:01', NULL),
(13, NULL, NULL, '123', 0, 24, 0, 9, 0, 0, '2023-11-02 07:01:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `c_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`, `c_name`) VALUES
(2, 'Sản phẩm nước hoa', '0933188762', 'nhi123@gmail.com', 'Nước hoa mùi quá', '2023-10-11 18:46:29', NULL, 'Lê Thị Chúc Nhi'),
(3, 'Sản phẩm nước hoa', '0933188762', 'nhi123@gmail.com', 'Trả lời tui', '2023-10-11 18:48:17', NULL, 'Lê Thị Chúc Nhi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint UNSIGNED NOT NULL,
  `d_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_number_code` int NOT NULL DEFAULT '0',
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'Ưu đãi tháng 8', 10, '2023-08-05 08:12:00', '2023-08-10 08:12:00', 10, '2023-08-05 01:12:26', '2023-08-05 01:12:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `e_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint NOT NULL DEFAULT '0',
  `e_position_2` tinyint NOT NULL DEFAULT '0',
  `e_position_3` tinyint NOT NULL DEFAULT '0',
  `e_position_4` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2024-02-23__e2.jpg', 'https://images.', 1, 0, 0, 0, '2024-02-23 02:57:33', '2024-02-23 02:57:34'),
(2, 'Event 2', '2023-10-19__elegant-store-sale-facebook-cover-post-8.png', 'http://127.0.0.1:8000/san-pham?k=', 0, 1, 0, 0, '2023-10-19 06:41:46', '2023-10-19 06:41:47'),
(3, 'Event 3', '2024-02-23__event1.jpg', 'https://images.', 0, 0, 1, 0, '2024-02-23 02:57:22', '2024-02-23 02:57:22'),
(4, 'Event4', '2023-10-13__sieu-hot-mua-he-2.png', 'http://127.0.0.1:8000/san-pham', 0, 0, 0, 0, '2023-10-12 17:40:24', '2023-10-12 17:40:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exports`
--

CREATE TABLE `exports` (
  `id` bigint UNSIGNED NOT NULL,
  `w_order_id` int NOT NULL,
  `w_price` int NOT NULL DEFAULT '0',
  `w_qty` int NOT NULL DEFAULT '0',
  `w_time_exports` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint UNSIGNED NOT NULL,
  `k_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `mn_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint NOT NULL DEFAULT '0',
  `mn_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Cẩm nang làm đẹp', 'cam-nang-lam-dep', NULL, NULL, NULL, 0, 1, '2023-08-04 03:36:14', '2023-08-04 03:36:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `od_transaction_id` int NOT NULL DEFAULT '0',
  `od_product_id` int NOT NULL DEFAULT '0',
  `od_sale` int NOT NULL DEFAULT '0',
  `od_qty` tinyint NOT NULL DEFAULT '0',
  `od_price` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(2, 1, 24, 20, 1, 272000, '2023-08-04 08:51:48', NULL),
(4, 1, 22, 19, 1, 238140, '2023-08-04 08:51:48', NULL),
(5, 1, 2, 0, 1, 159000, '2023-08-04 08:51:48', NULL),
(8, 4, 24, 20, 1, 272000, '2023-09-15 11:48:09', NULL),
(10, 6, 24, 20, 1, 272000, '2023-10-05 17:54:05', NULL),
(13, 9, 24, 20, 1, 272000, '2023-10-06 09:43:41', NULL),
(14, 10, 5, 4, 1, 377280, '2023-10-06 11:18:48', NULL),
(16, 12, 24, 20, 1, 272000, '2023-10-06 11:51:55', NULL),
(17, 13, 5, 4, 1, 377280, '2023-10-09 08:18:51', NULL),
(18, 14, 22, 19, 1, 238140, '2023-10-10 14:11:34', NULL),
(19, 15, 22, 19, 1, 238140, '2023-10-10 14:11:50', NULL),
(20, 16, 2, 0, 2, 159000, '2023-10-13 08:24:06', NULL),
(21, 16, 24, 20, 1, 272000, '2023-10-13 08:24:06', NULL),
(23, 18, 4, 15, 1, 416500, '2023-10-20 08:52:59', NULL),
(27, 20, 11, 10, 1, 315000, '2023-10-31 05:02:22', NULL),
(31, 21, 55, 5, 1, 380000, '2023-11-02 07:11:56', NULL),
(32, 21, 54, 10, 1, 288000, '2023-11-02 07:11:56', NULL),
(33, 22, 15, 10, 1, 38700, '2023-12-03 09:26:14', NULL),
(34, 22, 9, 10, 1, 432000, '2023-12-03 09:26:14', NULL),
(35, 23, 24, 10, 1, 306000, '2024-02-23 03:34:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nhib1910271@student.ctu.edu.vn', '$2y$10$3ckolzXVFroB/66evJBKqOZQGo7WXyvSsksXcxXi6o134u45EUZ4C', '2023-10-05 18:53:57'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$wfgQVEdGynKHTZvnlhzzPuBcdBc/R.aNbkVfhe5DK5KriRZRaDGWS', '2023-10-09 08:13:58'),
('khanhan122001@gmail.com', '$2y$10$YGLrCHwihIFzMdvPnv3V8uMDnJIVGYzRLXNuLMtTbXkh3WL0oK4Bi', '2023-10-09 08:17:54'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$i9Lvh7LwAcNc.8qj67H17uFToputVdkG9dyMIIHO.O/VCs3BJclEe', '2023-10-24 17:20:35'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$VfeqILenabLdK8QZPAxdM.VTeC41e7iDGonN/d24sPlJOm6WeC40K', '2023-10-24 17:26:54'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$rW40DrVtdOm1r0.wGKNo4.ipEOSFH5wP33JBMiEPbnJyUp2Wt5QGW', '2023-10-24 17:27:29'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$EK0ZKNhcHfrgOAQ57gKm.O4ouUhbCvj4pi9iN/LqtJUgiEF534pa6', '2023-10-24 18:08:42'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$tbBojquFK66D0s2JOUFZye0n6IjQ4zF1HF21Hbarm/TSuLQDOxNd2', '2023-10-24 18:15:42'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$oNtcnGOFSRmcbf/QiGQ0deX1.sFbQao2gPDh3hS7fhkLQj0zOr2v2', '2023-10-24 18:15:46'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$wMTurvYsR57Gnfb8AcOVH.iG0ZVnmZ6T26q8UeFAUwEqb2Wla9EYu', '2023-10-25 08:13:39'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$JlKLdLXasKASFaUv/EQJhutsPs8Q9GM0P0pz5scq6fljef8ldfxx6', '2023-10-25 08:25:07'),
('nhib1910271@student.ctu.edu.vn', '$2y$10$KS9cgadHGl2FllffYVDBauiHmgNWjPLUI8CyoxFPjRv9c.5Xrfz3S', '2023-10-25 08:26:42'),
('nhi123@gmail.com', '$2y$10$34yizG48boGoGn/D5uvwG.u6WkTK/GD08qDYdz7sHqiBHbyv5KIRq', '2023-10-26 07:29:03'),
('nhi123@gmail.com', '$2y$10$dyuS8omy8lDAddOKC1XutOTPizcnFDSVpnZK6/kc4EhXIKwfImjzu', '2023-10-26 07:42:00'),
('nhi123@gmail.com', '$2y$10$awOjvik9xx6TVIVXA.63U.wDJHXzFdpt/3xF9mzZpSm2Ov2hygphe', '2023-10-26 07:42:49'),
('nhi123@gmail.com', '$2y$10$T2mRYaDFOBKq/tI4/xQ/yuwc/jOjoUwsqSm1XvMkK4Qhc7tSzlUuS', '2023-10-26 08:10:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int UNSIGNED NOT NULL,
  `ph_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int UNSIGNED NOT NULL,
  `ph_credit` int UNSIGNED NOT NULL DEFAULT '0',
  `ph_debit` int UNSIGNED NOT NULL DEFAULT '0',
  `ph_balance` int UNSIGNED NOT NULL DEFAULT '0',
  `ph_meta_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ph_status` tinyint NOT NULL DEFAULT '0',
  `ph_month` tinyint UNSIGNED DEFAULT NULL,
  `ph_year` smallint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_histories`
--

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_credit`, `ph_debit`, `ph_balance`, `ph_meta_detail`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', 1, 0, 885540, 0, NULL, 1, 8, 2023, '2023-08-04 08:51:48', NULL),
(2, 'PAYOUT2', 2, 0, 1654628, 0, NULL, 1, 8, 2023, '2023-08-05 01:13:23', NULL),
(3, 'PAYOUT3', 3, 0, 272000, 0, NULL, 1, 9, 2023, '2023-09-15 11:48:09', NULL),
(4, 'PAYOUT4', 3, 0, 134400, 0, NULL, 1, 9, 2023, '2023-09-15 12:03:43', NULL),
(5, 'PAYOUT5', 4, 0, 272000, 0, NULL, 1, 10, 2023, '2023-10-05 17:54:05', NULL),
(6, 'PAYOUT6', 5, 0, 134400, 0, NULL, 1, 10, 2023, '2023-10-05 18:00:53', NULL),
(7, 'PAYOUT7', 3, 0, 377280, 0, NULL, 1, 10, 2023, '2023-10-06 11:18:48', NULL),
(8, 'PAYOUT8', 3, 0, 238140, 0, NULL, 1, 10, 2023, '2023-10-06 11:33:10', NULL),
(9, 'PAYOUT9', 3, 0, 272000, 0, NULL, 1, 10, 2023, '2023-10-06 11:51:55', NULL),
(10, 'PAYOUT10', 3, 0, 238140, 0, NULL, 1, 10, 2023, '2023-10-10 14:11:50', NULL),
(11, 'PAYOUT11', 3, 0, 590000, 0, NULL, 1, 10, 2023, '2023-10-13 08:24:06', NULL),
(12, 'PAYOUT12', 3, 0, 281600, 0, NULL, 1, 10, 2023, '2023-10-20 08:48:20', NULL),
(13, 'PAYOUT13', 3, 0, 416500, 0, NULL, 1, 10, 2023, '2023-10-20 08:52:59', NULL),
(14, 'PAYOUT14', 7, 0, 162000, 0, NULL, 1, 10, 2023, '2023-10-23 07:22:28', NULL),
(15, 'PAYOUT15', 8, 0, 908000, 0, NULL, 1, 10, 2023, '2023-10-31 05:02:22', NULL),
(16, 'PAYOUT16', 9, 0, 1047800, 0, NULL, 1, 11, 2023, '2023-11-02 07:11:56', NULL),
(17, 'PAYOUT17', 9, 0, 470700, 0, NULL, 1, 12, 2023, '2023-12-03 09:26:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int UNSIGNED NOT NULL,
  `pi_user_id` int UNSIGNED NOT NULL,
  `pi_admin_id` int UNSIGNED NOT NULL,
  `pi_provider` int UNSIGNED NOT NULL DEFAULT '0',
  `pi_money` int UNSIGNED NOT NULL DEFAULT '0',
  `pi_fee` int UNSIGNED NOT NULL DEFAULT '0',
  `pi_amount` int UNSIGNED NOT NULL DEFAULT '0',
  `pi_meta_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pi_status` tinyint NOT NULL DEFAULT '0',
  `pi_month` tinyint UNSIGNED DEFAULT NULL,
  `pi_year` smallint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int UNSIGNED NOT NULL,
  `po_user_id` int UNSIGNED NOT NULL,
  `po_transaction_id` int UNSIGNED NOT NULL,
  `po_money` int UNSIGNED NOT NULL DEFAULT '0',
  `po_meta_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint NOT NULL DEFAULT '0',
  `po_month` tinyint UNSIGNED DEFAULT NULL,
  `po_year` smallint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_outs`
--

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_meta_detail`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 885540, '', 1, 8, 2023, '2023-08-04 08:51:48', NULL),
(2, 2, 3, 1654628, '', 1, 8, 2023, '2023-08-05 01:13:23', NULL),
(3, 3, 4, 272000, '', 1, 9, 2023, '2023-09-15 11:48:09', NULL),
(4, 3, 5, 134400, '', 1, 9, 2023, '2023-09-15 12:03:43', NULL),
(5, 4, 6, 272000, '', 1, 10, 2023, '2023-10-05 17:54:05', NULL),
(6, 5, 7, 134400, '', 1, 10, 2023, '2023-10-05 18:00:53', NULL),
(7, 3, 10, 377280, '', 1, 10, 2023, '2023-10-06 11:18:48', NULL),
(8, 3, 11, 238140, '', 1, 10, 2023, '2023-10-06 11:33:10', NULL),
(9, 3, 12, 272000, '', 1, 10, 2023, '2023-10-06 11:51:55', NULL),
(10, 3, 15, 238140, '', 1, 10, 2023, '2023-10-10 14:11:50', NULL),
(11, 3, 16, 590000, '', 1, 10, 2023, '2023-10-13 08:24:06', NULL),
(12, 3, 17, 281600, '', 1, 10, 2023, '2023-10-20 08:48:20', NULL),
(13, 3, 18, 416500, '', 1, 10, 2023, '2023-10-20 08:52:59', NULL),
(14, 7, 19, 162000, '', 1, 10, 2023, '2023-10-23 07:22:28', NULL),
(15, 8, 20, 908000, '', 1, 10, 2023, '2023-10-31 05:02:22', NULL),
(16, 9, 21, 1047800, '', 1, 11, 2023, '2023-11-02 07:11:56', NULL),
(17, 9, 22, 470700, '', 1, 12, 2023, '2023-12-03 09:26:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `pro_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int NOT NULL DEFAULT '0',
  `pro_price_entry` int NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int NOT NULL DEFAULT '0',
  `pro_supplier_id` int NOT NULL DEFAULT '0',
  `pro_admin_id` int NOT NULL DEFAULT '0',
  `pro_sale` tinyint NOT NULL DEFAULT '0',
  `pro_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int NOT NULL DEFAULT '0',
  `pro_hot` tinyint NOT NULL DEFAULT '0',
  `pro_active` tinyint NOT NULL DEFAULT '1',
  `pro_pay` int NOT NULL DEFAULT '0',
  `pro_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pro_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int NOT NULL DEFAULT '0',
  `pro_review_star` int NOT NULL DEFAULT '0',
  `pro_age_review` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(1, 'Nước hoa Maybelline New York 40ML', 'tay-trang-mat-moi-maybelline-new-york-40ml', 120000, 0, 1, 2, 0, 12, '', '2023-10-31__ttmay1.jpg', 6, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-08-04 02:40:42', 20, NULL, NULL, 0, '2023-10-30 18:50:38', NULL),
(2, 'Nước hoa LOreal Micellar Water 3-in-1', 'nuoc-tay-trang-loreal-lam-sach-sau-trang-diem-400ml-micellar-water-3-in-1', 190000, 0, 1, 2, 0, 10, '', '2023-10-31__ttlo4.jpeg', 9, 0, 1, 2, NULL, 'a', 0, 0, 0, '2023-08-04 02:43:00', 30, NULL, NULL, 0, '2023-10-30 18:40:03', NULL),
(3, 'Nước hoa Bioderma', 'nuoc-tay-trang-bioderma-danh-cho-da-nhay-cam-500ml', 420000, 0, 1, 2, 0, 5, '', '2023-10-31__ttbi1.jpg', 4, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-08-04 02:45:43', 35, NULL, NULL, 0, '2023-10-30 18:32:44', NULL),
(4, 'Nước hoa La Roche-Posay Micellar Water Ultra Sensitive ', 'nuoc-tay-trang-la-roche-posay-cho-da-nhay-cam-micellar-water-ultra-sensitive-skin-400ml', 490000, 0, 1, 1, 0, 15, '', '2023-10-20__ttl.jpg', 4, 0, 1, 1, NULL, 'a', 1, 5, 5, '2023-08-04 02:49:00', 19, NULL, NULL, 0, '2023-10-22 05:34:27', NULL),
(5, 'Nước hoa Bioderma', 'nuoc-tay-trang-bioderma-da-dau-hon-hop-500ml-sebium-h2o', 480000, 0, 1, 1, 0, 9, '', '2023-10-19__taytrang1.png', 6, 1, 1, 2, NULL, 'a', 0, 0, 0, '2023-08-04 02:52:06', 45, NULL, NULL, 0, '2023-10-19 08:27:22', NULL),
(6, 'Nước hoa Cetaphil Gentle', 'nuoc-hoa-cetaphil-gentle', 450000, 0, 2, 2, 0, 15, '', '2024-02-23__11.png', 4, 1, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 02:54:14', 30, NULL, NULL, 0, '2024-02-23 03:17:46', NULL),
(7, 'Nước hoa Cosrx Good Morning Cleanser 150ml', 'nuoc-hoa-cosrx-good-morning-cleanser-150ml', 120000, 0, 2, 1, 0, 20, '', '2024-02-23__22.png', 1, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 02:55:24', 50, NULL, NULL, 0, '2024-02-23 03:17:50', NULL),
(9, 'Nước hoa Svr Sebiaclear Gel Moussant 400Ml', 'nuoc-hoa-svr-sebiaclear-gel-moussant-400ml', 480000, 0, 2, 2, 0, 10, '', '2024-02-23__25.png', 9, 1, 1, 1, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:01:03', 40, NULL, NULL, 0, '2024-02-23 03:17:55', NULL),
(10, 'Nước hoa Simple 150ml', 'nuoc-hoa-simple-150ml', 150000, 0, 2, 1, 0, 10, '', '2024-02-23__25.png', 1, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:03:51', 50, NULL, NULL, 0, '2024-02-23 03:18:00', NULL),
(11, 'Nước hoa CeraVe 236ml', 'nuoc-hoa-cerave-236ml', 350000, 0, 2, 2, 0, 10, '', '2024-02-23__1.png', 3, 0, 1, 1, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:06:08', 30, NULL, NULL, 0, '2024-02-23 03:18:05', NULL),
(12, 'Nước hoa Klairs Midnight Blue Calming Cream', 'nuoc-hoa-klairs-midnight-blue-calming-cream', 390000, 0, 3, 2, 0, 10, '', '2024-02-23__28.png', 1, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:07:59', 20, NULL, NULL, 0, '2024-02-23 03:18:37', NULL),
(13, 'Nước hoa Neutrogena Boost Hyaluronic Acid Water Gel', 'nuoc-hoa-neutrogena-boost-hyaluronic-acid-water-gel', 260000, 0, 3, 2, 0, 15, '', '2024-02-23__1.png', 3, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:09:20', 40, NULL, NULL, 0, '2024-02-23 03:18:42', NULL),
(14, 'Nước hoa La Roche-Posay Cicaplast Baume B5+ 40ml', 'nuoc-hoa-la-roche-posay-cicaplast-baume-b5-40ml', 33000, 0, 3, 1, 0, 12, '', '2024-02-23__25.png', 2, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:11:00', 29, NULL, NULL, 0, '2024-02-23 03:18:46', NULL),
(15, 'Nước hoa Bioderma Sébium Pore Refiner 30ml', 'nuoc-hoa-bioderma-sebium-pore-refiner-30ml', 43000, 0, 3, 1, 0, 10, '', '2024-02-23__25.png', 3, 0, 1, 1, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:13:59', 34, NULL, NULL, 0, '2024-02-23 03:19:14', NULL),
(16, 'Nước hoa Hard Capsules (30 Days Supply)', 'nuoc-hoa-hard-capsules-30-days-supply', 150000, 0, 9, 1, 0, 11, '', '2024-02-23__23.png', 1, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:20:46', 20, NULL, NULL, 0, '2024-02-23 03:19:11', NULL),
(17, 'Nước hoa Blossomy', 'nuoc-hoa-blossomy', 399000, 0, 9, 1, 0, 20, '', '2024-02-23__27.png', 2, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:22:17', 20, NULL, NULL, 0, '2024-02-23 03:19:06', NULL),
(18, 'Nước hoa DHC', 'nuoc-hoa-dhc', 250000, 0, 9, 1, 0, 14, '', '2024-02-23__24.png', 2, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:23:35', 20, NULL, NULL, 0, '2024-02-23 03:19:01', NULL),
(19, 'Nước hoa Innerb', 'nuoc-hoa-innerb', 285000, 0, 9, 1, 0, 5, '', '2024-02-23__21.png', 3, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:24:53', 20, NULL, NULL, 0, '2024-02-23 03:18:55', NULL),
(20, 'Nước hoa BlackmoresEvening Primrose Oil', 'nuoc-hoa-blackmoresevening-primrose-oil', 989000, 0, 9, 1, 0, 11, '', '2024-02-23__17.png', 1, 0, 1, 0, NULL, '<p>a</p>', 0, 0, 0, '2023-08-04 03:26:04', 20, NULL, NULL, 0, '2024-02-23 03:18:50', NULL),
(21, 'Nước hoa Black Rouge', 'nuoc-hoa-black-rouge', 190000, 0, 6, 1, 0, 10, '', '2024-02-23__28.png', 1, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-08-04 07:03:32', 34, NULL, NULL, 0, '2024-02-23 03:06:53', NULL),
(22, 'Nước hoa 3CE Sepia Blur Water Tint', 'nuoc-hoa-3ce-sepia-blur-water-tint', 340000, 0, 6, 1, 0, 15, '', '2024-02-23__17.png', 12, 0, 1, 4, NULL, 'a', 1, 4, 4, '2023-08-04 07:04:53', 56, NULL, NULL, 0, '2024-02-23 03:10:57', NULL),
(23, 'Nước hoa 3CE', 'nuoc-hoa-3ce', 340000, 0, 6, 1, 0, 25, '', '2024-02-23__28.png', 1, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-08-04 07:06:26', 68, NULL, NULL, 0, '2024-02-23 03:10:52', NULL),
(24, 'Nước hoa 3CE Peach Tease', 'nuoc-hoa-3ce-peach-tease', 340000, 0, 6, 1, 0, 10, '', '2024-02-23__17.png', 20, 0, 1, 7, NULL, 'a', 0, 0, 4, '2023-08-04 07:08:05', 42, NULL, NULL, 0, '2024-02-23 03:10:47', NULL),
(28, 'Nước hoa #A12', 'nuoc-hoa-a12', 195000, 0, 6, 1, 0, 10, '', '2024-02-23__12.png', 2, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-19 07:46:33', 79, NULL, NULL, 0, '2024-02-23 03:10:43', NULL),
(29, 'Nước hoa Sweet Cinnamon', 'nuoc-hoa-sweet-cinnamon', 190000, 0, 6, 1, 0, 10, '', '2024-02-23__16.png', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-20 07:19:57', 23, NULL, NULL, 0, '2024-02-23 03:10:28', NULL),
(30, 'Nước hoa #A11 Tanned Camellia', 'nuoc-hoa-a11-tanned-camellia', 180000, 0, 6, 1, 0, 10, '', '2024-02-23__1.png', 1, 0, 1, 1, NULL, 'a', 1, 4, 4, '2023-10-20 08:07:07', 28, NULL, NULL, 0, '2024-02-23 03:10:24', NULL),
(31, 'Nước hoa Black Rouge Tint #A02 Dry Rose', 'nuoc-hoa-black-rouge-tint-a02-dry-rose', 180000, 0, 6, 1, 0, 10, '', '2024-02-23__25.png', 1, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-20 08:17:09', 30, NULL, NULL, 0, '2024-02-23 03:10:19', NULL),
(32, 'Nước hoa Velvet Tint Break', 'nuoc-hoa-velvet-tint-break', 280000, 0, 6, 1, 0, 12, '', '2024-02-23__22.png', 1, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-20 08:30:20', 19, NULL, NULL, 0, '2024-02-23 03:10:14', NULL),
(33, 'Nước hoa Velvet Tint Nude', 'nuoc-hoa-velvet-tint-nude', 320000, 0, 6, 1, 0, 12, '', '2024-02-23__21.png', 2, 0, 1, 1, NULL, 'a', 0, 0, 0, '2023-10-20 08:47:21', 44, NULL, NULL, 0, '2024-02-23 03:10:09', NULL),
(34, 'Nước hoa SVR Sebiaclear Active Gel 40ml', 'nuoc-hoa-svr-sebiaclear-active-gel-40ml', 400000, 0, 3, 2, 0, 5, '', '2024-02-23__17.png', 1, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-30 19:43:19', 24, NULL, NULL, 0, '2024-02-23 03:09:56', NULL),
(35, 'Nước hoa Cosrx The Niaciamide', 'nuoc-hoa-cosrx-the-niaciamide-15-cham-soc-toan-dien-cho-da-mun-20ml', 340000, 0, 4, 2, 0, 5, '', '2023-10-31__Nước hoacorsx.jpeg', 1, 0, 1, 1, NULL, 'a', 0, 0, 0, '2023-10-30 19:58:50', 31, NULL, NULL, 0, '2023-10-30 19:59:10', NULL),
(36, 'Nước hoa SVR Sebiaclear', 'nuoc-hoa-svr-tinh-chat-giam-mun-lam-mo-tham-sam-va-mem-min-da-svr-sebiaclear-nuoc-hoa-30ml', 600000, 0, 4, 1, 0, 5, '', '2023-10-31__Nước hoasvr.jpeg', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-30 20:03:33', 19, NULL, NULL, 0, '2023-10-30 20:04:10', NULL),
(37, 'Nước hoa Klairs 35ml', 'nuoc-hoa-klairs-vitamin-c-danh-cho-da-de-kich-ung-freshly-juiced-vitamin-drop-35ml', 300000, 0, 4, 1, 0, 10, '', '2023-10-31__Nước hoaklairs.jpeg', 1, 0, 1, 1, NULL, 'a', 0, 0, 0, '2023-10-30 20:08:23', 39, NULL, NULL, 0, NULL, NULL),
(38, 'Nước hoa Ipek', 'nuoc-hoa-ipek', 30000, 0, 5, 2, 0, 10, '', '2024-02-23__24.png', 1, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-30 20:12:16', 100, NULL, NULL, 0, '2024-02-23 03:09:48', NULL),
(39, 'Nước hoa Silcot Pads 82PCs', 'nuoc-hoa-silcot-pads-82pcs', 50000, 0, 5, 2, 0, 5, '', '2024-02-23__4.png', 1, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-30 20:16:22', 100, NULL, NULL, 0, '2024-02-23 03:09:41', NULL),
(40, 'Nước hoa Jomi', 'nuoc-hoa-jomi', 32000, 0, 5, 1, 0, 10, '', '2024-02-23__17.png', 3, 0, 1, 1, NULL, 'a', 0, 0, 0, '2023-10-30 20:21:06', 99, NULL, NULL, 0, '2024-02-23 03:09:34', NULL),
(41, 'Nước hoa LOréal Paris Pure Hyaluronic Acid 1.5% 30Ml', 'nuoc-hoa-sieu-cap-am-ho-tro-sang-da-loreal-paris-pure-hyaluronic-acid-15-30ml', 400000, 0, 4, 1, 0, 10, '', '2023-10-31__Nước hoalo.jpeg', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 05:09:21', 30, NULL, NULL, 0, NULL, NULL),
(42, 'Nước hoa La Roche-Posay 30ml', 'nuoc-hoa-la-roche-posay-tinh-chat-tai-tao-phuc-hoi-da-duong-da-san-chac-la-roche-posay-hyalu-b5-nuoc-hoa-30ml', 1100000, 0, 4, 1, 0, 5, '', '2023-10-31__Nước hoaro.jpeg', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 05:59:30', 35, NULL, NULL, 0, '2023-10-31 05:59:48', NULL),
(43, 'Nước hoa Maybelline Fit Me Matte + Poreless – 120 Classic Ivory (30ml)', 'kem-nen-maybelline-fit-me-matte-poreless-120-classic-ivory-30ml', 250000, 0, 11, 2, 0, 5, '', '2023-10-31__knmay.jpg', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:09:29', 59, NULL, NULL, 0, '2023-10-31 06:10:45', NULL),
(44, 'Nước hoa Maybelline Fit Me Matte Poreless Warm Nude', 'kem-nen-maybelline-fit-me-matte-poreless-kiem-dau-30ml-128-warm-nude', 200000, 0, 11, 2, 0, 10, '', '2023-10-31__knmaybe.jpg', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:14:57', 46, NULL, NULL, 0, NULL, NULL),
(45, 'Nước hoa Maybelline 128 Warm Nude 18ml', 'kem-nen-min-li-tu-nhien-maybelline-128-warm-nude-18ml', 200000, 0, 11, 2, 0, 12, '', '2023-10-31__knmay128.jpg', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:20:10', 38, NULL, NULL, 0, NULL, NULL),
(46, 'Nước hoa 3CE Velvet Fit Foundation', 'kem-nen-3ce-velvet-fit-foundation-min-li-30g-warm-ivory', 550000, 0, 11, 2, 0, 5, '', '2023-10-31__kn3ce.jpg', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:28:57', 20, NULL, NULL, 0, NULL, NULL),
(47, 'Nước hoa 9 Ô 3CE Multi Palette #Smoother', 'nuoc-hoa-9-o-3ce-multi-palette-smoother', 450000, 0, 12, 2, 0, 3, '', '2024-02-23__26.png', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:38:12', 14, NULL, NULL, 0, '2024-02-23 03:09:28', NULL),
(48, 'Nước hoa 9 Ô 3CE Multi Palette – Butter Cream', 'nuoc-hoa-9-o-3ce-multi-palette-butter-cream', 450000, 0, 12, 1, 0, 5, '', '2024-02-23__25.png', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:46:17', 15, NULL, NULL, 0, '2024-02-23 03:09:14', NULL),
(49, 'Nước hoa Maybelline Hyper Sharp Laser Eyeliner 0.5g', 'nuoc-hoa-maybelline-hyper-sharp-laser-eyeliner-05g', 145000, 0, 12, 2, 0, 10, '', '2024-02-23__25.png', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:50:39', 50, NULL, NULL, 0, '2024-02-23 03:09:04', NULL),
(50, 'Nước hoa Maybelline The Hyper Curl', 'nuoc-hoa-maybelline-the-hyper-curl', 150000, 0, 12, 1, 0, 10, '', '2024-02-23__23.png', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:53:42', 60, NULL, NULL, 0, '2024-02-23 03:08:55', NULL),
(51, 'Nước hoa 3CE Slim Fix Waterproof Volume - Chống Thấm Nước Và Dày Từng Sợi Mi', 'nuoc-hoa-3ce-slim-fix-waterproof-volume-chong-tham-nuoc-va-day-tung-soi-mi', 390000, 0, 12, 2, 0, 5, '', '2024-02-23__14.png', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 06:57:26', 25, NULL, NULL, 0, '2024-02-23 03:08:45', NULL),
(52, 'Nước hoa Maybelline Natural Brown 0.16g', 'nuoc-hoa-maybelline-natural-brown-016g', 120000, 0, 12, 2, 0, 10, '', '2024-02-23__25.png', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 07:00:19', 30, NULL, NULL, 0, '2024-02-23 03:08:37', NULL),
(53, 'Nước hoa La Roche-Posay Anthelios', 'nuoc-hoa-la-roche-posay-anthelios', 450000, 0, 13, 2, 0, 10, '', '2024-02-23__16.png', 0, 0, 1, 0, NULL, 'a', 0, 0, 0, '2023-10-31 07:03:34', 59, NULL, NULL, 0, '2024-02-23 03:08:24', NULL),
(54, 'Nước hoa Loreal Paris Defender', 'nuoc-hoa-loreal-paris-defender', 320000, 0, 13, 2, 0, 10, '', '2024-02-23__20.png', 1, 0, 1, 1, NULL, 'a', 0, 0, 0, '2023-10-31 07:06:46', 33, NULL, NULL, 0, '2024-02-23 03:08:01', NULL),
(55, 'Nước hoa Klairs Soft Airy UV Essence Spf 50 PA+++++', 'nuoc-hoa-klairs-soft-airy-uv-essence-spf-50-pa', 400000, 0, 13, 2, 0, 5, '', '2024-02-23__11.png', 1, 0, 1, 1, NULL, 'a', 0, 0, 0, '2023-10-31 07:09:53', 39, NULL, NULL, 0, '2024-02-23 03:07:37', NULL),
(56, 'Nước hoa Bloom Color Changing Balm', 'nuoc-hoa-bloom-color-changing-balm', 90000, 0, 14, 2, 0, 10, '', '2024-02-23__4.png', 2, 0, 1, 1, NULL, 'a', 0, 0, 0, '2023-10-31 07:12:53', 49, NULL, NULL, 0, '2024-02-23 03:05:53', NULL),
(57, 'Nước hoa Plumping', 'nuoc-hoa-plumping', 300000, 0, 14, 2, 0, 10, '', '2024-02-23__1.png', 4, 0, 1, 1, NULL, 'a', 1, 4, 4, '2023-10-31 07:15:32', 39, NULL, NULL, 0, '2024-02-23 02:54:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `pa_product_id` int NOT NULL DEFAULT '0',
  `pa_attribute_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(33, 8, 15),
(34, 8, 13),
(35, 8, 0),
(36, 8, 4),
(101, 25, 0),
(102, 25, 24),
(103, 25, 6),
(104, 25, 4),
(105, 26, 15),
(106, 26, 13),
(107, 26, 7),
(108, 26, 4),
(129, 27, 25),
(130, 27, 13),
(131, 27, 14),
(132, 27, 27),
(185, 5, 5),
(186, 5, 2),
(187, 5, 9),
(188, 5, 4),
(297, 4, 8),
(298, 4, 2),
(299, 4, 9),
(300, 4, 4),
(305, 3, 5),
(306, 3, 2),
(307, 3, 14),
(308, 3, 4),
(317, 2, 1),
(318, 2, 2),
(319, 2, 3),
(320, 2, 4),
(333, 1, 30),
(334, 1, 16),
(335, 1, 3),
(336, 1, 4),
(445, 35, 12),
(446, 35, 13),
(447, 35, 14),
(448, 35, 4),
(453, 36, 17),
(454, 36, 2),
(455, 36, 9),
(456, 36, 4),
(457, 37, 21),
(458, 37, 13),
(459, 37, 14),
(460, 37, 4),
(481, 41, 1),
(482, 41, 2),
(483, 41, 9),
(484, 41, 4),
(489, 42, 8),
(490, 42, 2),
(491, 42, 9),
(492, 42, 4),
(497, 43, 30),
(498, 43, 11),
(499, 43, 33),
(500, 43, 27),
(501, 44, 30),
(502, 44, 11),
(503, 44, 33),
(504, 44, 27),
(505, 45, 30),
(506, 45, 11),
(507, 45, 33),
(508, 45, 27),
(509, 46, 29),
(510, 46, 13),
(511, 46, 14),
(512, 46, 27),
(565, 57, 29),
(566, 57, 13),
(567, 57, 14),
(568, 57, 27),
(569, 56, 30),
(570, 56, 16),
(571, 56, 33),
(572, 56, 27),
(573, 21, 25),
(574, 21, 13),
(575, 21, 14),
(576, 21, 27),
(577, 55, 21),
(578, 55, 13),
(579, 55, 14),
(580, 55, 4),
(581, 54, 1),
(582, 54, 11),
(583, 54, 33),
(584, 54, 4),
(585, 53, 8),
(586, 53, 2),
(587, 53, 9),
(588, 53, 4),
(589, 52, 30),
(590, 52, 11),
(591, 52, 33),
(592, 52, 27),
(593, 51, 29),
(594, 51, 13),
(595, 51, 14),
(596, 51, 27),
(597, 50, 30),
(598, 50, 11),
(599, 50, 33),
(600, 50, 27),
(601, 49, 30),
(602, 49, 11),
(603, 49, 33),
(604, 49, 27),
(605, 48, 29),
(606, 48, 13),
(607, 48, 14),
(608, 48, 4),
(609, 47, 29),
(610, 47, 13),
(611, 47, 14),
(612, 47, 27),
(613, 40, 0),
(614, 40, 24),
(615, 40, 7),
(616, 40, 4),
(617, 39, 0),
(618, 39, 24),
(619, 39, 7),
(620, 39, 4),
(621, 38, 0),
(622, 38, 24),
(623, 38, 7),
(624, 38, 4),
(625, 34, 17),
(626, 34, 2),
(627, 34, 14),
(628, 34, 4),
(629, 33, 29),
(630, 33, 13),
(631, 33, 14),
(632, 33, 27),
(633, 32, 29),
(634, 32, 13),
(635, 32, 14),
(636, 32, 27),
(637, 31, 25),
(638, 31, 13),
(639, 31, 14),
(640, 31, 27),
(641, 30, 25),
(642, 30, 13),
(643, 30, 14),
(644, 30, 27),
(645, 29, 25),
(646, 29, 13),
(647, 29, 14),
(648, 29, 27),
(657, 28, 25),
(658, 28, 13),
(659, 28, 14),
(660, 28, 27),
(661, 24, 29),
(662, 24, 13),
(663, 24, 14),
(664, 24, 27),
(665, 23, 29),
(666, 23, 13),
(667, 23, 14),
(668, 23, 27),
(669, 22, 29),
(670, 22, 13),
(671, 22, 14),
(672, 22, 27),
(673, 6, 31),
(674, 6, 10),
(675, 6, 32),
(676, 6, 4),
(677, 7, 12),
(678, 7, 13),
(679, 7, 14),
(680, 7, 4),
(681, 9, 17),
(682, 9, 2),
(683, 9, 9),
(684, 9, 4),
(685, 10, 18),
(686, 10, 19),
(687, 10, 6),
(688, 10, 4),
(689, 11, 17),
(690, 11, 16),
(691, 11, 9),
(692, 11, 4),
(693, 12, 21),
(694, 12, 13),
(695, 12, 14),
(696, 12, 4),
(697, 13, 22),
(698, 13, 16),
(699, 13, 14),
(700, 13, 4),
(701, 14, 8),
(702, 14, 2),
(703, 14, 9),
(704, 14, 4),
(705, 20, 23),
(706, 20, 10),
(707, 20, 9),
(708, 20, 4),
(709, 19, 22),
(710, 19, 24),
(711, 19, 7),
(712, 19, 4),
(713, 18, 23),
(714, 18, 24),
(715, 18, 6),
(716, 18, 4),
(717, 17, 23),
(718, 17, 24),
(719, 17, 7),
(720, 17, 4),
(721, 16, 23),
(722, 16, 24),
(723, 16, 7),
(724, 16, 4),
(725, 15, 5),
(726, 15, 2),
(727, 15, 9),
(728, 15, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint UNSIGNED NOT NULL,
  `pk_product_id` int NOT NULL DEFAULT '0',
  `pk_keyword_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `pi_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `r_user_id` int NOT NULL DEFAULT '0',
  `r_product_id` int NOT NULL DEFAULT '0',
  `r_number` tinyint NOT NULL DEFAULT '0',
  `r_status` tinyint NOT NULL DEFAULT '0',
  `r_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `r_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`, `r_name`) VALUES
(3, 3, 4, 5, 0, 'tốt', '2023-10-22 05:34:27', '2023-10-22 05:34:27', ''),
(5, 7, 30, 4, 0, 'Tạm', '2023-10-23 07:23:38', '2023-10-23 07:23:38', ''),
(6, 3, 22, 4, 0, NULL, '2023-10-23 18:17:21', '2023-10-23 18:17:21', ''),
(7, 9, 57, 4, 0, 'a', '2023-11-02 07:16:19', '2023-11-02 07:16:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `sd_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint NOT NULL DEFAULT '1',
  `sd_active` tinyint NOT NULL DEFAULT '1',
  `sd_sort` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'http://127.0.0.1:8000/', '2023-10-12__bia1.png', 1, 1, 0, '2023-10-12 06:44:09', '2023-10-12 06:44:09'),
(2, 'Slide 2', 'http://127.0.0.1:8000/san-pham', '2024-02-23__event1.jpg', 1, 1, 0, '2024-02-23 03:32:54', '2024-02-23 03:32:54'),
(3, 'Slide 3', 'http://127.0.0.1:8000/san-pham', '2024-02-23__e2.jpg', 1, 1, 0, '2024-02-23 03:33:00', '2024-02-23 03:33:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint UNSIGNED NOT NULL,
  `s_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint NOT NULL DEFAULT '0',
  `s_md5` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng Dẫn Mua Hàng', NULL, 1, NULL, '<p style=\"text-align:center\"><span style=\"color:#2980b9\"><span style=\"font-size:20px\">DECEMBER cosmetic Việt Nam h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch h&agrave;ng.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Với chương tr&igrave;nh ưu đ&atilde;i mua đơn h&agrave;ng từ <span style=\"color:#c0392b\">&gt;90K&nbsp;</span>ch&uacute;ng t&ocirc;i sẵn s&agrave;ng miễn ph&iacute; dịch vụ ship cho tất cả c&aacute;c đơn h&agrave;ng.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><img alt=\"Thông tin về vận chuyển và giao nhận\" src=\"https://d3rzzb9pdm93i0.cloudfront.net/2022/06/16563112388eb48f7c9dc29985c055284505002509.jpg\" /></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Đối với qu&yacute; kh&aacute;ch h&agrave;ng ở tại khu vực Ninh Kiều, Cần Thơ. Cửa h&agrave;ng đang c&oacute; ch&iacute;nh s&aacute;ch freeship v&agrave; ship hỏa tốc trong 1h d&agrave;nh cho tất cả c&aacute;c kh&aacute;ch h&agrave;ng trong khu vực Ninh Kiều.&nbsp;</span></p>\r\n\r\n<p><img alt=\"TẢI Bản đồ Quận Ninh Kiều, TP Cần Thơ khổ lớn phóng to 2023\" src=\"https://bandovietnam.com.vn/media/article/ban-do-quan-ninh-kieu.jpeg\" /></p>\r\n\r\n<p><span style=\"font-size:18px\">Kh&aacute;ch h&agrave;ng c&oacute; thể tiến h&agrave;nh mua h&agrave;ng th&ocirc;ng qua 2 c&aacute;ch. C&aacute;ch 1 mua h&agrave;ng trực tiếp tr&ecirc;n web, c&oacute; thể thanh to&aacute;n khi nhận h&agrave;ng hoặc thanh to&aacute;n trực tiếp qua thẻ t&iacute;n dụng. C&aacute;ch 2: LI&ecirc;n hệ qua số hotline 1900.2312 để li&ecirc;n hệ mua h&agrave;ng trực tiếp.</span></p>\r\n\r\n<p><img alt=\"LIÊN HỆ\" src=\"https://isfm.ufm.edu.vn/Resources/Images/SubDomain/isfm/Artboard-8@5x.png\" /></p>\r\n\r\n<p><span style=\"font-size:18px\">Sau khi đ&atilde; x&aacute;c nhận đơn h&agrave;ng, cửa h&agrave;ng sẽ tiến h&agrave;nh g&oacute;i h&agrave;ng v&agrave; gởi đi nhanh nhất, kh&aacute;ch h&agrave;ng c&oacute; thể theo d&otilde;i t&igrave;nh trạng đơn h&agrave;ng qua phần &quot;Quản l&yacute; đơn h&agrave;ng&quot;&nbsp;<em><u>http://127.0.0.1:8000/account/transaction</u></em>.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng v&agrave; ủng hộ DECEMBER cosmetic.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Nếu c&oacute; sai s&oacute;t xin qu&yacute; kh&aacute;ch li&ecirc;n hệ qua hotline 1900.2312.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">December cosmetic Việt Nam xin tr&acirc;n trọng cảm ơn!!</span></p>\r\n\r\n<p>&nbsp;</p>', '2023-10-12 18:15:53', '2023-10-12 18:15:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint UNSIGNED NOT NULL,
  `sl_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Mỹ Phẩm Sài Gòn', '0999999999', 'nhacungcapmypham@gmail.com', 'Quận 2,Tp. Hồ Chí Minh (TPHCM)', '2023-08-04 02:39:00', NULL),
(2, 'Mỹ Phẩm Việt', '034955555', 'myphamviet@gmail.com', 'Đông Xuân, Hà Nội', '2023-10-21 18:15:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `tst_user_id` int NOT NULL DEFAULT '0',
  `tst_admin_id` int NOT NULL DEFAULT '0',
  `tst_total_money` int NOT NULL DEFAULT '0',
  `tst_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint NOT NULL DEFAULT '1',
  `tst_type` tinyint NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(4, 3, 0, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, -1, 2, '2023-09-15 11:48:09', '2023-09-15 11:48:46'),
(5, 3, 1, 134400, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-09-15 12:03:43', '2023-09-17 06:02:06'),
(6, 4, 1, 272000, 'Vy', 'vy123@gmail.com', '0933188900', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-05 17:54:05', '2023-10-06 11:32:21'),
(7, 5, 1, 134400, 'Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0766827652', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-05 18:00:52', '2023-10-05 18:02:57'),
(8, 3, 0, 82000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 09:34:53', '2023-10-06 09:43:11'),
(9, 3, 0, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 09:43:41', '2023-10-06 09:46:17'),
(10, 3, 1, 377280, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 11:18:48', '2023-10-06 11:19:36'),
(12, 3, 1, 272000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 2, '2023-10-06 11:51:55', '2023-10-06 12:05:24'),
(15, 3, 1, 238140, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-10 14:11:50', '2023-10-10 14:12:29'),
(16, 3, 1, 590000, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-13 08:24:06', '2023-10-24 18:23:51'),
(17, 3, 1, 281600, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-20 08:48:20', '2023-10-30 18:13:43'),
(18, 3, 1, 416500, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', '907077125', 'Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-20 08:52:59', '2023-10-22 05:31:47'),
(19, 7, 1, 162000, 'Khánh', 'khanh123@gmail.com', '0907077417', 'Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, 3, 1, '2023-10-23 07:22:28', '2023-10-23 07:22:48'),
(20, 8, 1, 908000, 'Nhi2312', 'lethichucnhi2312@gmail.com', '0774836320', 'Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, 2, 1, '2023-10-31 05:02:22', '2023-10-31 06:00:16'),
(21, 9, 1, 1047800, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'a', 'a', 3, 1, '2023-11-02 07:11:56', '2023-11-02 07:15:53'),
(22, 9, 0, 470700, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'ad', 'h', 1, 1, '2023-12-03 09:26:14', NULL),
(23, 9, 0, 306000, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'a', 'a', 1, 2, '2024-02-23 03:34:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int NOT NULL DEFAULT '0',
  `log_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint NOT NULL DEFAULT '0',
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Lê Thị Chúc Nhi', 'nhi123@gmail.com', NULL, '$2y$10$rXrKZ0eMQKp0m8j7d.bWwutMrCUyzV8hxNmKgUtrFZFKET4pBRNOa', '907077125', -2820060, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-15T15:08:28.799463Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-19T14:51:13.368800Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-22T05:33:39.896501Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"116.0.0.0\",\"time\":\"2023-09-30T15:16:14.303399Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-03T06:56:44.495003Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-04T08:47:10.561347Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-05T18:31:12.488211Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-06T09:22:23.396460Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-06T11:18:28.754070Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-09T08:18:27.604363Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-10T14:03:48.511352Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-11T18:30:35.844622Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-12T18:01:04.397101Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-13T08:02:31.184305Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"117.0.0.0\",\"time\":\"2023-10-13T08:15:47.156260Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-20T08:48:12.060825Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-22T05:33:28.392789Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-23T18:08:53.651141Z\"}]', 4, NULL, '2023-09-19__nen.jpg', NULL, '2023-09-15 11:47:12', '2023-09-19 14:51:44'),
(4, 'Vy', 'vy123@gmail.com', NULL, '$2y$10$jcrZx3gRv7ms5WsagqXGSOW/03exND7VR8LmB8bRSYXDae.ajutDe', '0933188900', -272000, NULL, 1, NULL, NULL, NULL, '2023-10-05 17:38:00', NULL),
(5, 'Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', NULL, '$2y$10$injnEcIuMrAb3hPpqiu9NOfEGdcEvhKe6Rkz2lhldwktfZTjrM8sa', '0766827652', -134400, NULL, 0, NULL, NULL, NULL, '2023-10-05 18:00:30', NULL),
(6, 'Khả Hân', 'khanhan122001@gmail.com', NULL, '$2y$10$GxPprylryxjOwOkp2bx4mueUmd4XYFpE3pzdczWEMLmLCw5IyCGB.', '0909339199', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-24T18:10:46.727052Z\"}]', 1, NULL, NULL, NULL, '2023-10-09 08:16:54', NULL),
(7, 'Khánh', 'khanh123@gmail.com', NULL, '$2y$10$pwYNklFcibljGdg7oxxUeek8jLHVqeNMwZSkfIGUp9qYNWnm3I9OO', '0907077417', -162000, NULL, 0, NULL, NULL, NULL, '2023-10-23 07:21:36', NULL),
(8, 'Nhi2312', 'lethichucnhi2312@gmail.com', NULL, '$2y$10$gWj0W.v8qImbgegv3DwmgOokouUZyxYvxtH7ZfW/QoXxefpCm52x6', '0774836320', -908000, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-10-31T05:01:21.447191Z\"}]', 0, NULL, NULL, NULL, '2023-10-30 18:22:47', NULL),
(9, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', NULL, '$2y$10$H4unk/E3S/VWq96Tyb36DeFHR5anT1cfxavOrpijmDtNV9mrvpm3m', '0368822642', -1518500, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-02T07:00:47.593180Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-02T07:12:46.426071Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"118.0.0.0\",\"time\":\"2023-11-03T02:42:31.407630Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"119.0.0.0\",\"time\":\"2023-12-03T09:25:37.995283Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"121.0.0.0\",\"time\":\"2024-02-23T03:34:44.380144Z\"}]', 5, NULL, NULL, NULL, '2023-11-02 06:56:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint UNSIGNED NOT NULL,
  `uf_product_id` int NOT NULL DEFAULT '0',
  `uf_user_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(4, 15, 9),
(3, 25, 3),
(2, 26, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint UNSIGNED NOT NULL,
  `w_product_id` int NOT NULL,
  `w_price` int NOT NULL DEFAULT '0',
  `w_qty` int NOT NULL DEFAULT '0',
  `w_time_warehouse` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `warehouses`
--

INSERT INTO `warehouses` (`id`, `w_product_id`, `w_price`, `w_qty`, `w_time_warehouse`, `created_at`, `updated_at`) VALUES
(1, 22, 130000, 12, NULL, '2023-10-11 18:56:05', '2023-10-11 18:56:05'),
(2, 17, 100000, 13, NULL, '2023-10-11 19:35:52', '2023-10-11 19:35:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_w_order_id_index` (`w_order_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Chỉ mục cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Chỉ mục cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Chỉ mục cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_w_product_id_index` (`w_product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=729;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
