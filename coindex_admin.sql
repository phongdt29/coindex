-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2018 at 12:52 PM
-- Server version: 5.6.34
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coindex_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_robot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`, `position`, `description`, `access`, `target_open`, `meta_robot`, `image`, `alt`, `status`, `slug`, `title_tag`, `meta_keywords_tag`, `meta_description_tag`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin Tức Thị Trường', 0, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Tin Tức Thị Trường', 'on', 'tin-tuc-thi-truong', 'Tin Tức Thị Trường', NULL, NULL, 1, '2018-11-14 13:38:31', '2018-11-14 13:38:31'),
(2, 'Phân Tích Thị Trường', 0, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Phân Tích Thị Trường', 'on', 'phan-tich-thi-truong', 'Phân Tích Thị Trường', NULL, NULL, 1, '2018-11-14 13:38:43', '2018-11-14 13:38:43'),
(3, 'Đầu Tư ICO', 0, 3, NULL, 0, '_self', 'noindex,follow', NULL, 'Đầu Tư ICO', 'on', 'dau-tu-ico', 'Đầu Tư ICO', NULL, NULL, 1, '2018-11-14 13:38:48', '2018-11-14 13:38:48'),
(4, 'Cryptopedia', 0, 4, NULL, 0, '_self', 'noindex,follow', NULL, 'Cryptopedia', 'on', 'cryptopedia', 'Cryptopedia', NULL, NULL, 1, '2018-11-14 13:38:53', '2018-11-14 13:38:53'),
(5, 'Sự Kiện Nổi Bật', 0, 5, NULL, 0, '_self', 'noindex,follow', NULL, 'Sự Kiện Nổi Bật', 'on', 'su-kien-noi-bat', 'Sự Kiện Nổi Bật', NULL, NULL, 1, '2018-11-14 13:39:05', '2018-11-14 13:39:05'),
(6, 'Tin Tức Bitcoin', 1, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Tin Tức Bitcoin', 'on', 'tin-tuc-bitcoin', 'Tin Tức Bitcoin', NULL, NULL, 1, '2018-11-14 13:44:50', '2018-11-14 13:44:50'),
(7, 'Tin Tức Ethereum', 1, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Tin Tức Ethereum', 'on', 'tin-tuc-ethereum', 'Tin Tức Ethereum', NULL, NULL, 1, '2018-11-14 13:44:58', '2018-11-14 13:44:58'),
(8, 'Tin Tức Altcoin', 1, 3, NULL, 0, '_self', 'noindex,follow', NULL, 'Tin Tức Altcoin', 'on', 'tin-tuc-altcoin', 'Tin Tức Altcoin', NULL, NULL, 1, '2018-11-14 13:45:07', '2018-11-14 13:45:07'),
(9, 'Tin Tức Blockchain', 1, 4, NULL, 0, '_self', 'noindex,follow', NULL, 'Tin Tức Blockchain', 'on', 'tin-tuc-blockchain', 'Tin Tức Blockchain', NULL, NULL, 1, '2018-11-14 13:45:17', '2018-11-14 13:45:17'),
(10, 'Luật & Chính sách', 1, 5, NULL, 0, '_self', 'noindex,follow', NULL, 'Luật & Chính sách', 'on', 'luat-chinh-sach', 'Luật & Chính sách', NULL, NULL, 1, '2018-11-14 13:45:24', '2018-11-14 13:45:24'),
(11, 'Cảnh Báo Lừa Đảo', 1, 6, NULL, 0, '_self', 'noindex,follow', NULL, 'Cảnh Báo Lừa Đảo', 'on', 'canh-bao-lua-dao', 'Cảnh Báo Lừa Đảo', NULL, NULL, 1, '2018-11-14 13:45:38', '2018-11-14 15:24:53'),
(12, 'Thông tin top 10', 2, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Thông tin top 10', 'on', 'thong-tin-top-10', 'Thông tin top 10', NULL, NULL, 1, '2018-11-14 13:45:47', '2018-11-14 13:45:47'),
(13, 'Tổng quan hàng tuần', 2, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Tổng quan hàng tuần', 'on', 'tong-quan-hang-tuan', 'Tổng quan hàng tuần', NULL, NULL, 1, '2018-11-14 13:45:53', '2018-11-14 13:45:53'),
(14, 'Phân tích thị trườnggg', 2, 3, NULL, 0, '_self', 'noindex,follow', NULL, 'Phân tích thị trườnggg', 'on', 'phan-tich-thi-truonggg', 'Phân tích thị trườnggg', NULL, NULL, 1, '2018-11-14 13:46:28', '2018-11-14 13:46:28'),
(15, 'Bản đồ nhiệt Heatmap', 2, 4, NULL, 0, '_self', 'noindex,follow', NULL, 'Bản đồ nhiệt Heatmap', 'on', 'ban-do-nhiet-heatmap', 'Bản đồ nhiệt Heatmap', NULL, NULL, 1, '2018-11-14 13:46:37', '2018-11-14 13:46:37'),
(16, 'Phân Tích ICO Tiềm Năng', 3, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Phân Tích ICO Tiềm Năng', 'on', 'phan-tich-ico-tiem-nang', 'Phân Tích ICO Tiềm Năng', NULL, NULL, 1, '2018-11-14 13:47:16', '2018-11-14 13:47:16'),
(17, 'Lịch ICO', 3, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Lịch ICO', 'on', 'lich-ico', 'Lịch ICO', NULL, NULL, 1, '2018-11-14 13:47:25', '2018-11-14 13:47:25'),
(18, 'Định nghĩa Blockchain', 4, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Định nghĩa Blockchain', 'on', 'dinh-nghia-blockchain', 'Định nghĩa Blockchain', NULL, NULL, 1, '2018-11-14 13:47:46', '2018-11-14 13:47:46'),
(19, 'Phân tích tính năng', 4, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Phân tích tính năng', 'on', 'phan-tich-tinh-nang', 'Phân tích tính năng', NULL, NULL, 1, '2018-11-14 13:47:52', '2018-11-14 13:47:52'),
(20, 'Phân tích kỹ thuật', 4, 3, NULL, 0, '_self', 'noindex,follow', NULL, 'Phân tích kỹ thuật', 'on', 'phan-tich-ky-thuat', 'Phân tích kỹ thuật', NULL, NULL, 1, '2018-11-14 13:47:58', '2018-11-14 13:47:58'),
(21, 'Kiểm soát rủi ro', 4, 4, NULL, 0, '_self', 'noindex,follow', NULL, 'Kiểm soát rủi ro', 'on', 'kiem-soat-rui-ro', 'Kiểm soát rủi ro', NULL, NULL, 1, '2018-11-14 13:48:06', '2018-11-14 13:48:06'),
(22, 'Nhân vật nổi tiếng', 4, 5, NULL, 0, '_self', 'noindex,follow', NULL, 'Nhân vật nổi tiếng', 'on', 'nhan-vat-noi-tieng', 'Nhân vật nổi tiếng', NULL, NULL, 1, '2018-11-14 13:48:13', '2018-11-14 13:48:13'),
(23, 'Trong nước', 5, 1, NULL, 0, '_self', 'noindex,follow', NULL, 'Trong nước', 'on', 'trong-nuoc', 'Trong nước', NULL, NULL, 1, '2018-11-14 13:48:19', '2018-11-14 13:48:19'),
(24, 'Ngoài nước', 5, 2, NULL, 0, '_self', 'noindex,follow', NULL, 'Ngoài nước', 'on', 'ngoai-nuoc', 'Ngoài nước', NULL, NULL, 1, '2018-11-14 13:48:25', '2018-11-14 13:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

CREATE TABLE `category_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`id`, `category_id`, `news_id`) VALUES
(51, 9, 5),
(52, 8, 4),
(53, 1, 3),
(54, 6, 3),
(55, 1, 2),
(56, 7, 2),
(57, 6, 1),
(58, 11, 1),
(59, 3, 1),
(60, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  `dislike` int(11) NOT NULL DEFAULT '0',
  `report` int(11) NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_site` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Vũ Quốc Tuấn',
  `dc_created` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dc_rights_copyright` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'QuocTuan.Info',
  `dc_creator_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Vũ Quốc Tuấn',
  `dc_creator_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'contact.quoctuan@gmail.com',
  `dc_identifier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dc_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vi-VN',
  `robots` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'index,follow',
  `geo_placename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ho Chi Minh, Viet Nam',
  `geo_region` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geo_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icbm` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisit_after` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `no_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_page_news` int(11) NOT NULL DEFAULT '10',
  `item_page_product` int(11) NOT NULL DEFAULT '10',
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name_site`, `title`, `keywords`, `description`, `logo`, `copyright`, `author`, `dc_created`, `dc_rights_copyright`, `dc_creator_name`, `dc_creator_email`, `dc_identifier`, `dc_language`, `robots`, `geo_placename`, `geo_region`, `geo_position`, `icbm`, `revisit_after`, `host`, `email`, `pass`, `port`, `no_photo`, `item_page_news`, `item_page_product`, `contact_email`, `contact_phone`, `contact_address`, `facebook`, `youtube`, `twitter`, `linkedin`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'QuocTuan.Info', 'Quốc Tuấn', 'lập trình php,lập trình web', 'Trung tâm đào tạo lập trình', 'public/backend/assets/images/logo.png', 'QuocTuan.Info', 'Vũ Quốc Tuấn', '2018-12-31', 'QuocTuan.Info', 'Vũ Quốc Tuấn', 'contact.quoctuan@gmail.com', 'http://quoctuan.info/', 'vi-VN', 'index,follow', 'Hồ Chí Minh,Việt Nam', 'VN-HCM', '10.823099;106.629664', '10.823099, 106.629664', 'days', 'smtp.gmail.com', 'abc@gmail.com', '12345', 465, NULL, 10, 10, 'contact.quoctuan@gmail.com', '0933649647', '123 Nguyễn Thông P9 Q3 TP.HCM', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://twitter.com/', 'https://vn.linkedin.com/', 'https://plus.google.com/', '2018-11-12 15:18:07', '2018-11-12 15:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timework` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `address`, `phone`, `fax`, `email`, `map`, `skype`, `facebook`, `image`, `timework`, `created_at`, `updated_at`) VALUES
(1, '0', NULL, NULL, NULL, 'aa@gmail.com', NULL, NULL, NULL, NULL, NULL, '2018-11-22 14:22:09', '2018-11-22 14:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `images_news`
--

CREATE TABLE `images_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `news_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images_product`
--

CREATE TABLE `images_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `title`, `action`, `controller`, `fullname`, `created_at`, `updated_at`) VALUES
(1, 'Tin Tức Thị Trường (1)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:38:31', '2018-11-14 13:38:31'),
(2, 'Phân Tích Thị Trường (2)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:38:43', '2018-11-14 13:38:43'),
(3, 'Đầu Tư ICO (3)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:38:49', '2018-11-14 13:38:49'),
(4, 'Cryptopedia (4)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:38:53', '2018-11-14 13:38:53'),
(5, 'Sự Kiện Nổi Bật (5)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:39:05', '2018-11-14 13:39:05'),
(6, 'Tin Tức Bitcoin (6)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:44:50', '2018-11-14 13:44:50'),
(7, 'Tin Tức Ethereum (7)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:44:59', '2018-11-14 13:44:59'),
(8, 'Tin Tức Altcoin (8)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:45:07', '2018-11-14 13:45:07'),
(9, 'Tin Tức Blockchain (9)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:45:17', '2018-11-14 13:45:17'),
(10, 'Luật & Chính sách (10)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:45:24', '2018-11-14 13:45:24'),
(11, 'CẢNH BÁO LỪA ĐẢO (Các nạn nhân có thể gửi bài để đăng ở đây) (11)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:45:38', '2018-11-14 13:45:38'),
(12, 'Thông tin top 10 (12)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:45:47', '2018-11-14 13:45:47'),
(13, 'Tổng quan hàng tuần (13)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:45:53', '2018-11-14 13:45:53'),
(14, 'Phân tích thị trườnggg (14)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:46:28', '2018-11-14 13:46:28'),
(15, 'Bản đồ nhiệt Heatmap (15)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:46:37', '2018-11-14 13:46:37'),
(16, 'Phân Tích ICO Tiềm Năng (16)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:47:16', '2018-11-14 13:47:16'),
(17, 'Lịch ICO (17)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:47:25', '2018-11-14 13:47:25'),
(18, 'Định nghĩa Blockchain (18)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:47:46', '2018-11-14 13:47:46'),
(19, 'Phân tích tính năng (19)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:47:52', '2018-11-14 13:47:52'),
(20, 'Phân tích kỹ thuật (20)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:47:58', '2018-11-14 13:47:58'),
(21, 'Kiểm soát rủi ro (21)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:48:06', '2018-11-14 13:48:06'),
(22, 'Nhân vật nổi tiếng (22)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:48:13', '2018-11-14 13:48:13'),
(23, 'Trong nước (23)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:48:19', '2018-11-14 13:48:19'),
(24, 'Ngoài nước (24)', 'Add', 'Category', 'Lê Quang An (1)', '2018-11-14 13:48:25', '2018-11-14 13:48:25'),
(25, 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall (1)', 'Add', 'News', 'Lê Quang An (1)', '2018-11-14 14:32:44', '2018-11-14 14:32:44'),
(26, 'Japan: Tokyo Police Arrest 8 Men Allegedly Involved in $68 Million Crypto Pyramid Scheme (2)', 'Add', 'News', 'Lê Quang An (1)', '2018-11-14 14:33:26', '2018-11-14 14:33:26'),
(27, 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall (1)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-14 14:33:44', '2018-11-14 14:33:44'),
(28, 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa (3)', 'Add', 'News', 'Lê Quang An (1)', '2018-11-14 14:35:22', '2018-11-14 14:35:22'),
(29, 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall (1)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-14 14:50:12', '2018-11-14 14:50:12'),
(30, 'Japan: Tokyo Police Arrest 8 Men Allegedly Involved in $68 Million Crypto Pyramid Scheme (2)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-14 14:51:16', '2018-11-14 14:51:16'),
(31, 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa (3)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-14 14:52:07', '2018-11-14 14:52:07'),
(32, 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall (1)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-14 15:17:56', '2018-11-14 15:17:56'),
(33, 'Japan: Tokyo Police Arrest 8 Men Allegedly Involved in $68 Million Crypto Pyramid Scheme (2)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-14 15:18:02', '2018-11-14 15:18:02'),
(34, 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa (3)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-14 15:18:07', '2018-11-14 15:18:07'),
(35, 'Cảnh Báo Lừa Đảo (11)', 'Edit', 'Category', 'Lê Quang An (1)', '2018-11-14 15:24:53', '2018-11-14 15:24:53'),
(36, 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa (3)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-22 13:43:57', '2018-11-22 13:43:57'),
(37, 'SPONSORED Options Are the Answer for Dealing with ‘Bearish’ Crypto Market, Trading Platform Says (4)', 'Add', 'News', 'Lê Quang An (1)', '2018-11-22 13:59:31', '2018-11-22 13:59:31'),
(38, 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa (3)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-22 15:20:20', '2018-11-22 15:20:20'),
(39, 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall (1)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 02:34:26', '2018-11-23 02:34:26'),
(40, 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall (1)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 02:40:19', '2018-11-23 02:40:19'),
(41, 'SBI Ripple Asia, Japan Payment Card Consortium Partner on Blockchain System to Fight Fraud (5)', 'Add', 'News', 'Lê Quang An (1)', '2018-11-23 14:52:52', '2018-11-23 14:52:52'),
(42, 'SBI Ripple Asia, Japan Payment Card Consortium on Blockchain System to Fight Fraud (5)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 14:53:26', '2018-11-23 14:53:26'),
(43, 'SPONSORED Options Are the Answer for Dealing with ‘Bearish’ Market, Trading Platform Says (4)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 14:54:04', '2018-11-23 14:54:04'),
(44, 'SPONSORED Options Are the Answer for Dealing with ‘Bearish’ Market, Trading Platform Says (4)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 15:06:08', '2018-11-23 15:06:08'),
(45, 'SBI Ripple Asia, Japan Payment Card Consortium on Blockchain System to Fight Fraud (5)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 15:09:49', '2018-11-23 15:09:49'),
(46, 'SPONSORED Options Are the Answer for Dealing with ‘Bearish’ Market, Trading Platform Says (4)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 15:09:58', '2018-11-23 15:09:58'),
(47, 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa (3)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 15:10:07', '2018-11-23 15:10:07'),
(48, 'Japan: Tokyo Police Arrest 8 Men Allegedly Involved in $68 Million Crypto Pyramid Scheme (2)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 15:10:15', '2018-11-23 15:10:15'),
(49, 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall (1)', 'Edit', 'News', 'Lê Quang An (1)', '2018-11-23 15:10:22', '2018-11-23 15:10:22'),
(50, 'Table : news - Column : featured', 'On', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-25 14:23:07', '2018-11-25 14:23:07'),
(51, 'Table : news - Column : featured', 'On', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-25 14:23:07', '2018-11-25 14:23:07'),
(52, 'Table : news - Column : featured', 'Off', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-25 14:25:09', '2018-11-25 14:25:09'),
(53, 'Table : news - Column : featured', 'On', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-25 14:26:25', '2018-11-25 14:26:25'),
(54, 'Table : news - Column : featured', 'Off', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-25 14:26:26', '2018-11-25 14:26:26'),
(55, 'Table : news - Column : featured', 'Off', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-25 14:26:27', '2018-11-25 14:26:27'),
(56, 'Table : news - Column : featured', 'On', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-25 14:28:37', '2018-11-25 14:28:37'),
(57, 'Table : news - Column : featured', 'Off', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-26 00:31:25', '2018-11-26 00:31:25'),
(58, 'Table : news - Column : featured', 'On', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-26 00:32:15', '2018-11-26 00:32:15'),
(59, 'Table : news - Column : featured', 'On', 'Update Status - Feature', 'Lê Quang An (1)', '2018-11-26 00:32:45', '2018-11-26 00:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `log_login`
--

CREATE TABLE `log_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_login`
--

INSERT INTO `log_login` (`id`, `email`, `browser`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'admin@coindex.vn', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/75.4.124 Chrome/69.4.3497.124 Safari/537.36', '::1', '2018-11-12 15:19:37', '2018-11-12 15:19:37'),
(2, 'admin@coindex.vn', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/75.4.124 Chrome/69.4.3497.124 Safari/537.36', '::1', '2018-11-14 13:37:39', '2018-11-14 13:37:39'),
(3, 'admin@coindex.vn', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/75.4.124 Chrome/69.4.3497.124 Safari/537.36', '::1', '2018-11-22 13:40:46', '2018-11-22 13:40:46'),
(4, 'admin@coindex.vn', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/75.4.124 Chrome/69.4.3497.124 Safari/537.36', '::1', '2018-11-22 15:19:36', '2018-11-22 15:19:36'),
(5, 'admin@coindex.vn', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '171.250.188.97', '2018-11-23 02:29:24', '2018-11-23 02:29:24'),
(6, 'admin@coindex.vn', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/75.4.124 Chrome/69.4.3497.124 Safari/537.36', '171.233.228.153', '2018-11-23 14:51:36', '2018-11-23 14:51:36'),
(7, 'admin@coindex.vn', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/75.4.124 Chrome/69.4.3497.124 Safari/537.36', '171.233.228.153', '2018-11-25 14:20:55', '2018-11-25 14:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(10) UNSIGNED NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `logo`, `website`, `address`, `email`, `phone`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Updating', NULL, NULL, NULL, NULL, NULL, 'Updating', '2018-11-12 15:18:07', '2018-11-12 15:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_16_131544_create_category_table', 1),
(4, '2017_06_16_131648_create_post_table', 1),
(5, '2017_06_16_131656_create_tags_table', 1),
(6, '2017_06_16_131704_create_news_table', 1),
(7, '2017_06_16_131717_create_category_news_table', 1),
(8, '2017_06_16_131727_create_manufacturer_table', 1),
(9, '2017_06_16_131956_create_attribute_table', 1),
(10, '2017_06_16_132005_create_product_table', 1),
(11, '2017_06_16_132022_create_images_product_table', 1),
(12, '2017_06_16_132031_create_attribute_product_table', 1),
(13, '2017_06_16_132040_create_category_product_table', 1),
(14, '2017_07_21_185638_create_position_table', 1),
(15, '2017_07_21_185751_create_banner_table', 1),
(16, '2017_07_24_154335_create_role_table', 1),
(17, '2017_08_01_001752_create_contact_table', 1),
(18, '2017_08_01_005218_create_config_table', 1),
(19, '2017_10_09_134933_create_mail_table', 1),
(20, '2017_10_15_010711_create_comment_table', 1),
(21, '2017_10_15_141059_create_log_table', 1),
(22, '2017_10_18_004803_create_log_login_table', 1),
(23, '2017_11_01_225632_create_social_login_table', 1),
(24, '2017_12_01_235022_create_images_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `foot` text COLLATE utf8mb4_unicode_ci,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_robot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '100',
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `origin`, `intro`, `content`, `foot`, `access`, `target_open`, `meta_robot`, `viewed`, `youtube`, `image`, `alt`, `status`, `featured`, `slug`, `title_tag`, `meta_keywords_tag`, `meta_description_tag`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall', 'BItcon', NULL, '<p>A wobble in Bitcoin has spelled increased volatility for the majority of big-name cryptocurrencies.</p>', '<p><img alt=\"Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall\" border=\"0\" height=\"67%\" hspace=\"0\" src=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9iY2Q0MzFmMzcyNTA5MzFhNmNlMmFiY2ZhNmNkZGZlZC5qcGc=.jpg\" srcset=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9iY2Q0MzFmMzcyNTA5MzFhNmNlMmFiY2ZhNmNkZGZlZC5qcGc=.jpg 1x, https://images.cointelegraph.com/images/1480_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9iY2Q0MzFmMzcyNTA5MzFhNmNlMmFiY2ZhNmNkZGZlZC5qcGc=.jpg 2x\" style=\"width:100%;height:67%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border:0px solid black;\" vspace=\"0\" width=\"100%\" /></p>\r\n\r\n<p>NEWS</p>\r\n\r\n<p dir=\"ltr\">Cryptocurrency markets are showing red across the board Nov. 14, as a steep drop in Bitcoin (<a href=\"https://cointelegraph.com/bitcoin-price-index\">BTC</a>) ricocheted across major assets.</p>\r\n\r\n<p>Data from Cointelegraph’s price tracker, Coin360, and&nbsp;<a href=\"http://bitcointicker.co/stamp/btc/usd/3hr/\" rel=\"nofollow,noopener\" target=\"_blank\">Bitcointicker</a>&nbsp;confirms BTC/USD bouncing off support around $6,150 on exchanges, at press time hovering above $6,200 again.</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Market visualization\" border=\"0\" height=\"58%\" hspace=\"0\" src=\"https://s3.cointelegraph.com/storage/uploads/view/d41d6e84da562faf6150e8554107ed3f.png\" style=\"width:100%;height:58%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border:0px solid black;\" title=\"Market visualization\" vspace=\"0\" width=\"100%\" /></p>\r\n\r\n<p><em>Market visualization. Source:&nbsp;<a href=\"https://coin360.io/\" rel=\"nofollow,noopener\" target=\"_blank\">Coin360</a></em></p>\r\n\r\n<p>The dip to $6,150 marks a fresh test of the stability seen in Bitcoin for the past several weeks, the largest cryptocurrency not testing the barrier since mid August.</p>\r\n\r\n<p>No major events appeared to contribute to the latest declines, with some analysts nonetheless predicting the ongoing bear market would continue into 2019 — longer than many had previously assumed.</p>\r\n\r\n<p>“Putting together the blockchain view, I suspect the timing for a bottom may be around Q2 2019,” technical analyst Willy Woo, creator of data site Woobull, commented on&nbsp;<a href=\"https://twitter.com/woonomic/status/1062292251827531776\" rel=\"nofollow,noopener\" target=\"_blank\">social media</a>&nbsp;Nov. 13, adding:</p>\r\n\r\n<p>“After that we start the true accumulation band, only after that, do we start a long grind upwards.”</p>\r\n\r\n<p>Figures such as Galaxy Digital’s&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/michael-novogratz/amp\" href=\"https://cointelegraph.com/tags/michael-novogratz\">Michael Novogratz</a>&nbsp;and Fundstrat’s&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/tom-lee/amp\" href=\"https://cointelegraph.com/tags/tom-lee\">Tom Lee</a>&nbsp;had claimed a reversal in Bitcoin’s fortunes would be&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/mike-novogratz-institutions-will-get-into-bitcoin-in-q1-q2-2019-bringing-new-highs/amp\" href=\"https://cointelegraph.com/news/mike-novogratz-institutions-will-get-into-bitcoin-in-q1-q2-2019-bringing-new-highs\">apparent</a>&nbsp;by Q2 next year as institutional investors began interacting with markets.</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://coindex.vn/public/uploads/2eb038e5d213e09fc26bc932590b3d51/images/1.jpg', 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall', 'on', 'on', 'bitcoin-sees-volatility-as-prices-hit-three-month-lows-and-altcoins-fall', 'Bitcoin Sees Volatility as Prices Hit Three-Month Lows and Altcoins Fall', NULL, NULL, 1, '2018-11-14 14:32:44', '2018-11-23 15:10:22'),
(2, 'Japan: Tokyo Police Arrest 8 Men Allegedly Involved in $68 Million Crypto Pyramid Scheme', 'BItcon', NULL, '<p>Tokyo police have arrested eight men suspected of involvement of a pyramid scheme, collecting about $68.4 million in cash and BTC.</p>', '<p><img alt=\"Japan: Tokyo Police Arrest 8 Men Allegedly Involved in $68 Million Crypto Pyramid Scheme\" border=\"0\" height=\"67%\" hspace=\"0\" src=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9jMTBlZjU5MmE5NzZkODlhZDU1NDc4ZDljMTk2YjQ2Zi5qcGc=.jpg\" srcset=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9jMTBlZjU5MmE5NzZkODlhZDU1NDc4ZDljMTk2YjQ2Zi5qcGc=.jpg 1x, https://images.cointelegraph.com/images/1480_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9jMTBlZjU5MmE5NzZkODlhZDU1NDc4ZDljMTk2YjQ2Zi5qcGc=.jpg 2x\" style=\"width:100%;height:67%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border:0px solid black;\" vspace=\"0\" width=\"100%\" /></p>\r\n\r\n<p>NEWS</p>\r\n\r\n<p dir=\"ltr\">Tokyo police have arrested eight men that are suspected of collecting a total amount of $68.4 million in cash and cryptocurrency using a&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/pyramid-scheme/amp\" href=\"https://cointelegraph.com/tags/pyramid-scheme\">pyramid scheme</a>,&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/japan/amp\" href=\"https://cointelegraph.com/tags/japan\">Japanese</a>&nbsp;daily newspaper Asahi Shimbun&nbsp;<a href=\"http://www.asahi.com/ajw/articles/AJ201811140055.html\" rel=\"nofollow,noopener\" target=\"_blank\">reports</a>&nbsp;Wednesday, Nov. 14.</p>\r\n\r\n<p>The suspects claimed to run a&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/usa/amp\" href=\"https://cointelegraph.com/tags/usa\">U.S.</a>&nbsp;investment company dubbed “Sener,” conducting seminars with foreign speakers. The police report that at least one of the meetings has been recorded, with video uploaded on YouTube. During the seminars, the group of suspects promised monthly returns from 3 to 20 percent for the investments. The suspects also asked the participants to pledge to invite other investors in order to get additional returns.</p>\r\n\r\n<p>The investigators believe the suspects received cash and Bitcoin (<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/bitcoin/amp\" href=\"https://cointelegraph.com/tags/bitcoin\">BTC</a>) from about 6,000 people in 44 prefectures, including Tokyo. A group lawsuit was filed at the Tokyo District Court by 73 victims of the&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/fraud/amp\" href=\"https://cointelegraph.com/tags/fraud\">fraud</a>, seeking approximately $3.2 million in damages. According to Asahi Shimbun, six men have already admitted to the allegations, while two others deny them.</p>\r\n\r\n<p>The Tokyo police believe the suspects tried to avoid prosecution by using cryptocurrencies, as they are in a “gray zone,” according to Japanese financial&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/bitcoin-regulation/amp\" href=\"https://cointelegraph.com/tags/bitcoin-regulation\">regulation</a>. As explained by Financial Services Agency (FSA), digital currencies are not considered as securities that are under the jurisdiction of current law. However, they can be regulated depending on the structure of the investment, the FSA added.</p>\r\n\r\n<p>Japan is known for its&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/japan-s-exchanges-regulatory-turning-point-how-and-why-authorities-wrested-control/amp\" href=\"https://cointelegraph.com/news/japan-s-exchanges-regulatory-turning-point-how-and-why-authorities-wrested-control\">crypto-friendly stance</a>, which remains relatively unchanged despite&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/forced-deal-and-fsa-scrutiny-what-do-we-know-about-japans-latest-hack/amp\" href=\"https://cointelegraph.com/news/forced-deal-and-fsa-scrutiny-what-do-we-know-about-japans-latest-hack\">the massive hacks</a>&nbsp;on local crypto exchanges&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/coincheck/amp\" href=\"https://cointelegraph.com/tags/coincheck\">Coincheck</a>&nbsp;and&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/zaif/amp\" href=\"https://cointelegraph.com/tags/zaif\">Zaif</a>&nbsp;in 2018.</p>\r\n\r\n<p>The FSA, which issues licenses for&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/cryptocurrency-exchange/amp\" href=\"https://cointelegraph.com/tags/cryptocurrency-exchange\">crypto exchanges</a>&nbsp;to operate in the country,&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/japanese-financial-watchdog-grants-self-regulatory-status-to-local-crypto-exchanges/amp\" href=\"https://cointelegraph.com/news/japanese-financial-watchdog-grants-self-regulatory-status-to-local-crypto-exchanges\">gave</a>&nbsp;the local crypto industry self-regulatory status in October, certifying the Japanese Virtual Currency Exchange Association (JVCEA) to monitor the space.</p>\r\n\r\n<p>Furthermore, a Japanese&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/taxes/amp\" href=\"https://cointelegraph.com/tags/taxes\">taxation</a>&nbsp;policy committee&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/japanese-taxation-committee-seeks-to-simplify-cryptocurrency-tax-reporting/amp\" href=\"https://cointelegraph.com/news/japanese-taxation-committee-seeks-to-simplify-cryptocurrency-tax-reporting\">is seeking</a>&nbsp;to facilitate cryptocurrency tax reporting. In October, the officials held a debate discussing the current legal framework and offering to stimulate a more thorough reporting of cryptocurrency gains.</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://coindex.vn/public/uploads/2eb038e5d213e09fc26bc932590b3d51/images/2.jpg', 'Japan: Tokyo Police Arrest 8 Men Allegedly Involved in $68 Million Crypto Pyramid Scheme', 'on', 'off', 'japan-tokyo-police-arrest-8-men-allegedly-involved-in-68-million-crypto-pyramid-scheme', 'Japan: Tokyo Police Arrest 8 Men Allegedly Involved in $68 Million Crypto Pyramid Scheme', NULL, NULL, 1, '2018-11-14 14:33:26', '2018-11-23 15:10:15'),
(3, 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa', 'BItcon', NULL, '<p>Japanese insurance company Sompo has partnered with pan-African crypto-enabled remittance platform BitPesa.</p>', '<p><img alt=\"Central Bank Digital Currencies Could Have Legitimate ‘Role,’ Says IMF’s Lagarde\" border=\"0\" height=\"67%\" hspace=\"0\" src=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9lYzgzYmQyOTg3YzczYjgzYmE5NWU0MGRhYWQ1OWRlYS5qcGc=.jpg\" srcset=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9lYzgzYmQyOTg3YzczYjgzYmE5NWU0MGRhYWQ1OWRlYS5qcGc=.jpg 1x, https://images.cointelegraph.com/images/1480_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9lYzgzYmQyOTg3YzczYjgzYmE5NWU0MGRhYWQ1OWRlYS5qcGc=.jpg 2x\" style=\"width:100%;height:67%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border:0px solid black;\" vspace=\"0\" width=\"100%\" /></p>\r\n\r\n<p>NEWS</p>\r\n\r\n<p dir=\"ltr\">The head of the International Monetary Fund (<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/imf/amp\" href=\"https://cointelegraph.com/tags/imf\">IMF</a>) has said the international community should “consider” endorsing central bank issued digital currencies (CBDCs) in a&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/bitstamp/amp\" href=\"https://www.imf.org/en/News/Articles/2018/11/13/sp111418-winds-of-change-the-case-for-new-digital-currency\" rel=\"nofollow,noopener\" target=\"_blank\">speech</a>&nbsp;at the Singapore Fintech Festival Nov. 14.</p>\r\n\r\n<p>IMF managing director&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/christine-lagarde/amp\" href=\"https://cointelegraph.com/tags/christine-lagarde\">Christine Lagarde</a>&nbsp;said that despite being “not entirely convinced” on the concept of cryptocurrencies more generally, there may be a case for states to issue government-backed tokens or similar assets.</p>\r\n\r\n<p>“I believe we should consider the possibility to issue digital currency. There may be a role for the state to supply money to the digital economy,” she told the event.</p>\r\n\r\n<p>The comments come a day after the IMF published a&nbsp;<a href=\"https://www.imf.org/en/Publications/Staff-Discussion-Notes/Issues/2018/11/13/Casting-Light-on-Central-Bank-Digital-Currencies-46233\" rel=\"nofollow,noopener\" target=\"_blank\">dedicated report</a>&nbsp;on CBDCs, examining what it views as the pros and cons of the financial tool.</p>\r\n\r\n<p>As Lagarde noted,&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/central-bank-issued-digital-currencies-why-governments-may-or-may-not-need-them/amp\" href=\"https://cointelegraph.com/news/central-bank-issued-digital-currencies-why-governments-may-or-may-not-need-them\">various jurisdictions</a>&nbsp;are currently considering or starting out on the journey to implement state-sponsored tokens.</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://coindex.vn/public/uploads/2eb038e5d213e09fc26bc932590b3d51/images/3.jpg', 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa', 'on', 'off', 'japanese-insurer-sompo-partners-with-african-btc-enabled-remittance-service-bitpesa', 'Japanese Insurer Sompo Partners With African BTC-Enabled Remittance Service BitPesa', 'bitcon1,bitcon 2,japan', NULL, 1, '2018-11-14 14:35:22', '2018-11-23 15:10:07'),
(4, 'SPONSORED Options Are the Answer for Dealing with ‘Bearish’ Market, Trading Platform Says', 'BItcon', NULL, '<p>As crypto investors contend with a “bearish” market, one trading platform believes options and futures could be the way forward.</p>', '<p><img alt=\"Options Are the Answer for Dealing with ‘Bearish’ Crypto Market, Trading Platform Says\" border=\"0\" height=\"67%\" hspace=\"0\" src=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9jNmZkMDVhYTY1Y2Y4NzU2NGExOTNhMTg4NjIzMzIzYS5qcGc=.jpg\" srcset=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9jNmZkMDVhYTY1Y2Y4NzU2NGExOTNhMTg4NjIzMzIzYS5qcGc=.jpg 1x, https://images.cointelegraph.com/images/1480_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9jNmZkMDVhYTY1Y2Y4NzU2NGExOTNhMTg4NjIzMzIzYS5qcGc=.jpg 2x\" style=\"width:100%;height:67%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border:0px solid black;\" vspace=\"0\" width=\"100%\" /></p>\r\n\r\n<p>SPONSORED</p>\r\n\r\n<p dir=\"ltr\"><strong>A new blockchain asset trading platform says it is determined to help investors navigate the “bearish” cryptocurrency market – and says options could enable traders to protect and grow their assets.</strong></p>\r\n\r\n<p dir=\"ltr\">Options are a form of financial derivative where buyers have a right to buy or sell a financial asset at an agreed-upon price for a set amount of time. However, as part of these contracts, they are not obligated to complete a transaction.</p>\r\n\r\n<p dir=\"ltr\">According to&nbsp;<a href=\"https://www.jex.com/\" rel=\"nofollow,noopener\" target=\"_blank\">JEX</a>, the platform which is bringing options trading to the cryptocurrency world, this method helps investors to limit their losses while maximizing their potential profits – of course, this is not to say that there are no significant risks involved.</p>\r\n\r\n<p dir=\"ltr\">At present, the company believes there are issues in the token trading market. JEX’s executives argue that there is a disappointing lack of variety in the products available to investors, inadequate leverage and a dearth of short-selling mechanisms.</p>\r\n\r\n<p dir=\"ltr\">JEX selects the underlying assets used for options based on three requirements. First, there needs to be trading pairs between a cryptocurrency and USDT – and these need to be available on large trading platforms with adequate levels of liquidity.</p>\r\n\r\n<h2 dir=\"ltr\">Emphasis on simplicity and usability</h2>\r\n\r\n<p dir=\"ltr\">JEX says its goal is to ensure that the products on offer are simple to understand – as this enables ordinary investors to participate on its platform.</p>\r\n\r\n<p dir=\"ltr\">The website has established a range of training courses to help those who are new to the crypto world understand how options work – and texts, videos, and comics are also available. Any users with burning questions can also access explanations from a team of professional instructors. JEX has also made trial trading accounts available to first-time investors, enabling them to experience a real-world environment and see how the decisions they make correlate into profits and losses.</p>\r\n\r\n<p>Keeping trading costs low is also a stated priority for JEX, and this is why the platform has launched a dedicated token for its platform. Investors who use this token have the opportunity to receive discounts on the fees they pay when completing a trade.</p>\r\n\r\n<p dir=\"ltr\">Other services are also available on the derivatives trading platform. Among them are&nbsp;<a href=\"https://cointelegraph.com/bitcoin-for-beginners/what-are-cryptocurrencies\">cryptocurrency</a>&nbsp;spot trading, as well as index trading. JEX says that futures trading is one of the services it plans to roll out in the future – and applicants have been invited to participate in beta testing, where they receive virtual funds to play with. Rewards are being offered to anyone who spots bugs or suggests improvements to the contract.</p>\r\n\r\n<h2 dir=\"ltr\">About JEX</h2>\r\n\r\n<p dir=\"ltr\">The company currently employs 50 people – and many members of its core team used to work for&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/okcoin/amp\" href=\"https://cointelegraph.com/tags/okcoin\">OKCoin</a>.</p>\r\n\r\n<p dir=\"ltr\">JEX says its staff has extensive experience in designing, developing and operating&nbsp;<a href=\"https://cointelegraph.com/explained/crypto-trading-explained\">trading platforms</a>for blockchain assets and derivatives – adding that its infrastructure provides users with a “safe, steady and reliable” service.</p>\r\n\r\n<p dir=\"ltr\">The startup recently completed a round of financing with angel investors – Huobi and Node Capital among them.</p>\r\n\r\n<p dir=\"ltr\">As well as offering weekly reports on its platform via&nbsp;<a href=\"https://medium.com/@jexplatform\" rel=\"nofollow,noopener\" target=\"_blank\">Medium</a>, and posting regular price and market analysis on Twitter, JEX has Telegram groups in three languages: English, Japanese, Russian and Korean. The company is based in Hong Kong.</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://coindex.vn/public/uploads/2eb038e5d213e09fc26bc932590b3d51/images/4.jpg', 'SPONSORED Options Are the Answer for Dealing with ‘Bearish’ Market, Trading Platform Says', 'on', 'off', 'sponsored-options-are-the-answer-for-dealing-with-bearish-market-trading-platform-says', 'SPONSORED Options Are the Answer for Dealing with ‘Bearish’ Market, Trading Platform Says', NULL, NULL, 1, '2018-11-22 13:59:31', '2018-11-23 15:09:58'),
(5, 'SBI Ripple Asia, Japan Payment Card Consortium on Blockchain System to Fight Fraud', 'bitcon', NULL, NULL, '<p><img alt=\"SBI Ripple Asia, Japan Payment Card Consortium Partner on Blockchain System to Fight Fraud\" border=\"0\" height=\"67%\" hspace=\"0\" src=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy8zZTRhOGZiNjBhNTU0NjY3YmRlZDBjOTFmOWVlYTgzNC5qcGc=.jpg\" srcset=\"https://images.cointelegraph.com/images/740_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy8zZTRhOGZiNjBhNTU0NjY3YmRlZDBjOTFmOWVlYTgzNC5qcGc=.jpg 1x, https://images.cointelegraph.com/images/1480_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy8zZTRhOGZiNjBhNTU0NjY3YmRlZDBjOTFmOWVlYTgzNC5qcGc=.jpg 2x\" style=\"width:100%;height:67%;margin-top:0px;margin-bottom:0px;margin-left:0px;margin-right:0px;border:0px solid black;\" vspace=\"0\" width=\"100%\" /></p>\r\n\r\n<p>NEWS</p>\r\n\r\n<p dir=\"ltr\">SBI&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/ipple/amp\" href=\"http://cointelegraph.com/tags/ipple\">Ripple</a>&nbsp;Asia and the Japan Payment Card Consortium have announced a joint proof of concept (<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/poc/amp\" href=\"http://cointelegraph.com/tags/poc\">PoC</a>) to combat fraud with&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/blockchain/amp\" href=\"https://cointelegraph.com/tags/blockchain\">blockchain</a>&nbsp;technology, according to an official release&nbsp;<a href=\"http://www.sbigroup.co.jp/english/news/pdf/2018/1116_a_en.pdf\" rel=\"nofollow,noopener\" target=\"_blank\">published</a>&nbsp;Nov. 16.</p>\r\n\r\n<p>According to the news release, the PoC will be conducted on&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/r3/amp\" href=\"http://cointelegraph.com/tags/r3\">R3</a>\'s blockchain platform,&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/corda/amp\" href=\"https://cointelegraph.com/tags/corda\">Corda</a>, and will aim to prevent damage wrought by fraudulent transactions by enabling the real-time sharing of data between parties using blockchain. &nbsp;</p>\r\n\r\n<p>The Japan Payment Card Consortium counts nine major credit card issuers – including American Express (<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/american-express/amp\" href=\"https://cointelegraph.com/tags/american-express\">Amex</a>), Credit Saison and Toyota Finance – and two payment-card technology providers as members. SBI Ripple Asia is a joint venture from&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/japan/amp\" href=\"https://cointelegraph.com/tags/japan\">Japanese</a>&nbsp;financial services giant SBI Holdings and blockchain firm Ripple that has been working to advance blockchain-powered solutions for the financial and enterprise sector since its&nbsp;<a href=\"https://www.sbigroup.co.jp/english/company/group/sbirippleasia.php\" rel=\"nofollow,noopener\" target=\"_blank\">establishment</a>&nbsp;in 2016.</p>\r\n\r\n<p>Corda has reportedly been chosen for the PoC due to its data privacy and security set-up. The release outlines that data in the system is to be “shared only with those that have a ‘need to know.’” Each company will own a Corda node, and while each company implements its own security policy, the data sharing among the nodes is secured by Corda.”</p>\r\n\r\n<p>Japanese IT services provider TIS, which is a member of the R3 consortium, will reportedly develop a secure and scalable information sharing system for the PoC on the basis of Corda.</p>\r\n\r\n<p>Although at the PoC stage, information will be shared only between the participant card companies. The consortium says it will consider extending data sharing to a broader range of parties – such as merchants and payment service providers (PSPs) – in future, in the name of better protecting against fraud industry-wide.</p>\r\n\r\n<p>Hewlett Packard Enterprise (HPE)’s Mission Critical Distributed Ledger Technology (DLT) Lab has been chosen as a secure host environment for testing the new PoC.</p>\r\n\r\n<p>As&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/japanese-financial-giant-sbi-and-ripple-launch-blockchain-payment-app-in-japan/amp\" href=\"https://cointelegraph.com/news/japanese-financial-giant-sbi-and-ripple-launch-blockchain-payment-app-in-japan\">reported</a>&nbsp;in October, SBI Ripple Asia’s consumer-focused payments app MoneyTap has recently gone live, after successfully&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/japanese-regulator-grants-sbi-ripple-asia-a-payments-license-for-blockchain-based-app/amp\" href=\"https://cointelegraph.com/news/japanese-regulator-grants-sbi-ripple-asia-a-payments-license-for-blockchain-based-app\">securing</a>&nbsp;a license from domestic financial regulators.</p>\r\n\r\n<p>Also last month, Cointelegraph&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/news/toyota-uses-blockchain-tech-to-reduce-fraud-in-digital-advertising-campaigns/amp\" href=\"https://cointelegraph.com/news/toyota-uses-blockchain-tech-to-reduce-fraud-in-digital-advertising-campaigns\">reported</a>&nbsp;on Japanese car manufacturing giant&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/toyota/amp\" href=\"https://cointelegraph.com/tags/toyota\">Toyota</a>’s partnership with blockchain ads analytics firm Lucidity to tackle fraud in the&nbsp;<a data-amp=\"https://cointelegraph-com.cdn.ampproject.org/c/s/cointelegraph.com/tags/advertisement/amp\" href=\"https://cointelegraph.com/tags/advertisement\">advertising</a>&nbsp;industry.</p>', NULL, 0, '_self', 'noindex,follow', 100, NULL, 'http://coindex.vn/public/uploads/2eb038e5d213e09fc26bc932590b3d51/images/4.jpg', 'SBI Ripple Asia, Japan Payment Card Consortium on Blockchain System to Fight Fraud', 'on', 'on', 'sbi-ripple-asia-japan-payment-card-consortium-on-blockchain-system-to-fight-fraud', 'SBI Ripple Asia, Japan Payment Card Consortium on Blockchain System to Fight Fraud', NULL, NULL, 1, '2018-11-23 14:52:52', '2018-11-23 15:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_robot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '100',
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_price` int(11) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `access` int(11) NOT NULL,
  `target_open` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_robot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '100',
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`, `role`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Role Superadmin', 'This is Role for Superadmin', '[\"list_cate\",\"add_cate\",\"edit_cate\",\"delete_cate\",\"list_news\",\"add_news\",\"edit_news\",\"delete_news\",\"list_post\",\"add_post\",\"edit_post\",\"delete_post\",\"list_tag\",\"add_tag\",\"edit_tag\",\"delete_tag\",\"list_attribute\",\"add_attribute\",\"edit_attribute\",\"delete_attribute\",\"list_manufacturer\",\"add_manufacturer\",\"edit_manufacturer\",\"delete_manufacturer\",\"list_product\",\"add_product\",\"edit_product\",\"delete_product\",\"list_position\",\"add_position\",\"edit_position\",\"delete_position\",\"list_banner\",\"add_banner\",\"edit_banner\",\"delete_banner\",\"list_user\",\"add_user\",\"edit_user\",\"delete_user\",\"list_role\",\"add_role\",\"edit_role\",\"delete_role\",\"list_contact\",\"add_contact\",\"edit_contact\",\"delete_contact\",\"config\",\"mail\",\"sent_mail\",\"delete_mail\",\"comment\",\"reply_comment\",\"delete_comment\",\"list_action\",\"delete_one_action\",\"delete_all_action\",\"list_login\",\"delete_one_login\",\"delete_all_login\"]', 1, '2018-11-12 15:18:07', '2018-11-12 15:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `social_login`
--

CREATE TABLE `social_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `level`, `status`, `avatar`, `firstname`, `lastname`, `phone`, `address`, `facebook`, `description`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@coindex.vn', '$2y$10$8mDelLxWadKdbaWG707SpOfZCh9V8198S8B/avFrATjNFLkODryRm', 1, 'on', NULL, 'Lê Quang', 'An', NULL, NULL, NULL, NULL, 1, NULL, '2018-11-12 15:18:06', '2018-11-12 15:18:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_position_id_foreign` (`position_id`),
  ADD KEY `banner_user_id_foreign` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_user_id_foreign` (`user_id`);

--
-- Indexes for table `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_news_category_id_foreign` (`category_id`),
  ADD KEY `category_news_news_id_foreign` (`news_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_user_id_foreign` (`user_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images_news`
--
ALTER TABLE `images_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_news_news_id_foreign` (`news_id`);

--
-- Indexes for table `images_product`
--
ALTER TABLE `images_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_login`
--
ALTER TABLE `log_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_user_id_foreign` (`user_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_user_id_foreign` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_id_foreign` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_user_id_foreign` (`user_id`),
  ADD KEY `product_manufacturer_id_foreign` (`manufacturer_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_id_foreign` (`user_id`);

--
-- Indexes for table `social_login`
--
ALTER TABLE `social_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images_news`
--
ALTER TABLE `images_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_product`
--
ALTER TABLE `images_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `log_login`
--
ALTER TABLE `log_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_login`
--
ALTER TABLE `social_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`),
  ADD CONSTRAINT `banner_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `category_news`
--
ALTER TABLE `category_news`
  ADD CONSTRAINT `category_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_news_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `images_news`
--
ALTER TABLE `images_news`
  ADD CONSTRAINT `images_news_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images_product`
--
ALTER TABLE `images_product`
  ADD CONSTRAINT `images_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`),
  ADD CONSTRAINT `product_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
